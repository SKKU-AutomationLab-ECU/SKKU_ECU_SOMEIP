/*
 * someip.c
 *
 *  Created on: 2024. 2. 28.
 *      Author: Sungbhin Oh
 */

#include "someip.h"

struct udp_pcb *service_discovery_pcb;

void Service_Discovery_Init(void)
{
	service_discovery_pcb = udp_new();

    if(service_discovery_pcb)
    {
        /* Bind the upcb to the UDP_PORT port */
	    /* Using IP_ADDR_ANY allow the upcb to be used by any local interface */

        err_t err;

	    err = udp_bind(service_discovery_pcb, IP_ADDR_ANY, PN_SD);

	    if(err != ERR_OK)
	    {
		    printf_SysLog("UDP/IP pcb has removed !-,,! \r\n");
	        udp_remove(service_discovery_pcb);
	    }
    }
	else
	{
		/* abort? output diagnostic? */
	}
}

/**
 * @brief Handling an incoming SOME/IP message.
 * Given an incoming SOME/IP message, it checks the port number
 * and passes it to the appropriate Recv function. If the port
 * number does not match, the pbuf is freed.  
 * 
 * @param p pbuf received IP packet
 */
void
SOMEIP_input(struct pbuf *p)
{
    ethFrameStr_SOMEIP RxFrameBuffer;
    u16_t src_portNum,dst_portNum;

    memcpy(&RxFrameBuffer, p->payload, p->len);

    src_portNum = (RxFrameBuffer.srcPN[0] << STRUCT_SHIFT_SIZE) | (RxFrameBuffer.srcPN[1] & FULL_MASK_8BIT);
    dst_portNum = (RxFrameBuffer.dstPN[0] << STRUCT_SHIFT_SIZE) | (RxFrameBuffer.dstPN[1] & FULL_MASK_8BIT);

    /* is SOME/IP packet or SD packet or not ? */
    switch(src_portNum)
    {
        case 30490:
            //printf_SysLog("This is someip-sd packet.\r\n");
            Rx_someip_sd_handle(p);
            pbuf_free(p);
            break;
        case 30509 ... 30520:
            //printf_SysLog("This is someip packet.\r\n");
            pbuf_free(p);
            break;
        default:
            //printf_SysLog("This is not someip nor someip-sd packet.\r\n");
            pbuf_free(p);
            break;
    }
}

/**
 * @brief 
 * 
 * @param p pbuf received IP packet
 */ 
void Rx_someip_handle(struct pbuf *p)
{

}

//TODO:
/**
 * @brief 
 * 
 * @param p pbuf received IP packet
 */
void Rx_someip_sd_handle(struct pbuf *p)
{
    ethFrameStr_SD RxFrameBuffer;
    u32_t EntryLength, OptionLength;
    u8_t _sdtype, _optiontype;
    SOMEIP_SD_ServiceEntry ServiceEntry;
    SOMEIP_SD_EventGroupEntry EventGroupEntry;
    SOMEIP_SD_OptionDefault SDOptionDefault;
    SOMEIP_SD_IPv4EndpntOption IPv4Endpoint;
    ip_addr_t srv_src_ip;
    u16_t srv_src_port;
    u8_t srv_proto;
    int i,j;


    memcpy(&RxFrameBuffer, p->payload, p->len);   
    EntryLength = (RxFrameBuffer.EntryArrayLength[0] << 24) | (RxFrameBuffer.EntryArrayLength[1] << 16) |
                    (RxFrameBuffer.EntryArrayLength[2] << 8) | (RxFrameBuffer.EntryArrayLength[3] & 0xFF);
    OptionLength =(RxFrameBuffer.payload[EntryLength] << 24) | (RxFrameBuffer.payload[EntryLength + 1] << 16) |
                    (RxFrameBuffer.payload[EntryLength + 2] << 8) | (RxFrameBuffer.payload[EntryLength + 3] & 0xFF);

    for(i = 0; i < EntryLength / 16; i++)
    {
        _sdtype = RxFrameBuffer.payload[0 + (EntryLength * i)];
        //printf_SysLog("sd type: %d.\r\n", _sdtype);

        switch(_sdtype)
        {
        	case 0x00: // Find
        		break;
        	case 0x01: // Offer
                memcpy(&ServiceEntry,&RxFrameBuffer.payload,16);
                ServiceEntry.ServiceID = ntohs(ServiceEntry.ServiceID);
                ServiceEntry.InstanceID = ntohs(ServiceEntry.InstanceID);
                ServiceEntry.MinorVer = ntohs(ServiceEntry.MinorVer);

                //TODO:
                for(j = 0; j < ServiceEntry.OptionNum1st; j++)
                {
                    memcpy(&SDOptionDefault,&RxFrameBuffer.payload[4+EntryLength+ServiceEntry.OptionIdx1st],4);
                    _optiontype = SDOptionDefault.Type;
                    //printf_SysLog("option type = %x\r\n", _optiontype);
                    //TODO: Option array type switch
                    if(_optiontype == 0x04) // IPv4 Endpoint 
                    {
                        memcpy(&IPv4Endpoint, &RxFrameBuffer.payload[4+EntryLength+ServiceEntry.OptionIdx1st],OptionLength);
                        //IP4_ADDR(&srv_src_ip, IPv4Endpoint.IPv4Addr[0], IPv4Endpoint.IPv4Addr[1], IPv4Endpoint.IPv4Addr[2], IPv4Endpoint.IPv4Addr[3]);
                        //srv_src_port = IPv4Endpoint.Port_Number;
                        //srv_proto = IPv4Endpoint.L4_Proto;
                        TxSOMEIP_SD_Subscribe(&ServiceEntry,&IPv4Endpoint);
                    }
                }
        		break;
        	case 0x06: // Subscribe
                break;
            case 0x07: // Subscribe ACK
                printf_SysLog("Received SubscribeACK.\r\n");
                break;
        }
    }

    return;
}

/**
 * @brief 
 * 
 * @param TxMsg 
 * @param Service_ID 
 * @param Method_ID 
 * @param Payload_Length 
 * @param Client_ID 
 * @param Session_ID 
 * @param Protocol_Version 
 * @param Interface_Version 
 * @param Message_Type 
 * @param Return_Code 
 */
void
SOMEIP_Header_Set(SOMEIP_Message *TxMsg,
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

/**
 * @brief 
 * 
 * @param TxMsg 
 * @param Payload_Msg 
 * @param Length 
 */
void
SOMEIP_Payload_Set(SOMEIP_Message *TxMsg, uint8 * Payload_Msg, uint32 Length)
{
    int i = 0;
    for(i = 0; i < Length; i++)
    {
        TxMsg->Total_b.Payload[i] = Payload_Msg[i];
    }
}

void
TxSOMEIP_SD_Subscribe(SOMEIP_SD_ServiceEntry *_ServiceEntry, SOMEIP_SD_IPv4EndpntOption *_IPv4EndpointOption)
{
    err_t err;
    static int _sessionID = 0;
    SOMEIP_SD_Message TxMsg;
    SOMEIP_Header _SomeipHeader;
    SOMEIP_SD_EventGroupEntry _EventGroupEntry;
    SOMEIP_SD_IPv4EndpntOption _client_ipOption;

    // EventGroup Entry setting
    _EventGroupEntry.Type = 0x06;
    _EventGroupEntry.OptionIdx1st = 0;
    _EventGroupEntry.OptionIdx2nd = 0;
    _EventGroupEntry.OptionNum2nd = 0;
    _EventGroupEntry.OptionNum1st = 1;
    _EventGroupEntry.ServiceID = (uint16)swap_uint16(_ServiceEntry->ServiceID);
    _EventGroupEntry.InstanceID = (uint16)swap_uint16(_ServiceEntry->InstanceID);
    _EventGroupEntry.MajorVer = 0;
    _EventGroupEntry.TTL[2] = 3;
    _EventGroupEntry.Counter = 0;
    _EventGroupEntry.EventGroupID = (uint16)swap_uint16(0x4465);

    // IPv4 option setting
    _client_ipOption.Length = (uint16)swap_uint16(0x0009);
    _client_ipOption.Type = 0x04;
    _client_ipOption.Reserved_1 = 0;
    _client_ipOption.IPv4Addr[0] = 192;_client_ipOption.IPv4Addr[1] = 168;_client_ipOption.IPv4Addr[2] = 0;_client_ipOption.IPv4Addr[3]=111;
    _client_ipOption.Reserved_2 = 0;
    _client_ipOption.L4_Proto = 0x11; //UDP
    _client_ipOption.Port_Number = (uint16)swap_uint16(30509);

    SOMEIP_Header_Set(&_SomeipHeader,
                    0xffff,
                    0x8100,
                    0x28,
                    0x0000,
                    _sessionID,
                    0x01,
                    0x01,
                    NOTIFICATION,
                    E_OK);
    _sessionID++;
    memcpy(&TxMsg._SOMEIP_Header,&_SomeipHeader, SOMEIP_HEADER_SIZE);
    TxMsg._SD_Flags.Total = swap_uint32(0xc0000000);
    TxMsg._EntryArrayLength = swap_uint32(16);
    memcpy(&TxMsg._SD_EventGroupEntry,&_EventGroupEntry, 16);
    TxMsg._OptionArrayLength = swap_uint32(12);
    memcpy(&TxMsg._IPv4EndpointOption,&_client_ipOption, 12);

    struct pbuf *txbuf = pbuf_alloc(PBUF_TRANSPORT, (uint32)sizeof(TxMsg), PBUF_RAM);
    if(txbuf != NULL)
    {
        udp_connect(service_discovery_pcb, IP_ADDR_BROADCAST, PN_SD);
        //udp_connect(some_server_pcb, IP_ADDR_BROADCAST, PN_SERVICE_1);
        pbuf_take(txbuf, &TxMsg,(uint32)sizeof(TxMsg));
        ip_addr_t destination_ip;
        IP4_ADDR(&destination_ip, _IPv4EndpointOption->IPv4Addr[0], _IPv4EndpointOption->IPv4Addr[1], _IPv4EndpointOption->IPv4Addr[2], _IPv4EndpointOption->IPv4Addr[3]);
    	err = udp_sendto(service_discovery_pcb, txbuf, &destination_ip,30490);
        //err = udp_sendto(some_server_pcb, txbuf, &destination_ip,destination_port);
    	if (err == ERR_OK)
        {
            printf_SysLog("Send Subscribe Message !! \r\n");
        }
    	else
        {
            printf_SysLog("udp_sendto fail -- TxSOMEIP_SD_Subscribe() !!\r\n");
        }
    	udp_disconnect(service_discovery_pcb);

    	pbuf_free(txbuf);
    }
    else
    {
    	printf_SysLog("Failed to allocate memory for UDP packet buffer.\r\n");
    }
}



/**
 * @brief 
 * 
 */
void
TxSOMEIP_Test()
{
    struct udp_pcb *upcb;
    SOMEIP_Message TxMsg;
    uint8 testPayload[4] = {1,2,3,4};
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

    SOMEIP_Payload_Set(&TxMsg, &testPayload, (uint32)sizeof(testPayload));

    SOMEIP_Header_Set(&TxMsg,
                    0x1234,
                    0x5678,
                    (uint32)sizeof(testPayload),
                    0x0001,
                    0x0001,
                    0x01,
                    0x01,
                    NOTIFICATION,
                    E_OK);

    struct pbuf *txbuf = pbuf_alloc(PBUF_TRANSPORT, SOMEIP_HEADER_SIZE + (uint32)sizeof(testPayload), PBUF_RAM);
    if(txbuf != NULL)
    {
        udp_connect(upcb, IP_ADDR_BROADCAST, PN_SERVICE_1);
        //udp_connect(some_server_pcb, IP_ADDR_BROADCAST, PN_SERVICE_1);
        pbuf_take(txbuf, &TxMsg,SOMEIP_HEADER_SIZE + (uint32)sizeof(testPayload));

        ip_addr_t destination_ip;
        IP4_ADDR(&destination_ip, 192, 168, 0, 8); // Change to your destination IP address
        u16_t destination_port = 30509U;

    	err = udp_sendto(upcb, txbuf, &destination_ip,destination_port);
        //err = udp_sendto(some_server_pcb, txbuf, &destination_ip,destination_port);
    	if (err == ERR_OK)
        {
            printf_SysLog("Send SOMEIP Test Message !! \r\n");
        }
    	else
        {
            printf_SysLog("udp_sendto fail!!\r\n");
        }
    	udp_disconnect(upcb);

    	pbuf_free(txbuf);
    }
    else
    {
    	printf_SysLog("Failed to allocate memory for UDP packet buffer.\r\n");
    }

}
