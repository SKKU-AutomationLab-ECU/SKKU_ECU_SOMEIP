/*
 * Peripherals_CAN.c
 *
 *  Created on: 2018. 8. 14.
 *      Author: JW_Park
 */



/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "IfxCan_reg.h"
#include "IfxSrc_reg.h"
#include <stdarg.h>
#include <stdio.h>
#include "Peripherals_CAN.h"
#include "Peripherals_ETH.h"
#include "Event_Trigger.h"




/* MultiCAN ------------------------------------------------------------------*/
pMultiCAN pCAN[4];
App_MulticanFd pMultican; /**< \brief Demo information */

/* Tx & Rx Variable ----------------------------------------------------------*/
uint8 TxData_CAN[64] = {'H', 'e', 'l', 'l', 'o', '!', };

static uint32 Baudrate_nominal[4];
static uint32 Baudrate_fast[4];
static uint32 SJW_nominal[4];
static uint32 SP_nominal[4];
static uint32 SJW_fast[4];
static uint32 SP_fast[4];
static uint8  LDO[4];


/******************************************************************************
* Function Name	: Isr_MsgObj1_RX_IntHandler
* Description	: Interrupt Service Routine for Message Object 1 (Receive Interrupt)
* 				  After receiving a CAN message by using message object 1, this service routine is executed.
* Input			: None
* Output		: None
* Return		: None
* Attention		: None
*******************************************************************************/

/*----------------------------------------------------------------------------*/



void Set_CAN_Module(void)
{
	/* create module config */
	    IfxMultican_Can_Config canConfig;
	    IfxMultican_Can_initModuleConfig(&canConfig, &MODULE_CAN);

	    /* initialize module */
	    IfxMultican_Can_initModule(&pMultican.drivers.can, &canConfig);
}

void Set_CAN_Enable(uint8 num_ch, uint8 FD)
{
	/* create CAN node config */
	IfxMultican_Can_NodeConfig canNodeConfig;
	IfxMultican_Can_Node_initConfig(&canNodeConfig, &pMultican.drivers.can);


	/* Set Rx and Tx Pins */
	switch(num_ch)
	{
		case 0 :
		{
			canNodeConfig.nodeId	= IfxMultican_NodeId_0;
			canNodeConfig.rxPin		= &IfxMultican_RXD0B_P20_7_IN;
			canNodeConfig.txPin		= &IfxMultican_TXD0_P20_8_OUT;
		}break;
		case 1 :
		{
			canNodeConfig.nodeId	= IfxMultican_NodeId_1;
			canNodeConfig.rxPin		= &IfxMultican_RXD1B_P14_1_IN;
			canNodeConfig.txPin		= &IfxMultican_TXD1_P14_0_OUT;
		}break;
		case 2 :
		{
			canNodeConfig.nodeId	= IfxMultican_NodeId_2;
			canNodeConfig.rxPin		= &IfxMultican_RXD2E_P10_2_IN;
			canNodeConfig.txPin		= &IfxMultican_TXD2_P10_3_OUT;
		}break;
		case 3 :
		{
			canNodeConfig.nodeId	= IfxMultican_NodeId_3;
			canNodeConfig.rxPin		= &IfxMultican_RXD3A_P00_3_IN;
			canNodeConfig.txPin		= &IfxMultican_TXD3_P00_2_OUT;
		}break;
		default : break;
	}

	canNodeConfig.rxPinMode                      = IfxPort_InputMode_pullUp;
	canNodeConfig.txPinMode                      = IfxPort_OutputMode_pushPull;
	canNodeConfig.flexibleDataRate               = FD;


	canNodeConfig.baudrate = Baudrate_nominal[num_ch];

	canNodeConfig.fdConfig.nominalBaudrate       = Baudrate_nominal[num_ch];
	canNodeConfig.fdConfig.nominalSynchJumpWidth = SJW_nominal[num_ch];
	canNodeConfig.fdConfig.nominalSamplePoint    = SP_nominal[num_ch];
	canNodeConfig.fdConfig.fastBaudrate          = Baudrate_fast[num_ch];
	canNodeConfig.fdConfig.fastSynchJumpWidth    = SJW_fast[num_ch];
	canNodeConfig.fdConfig.fastSamplePoint       = SP_fast[num_ch];

	canNodeConfig.fdConfig.loopDelayOffset       = LDO[num_ch];

	IfxMultican_Can_Node_init(&pMultican.drivers.canNode[num_ch], &canNodeConfig);
}


void Set_CAN_BitRate(uint8 num_ch, uint32 nom_Baudrate, uint32 fast_Baudrate)
{
	Baudrate_nominal[num_ch] = nom_Baudrate;
	Baudrate_fast[num_ch] = fast_Baudrate;

}
void Set_CAN_BitTiming(	uint8  num_ch,
						uint32 nom_SJW,  uint32 nom_SP,
						uint32 fast_SJW, uint32 fast_SP,
						uint8  _LDO)
{
	SJW_nominal[num_ch] = nom_SJW;
	SP_nominal[num_ch] = nom_SP;
	SJW_fast[num_ch] = fast_SJW;
	SP_fast[num_ch] = fast_SP;
	LDO[num_ch] = _LDO;

}

void Set_CAN_msgObject( uint8 num_msgObj, uint8 num_ch, uint32 ID,
						uint8 size_frame, uint8 FD_on)
{
    /* create message object config */
    IfxMultican_Can_MsgObjConfig canMsgObjConfig;
    IfxMultican_Can_MsgObj_initConfig(&canMsgObjConfig, &pMultican.drivers.canNode[num_ch]);

    canMsgObjConfig.msgObjId               = num_msgObj;    /* avoid clashing with transmit FIFO message objects */
    canMsgObjConfig.msgObjCount            = 1;
    canMsgObjConfig.messageId              = ID;
    canMsgObjConfig.frame                  = IfxMultican_Frame_transmit;



    if(size_frame <= 8)
    {
 		canMsgObjConfig.control.messageLen     = size_frame;
 		canMsgObjConfig.control.extendedFrame  = FALSE;
    }
    else
    {
    	if(size_frame <= 12)
    	    canMsgObjConfig.control.messageLen     = IfxMultican_DataLengthCode_12;
    	else if(size_frame <= 16)
    		canMsgObjConfig.control.messageLen     = IfxMultican_DataLengthCode_16;
    	else if(size_frame <= 20)
    	    canMsgObjConfig.control.messageLen     = IfxMultican_DataLengthCode_20;
    	else if(size_frame <= 24)
    	    canMsgObjConfig.control.messageLen     = IfxMultican_DataLengthCode_24;
    	else if(size_frame <= 32)
    	   	canMsgObjConfig.control.messageLen     = IfxMultican_DataLengthCode_32;
    	else if(size_frame <= 48)
    	   	canMsgObjConfig.control.messageLen     = IfxMultican_DataLengthCode_48;
    	else if(size_frame > 48)
    	   	canMsgObjConfig.control.messageLen     = IfxMultican_DataLengthCode_64;
 		canMsgObjConfig.control.extendedFrame  = TRUE;
 	    canMsgObjConfig.control.topMsgObjId    = 160+num_msgObj;
 	    canMsgObjConfig.control.bottomMsgObjId = 180+num_msgObj;
    }

    canMsgObjConfig.acceptanceMask         = 0x7FFFFFFFUL;
	canMsgObjConfig.control.matchingId     = TRUE;
    canMsgObjConfig.control.fastBitRate    = FD_on;             /* fast bit rate enable/disable */
    //canMsgObjConfig.rxInterrupt.enabled = 1;

    /* initialize message object */
    IfxMultican_Can_MsgObj_init(&pMultican.drivers.canMsgObj[num_msgObj], &canMsgObjConfig);

}

void Set_CAN_Rx(uint8 num_msgObj, uint8 num_ch, uint32 ID_mask, uint32 ID_accept,
				uint8 Frame_extend, uint8 FD_on, void *isrFuncPointer, uint16 priority, uint8 num_core)
{
	/* Configure interrupt node pointers (INT0) */
	Ifx_SRC_SRCR *srcPointer = &(MODULE_SRC.CAN.CAN[0].INT[num_msgObj-20]);
	srcPointer->B.SRPN = priority;
	srcPointer->B.TOS  = num_core; // type of service : CPU0
	srcPointer->B.CLRR = 1; // Clear Request
	srcPointer->B.SRE = 1; // Service Enable

	IfxCpu_Irq_installInterruptHandler(isrFuncPointer, priority);

	/* create message object config */
	IfxMultican_Can_MsgObjConfig canMsgObjConfig;
	IfxMultican_Can_MsgObj_initConfig(&canMsgObjConfig, &pMultican.drivers.canNode[num_ch]);

	canMsgObjConfig.msgObjId               = num_msgObj;    /* avoid clashing with transmit FIFO message objects */
	canMsgObjConfig.msgObjCount            = 1;
	canMsgObjConfig.frame                  = IfxMultican_Frame_receive;
	canMsgObjConfig.messageId              = ID_accept;


	if(Frame_extend)
	{
		canMsgObjConfig.control.messageLen     = IfxMultican_DataLengthCode_64;
		canMsgObjConfig.control.extendedFrame  = TRUE;
		canMsgObjConfig.control.topMsgObjId    = 180+num_msgObj;
		canMsgObjConfig.control.bottomMsgObjId = 200+num_msgObj;
	}
	else
	{
		canMsgObjConfig.control.messageLen     = IfxMultican_DataLengthCode_8;
		canMsgObjConfig.control.extendedFrame  = FALSE;
	}


	canMsgObjConfig.acceptanceMask         = ID_mask;
	canMsgObjConfig.control.matchingId     = ID_accept;
	canMsgObjConfig.control.fastBitRate    = FD_on;             /* fast bit rate enable/disable */
	canMsgObjConfig.rxInterrupt.enabled	   = TRUE;
	canMsgObjConfig.rxInterrupt.srcId	   = num_msgObj-20;


	/* initialize message object */
	IfxMultican_Can_MsgObj_init(&pMultican.drivers.canMsgObj[num_msgObj], &canMsgObjConfig);



}
/*----------------------------------------------------------------------------*/
void IO_Send_Duplicate_CAN(uint8 number_MsgObj, uint8 *data, uint8 size)
{
    Ifx_CAN_MO *hwObj		= &(MODULE_CAN.MO[number_MsgObj]);

	hwObj->DATAL.B.DB0 = data[0];

    hwObj->CTR.U = (1<<24); // set TXRQ
}

/* Send CAN Message ----------------------------------------------------------*/
void IO_Send_CAN(uint8 number_MsgObj, uint8 *data, uint8 size)
{
	/* Input	: object number and sending message. -------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: send CAN message. ------------------------------------------*/

	static char buffer[64];
	int i;

	for(i=0; i<size; i++)
		buffer[i] = data[i];

    Ifx_CAN_MO *hwObj		= &(MODULE_CAN.MO[number_MsgObj]);
    Ifx_CAN_MO *hwtopObj	= &(MODULE_CAN.MO[160+number_MsgObj]);
    Ifx_CAN_MO *hwbotObj	= &(MODULE_CAN.MO[180+number_MsgObj]);


    //while(hwObj->STAT.B.TXRQ);

    hwObj->DATAL.B.DB0 = buffer[0];
    hwObj->DATAL.B.DB1 = buffer[1];
    hwObj->DATAL.B.DB2 = buffer[2];
    hwObj->DATAL.B.DB3 = buffer[3];

    hwObj->DATAH.B.DB4 = buffer[4];
    hwObj->DATAH.B.DB5 = buffer[5];
    hwObj->DATAH.B.DB6 = buffer[6];
    hwObj->DATAH.B.DB7 = buffer[7];

	hwbotObj->EDATA0.B.DB0 = buffer[8];
	hwbotObj->EDATA0.B.DB1 = buffer[9];
	hwbotObj->EDATA0.B.DB2 = buffer[10];
	hwbotObj->EDATA0.B.DB3 = buffer[11];

	hwbotObj->EDATA1.B.DB0 = buffer[12];
	hwbotObj->EDATA1.B.DB1 = buffer[13];
	hwbotObj->EDATA1.B.DB2 = buffer[14];
	hwbotObj->EDATA1.B.DB3 = buffer[15];

	hwbotObj->EDATA2.B.DB0 = buffer[16];
	hwbotObj->EDATA2.B.DB1 = buffer[17];
	hwbotObj->EDATA2.B.DB2 = buffer[18];
	hwbotObj->EDATA2.B.DB3 = buffer[19];

	hwbotObj->EDATA3.B.DB0 = buffer[20];
	hwbotObj->EDATA3.B.DB1 = buffer[21];
	hwbotObj->EDATA3.B.DB2 = buffer[22];
	hwbotObj->EDATA3.B.DB3 = buffer[23];

	hwbotObj->EDATA4.B.DB0 = buffer[24];
	hwbotObj->EDATA4.B.DB1 = buffer[25];
	hwbotObj->EDATA4.B.DB2 = buffer[26];
	hwbotObj->EDATA4.B.DB3 = buffer[27];

	hwbotObj->EDATA5.B.DB0 = buffer[28];
	hwbotObj->EDATA5.B.DB1 = buffer[29];
	hwbotObj->EDATA5.B.DB2 = buffer[30];
	hwbotObj->EDATA5.B.DB3 = buffer[31];

	hwbotObj->EDATA6.B.DB0 = buffer[32];
	hwbotObj->EDATA6.B.DB1 = buffer[33];
	hwbotObj->EDATA6.B.DB2 = buffer[34];
	hwbotObj->EDATA6.B.DB3 = buffer[35];


	hwtopObj->EDATA0.B.DB0 = buffer[36];
	hwtopObj->EDATA0.B.DB1 = buffer[37];
	hwtopObj->EDATA0.B.DB2 = buffer[38];
	hwtopObj->EDATA0.B.DB3 = buffer[39];

	hwtopObj->EDATA1.B.DB0 = buffer[40];
	hwtopObj->EDATA1.B.DB1 = buffer[41];
	hwtopObj->EDATA1.B.DB2 = buffer[42];
	hwtopObj->EDATA1.B.DB3 = buffer[43];

	hwtopObj->EDATA2.B.DB0 = buffer[44];
	hwtopObj->EDATA2.B.DB1 = buffer[45];
	hwtopObj->EDATA2.B.DB2 = buffer[46];
	hwtopObj->EDATA2.B.DB3 = buffer[47];

	hwtopObj->EDATA3.B.DB0 = buffer[48];
	hwtopObj->EDATA3.B.DB1 = buffer[49];
	hwtopObj->EDATA3.B.DB2 = buffer[50];
	hwtopObj->EDATA3.B.DB3 = buffer[51];

	hwtopObj->EDATA4.B.DB0 = buffer[52];
	hwtopObj->EDATA4.B.DB1 = buffer[53];
	hwtopObj->EDATA4.B.DB2 = buffer[54];
	hwtopObj->EDATA4.B.DB3 = buffer[55];

	hwtopObj->EDATA5.B.DB0 = buffer[56];
	hwtopObj->EDATA5.B.DB1 = buffer[57];
	hwtopObj->EDATA5.B.DB2 = buffer[58];
	hwtopObj->EDATA5.B.DB3 = buffer[59];

	hwtopObj->EDATA6.B.DB0 = buffer[60];
	hwtopObj->EDATA6.B.DB1 = buffer[61];
	hwtopObj->EDATA6.B.DB2 = buffer[62];
	hwtopObj->EDATA6.B.DB3 = buffer[63];


    hwObj->CTR.U = (1<<24); // set TXRQ
}
/*----------------------------------------------------------------------------*/
/* This function sends a CAN message.*/
void printf_CAN(uint8 number_MsgObj, uint8 *fmt, ...)
{
    Ifx_CAN_MO *hwObj		= &(MODULE_CAN.MO[number_MsgObj]);
    Ifx_CAN_MO *hwtopObj	= &(MODULE_CAN.MO[160+number_MsgObj]);
    Ifx_CAN_MO *hwbotObj	= &(MODULE_CAN.MO[180+number_MsgObj]);


	/* Define temp address of the data ---------------------------------------*/
	char buffer[64];
	va_list ap;

	/* Get start address of the data -----------------------------------------*/
	va_start(ap, fmt);

	/* Copy data input to buffer ---------------------------------------------*/
	vsprintf(buffer, fmt, ap);

	/* Get end address of the data -------------------------------------------*/
	va_end(ap);

	/* Get length of the Tx data ---------------------------------------------*/
	sint16 length = 0;
	length = strlen(buffer);
	int i_buf;
	for(i_buf = length; i_buf<64; i_buf++)
	{
		buffer[i_buf] = ' ';
	}

    //while(hwObj->STAT.B.TXRQ);

    hwObj->DATAL.B.DB0 = buffer[0];
    hwObj->DATAL.B.DB1 = buffer[1];
    hwObj->DATAL.B.DB2 = buffer[2];
    hwObj->DATAL.B.DB3 = buffer[3];

    hwObj->DATAH.B.DB4 = buffer[4];
    hwObj->DATAH.B.DB5 = buffer[5];
    hwObj->DATAH.B.DB6 = buffer[6];
    hwObj->DATAH.B.DB7 = buffer[7];

	hwbotObj->EDATA0.B.DB0 = buffer[8];
	hwbotObj->EDATA0.B.DB1 = buffer[9];
	hwbotObj->EDATA0.B.DB2 = buffer[10];
	hwbotObj->EDATA0.B.DB3 = buffer[11];

	hwbotObj->EDATA1.B.DB0 = buffer[12];
	hwbotObj->EDATA1.B.DB1 = buffer[13];
	hwbotObj->EDATA1.B.DB2 = buffer[14];
	hwbotObj->EDATA1.B.DB3 = buffer[15];

	hwbotObj->EDATA2.B.DB0 = buffer[16];
	hwbotObj->EDATA2.B.DB1 = buffer[17];
	hwbotObj->EDATA2.B.DB2 = buffer[18];
	hwbotObj->EDATA2.B.DB3 = buffer[19];

	hwbotObj->EDATA3.B.DB0 = buffer[20];
	hwbotObj->EDATA3.B.DB1 = buffer[21];
	hwbotObj->EDATA3.B.DB2 = buffer[22];
	hwbotObj->EDATA3.B.DB3 = buffer[23];

	hwbotObj->EDATA4.B.DB0 = buffer[24];
	hwbotObj->EDATA4.B.DB1 = buffer[25];
	hwbotObj->EDATA4.B.DB2 = buffer[26];
	hwbotObj->EDATA4.B.DB3 = buffer[27];

	hwbotObj->EDATA5.B.DB0 = buffer[28];
	hwbotObj->EDATA5.B.DB1 = buffer[29];
	hwbotObj->EDATA5.B.DB2 = buffer[30];
	hwbotObj->EDATA5.B.DB3 = buffer[31];

	hwbotObj->EDATA6.B.DB0 = buffer[32];
	hwbotObj->EDATA6.B.DB1 = buffer[33];
	hwbotObj->EDATA6.B.DB2 = buffer[34];
	hwbotObj->EDATA6.B.DB3 = buffer[35];


	hwtopObj->EDATA0.B.DB0 = buffer[36];
	hwtopObj->EDATA0.B.DB1 = buffer[37];
	hwtopObj->EDATA0.B.DB2 = buffer[38];
	hwtopObj->EDATA0.B.DB3 = buffer[39];

	hwtopObj->EDATA1.B.DB0 = buffer[40];
	hwtopObj->EDATA1.B.DB1 = buffer[41];
	hwtopObj->EDATA1.B.DB2 = buffer[42];
	hwtopObj->EDATA1.B.DB3 = buffer[43];

	hwtopObj->EDATA2.B.DB0 = buffer[44];
	hwtopObj->EDATA2.B.DB1 = buffer[45];
	hwtopObj->EDATA2.B.DB2 = buffer[46];
	hwtopObj->EDATA2.B.DB3 = buffer[47];

	hwtopObj->EDATA3.B.DB0 = buffer[48];
	hwtopObj->EDATA3.B.DB1 = buffer[49];
	hwtopObj->EDATA3.B.DB2 = buffer[50];
	hwtopObj->EDATA3.B.DB3 = buffer[51];

	hwtopObj->EDATA4.B.DB0 = buffer[52];
	hwtopObj->EDATA4.B.DB1 = buffer[53];
	hwtopObj->EDATA4.B.DB2 = buffer[54];
	hwtopObj->EDATA4.B.DB3 = buffer[55];

	hwtopObj->EDATA5.B.DB0 = buffer[56];
	hwtopObj->EDATA5.B.DB1 = buffer[57];
	hwtopObj->EDATA5.B.DB2 = buffer[58];
	hwtopObj->EDATA5.B.DB3 = buffer[59];

	hwtopObj->EDATA6.B.DB0 = buffer[60];
	hwtopObj->EDATA6.B.DB1 = buffer[61];
	hwtopObj->EDATA6.B.DB2 = buffer[62];
	hwtopObj->EDATA6.B.DB3 = buffer[63];


    hwObj->CTR.U = (1<<24); // set TXRQ
}


uint32 Get_CAN_RxBuffer(uint8 num_MsgObj, uint8 *buffer)
{
    Ifx_CAN_MO	*hwObj  	= &(MODULE_CAN.MO[num_MsgObj]);
    Ifx_CAN_MO	*hwtopObj	= &(MODULE_CAN.MO[180+num_MsgObj]);
    Ifx_CAN_MO	*hwbotObj	= &(MODULE_CAN.MO[200+num_MsgObj]);


    buffer[0]	= hwObj->DATAL.B.DB0;
    buffer[1]	= hwObj->DATAL.B.DB1;
    buffer[2]	= hwObj->DATAL.B.DB2;
    buffer[3]	= hwObj->DATAL.B.DB3;

    buffer[4]	= hwObj->DATAH.B.DB4;
    buffer[5]	= hwObj->DATAH.B.DB5;
    buffer[6]	= hwObj->DATAH.B.DB6;
    buffer[7]	= hwObj->DATAH.B.DB7;


    buffer[8]	= hwbotObj->EDATA0.B.DB0;
    buffer[9]	= hwbotObj->EDATA0.B.DB1;
    buffer[10]	= hwbotObj->EDATA0.B.DB2;
    buffer[11]	= hwbotObj->EDATA0.B.DB3;

    buffer[12]	= hwbotObj->EDATA1.B.DB0;
    buffer[13]	= hwbotObj->EDATA1.B.DB1;
    buffer[14]	= hwbotObj->EDATA1.B.DB2;
    buffer[15]	= hwbotObj->EDATA1.B.DB3;

    buffer[16]	= hwbotObj->EDATA2.B.DB0;
    buffer[17]	= hwbotObj->EDATA2.B.DB1;
    buffer[18]	= hwbotObj->EDATA2.B.DB2;
    buffer[19]	= hwbotObj->EDATA2.B.DB3;

    buffer[20]	= hwbotObj->EDATA3.B.DB0;
    buffer[21]	= hwbotObj->EDATA3.B.DB1;
    buffer[22]	= hwbotObj->EDATA3.B.DB2;
    buffer[23]	= hwbotObj->EDATA3.B.DB3;

    buffer[24]	= hwbotObj->EDATA4.B.DB0;
    buffer[25]	= hwbotObj->EDATA4.B.DB1;
    buffer[26]	= hwbotObj->EDATA4.B.DB2;
    buffer[27]	= hwbotObj->EDATA4.B.DB3;

    buffer[28]	= hwbotObj->EDATA5.B.DB0;
    buffer[29]	= hwbotObj->EDATA5.B.DB1;
    buffer[30]	= hwbotObj->EDATA5.B.DB2;
    buffer[31]	= hwbotObj->EDATA5.B.DB3;

    buffer[32]	= hwbotObj->EDATA6.B.DB0;
    buffer[33]	= hwbotObj->EDATA6.B.DB1;
    buffer[34]	= hwbotObj->EDATA6.B.DB2;
    buffer[35]	= hwbotObj->EDATA6.B.DB3;


    buffer[36]	= hwtopObj->EDATA0.B.DB0;
    buffer[37]	= hwtopObj->EDATA0.B.DB1;
    buffer[38]	= hwtopObj->EDATA0.B.DB2;
    buffer[39]	= hwtopObj->EDATA0.B.DB3;

    buffer[40]	= hwtopObj->EDATA1.B.DB0;
    buffer[41]	= hwtopObj->EDATA1.B.DB1;
    buffer[42]	= hwtopObj->EDATA1.B.DB2;
    buffer[43]	= hwtopObj->EDATA1.B.DB3;

    buffer[44]	= hwtopObj->EDATA2.B.DB0;
    buffer[45]	= hwtopObj->EDATA2.B.DB1;
    buffer[46]	= hwtopObj->EDATA2.B.DB2;
    buffer[47]	= hwtopObj->EDATA2.B.DB3;

    buffer[48]	= hwtopObj->EDATA3.B.DB0;
    buffer[49]	= hwtopObj->EDATA3.B.DB1;
    buffer[50]	= hwtopObj->EDATA3.B.DB2;
    buffer[51]	= hwtopObj->EDATA3.B.DB3;

    buffer[52]	= hwtopObj->EDATA4.B.DB0;
    buffer[53]	= hwtopObj->EDATA4.B.DB1;
    buffer[54]	= hwtopObj->EDATA4.B.DB2;
    buffer[55]	= hwtopObj->EDATA4.B.DB3;

    buffer[56]	= hwtopObj->EDATA5.B.DB0;
    buffer[57]	= hwtopObj->EDATA5.B.DB1;
    buffer[58]	= hwtopObj->EDATA5.B.DB2;
    buffer[59]	= hwtopObj->EDATA5.B.DB3;

    buffer[60]	= hwtopObj->EDATA6.B.DB0;
    buffer[61]	= hwtopObj->EDATA6.B.DB1;
    buffer[62]	= hwtopObj->EDATA6.B.DB2;
    buffer[63]	= hwtopObj->EDATA6.B.DB3;

    while(!hwObj->STAT.B.RXPND);


    uint32 ID_result, ID_temp;

    if(hwObj->AR.B.IDE)
    	return hwObj->AR.B.ID;
    else
    	return (hwObj->AR.B.ID >> 18);
}
