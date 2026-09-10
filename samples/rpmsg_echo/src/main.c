/*
 * SPDX-License-Identifier: Apache-2.0
 *
 * Echo every message received on an "rpmsg-raw" endpoint back to its sender.
 *
 * On a Linux host the endpoint appears as /dev/rpmsgN once the name-service
 * announcement arrives; anything written to it comes straight back.
 */

#include <zephyr/device.h>
#include <zephyr/drivers/remoteproc.h>
#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>

#include <openamp/rpmsg.h>

LOG_MODULE_REGISTER(rpmsg_echo, LOG_LEVEL_INF);

static const struct device *const vdev = DEVICE_DT_GET(DT_NODELABEL(vdev0));

static struct rpmsg_endpoint ept;
static uint32_t echoed;

static int ept_cb(struct rpmsg_endpoint *e, void *data, size_t len, uint32_t src, void *priv)
{
	ARG_UNUSED(priv);

	int ret = rpmsg_trysend(e, data, len);

	if (ret < 0) {
		LOG_ERR("echo of %zu bytes from 0x%x failed: %d", len, src, ret);
	} else {
		echoed++;
		LOG_INF("echoed %zu bytes (#%u)", len, echoed);
	}

	return RPMSG_SUCCESS;
}

int main(void)
{
	if (!device_is_ready(vdev)) {
		LOG_ERR("rpmsg vdev not ready");
		return 0;
	}

	struct rpmsg_device *rdev = z_rproc_get_rpmsg_device(vdev);
	int ret = rpmsg_create_ept(&ept, rdev, "rpmsg-raw", RPMSG_ADDR_ANY, RPMSG_ADDR_ANY, ept_cb,
				   NULL);

	if (ret) {
		LOG_ERR("rpmsg_create_ept failed: %d", ret);
		return 0;
	}

	LOG_INF("rpmsg-raw endpoint 0x%x announced", ept.addr);
	return 0;
}
