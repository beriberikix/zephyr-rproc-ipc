/*
 * SPDX-License-Identifier: Apache-2.0
 *
 * The loopback backend's own tests. What matters for everything built on it
 * is that delivery happens on another thread, in order, and that the link's
 * limits are reported and enforced rather than silently papered over.
 */

#include <zephyr/device.h>
#include <zephyr/ipc/ipc_service.h>
#include <zephyr/kernel.h>
#include <zephyr/ztest.h>

#define RX_SLOTS 16

struct rx_log {
	struct k_sem arrived;
	k_tid_t thread[RX_SLOTS];
	uint8_t first_byte[RX_SLOTS];
	size_t len[RX_SLOTS];
	unsigned int count;
	bool bound;
};

static struct rx_log log_a, log_b, log_echo;

static void on_bound(void *priv)
{
	((struct rx_log *)priv)->bound = true;
}

static void on_received(const void *data, size_t len, void *priv)
{
	struct rx_log *l = priv;
	unsigned int i = l->count;

	if (i < RX_SLOTS) {
		l->thread[i] = k_current_get();
		l->first_byte[i] = ((const uint8_t *)data)[0];
		l->len[i] = len;
	}

	l->count++;
	k_sem_give(&l->arrived);
}

#define EPT_CFG(name_, log_)                                                                       \
	{                                                                                          \
		.name = name_, .priv = &(log_),                                                    \
		.cb = {.bound = on_bound, .received = on_received},                                \
	}

static struct ipc_ept ept_a, ept_b, ept_echo;

static void *setup(void)
{
	static struct ipc_ept_cfg cfg_a = EPT_CFG("a", log_a);
	static struct ipc_ept_cfg cfg_b = EPT_CFG("b", log_b);
	static struct ipc_ept_cfg cfg_echo = EPT_CFG("echo", log_echo);

	const struct device *a = DEVICE_DT_GET(DT_NODELABEL(ipc_a));
	const struct device *b = DEVICE_DT_GET(DT_NODELABEL(ipc_b));
	const struct device *e = DEVICE_DT_GET(DT_NODELABEL(ipc_echo));

	k_sem_init(&log_a.arrived, 0, RX_SLOTS);
	k_sem_init(&log_b.arrived, 0, RX_SLOTS);
	k_sem_init(&log_echo.arrived, 0, RX_SLOTS);

	zassert_ok(ipc_service_open_instance(a));
	zassert_ok(ipc_service_open_instance(b));
	zassert_ok(ipc_service_open_instance(e));
	zassert_ok(ipc_service_register_endpoint(a, &ept_a, &cfg_a));
	zassert_ok(ipc_service_register_endpoint(b, &ept_b, &cfg_b));
	zassert_ok(ipc_service_register_endpoint(e, &ept_echo, &cfg_echo));

	return NULL;
}

ZTEST_SUITE(ipc_loopback, NULL, setup, NULL, NULL, NULL);

ZTEST(ipc_loopback, test_bound_is_reported)
{
	zassert_true(log_a.bound);
	zassert_true(log_b.bound);
}

ZTEST(ipc_loopback, test_paired_instances_reach_each_other)
{
	uint8_t msg[] = {0x42, 0x43};
	unsigned int before = log_b.count;

	zassert_ok(ipc_service_send(&ept_a, msg, sizeof(msg)));
	zassert_ok(k_sem_take(&log_b.arrived, K_SECONDS(1)), "peer never received it");

	zassert_equal(log_b.count, before + 1);
	zassert_equal(log_b.first_byte[before], 0x42);
	zassert_equal(log_b.len[before], sizeof(msg));
}

/* The reason this backend exists: a synchronous loopback would run the
 * receive callback on the sender's thread, which deadlocks anything that
 * sends while holding a lock and then waits for the reply.
 */
ZTEST(ipc_loopback, test_delivery_is_not_on_the_sender_thread)
{
	uint8_t msg[] = {0x01};
	unsigned int i = log_b.count;

	zassert_ok(ipc_service_send(&ept_a, msg, sizeof(msg)));
	zassert_ok(k_sem_take(&log_b.arrived, K_SECONDS(1)));

	zassert_not_equal(log_b.thread[i], k_current_get(),
			  "receive callback ran on the sending thread");
}

ZTEST(ipc_loopback, test_order_is_preserved)
{
	unsigned int before = log_b.count;

	for (uint8_t i = 0; i < 5; i++) {
		uint8_t msg[] = {i};

		zassert_ok(ipc_service_send(&ept_a, msg, sizeof(msg)));
	}

	for (int i = 0; i < 5; i++) {
		zassert_ok(k_sem_take(&log_b.arrived, K_SECONDS(1)));
	}

	for (uint8_t i = 0; i < 5; i++) {
		zassert_equal(log_b.first_byte[before + i], i, "message %u arrived out of order", i);
	}
}

ZTEST(ipc_loopback, test_unpaired_instance_echoes_to_itself)
{
	uint8_t msg[] = {0x7f};
	unsigned int before = log_echo.count;

	zassert_ok(ipc_service_send(&ept_echo, msg, sizeof(msg)));
	zassert_ok(k_sem_take(&log_echo.arrived, K_SECONDS(1)));
	zassert_equal(log_echo.first_byte[before], 0x7f);
}

ZTEST(ipc_loopback, test_mtu_is_reported_and_enforced)
{
	uint8_t big[65] = {0};

	/* The echo instance sets mtu = 64 in the overlay. */
	zassert_equal(ipc_service_get_tx_buffer_size(&ept_echo), 64);
	zassert_equal(ipc_service_send(&ept_echo, big, sizeof(big)), -EMSGSIZE);
	zassert_equal(ipc_service_send(&ept_echo, big, 0), -EBADMSG);
}
