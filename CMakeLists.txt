# SPDX-License-Identifier: Apache-2.0
#
# Everything under drivers/, include/, dts/ and subsys/ sits at the same path
# it has in the Zephyr tree, so a change made here applies to a Zephyr checkout
# as-is.

zephyr_include_directories(include)

add_subdirectory_ifdef(CONFIG_REMOTEPROC drivers/remoteproc)

zephyr_sources_ifdef(CONFIG_IPC_SERVICE_BACKEND_RPROC_RPMSG
  subsys/ipc/ipc_service/backends/ipc_rproc_rpmsg.c
)

zephyr_sources_ifdef(CONFIG_MCUMGR_TRANSPORT_IPC
  subsys/mgmt/mcumgr/transport/src/smp_ipc.c
)

zephyr_sources_ifdef(CONFIG_IPC_LOOPBACK
  tests/common/fake_ipc_backend.c
)
