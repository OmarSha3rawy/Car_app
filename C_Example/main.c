/*
 * GccApplication1.c
 *
 * Created: 7/20/2018 5:38:12 PM
 * Author : M.Fekry
 */ 

#include "main.h"

volatile boolean u8IsTickCountersUpdated = STD_FALSE;
volatile uint16 u16Counter_1ms = 0 ;
volatile uint16 u16Counter_500us = 0;

int main(void)
{
	Task_Init();
	
    while (1) 
    {

		if (u8IsTickCountersUpdated == STD_TRUE)
		{
			u8IsTickCountersUpdated = STD_FALSE;

			if (u16Counter_500us % 1 == 0)
			{
				Task_500us();
			}
			
			if (u16Counter_1ms % 1 == 0)
			{
				Task_1ms();
			}
			
			if (u16Counter_1ms % 2 == 0)
			{
				Task_2ms();
			}
			
			if (u16Counter_1ms % 5 == 0)
			{
				Task_5ms();
			}

			if (u16Counter_1ms % 10 == 0)
			{
				Task_10ms();
			}
			
			if (u16Counter_1ms % 20 == 0)
			{
				Task_20ms();
			}
			
			if (u16Counter_1ms % 50 == 0)
			{
				Task_50ms();
			}
			
			if (u16Counter_1ms % 100 == 0)
			{
				Task_100ms();
			}
			
			if (u16Counter_1ms % 200 == 0)
			{
				Task_200ms();
			}
			
			if (u16Counter_1ms % 500 == 0)
			{
				Task_500ms();
			}
			
			if (u16Counter_1ms % 1000 == 0)
			{
				Task_1000ms();
			}
			
			if (u16Counter_1ms % 2000 == 0)
			{
				Task_2000ms();
			}
		}
	}
}


void Timer0_500us_Cbk(void)
{
	u8IsTickCountersUpdated = STD_TRUE;
	static boolean IsPeriod_1ms = STD_TRUE;
	
	IsPeriod_1ms = !IsPeriod_1ms;

	if (IsPeriod_1ms == STD_TRUE)
	{
		u16Counter_1ms++;

		if (u16Counter_1ms == 2000u)
		{
			u16Counter_1ms = 0u;
		}
	}
	
	u16Counter_500us = (u16Counter_500us+1)%2;
	
	
}
