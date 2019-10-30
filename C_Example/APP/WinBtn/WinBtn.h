/*
 * WinBtn.h
 *
 * Created: 3/10/2019 12:16:31 AM
 *  Author: Fekry_PC
 */ 


#ifndef WINBTN_H_
#define WINBTN_H_

/*Includes*/
#include "../../Std_Headers/Std_Types.h"
#include "../../Std_Headers/Std_Macros.h"
#include "../../HAL/Switch/Switch_Src/Switch.h"

/*Types*/
typedef enum{
	WINBTN_IDLE = 0u,
	WINBTN_UP,
	WINBTN_DOWN
	}WinBtn_StateTyp;

/*Function Prototypes*/
extern void WinBtn_Init (void);
extern WinBtn_StateTyp WinBtn_GetWinBtnState (void);

#endif /* WINBTN_H_ */