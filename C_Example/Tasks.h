/*
 * Tasks.h
 *
 * Created: 8/4/2018 10:37:59 PM
 *  Author: M.Fekry
 */ 


#ifndef _TASKS_H_
#define _TASKS_H_

#include "Std_Headers/Std_Types.h"
#include "Std_Headers/Std_Macros.h"
#include "Std_Headers/Kit.h"
#include "Std_Headers/Controller.h"
#include "MCAL/Dio/Dio_Src/Dio.h"
#include "MCAL/Timer0/Timer0_Src/Timer0.h"
#include "MCAL/Timer0/Timer0_Src/Timer0.h"
#include "HAL/Led/Led_Src/Led.h"
#include "HAL/Switch/Switch_Src/Switch.h"
#include "APP/MOD/Mod.h"
#include "APP/Motor/Motor.h"
#include "APP/POS/Pos.h"
#include "APP/WinBtn/WinBtn.h"


#define D4 eS_PORTA4
#define D5 eS_PORTA5
#define D6 eS_PORTA6
#define D7 eS_PORTA7
#define RS eS_PORTB1
#define EN eS_PORTB3



#include <avr/io.h>
#include <util/delay.h>

extern uint16 Adc_Read(uint8 AdcChannel);

extern void Task_500us(void);
extern void Task_Init(void);
extern void Task_1ms(void);
extern void Task_2ms(void);
extern void Task_5ms(void);
extern void Task_10ms(void);
extern void Task_20ms(void);
extern void Task_50ms(void);
extern void Task_100ms(void);
extern void Task_200ms(void);
extern void Task_500ms(void);
extern void Task_1000ms(void);
extern void Task_2000ms(void);

#endif /* TASKS_H_ */