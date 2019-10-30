#ifndef _DIO_CFG_H_
#define _DIO_CFG_H_

#include "../../../Std_Headers/Std_Types.h"

#define DIO_DNT_CARE (2u)
#define DIO_PUL_EN   STD_TRUE
#define DIO_PUL_DIS  STD_FALSE

typedef struct
{
	ePortsTyp PinPort;
	ePinsTyp  PinNum;
	boolean PinDir;
	boolean isPullUp;
	boolean initVal;
}Dio_ChannelCfgTyp;


extern const Dio_ChannelCfgTyp Dio_CfgArr [NUM_OF_CHANNELS];


#endif