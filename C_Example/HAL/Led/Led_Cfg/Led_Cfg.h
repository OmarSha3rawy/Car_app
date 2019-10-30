/*
 * Led_Cfg.h
 *
 * Created: 7/31/2018 1:12:33 AM
 *  Author: M.Fekry
 */ 


#ifndef _LED_CFG_H_
#define _LED_CFG_H_

#include "../../../MCAL/Dio/Dio_Src/Dio.h"
#include "../../../Std_Headers/Controller.h"
#include "../../../Std_Headers/Kit.h"
#include "../../../Std_Headers/Std_Macros.h"
#include "../../../Std_Headers/Std_Types.h"


typedef struct
{
	Dio_ChannelIdTyp LedChannelId;
	boolean ActiveState;
	boolean InitVal;
}Led_CfgTyp;


#endif /* LED_CFG_H_ */