/*
 * someip.c
 *
 *  Created on: 2024. 2. 28.
 *      Author: Sungbhin Oh
 */

#include "someip.h"

void SOMEIP_Header_Set(SOMEIP_Message *TxMsg,
                    uint16 Service_ID,
                    uint16 Method_ID,
                    uint32 Payload_Length,
                    uint16 Client_ID,
                    uint16 Session_ID,
                    uint8 Protocol_Version,
                    uint8 Interface_Version,
                    uint8 Message_Type,
                    uint8 Return_Code)
{
    TxMsg->Total_b.Header_b.Service_ID = (uint16)swap_uint16(Service_ID);
    TxMsg->Total_b.Header_b.Method_ID = (uint16)swap_uint16(Method_ID);
    TxMsg->Total_b.Header_b.Length = swap_uint32(Payload_Length + 8);
    TxMsg->Total_b.Header_b.Client_ID = (uint16)swap_uint16(Client_ID);
    TxMsg->Total_b.Header_b.Session_ID = (uint16)swap_uint16(Session_ID);
    TxMsg->Total_b.Header_b.Protocol_Version = Protocol_Version;
    TxMsg->Total_b.Header_b.Interface_Version = Interface_Version;
    TxMsg->Total_b.Header_b.Message_Type = Message_Type;
    TxMsg->Total_b.Header_b.Return_Code = Return_Code;
}

void SOMEIP_Payload_Set(SOMEIP_Message *TxMsg, uint8 * Payload_Msg, uint32 Length)
{
    int i = 0;
    for(i = 0; i < Length; i++)
    {
        TxMsg->Total_b.Payload[i] = Payload_Msg[i];
    }
}

void TxSOMEIP_Test()
{
    struct udp_pcb *upcb;
    SOMEIP_Message TxMsg;
    err_t err;
    upcb = udp_new();

    if(upcb)
    {
        /* Bind the upcb to the UDP_PORT port */
	    /* Using IP_ADDR_ANY allow the upcb to be used by any local interface */

	    err = udp_bind(upcb, IP_ADDR_ANY, PN_SERVICE_1);

	    if(err == ERR_OK)
	    {
            /* Set a receive callback for the upcb */
		    printf_SysLog("SOME/IP pcb has binded !-,,! \r\n");
	    }
	    else
	    {
		    printf_SysLog("UDP/IP pcb has removed !-,,! \r\n");
	        udp_remove(upcb);
	    }
    }


    SOMEIP_Header_Set(&TxMsg,
                    0x1234,
                    0x5678,
                    0,
                    0x0001,
                    0x0001,
                    0x01,
                    0x01,
                    NOTIFICATION,
                    E_OK);
    //TxMsg.Total_b.Payload = 0;
    struct pbuf *txbuf = pbuf_alloc(PBUF_TRANSPORT, SOMEIP_HEADER_SIZE, PBUF_RAM);
    if(txbuf != NULL)
    {
        udp_connect(upcb, IP_ADDR_BROADCAST, PN_SERVICE_1);
        pbuf_take(txbuf, &TxMsg,16);

        ip_addr_t destination_ip;
        IP4_ADDR(&destination_ip, 192, 168, 0, 10); // Change to your destination IP address
        u16_t destination_port = 30509U;

    	err = udp_sendto(upcb, txbuf, &destination_ip,destination_port);
    	if (err == ERR_OK)
        {
            printf_SysLog("Send SOMEIP Test Message !! \r\n");
        }
    	else
        {
            printf_SysLog("udp_sendto fail!!\r\n");
        }
    	pbuf_free(txbuf);
    }
    else
    {
    	printf_SysLog("Failed to allocate memory for UDP packet buffer.\r\n");
    }

}
