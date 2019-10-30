/*
 * Switch_Cfg.h
 *
 * Created: 8/2/2018 1:02:18 AM
 *  Author: M.Fekry
 */ 


#ifndef _SWITCH_CFG_H_
#define _SWITCH_CFG_H_

#include "../../../MCAL/Dio/Dio_Src/Dio.h"

typedef struct  
{
	Dio_ChannelIdTyp Sw_Id;
	boolean ActiveState;
}Sw_SwTyp;


#endif /* SWITCH_CFG_H_ */