/*
 * WinBtn.c
 *
 * Created: 3/10/2019 12:17:00 AM
 *  Author: Fekry_PC
 */ 

/*Includes*/
#include "WinBtn.h"

/*Private Macros*/

/*Global Variables*/

/*Static Globals*/
static WinBtn_StateTyp G_ButtonState = WINBTN_IDLE;
/*Private Functions*/

/*Functions*/
void WinBtn_Init (void)
{
	G_ButtonState = WINBTN_IDLE;
}

WinBtn_StateTyp WinBtn_GetWinBtnState (void)
{
	WinBtn_StateTyp ButtonState = WINBTN_IDLE;
	boolean UpBtn   = STD_FALSE;
	boolean DownBtn = STD_FALSE;
	
	Sw_GetStateOnce(SW_WIN_UP,&UpBtn);
	Sw_GetStateOnce(SW_WIN_DOWN,&DownBtn);
	
	if (STD_TRUE == UpBtn)
	{
		ButtonState = WINBTN_UP;
	} 
	else if (STD_TRUE == DownBtn)
	{
		ButtonState = WINBTN_DOWN;
	}
	else
	{
		ButtonState = WINBTN_IDLE;
	}
	
	return ButtonState;
}