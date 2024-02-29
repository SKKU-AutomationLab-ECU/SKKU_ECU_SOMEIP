/*
 * Runnable.c
 *
 *  Created on: 2018. 8. 10.
 *      Author: JW_Park
 */
#include "Cpu/Irq/IfxCpu_Irq.h"
#include "IfxPort.h"
#include "Application.h"
#include "SysCFG_Cores.h"
#include "Device_IF.h"
#include "Peripherals_UART.h"
#include "Application.h"
#include "lwip/tcp.h"
#include "tcp_impl.h"

#include "pbuf.h"
#include "someip.h"
#include "udp_echo.h"
#include "some_service.h"

int bLEDtoggle[8] = {0, 0, 0, 0, 0, 0, 0, 0};
unsigned char mLEDmask = 0;

/* Task Mapping --------------------------------------------------------------*/

void (*Process_Mapping[12])(void) =
{
	Core0_free,	/* on [Cpu0_main.c]		: Process ID 000 ---------------------*/
	Core1_free,	/* on [Cpu1_main.c]		: Process ID 001 ---------------------*/
	Core2_free,	/* on [Cpu2_main.c]		: Process ID 002 ---------------------*/
	Runn00,		/* on [Timed_Trigger.c]	: Process ID 100 ---------------------*/
	Runn01,		/* on [Timed_Trigger.c]	: Process ID 101 ---------------------*/
	Runn10,		/* on [Timed_Trigger.c]	: Process ID 110 ---------------------*/
	Runn11,		/* on [Timed_Trigger.c]	: Process ID 111 ---------------------*/
	Runn20,		/* on [Timed_Trigger.c]	: Process ID 120 ---------------------*/
	Runn21,		/* on [Timed_Trigger.c]	: Process ID 121 ---------------------*/
	Runn_Dummy,	/* on [xxxxxxxxxxxxx.c]	: Process ID nnn ---------------------*/
	Runn_Dummy,	/* on [xxxxxxxxxxxxx.c]	: Process ID nnn ---------------------*/
	Runn_Dummy	/* on [xxxxxxxxxxxxx.c]	: Process ID nnn ---------------------*/
};


uint8 Map_STM_Runn[3][2] = {{10, 10},
							{10, 10},
							{10, 10}};
/*----------------------------------------------------------------------------*/

uint8 Test_message_count = 0;

int SetMCU(void)
{
    Device_IF_Setup();

    Configuration_System();

    printf_SysLog("\nGo...\r\n\n");

    return 1;
}

void Runn_Dummy(void)
{


}

// TCP_Raw_Structure * tx_str;

int Errrr = 0;

void Core0_free(void)
{
	// To do...
#if SOMEIP_Server_Opt

	if(Test_message_count == 0)
	{
		TxSOMEIP_Test();
		Test_message_count = 1;
	}

#endif

#if SOMEIP_Client_Opt



#endif


	Ifx_Lwip_pollTimerFlags();
	Ifx_Lwip_pollReceiveFlags();

}



void Core1_free(void)
{
	// To do...

}

void Core2_free(void)
{
	// To do...
}

void Runn00(void)
{
	// To do...
}

void Runn01(void)
{
	/*if(bLEDtoggle[3])
	{
		IO_setBit_LED(3, bLEDtoggle[3]);
		bLEDtoggle[3] = 0;
	}
	else
	{
		IO_setBit_LED(3, bLEDtoggle[3]);
		bLEDtoggle[3] = 1;
	}*/
}

void Runn10(void)
{
	/*if(bLEDtoggle[4])
	{
		IO_setBit_LED(4, bLEDtoggle[4]);
		bLEDtoggle[4] = 0;
	}
	else
	{
		IO_setBit_LED(4, bLEDtoggle[4]);
		bLEDtoggle[4] = 1;
	}*/
}

void Runn11(void)
{
	/*if(bLEDtoggle[5])
	{
		IO_setBit_LED(5, bLEDtoggle[5]);
		bLEDtoggle[5] = 0;
	}
	else
	{
		IO_setBit_LED(5, bLEDtoggle[5]);
		bLEDtoggle[5] = 1;
	}*/
}

void Runn20(void)
{
	/*if(bLEDtoggle[6])
	{
		IO_setBit_LED(6, bLEDtoggle[6]);
		bLEDtoggle[6] = 0;
	}
	else
	{
		IO_setBit_LED(6, bLEDtoggle[6]);
		bLEDtoggle[6] = 1;
	}*/
}

void Runn21(void)
{
	/*if(bLEDtoggle[7])
	{
		IO_setBit_LED(7, bLEDtoggle[7]);
		bLEDtoggle[7] = 0;
	}
	else
	{
		IO_setBit_LED(7, bLEDtoggle[7]);
		bLEDtoggle[7] = 1;
	}*/
}














