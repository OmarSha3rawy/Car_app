
#include "../Dio_Src/Dio.h"
#include "Dio_Cfg.h"


const Dio_ChannelCfgTyp Dio_CfgArr [NUM_OF_CHANNELS] = 
{
    //SW_0
    {
        PORT_D,
        P0,
        STD_INPUT,
        DIO_PUL_DIS,
        DIO_DNT_CARE
    },
    //SW_1
    {
        PORT_D,
        P1,
        STD_INPUT,
        DIO_PUL_DIS,
        DIO_DNT_CARE
    },
    //SW_2
    {
        PORT_D,
        P2,
        STD_INPUT,
        DIO_PUL_DIS,
        DIO_DNT_CARE
    },
	//TST_PIN
	{
		PORT_D,
		P3,
		STD_OUTPUT,
		DIO_DNT_CARE,
		STD_LOW
	},
    //LED_0
    {
        /*TODO: - Configure Led_0 (PORTD_5)*/  /* SHA3RAWY */
		PORT_D,
		P5,
		STD_OUTPUT,
		DIO_DNT_CARE,
		STD_LOW
    },
    //LED_1
    {
        /*TODO: - Configure Led_1 (PORTD_6)*/  /* SHA3RAWY */
		PORT_D,
		P6,
		STD_OUTPUT,
		DIO_DNT_CARE,
		STD_LOW
    },
    //LED_2
    {
        /*TODO: - Configure Led_2 (PORTD_7)*/  /* SHA3RAWY */
		PORT_D,
		P7,
		STD_OUTPUT,
		DIO_DNT_CARE,
		STD_LOW
    },
	
};