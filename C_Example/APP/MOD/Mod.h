/*
 * Mod.h
 *
 * Created: 3/9/2019 10:15:06 PM
 *  Author: Fekry_PC
 */ 


#ifndef MOD_H_
#define MOD_H_
/*Includes*/
#include "../Motor/Motor.h"
#include "../POS/Pos.h"
#include "../WinBtn/WinBtn.h"

/*Public Types*/
typedef enum{
	OFF_STATE = 0,
	UP_STATE,
	DOWN_STATE
}Mod_StateTyp;

/*Function Prototypes*/
extern void Mod_Init (void);
extern void Mod_Cyclic (void);
extern Mod_StateTyp Mod_GetCurrentMode (void);

#endif /* MOD_H_ */