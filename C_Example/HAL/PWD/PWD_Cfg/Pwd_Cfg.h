/*
 * Pwd_Cfg.h
 *
 * Created: 8/5/2018 12:11:42 AM
 *  Author: M.Fekry
 */ 


#ifndef _PWD_CFG_H_
#define _PWD_CFG_H_
#include "../../../MCAL/Dio/Dio_Src/Dio.h"
#include "../PWD_Src/Pwd.h"
typedef struct 
{
	Dio_ChannelIdTyp PwdChId;	
}Pwd_CfgTyp;

extern const Pwd_CfgTyp Pwd_CfgArr [PWD_NUM_OF_SIGNALS];



#endif /* PWD_CFG_H_ */