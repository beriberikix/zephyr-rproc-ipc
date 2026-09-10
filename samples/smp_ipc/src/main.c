/*
 * SPDX-License-Identifier: Apache-2.0
 *
 * MCUmgr over the IPC service: the SMP transport registers its own endpoint,
 * so there is nothing to do here but boot.
 */

#include <zephyr/logging/log.h>

LOG_MODULE_REGISTER(smp_ipc_sample, LOG_LEVEL_INF);

int main(void)
{
	LOG_INF("MCUmgr SMP server over IPC");
	return 0;
}
