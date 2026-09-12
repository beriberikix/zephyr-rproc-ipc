/*
 * SPDX-License-Identifier: Apache-2.0
 *
 * Test-only IPC service backend: a loopback whose delivery runs on a worker
 * thread rather than on the sender's, so code that sends while holding a lock
 * and waits for a reply cannot deadlock against itself.
 *
 * Two instances sharing a link-id deliver to each other; an instance with a
 * unique link-id echoes to its own endpoint. Messages are delivered in order,
 * and one larger than the instance's MTU is refused with -EMSGSIZE, as a real
 * link would refuse it.
 */

#define DT_DRV_COMPAT zephyr_ipc_loopback

#include <errno.h>
#include <string.h>

#include <zephyr/device.h>
#include <zephyr/ipc/ipc_service_backend.h>
#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>

LOG_MODULE_REGISTER(ipc_loopback, CONFIG_IPC_SERVICE_LOG_LEVEL);

#define MAX_MTU   CONFIG_IPC_LOOPBACK_MAX_MTU
#define QUEUE_LEN CONFIG_IPC_LOOPBACK_QUEUE_LEN

struct loopback_msg {
	size_t len;
	uint8_t data[MAX_MTU];
};

struct loopback_data {
	const struct ipc_ept_cfg *cfg;
	struct k_msgq q;
	char qbuf[QUEUE_LEN * sizeof(struct loopback_msg)];
	struct k_thread thread;
	K_KERNEL_STACK_MEMBER(stack, CONFIG_IPC_LOOPBACK_STACK_SIZE);
	bool started;
};

struct loopback_config {
	uint8_t link_id;
	uint16_t mtu;
};

struct loopback_instance {
	const struct device *dev;
	uint8_t link_id;
};

#define INSTANCE_ENTRY(i) {.dev = DEVICE_DT_INST_GET(i), .link_id = DT_INST_PROP(i, link_id)},

static const struct loopback_instance instances[] = {DT_INST_FOREACH_STATUS_OKAY(INSTANCE_ENTRY)};

/* Where a message sent on this instance is delivered: the other instance
 * sharing its link-id, or itself when the id is unique.
 */
static const struct device *sink_of(const struct device *instance)
{
	const struct loopback_config *conf = instance->config;

	for (size_t i = 0; i < ARRAY_SIZE(instances); i++) {
		if (instances[i].dev != instance && instances[i].link_id == conf->link_id) {
			return instances[i].dev;
		}
	}

	return instance;
}

static void deliver_thread(void *a, void *b, void *c)
{
	const struct device *instance = a;
	struct loopback_data *data = instance->data;
	struct loopback_msg msg;

	ARG_UNUSED(b);
	ARG_UNUSED(c);

	while (true) {
		k_msgq_get(&data->q, &msg, K_FOREVER);

		if (data->cfg && data->cfg->cb.received) {
			data->cfg->cb.received(msg.data, msg.len, data->cfg->priv);
		}
	}
}

static int send(const struct device *instance, void *token, const void *p_data, size_t len)
{
	const struct loopback_config *conf = instance->config;
	const struct device *sink = sink_of(instance);
	struct loopback_data *sink_data = sink->data;
	struct loopback_msg msg;

	ARG_UNUSED(token);

	if (len == 0) {
		return -EBADMSG;
	}

	if (len > conf->mtu) {
		return -EMSGSIZE;
	}

	if (sink_data->cfg == NULL) {
		return -ENOTCONN;
	}

	msg.len = len;
	memcpy(msg.data, p_data, len);

	/* Never block the sender: a full queue means the test is not draining. */
	if (k_msgq_put(&sink_data->q, &msg, K_NO_WAIT) != 0) {
		return -ENOMEM;
	}

	return 0;
}

static int register_ept(const struct device *instance, void **token,
			const struct ipc_ept_cfg *cfg)
{
	struct loopback_data *data = instance->data;

	data->cfg = cfg;
	*token = (void *)cfg;

	if (cfg->cb.bound) {
		cfg->cb.bound(cfg->priv);
	}

	return 0;
}

static int deregister_ept(const struct device *instance, void *token)
{
	struct loopback_data *data = instance->data;

	ARG_UNUSED(token);
	data->cfg = NULL;

	return 0;
}

static int get_tx_buffer_size(const struct device *instance, void *token)
{
	const struct loopback_config *conf = instance->config;

	ARG_UNUSED(token);

	return conf->mtu;
}

static const struct ipc_service_backend backend_ops = {
	.send = send,
	.register_endpoint = register_ept,
	.deregister_endpoint = deregister_ept,
	.get_tx_buffer_size = get_tx_buffer_size,
};

static int loopback_init(const struct device *instance)
{
	const struct loopback_config *conf = instance->config;
	struct loopback_data *data = instance->data;

	if (conf->mtu > MAX_MTU) {
		LOG_ERR("mtu %u exceeds IPC_LOOPBACK_MAX_MTU %u", conf->mtu, MAX_MTU);
		return -EINVAL;
	}

	k_msgq_init(&data->q, data->qbuf, sizeof(struct loopback_msg), QUEUE_LEN);
	k_thread_create(&data->thread, data->stack, K_KERNEL_STACK_SIZEOF(data->stack),
			deliver_thread, (void *)instance, NULL, NULL,
			CONFIG_IPC_LOOPBACK_THREAD_PRIORITY, 0, K_NO_WAIT);
	k_thread_name_set(&data->thread, "ipc_loopback");
	data->started = true;

	return 0;
}

#define DEFINE_LOOPBACK_DEVICE(i)                                                                  \
	static const struct loopback_config loopback_config_##i = {                                \
		.link_id = DT_INST_PROP(i, link_id),                                               \
		.mtu = DT_INST_PROP(i, mtu),                                                       \
	};                                                                                         \
	static struct loopback_data loopback_data_##i;                                             \
	DEVICE_DT_INST_DEFINE(i, loopback_init, NULL, &loopback_data_##i, &loopback_config_##i,     \
			      POST_KERNEL, CONFIG_IPC_SERVICE_REG_BACKEND_PRIORITY, &backend_ops);

DT_INST_FOREACH_STATUS_OKAY(DEFINE_LOOPBACK_DEVICE)
