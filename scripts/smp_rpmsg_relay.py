#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0
"""Relay MCUmgr SMP between UDP and an rpmsg endpoint on Linux.

The remote core's MCUmgr IPC transport announces an RPMsg channel (named
"mcumgr" by default). This finds that channel, binds the rpmsg_char driver to
it if nothing is bound yet, and relays SMP packets between its /dev/rpmsgN node
and a UDP socket, so unmodified tools work against the remote core:

    smp_rpmsg_relay.py --listen 0.0.0.0:1337 &
    smpmgr --ip <host>:1337 os echo hello

An RPMsg message holds at most 496 bytes, so a packet from UDP is written as
several messages, and messages from the remote are rejoined into whole packets
using the length in the 8-byte SMP header before being sent back.

Writes to the rpmsg node are blocking, and poll() is only asked about input:
before Linux 7.0 an rpmsg endpoint never reports POLLOUT.
"""

import argparse
import glob
import os
import select
import socket
import struct
import sys

SMP_HDR_LEN = 8
RPMSG_MAX = 496


def find_node(name):
    """Return the /dev/rpmsgN node of the channel called `name`."""
    devices = glob.glob(f"/sys/bus/rpmsg/devices/*.{name}.*")
    if not devices:
        sys.exit(f"no rpmsg channel named {name!r}; is the remote core running?")
    if len(devices) > 1:
        sys.exit(f"more than one rpmsg channel named {name!r}: {devices}")
    dev = devices[0]

    if not os.path.isdir(os.path.join(dev, "rpmsg")):
        # rpmsg_char only binds "rpmsg-raw" by itself; bind it by hand.
        with open(os.path.join(dev, "driver_override"), "w") as f:
            f.write("rpmsg_chrdev")
        with open("/sys/bus/rpmsg/drivers/rpmsg_chrdev/bind", "w") as f:
            f.write(os.path.basename(dev))

    nodes = os.listdir(os.path.join(dev, "rpmsg"))
    return "/dev/" + nodes[0]


def main():
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument("--name", default="mcumgr", help="rpmsg channel name")
    ap.add_argument("--listen", default="127.0.0.1:1337", help="UDP address:port")
    args = ap.parse_args()

    node = find_node(args.name)
    fd = os.open(node, os.O_RDWR)

    host, port = args.listen.rsplit(":", 1)
    udp = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp.bind((host, int(port)))
    print(f"relaying {node} <-> udp {host}:{port}", flush=True)

    peer = None
    pending = b""
    poller = select.poll()
    poller.register(udp.fileno(), select.POLLIN)
    poller.register(fd, select.POLLIN)

    while True:
        for ready, _ in poller.poll():
            if ready == udp.fileno():
                packet, peer = udp.recvfrom(65536)
                for off in range(0, len(packet), RPMSG_MAX):
                    os.write(fd, packet[off:off + RPMSG_MAX])
                continue

            pending += os.read(fd, 4096)
            while len(pending) >= SMP_HDR_LEN:
                (body_len,) = struct.unpack_from(">H", pending, 2)
                total = SMP_HDR_LEN + body_len
                if len(pending) < total:
                    break
                if peer is not None:
                    udp.sendto(pending[:total], peer)
                pending = pending[total:]


if __name__ == "__main__":
    main()
