/*
 * Pos.c
 *
 * Created: 3/9/2019 10:17:25 PM
 *  Author: Fekry_PC
 */ 

/*Includes*/
#include "Pos.h"
#include "../MOD/Mod.h"

/*Private Macros*/
#define POS_INCREASE 1u
#define POS_DECREASE 0u
#define POS_STEP	 5u
/*Global Variables*/

/*Static Globals*/
static Pos_PositionTyp  G_WindowPos = 0u;

/*Private Functions*/

/*Functions*/
void Pos_Init (void)
{
	G_WindowPos = 0u;
}

void Pos_Cyclic (void)
{
	boolean PosSwitch = STD_FALSE;
	Mod_StateTyp PosDirection = Mod_GetCurrentMode();
	
	Sw_GetState(SW_POS, &PosSwitch);
	
	if (STD_TRUE == PosSwitch)
	{
		if (UP_STATE == PosDirection)
		{
			if (100u != G_WindowPos)
			{
				G_WindowPos += POS_STEP;
			}
		} 
		else if (DOWN_STATE == PosDirection)
		{
			if (0u != G_WindowPos)
			{
				G_WindowPos -= POS_STEP;
			}
		}
	}
}


Pos_PositionTyp Pos_GetWindowPos (void)
{
	return G_WindowPos;
}