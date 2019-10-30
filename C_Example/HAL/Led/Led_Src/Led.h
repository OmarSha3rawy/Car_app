/*
 * Led.h
 *
 * Created: 7/31/2018 1:21:37 AM
 *  Author: M.Fekry
 */ 


#ifndef _LED_H_
#define _LED_H_

#include "../../../MCAL/Dio/Dio_Src/Dio.h"
#include "../../../Std_Headers/Controller.h"
#include "../../../Std_Headers/Kit.h"
#include "../../../Std_Headers/Std_Macros.h"
#include "../../../Std_Headers/Std_Types.h"
#include "../Led_Cfg/Led_Cfg.h"

#define LED_OFF (0u)
#define LED_ON	(1u)

typedef enum {LED_MOTOR_UP , LED_MOTOR_DOWN , LED_LED2 , LED_NUM_OF_LEDS}Led_LedIdTyp;
typedef enum {LED_INITALIZED , LED_UNINITIALIZED}Led_InitTyp;
	
extern Std_RetTyp Led_Init(void);
extern Std_RetTyp Led_ON(Led_LedIdTyp LedId);
extern Std_RetTyp Led_OFF(Led_LedIdTyp LedId);
extern Std_RetTyp Led_Toggle(Led_LedIdTyp LedId);
	
extern const Led_CfgTyp Led_CfgArr [LED_NUM_OF_LEDS];



#endif /* LED_H_ */