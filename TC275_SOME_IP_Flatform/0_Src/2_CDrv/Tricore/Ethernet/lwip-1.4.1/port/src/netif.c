/**
 * @file
 * Ethernet Interface for TC2xx
 * Author: Dian Tresna Nugraha <dian.nugraha@infineon.com>
 *         Holger Dienst <holger.dienst@infineon.com>
 * Copyright (c) 2015 Infineon Technologies A.G.
 */

/*
 * Copyright (c) 2001-2004 Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 * This file is part of the lwIP TCP/IP stack.
 *
 * Author: Adam Dunkels <adam@sics.se>
 *
 */

/**
 * This file is a skeleton for developing Ethernet network interface
 * drivers for lwIP. Add code to the low_level functions and do a
 * search-and-replace for the word "ethernetif" to replace it with
 * something that better describes your network interface.
 */

#include "lwip/opt.h"

#include "lwip/def.h"
#include "lwip/mem.h"
#include "lwip/pbuf.h"
#include <lwip/stats.h>
#include <lwip/snmp.h>
#include "netif/etharp.h"
#include "netif/ppp_oe.h"

#include "Ifx_Lwip.h"
#include "Ifx_Netif.h"
#include <Eth/Std/IfxEth.h>
#include <Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h>
#include "Configuration.h"
#include <string.h>

#include "IfxEth.h"


#include "Peripherals_ETH.h"
#include "Application.h"

/* Define those to better describe your network interface. */
#define IFNAME0 'e'
#define IFNAME1 'n'

/**
 * Helper struct to hold private data used to operate your ethernet interface.
 * Keeping the ethernet address of the MAC in this struct is not necessary
 * as it is already kept in the struct netif.
 * But this is only an example, anyway...
 */
struct ethernetif
{
    eth_addr_t *ethaddr;
    /* Add whatever per-interface state that is needed here. */
};

/* pin configuration */
const IfxEth_RmiiPins rmii_pins = {&ETH_CRSDIV_PIN,     /* CRSDIV */
                                   &ETH_REFCLK_PIN,     /* REFCLK */
                                   &ETH_RXD0_PIN,       /* RXD0 */
                                   &ETH_RXD1_PIN,       /* RXD1 */
                                   &ETH_MDC_PIN,        /* MDC */
                                   &ETH_MDIO_PIN,       /* MDIO */
                                   &ETH_TXD0_PIN,       /* TXD0 */
                                   &ETH_TXD1_PIN,       /* TXD1 */
                                   &ETH_TXEN_PIN        /* TXEN */
};

                                           /**
 * In this function, the hardware should be initialized.
 * Called from ethernetif_init().
 *
 * @param netif the already initialized lwip network interface structure
 *        for this ethernetif
 */
static void low_level_init(netif_t *netif)
{
    IfxEth *ethernetif = netif->state;
    int     i;

    /* set MAC hardware address length */
    netif->hwaddr_len = ETHARP_HWADDR_LEN;

    /* set MAC hardware address */
    for (i = 0; i < ETHARP_HWADDR_LEN; i++)
    {
        netif->hwaddr[i] = g_Lwip.eth_addr.addr[i];
    }

    /* maximum transfer unit */
    netif->mtu = 1500;

    /* device capabilities */
    /* don't set NETIF_FLAG_ETHARP if this device is not an ethernet one */
    /* we don't set the LINK_UP flag because we don't say when it is linked */
    netif->flags = NETIF_FLAG_BROADCAST | NETIF_FLAG_ETHARP;

    /* Do whatever else is needed to initialize interface. */
    {
        IfxEth_Config EthConfig;
        /* setup the config struct */
        EthConfig.macAddress[0] = netif->hwaddr[0];
        EthConfig.macAddress[1] = netif->hwaddr[1];
        EthConfig.macAddress[2] = netif->hwaddr[2];
        EthConfig.macAddress[3] = netif->hwaddr[3];
        EthConfig.macAddress[4] = netif->hwaddr[4];
        EthConfig.macAddress[5] = netif->hwaddr[5];

        EthConfig.phyInit = &IfxEth_Phy_Pef7071_init;
        EthConfig.phyLink = &IfxEth_Phy_Pef7071_link;
        EthConfig.phyInterfaceMode = IfxEth_PhyInterfaceMode_rmii;

        EthConfig.rmiiPins = &rmii_pins;
        EthConfig.miiPins = NULL;

        //EthConfig.isrPriority = ISR_PRIORITY_EtherNet_RX;
        //EthConfig.isrProvider = ISR_PRIORITY_EtherNet_ISR_Provider;

        EthConfig.ethSfr = &MODULE_ETH;
        EthConfig.rxDescr = &IfxEth_rxDescr;
        EthConfig.txDescr = &IfxEth_txDescr;
        IfxEth_init(ethernetif, &EthConfig);
        //IfxEth_startReceiver(ethernetif);
        //IfxEth_startTransmitter(ethernetif);


        /* 占쏙옙占쏙옙 */
        //IO_set_ETH();
        //setPort_ETH();
        //delay_ms(100);

        /* we set the LINK_UP flag if we have a valid link */
    	//if (IfxEth_isLinkActive(ethernetif)) netif->flags |= NETIF_FLAG_LINK_UP;

    }
}


/**
 * This function should do the actual transmission of the packet. The packet is
 * contained in the pbuf that is passed to the function. This pbuf
 * might be chained.
 *
 * @param netif the lwip network interface structure for this ethernetif
 * @param p the MAC packet to send (e.g. IP packet including MAC addresses and type)
 * @return ERR_OK if the packet could be sent
 *         an err_t value if the packet couldn't be sent
 *
 * @note Returning ERR_MEM here if a DMA queue of your MAC is full can lead to
 *       strange results. You might consider waiting for space in the DMA queue
 *       to become availale since the stack doesn't retry to send a packet
 *       dropped because of memory failure (except for the TCP timers).
 */
static err_t low_level_output(netif_t *netif, pbuf_t *p)
{
    IfxEth      *ethernetif = netif->state;
    struct pbuf *q;

    u16_t        length = p->tot_len;
    LWIP_DEBUGF(NETIF_DEBUG | LWIP_DBG_TRACE, ("low_level_output (p=%#x)\n", p));

#if ETH_PAD_SIZE
    pbuf_header(p, -ETH_PAD_SIZE); /* drop the padding word */
#endif

    if ((p->type == PBUF_REF) || (p->type == PBUF_ROM))
    {
        // if PBUF_REF or PBUF_ROM, no copy into ethernet RAM buffer is needed.
        // see pbuf_alloc_special()
        IfxEth_sendTransmitBuffer(ethernetif, p->tot_len);
    }
    else
    {
        //initiate transfer();
        u8_t *tbuf = IfxEth_waitTransmitBuffer(ethernetif);
        u16_t l    = 0;

        for (q = p; q != NULL; q = q->next)
        {
            /* Send the data from the pbuf to the interface, one pbuf at a
             * time. The size of the data in each pbuf is kept in the ->len
             * variable. */
            memcpy((u8_t *)&tbuf[l], q->payload, q->len);
            l = l + q->len;
            LWIP_DEBUGF(NETIF_DEBUG | LWIP_DBG_TRACE, ("low_level_output: data=%#x, %d\n", q->payload, q->len));
            LWIP_ASSERT("low_level_output: length overflow the buffer\n", (l < IFXETH_RTX_BUFFER_SIZE));
        }

        IfxEth_sendTransmitBuffer(ethernetif, l);
    }

    LWIP_DEBUGF(NETIF_DEBUG | LWIP_DBG_TRACE, ("low_level_output: signal length: %d\n", length));

#if ETH_PAD_SIZE
    pbuf_header(p, ETH_PAD_SIZE); /* reclaim the padding word */
#endif

    LINK_STATS_INC(link.xmit);

    LWIP_DEBUGF(NETIF_DEBUG | LWIP_DBG_TRACE, ("low_level_output: return OK\n"));

    return ERR_OK;
}


/**
 * Should allocate a pbuf and transfer the bytes of the incoming
 * packet from the interface into the pbuf.
 *
 * @param netif the lwip network interface structure for this ethernetif
 * @return a pbuf filled with the received packet (including MAC header)
 *         NULL on memory error
 */

static pbuf_t *low_level_input(netif_t *netif)
{
    IfxEth *ethernetif = netif->state;
    pbuf_t *p, *q;
    u16_t   len;

    len = IfxEth_getRxDataLength(ethernetif);

    if (len == 0)
    {

        return (pbuf_t *)0;
    }

#if ETH_PAD_SIZE
    len += ETH_PAD_SIZE; /* allow room for Ethernet padding */
#endif


    /* We allocate a pbuf chain of pbufs from the pool. */
    p = pbuf_alloc(PBUF_RAW, len, PBUF_POOL);//占쏙옙占쏙옙 2024-02-02,02:06, 占쏙옙占썩서占쏙옙 raw占쏙옙 占쌨는댐옙....
    //p = pbuf_alloc(PBUF_TRANSPORT, len, PBUF_POOL); //占쏙옙占쏙옙 2024-02-01,22:43

    if (p != NULL)
    {
#if ETH_PAD_SIZE
        pbuf_header(p, -ETH_PAD_SIZE); /* drop the padding word */
#endif

        u8_t *src = IfxEth_getReceiveBuffer(ethernetif);

        /* We iterate over the pbuf chain until we have read the entire
         * packet into the pbuf. */
        for (q = p; q != NULL; q = q->next)
        {
            /* Read enough bytes to fill this pbuf in the chain. The
             * available data in the pbuf is given by the q->len
             * variable.
             * This does not necessarily have to be a memcpy, you can also preallocate
             * pbufs for a DMA-enabled MAC and after receiving truncate it to the
             * actually received size. In this case, ensure the tot_len member of the
             * pbuf is the sum of the chained pbuf len members.
             */
            //read data into(q->payload, q->len);

        	// RxPayload 占쏙옙占쏙옙 DesMAC 占쌍쇽옙 占쏙옙占쏙옙 占쏙옙占쏙옙獵占� 占쏙옙 占쏙옙, Rx占싹댐옙 占쏙옙占쏙옙 첨占쏙옙占쏙옙 占쏙옙 占쏙옙占승댐옙. 占쏙옙占쏙옙占쏙옙 Tx占쏙옙 占쏙옙占쏙옙, only Payload占쏙옙 占쏙옙틴占� 占싼댐옙.!
            memcpy(q->payload, src, q->len);

            src = &src[q->len];

            LWIP_DEBUGF(NETIF_DEBUG | LWIP_DBG_TRACE, ("low_level_input: payload=0x%x, len=%d\n", q->payload, q->len));
            // 2024-02-01, 16:07 : 占쏙옙占쏙옙, 占싹댐옙 占쏙옙占쏙옙占쏙옙占쏙옙占� 占싫댐옙.

        }

        //acknowledge that packet has been read();
        IfxEth_freeReceiveBuffer(ethernetif);

#if ETH_PAD_SIZE
        pbuf_header(p, ETH_PAD_SIZE); /* reclaim the padding word */
#endif

        LINK_STATS_INC(link.recv);
    }
    else
    {
        //TODO: drop packet();
        LINK_STATS_INC(link.memerr);
        LINK_STATS_INC(link.drop);
    }

    return p;
}


/**
 * This function should be called when a packet is ready to be read
 * from the interface. It uses the function low_level_input() that
 * should handle the actual reception of bytes from the network
 * interface. Then the type of the received packet is determined and
 * the appropriate input function is called.
 *
 * @param netif the lwip network interface structure for this ethernetif
 */

err_t ifx_netif_input(netif_t *netif)
{
    //IfxEth *ethernetif = netif->state;
    // eth hdr : srcMAC, desMAC, Type 占쏙옙占쏙옙 占쏙옙占쏙옙
	eth_hdr_t *ethhdr;
    pbuf_t    *p;


    /* move received packet into a new pbuf */
    p = low_level_input(netif);
    // p 占쏙옙占쌜울옙 占쏙옙占쏙옙홱占�.

    /* no packet could be read, silently ignore this */
    if (p == NULL)
    {
        //LWIP_DEBUGF(NETIF_DEBUG, ("ifx_netif_input: p == NULL!\n"));
        return ERR_OK;
    }

    ethhdr = p->payload;
    // 2024-02-01, 16:07 : 占쏙옙占쏙옙, 占싹댐옙 占쏙옙占쏙옙占쏙옙占쏙옙占� 占싫댐옙.

    switch (htons(ethhdr->type))
    {

		/* IP or ARP packet? */
		case ETHTYPE_IP:
			#if UDP_Opt
			udp_echo(p);
			printf_SysLog("UDP echo has succeed !!\r\n\n");
			#endif
            #if SOMEIP_Client_Opt

            #endif
		case ETHTYPE_ARP:
	        //ethernet_input(netif, p);
#if PPPOE_SUPPORT
    /* PPPoE packet? */
    case ETHTYPE_PPPOEDISC:
    case ETHTYPE_PPPOE:
#endif /* PPPOE_SUPPORT */

			/* full packet send to tcpip_thread to process */
			if (netif->input(p, netif) != ERR_OK)
			{
				LWIP_DEBUGF(NETIF_DEBUG, ("ifx_netif_input: IP input error\n"));
				pbuf_free(p);
				p = NULL;
			}

		break;

		default:

			LWIP_DEBUGF(NETIF_DEBUG, ("ifx_netif_input: type unknown\n"));
			pbuf_free(p);
			p = NULL;
			break;
    }

    return ERR_OK;
}


/**
 * Should be called at the beginning of the program to set up the
 * network interface. It calls the function low_level_init() to do the
 * actual setup of the hardware.
 *
 * This function should be passed as a parameter to netif_add().
 *
 * @param netif the lwip network interface structure for this ethernetif
 * @return ERR_OK if the loopif is initialized
 *         ERR_MEM if private data couldn't be allocated
 *         any other err_t on error
 */

err_t ifx_netif_init(netif_t *netif)
{
    IfxEth *ethernetif;

    LWIP_ASSERT("netif != NULL", (netif != NULL));
    LWIP_DEBUGF(NETIF_DEBUG | LWIP_DBG_TRACE, ("ifx_netif_init ( %#x)\n", netif));

    ethernetif = IfxEth_get();

    if (ethernetif == NULL)
    {
        LWIP_DEBUGF(NETIF_DEBUG, ("ifx_netif_init: out of memory\n"));
        return ERR_MEM;
    }

#if LWIP_NETIF_HOSTNAME
    /* Initialize interface hostname */
    netif->hostname = "lwip";
#endif /* LWIP_NETIF_HOSTNAME */

    /*
     * Initialize the snmp variables and counters inside the struct netif.
     * The last argument should be replaced with your link speed, in units
     * of bits per second.
     */
    //NETIF_INIT_SNMP(netif, snmp_ifType_ethernet_csmacd, LINK_SPEED_OF_YOUR_NETIF_IN_BPS);

    netif->state      = ethernetif;
    netif->name[0]    = IFNAME0;
    netif->name[1]    = IFNAME1;
    /* We directly use etharp_output() here to save a function call.
     * You can instead declare your own function an call etharp_output()
     * from it if you have to do some checks before sending (e.g. if link
     * is available...) */
    netif->output     = etharp_output;
    netif->linkoutput = low_level_output;

    /* initialize the hardware */
    low_level_init(netif);


    return ERR_OK;
}
