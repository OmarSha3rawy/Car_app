/*
 * Pos.h
 *
 * Created: 3/9/2019 10:17:05 PM
 *  Author: Fekry_PC
 */ 


#ifndef POS_H_
#define POS_H_

/*Includes*/
#include "../../Std_Headers/Std_Types.h"
#include "../../Std_Headers/Std_Macros.h"
#include "../../HAL/Switch/Switch_Src/Switch.h"

/*Types*/
typedef uint8 Pos_PositionTyp;

/*Function Prototypes*/
extern void Pos_Init (void);
extern void Pos_Cyclic (void);
extern Pos_PositionTyp Pos_GetWindowPos (void);


#endif /* POS_H_ */