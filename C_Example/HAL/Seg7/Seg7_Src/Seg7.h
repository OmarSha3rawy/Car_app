
#ifndef _SEG_7_H_
#define _SEG_7_H_

#include "../../../Std_Headers/Controller.h"
#include "../../../Std_Headers/Std_Types.h"
#include "../../../Std_Headers/Std_Macros.h"
#include "../../../Std_Headers/Kit.h"
#include "../../../MCAL/Dio/Dio_Src/Dio.h"
#include "../Seg7_Cfg/Seg7_Cfg.h"

typedef enum { SEG7_DISPLAY0 , SEG7_DISPLAY1 , SEG7_NUM_OF_DIS }Seg7_IdTyp;

extern const Seg7_CfgTyp Seg7_CfgArr[SEG7_NUM_OF_DIS] ;


Std_RetTyp Seg7_Init(void);
Std_RetTyp Seg7_UpdateDisplays(void);
Std_RetTyp Seg7_WriteBuffer(Seg7_IdTyp Seg7Id, uint8 u8DisplayValue);
Std_RetTyp Seg7_DpValue (Seg7_IdTyp Seg7Id, uint8 bDpState);

#endif