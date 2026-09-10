/*
 * SPDX-License-Identifier: Apache-2.0
 *
 * MCUmgr SMP transport over an IPC service endpoint.
 *
 * Carries raw SMP packets - header and CBOR body, no base64 or CRC framing -
 * over one endpoint of the IPC service instance chosen as zephyr,ipc-mcumgr.
 * An IPC message is limited to the backend's buffer size (496 bytes for RPMsg
 * to Linux), so a packet may span several messages: incoming fragments are
 * reassembled using the length in the SMP header, and outgoing packets are
 * split into buffer-sized messages for the host to rejoin the same way.
 */

#include <errno.h>

#include <zephyr/device.h>
#include <zephyr/ipc/ipc_service.h>
#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <zephyr/mgmt/mcumgr/mgmt/handlers.h>
#include <zephyr/mgmt/mcumgr/mgmt/mgmt.h>
#include <zephyr/mgmt/mcumgr/smp/smp.h>
#include <zephyr/mgmt/mcumgr/transport/smp.h>
#include <zephyr/net_buf.h>
#include <zephyr/sys/atomic.h>

#include <mgmt/mcumgr/transport/smp_internal.h>
#include <mgmt/mcumgr/transport/smp_reassembly.h>

LOG_MODULE_REGISTER(smp_ipc, CONFIG_MCUMGR_TRANSPORT_IPC_LOG_LEVEL);

#if !DT_HAS_CHOSEN(zephyr_ipc_mcumgr)
#error "The MCUmgr IPC transport needs a zephyr,ipc-mcumgr chosen node"
#endif

static const struct device *const ipc = DEVICE_DT_GET(DT_CHOSEN(zephyr_ipc_mcumgr));

static struct smp_transport smp_ipc_transport;
static struct ipc_ept ept;
static atomic_t bound;

static void ept_bound(void *priv)
{
	ARG_UNUSED(priv);

	atomic_set(&bound, 1);
	LOG_DBG("endpoint bound");
}

static void ept_unbound(void *priv)
{
	ARG_UNUSED(priv);

	atomic_set(&bound, 0);
	/* A packet half-collected from a peer that has gone is of no use. */
	smp_reassembly_drop(&smp_ipc_transport);
}

static void ept_received(const void *data, size_t len, void *priv)
{
	ARG_UNUSED(priv);

	if (len > UINT16_MAX) {
		LOG_ERR("%zu-byte message is too long", len);
		return;
	}

	int ret = smp_reassembly_collect(&smp_ipc_transport, data, (uint16_t)len);

	if (ret < 0) {
		/* Out of buffers, a fragment longer than its packet, or a first
		 * fragment too short to hold the header: this packet is lost,
		 * and the next message starts a new one.
		 */
		LOG_ERR("dropping SMP packet: %d", ret);
		smp_reassembly_drop(&smp_ipc_transport);
		return;
	}

	if (ret == 0) {
		smp_reassembly_complete(&smp_ipc_transport, false);
	}
}

static void ept_error(const char *message, void *priv)
{
	ARG_UNUSED(priv);

	LOG_ERR("IPC error: %s", message);
}

static int send_fragment(const uint8_t *data, size_t len)
{
	int ret;

	for (int waited = 0;; waited++) {
		ret = ipc_service_send(&ept, data, len);
		if (ret != -ENOMEM || waited >= CONFIG_MCUMGR_TRANSPORT_IPC_TX_WAIT_MS) {
			return ret;
		}
		k_msleep(1);
	}
}

static int smp_ipc_tx(struct net_buf *nb)
{
	int rc = MGMT_ERR_EOK;
	int mtu = ipc_service_get_tx_buffer_size(&ept);

	if (!atomic_get(&bound)) {
		rc = MGMT_ERR_ENOENT;
	} else if (mtu <= 0) {
		rc = MGMT_ERR_EUNKNOWN;
	} else {
		for (size_t off = 0; off < nb->len; off += (size_t)mtu) {
			size_t len = MIN((size_t)mtu, nb->len - off);
			int ret = send_fragment(nb->data + off, len);

			if (ret < 0) {
				LOG_ERR("send of %zu bytes failed: %d", len, ret);
				rc = (ret == -ENOMEM) ? MGMT_ERR_ENOMEM : MGMT_ERR_EUNKNOWN;
				break;
			}
		}
	}

	smp_packet_free(nb);
	return rc;
}

static uint16_t smp_ipc_get_mtu(const struct net_buf *nb)
{
	ARG_UNUSED(nb);

	/* The SMP packet size, not the IPC message size: packets are split into
	 * messages and rejoined, so only the reassembly buffer limits them.
	 */
	return CONFIG_MCUMGR_TRANSPORT_NETBUF_SIZE;
}

static void smp_ipc_start(void)
{
	static const struct ipc_ept_cfg cfg = {
		.name = CONFIG_MCUMGR_TRANSPORT_IPC_ENDPOINT_NAME,
		.cb = {
			.bound = ept_bound,
			.unbound = ept_unbound,
			.received = ept_received,
			.error = ept_error,
		},
	};

	smp_ipc_transport.functions.output = smp_ipc_tx;
	smp_ipc_transport.functions.get_mtu = smp_ipc_get_mtu;

	int ret = smp_transport_init(&smp_ipc_transport);

	if (ret) {
		LOG_ERR("smp_transport_init failed: %d", ret);
		return;
	}

	smp_reassembly_init(&smp_ipc_transport);

	ret = ipc_service_open_instance(ipc);
	if (ret && ret != -EALREADY) {
		LOG_ERR("ipc_service_open_instance failed: %d", ret);
		return;
	}

	ret = ipc_service_register_endpoint(ipc, &ept, &cfg);
	if (ret) {
		LOG_ERR("register endpoint %s failed: %d", cfg.name, ret);
		return;
	}

	LOG_INF("SMP endpoint %s registered", cfg.name);
}

MCUMGR_HANDLER_DEFINE(smp_ipc, smp_ipc_start);
