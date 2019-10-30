/*
 * Switch_Cfg.c
 *
 * Created: 8/2/2018 1:08:11 AM
 *  Author: M.Fekry
 */ 

#include "../Switch_Cfg/Switch_Cfg.h"
#include "../Switch_Src/Switch.h"

const Sw_SwTyp Sw_CfgArr [SW_NUM_OF_SW] =
{
	//WinUp
	{
		DIO_SW_0,
		STD_ACTIVE_HIGH
	},
	//WinDown
	{
		DIO_SW_1,
		STD_ACTIVE_HIGH
	},
	//POS
	{
		DIO_SW_2,
		STD_ACTIVE_HIGH
	}
};