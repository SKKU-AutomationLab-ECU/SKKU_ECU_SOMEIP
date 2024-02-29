/*
 * Peripherals_UART.h
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */

#ifndef ASCLINASCDEMO_H
#define ASCLINASCDEMO_H



#include <Ifx_Types.h>
#include "Configuration.h"
#include "Asclin/Asc/IfxAsclin_Asc.h"

#define ASC_TX_BUFFER_SIZE 64
#define ASC_RX_BUFFER_SIZE 64

typedef struct
{
    uint8 tx[ASC_TX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];	/* transmission buffer */
    uint8 rx[ASC_RX_BUFFER_SIZE + sizeof(Ifx_Fifo) + 8];	/* receive buffer */
} AppAscBuffer;

typedef struct
{
    AppAscBuffer ascBuffer;
    struct
    {
        IfxAsclin_Asc asc0;
    } drivers;

    uint8     txData[5];
    uint8     rxData[5];
    Ifx_SizeT count;
} App_AsclinAsc;



/******************************************************************************/
/*----------------------------- System Log UART ------------------------------*/
/******************************************************************************/
IFX_EXTERN App_AsclinAsc pUART_SysLog;
IFX_EXTERN void Set_UART_SysLog(void);
IFX_EXTERN void printf_UART_SysLog(char *buffer, int length);



/******************************************************************************/
/*----------------------------- WiFi UART ------------------------------------*/
/******************************************************************************/
IFX_EXTERN App_AsclinAsc pUART_WiFi;
IFX_EXTERN void Set_UART_WiFi(void);
IFX_EXTERN void printf_UART_WiFi(char *, ...);
IFX_EXTERN void recieve_UART_WiFi(char *buffer);



/******************************************************************************/
/*----------------------------- dynamixel UART -------------------------------*/
/******************************************************************************/
IFX_EXTERN App_AsclinAsc pUART_dxl;
IFX_EXTERN void Set_UART_dxl(void);
IFX_EXTERN void printf_UART_dxl(char data);



__inline void delay_UART(unsigned int tic);

#endif
