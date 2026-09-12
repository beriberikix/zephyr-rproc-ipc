#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
#
# Build a sample, put it on the board, and run it on the remote core.
#
#   deploy.sh root@192.0.2.10 samples/ipc_echo
#   deploy.sh --board imx95_evk/mimx9596/m7 root@board samples/smp_ipc
#   deploy.sh --dry-run root@board samples/ipc_echo   # print, do nothing
#
# There is no flasher and no debug probe in this: the firmware is a file the
# host's kernel is pointed at. So the inner loop is a build, a copy and a
# write to sysfs, which is what this does.
#
# The board needs rproc.py, which is copied along with the firmware, and a
# root shell over ssh (remoteproc's sysfs files are not world-writable).
set -euo pipefail

board=imx95_evk/mimx9596/m7
dry_run=false
remote_dir=/tmp/zephyr-rproc

usage() {
    sed -n '3,12p' "$0" | sed 's/^# \{0,1\}//'
    exit "${1:-0}"
}

while [[ $# -gt 0 ]]; do
    case $1 in
        --board) board=${2:?--board needs a value}; shift 2 ;;
        --remote-dir) remote_dir=${2:?--remote-dir needs a value}; shift 2 ;;
        --dry-run) dry_run=true; shift ;;
        -h|--help) usage 0 ;;
        --) shift; break ;;
        -*) echo "unknown option: $1" >&2; usage 1 ;;
        *) break ;;
    esac
done

target=${1:-}
sample=${2:-}

if [[ -z $target || -z $sample ]]; then
    echo "need a target to deploy to and a sample to build" >&2
    usage 1
fi

here=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
module=$(dirname "$here")
build_dir=build/$(basename "$sample")

run() {
    if [[ $dry_run == true ]]; then
        printf '%q ' "$@"
        printf '\n'
        return 0
    fi
    "$@"
}

echo "==> building $sample for $board"
run west build -p -b "$board" "$sample" -d "$build_dir" -- \
    -DZEPHYR_EXTRA_MODULES="$module"

elf=$build_dir/zephyr/zephyr.elf

if [[ $dry_run != true && ! -f $elf ]]; then
    echo "the build produced no $elf" >&2
    exit 1
fi

echo "==> copying to $target:$remote_dir"
run ssh "$target" "mkdir -p $remote_dir"
run scp -q "$elf" "$here/rproc.py" "$target:$remote_dir/"

# Loading stops the core, so anything holding a /dev/rpmsgN will see it go.
echo "==> loading it on the remote core"
run ssh "$target" "python3 $remote_dir/rproc.py load $remote_dir/zephyr.elf"

echo "==> done; the core is running $(basename "$sample")"
