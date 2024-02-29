/*
 * some_service.h
 *
 *  Created on: 2024. 2. 28.
 *      Author: Sungbhin Oh
 */

#ifndef SOME_SERVICE_H_
#define SOME_SERVICE_H_

#include "Application.h"

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN struct udp_pcb *some_server_pcb;
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void someip_service_init (void);
void someip_find_callback();
void someip_subscribe_callback();
void someip_offer_service();

#endif /* SOME_SERVICE_H_ */
