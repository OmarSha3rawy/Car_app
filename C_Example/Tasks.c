/*
 * Tasks.c
 *
 * Created: 8/4/2018 10:34:08 PM
 *  Author: M.Fekry
 */ 


#include "Tasks.h"

void Task_Init(void)
{
	// Modules Init		
		(void) Dio_Init();
		(void) Led_Init();
		(void) Sw_Init();
		//(void) Seg7_Init();
		WinBtn_Init();
		Pos_Init();
		Motor_Init();
		Mod_Init();
		T0_Timer0_Init();
}

void Task_500us(void)
{

}

void Task_1ms (void)
{
		
}
void Task_2ms (void)
{

}
void Task_5ms (void)
{
	
}
void Task_10ms (void)
{
	Sw_UpdateState_Cyclic();
	Pos_Cyclic();
}
void Task_20ms (void)
{
	
}
void Task_50ms (void)
{
	Mod_Cyclic();
}
void Task_100ms (void)
{

}

void Task_200ms (void)
{
	
}
void Task_500ms (void)
{
	
}
void Task_1000ms (void)
{
	
}
void Task_2000ms (void)
{
		
}