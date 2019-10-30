/*
 * Pwd.h
 *
 * Created: 8/5/2018 12:11:08 AM
 *  Author: M.Fekry
 */ 


#ifndef _PWD_H_
#define _PWD_H_

#include "../../../Std_Headers/Controller.h"
#include "../../../Std_Headers/Std_Types.h"
#include "../../../Std_Headers/Std_Macros.h"
#include "../../../Std_Headers/Kit.h"

typedef enum {PWD_0 , PWD_NUM_OF_SIGNALS}Pwd_IdTyp;
typedef enum {PWD_IDLE , PWD_RISING_EDGE , PWD_HIGH_WAIT , PWD_FALLING_EDGE , PWD_LOW_WAIT , PWD_FINISH}Pwd_StateTyp;
typedef enum {PWD_UNINITIALIZED , PWD_INITIALIZED}Pwd_InitTyp;
	
Std_RetTyp Pwd_Init (void);
Std_RetTyp Pwd_CalcValues (void);
Std_RetTyp Pwd_GetDuty (Pwd_IdTyp PwdId , uint8* Duty);
Std_RetTyp Pwd_GetFrequency (Pwd_IdTyp PwdId , uint16* Freq);
void Pwd_Counters (void);


#endif /* PWD_H_ */