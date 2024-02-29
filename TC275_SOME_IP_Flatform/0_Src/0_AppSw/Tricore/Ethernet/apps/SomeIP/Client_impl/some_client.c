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

void someip_service_init(void)
{

}

#endif
