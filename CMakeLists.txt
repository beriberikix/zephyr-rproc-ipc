# SPDX-License-Identifier: Apache-2.0
#
# Everything under drivers/, include/ and dts/ sits at the same path it has in
# the Zephyr tree, so a change made here applies to a Zephyr checkout as-is.

zephyr_include_directories(include)

add_subdirectory_ifdef(CONFIG_REMOTEPROC drivers/remoteproc)
