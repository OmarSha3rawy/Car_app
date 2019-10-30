/*
 * Led.c
 *
 * Created: 7/31/2018 1:33:42 AM
 *  Author: M.Fekry
 */ 

#include "Led.h"

Led_InitTyp LedInitState = LED_UNINITIALIZED ;

Std_RetTyp Led_Init(void)
{
	Std_RetTyp RetVal = STD_OK;
	uint8 LedIdx = 0;
	
	while (LedIdx < LED_NUM_OF_LEDS)
	{
		if (LED_ON == Led_CfgArr[LedIdx].InitVal)
		{
			Led_ON(LedIdx);
		} 
		else if (LED_OFF == Led_CfgArr[LedIdx].InitVal)
		{
			Led_OFF(LedIdx);
		} 
		else
		{
			RetVal = STD_NOT_OK ;
		}
			
		LedIdx++;
	}
	
	if (RetVal == STD_OK)
	{
		LedInitState = LED_INITALIZED;
	}
	
	return RetVal;
}

Std_RetTyp Led_ON(Led_LedIdTyp LedId)
{
	Std_RetTyp RetVal = STD_OK;
	const Led_CfgTyp * CfgPtr = NULL;
	
	if ((LedId >= LED_NUM_OF_LEDS) || (LedInitState != LED_INITALIZED))
	{
		RetVal = STD_NOT_OK;
	} 
	else
	{
		CfgPtr = &Led_CfgArr[LedId];
		
		if (STD_ACTIVE_HIGH == CfgPtr->ActiveState)
		{
			Dio_Write(CfgPtr->LedChannelId , STD_HIGH);
		} 
		else if (STD_ACTIVE_LOW == CfgPtr->ActiveState)
		{
			Dio_Write(CfgPtr->LedChannelId , STD_LOW);
		}
		else
		{
			/*Nothing*/
		}
	}
	
	return RetVal;
}


Std_RetTyp Led_OFF(Led_LedIdTyp LedId)
{
	Std_RetTyp RetVal = STD_OK;
	const Led_CfgTyp * CfgPtr = NULL;
	
	if ((LedId >= LED_NUM_OF_LEDS) || (LedInitState != LED_INITALIZED))
	{
		RetVal = STD_NOT_OK;
	}
	else
	{
		CfgPtr = &Led_CfgArr[LedId];
		
		if (STD_ACTIVE_HIGH == CfgPtr->ActiveState)
		{
			Dio_Write(CfgPtr->LedChannelId , STD_LOW);
		}
		else if (STD_ACTIVE_LOW == CfgPtr->ActiveState)
		{
			Dio_Write(CfgPtr->LedChannelId , STD_HIGH);
		}
		else
		{
			/*Nothing*/
		}
	}
	
	return RetVal;
}

Std_RetTyp Led_Toggle(Led_LedIdTyp LedId)
{
	Std_RetTyp RetVal = STD_OK;
	
	if ((LedId >= LED_NUM_OF_LEDS) || (LedInitState != LED_INITALIZED))
	{
		RetVal = STD_NOT_OK;
	}
	else
	{	
		Dio_ToggleChannel(Led_CfgArr[LedId].LedChannelId);
	}
	
	return RetVal;
}