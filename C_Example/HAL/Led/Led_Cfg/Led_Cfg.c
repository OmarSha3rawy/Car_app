/*
 * CFile1.c
 *
 * Created: 7/31/2018 1:21:12 AM
 *  Author: M.Fekry
 */ 
#include "Led_Cfg.h"
#include "../Led_Src/Led.h"

const Led_CfgTyp Led_CfgArr [LED_NUM_OF_LEDS] =
{
	//Led0
	{
		DIO_LED_0,
		STD_ACTIVE_HIGH,
		LED_OFF		
	},
	//Led1
	{
		DIO_LED_1,
		STD_ACTIVE_HIGH,
		LED_OFF
	},
	//Led2
	{
		DIO_LED_2,
		STD_ACTIVE_HIGH,
		LED_ON
	}
};