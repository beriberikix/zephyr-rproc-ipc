# Running Zephyr as a Linux remoteproc remote

Firmware lifecycle and IPC for a Zephyr core that Linux owns, with no flasher
and no debug probe.

**Status:** working on an NXP FRDM-IMX95. Parts are proposed upstream to Zephyr;
the rest lives in an out-of-tree module, `zephyr-rproc-ipc`.

## The hardware this is for

A growing class of SoC puts an application processor and a microcontroller on
one die: NXP i.MX8/i.MX9, ST STM32MP2, TI AM62x, Renesas RZ/G. The Cortex-A
cores run Linux. The Cortex-M core sits beside them for the work Linux is bad
at — hard real time, motor control, low-power sensing, safety functions.

The important detail is not the second core. It is that **the MCU usually has no
flash of its own and often no debug connector**. It has no boot ROM you can
program, no `west flash`, no J-Link. Its memory is a region of the same DRAM
Linux is using, and Linux is what puts code there and takes it out of reset.

That inverts the usual embedded workflow. You do not flash this MCU; you hand a
file to Linux. Firmware update is `cp` and a write to sysfs, which means it also
inherits whatever update mechanism the Linux side already has. There is no
second bootloader, no second signing story, no second recovery mode.

It also creates a problem that does not exist on a two-chip board: the two sides
share DRAM and must agree, at build time, on exactly which addresses they share
and what they are called.

## What remoteproc and RPMsg give you

Three pieces of prior art do most of the work, and it is worth being precise
about which does what.

**remoteproc** is the Linux subsystem that manages a coprocessor's lifecycle. It
parses an ELF, copies its segments into the coprocessor's memory, releases
reset, and can stop it again. From userspace it is entirely sysfs:

```
  /sys/class/remoteproc/remoteproc1/firmware   <- name under /lib/firmware
  /sys/class/remoteproc/remoteproc1/state      <- "offline" | "running"
```

The firmware ELF carries a **resource table**: a structure the remote declares
saying "I need these memory carveouts, and I provide this virtio device". Linux
reads it during load and sets up what it asks for. This is how the two sides
agree about shared memory without hard-coding it in the kernel.

**RPMsg** is the messaging layer built on that virtio device. Two vrings in
shared memory carry buffers; a mailbox (on i.MX, the Messaging Unit) is the
doorbell that says "look at the ring". On top sits a name service: the remote
announces a channel by name, and Linux creates a device for it. Bind the
`rpmsg_chrdev` driver and it becomes `/dev/rpmsgN`, which reads and writes
**messages, not a stream** — boundaries are preserved, and a message is capped
at 496 bytes by the default 512-byte buffer minus a 16-byte header.

**OpenAMP** is the portable library implementing the remote half of all this.
Zephyr already vendors it.

So the primitives exist. What has been missing is the glue on the Zephyr side.

## Where Zephyr stands

Zephyr has `ipc_service`, a good abstraction over inter-core links, with
backends for ICMsg and static-vring RPMsg. What it has lacked is the
*remoteproc-remote* case: a driver that builds a resource table from devicetree,
brings up an RPMsg virtio device against a Linux host, and lets `ipc_service`
sit on top of it. Simon Maurer's [zephyr#105778][pr] addresses the driver half.

[pr]: https://github.com/zephyrproject-rtos/zephyr/pull/105778

Above the driver there was nothing: no `ipc_service` backend, so every
application would talk to OpenAMP directly; no device management, so no MCUmgr;
and no answer at all to "how do I get my firmware onto the thing".

## What this module adds

```
  Linux (Cortex-A)                  |  Zephyr (Cortex-M)
  ----------------------------------+-------------------------------------
  rproc.py / deploy.sh              |
    -> /sys/class/remoteproc/...    |  (loaded, started, stopped by Linux)
                                    |
  application                       |  application
  /dev/rpmsgN                       |  ipc_service endpoint
  virtio_rpmsg_bus                  |    backend: zephyr,ipc-rproc-rpmsg
        ^                           |    driver:  OpenAMP rpmsg-virtio
        |   vrings in shared DRAM   |    resource table <- devicetree
        +---- MU doorbell ----------+
                                    |
  smpmgr -> smp_rpmsg_relay.py ---- |  MCUMGR_TRANSPORT_IPC
```

| Piece | Path | State |
|---|---|---|
| Remote-side remoteproc driver, resource table from devicetree | `drivers/remoteproc/` | Vendored from #105778, plus three fixes |
| `ipc_service` backend over that RPMsg device | `subsys/ipc/ipc_service/backends/` | New |
| MCUmgr SMP transport over `ipc_service` | `subsys/mgmt/mcumgr/transport/` | New |
| UDP relay so `smpmgr` reaches it from Linux | `scripts/smp_rpmsg_relay.py` | New |
| Firmware lifecycle from Linux, no flasher | `scripts/rproc.py`, `deploy.sh` | New |

Everything sits at the path it would have in the Zephyr tree, so a commit here
applies to a Zephyr checkout as a patch.

## Using it

The shared memory contract lives in devicetree. The carveout names must equal
the reserved-memory node names in the Linux devicetree, or Linux will allocate
fresh regions instead of using the reserved ones:

```dts
  vdev0vring0: memory@88000000 {
      compatible = "zephyr,memory-region";
      zephyr,memory-region = "vdev0vring0";
      reg = <0x88000000 0x8000>;
  };

  remoteproc {
      rsc_table: resource-table {
          compatible = "openamp,resource-table";
          carveouts = <&vdev0vring0 &vdev0vring1 &vdevbuffer>;
          vdevs = <&vdev0>;
          memory-region = <&rsc_table_mem>;   /* where Linux reads it */
      };
  };
```

Above that, an application uses `ipc_service` and never mentions RPMsg:

```c
  static struct ipc_ept ept;
  static const struct ipc_ept_cfg cfg = {
      .name = "bridge",
      .cb = { .bound = on_bound, .received = on_received },
  };

  ipc_service_open_instance(ipc);
  ipc_service_register_endpoint(ipc, &ept, &cfg);
  ipc_service_send(&ept, data, len);
```

And the edit-build-run loop is one command, because there is nothing to flash:

```
  $ deploy.sh root@board samples/ipc_echo
  ==> building ... ==> copying ... ==> loading it on the remote core
  remoteproc1 is running zephyr.elf
  rpmsg devices: virtio0.rpmsg_ctrl.0.0, virtio0.rpmsg_ns.53.53
```

`rproc.py` also does `find`, `state`, `start`, `stop` and `log` (the remote's
trace buffers, from debugfs). Loading stops the core first — the kernel refuses
the firmware name while it runs — and waits for the `/dev/rpmsgN` nodes
afterwards, because a restart tears every one of them down and recreates them.
Anything holding one has to reopen it.

## What the i.MX95 taught us

Three fixes were needed on top of #105778, and each failed silently rather than
loudly, which is why they are worth writing down.

**The resource table must live where Linux looks.** NXP's `imx_rproc` copies the
table into its own `rsc-table` reserved region and then reads and writes *that*
copy. A remote using its linked-in table never sees `DRIVER_OK` and waits for a
host that has already started. The fix is an optional `memory-region` on the
resource-table node: the table is copied there before first use and all lookups
follow it.

**The doorbell must carry data.** `rvdev_notify()` sends `mbox_send_dt(tx,
NULL)`. On the i.MX Messaging Unit a NULL message is a general-purpose
interrupt, but Linux takes vring kicks as *data* messages. The name-service
announcement is therefore never seen and no channel is ever created. Sending the
notify id as data when the mailbox supports it fixes it — confirmed by reverting
only that change.

**The section needs placing.** Nothing places `.resource_table`, so it lands as
a linker orphan. The existing SoC snippets are gated on the legacy
`CONFIG_OPENAMP_RSC_TABLE`.

Two smaller notes for anyone bringing this up: the vrings need fixed
`device-address` values, because `rvdev_init()` reads them before waiting for
the host; and an RPMsg endpoint cannot address the host until the host has sent
it something, since the name-service announcement carries no return address and
is not acknowledged.

## What has been measured

On an FRDM-IMX95 (Cortex-M7, NXP Linux 6.18.2, Zephyr 4.4):

- Echo on an `rpmsg-raw` endpoint: **205/205 messages of 1–496 bytes byte-exact,
  ~1.3 MiB/s** round trip, including across three remoteproc stop/start cycles.
- The 496-byte limit confirmed from Linux: 496 bytes echo byte-exact, 497 is
  refused with `EMSGSIZE`. The link truncates nothing.
- Two endpoints on one vdev: Linux creates a channel for each (0x400, 0x401) and
  each `/dev/rpmsgN` reaches the right one, 100/100 each.
- MCUmgr over the IPC transport: SMP packets of ~1.9 KB in both directions
  through `smpmgr`, reassembled from 496-byte messages.

## One use case: Golioth Pouch

[Pouch](https://github.com/golioth/pouch) is a device-to-cloud session protocol
that needs only a reliable byte pipe beneath it, which makes it a good test of
whether this link is usable by real software rather than by echo samples. A full
Pouch session to Golioth runs over the IPC backend end to end, with the MCU
holding the session and credentials and Linux providing only transport.

## Status and what is upstream

The three fixes are written as separate commits against Zephyr-tree paths and
are offered to #105778. The `ipc_service` backend and the MCUmgr transport are
new work that would follow the driver upstream. The scripts are deliberately
plain Python and shell: they exist so the workflow is reproducible, not to
become a product.
