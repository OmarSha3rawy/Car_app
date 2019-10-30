/*
 * CFile1.c
 *
 * Created: 8/2/2018 1:12:13 AM
 *  Author: M.Fekry
 */ 

#include "Switch.h"

typedef enum {SW_RELEASED = 0u , SW_PRE_PRESSED , SW_PRESSED , SW_PRE_RELEASED}Sw_StateTyp;
typedef enum {SW_ONCE_RELEASED = 0u , SW_ONCE_PRESSED , SW_ONCE_POST_PRESSED}Sw_StateOnceTyp;
static Sw_InitTyp SwInitState = SW_UNINITIALIZED ;
static boolean SwValue [SW_NUM_OF_SW] = {0};
	
Std_RetTyp Sw_Init(void)
{
	Std_RetTyp RetVal = STD_OK;
	uint8 SwIdx = 0u;
	
	while (SwIdx < SW_NUM_OF_SW)
	{
		if (STD_ACTIVE_HIGH == Sw_CfgArr[SwIdx].ActiveState)
		{
			SwValue[SwIdx] = STD_LOW ;
		}
		else
		{
			SwValue[SwIdx] = STD_HIGH;
		}
		
		SwIdx++;
	}
	
	SwInitState = SW_INITALIZED ;
	
	return RetVal;
}


Std_RetTyp Sw_UpdateState_Cyclic(void)
{
	Std_RetTyp RetVal = STD_OK;
	const Sw_SwTyp * CfgPtr = NULL; 
	static Sw_StateTyp SwState [SW_NUM_OF_SW] = {0u};
	uint8 SwIdx = 0u;
	boolean PinState = STD_LOW;
		
	if (SwInitState != SW_INITALIZED)
	{
		RetVal = STD_NOT_OK;
	} 
	else
	{
		while (SwIdx < SW_NUM_OF_SW)
		{
			CfgPtr = &Sw_CfgArr[SwIdx];
			Dio_Read(CfgPtr->Sw_Id , &PinState);
			
			if (STD_ACTIVE_LOW == CfgPtr->ActiveState)
			{
				PinState = (PinState)? STD_LOW : STD_HIGH ;
			}
			
			switch (SwState[SwIdx])
			{
				case SW_RELEASED:
					SwValue[SwIdx] = STD_LOW ;
					
					if (STD_HIGH == PinState)
					{
						SwState[SwIdx] = SW_PRE_PRESSED ;
					}
				break;
					
				case SW_PRE_PRESSED:
					SwValue[SwIdx] = STD_LOW ;
					
					if (STD_HIGH == PinState)
					{
						SwState[SwIdx] = SW_PRESSED ;
					}
					else if (STD_LOW == PinState)
					{
						SwState[SwIdx] = SW_RELEASED ;
					}
				break;
					
				case SW_PRESSED:
					SwValue[SwIdx] = STD_HIGH ;
					
					if (STD_LOW == PinState)
					{
						SwState[SwIdx] = SW_PRE_RELEASED ;
					}
				break;
					
				case SW_PRE_RELEASED:
					SwValue[SwIdx] = STD_HIGH ;
					
					if (STD_HIGH == PinState)
					{
						SwState[SwIdx] = SW_PRESSED ;
					}
					else if (STD_LOW == PinState)
					{
						SwState[SwIdx] = SW_RELEASED ;
					}
				break;
					
				default:
				break;
			}
			
			SwIdx++;
		}
	}
	
	return RetVal;
}


Std_RetTyp Sw_GetState (Sw_SwIdTyp SwId , boolean* SwState)
{
	Std_RetTyp RetVal = STD_OK;

	if (SwId >= SW_NUM_OF_SW || SwInitState != SW_INITALIZED)
	{
		RetVal = STD_NOT_OK;
	} 
	else
	{
		*SwState = SwValue[SwId];
	}
	
	return RetVal;
}

Std_RetTyp Sw_GetStateOnce (Sw_SwIdTyp SwId , boolean* SwState)
{
	Std_RetTyp RetVal = STD_OK;
	static Sw_StateOnceTyp State[SW_NUM_OF_SW] = {0u};

	if (SwId >= SW_NUM_OF_SW  || SwInitState != SW_INITALIZED)
	{
		RetVal = STD_NOT_OK;
	} 
	else
	{
		switch (State[SwId])
		{
			case SW_ONCE_RELEASED:
				*SwState = STD_FALSE ;
				
				if (SwValue[SwId] == STD_HIGH)
				{
					State[SwId] = SW_ONCE_PRESSED;
				}
				else
				{
					State[SwId] = SW_ONCE_RELEASED;
				}
			break;

			case SW_ONCE_PRESSED:
				*SwState = STD_HIGH ;
				
				if (SwValue[SwId] == STD_HIGH)
				{
					State[SwId] = SW_ONCE_POST_PRESSED;
				}
				else
				{
					State[SwId] = SW_ONCE_RELEASED;
				}
				break;

			case SW_ONCE_POST_PRESSED:
				*SwState = STD_LOW ;
				
				if (SwValue[SwId] == STD_HIGH)
				{
					State[SwId] = SW_ONCE_POST_PRESSED;
				}
				else
				{
					State[SwId] = SW_ONCE_RELEASED;
				}
			break;
		}
	}
	
	return RetVal;
}