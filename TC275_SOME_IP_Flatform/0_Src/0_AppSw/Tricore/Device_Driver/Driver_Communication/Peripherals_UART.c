/*
 * Peripherals_UART.c
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */

#include "IfxCpu_Irq.h"
#include "Peripherals.h"
#include "Peripherals_UART.h"
#include "SysCFG_Cores.h"
#include <stdarg.h>
#include <stdio.h>
#include "Event_Trigger.h"



/******************************************************************************/
#if UART_SysLog /*----------------- UART_SysLog dummy ------------------------*/
/******************************************************************************/

/* Module Address ------------------------------------------------------------*/
App_AsclinAsc pUART_SysLog;
/*----------------------------------------------------------------------------*/

/* Tx & Rx Variable ----------------------------------------------------------*/
uint8 txData[9] = { 0x49, 0x6e, 0x66, 0x69, 0x6e, 0x65, 0x6f, 0x6e, 0x0a };
char rxData[1];
/*----------------------------------------------------------------------------*/


/* Interrupt Service Routine for Tx ------------------------------------------*/
void asclin0TxISR(void)
{
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrTransmit(&pUART_SysLog.drivers.asc0);
}
/*----------------------------------------------------------------------------*/

/* Interrupt Service Routine for Rx ------------------------------------------*/
void asclin0RxISR(void)
{
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrReceive(&pUART_SysLog.drivers.asc0);
	Ifx_SizeT count = 1;
	IfxAsclin_Asc_read(&pUART_SysLog.drivers.asc0, rxData, &count, TIME_INFINITE);
	//printf_UART_SysLog("%s", rxData);
	ISR_UART_Rx_SysCom(rxData);
}
/*----------------------------------------------------------------------------*/

/* Interrupt Service Routine for Er ------------------------------------------*/
void asclin0ErISR(void)
{
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrError(&pUART_SysLog.drivers.asc0);
}
/*----------------------------------------------------------------------------*/

/* Initialize UART for LED ---------------------------------------------------*/
void Set_UART_SysLog(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Ports setting for System Log line. P15_3 and P15_2. --------*/

    /* disable interrupts ----------------------------------------------------*/
    boolean interruptState = IfxCpu_disableInterrupts();

    /* Create module and Configuration ---------------------------------------*/
    IfxAsclin_Asc_Config ascConfig;
    IfxAsclin_Asc_initModuleConfig(&ascConfig, &MODULE_ASCLIN0);

    /* Set the desired Baudrate ----------------------------------------------*/
    ascConfig.baudrate.prescaler    = 1;
    ascConfig.baudrate.baudrate     = 115200;
    	/* -> FDR values will be calculated in initModule. -------------------*/
    ascConfig.baudrate.oversampling = IfxAsclin_OversamplingFactor_16;


    /* ISR priorities and interrupt target -----------------------------------*/
    ascConfig.interrupt.txPriority    = ISR_PRIORITY_ASCLIN0_TX;
    ascConfig.interrupt.rxPriority    = ISR_PRIORITY_ASCLIN0_RX;
    ascConfig.interrupt.erPriority    = ISR_PRIORITY_ASCLIN0_ER;

    ascConfig.interrupt.typeOfService = ISR_PRIORITY_ASCLIN0_ISR_Provider;

//    IFX_INTERRUPT(asclin0TxISR, 0, ISR_PRIORITY_ASCLIN0_TX);
//    IFX_INTERRUPT(asclin0RxISR, 0, ISR_PRIORITY_ASCLIN0_RX);
//    IFX_INTERRUPT(asclin0ErISR, 0, ISR_PRIORITY_ASCLIN0_ER);
    IfxCpu_Irq_installInterruptHandler(asclin0TxISR, ISR_PRIORITY_ASCLIN0_TX);
    IfxCpu_Irq_installInterruptHandler(asclin0RxISR, ISR_PRIORITY_ASCLIN0_RX);
    IfxCpu_Irq_installInterruptHandler(asclin0ErISR, ISR_PRIORITY_ASCLIN0_ER);

    /* FIFO configuration ----------------------------------------------------*/
    ascConfig.txBuffer     = pUART_SysLog.ascBuffer.tx;
    ascConfig.txBufferSize = ASC_TX_BUFFER_SIZE;
    ascConfig.rxBuffer     = pUART_SysLog.ascBuffer.rx;
    ascConfig.rxBufferSize = ASC_RX_BUFFER_SIZE;

    /* Pin configuration -----------------------------------------------------*/
    const IfxAsclin_Asc_Pins pins =
    {
        NULL_PTR,					IfxPort_InputMode_pullUp,    /* CTS */
        &IfxAsclin0_RXB_P15_3_IN,	IfxPort_InputMode_pullUp,    /* Rx  */
        NULL_PTR,					IfxPort_OutputMode_pushPull, /* RTS */
        &IfxAsclin0_TX_P15_2_OUT,	IfxPort_OutputMode_pushPull, /* Tx  */
        IfxPort_PadDriver_cmosAutomotiveSpeed1
    };
    ascConfig.pins = &pins;

    /* Initialize Module -----------------------------------------------------*/
    IfxAsclin_Asc_initModule(&pUART_SysLog.drivers.asc0, &ascConfig);

    /* Enable Interrupts again -----------------------------------------------*/
    IfxCpu_restoreInterrupts(interruptState);
}


/* UART Transmit Function ----------------------------------------------------*/
void printf_UART_SysLog(char *buffer, int length)
{
	/* Input	: Transmit Buffer address. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Tx data transmit for System Log ----------------------------*/

	/* Transmit out by Tx port -----------------------------------------------*/
	IfxAsclin_Asc_write(&pUART_SysLog.drivers.asc0, buffer, &length, TIME_INFINITE);

	/* Waits transmitting ----------------------------------------------------*/
	delay_tic(length);
}
/*----------------------------------------------------------------------------*/

/******************************************************************************/
#else if !UART_SysLog /*----------- UART_SysLog dummy ------------------------*/
/******************************************************************************/
void Set_UART_SysLog(void) {}
void printf_UART_SysLog(char *fmt, ...) {}
void Receive_UART_SysCom(char *buffer) {}
/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/










/******************************************************************************/
#if UART_WiFi /*----------------- UART_WiFi dummy ----------------------------*/
/******************************************************************************/

/* Module Address ------------------------------------------------------------*/
App_AsclinAsc pUART_WiFi;
/*----------------------------------------------------------------------------*/

/* Tx & Rx Variable ----------------------------------------------------------*/
uint8 txData_WiFi[9] = { 0x49, 0x6e, 0x66, 0x69, 0x6e, 0x65, 0x6f, 0x6e, 0x0a };
char rxData_WiFi[1];
int WiFi_cnt;
int WiFi_buf_ID;
int WiFi_buf_cnt;
int WiFi_buf_len;
char WiFi_buf[100];
/*----------------------------------------------------------------------------*/

/* Interrupt Service Routine for Tx ------------------------------------------*/
void asclin1TxISR(void)
{
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrTransmit(&pUART_WiFi.drivers.asc0);
}
/*----------------------------------------------------------------------------*/

/* Interrupt Service Routine for Rx ------------------------------------------*/
void asclin1RxISR(void)
{
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrReceive(&pUART_WiFi.drivers.asc0);
	Ifx_SizeT count = 1;
	IfxAsclin_Asc_read(&pUART_WiFi.drivers.asc0, rxData, &count, TIME_INFINITE);
	recieve_UART_WiFi(rxData);
}
/*----------------------------------------------------------------------------*/

/* Interrupt Service Routine for Er ------------------------------------------*/
void asclin1ErISR(void)
{
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrError(&pUART_WiFi.drivers.asc0);
}
/*----------------------------------------------------------------------------*/

/* Initialize UART for LED ---------------------------------------------------*/
void Set_UART_WiFi(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Ports setting for System Log line. P14_8 and P14_10. -------*/

    /* disable interrupts ----------------------------------------------------*/
    boolean interruptState = IfxCpu_disableInterrupts();

    /* Create module and Configuration ---------------------------------------*/
    IfxAsclin_Asc_Config ascConfig;
    IfxAsclin_Asc_initModuleConfig(&ascConfig, &MODULE_ASCLIN1);

    /* Set the desired Baudrate ----------------------------------------------*/
    ascConfig.baudrate.prescaler    = 1;
    ascConfig.baudrate.baudrate     = 115200;
    	/* -> FDR values will be calculated in initModule. -------------------*/
    ascConfig.baudrate.oversampling = IfxAsclin_OversamplingFactor_16;


    /* ISR priorities and interrupt target -----------------------------------*/
    ascConfig.interrupt.txPriority    = ISR_PRIORITY_ASCLIN1_TX;
    ascConfig.interrupt.rxPriority    = ISR_PRIORITY_ASCLIN1_RX;
    ascConfig.interrupt.erPriority    = ISR_PRIORITY_ASCLIN1_ER;

    ascConfig.interrupt.typeOfService = ISR_PRIORITY_ASCLIN1_ISR_Provider;

//    IFX_INTERRUPT(asclin1TxISR, 0, ISR_PRIORITY_ASCLIN1_TX);
//    IFX_INTERRUPT(asclin1RxISR, 0, ISR_PRIORITY_ASCLIN1_RX);
//    IFX_INTERRUPT(asclin1ErISR, 0, ISR_PRIORITY_ASCLIN1_ER);

    IfxCpu_Irq_installInterruptHandler(asclin1TxISR, ISR_PRIORITY_ASCLIN1_TX);
    IfxCpu_Irq_installInterruptHandler(asclin1RxISR, ISR_PRIORITY_ASCLIN1_RX);
    IfxCpu_Irq_installInterruptHandler(asclin1ErISR, ISR_PRIORITY_ASCLIN1_ER);

    /* FIFO configuration ----------------------------------------------------*/
    ascConfig.txBuffer     = pUART_WiFi.ascBuffer.tx;
    ascConfig.txBufferSize = ASC_TX_BUFFER_SIZE;
    ascConfig.rxBuffer     = pUART_WiFi.ascBuffer.rx;
    ascConfig.rxBufferSize = ASC_RX_BUFFER_SIZE;

    /* Pin configuration -----------------------------------------------------*/
    const IfxAsclin_Asc_Pins pins =
    {
        NULL_PTR,					IfxPort_InputMode_pullUp,    /* CTS */
        &IfxAsclin1_RXD_P14_8_IN,	IfxPort_InputMode_pullUp,    /* Rx  */
        NULL_PTR,					IfxPort_OutputMode_pushPull, /* RTS */
        &IfxAsclin1_TX_P14_10_OUT,	IfxPort_OutputMode_pushPull, /* Tx  */
        IfxPort_PadDriver_cmosAutomotiveSpeed1
    };
    ascConfig.pins = &pins;

    /* Initialize Module -----------------------------------------------------*/
    IfxAsclin_Asc_initModule(&pUART_WiFi.drivers.asc0, &ascConfig);

    /* Enable Interrupts again -----------------------------------------------*/
    IfxCpu_restoreInterrupts(interruptState);
}

/* UART Recieve Function -----------------------------------------------------*/
void recieve_UART_WiFi(char *buffer)
{
	/* Input	: Recieved Buffer address. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Rx data recieve and Application ----------------------------*/

	if(buffer[0] == '+')
	{
		WiFi_cnt = 1;
		//printf_UART_SysLog("%d->[+]\r\n", WiFi_cnt);
	}
	else if((WiFi_cnt > 0)&&(WiFi_cnt < 9))
	{
		if(buffer[0] == 'I')
		{
			WiFi_cnt++;
			//printf_UART_SysLog("%d->[I]\r\n", WiFi_cnt);
		}
		else if(buffer[0] == 'P')
		{
			WiFi_cnt++;
			//printf_UART_SysLog("%d->[P]\r\n", WiFi_cnt);
		}
		else if(buffer[0] == 'D')
		{
			WiFi_cnt++;
			//printf_UART_SysLog("%d->[D]\r\n", WiFi_cnt);
		}
		else if(buffer[0] == ',')
		{
			WiFi_cnt++;
			//printf_UART_SysLog("%d->[,]\r\n", WiFi_cnt);
		}
		else if(WiFi_cnt == 5)
		{
			WiFi_buf_ID = (buffer[0] - '0');
			WiFi_cnt++;
			//printf_UART_SysLog("%d->[ID=%c]\r\n", WiFi_cnt, buffer[0]);
		}
		else if(WiFi_cnt == 7)
		{
			WiFi_buf_len = (buffer[0] - '0');
			WiFi_cnt++;
			//printf_UART_SysLog("%d->[Len=%c]\r\n", WiFi_cnt, buffer[0]);
		}
		else if(buffer[0] == ':')
		{
			WiFi_cnt++;
			WiFi_buf_cnt = 0;
			//printf_UART_SysLog("%d->[:]\r\n", WiFi_cnt);
		}
	}
	else if(WiFi_cnt == 9)
	{
		WiFi_buf[WiFi_buf_cnt] = buffer[0];
		WiFi_buf_cnt++;
		if(WiFi_buf_cnt == WiFi_buf_len)
		{
			WiFi_cnt = 0;
			WiFi_buf_cnt = 0;
			WiFi_buf[WiFi_buf_len] = 0;
			ISR_UART_Rx_WiFi(WiFi_buf_len, WiFi_buf);
		}
	}

}

/* UART Transmit Function ----------------------------------------------------*/
void printf_UART_WiFi(char *fmt, ...)
{
	/* Input	: Transmit Buffer address. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Tx data transmit for System Log ----------------------------*/

	/* Define temp address of the data ---------------------------------------*/
	char buffer[100];
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

	/* Transmit out by Tx port -----------------------------------------------*/
	IfxAsclin_Asc_write(&pUART_WiFi.drivers.asc0, buffer, &length, TIME_INFINITE);

	/* Waits transmitting ----------------------------------------------------*/
	delay_tic(length*100);
}
/*----------------------------------------------------------------------------*/

/******************************************************************************/
#else if !UART_WiFi /*----------- UART_WiFi dummy ----------------------------*/
/******************************************************************************/
//void Set_UART_WiFi(void) {}
//void printf_UART_WiFi(char *fmt, ...) {}
//void recieve_UART_WiFi(char *buffer) {}
/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/










/******************************************************************************/
#if UART_dxl /*----------------- UART_dxl dummy ------------------------*/
/******************************************************************************/

/* Module Address ------------------------------------------------------------*/
App_AsclinAsc pUART_dxl;
/*----------------------------------------------------------------------------*/

/* Tx & Rx Variable ----------------------------------------------------------*/
uint8 txData_dxl[9] = { 0x49, 0x6e, 0x66, 0x69, 0x6e, 0x65, 0x6f, 0x6e, 0x0a };
char rxData_dxl[1];
/*----------------------------------------------------------------------------*/


/* Interrupt Service Routine for Tx ------------------------------------------*/
void asclin3TxISR(void)
{
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrTransmit(&pUART_dxl.drivers.asc0);
}
/*----------------------------------------------------------------------------*/

/* Interrupt Service Routine for Rx ------------------------------------------*/
void asclin3RxISR(void)
{
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrReceive(&pUART_dxl.drivers.asc0);
	Ifx_SizeT count = 1;
	IfxAsclin_Asc_read(&pUART_dxl.drivers.asc0, rxData_dxl, &count, TIME_INFINITE);

	Receive_UART_dxl(&rxData_dxl);
}
/*----------------------------------------------------------------------------*/

/* Interrupt Service Routine for Er ------------------------------------------*/
void asclin3ErISR(void)
{
	IfxCpu_enableInterrupts();
	IfxAsclin_Asc_isrError(&pUART_dxl.drivers.asc0);
}
/*----------------------------------------------------------------------------*/

/* Initialize UART for LED ---------------------------------------------------*/
void Set_UART_dxl(void)
{
	/* Input	: none. ------------------------------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Ports setting for System Log line. P15_3 and P15_2. --------*/

    /* disable interrupts ----------------------------------------------------*/
    boolean interruptState = IfxCpu_disableInterrupts();

    /* Create module and Configuration ---------------------------------------*/
    IfxAsclin_Asc_Config ascConfig;
    IfxAsclin_Asc_initModuleConfig(&ascConfig, &MODULE_ASCLIN3);

    /* Set the desired Baudrate-----------------------------------------------*/
    ascConfig.baudrate.prescaler    = 1;
    ascConfig.baudrate.baudrate     = 1000000;
    	/* -> FDR values will be calculated in initModule. --------------------*/
    ascConfig.baudrate.oversampling = IfxAsclin_OversamplingFactor_16;


    /* ISR priorities and interrupt target -----------------------------------*/
    ascConfig.interrupt.txPriority    = ISR_PRIORITY_ASCLIN3_TX;
    ascConfig.interrupt.rxPriority    = ISR_PRIORITY_ASCLIN3_RX;
    ascConfig.interrupt.erPriority    = ISR_PRIORITY_ASCLIN3_ER;

    ascConfig.interrupt.typeOfService = ISR_PRIORITY_ASCLIN3_ISR_Provider;

    //IFX_INTERRUPT(asclin0TxISR, 0, ISR_PRIORITY_ASCLIN0_TX);
    //IFX_INTERRUPT(asclin0RxISR, 0, ISR_PRIORITY_ASCLIN0_RX);
    //IFX_INTERRUPT(asclin0ErISR, 0, ISR_PRIORITY_ASCLIN0_ER);

    IfxCpu_Irq_installInterruptHandler(asclin3TxISR, ISR_PRIORITY_ASCLIN3_TX);
    IfxCpu_Irq_installInterruptHandler(asclin3RxISR, ISR_PRIORITY_ASCLIN3_RX);
    IfxCpu_Irq_installInterruptHandler(asclin3ErISR, ISR_PRIORITY_ASCLIN3_ER);

    /* FIFO configuration ----------------------------------------------------*/
    ascConfig.txBuffer     = pUART_dxl.ascBuffer.tx;
    ascConfig.txBufferSize = ASC_TX_BUFFER_SIZE;
    ascConfig.rxBuffer     = pUART_dxl.ascBuffer.rx;
    ascConfig.rxBufferSize = ASC_RX_BUFFER_SIZE;

    /* Pin configuration -----------------------------------------------------*/
    const IfxAsclin_Asc_Pins pins =
    {
        NULL_PTR,					IfxPort_InputMode_pullUp,    /* CTS */
        &IfxAsclin3_RXD_P32_2_IN,	IfxPort_InputMode_pullUp,    /* Rx  */
        NULL_PTR,					IfxPort_OutputMode_pushPull, /* RTS */
        &IfxAsclin3_TX_P32_3_OUT,	IfxPort_OutputMode_pushPull, /* Tx  */
        IfxPort_PadDriver_cmosAutomotiveSpeed1
    };
    ascConfig.pins = &pins;

    /* Initialize Module -----------------------------------------------------*/
    IfxAsclin_Asc_initModule(&pUART_dxl.drivers.asc0, &ascConfig);

    /* Enable Interrupts again -----------------------------------------------*/
    IfxCpu_restoreInterrupts(interruptState);
}

/* UART Receive Function -----------------------------------------------------*/
void Receive_UART_dxl(char *buffer)
{
	/* Input	: Received Buffer address. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Rx data Receive and Application ----------------------------*/



}

/* UART Transmit Function ----------------------------------------------------*/
void printf_UART_dxl(char data)
{
	/* Input	: Transmit Buffer address. -----------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: Tx data transmit for System Log ----------------------------*/

	unsigned char temp[1];
	temp[0] = data;
	Ifx_SizeT count = 1;
	IfxAsclin_Asc_write(&pUART_dxl.drivers.asc0, temp, &count, TIME_INFINITE);
}
/*----------------------------------------------------------------------------*/

/******************************************************************************/
#else if !UART_dxl /*----------- UART_dxl dummy ------------------------*/
/******************************************************************************/
//void Set_UART_dxl(void) {}
//void printf_UART_dxl(char *fmt, ...) {}
//void Receive_UART_dxl(char *buffer) {}
/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/










/* Waits transmitting Function -----------------------------------------------*/
__inline void delay_UART(unsigned int tic)
{
	/* Input	: tic : How long will you wait? ------------------------------*/
	/* Output	: none. ------------------------------------------------------*/
	/* Jobs		: I do shoveling. --------------------------------------------*/
	unsigned int tic_sub1, tic_sub2;
		for( tic_sub1 = 0; tic_sub1 < tic; tic_sub1++ )
			for( tic_sub2 = 0; tic_sub2 < 610; tic_sub2++ )
				__nop();
}
/*----------------------------------------------------------------------------*/
