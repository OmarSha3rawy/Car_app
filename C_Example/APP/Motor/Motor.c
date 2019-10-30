/*
 * Motor.c
 *
 * Created: 3/9/2019 10:28:52 PM
 *  Author: Fekry_PC
 */ 

/*Includes*/
#include "Motor.h"
#include "../../HAL/Led/Led_Src/Led.h"

/*Private Macros*/

/*Global Variables*/
Motor_DirectionTyp Gb_Motor = MOTOR_OFF;
/*Static Globals*/

/*Private Functions*/
static void Motor_DriveOff(void)
{
	Led_OFF(LED_MOTOR_UP);
	Led_OFF(LED_MOTOR_DOWN);
	Gb_Motor = MOTOR_OFF;
}

static void Motor_DriveUp(void)
{
	Led_OFF(LED_MOTOR_DOWN);
	Led_ON(LED_MOTOR_UP);
	Gb_Motor = MOTOR_UP;
}

static void Motor_DriveDown(void)
{
	Led_OFF(LED_MOTOR_UP);
	Led_ON(LED_MOTOR_DOWN);
	Gb_Motor = MOTOR_DOWN;
}

/*Functions*/
void Motor_Init(void)
{
	/*TODO: - Init Globla Variables 
			- Switch Motor OFF
	*/
	/* SHA3RAWY */
	Gb_Motor = MOTOR_OFF;

}


Std_RetTyp Motor_DriveMotor (Motor_DirectionTyp MotorDir)
{
	Std_RetTyp RetVal = STD_OK;
	
	if (MOTOR_OFF == MotorDir)
	{
		Motor_DriveOff();
	}
	else if (MOTOR_UP == MotorDir)
	{
		Motor_DriveUp();
	}
	else if (MOTOR_DOWN == MotorDir)
	{
		Motor_DriveDown();
	}
	else
	{
		RetVal = STD_NOT_OK;
	}
	
	return RetVal;
}