/*
 * Peripherals_CAN.h
 *
 *  Created on: 2018. 8. 14.
 *      Author: JW_Park
 */

#ifndef PERIPHERALS_CAN_H_
#define PERIPHERALS_CAN_H_



#include <Ifx_Types.h>
#include "Configuration.h"
#include <Multican/Can/IfxMultican_Can.h>



#define ASC_TX_BUFFER_SIZE 64
#define ASC_RX_BUFFER_SIZE 64



typedef struct
{
    struct
    {
        IfxMultican_Can        can;          /**< \brief CAN driver handle */
        IfxMultican_Can_Node   canSrcNode;   /**< \brief CAN Source Node */
        IfxMultican_Can_Node   canDstNode;   /**< \brief CAN Destination Node*/
        IfxMultican_Can_MsgObj canDstMsgObj; /**< \brief CAN Destination Message object */
        IfxMultican_Can_MsgObj canSrcMsgObj; /**< \brief CAN Source Message object */
    }drivers;
} pMultiCAN;

typedef struct
{
    struct
    {
        IfxMultican_Can        can;          /**< \brief CAN driver handle */
        IfxMultican_Can_Node   canNode[4];   /**< \brief CAN Source Node */
        IfxMultican_Can_MsgObj canMsgObj[16]; /**< \brief CAN Destination Message object */
    }      drivers;

    uint32 txData[16];
    uint32 rxData[16];
} App_MulticanFd;



IFX_EXTERN pMultiCAN pCAN[4];
IFX_EXTERN App_MulticanFd pMultican;

IFX_EXTERN void Set_CAN_Module(void);
IFX_EXTERN void Set_CAN_Enable(uint8 num_ch, uint8 FD);
IFX_EXTERN void Set_CAN_BitRate(uint8 num_ch, uint32 nom_Baudrate, uint32 fast_Baudrate);
IFX_EXTERN void Set_CAN_BitTiming(	uint8  num_ch,
									uint32 nom_SJW,  uint32 nom_SP,
									uint32 fast_SJW, uint32 fast_SP,
									uint8  _LDO);
IFX_EXTERN void Set_CAN_msgObject(	uint8 num_msgObj, uint8 num_ch, uint32 ID,
									uint8 size_frame, uint8 FD_on);
IFX_EXTERN void Set_CAN_MessageObject(void);
IFX_EXTERN void Set_CAN_MsgObj_0(Ifx_CAN*);
IFX_EXTERN void Set_CAN_MsgObj_1(Ifx_CAN*);
IFX_EXTERN void printf_CAN(uint8 number_MsgObj, uint8 *fmt, ...);
IFX_EXTERN void Set_CAN_Rx( uint8 num_msgObj, uint8 num_ch, uint32 ID_mask, uint32 ID_accept,
							uint8 Frame_extend, uint8 FD_on, void *isrFuncPointer, uint16 priority, uint8 num_core);
IFX_EXTERN uint32 Get_CAN_RxBuffer(uint8 num_MsgObj, uint8 *buffer);
IFX_EXTERN void Isr_MsgObj0_TX_IntHandler(void);
IFX_EXTERN void Isr_MsgObj1_RX_IntHandler(void);


#endif /* PERIPHERALS_CAN_H_ */
