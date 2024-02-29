/*
 * barrier.c
 *
 *  Created on: 2017. 11. 15.
 *      Author: Hyunsu.An
 */

#include <Ifx_Types.h>
#include "SysTools_Barrier.h"

volatile uint8 mycnt;

void barrier(bar_name *bar, int p)
{
	if(bar->cnt == 0){
		bar->flag = 0;
	}
	bar->cnt++;
	mycnt = bar->cnt;
	if(mycnt == p){
		bar->cnt = 0;
		bar->flag = 1;
	}
	else
		while(bar->flag == 0)
		{};
}
