#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0
"""Load and manage the firmware a Linux host runs on a remote core.

A core loaded through remoteproc needs no flasher and no debug probe: the
firmware is a file the kernel is pointed at, and the core is started and
stopped by writing to sysfs. This wraps that up so that building and running
is one command:

    rproc.py load build/zephyr/zephyr.elf
    rproc.py state
    rproc.py log

Loading means stopping the core, waiting for it to be offline, putting the ELF
where the firmware loader looks, naming it, starting the core, and waiting for
the RPMsg devices to come back - in that order, because the kernel refuses the
firmware name while the core is running, and because the /dev/rpmsgN nodes are
torn down and recreated on every restart.

Everything reads and writes ordinary files, so --sysfs and --firmware-dir
point it at a test tree as easily as at a real one.
"""

import argparse
import glob
import os
import shutil
import sys
import time

DEFAULT_SYSFS = "/sys/class/remoteproc"
DEFAULT_FIRMWARE_DIR = "/lib/firmware"
DEFAULT_DEBUGFS = "/sys/kernel/debug/remoteproc"
DEFAULT_RPMSG_DEVICES = "/sys/bus/rpmsg/devices"


class RemoteprocError(Exception):
    """Something the operator needs to hear about, rather than a traceback."""


class Remoteproc:
    """One remoteproc instance, as the kernel presents it in sysfs."""

    def __init__(self, path, firmware_dir=DEFAULT_FIRMWARE_DIR, debugfs=DEFAULT_DEBUGFS,
                 rpmsg_devices=DEFAULT_RPMSG_DEVICES):
        self.path = path
        self.instance = os.path.basename(path)
        self.firmware_dir = firmware_dir
        self.debugfs = debugfs
        self.rpmsg_devices = rpmsg_devices

    # Every read and write goes through these two, so a test can watch or
    # stand in for the kernel side of it.
    def _read(self, attr):
        try:
            with open(os.path.join(self.path, attr)) as f:
                return f.read().strip()
        except OSError as err:
            raise RemoteprocError(f"cannot read {attr} of {self.instance}: {err}") from err

    def _write(self, attr, value):
        try:
            with open(os.path.join(self.path, attr), "w") as f:
                f.write(value)
        except OSError as err:
            raise RemoteprocError(
                f"cannot write {value!r} to {attr} of {self.instance}: {err}") from err

    @property
    def name(self):
        return self._read("name")

    @property
    def state(self):
        return self._read("state")

    @property
    def firmware(self):
        return self._read("firmware")

    def wait_for(self, state, timeout=10.0, interval=0.05):
        """Wait until the core reports @state, or say what it reports instead."""
        deadline = time.monotonic() + timeout

        while True:
            current = self.state
            if current == state:
                return
            if time.monotonic() >= deadline:
                raise RemoteprocError(
                    f"{self.instance} is {current} after {timeout:g}s, expected {state}")
            time.sleep(interval)

    def stop(self, timeout=10.0):
        """Stop the core, unless it is already stopped."""
        if self.state == "offline":
            return
        self._write("state", "stop")
        self.wait_for("offline", timeout)

    def start(self, timeout=10.0):
        self._write("state", "start")
        self.wait_for("running", timeout)

    def load(self, elf, timeout=10.0, rpmsg_timeout=5.0):
        """Put an ELF on the core and start it.

        @return the RPMsg devices that appeared, which may be none if the
                firmware announces no channels.
        """
        if not os.path.isfile(elf):
            raise RemoteprocError(f"{elf} is not a file")

        # The firmware name can only be set while the core is offline.
        self.stop(timeout)

        target = os.path.join(self.firmware_dir, os.path.basename(elf))

        try:
            os.makedirs(self.firmware_dir, exist_ok=True)
            shutil.copyfile(elf, target)
        except OSError as err:
            raise RemoteprocError(f"cannot put {elf} in {self.firmware_dir}: {err}") from err

        self._write("firmware", os.path.basename(elf))
        self.start(timeout)

        return self.wait_for_rpmsg(rpmsg_timeout)

    def wait_for_rpmsg(self, timeout=5.0, interval=0.05):
        """Wait for the channels the firmware announces, if it announces any.

        A restart tears down every /dev/rpmsgN and creates them again, so
        anything that holds one has to reopen it.
        """
        deadline = time.monotonic() + timeout
        devices = []

        while True:
            devices = sorted(os.path.basename(p) for p in glob.glob(f"{self.rpmsg_devices}/*"))
            if devices or time.monotonic() >= deadline:
                return devices
            time.sleep(interval)

    def traces(self):
        """The trace buffers the firmware writes, as (name, text) pairs."""
        found = []

        for path in sorted(glob.glob(os.path.join(self.debugfs, self.instance, "trace*"))):
            try:
                with open(path, errors="replace") as f:
                    found.append((os.path.basename(path), f.read()))
            except OSError as err:
                raise RemoteprocError(f"cannot read {path}: {err}") from err

        return found

    def describe(self):
        firmware = "-"
        try:
            firmware = self.firmware or "-"
        except RemoteprocError:
            # A core that has never been given firmware may not have the file.
            pass

        return f"{self.instance}\t{self.name}\t{self.state}\t{firmware}"


def discover(sysfs=DEFAULT_SYSFS, **kwargs):
    """Every remoteproc instance the kernel knows about."""
    return [Remoteproc(path, **kwargs)
            for path in sorted(glob.glob(os.path.join(sysfs, "remoteproc*")))]


def select(name=None, sysfs=DEFAULT_SYSFS, **kwargs):
    """The instance to act on: the only one, or the one that was named.

    Naming is by sysfs instance ("remoteproc0") or by the name the driver
    gives it ("imx-rproc"), since which of those an operator knows depends on
    what they were looking at.
    """
    instances = discover(sysfs, **kwargs)

    if not instances:
        raise RemoteprocError(
            f"no remoteproc instances in {sysfs}; is the kernel driver loaded?")

    if name is None:
        if len(instances) > 1:
            names = ", ".join(i.instance for i in instances)
            raise RemoteprocError(f"more than one remoteproc instance ({names}); pass --name")
        return instances[0]

    for instance in instances:
        if name in (instance.instance, instance.name):
            return instance

    names = ", ".join(f"{i.instance} ({i.name})" for i in instances)
    raise RemoteprocError(f"no remoteproc instance called {name!r}; there is {names}")


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("--name", help="instance to act on, by sysfs name or driver name")
    parser.add_argument("--sysfs", default=DEFAULT_SYSFS, help=argparse.SUPPRESS)
    parser.add_argument("--firmware-dir", default=DEFAULT_FIRMWARE_DIR,
                        help="where the firmware loader looks")
    parser.add_argument("--debugfs", default=DEFAULT_DEBUGFS, help=argparse.SUPPRESS)
    parser.add_argument("--timeout", type=float, default=10.0,
                        help="how long to wait for a state change")

    commands = parser.add_subparsers(dest="command", required=True)
    commands.add_parser("find", help="list the remoteproc instances")
    commands.add_parser("state", help="print the state of the core")
    commands.add_parser("start", help="start the core")
    commands.add_parser("stop", help="stop the core")
    commands.add_parser("log", help="print the core's trace buffers")
    load = commands.add_parser("load", help="put an ELF on the core and start it")
    load.add_argument("elf")

    args = parser.parse_args(argv)
    paths = {"firmware_dir": args.firmware_dir, "debugfs": args.debugfs}

    try:
        if args.command == "find":
            instances = discover(args.sysfs, **paths)
            if not instances:
                raise RemoteprocError(f"no remoteproc instances in {args.sysfs}")
            print("instance\tname\tstate\tfirmware")
            for instance in instances:
                print(instance.describe())
            return 0

        core = select(args.name, args.sysfs, **paths)

        if args.command == "state":
            print(core.state)
        elif args.command == "start":
            core.start(args.timeout)
            print(f"{core.instance} is running")
        elif args.command == "stop":
            core.stop(args.timeout)
            print(f"{core.instance} is offline")
        elif args.command == "load":
            devices = core.load(args.elf, args.timeout)
            print(f"{core.instance} is running {os.path.basename(args.elf)}")
            print(f"rpmsg devices: {', '.join(devices) if devices else 'none yet'}")
        elif args.command == "log":
            traces = core.traces()
            if not traces:
                print(f"no trace buffers for {core.instance} under {args.debugfs}",
                      file=sys.stderr)
                return 1
            for name, text in traces:
                print(f"--- {name}")
                print(text, end="" if text.endswith("\n") else "\n")
    except RemoteprocError as err:
        print(f"error: {err}", file=sys.stderr)
        return 1

    return 0


if __name__ == "__main__":
    sys.exit(main())
