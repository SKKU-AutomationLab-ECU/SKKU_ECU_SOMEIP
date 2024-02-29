/*
 * someip.h
 *
 *  Created on: 2024. 2. 28.
 *      Author: Sungbhin Oh
 */

#ifndef SOMEIP_H_
#define SOMEIP_H_

/** Include default header **/
#include <stdio.h>
#include "Ifx_Cfg.h"
#include "Cpu/Std/IfxCpu.h"
#include "Platform_Types.h"
#include "pbuf.h"
#include "g_endian.h"

#include "lwip/opt.h"
#include "lwip/debug.h"
#include "lwip/stats.h"
#include "lwip/udp.h"
#include "Device_IF.h"

#include "Ifx_Lwip.h"

#include "ip_addr.h"
#include "Peripherals_ETH.h"


/******************************************/
/*---------SOME/IP Serialization----------*/
/******************************************/
#define TRUE 1
#define FALSE 0


/******************************************/
/*------------Size Information------------*/
/******************************************/
#define SOMEIP_HEADER_SIZE     16
#define SOMEIP_TOTAL_SIZE      1416
#define SOMEIP_PAYLOAD_SIZE    1400
#define SOMEIP_TP_HEADER_SIZE  4
#define SOMEIP_TP_TOTAL_SIZE   1396
#define SOMEIP_TP_PAYLOAD_SIZE 1392
#define SOMEIP_TP_OFFSET       87

/******************************************/
/*----------SOME/IP Message Type----------*/
/******************************************/
typedef enum
{
    REQUEST                             = 0x00,
    REQUEST_NO_RETURN                   = 0x01,
    NOTIFICATION                        = 0x02,
    RESPONSE                            = 0x80,
    ERROR                               = 0x81,
    TP_REQUEST                          = 0x20,
    TP_REQUEST_NO_RETURN                = 0x21,
    TP_NOTIFICATION                     = 0x22,
    TP_RESPONSE                         = 0xA0,
    TP_ERROR                            = 0xA1
} SOMEIP_Msg_Type;

/******************************************/
/*----------SOME/IP Return code-----------*/
/******************************************/
typedef enum
{
    E_OK                                = 0x00,
    E_NOT_OK                            = 0x01,
    E_UNKNOWN_SERVICE                   = 0x02,
    E_UNKNOWN_METHOD                    = 0x03,
    E_NOT_READY                         = 0x04,
    E_NOT_REACHABLE                     = 0x05,
    E_TIMEOUT                           = 0x06,
    E_WRONG_PROTOCOL_VERSION            = 0x07,
    E_WRONG_INTERFACE_VERSION           = 0x08,
    E_MALFORMED_MESSAGE                 = 0x09,
    E_WRONG_NMESSAGE_TYPE               = 0x0A
} SOMEIP_Return_Code;

/******************************************************************************/
/*----------------------Structure of SOME/IP Message-------------------------*/
/******************************************************************************/
typedef struct
{
    union
    {
        // Total
        uint8 Total[1416];
        // Total Message - Header + Payload
        struct
        {
            // Header
            union
            {
                // Total Header
                uint8 Header[16];
                // SOME/IP header
                struct
                {
                    // Message ID - Service ID
                    uint16 Service_ID;
                    // Message ID - method ID
                    uint16 Method_ID;
                    // Length
                    uint32 Length;
                    // Request ID - Client ID
                    uint16 Client_ID;
                    // Message ID - Session ID
                    uint16 Session_ID;
                    // Protocol Version
                    uint8 Protocol_Version;    // Protocol Version shall be 0x01. (RS_SOMEIP_00027, RS_SOMEIP_00041)
                    // Interface Version
                    uint8 Interface_Version;   // We defined this code's interface version is 0x01.
                    // Message Type
                    uint8 Message_Type;
                    // Return Code
                    uint8 Return_Code;
                } Header_b;
            };
            // Payload
            uint8 Payload[1400];
        } Total_b;
    };
} SOMEIP_Message;

/******************************************************************************/
/*------------------------SOME/IP-Service Discovery---------------------------*/
/******************************************************************************/
#define SD_SERVICE_ID           0xFFFF
#define SD_METHOD_ID            0x8100
#define SD_SESSION_ID           0x0001
#define SD_FLAGS_SIZE           0x0004
#define SD_FLAGS_OFFER          0x80
#define SD_FLAGS_SUBSCRIBE      0x00
#define SD_LENGTH_ARRAY_SIZE    0x0004
#define SD_ENTRY_SIZE           0x0010
#define SD_IPv4_ENDPOINT_SIZE   0x000C
#define SD_IPv4_ENDPOINT_LENGTH 0x0009
#define SD_IPv4_ENDPOINT_TYPE   0x04
#define SD_FLAGS_OFFSET         0x0000
#define SD_LENGTH_OFFSET        0x0004
#define SD_ENTRIES_OFFSET       0x0008

/******************************************/
/*------------SOME/IP-SD Type-------------*/
/******************************************/
typedef enum
{
    SD_TYPE_FIND                    = 0x00,
    SD_TYPE_OFFER                   = 0x01,
    SD_TYPE_REQUEST_SERVICE         = 0x02,
    SD_TYPE_REQUEST_SERVICE_ACK     = 0x03,
    SD_TYPE_FIND_EVENTGROUP         = 0x04,
    SD_TYPE_PUBLISH_EVENTGROUP      = 0x05,
    SD_TYPE_SUBSCRIBE               = 0x06,
    SD_TYPE_SUBSCRIBE_ACK           = 0x07
} SOMEIP_SD_Type;

/******************************************/
/*------------SOME/IP-SD Flag-------------*/
/******************************************/
typedef struct
{
    union
    {
        uint32 Total;
        struct
        {
            uint32 Reserved : 24;
            uint32 Flags : 8;
        } Total_b;
    };
} SOMEIP_SD_Flags;

typedef struct _ServiceEntryStr{
    ///////////////////////////////////////////////////////
    /// SOME/IP Service Discovery Service Entry Section ///
    ///////////////////////////////////////////////////////

    uint8 Type;                                    // SOME/IP Service Discovery Type
    uint8 OptionIdx1st;                            // Entry 1st Option Index in OptionArray
    uint8 OptionIdx2nd;                            // Entry 2nd Option Index in OptionArray
    uint8 OptionNum1st : 4;                        // Number of Entry 1st Options
    uint8 OptionNum2nd : 4;                        // Number of Entry 2nd Options

    uint16 ServiceID;                              // Service Entry Service ID
    uint16 InstanceID;                             // Service Entry Instance ID
    uint8 MajorVer;                                // SOME/IP-SD Major Version (This value must be same the interface version of SOME/IP Header.)
    uint8 TTL[3];                                  // Service Entry Time-to-live
    uint32 MinorVer;                               // SOME/IP-SD Minor Version
} SOMEIP_SD_ServiceEntry;

typedef struct _EventGroupEntryStr{
    //////////////////////////////////////////////////////////
    /// SOME/IP Service Discovery EventGroup Entry Section ///
    //////////////////////////////////////////////////////////

    uint8 Type;                                   // SOME/IP Service Discovery Type
    uint8 OptionIdx1st;                           // Entry 1st Option Index in OptionArray
    uint8 OptionIdx2nd;                           // Entry 2nd Option Index in OptionArray
    uint8 OptionNum1st : 4;                       // Number of Entry 1st Options
    uint8 OptionNum2nd : 4;                       // Number of Entry 2nd Options


    uint16 ServiceID;                              // Service Entry Service ID
    uint16 InstanceID;                             // Service Entry Instance ID
    uint8 MajorVer;                                // SOME/IP-SD Major Version (This value must be same the interface version of SOME/IP Header.)
    uint8 TTL[3];                                  // Service Entry Time-to-live
    uint16 Counter;                                // Bit 0 ~ Bit 11 is reserved
    uint16 EventGroupID;                           // EventGroup ID
} SOMEIP_SD_EventGroupEntry;

typedef struct _IPv4EndpntOptionStr{
    ///////////////////////////////////////////////////////////////
    /// SOME/IP Service Discovery IPv4 Endpoint Option Section ///
    ///////////////////////////////////////////////////////////////
    uint16 Length;                                 // Should be set to 0x0009
    uint8 Type;                                    // Should be set to 0x04
    uint8 Reserved_1;                              // Reserved
    uint32 IPv4Addr;                               // IPv4 address
    uint8 Reserved_2;                              // Reserved
    uint8 L4_Proto;                                // 0x11 = UDP, 0x06 = TCP
    uint16 Port_Number;                            // Port Number
} SOMEIP_SD_IPv4EndpntOption;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
/* SOME/IP Basic Communication */
void SOMEIP_Header_Set(SOMEIP_Message *TxMsg,
                    uint16 Service_ID,
                    uint16 Method_ID,
                    uint32 Payload_Length,
                    uint16 Client_ID,
                    uint16 Session_ID,
                    uint8 Protocol_Version,
                    uint8 Interface_Version,
                    uint8 Message_Type,
                    uint8 Return_Code);
void SOMEIP_Payload_Set(SOMEIP_Message *TxMsg, uint8 * Payload_Msg, uint32 Length);

void TxSOMEIP_Request();
void TxSOMEIP_Response();

/* SOME/IP-SD Communication */
void SOMEIP_SD_Header_Set();
void SOMEIP_SD_Flags_Set();
void SOMEIP_SD_EntryLength_Set();
void SOMEIP_SD_ServiceEntry_Set();
void SOMEIP_SD_EventGroupEntry_Set();
void SOMEIP_SD_OptionLength_Set();
void SOMEIP_SD_IPv4EndptOption_Set();

void TxSOMEIP_SD_Offer();
void TxSOMEIP_SD_Subscribe();
void TxSOMEIP_SD_SubscribeACK();

void TxSOMEIP_SD_Event();

/* SOME/IP Packets Transmission Test */
void TxSOMEIP_Test();

#endif /* SOMEIP_H_ */
