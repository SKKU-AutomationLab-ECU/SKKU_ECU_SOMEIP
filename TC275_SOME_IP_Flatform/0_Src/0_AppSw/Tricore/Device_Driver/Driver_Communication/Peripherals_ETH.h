/*
 * Peripherals_ETH.h
 *
 *  Created on: 2018. 8. 11.
<<<<<<< HEAD
 *      Author: HW_JIN 0966
=======
 *      Author: HW_Jin
>>>>>>> branch 'master' of https://github.com/pjw9307/EvaluationToolkit-AURIX-TriCore-TC275.git

=======
 *      Revised: JH_Kim (2024. 1. 17.)
=======
 *      Revised: SJ_Lim (2024. 2. 4.)
 */

#ifndef PERIPHERALS_ETH_H_
#define PERIPHERALS_ETH_H_


#include <Ifx_Types.h>
#include "Configuration.h"
#include "Cpu/Std/IfxCpu.h"

#include <Eth/Phy_Pef7071/IfxEth_Phy_Pef7071.h>

#include "System_ISR_Priority.h"

#include "lwip/udp.h"
#include "lwip/pbuf.h"


/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

#define HEADER_SIZE 14
#define MASTER	 0
#define SLAVE	 1
//#define MEMORY_TRANSFER_NUM_WORDS 1024
#define ETH_pre	2
static Ifx_P * const portLED = (Ifx_P *)&MODULE_P33;
extern int tem;
//static Ifx_STM * const stm = (Ifx_STM *)&MODULE_STM0;

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/** \brief Asc information */
typedef struct
{
    struct
    {
        IfxEth eth;                      /**< \brief ETH interface */
    }drivers;
} App_Eth;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

IFX_EXTERN App_Eth g_Eth;
extern uint8 messageType;
extern uint8* pRxBuf;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

void setPort_ETH(void);
void setFrame_ETH(uint8 *buf);
void EthISR(void);
IFX_EXTERN void setMAC_ETH(uint8* mac);
IFX_EXTERN void printf_ETH(uint8 *SRC_MAC, uint8 *DES_MAC, uint8* data, int size);

/************** Extracting data from the receive buffer API **************/
void extract_desIP_address(struct udp_pcb *upcb, struct pbuf *p);
void extract_desPN_address(struct udp_pcb *upcb, struct pbuf *p);
/************** ARP[Address Resolution Protocol] API **************/
//void ARP_cache(struct pbuf *p);
/************** IP[Internet Protcol Protocol] API **************/
void Set_desIPaddr(ip_addr_t *dest_ip, uint8 IPaddr_1, uint8 IPaddr_2, uint8 IPaddr_3, uint8 IPaddr_4);
/************** UDP[User Datagram Protocol] API **************/
void Converting_UDP_TxPayload(struct pbuf *p);
void UDP_Send_to(ip_addr_t *dest_ip, u16_t dest_port, uint8 *data);
//////////////////////// USER DEFINITION AREA (Ethernet Parameters) ////////////////////////

////////// Programmable Mode Setting //////////

#define ETH_VLAN_MODE                   FALSE
#define ETH_IP_OPTIONAL                 FALSE

#define ETH_UDP_NoOption_MODE			FALSE

#define ETH_TCP_MODE                    TRUE
#define ETH_TCP_OPTIONAL                FALSE

#define ETH_DoIP_MODE                 	FALSE

#define ETH_SOMEIP_MODE                 FALSE
#define ETH_SOMEIP_SD_MODE              FALSE
#define ETH_SOMEIP_OPTIONAL             FALSE

///////////////////////////////////////////////

#define PTP_EXAMPLE_CURRENT_UTC_OFFSET  37

#define ETH_MTU_SIZE                    1500                    // Ethernet II Frame Maximum Transmission Unit Size

#define ETH_IP_HEAD_SIZE                20                      // Initial Setting (No use IP Header Options)
#define ETH_TCP_HEAD_SIZE               20                      // Initial Setting (No use TCP Header Options)
#define ETH_UDP_HEAD_SIZE               8                       // Fixed Size      (UDP don't have options)
#define ETH_SOMEIP_HEAD_SIZE            16                      // Initial Setting (No use ECE Protection Options)
#define ETH_SD_HEAD_SIZE                8                       // Initial Setting (Only between Flags and EntryArray Length)
#define ETH_SD_OPTION_HEAD_SIZE         4
#define ETH_DoIP_HEAD_SIZE              8                       // Initial Setting (No Additional Options)

#define ETH_DSCP_INIT                   0b000000                // Ethernet IP DSCP Initial Setting
#define ETH_ECN_INIT                    0b00                    // Ethernet IP ECN Initial Setting
#define ETH_IP_GID                      0x0001                  // Ethernet IP Group ID Setting
#define ETH_TTL_INIT                    0x40                    // Ethernet IP Time-to-live Initial Setting (64 hop counts)

// Please check this site: "https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers"
#define	PN_MY  							30400U
#define PN_DoIP                         13400U                  // Ethernet Port Number: DoIP (13400, fixed value)
#define PN_SD		                    30490U                  // Ethernet Port Number: SOME/IP-SD (Fixed value)
#define PN_SERVICE_1					30509U                  // Ethernet Port Number: SOME/IP_service (User Definable)

#define ETH_SOMEIP_PROT_VER             0x01                    // Ethernet SOME/IP Protocol Version
#define ETH_SOMEIP_IFACE_VER            0x01                    // Ethernet SOME/IP Service Interface Version

////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////// Static Constant AREA (Ethernet Parameters) ////////////////////////

#define STRUCT_SHIFT_SIZE               8
#define FULL_MASK_8BIT                  0xFF
#define FULL_MASK_16BIT                 0xFFFF
#define FULL_MASK_24BIT                 0xFFFFFF
#define FULL_MASK_32BIT                 0xFFFFFFFF

#define ETH_HEAD_SIZE_1B                1
#define ETH_HEAD_SIZE_2B                2
#define ETH_HEAD_SIZE_3B                3
#define ETH_HEAD_SIZE_4B                4
#define ETH_HEAD_SIZE_6B                6
#define ETH_HEAD_SIZE_8B                8

#define ETH_TYPE_SIZE                   2
#define ETH_MAC_ADDR_SIZE               6

#if ETH_VLAN_MODE                       // If we use VLAN Security Mode in the data-link layer, this area is enabled.
#define VLAN_PRI                        0b001                   // [15:13] VLAN Priority Code Point (3-bit)
#define VLAN_DEI                        0b1                     // [12:12] VLAN Drop Eligible Indicator (1-bit)
#define VLAN_ID                         0b000000110000          // [11: 0] VLAN Identifier (12-bit)

#define ETH_VLAN_TYPE                   0x8100

#define ETH_MAC_HEAD_SIZE               (ETH_MAC_ADDR_SIZE * 2 + ETH_TYPE_SIZE * 3)
#else
#define ETH_MAC_HEAD_SIZE               (ETH_MAC_ADDR_SIZE * 2 + ETH_TYPE_SIZE)
#endif

#define ETH_PS_HEAD_SIZE                12                      // TCP/UDP Pseudo Header Size

#define ETH_IPv4_TYPE                   0x0800

#define ETH_IPV_IPv4                    0b0100
#define ETH_IPV_IPv6                    0b0110

#define ETH_IHL_5                       0b0101
#define ETH_IHL_6                       0b0110
#define ETH_IHL_7                       0b0111
#define ETH_IHL_8                       0b1000

#define ETH_NonFrag                     0x40
#define ETH_MulFrag                     0x20
#define ETH_FragOffset                  0x0000

#define ETH_ICMP_PROT                   0x01
#define ETH_IGMP_PROT                   0x02
#define ETH_TCP_PROT                    0x06
#define ETH_UDP_PROT                    0x11

#define ETH_IP_CHECKSUM_PTR             5
#define ETH_TCP_CHECKSUM_PTR            8
#define ETH_UDP_CHECKSUM_PTR            3
#define CHECKSUM_DIV                    65536

#define Init_SeqNum                     0

//#define ETH_Offset_5                    0b0101
//#define ETH_Offset_6                    0b0110
//#define ETH_Offset_7                    0b0111
//#define ETH_Offset_8                    0b1000
//#define ETH_Offset_9                    0b1001
//#define ETH_Offset_A                    0b1010
//#define ETH_Offset_B                    0b1011
//#define ETH_Offset_C                    0b1100
//#define ETH_Offset_D                    0b1101
//#define ETH_Offset_E                    0b1110
//#define ETH_Offset_F                    0b1111

//#define ETH_CWR_MASK                    0b10000000
//#define ETH_ECE_MASK                    0b01000000
//#define ETH_URG_MASK                    0b00100000
//#define ETH_ACK_MASK                    0b00010000
//#define ETH_PSH_MASK                    0b00001000
//#define ETH_RST_MASK                    0b00000100
//#define ETH_SYN_MASK                    0b00000010
//#define ETH_FIN_MASK                    0b00000001
//
//#define SOMEIP_REQUEST                  0x00
//#define SOMEIP_NO_RETURN                0x01
//#define SOMEIP_NOTIFICATION             0x02
//#define SOMEIP_RESPONSE                 0x80
//#define SOMEIP_ERROR                    0x81
//#define SOMEIP_TP_REQUEST               0x20
//#define SOMEIP_TP_NO_RETURN             0x21
//#define SOMEIP_TP_NOTIFICATION          0x22
//#define SOMEIP_TP_RESPONSE              0xA0
//#define SOMEIP_TP_ERROR                 0xA1
//
//#define RCODE_E_OK                      0x00
//#define RCODE_E_NOT_OK                  0x01
//#define RCODE_E_UNKNOWN_SERVICE         0x02
//#define RCODE_E_UNKNOWN_METHOD          0x03
//#define RCODE_E_NOT_READY               0x04
//#define RCODE_E_NOT_REACHABLE           0x05
//#define RCODE_E_TIMEOUT                 0x06
//#define RCODE_E_WRONG_PROTOCOL_VERSION  0x07
//#define RCODE_E_WRONG_INTERFACE_VERSION 0x08
//#define RCODE_E_MALFORMET_MESSAGE       0x09
//#define RCODE_E_WRONG_MESSAGE_TYPE      0x0A
//#define RCODE_E_E2E_REPEATED            0x0B
//#define RCODE_E_E2E_WRONG_SEQUENCE      0x0C
//#define RCODE_E_E2E                     0x0D
//#define RCODE_E_E2E_NOT_AVAILABLE       0x0E
//#define RCODE_E_E2E_NO_NEW_DATA         0x0F
//#define RCODE_RESERVED                  0x10

////////////////////////////////////////////////////////////////////////////////////////////

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

typedef enum _eth_checksum{
    correct_checksum = 0,
    wrong_checksum
} eth_checksum;

typedef enum _SessionMode{
    SOMEIP = 0,
    SOMEIP_SD,
    DoIP
} SessionMode;

typedef struct _pseudo_header {
    uint8                 srcIP[ETH_HEAD_SIZE_4B];
    uint8                 dstIP[ETH_HEAD_SIZE_4B];
    uint8                 Reserved;
    uint8                 Protocol;
    uint8                 TotalLen[ETH_HEAD_SIZE_2B];
} pHead;

typedef struct _ethFrameStr{

    ///////////////////////////////////////////////////////////////////
    /** Support Data-link Layer (OSI-2nd-Layer) (Ethernet II Frame) **/
    ///////////////////////////////////////////////////////////////////

    uint8                 dstMAC[ETH_HEAD_SIZE_6B];   // Destination MAC Address (6bytes)
    uint8                 srcMAC[ETH_HEAD_SIZE_6B];   // Source MAC Address (6bytes)

#if ETH_VLAN_MODE           // If we use VLAN Security Mode in the data-link layer, this area is enabled.
    uint8                 VLANType[ETH_HEAD_SIZE_2B]; // VLAN Type: 0x8100 (2bytes)

    uint8                 IDH : 4;                    // VLAN Tag ID High
    uint8                 DEI : 1;                    // VLAN Tag DEI
    uint8                 PRI : 3;                    // VLAN Tag Priority
    uint8                 IDL : 8;                    // VLAN Tag ID Low
#endif

    uint8                 ethType[ETH_HEAD_SIZE_2B];  // EtherType (2bytes)

    ///////////////////////////////////////////////////////////////////////////
    /** Support Network Layer (OSI-3rd-Layer) (Internet Protocol Version 4) **/
    ///////////////////////////////////////////////////////////////////////////

    uint8                 IHL : 4;                    // Internet Protocol Header Length (Unit: Word)
    uint8                 IPV : 4;                    // Internet Protocol Version (4 or 6)
    uint8                 ECN : 2;                    // Explicit Congestion Notification
    uint8                 DSCP : 6;                   // Differentiated Services Code Point

    uint8                 TotalLen[ETH_HEAD_SIZE_2B]; // Total Packet Size (Unit: Byte)
    uint8                 GroupID[ETH_HEAD_SIZE_2B];  // Fragmentation Group Identification
    uint8                 fragInfo[ETH_HEAD_SIZE_2B]; // Flags and Fragment Offset
    uint8                 TTL;                        // Time-to-Live of Packet (Prevent routing-loop)
    uint8                 Protocol;                   // Upper Layer Protocol Type (Example: ICMP[0x01] / IGMP[0x02] / TCP[0x06] / UDP[0x11])
    uint8                 ICS[ETH_HEAD_SIZE_2B];      // IP Header Checksum Value

    uint8                 srcIP[ETH_HEAD_SIZE_4B];    // Source IP Address (4bytes)
    uint8                 dstIP[ETH_HEAD_SIZE_4B];    // Destination IP Address (4bytes)

#if ETH_IP_OPTIONAL
    uint8                 ipOptions;                  // IP Header Options (if IHL > 5)
#endif

    ///////////////////////////////////////////////////////////
    /** Support Transport Layer (OSI-4th-Layer) (TCP / UDP) **/
    ///////////////////////////////////////////////////////////

#if ETH_TCP_MODE            // If we use TCP protocol in the transport layer, this area is enabled.
    //////////////////////////////////////////////////
    /// TCP[Transmission Control Protocol] Section ///
    //////////////////////////////////////////////////

    uint8                 srcPN[ETH_HEAD_SIZE_2B];        // TCP Source Port Number (= Sender's Application Service Number)               (2bytes)
    uint8                 dstPN[ETH_HEAD_SIZE_2B];        // TCP Destination Port Number (= Receiver's Application Service Number)        (2bytes)
    uint8                 SeqNum[ETH_HEAD_SIZE_4B];       // TCP Segment Sequence Number                                                  (4bytes)
    uint8                 AckNum[ETH_HEAD_SIZE_4B];       // TCP Acknowledgment Number                                                    (4bytes)

    uint8                 Reserved : 4;                   // TCP Header Reserved Area to use future                                       (4bits)
    uint8                 Offset : 4;                     // TCP Header Size (Initial: 5 Words, Maximum: 15 Words)                        (4bits)

    /* TCP Header Flag Area (Total 8bits) */
    uint8                 FIN : 1;                        // TCP Flag: Finish Number                                                      (1bit)
    uint8                 SYN : 1;                        // TCP Flag: Synchronize Sequence Number                                        (1bit)
    uint8                 RST : 1;                        // TCP Flag: Reset the Connection                                               (1bit)
    uint8                 PSH : 1;                        // TCP Flag: Push Function Setting                                              (1bit)
    uint8                 ACK : 1;                        // TCP Flag: Acknowledgment Setting Field                                       (1bit)
    uint8                 URG : 1;                        // TCP Flag: Urgent Data Area Enable Setting Field                              (1bit)
    uint8                 ECE : 1;                        // TCP Flag: ECN-Echo (Network Congestion Option)                               (1bit)
    uint8                 CWR : 1;                        // TCP Flag: Congestion Window Reduced Field                                    (1bit)

    uint8                 WindowSize[ETH_HEAD_SIZE_2B];   // TCP Window Maximum Size (General: 65,535 Bytes)                              (2bytes)
    uint8                 TCS[ETH_HEAD_SIZE_2B];          // TCP Header, Payload, and IP Pseudo-Header Checksum Value                     (2bytes)

    uint8                 UrgentPtr[ETH_HEAD_SIZE_2B];    // TCP Urgent Data Area Pointer(Last Offset)                                    (2bytes)

    //uint8                 payload[ETH_MTU_SIZE - ETH_IP_HEAD_SIZE - ETH_TCP_HEAD_SIZE];                                                // (1460bytes)

#if ETH_TCP_OPTIONAL
    uint8                 tcpOptions;                     // TCP Header Options (if Offset > 5)
#endif

#else                       // Else if we use UDP protocol in the transport layer, this area is enabled.
    ///////////////////////////////////////////
    /// UDP[User Datagram Protocol] Section ///
    ///////////////////////////////////////////

    uint8                 srcPN[ETH_HEAD_SIZE_2B];        // UDP Source Port Number (= Sender's Application Service Number)               (2bytes)
    uint8                 dstPN[ETH_HEAD_SIZE_2B];        // UDP Destination Port Number (= Receiver's Application Service Number)        (2bytes)

    uint8                 UDPLen[ETH_HEAD_SIZE_2B];       // "UDP Header + UDP Data Stream" Total Size                                    (2bytes)
    uint8                 UCS[ETH_HEAD_SIZE_2B];          // UDP Header, Payload Checksum Value (Optional in IPv4)                        (2bytes)
#endif
    /////////////////////////////////////////////////////////////
    /** Support Session Layer (OSI-5th-Layer) (SOMEIP / DoIP) **/
    /////////////////////////////////////////////////////////////

#if ETH_SOMEIP_MODE
    /////////////////////////////////////////////////////////////////////
    /// SOME/IP[Scalable service-Oriented MiddlewarE over IP] Section ///
    /////////////////////////////////////////////////////////////////////

    uint8                 serviceID[ETH_HEAD_SIZE_2B];    // SOME/IP Service ID (distinguish up to 2^16 services)
    uint8                 methodID[ETH_HEAD_SIZE_2B];     // SOME/IP Method ID (distinguish up to 2^16 service elements)

    uint8                 length[ETH_HEAD_SIZE_4B];       // SOME/IP Length covered from Request/Client ID until the end of the SOME/IP message

    uint8                 clientPref;                     // SOME/IP Configurable Client Prefix
    uint8                 clientID;                       // SOME/IP Unique Client Identifier
    uint8                 sessionID[ETH_HEAD_SIZE_2B];    // SOME/IP Unique Sequential Message Identifier

    uint8                 someipVer;                      // SOME/IP Header Format Version (Not Upper Layer Protocol Version)
    uint8                 ifaceVer;                       // SOME/IP Service Interface Version
    uint8                 msgType;                        // SOME/IP Message Type
    uint8                 returncode;                     // SOME/IP Response Return Code

#if ETH_SOMEIP_SD_MODE
    ///////////////////////////////////////////////////////////////////////////////
    /// SOME/IP[Scalable service-Oriented MiddlewarE over IP] Service Discovery ///
    ///////////////////////////////////////////////////////////////////////////////

    /* SOME/IP Service Discovery Flags (Reboot Flag / Unicast Flag) */
    uint8                             : 6;                        // SD Flag Reserved Area
    uint8                 UnicastFlag : 1;
    uint8                 RebootFlag  : 1;

    uint8                 SDReserved[ETH_HEAD_SIZE_3B];           // SOME/IP Service Discovery Reserved Area (24bits)
    uint8                 EntryArrayLength[ETH_HEAD_SIZE_4B];     // SOME/IP Service Discovery Entries Array Length (Unit: Byte)
#endif

#if ETH_SOMEIP_OPTIONAL
    uint8                 E2Eheader;
#endif
#endif

#if ETH_DoIP_MODE
    ///////////////////////////////////////////////////////
    /// DoIP[Diagnostic over Internet Protocol] Section ///
    ///////////////////////////////////////////////////////

    uint8                 doipVer;                        // DoIP Header Format Version (Not Upper Layer Protocol Version)
    uint8                 inverseVer;                     // DoIP Inverse Header Format Version

    uint8                 payloadType[ETH_HEAD_SIZE_2B];  // DoIP Payload (Application Message) Type
    uint8                 payloadLen[ETH_HEAD_SIZE_4B];   // DoIP Payload Message Length (based UDS Protocol)
#endif

#if ETH_SOMEIP_MODE
    uint8                 payload[ETH_MTU_SIZE - ETH_IP_HEAD_SIZE - ETH_UDP_HEAD_SIZE - ETH_SOMEIP_HEAD_SIZE]; // Total 1,456bytes

#elif ETH_UDP_NoOption_MODE
    uint8                 payload[ETH_MTU_SIZE - ETH_IP_HEAD_SIZE - ETH_UDP_HEAD_SIZE]; // Total 1,452bytes
#else
    uint8                 payload[ETH_MTU_SIZE - ETH_IP_HEAD_SIZE - ETH_TCP_HEAD_SIZE]; // Total 1,452bytes
#endif
} ethFrameStr;

typedef struct _ethFrameStr_ARP{

    ///////////////////////////////////////////////////////////////////
    /** Support Data-link Layer (OSI-2nd-Layer) (Ethernet II Frame) **/
    ///////////////////////////////////////////////////////////////////

    uint8                 dstMAC[ETH_HEAD_SIZE_6B];   		// Destination MAC Address (6bytes)
    uint8                 srcMAC[ETH_HEAD_SIZE_6B];   		// Source MAC Address (6bytes)
    uint8                 ethType[ETH_HEAD_SIZE_2B];  		// EtherType (2bytes)

    /////////////////////////////////////////////////
    /** Support ARP [Address Resolution Protocol] **/
    /////////////////////////////////////////////////

    uint8                 hwType[ETH_HEAD_SIZE_2B];	  		// Hardware Type (2bytes)
    uint8                 ptType[ETH_HEAD_SIZE_2B];   		// Protocol Type (2bytes)
    uint8                 hwSize;                     		// Hardware Size (fixed : 6)
    uint8                 ptSize;                     		// Hardware Size (fixed : 4)

    uint8                 arp_Operation[ETH_HEAD_SIZE_2B];	// ARP Operation (Example: ARP Request[0x01], ARP Reply[0x02])

    uint8                 senderMAC[ETH_HEAD_SIZE_6B];		// Sender MAC Address (6bytes)
    uint8                 senderIP[ETH_HEAD_SIZE_4B];    	// Sender IP Address (4bytes)
    uint8                 targetMAC[ETH_HEAD_SIZE_6B];   	// Target MAC Address (6bytes)
    uint8                 targetIP[ETH_HEAD_SIZE_4B];    	// Target IP Address (4bytes)

} ethFrameStr_ARP;


#endif /* PERIPHERALS_ETH_H_ */
