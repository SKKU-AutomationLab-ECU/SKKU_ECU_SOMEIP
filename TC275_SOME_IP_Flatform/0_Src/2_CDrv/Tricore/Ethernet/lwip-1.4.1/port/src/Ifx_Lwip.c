/**
 * \file Ifx_Lwip.c
 * \brief
 *
 * \version V0.1
 * \copyright Copyright (c) 2015 Infineon Technologies AG. All rights reserved.
 *
 *
 *                                 IMPORTANT NOTICE
 *
 *
 * Infineon Technologies AG (Infineon) is supplying this file for use
 * exclusively with Infineon's microcontroller products. This file can be freely
 * distributed within development tools that are supporting such microcontroller
 * products.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include <Cpu/Std/Ifx_Types.h>
#include <Cpu/Std/IfxCpu.h>
#include <Eth/Std/IfxEth.h>
#include "Ifx_Lwip.h"
#include "lwipopts.h"
#include "Ifx_Netif.h"
#include <Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h>
#include "Configuration.h"
#include "CpuX_Main.h"
#include <string.h>
#include <stdarg.h>
#include <Device_IF.h> // kys


/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define IFX_LWIP_TIMER_TICK_MS      (1U)    // number of timer ticks per millisecond

#define IFX_LWIP_ARP_PERIOD         (ARP_TMR_INTERVAL / IFX_LWIP_TIMER_TICK_MS)
#define IFX_LWIP_TCP_FAST_PERIOD    (TCP_FAST_INTERVAL / IFX_LWIP_TIMER_TICK_MS)
#define IFX_LWIP_TCP_SLOW_PERIOD    (TCP_SLOW_INTERVAL / IFX_LWIP_TIMER_TICK_MS)
#define IFX_LWIP_DHCP_COARSE_PERIOD (DHCP_COARSE_TIMER_MSECS / IFX_LWIP_TIMER_TICK_MS)
#define IFX_LWIP_DHCP_FINE_PERIOD   (DHCP_FINE_TIMER_MSECS / IFX_LWIP_TIMER_TICK_MS)
#define IFX_LWIP_LINK_PERIOD        (100U / IFX_LWIP_TIMER_TICK_MS) /* 100 ms */

#define IFX_LWIP_FLAG_ARP           (1U << 1)
#define IFX_LWIP_FLAG_TCP_FAST      (1U << 2)
#define IFX_LWIP_FLAG_TCP_SLOW      (1U << 3)
#define IFX_LWIP_FLAG_LINK          (1U << 4)
#define IFX_LWIP_FLAG_DHCP_COARSE   (1U << 5)
#define IFX_LWIP_FLAG_DHCP_FINE     (1U << 6)

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
#if LWIP_VAR_LOCATION == 0
	#if defined(__GNUC__)
	#pragma section ".bss_cpu0" awc0
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu0"
	#pragma section fardata "data_cpu0"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu0" ".bss_cpu0" far-absolute RW
	#endif
#elif LWIP_VAR_LOCATION == 1
	#if defined(__GNUC__)
	#pragma section ".bss_cpu1" awc1
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu1"
	#pragma section fardata "data_cpu1"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu1" ".bss_cpu1" far-absolute RW
	#endif
#elif LWIP_VAR_LOCATION == 2
	#if defined(__GNUC__)
	#pragma section ".bss_cpu2" awc2
	#endif
	#if defined(__TASKING__)
	#pragma section farbss "bss_cpu2"
	#pragma section fardata "data_cpu2"
	#endif
	#if defined(__DCC__)
	#pragma section DATA ".data_cpu2" ".bss_cpu2" far-absolute RW
	#endif
#else
#error "Set LWIP_VAR_LOCATIONs to a valid value!"
#endif

Ifx_Lwip g_Lwip;
IfxEth   g_IfxEth;
uint32 isrTxCount=0;
uint32 isrRxCount=0;
uint8 channel0TxBuffer1[IFXETH_DESCR_SIZE][IFXGETH_MAX_TX_BUFFER_SIZE];
uint8 channel0RxBuffer1[IFXETH_DESCR_SIZE][IFXGETH_MAX_RX_BUFFER_SIZE];

#if defined(__GNUC__)
#pragma section
#endif
#if defined(__TASKING__)
#pragma section farbss restore
#pragma section fardata restore
#endif
#if defined(__DCC__)
#pragma section DATA RW
#endif

extern App_Cpu0 g_AppCpu0; /* CPU 0 global data, needed for sys_now */
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

#define Ifx_Lwip_timerIncr(var, PERIOD, FLAG) \
    {                                         \
        var += 1;                             \
        if (var >= PERIOD)                    \
        {                                     \
            var         = 0;                  \
            timerFlags |= FLAG;               \
        }                                     \
    }

/** \brief Timer interrupt callback */
void Ifx_Lwip_onTimerTick(void)
{
    Ifx_Lwip *lwip       = &g_Lwip;
    uint16    timerFlags = lwip->timerFlags;

    Ifx_Lwip_timerIncr(lwip->timer.arp, IFX_LWIP_ARP_PERIOD, IFX_LWIP_FLAG_ARP);

    Ifx_Lwip_timerIncr(lwip->timer.tcp_fast, IFX_LWIP_TCP_FAST_PERIOD, IFX_LWIP_FLAG_TCP_FAST);
    Ifx_Lwip_timerIncr(lwip->timer.tcp_slow, IFX_LWIP_TCP_SLOW_PERIOD, IFX_LWIP_FLAG_TCP_SLOW);

#if LWIP_DHCP
    Ifx_Lwip_timerIncr(lwip->timer.dhcp_coarse, IFX_LWIP_DHCP_COARSE_PERIOD, IFX_LWIP_FLAG_DHCP_COARSE);
    Ifx_Lwip_timerIncr(lwip->timer.dhcp_fine, IFX_LWIP_DHCP_FINE_PERIOD, IFX_LWIP_FLAG_DHCP_FINE);
#endif

    Ifx_Lwip_timerIncr(lwip->timer.link, IFX_LWIP_LINK_PERIOD, IFX_LWIP_FLAG_LINK);

    lwip->timerFlags = timerFlags;
}


/** \brief Polling the timer event flags */
void Ifx_Lwip_pollTimerFlags(void)
{
    Ifx_Lwip *lwip = &g_Lwip;
    uint16    timerFlags;

    /* disable interrupts */
    boolean interruptState = IfxCpu_disableInterrupts();

    timerFlags       = lwip->timerFlags;
    lwip->timerFlags = 0;

    /* enable interrupts again */
    IfxCpu_restoreInterrupts(interruptState);

#if LWIP_DHCP
    if (timerFlags & IFX_LWIP_FLAG_DHCP_COARSE)
    {
    	/* only if we have a link we will check the dhcp */
    	if (g_Lwip.netif.flags & NETIF_FLAG_LINK_UP)
    		dhcp_coarse_tmr();
    }

    if (timerFlags & IFX_LWIP_FLAG_DHCP_FINE)
    {
    	/* only if we have a link we will check the dhcp */
    	if (g_Lwip.netif.flags & NETIF_FLAG_LINK_UP)
    		dhcp_fine_tmr();
    }
#endif

    if (timerFlags & IFX_LWIP_FLAG_TCP_FAST)
    {
        tcp_fasttmr();
    }

    if (timerFlags & IFX_LWIP_FLAG_TCP_SLOW)
    {
        tcp_slowtmr();
    }

    if (timerFlags & IFX_LWIP_FLAG_ARP)
    {
    	/* only if we have a link we will check the arp */
    	if (g_Lwip.netif.flags & NETIF_FLAG_LINK_UP)
    		etharp_tmr();
    }

    if (timerFlags & IFX_LWIP_FLAG_LINK)
    {
    	if (!IfxEth_isLinkActive(g_Lwip.netif.state))
    		netif_set_link_down(&g_Lwip.netif);
    	else
    		netif_set_link_up(&g_Lwip.netif);
    }
}


/** \brief Polling the ETH receive event flags */
void Ifx_Lwip_pollReceiveFlags(void)
{
    /**
     * We are assuming that the only interrupt source is an incoming packet
     */
    //while (ethernetif_tc29x_timerFlags_interrupt())
    {
    	// RxPayload 에는 DesMAC 주소 부터 들어있다 ㄷ ㄷ, Rx하는 것은 첨부터 다 들어온다. 하지만 Tx할 때는, only Payload만 담아야 한다.!!! 중요 ㅎ
        ifx_netif_input(&g_Lwip.netif);

    }
}


//________________________________________________________________________________________
// INITIALIZATION FUNCTION

/** \brief LWIP initialization function
 *
 * The followings are executed: */
void Ifx_Lwip_init(eth_addr_t ethAddr)
{
    ip_addr_t default_ipaddr, default_netmask, default_gw;
    IP4_ADDR(&default_gw, 192,168,0,99);
    IP4_ADDR(&default_ipaddr, 192,168,0,111);
    IP4_ADDR(&default_netmask, 255,255,255,0);

    LWIP_DEBUGF(IFX_LWIP_DEBUG, ("Ifx_Lwip_init start!\n"));

    /** - initialise LWIP (lwip_init()) */
    lwip_init();

    /** - initialise and add a \ref netif */
    g_Lwip.eth_addr = ethAddr;
    netif_add(&g_Lwip.netif, &default_ipaddr, &default_netmask, &default_gw,
        (void *)0, ifx_netif_init, ethernet_input);
    netif_set_default(&g_Lwip.netif);
    netif_set_up(&g_Lwip.netif);

#if LWIP_NETIF_HOSTNAME
    g_Lwip.netif.hostname =BOARDNAME;
#endif

#if LWIP_DHCP
    /** - assign \ref dhcp to \ref netif */
    dhcp_set_struct(&g_Lwip.netif, &g_Lwip.dhcp);
    /* we start the dhcp always here also when we don't have a link here */
    dhcp_start(&g_Lwip.netif);
#endif

#if LWIP_NETIF_EXT_STATUS_CALLBACK
    netif_add_ext_callback(&g_extCallback, netif_state_changed);
#endif


    LWIP_DEBUGF(IFX_LWIP_DEBUG, ("Ifx_Lwip_init end!\n"));
}

/** Returns the current time in milliseconds,
 * may be the same as sys_jiffies or at least based on it. */
inline u32_t sys_now(void)
{
	return g_AppCpu0.TickCount_1ms;
}

/**
 * \ingroup interrupts
 *
 * This interrupt is raised by the ethernet. The initialization is done by IfxEth_init().
 *
 * \isrProvider \ref ISR_PROVIDER_ETH
 * \isrPriority \ref ISR_PRIORITY_ETH
 *
 */
IFX_INTERRUPT(ISR_Eth, ISR_PROVIDER_ETHERNET, ISR_PRIORITY_ETHERNET);
void ISR_Eth(void)
{
    IfxEth *eth = IfxEth_get();
/*    IfxSrc_clearRequest(&SRC_ETH);*/

    if (IfxEth_isTxInterrupt(eth) != FALSE)
    {
        IfxEth_clearTxInterrupt(eth);
        eth->isrTxCount++;
    }

    if (IfxEth_isRxInterrupt(eth) != FALSE)
    {
        IfxEth_clearRxInterrupt(eth);
        eth->isrRxCount++;
    }

    eth->txDiff = eth->txCount - eth->isrTxCount;
    eth->rxDiff = eth->rxCount - eth->isrRxCount;
    eth->isrCount = eth->isrCount + 1;

}

//________________________________________________________________________________________
// DEBUGGING FUNCTIONS

#include "Configuration.h"
#include <stdio.h>
#include <string.h>

#define MAXCHARS 256

s8_t Ifx_Lwip_printf(const char *format, ...)
{
#ifdef __LWIP_DEBUG__
    char    str[MAXCHARS + 4];
    s8_t    result = ERR_CONN;

    va_list args;
    va_start(args, format);
    vsnprintf(str, MAXCHARS, format, args);
    va_end(args);
    {
    	printf_SysLog(str);
		printf_SysLog("\r\n");
    }
#endif
    return result;
}
