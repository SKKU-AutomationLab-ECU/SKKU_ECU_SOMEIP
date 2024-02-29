/*
 * udp_echo.c
 *
 *  Created on: 2024. 2. 29.
 *      Author: Sungbhin Oh
 */

#include "lwip/opt.h"
#include "lwip/debug.h"
#include "lwip/stats.h"
#include "lwip/udp.h"
#include "Device_IF.h"

#include "Ifx_Lwip.h"

#include "ip_addr.h"
#include "Peripherals_ETH.h"

#include "someip.h"

void udp_echoserver_receive_callback(void *arg, struct udp_pcb *upcb, struct pbuf *p, const ip_addr_t *addr, u16_t port)
{
	err_t err;

	/* Connect to the remote client */
	udp_connect(upcb, addr, port);

	if (p != NULL)
	{
		/* Extract desIP, desPN */
		extract_desIP_address(upcb, p);
		extract_desPN_address(upcb, p);

		/* Converting RxPayload to TxPayload */
		Converting_UDP_TxPayload(p);

		/* Print the received message */
		printf_SysLog("Received Callback message !!\r\n");
	}

	/* Tell the client that we have accepted it */
	//udp_sendto(upcb, p, &destination_ip, destination_port);
	udp_send(upcb,p);

	/* free the UDP connection, so we can accept new clients */
	udp_disconnect(upcb);

	/* Free the p buffer */
	pbuf_free(p);

	/* Remove the UDP pcb */
	udp_remove(upcb);
}

void udp_echo_init(void)
{
  struct udp_pcb *upcb;
  err_t err;

  /* Create a new UDP control block  */
  upcb = udp_new();

  if (upcb)
  {
    /* Bind the upcb to the UDP_PORT port */
    /* Using IP_ADDR_ANY allow the upcb to be used by any local interface */
     err = udp_bind(upcb, IP_ADDR_ANY, PN_MY);

     if(err == ERR_OK)
     {
       printf_SysLog("UDP/IP Bind is OK!\r\n");

       /* Set a receive callback for the upcb */
       udp_recv(upcb, udp_echoserver_receive_callback, NULL);

     }
     else
     {
       udp_remove(upcb);
     }
  }
  /* 占쏙옙占쏙옙占� 占쏙옙퓨占쏙옙 IP, MAC 占쏙옙占쏙옙占쏙옙占쏙옙 ARP Table占쏙옙 占쌉뤄옙 */
  ip_addr_t server_ip;
  IP4_ADDR(&server_ip, 192,168, 0, 10);

  eth_addr_t server_Eth;
  MAC_ADDR(&server_Eth, 0x58, 0x86, 0x94, 0xFB, 0xAD, 0x3A);

  err = etharp_add_static_entry(&server_ip, &server_Eth);

  if(err == ERR_RTE)
  {
	  printf_SysLog("ARP add static entry fail!! \r\n");
  }
  else
  {
	  printf_SysLog("ARP add static entry success!! \r\n");
  }
}

void udp_echo(struct pbuf *rec_pbuf)
{
  struct udp_pcb *upcb;
  err_t err;

  /* Create a new UDP control block  */
  upcb = udp_new();

  if (upcb)
  {

	  /* Bind the upcb to the UDP_PORT port */
	  /* Using IP_ADDR_ANY allow the upcb to be used by any local interface */

	  err = udp_bind(upcb, IP_ADDR_ANY, PN_SERVICE_1);

	  if(err == ERR_OK)
	  {

		  /* Set a receive callback for the upcb */
		  udp_echoserver_receive_callback(NULL,upcb,rec_pbuf, &(upcb->local_ip), upcb->local_port); // 占쏙옙占쏙옙 , 2024-02-01, 22:54
		  //udp_recv(upcb, udp_echoserver_receive_callback, NULL);
	  }
	  else
	  {
		  printf_SysLog("UDP/IP pcb has removed !-,,! \r\n");
		  udp_remove(upcb);
	  }
  }
}
