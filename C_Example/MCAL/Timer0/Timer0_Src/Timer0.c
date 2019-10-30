/*
 * Timer0.c
 *
 * Created: 3/3/2019 10:34:08 PM
 *  Author: M.Fekry
 */ 

#include "Timer0.h"
#include "../Timer0_Cfg/Timer0_Cfg.h"


void T0_Timer0_Init(void)
{
    //Timer0 Init
		//Select Mode : CTC
			STD_CLR_BIT(TCCR0,WGM00);
			STD_SET_BIT(TCCR0,WGM01);
		// Enable Output Compare Interrupt Mask
			STD_SET_BIT(TIMSK,OCIE0);
		//Update OC Reg
			OCR0 = 62;
		//Clear TCNT
			TCNT0 = 0u;
		//Select PreScaler : 64
			STD_SET_BIT(TCCR0,CS00);
			STD_SET_BIT(TCCR0,CS01);
			STD_CLR_BIT(TCCR0,CS02);
		//Enable Global Interrupt
			sei();
}


ISR (TIMER0_COMP_vect)
{
	TIMER0_COMP_HANDLER();
}