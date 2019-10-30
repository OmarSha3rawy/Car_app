/*
 * Switch.h
 *
 * Created: 8/2/2018 1:05:47 AM
 *  Author: M.Fekry
 */ 


#ifndef _SWITCH_H_
#define _SWITCH_H_

#include "../../../Std_Headers/Std_Types.h"
#include "../../../Std_Headers/Std_Macros.h"
#include "../../../Std_Headers/Controller.h"
#include "../../../Std_Headers/Kit.h"
#include "../../../MCAL/Dio/Dio_Src/Dio.h"

#include "../Switch_Cfg/Switch_Cfg.h"

typedef enum 
	{
		SW_WIN_UP, 
		SW_WIN_DOWN, 
		SW_POS,
		SW_NUM_OF_SW
	}Sw_SwIdTyp;
	
typedef enum {SW_INITALIZED , SW_UNINITIALIZED}Sw_InitTyp;

Std_RetTyp Sw_Init(void);
Std_RetTyp Sw_UpdateState_Cyclic(void);
Std_RetTyp Sw_GetState (Sw_SwIdTyp SwId , boolean* SwState);
Std_RetTyp Sw_GetStateOnce (Sw_SwIdTyp SwId , boolean* SwState);


	
extern const Sw_SwTyp Sw_CfgArr [SW_NUM_OF_SW];



#endif /* SWITCH_H_ */