# SPDX-License-Identifier: Apache-2.0
"""Tests for rproc.py, against a sysfs tree standing in for the kernel's.

The board is not needed: what is worth checking is the order of the steps and
what happens when one of them does not go as hoped, and that is all decided
here rather than in the kernel.

    pytest scripts/test_rproc.py
"""

import os

import pytest

import rproc


class FakeCore(rproc.Remoteproc):
    """A remoteproc instance that answers the way the kernel would.

    Writing "stop" to state leaves the core offline and writing "start" leaves
    it running, and every write is recorded so a test can see what was done
    and in what order.
    """

    transitions = {"stop": "offline", "start": "running"}

    def __init__(self, *args, refuse_firmware_while_running=True, **kwargs):
        super().__init__(*args, **kwargs)
        self.writes = []
        self.refuse_firmware_while_running = refuse_firmware_while_running

    def _write(self, attr, value):
        self.writes.append((attr, value))

        if attr == "firmware" and self.refuse_firmware_while_running:
            # The kernel will not accept a firmware name for a running core.
            if self.state != "offline":
                raise rproc.RemoteprocError("cannot set firmware while running")

        if attr == "state":
            super()._write("state", self.transitions.get(value, value))
            return

        super()._write(attr, value)


def make_tree(tmp_path, instances=(("remoteproc0", "imx-rproc", "offline"),)):
    """A sysfs tree with the attributes remoteproc instances have."""
    sysfs = tmp_path / "class" / "remoteproc"

    for instance, name, state in instances:
        path = sysfs / instance
        path.mkdir(parents=True)
        (path / "name").write_text(name + "\n")
        (path / "state").write_text(state + "\n")
        (path / "firmware").write_text("\n")

    return sysfs


def make_core(tmp_path, sysfs, instance="remoteproc0", **kwargs):
    return FakeCore(str(sysfs / instance),
                    firmware_dir=str(tmp_path / "lib" / "firmware"),
                    debugfs=str(tmp_path / "debug" / "remoteproc"),
                    rpmsg_devices=str(tmp_path / "bus" / "rpmsg" / "devices"),
                    **kwargs)


def test_reads_what_the_kernel_reports(tmp_path):
    sysfs = make_tree(tmp_path)
    core = make_core(tmp_path, sysfs)

    assert core.name == "imx-rproc"
    assert core.state == "offline"


def test_load_stops_before_naming_the_firmware(tmp_path):
    """The order matters: the kernel refuses the name while the core runs."""
    sysfs = make_tree(tmp_path, [("remoteproc0", "imx-rproc", "running")])
    core = make_core(tmp_path, sysfs)
    elf = tmp_path / "zephyr.elf"
    elf.write_bytes(b"\x7fELF and then some")

    core.load(str(elf), timeout=1.0, rpmsg_timeout=0.1)

    assert core.writes == [
        ("state", "stop"),
        ("firmware", "zephyr.elf"),
        ("state", "start"),
    ]
    assert core.state == "running"


def test_load_puts_the_elf_where_the_loader_looks(tmp_path):
    sysfs = make_tree(tmp_path)
    core = make_core(tmp_path, sysfs)
    elf = tmp_path / "build" / "zephyr.elf"
    elf.parent.mkdir()
    elf.write_bytes(b"\x7fELF contents")

    core.load(str(elf), timeout=1.0, rpmsg_timeout=0.1)

    copied = tmp_path / "lib" / "firmware" / "zephyr.elf"
    assert copied.read_bytes() == b"\x7fELF contents"
    assert core.firmware == "zephyr.elf"


def test_load_does_not_stop_a_core_that_is_already_offline(tmp_path):
    sysfs = make_tree(tmp_path)
    core = make_core(tmp_path, sysfs)
    elf = tmp_path / "zephyr.elf"
    elf.write_bytes(b"\x7fELF")

    core.load(str(elf), timeout=1.0, rpmsg_timeout=0.1)

    assert ("state", "stop") not in core.writes


def test_load_refuses_a_file_that_is_not_there(tmp_path):
    sysfs = make_tree(tmp_path)
    core = make_core(tmp_path, sysfs)

    with pytest.raises(rproc.RemoteprocError, match="not a file"):
        core.load(str(tmp_path / "missing.elf"), timeout=1.0)

    assert core.writes == []


def test_a_core_that_never_starts_is_reported(tmp_path):
    """A start that does not take should say so rather than hang."""
    sysfs = make_tree(tmp_path)
    core = make_core(tmp_path, sysfs)
    core.transitions = {"stop": "offline", "start": "offline"}  # start does nothing

    with pytest.raises(rproc.RemoteprocError, match="offline after .*expected running"):
        core.start(timeout=0.2)


def test_the_rpmsg_devices_that_come_back_are_reported(tmp_path):
    sysfs = make_tree(tmp_path)
    core = make_core(tmp_path, sysfs)
    devices = tmp_path / "bus" / "rpmsg" / "devices"
    devices.mkdir(parents=True)
    (devices / "virtio0.rpmsg-raw.-1.1024").mkdir()
    elf = tmp_path / "zephyr.elf"
    elf.write_bytes(b"\x7fELF")

    found = core.load(str(elf), timeout=1.0, rpmsg_timeout=0.5)

    assert found == ["virtio0.rpmsg-raw.-1.1024"]


def test_firmware_that_announces_nothing_is_not_an_error(tmp_path):
    """Not every firmware opens a channel, and waiting for one is not failing."""
    sysfs = make_tree(tmp_path)
    core = make_core(tmp_path, sysfs)
    elf = tmp_path / "zephyr.elf"
    elf.write_bytes(b"\x7fELF")

    assert core.load(str(elf), timeout=1.0, rpmsg_timeout=0.1) == []
    assert core.state == "running"


def test_one_instance_needs_no_naming(tmp_path):
    sysfs = make_tree(tmp_path)

    assert rproc.select(None, str(sysfs)).instance == "remoteproc0"


def test_several_instances_must_be_told_apart(tmp_path):
    sysfs = make_tree(tmp_path, [
        ("remoteproc0", "imx-rproc", "offline"),
        ("remoteproc1", "cdns,mhdp", "offline"),
    ])

    with pytest.raises(rproc.RemoteprocError, match="more than one"):
        rproc.select(None, str(sysfs))

    assert rproc.select("remoteproc1", str(sysfs)).instance == "remoteproc1"
    # The driver's own name works too, since that is what lsmod and dmesg show.
    assert rproc.select("imx-rproc", str(sysfs)).instance == "remoteproc0"


def test_an_unknown_name_says_what_there_is(tmp_path):
    sysfs = make_tree(tmp_path)

    with pytest.raises(rproc.RemoteprocError, match="remoteproc0 \\(imx-rproc\\)"):
        rproc.select("nonesuch", str(sysfs))


def test_no_instances_at_all_is_explained(tmp_path):
    sysfs = tmp_path / "class" / "remoteproc"
    sysfs.mkdir(parents=True)

    with pytest.raises(rproc.RemoteprocError, match="is the kernel driver loaded"):
        rproc.select(None, str(sysfs))


def test_traces_are_read_in_order(tmp_path):
    sysfs = make_tree(tmp_path)
    core = make_core(tmp_path, sysfs)
    traces = tmp_path / "debug" / "remoteproc" / "remoteproc0"
    traces.mkdir(parents=True)
    (traces / "trace0").write_text("first\n")
    (traces / "trace1").write_text("second\n")

    assert core.traces() == [("trace0", "first\n"), ("trace1", "second\n")]


def test_no_traces_is_not_a_crash(tmp_path):
    sysfs = make_tree(tmp_path)

    assert make_core(tmp_path, sysfs).traces() == []


def test_load_reports_a_refusal_rather_than_a_traceback(tmp_path):
    """If the kernel will not take the firmware name, say so plainly."""
    sysfs = make_tree(tmp_path, [("remoteproc0", "imx-rproc", "running")])
    core = make_core(tmp_path, sysfs)
    core.transitions = {"stop": "running", "start": "running"}  # a core that will not stop
    elf = tmp_path / "zephyr.elf"
    elf.write_bytes(b"\x7fELF")

    with pytest.raises(rproc.RemoteprocError, match="expected offline"):
        core.load(str(elf), timeout=0.2)


def test_find_lists_what_is_there(tmp_path, capsys):
    sysfs = make_tree(tmp_path)
    (sysfs / "remoteproc0" / "firmware").write_text("zephyr.elf\n")

    assert rproc.main(["--sysfs", str(sysfs), "find"]) == 0

    out = capsys.readouterr().out
    assert "remoteproc0\timx-rproc\toffline\tzephyr.elf" in out


def test_errors_reach_the_operator_without_a_traceback(tmp_path, capsys):
    sysfs = tmp_path / "empty"
    sysfs.mkdir()

    assert rproc.main(["--sysfs", str(sysfs), "state"]) == 1
    assert "error:" in capsys.readouterr().err
