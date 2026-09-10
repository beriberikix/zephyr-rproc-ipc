/*
 * SPDX-License-Identifier: Apache-2.0
 *
 * Two "rpmsg-raw" endpoints through the IPC service API: the first echoes
 * each message back, the second echoes it reversed, so a host can tell which
 * /dev/rpmsgN it is talking to.
 */

#include <zephyr/device.h>
#include <zephyr/ipc/ipc_service.h>
#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>

LOG_MODULE_REGISTER(ipc_echo, LOG_LEVEL_INF);

static const struct device *const ipc = DEVICE_DT_GET(DT_NODELABEL(ipc0));

struct echo {
	struct ipc_ept ept;
	const char *label;
	bool reverse;
	uint32_t count;
};

static struct echo echoes[] = {
	{.label = "plain"},
	{.label = "reverse", .reverse = true},
};

static void bound(void *priv)
{
	struct echo *e = priv;

	LOG_INF("%s endpoint bound", e->label);
}

static void received(const void *data, size_t len, void *priv)
{
	struct echo *e = priv;
	uint8_t out[496];
	const uint8_t *in = data;

	if (len > sizeof(out)) {
		LOG_ERR("%s: %zu bytes is more than a buffer", e->label, len);
		return;
	}

	for (size_t i = 0; i < len; i++) {
		out[i] = e->reverse ? in[len - 1 - i] : in[i];
	}

	int ret = ipc_service_send(&e->ept, out, len);

	if (ret < 0) {
		LOG_ERR("%s: echo of %zu bytes failed: %d", e->label, len, ret);
		return;
	}

	e->count++;
}

int main(void)
{
	int ret = ipc_service_open_instance(ipc);

	if (ret < 0 && ret != -EALREADY) {
		LOG_ERR("ipc_service_open_instance failed: %d", ret);
		return 0;
	}

	for (size_t i = 0; i < ARRAY_SIZE(echoes); i++) {
		struct ipc_ept_cfg cfg = {
			.name = "rpmsg-raw",
			.cb = {.bound = bound, .received = received},
			.priv = &echoes[i],
		};

		ret = ipc_service_register_endpoint(ipc, &echoes[i].ept, &cfg);
		if (ret < 0) {
			LOG_ERR("register %s failed: %d", echoes[i].label, ret);
			return 0;
		}
	}

	LOG_INF("two endpoints registered");

	while (true) {
		k_sleep(K_SECONDS(30));
		LOG_INF("echoed plain=%u reverse=%u", echoes[0].count, echoes[1].count);
	}

	return 0;
}
