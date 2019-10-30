#ifndef _DIO_H_
#define _DIO_H_

#include "../../../Std_Headers/Std_Macros.h"
#include "../../../Std_Headers/Std_Types.h"
#include "../../../Std_Headers/Controller.h"

#define CHECKS 5

typedef enum{
	DIO_SW_0,
	DIO_SW_1,
	DIO_SW_2,
	DIO_TST_PIN,
	DIO_LED_0,
	DIO_LED_1,
	DIO_LED_2,

	NUM_OF_CHANNELS
}Dio_ChannelIdTyp;


Std_RetTyp Dio_SetDir(Dio_ChannelIdTyp ChannelId) ;
Std_RetTyp Dio_Write (Dio_ChannelIdTyp ChannelId , boolean u8Value);
Std_RetTyp Dio_Read  (Dio_ChannelIdTyp ChannelId , boolean* u8pValuePtr);
Std_RetTyp Dio_Init  (void);
Std_RetTyp Dio_Init_Channel (Dio_ChannelIdTyp ChannelId);
Std_RetTyp Dio_SetChannel (Dio_ChannelIdTyp ChannelId);
Std_RetTyp Dio_ClearChannel (Dio_ChannelIdTyp ChannelId);
Std_RetTyp Dio_ToggleChannel (Dio_ChannelIdTyp ChannelId);


#endif 