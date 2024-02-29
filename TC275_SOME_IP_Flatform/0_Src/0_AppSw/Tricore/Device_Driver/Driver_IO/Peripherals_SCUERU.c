/*
 * Peripherals_SCUERU.c
 *
 *  Created on: 2018. 11. 26.
 *      Author: JW_Park
 */


#include "Src/Std/IfxSrc.h"
#include "IfxPort.h"
#include "Peripherals.h"
#include "Peripherals_SCUERU.h"

typedef struct
{
    volatile uint32 count;
} App_ScuEru;


App_ScuEru pSCUERU02;
App_ScuEru pSCUERU22;

#define prefilter_i_avg 50
#define prefilter_i_median 20


int bSCUERU02_edge = 0;
int cnt_scueru = 0;

static unsigned int val_US = 0;
static unsigned int val_US_temp = 0;
static unsigned int i_cmp_stm = 0;
static unsigned int imax_cmp_stm = prefilter_i_avg;
static unsigned int i_cmp_stm2 = 0;
static unsigned int cnt_stm_first = 0;
static unsigned int cnt_stm_second = 0;
static unsigned int cur_cmp_stm = 0;
static unsigned int cmp_stm[prefilter_i_avg] = {0,};
static unsigned int cmp_stm_f[prefilter_i_avg] = {0,};
static unsigned int cmp_stm_f_temp;


/* Kalman Filer */
float us_x[3] = {0,};
float us_x_temp = 0;

float x_est_last = 0;
float P_last = 0;
//the noise in the system
float Q = 0.1;
float R = 0.3;

float K;
float P;
float P_temp;
float x_temp_est;
float x_est;


/******************************************************************************/
#if SCUERU02 /*-------------------- External Interrupt ERU02 -----------------*/
/******************************************************************************/

void ISR_SCUERU_02(void)
{
	get_USvalue_Mechanism();
	IfxCpu_enableInterrupts();
}

void setPort_SCUERU02(void)
{
	 /* disable interrupts */
	    boolean        interruptState = IfxCpu_disableInterrupts();

	    /* select external request pin */
	    IfxScu_Req_In *reqPin = &IfxScu_REQ4_P10_7_IN;

	    /* initialize this pin with pull-up enabled */
	    /* this function will also configure the input multiplexers of the ERU (EICRm.EXISx) */
	    IfxScuEru_initReqPin(reqPin, IfxPort_InputMode_pullUp);

	    /* determine input channel EICRm depending on input pin */
	    IfxScuEru_InputChannel inputChannel = (IfxScuEru_InputChannel)reqPin->channelId;

	    /* signal destination */
	    IfxScuEru_InputNodePointer triggerSelect = IfxScuEru_InputNodePointer_0;                           /* TRx0 */
	    IfxScuEru_OutputChannel    outputChannel = IfxScuEru_OutputChannel_0;                              /* OGU channel 0 */

	    /* input channel configuration */
	    IfxScuEru_disableRisingEdgeDetection(inputChannel);
	    IfxScuEru_enableFallingEdgeDetection(inputChannel);                                               /* EICRm.FENn */
	                                                   /* EICRm.RENn */
	    IfxScuEru_enableAutoClear(inputChannel);                                                           /* EICRm.LDENn */

	    /* Connecting Matrix, Event Trigger Logic ETL block */
	    IfxScuEru_enableTriggerPulse(inputChannel);                                                        /* EICRm.EIENn */
	    IfxScuEru_connectTrigger(inputChannel, triggerSelect);                                             /* EICRm.INPn */

	    /* output channels, OutputGating Unit OGU block */
	    IfxScuEru_setFlagPatternDetection(outputChannel, inputChannel, TRUE);                              /* IGCRm.IPENn */
	    IfxScuEru_enablePatternDetectionTrigger(outputChannel);                                            /* IGCRm.GEENn */
	    IfxScuEru_setInterruptGatingPattern(outputChannel, IfxScuEru_InterruptGatingPattern_alwaysActive); /* IGCEm.IGPn */

	    /* service request configuration */
	    {
	        volatile Ifx_SRC_SRCR *src = &MODULE_SRC.SCU.SCU.ERU[(int)outputChannel % 4];
	        IfxSrc_init(src, ISR_PRIORITY_SCUERU_0_ISR_Provider, ISR_PRIORITY_SCUERU_0);
	        IfxSrc_enable(src);
	    }

	    //IFX_INTERRUPT(ISR_ScuEru, 0, ISR_PRIORITY_SCUERU_0);
	    IfxCpu_Irq_installInterruptHandler(ISR_SCUERU_02, ISR_PRIORITY_SCUERU_0);

	    /* enable interrupts again */
	    IfxCpu_restoreInterrupts(interruptState);


	  //  printf("Scu Eru is initialised and running\n");
}

void setPort_SCUERU02_edge(int dir)
{
	/* select external request pin */
	IfxScu_Req_In *reqPin = &IfxScu_REQ4_P10_7_IN;

	/* determine input channel EICRm depending on input pin */
	IfxScuEru_InputChannel inputChannel = (IfxScuEru_InputChannel)reqPin->channelId;

	/* input channel configuration */
	if(dir == 1)
	{
		IfxScuEru_enableRisingEdgeDetection(inputChannel);
		IfxScuEru_disableFallingEdgeDetection(inputChannel);
		bSCUERU02_edge = 1;
	}
	else if(dir == 0)
	{
		IfxScuEru_disableRisingEdgeDetection(inputChannel);
		IfxScuEru_enableFallingEdgeDetection(inputChannel);
		bSCUERU02_edge = 0;
	}
}

unsigned int get_USvalue(void)
{
	return val_US;
}


void get_USvalue_Mechanism(void)
{
	cnt_scueru++;
	if(cnt_scueru > 5)
	{
		if(bSCUERU02_edge == 1)
		{
			cnt_stm_first = IO_getSTM0Tic()/100;
			setPort_SCUERU02_edge(0);
		}
		else if(bSCUERU02_edge == 0)
		{
			cnt_stm_second = IO_getSTM0Tic()/100;
			setPort_SCUERU02_edge(1);
			cur_cmp_stm = cnt_stm_second - cnt_stm_first;
			if(cur_cmp_stm < 0) cmp_stm[0] = us_x[1];
			else cmp_stm[0] = cur_cmp_stm;

			/* Array alignment -------------------------------------------------------*/
			for(i_cmp_stm = prefilter_i_avg - 1; i_cmp_stm > 0; i_cmp_stm--)
			{
				cmp_stm[i_cmp_stm] = cmp_stm[i_cmp_stm - 1];
				cmp_stm_f[i_cmp_stm] = cmp_stm[i_cmp_stm];
			}

			/* Insert alignment ------------------------------------------------------*/
			for(i_cmp_stm = 0; i_cmp_stm < prefilter_i_avg; i_cmp_stm++)
			{
				cmp_stm_f_temp = cmp_stm_f[i_cmp_stm];
				for(i_cmp_stm2 = i_cmp_stm; i_cmp_stm2 > 0; i_cmp_stm2--)
				{
					if(cmp_stm_f[i_cmp_stm2 - 1] > cmp_stm_f_temp)
					{
						cmp_stm_f[i_cmp_stm2] = cmp_stm_f[i_cmp_stm2 - 1];
						if(i_cmp_stm2 == 1)
						{
							cmp_stm_f[i_cmp_stm2 - 1]= cmp_stm_f_temp;
							break;
						}
					}
					else
					{
						cmp_stm_f[i_cmp_stm2] = cmp_stm_f_temp;
						break;
					}
				}
			}

			/* median filter ---------------------------------------------------------*/
			us_x_temp = 0;
			int cnt_median = prefilter_i_avg - prefilter_i_median;
			for(i_cmp_stm = prefilter_i_median; i_cmp_stm < cnt_median; i_cmp_stm++)
			{
				us_x_temp += cmp_stm_f[i_cmp_stm];
			}

			us_x[2] = us_x[1];
			us_x[1] = us_x[0];
			us_x[0] = get_USvalue_KalmanF(us_x_temp / 1000.0);

			val_US = (int)us_x[0];
			cnt_scueru = 0;
		}
	}
}


float get_USvalue_KalmanF(float input)
{

   	//do a prediction
	x_temp_est = x_est_last;
	P_temp = P_last + Q;
	//calculate the Kalman gain
	K = P_temp * (1.0/(P_temp + R));

	x_est = x_temp_est + K * (input - x_temp_est);
	P = (1- K) * P_temp;

	//update our last's
	P_last = P;
	x_est_last = x_est;

    return x_est;
}


/******************************************************************************/
#else if !SCUERU02 /*---------------GPIO_LED dummy ---------------------------*/
/******************************************************************************/
void setPort_SCUERU02(void) {}
void setPort_SCUERU02_edge(int dir) {}
void ISR_SCUERU_02(void) {}
void get_USvalue_Mechanism(void) {}
float get_USvalue_KalmanF(float input){}
unsigned int get_USvalue(void) {}
/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/





/******************************************************************************/
#if SCUERU22 /*-------------------- External Interrupt ERU02 -----------------*/
/******************************************************************************/

void ISR_SCUERU_22(void)
{
	ISR_SCUERU_SWinput();
	IfxCpu_enableInterrupts();
}

void setPort_SCUERU22(void)
{
	 /* disable interrupts */
	    boolean        interruptState = IfxCpu_disableInterrupts();

	    /* select external request pin */
	    IfxScu_Req_In *reqPin = &IfxScu_REQ7_P00_4_IN;

	    /* initialize this pin with pull-up enabled */
	    /* this function will also configure the input multiplexers of the ERU (EICRm.EXISx) */
	    IfxScuEru_initReqPin(reqPin, IfxPort_InputMode_pullUp);

	    /* determine input channel EICRm depending on input pin */
	    IfxScuEru_InputChannel inputChannel = (IfxScuEru_InputChannel)reqPin->channelId;

	    /* signal destination */
	    IfxScuEru_InputNodePointer triggerSelect = IfxScuEru_InputNodePointer_2;                           /* TRx0 */
	    IfxScuEru_OutputChannel    outputChannel = IfxScuEru_OutputChannel_2;                              /* OGU channel 0 */

	    /* input channel configuration */
	    IfxScuEru_enableRisingEdgeDetection(inputChannel);													/* EICRm.FENn */
	    IfxScuEru_disableFallingEdgeDetection(inputChannel);     											 /* EICRm.RENn */
	    //IfxScuEru_enableAutoClear(inputChannel);                                                           /* EICRm.LDENn */

	    /* Connecting Matrix, Event Trigger Logic ETL block */
	    IfxScuEru_enableTriggerPulse(inputChannel);                                                        /* EICRm.EIENn */
	    IfxScuEru_connectTrigger(inputChannel, triggerSelect);                                             /* EICRm.INPn */

	    /* output channels, OutputGating Unit OGU block */
	    IfxScuEru_setFlagPatternDetection(outputChannel, inputChannel, TRUE);                              /* IGCRm.IPENn */
	    IfxScuEru_enablePatternDetectionTrigger(outputChannel);                                            /* IGCRm.GEENn */
	    IfxScuEru_setInterruptGatingPattern(outputChannel, IfxScuEru_InterruptGatingPattern_alwaysActive); /* IGCEm.IGPn */

	    /* service request configuration */
	    {
	        volatile Ifx_SRC_SRCR *src = &MODULE_SRC.SCU.SCU.ERU[(int)outputChannel % 4];
	        IfxSrc_init(src, ISR_PRIORITY_SCUERU_2_ISR_Provider, ISR_PRIORITY_SCUERU_2);
	        IfxSrc_enable(src);
	    }

	    //IFX_INTERRUPT(ISR_ScuEru, 0, ISR_PRIORITY_SCUERU_2);
	    IfxCpu_Irq_installInterruptHandler(ISR_SCUERU_22, ISR_PRIORITY_SCUERU_2);

	    /* enable interrupts again */
	    IfxCpu_restoreInterrupts(interruptState);


	  //  printf("Scu Eru is initialised and running\n");
}

/******************************************************************************/
#else if !SCUERU22 /*---------------GPIO_LED dummy ---------------------------*/
/******************************************************************************/
void setPort_SCUERU22(void) {}
void ISR_SCUERU_22(void) {}

/******************************************************************************/
#endif /*---------------------------------------------------------------------*/
/******************************************************************************/
