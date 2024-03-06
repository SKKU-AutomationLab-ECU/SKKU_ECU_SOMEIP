/*
 * some_client.c
 *
 *  Created on: 2024. 2. 29.
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

#if SOMEIP_Client_Opt

struct udp_pcb *some_client_pcb;

void someip_offer_callback(void *arg, struct udp_pcb *upcb, struct pbuf *p, const ip_addr_t *addr, u16_t port)
{
    err_t err;
    SOMEIP_Message TxMsg;
    uint8 testPayload[40] = {0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x10,
                            0x06,0x00,0x00,0x10,0x12,0x34,0x56,0x78,
                            0x00,0x00,0x00,0x03,0x00,0x00,0x00,0x00,
                            0x00,0x00,0x00,0x0c,0x00,0x09,0x04,0x00,
                            0xc0,0xa8,0x00,0x08,0x00,0x11,0x77,0x2d};

    udp_connect(upcb,addr, port);
    struct pbuf *txbuf = pbuf_alloc(PBUF_TRANSPORT, SOMEIP_HEADER_SIZE + (uint32)sizeof(testPayload), PBUF_RAM);
    // if(p != NULL)
    // {
    //     extract_desIP_address(upcb, p);
    //     extract_desPN_address(upcb, p);
    //     printf_SysLog("Received Callback message !!\r\n");
    // }
    
    SOMEIP_Payload_Set(&TxMsg, &testPayload, (uint32)sizeof(testPayload));

    SOMEIP_Header_Set(&TxMsg,
                    0xffff,
                    0x8100,
                    (uint32)sizeof(testPayload),
                    0x0000,
                    0x0001,
                    0x01,
                    0x01,
                    NOTIFICATION,
                    E_OK);
    if(txbuf != NULL)
    {
        pbuf_take(txbuf, &TxMsg,SOMEIP_HEADER_SIZE + (uint32)sizeof(testPayload));
        ip_addr_t destination_ip;
        IP4_ADDR(&destination_ip, 192, 168, 0, 8); // Change to your destination IP address
        u16_t destination_port = 30490U;

        err = udp_sendto(upcb, txbuf, &destination_ip,destination_port);

        udp_disconnect(upcb);

        pbuf_free(txbuf);
        pbuf_free(p);

        udp_remove(upcb);
    }


}

void someip_client_handle (struct pbuf *rec_pbuf)
{
    struct udp_pcb *upcb;
    err_t err;

    upcb = udp_new();

    if(upcb)
    {
        err = udp_bind(upcb, IP_ADDR_ANY, PN_SD);

        if(err == ERR_OK)
        {
            someip_offer_callback(NULL,upcb,rec_pbuf,&(upcb->local_ip), upcb->local_port);
        }
    }
    else
    {
        printf_SysLog("SOME/IP pcb has removed -- in someip_client_handle \r\n");
        udp_remove(upcb);
    }
}

#endif
