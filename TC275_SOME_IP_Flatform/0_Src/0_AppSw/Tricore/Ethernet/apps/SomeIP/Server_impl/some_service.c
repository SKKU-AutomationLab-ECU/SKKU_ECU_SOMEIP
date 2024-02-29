/*
 * some_service.c
 *
 *  Created on: 2024. 2. 28.
 *      Author: Sungbhin Oh
 */



#include "lwip/opt.h"
#include "lwip/debug.h"
#include "lwip/stats.h"
#include "Device_IF.h"

#include "Ifx_Lwip.h"

#include "Peripherals_ETH.h"
#include "someip.h"
#include "Application.h"

#if SOMEIP_Server_Opt

struct udp_pcb *some_server_pcb;


void someip_service_init(void)
{
    err_t err;

    /* Create a new UDP control block */
    some_server_pcb = udp_new();

    if(some_server_pcb)
    {
        /* Bind the upcb to the UDP_PORT port */
        /* Using IP_ADDR_ANY allow the upcb to be used by any local interface */
        err = udp_bind(some_server_pcb, IP_ADDR_ANY, PN_SD);

        if(err == ERR_OK)
        {
            printf_SysLog("UDP/IP Bind is OK!\r\n");

            /* Set a receive callback for the upcb */
            //udp_recv(upcb, udp_echoserver_receive_callback, NULL);
        }
        else
        {
            udp_remove(some_server_pcb);
        }

        //TODO:static ARP Table 작성하는 코드 따로 구현 필요
        ip_addr_t destination_ip;
        IP4_ADDR(&destination_ip, 192, 168, 0, 10); // Change to your destination IP address
        u16_t destination_port = 30490U;
        eth_addr_t destination_Eth; 
        MAC_ADDR(&destination_Eth, 0x58, 0x86, 0x94, 0xFB, 0xAD, 0x3A); // Change to your destination MAC address

        err = etharp_add_static_entry(&destination_ip, &destination_Eth);
        if(err == ERR_RTE)
        {
	        printf_SysLog("ARP add static entry fail!! \r\n");
        }
        else
        {
	        printf_SysLog("ARP add static entry success!! \r\n");
        }

        //TxSOMEIP_Test(upcb);
    }
}


#endif
