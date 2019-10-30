/*
 * Motor.h
 *
 * Created: 3/9/2019 10:30:15 PM
 *  Author: Fekry_PC
 */ 


#ifndef MOTOR_H_
#define MOTOR_H_

/*Includes*/
#include "../../Std_Headers/Std_Types.h"
#include "../../Std_Headers/Std_Macros.h"

/*Types*/
typedef enum{
MOTOR_OFF=0,
MOTOR_UP ,
MOTOR_DOWN
}Motor_DirectionTyp;

extern Motor_DirectionTyp Gb_Motor;
/*Function Prototypes*/
extern void Motor_Init(void);
extern Std_RetTyp Motor_DriveMotor (Motor_DirectionTyp MotorDir);
#endif /* MOTOR_H_ */