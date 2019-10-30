#ifndef _SEG_7_CFG_H_
#define _SEG_7_CFG_H_

#include "../../../Std_Headers/Std_Types.h"
#include "../Seg7_Src/Seg7.h"
typedef struct
{
	Dio_ChannelIdTyp EnablePinId;
	Dio_ChannelIdTyp Seg7AId;
	Dio_ChannelIdTyp Seg7BId;
	Dio_ChannelIdTyp Seg7CId;
	Dio_ChannelIdTyp Seg7DId;
	Dio_ChannelIdTyp Seg7DPId;
	uint8            InitValue;

}Seg7_CfgTyp;

#endif