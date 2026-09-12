# zephyr-rproc-ipc

Out-of-tree Zephyr module for a Zephyr core that a Linux host loads through
**remoteproc** and talks to over **RPMsg** — for example the Cortex-M7 of an
NXP i.MX95. It exists to try the pieces out before they are proposed to
Zephyr; everything under `drivers/`, `include/`, `dts/` and `subsys/` sits at
its Zephyr-tree path, so a commit here applies to a Zephyr checkout as a patch.

| Piece | Path | Status |
|---|---|---|
| OpenAMP remote-side remoteproc driver: resource table generated from devicetree, RPMsg virtio device | `drivers/remoteproc/` | Vendored from [zephyr#105778](https://github.com/zephyrproject-rtos/zephyr/pull/105778) (Simon Maurer), plus three fixes needed on i.MX95 |
| IPC service backend over that RPMsg device (`zephyr,ipc-rproc-rpmsg`) | `subsys/ipc/ipc_service/backends/` | New |
| MCUmgr SMP transport over the IPC service (`MCUMGR_TRANSPORT_IPC`) | `subsys/mgmt/mcumgr/transport/` | New |
| UDP relay so `smpmgr`/`mcumgr` reach the SMP endpoint from Linux | `scripts/smp_rpmsg_relay.py` | New |

## Fixes on top of #105778

1. **The resource table gets its own linker section** instead of being placed
   as an orphan.
2. **Optional `memory-region` on `openamp,resource-table`:** the table is
   copied there before first use. Linux's i.MX remoteproc driver reads and
   writes the table in its `rsc-table` reserved region, so without this the
   remote never sees `DRIVER_OK`.
3. **The vring doorbell carries the notify id as data** on mailboxes that
   support data. Linux's i.MX remoteproc takes kicks as data messages on the
   MU; a bare signal is a different interrupt and the name-service
   announcement is never seen.

## Using it

Add the module (a west project entry, or `ZEPHYR_EXTRA_MODULES`), then see
the samples:

- `samples/rpmsg_echo` — raw OpenAMP endpoint on the vendored driver.
- `samples/ipc_echo` — two IPC service endpoints on one link.
- `samples/smp_ipc` — MCUmgr SMP server over the IPC service.

Each has an overlay for `imx95_evk/mimx9596/m7` that matches the reserved
memory in NXP's Linux devicetree for the i.MX95 EVK and FRDM-IMX95. Carveout
names must equal the Linux reserved-memory node names (`vdev0vring0`,
`vdev0vring1`, `vdevbuffer`), and the vrings need fixed device addresses.

```sh
west build -b imx95_evk/mimx9596/m7 samples/ipc_echo -- \
    -DZEPHYR_EXTRA_MODULES=$PWD
cp build/zephyr/zephyr.elf /lib/firmware/          # on the Linux host
echo zephyr.elf > /sys/class/remoteproc/remoteprocN/firmware
echo start > /sys/class/remoteproc/remoteprocN/state
```

## Testing

```sh
west twister -T tests -p native_sim                                  # runs on the host
west twister -T samples -p imx95_evk/mimx9596/m7 --build-only        # regression gate
```

The samples need a Linux host on the other side of the link, so they are
built, not run. Everything that can be exercised without hardware is tested
against `CONFIG_IPC_LOOPBACK`, a backend that delivers on a worker thread and
enforces an MTU, so code that chunks its writes or waits for a reply can be
tested on `native_sim`. Both commands are what CI runs.

## Notes

- An RPMsg endpoint cannot address the host until the host has sent it a
  message (the name service is not acknowledged), so the IPC backend reports
  `bound` on the first message received.
- Before Linux 7.0 an rpmsg endpoint never reports `POLLOUT`
  (fixed by torvalds/linux@c38d8b66c82c). Host programs should write with
  blocking writes and poll only for input.

## Tested

FRDM-IMX95, Cortex-M7, NXP Linux 6.18.2, Zephyr 4.4.0: echo of 1–496-byte
messages across remoteproc stop/start cycles, two endpoints on one link, SMP
packets of up to ~1.9 KB in both directions through `smpmgr`, and a full
[Pouch](https://github.com/golioth/pouch) session to Golioth over the IPC
backend.

Parts of this module were written with AI assistance (see the
`Assisted-by:` trailers); every change was built and run on the hardware
above.
