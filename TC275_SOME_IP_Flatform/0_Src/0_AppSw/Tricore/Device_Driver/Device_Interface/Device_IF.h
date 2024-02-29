/*
 * Device_Interface.h
 *
 *  Created on: 2018. 8. 9.
 *      Author: JW_Park
 */

#ifndef DEVICE_INTERFACE_H_
#define DEVICE_INTERFACE_H_

#include "System_Configuration.h"
#include "SysCFG_Log.h"
#include "Device_IF_LED.h"
#include "Device_IF_PBSW.h"
#include "Device_IF_CAN.h"
#include "Device_IF_ETH.h"

#include "Event_Trigger.h"


void Device_IF_Setup(void);



#endif /* DEVICE_INTERFACE_H_ */
