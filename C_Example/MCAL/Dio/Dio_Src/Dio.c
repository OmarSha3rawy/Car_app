

#include "Dio.h"
#include "../Dio_Cfg/Dio_Cfg.h"


Std_RetTyp Dio_Init_Channel (Dio_ChannelIdTyp ChannelId)
{
    Std_RetTyp retVal = STD_OK;
    const Dio_ChannelCfgTyp * CfgPtr = NULL;


    if (ChannelId >= NUM_OF_CHANNELS)
    {
        retVal = STD_NOT_OK;
    }
    else
    {
        CfgPtr = &Dio_CfgArr[ChannelId];
        
        retVal = Dio_SetDir(ChannelId);

        if (CfgPtr->PinDir == STD_INPUT)
        {
            #if (CHECKS == TRUE)
            if (CfgPtr->initVal != DIO_DNT_CARE)
            {
                retVal = STD_NOT_OK ;
            }
            #endif
            
        }
        else
        {
            #if (CHECKS == TRUE)
            if (CfgPtr->isPullUp != DIO_DNT_CARE)
            {
                retVal = STD_NOT_OK;
            }
            #endif
            retVal = Dio_Write(ChannelId , CfgPtr->initVal);
        }
    }
    
    return retVal ;
}

Std_RetTyp Dio_Init (void)
{
    Dio_ChannelIdTyp CurrentId;
    Std_RetTyp retVal = STD_OK;
    
    for (CurrentId = 0 ; CurrentId < NUM_OF_CHANNELS ; CurrentId++)
    {
        if (Dio_Init_Channel(CurrentId) == STD_NOT_OK) 
            retVal = STD_NOT_OK ;
    }

    return retVal;
}

Std_RetTyp Dio_SetDir(Dio_ChannelIdTyp ChannelId)
{
    const Dio_ChannelCfgTyp * CfgPtr = NULL;
    Std_RetTyp RetVal = STD_OK;

#if (CHECKS == TRUE)
    if (ChannelId >= NUM_OF_CHANNELS)
    {
        RetVal = STD_NOT_OK;
    }
    else
#endif
    {
        CfgPtr = &Dio_CfgArr[ChannelId];
#if (CHECKS == TRUE)
        if ( (CfgPtr->PinPort >= MAX_NUM_OF_PORTS)||(CfgPtr->PinNum >= MAX_NUM_OF_PINS)/*.||((CfgPtr->PinDir != STD_OUTPUT)&&(CfgPtr != STD_INPUT))*/)
        {
            RetVal = STD_NOT_OK;
        }
        else
#endif
        {
            switch(CfgPtr->PinPort)
            {
                case PORT_A:
                {
                    if (STD_OUTPUT == CfgPtr->PinDir) STD_SET_BIT(DDRA,CfgPtr->PinNum);
                    else STD_CLR_BIT(DDRA,CfgPtr->PinNum);
                }break;
                case PORT_B:
                {
                    if (STD_OUTPUT == CfgPtr->PinDir) STD_SET_BIT(DDRB,CfgPtr->PinNum);
                    else STD_CLR_BIT(DDRB,CfgPtr->PinNum);
                }break;
                case PORT_C:
                {
                    if (STD_OUTPUT == CfgPtr->PinDir) STD_SET_BIT(DDRC,CfgPtr->PinNum);
                    else STD_CLR_BIT(DDRC,CfgPtr->PinNum);
                }break;
                case PORT_D:
                {
                    if (STD_OUTPUT == CfgPtr->PinDir) STD_SET_BIT(DDRD,CfgPtr->PinNum);
                    else STD_CLR_BIT(DDRD,CfgPtr->PinNum);
                }break;
                default:
                {

                }

            }
        }

    }

    return RetVal;
}
Std_RetTyp Dio_Write (Dio_ChannelIdTyp ChannelId , boolean u8Value)
{
    const Dio_ChannelCfgTyp * CfgPtr = NULL;
    Std_RetTyp RetVal = STD_OK;

#if (CHECKS == TRUE)
    if (ChannelId >= NUM_OF_CHANNELS)
    {
        RetVal = STD_NOT_OK;
    }
    else
#endif
    {
        CfgPtr = &Dio_CfgArr[ChannelId];
#if (CHECKS == TRUE)
        if ( (CfgPtr->PinPort >= MAX_NUM_OF_PORTS)
             ||(CfgPtr->PinNum >= MAX_NUM_OF_PINS)
             ||(STD_OUTPUT != CfgPtr->PinDir))
        {
            RetVal = STD_NOT_OK;
        }
        else
#endif
        {
            switch(CfgPtr->PinPort)
            {
                case PORT_A:
                {
                    if (STD_HIGH == u8Value) STD_SET_BIT(PORTA,CfgPtr->PinNum);
                    else STD_CLR_BIT(PORTA,CfgPtr->PinNum);
                }break;
                case PORT_B:
                {
                    if (STD_HIGH == u8Value) STD_SET_BIT(PORTB,CfgPtr->PinNum);
                    else STD_CLR_BIT(PORTB,CfgPtr->PinNum);
                }break;
                case PORT_C:
                {
                    if (STD_HIGH == u8Value) STD_SET_BIT(PORTC,CfgPtr->PinNum);
                    else STD_CLR_BIT(PORTC,CfgPtr->PinNum);
                }break;
                case PORT_D:
                {
                    if (STD_HIGH == u8Value) STD_SET_BIT(PORTD,CfgPtr->PinNum);
                    else STD_CLR_BIT(PORTD,CfgPtr->PinNum);
                }break;
                default:
                {

                }

            }
        }

    }
    
    return RetVal;
}
Std_RetTyp Dio_Read  (Dio_ChannelIdTyp ChannelId , boolean* u8pValuePtr)
{
    const Dio_ChannelCfgTyp * CfgPtr = NULL;
    Std_RetTyp RetVal = STD_OK;

#if (CHECKS == TRUE)
    if (ChannelId >= NUM_OF_CHANNELS)
    {
        RetVal = STD_NOT_OK;
    }
    else
#endif
    {
        CfgPtr = &Dio_CfgArr[ChannelId];
#if (CHECKS == TRUE)
        if ( (CfgPtr->PinPort >= MAX_NUM_OF_PORTS)
             ||(CfgPtr->PinNum >= MAX_NUM_OF_PINS))
        {
            RetVal = STD_NOT_OK;
        }
        else
#endif
        {
            switch(CfgPtr->PinPort)
            {
                case PORT_A:
                {
                    *u8pValuePtr = STD_GET_BIT(PINA,CfgPtr->PinNum);
                }break;
                case PORT_B:
                {
                    *u8pValuePtr = STD_GET_BIT(PINB,CfgPtr->PinNum);
                }break;
                case PORT_C:
                {
                    *u8pValuePtr = STD_GET_BIT(PINC,CfgPtr->PinNum);
                }break;
                case PORT_D:
                {
                    *u8pValuePtr = STD_GET_BIT(PIND,CfgPtr->PinNum);
                }break;
                default:
                {

                }

            }
        }

    }
    
    return RetVal;
}

Std_RetTyp Dio_SetChannel (Dio_ChannelIdTyp ChannelId)
{
	const Dio_ChannelCfgTyp * CfgPtr = NULL;
	Std_RetTyp RetVal = STD_OK;

	#if (CHECKS == TRUE)
	if (ChannelId >= NUM_OF_CHANNELS)
	{
		RetVal = STD_NOT_OK;
	}
	else
	#endif
	{
		CfgPtr = &Dio_CfgArr[ChannelId];
		#if (CHECKS == TRUE)
		if ( (CfgPtr->PinPort >= MAX_NUM_OF_PORTS)
		||(CfgPtr->PinNum >= MAX_NUM_OF_PINS)
		||(CfgPtr->PinDir != STD_OUTPUT)
		)
		{
			RetVal = STD_NOT_OK;
		}
		else
		#endif
		{
			switch(CfgPtr->PinPort)
			{
				case PORT_A:
				{
					STD_SET_BIT(DDRA,CfgPtr->PinNum);
				}break;
				case PORT_B:
				{
					STD_SET_BIT(DDRB,CfgPtr->PinNum);
				}break;
				case PORT_C:
				{
					STD_SET_BIT(DDRC,CfgPtr->PinNum);
				}break;
				case PORT_D:
				{
					STD_SET_BIT(DDRD,CfgPtr->PinNum);
				}break;
				default:
				{

				}

			}
		}

	}

	return RetVal;
}

Std_RetTyp Dio_ClearChannel (Dio_ChannelIdTyp ChannelId)
{
	const Dio_ChannelCfgTyp * CfgPtr = NULL;
	Std_RetTyp RetVal = STD_OK;

	#if (CHECKS == TRUE)
	if (ChannelId >= NUM_OF_CHANNELS)
	{
		RetVal = STD_NOT_OK;
	}
	else
	#endif
	{
		CfgPtr = &Dio_CfgArr[ChannelId];
		#if (CHECKS == TRUE)
		if ( (CfgPtr->PinPort >= MAX_NUM_OF_PORTS)
		||(CfgPtr->PinNum >= MAX_NUM_OF_PINS)
		||(CfgPtr->PinDir != STD_OUTPUT)
		)
		{
			RetVal = STD_NOT_OK;
		}
		else
		#endif
		{
			switch(CfgPtr->PinPort)
			{
				case PORT_A:
				{
					STD_CLR_BIT(DDRA,CfgPtr->PinNum);
				}break;
				case PORT_B:
				{
					STD_CLR_BIT(DDRB,CfgPtr->PinNum);
				}break;
				case PORT_C:
				{
					STD_CLR_BIT(DDRC,CfgPtr->PinNum);
				}break;
				case PORT_D:
				{
					STD_CLR_BIT(DDRD,CfgPtr->PinNum);
				}break;
				default:
				{

				}

			}
		}

	}

	return RetVal;
}

Std_RetTyp Dio_ToggleChannel (Dio_ChannelIdTyp ChannelId)
{
	const Dio_ChannelCfgTyp * CfgPtr = NULL;
	Std_RetTyp RetVal = STD_OK;

	#if (CHECKS == TRUE)
	if (ChannelId >= NUM_OF_CHANNELS)
	{
		RetVal = STD_NOT_OK;
	}
	else
	#endif
	{
		CfgPtr = &Dio_CfgArr[ChannelId];
		#if (CHECKS == TRUE)
		if ( (CfgPtr->PinPort >= MAX_NUM_OF_PORTS)
		||(CfgPtr->PinNum >= MAX_NUM_OF_PINS)
		||(CfgPtr->PinDir != STD_OUTPUT)
		)
		{
			RetVal = STD_NOT_OK;
		}
		else
		#endif
		{
			switch(CfgPtr->PinPort)
			{
				case PORT_A:
				{
					STD_TGL_BIT(PORTA,CfgPtr->PinNum);
				}break;
				case PORT_B:
				{
					STD_TGL_BIT(PORTB,CfgPtr->PinNum);
				}break;
				case PORT_C:
				{
					STD_TGL_BIT(PORTC,CfgPtr->PinNum);
				}break;
				case PORT_D:
				{
					STD_TGL_BIT(PORTD,CfgPtr->PinNum);
				}break;
				default:
				{

				}

			}
		}

	}

	return RetVal;
}
