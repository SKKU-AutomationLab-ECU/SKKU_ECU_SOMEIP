/*
 * Peripherals_ETH.c
 *
 *  Created on: 2018. 8. 11.
 *      Author: HW_Jin
<<<<<<< HEAD
==========================================
 *      <Lwip Ethernet Drivers>
 *      Revised: SJ_Lim (2024. 2. 4.)
 */

#include <stdio.h>
#include "Peripherals_ETH.h"
#include "Peripherals_CAN.h"
#include "IfxEth_reg.h"
#include "Peripherals_UART.h"
#include "Cpu/Std/IfxCpu.h"
#include "Event_Trigger.h"
#include "Ifx_Cfg.h"

#include "lwip/udp.h"
#include "lwip/pbuf.h"
#include "Ifx_Lwip.h"
#include "netif/etharp.h"
#include "lwip/tcp.h"

#define MEMORY_TRANSFER_NUM_WORDS 1024
#define IFX_INTPRIO_DMA_CH0  1
#define NUM_SCANNED_CHANNELS  8
uint8* pRxBuf;
uint8* pTxBuf;
//ethFramTCP_structuretr RxFrameBuffer;

App_Eth g_Eth; /**< \brief Demo information */
uint32 __attribute__ ((aligned(64))) memoryDestination[MEMORY_TRANSFER_NUM_WORDS];
uint8 messageType = 10;

int tem = 0;

#if MASTER
const uint8 SRC_myMacAddrTCP_structures[6] = {0xE0, 0xCB, 0x4E, 0xEC, 0xEF, 0x73}; //SA
const uint8 DES_myMacAddrTCP_structures[6] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55}; //DA
#endif

#if SLAVE
extern uint8 SRC_mMAC[6]; //SA
extern uint8 DES_mMAC[6]; //DA
#endif

void setPort_ETH(void)
{
    /* configure Ethermac */

    boolean interruptState = IfxCpu_disableInterrupts();
    const IfxEth_RmiiPins pins = {	&IfxEth_CRSDVA_P11_11_IN,
									&IfxEth_REFCLK_P11_12_IN,
									&IfxEth_RXD0_P11_10_IN,
									&IfxEth_RXD1_P11_9_IN,
									&IfxEth_MDC_P21_0_OUT,
									&IfxEth_MDIO_P21_1_INOUT,
									&IfxEth_TXD0_P11_3_OUT,
									&IfxEth_TXD1_P11_2_OUT,
									&IfxEth_TXEN_P11_6_OUT		};

    //IFX_INTERRUPT(EthISR, 0, ISR_PRIORITY_EtherNet_RX);
    IfxCpu_Irq_installInterruptHandler(EthISR, ISR_PRIORITY_EtherNet_RX);

	volatile Ifx_SRC_SRCR *srcr;

	srcr = &MODULE_SRC.ETH.ETH[0].SR;
	srcr->B.SRPN = ISR_PRIORITY_EtherNet_RX;
	srcr->B.TOS = ISR_PRIORITY_EtherNet_ISR_Provider;
	srcr->B.CLRR = 1;
	srcr->B.SRE = 0;

	IfxEth_Config   config;

	IfxEth_initConfig(&config, &MODULE_ETH);

	config.phyInterfaceMode = IfxEth_PhyInterfaceMode_rmii;
	config.rmiiPins = &pins;
	config.phyInit = &IfxEth_Phy_Pef7071_init;
	config.phyLink = &IfxEth_Phy_Pef7071_link;
	//config.isrPriority = ISR_PRIORITY_EtherNet_RX;
	//config.isrProvider = ISR_PRIORITY_EtherNet_ISR_Provider;

	//config.rxDTCP_structurecr->items[0].RDTCP_structure0.A.
	IfxCpu_restoreInterrupts(interruptState);

	config.rxDescr = &IfxEth_rxDescr;
    config.txDescr = &IfxEth_txDescr;

	IfxEth_init(&g_Eth.drivers.eth, &config);

	/* activate loopback */
	//IfxEth_setLoopbackMode(&g_Eth.drivers.eth, 1);

	/* and enable transmitter/receiver */
	IfxEth_startTransmitter(&g_Eth.drivers.eth);
	IfxEth_startReceiver(&g_Eth.drivers.eth);

}

void setMAC_ETH(uint8* mac)
{
	IfxEth_setMacAddress(&g_Eth.drivers.eth, mac);
}


void setFrame_ETH(uint8 *buf)
{
	uint32      i;

	for (i = 0; i < 6; i++)
	{
		buf[i] = DES_mMAC[i];
	}

	/* SA */
	for (i = 0; i < 6; i++)
	{
		buf[i + 6] = SRC_mMAC[i];
	}

	/* length of payload */
	buf[12] = 10;
	buf[13] = 10;
}

void EthISR(void)
{
	IfxCpu_enableInterrupts();
	/*RECEIVE*/
	if(IfxEth_isRxInterrupt(&g_Eth.drivers.eth) == TRUE)
	{
		IfxEth_clearRxInterrupt(&g_Eth.drivers.eth);

		/* we expect that a packet is available -----------------------------*/
		pRxBuf = (uint8 *)IfxEth_getReceiveBuffer(&g_Eth.drivers.eth);
		IfxEth_freeReceiveBuffer(&g_Eth.drivers.eth);

		ISR_EtherNet_Rx(0, pRxBuf); /* without MAC -----------------------*/
		//printf_UART_SysLog("receive ETH data\r\n");

	}
}

void printf_ETH(uint8 *DTCP_structure_MAC, uint8 *SRC_MAC, uint8* data, int size)
{
	uint32 i;
	pTxBuf = (uint8 *)IfxEth_waitTransmitBuffer(&g_Eth.drivers.eth);

	for (i = 0; i < 6; i++)
	{
		pTxBuf[i]	= DTCP_structure_MAC[i];
		pTxBuf[i+6]	= SRC_MAC[i];
	}
	memcpy((pTxBuf+12),data,size);



    IfxEth_sendTransmitBuffer(&g_Eth.drivers.eth,(size+12));
    IfxEth_clearTxInterrupt(&g_Eth.drivers.eth);
    while (IfxEth_isTxInterrupt(&g_Eth.drivers.eth) == FALSE);
}


/*********************************************************************************************/
/*-----------------------------------Lwip Ethernet Drivers-----------------------------------*/
/*********************************************************************************************/

/*
 * <Cautions>
 * 1. Using Pbuf alloc
 * 	- Receive 	: PBUF_POOL
 * 	- Transmit 	: PBUF_RAM
 *
 */


///////////////////////////////////////////////////////////////////////////
/************** Extracting data from the receive buffer API **************/
///////////////////////////////////////////////////////////////////////////

void extract_desIP_address( struct udp_pcb *upcb, struct pbuf *p)
{

	ethFrameStr RxFrameBuffer;
    memcpy(&RxFrameBuffer, p->payload, p->len);

    memcpy(&(upcb->remote_ip),&(RxFrameBuffer.srcIP[0]),ETH_HEAD_SIZE_4B);

    return ;
}

void extract_desPN_address(struct udp_pcb *upcb, struct pbuf *p)
{

	ethFrameStr RxFrameBuffer;
    memcpy(&RxFrameBuffer, p->payload, p->len);

    upcb->remote_port = (RxFrameBuffer.srcPN[0] << STRUCT_SHIFT_SIZE) | (RxFrameBuffer.srcPN[1] & FULL_MASK_8BIT);

    return ;
}

////////////////////////////////////////////////////////////////////
/************** ARP[Address Resolution Protocol] API **************/
////////////////////////////////////////////////////////////////////

//void ARP_cache(struct pbuf *p)
//{
//	ethFrameStr_ARP RxFrameBuffer_ARP;
//
//	memcpy(&RxFrameBuffer_ARP, p->payload, p->len);
//	ethernet_input(p,&g_Lwip.netif);
//
//	printf_SysLog("ARP has succeed !\r\n\n");
//}

/////////////////////////////////////////////////////////////////
/************** IP[Internet Protcol Protocol] API **************/
/////////////////////////////////////////////////////////////////

void Set_desIPaddr(ip_addr_t *des_ip, uint8 IPaddr_1, uint8 IPaddr_2, uint8 IPaddr_3, uint8 IPaddr_4)
{
	IP4_ADDR(des_ip, IPaddr_1, IPaddr_2, IPaddr_3, IPaddr_4);
}


///////////////////////////////////////////////////////////////
/************** UDP[User Datagram Protocol] API **************/
///////////////////////////////////////////////////////////////

void UDP_Send_to(ip_addr_t *dTCP_structuret_ip, u16_t dTCP_structuret_port, uint8 *data)
{
	struct udp_pcbs *pcb;
	struct pbuf *p;

	// Create a UDP PCB.
	pcb = udp_new();

	// Bind my AddrTCP_structures
	udp_bind(pcb, IP_ADDR_ANY, PN_MY);

	// AllocatTCP_structure a pbuf of the given type (possibly a chain for PBUF_POOL type).
	p = pbuf_alloc(PBUF_TRANSPORT, strlen(data), PBUF_RAM);

	if (p != NULL)
	{
		// Copy application supplied data into a pbuf. This function can only be used to copy the equivalent of buf->tot_len data.
		pbuf_take(p, data, strlen(data));

		// Send data to a specified addrTCP_structures using UDP.
		udp_sendto(pcb, p, dTCP_structuret_ip, dTCP_structuret_port);

		// Dereference a pbuf chain or queue and deallocate any no-longer-used pbufs at the head of this chain or queue.
		pbuf_free(p);
	}

	// Remove an UDP PCB.
	udp_remove(pcb);

	printf_SysLog("UDP packet has sent!\r\n\n");
}

void Converting_UDP_TxPayload(struct pbuf *p)
{
	uint16 UDP_Payload_Length = p->len - (ETH_MAC_HEAD_SIZE + ETH_IP_HEAD_SIZE + ETH_UDP_HEAD_SIZE);

	/* Allocate a buffer to store the received data */
	uint8 recvData[UDP_Payload_Length];
	memset(recvData, 0, UDP_Payload_Length);

	/* Copy (part of) the contents of a packet buffer to an application supplied buffer. */
	pbuf_copy_partial(p, recvData, p->len, (ETH_MAC_HEAD_SIZE + ETH_IP_HEAD_SIZE + ETH_UDP_HEAD_SIZE));

	/* Shrink a pbuf chain to a dTCP_structureired length. */
	pbuf_realloc(p, UDP_Payload_Length);

	/* Copy application supplied data into a pbuf. This function can only be used to copy the equivalent of buf->tot_len data. */
	pbuf_take(p,recvData,UDP_Payload_Length);
}
