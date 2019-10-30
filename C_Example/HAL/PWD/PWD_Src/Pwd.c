/*
 * Pwd.c
 *
 * Created: 8/5/2018 12:10:53 AM
 *  Author: M.Fekry
 */ 
#include "Pwd.h"
#include "../PWD_Cfg/Pwd_Cfg.h"

extern volatile uint16 u16Counter_500us ;

static Pwd_StateTyp PwdState [PWD_NUM_OF_SIGNALS];
static uint8 au8PwdDuty [PWD_NUM_OF_SIGNALS];
static uint16 au16PwdFrequency [PWD_NUM_OF_SIGNALS];
static Pwd_InitTyp PwdInitState = PWD_UNINITIALIZED;
static uint32 u16TimeCounter[PWD_NUM_OF_SIGNALS];

void Pwd_Counters (void)
{
	uint8 Idx ;
	
	for (Idx=0;Idx<PWD_NUM_OF_SIGNALS;Idx++)
	{
		u16TimeCounter[Idx]++;
	}
}

Std_RetTyp Pwd_Init (void)
{
	uint8 PwdIdx;
	
	for (PwdIdx=0u ; PwdIdx < PWD_NUM_OF_SIGNALS ; PwdIdx++) 	
	{
		PwdState[PwdIdx] = PWD_IDLE;
		au8PwdDuty[PwdIdx] = 0u;
		au16PwdFrequency[PwdIdx] = 0u;
	}
	PwdInitState = PWD_INITIALIZED;
	
	return STD_OK;
}

Std_RetTyp Pwd_CalcValues (void)
{
	Std_RetTyp RetVal = STD_OK;
	boolean bStateInput = STD_LOW;
	const Pwd_CfgTyp* CfgPtr = NULL;
	uint8 PwdIdx ;
	static uint32 u16HighCount[PWD_NUM_OF_SIGNALS] = {0u};
	static uint32 u16LowCount[PWD_NUM_OF_SIGNALS] = {0u};
	
	if (PwdInitState != PWD_INITIALIZED)
	{
		RetVal = STD_NOT_OK;
	}
	else
	{
		for (PwdIdx=0u ; PwdIdx < PWD_NUM_OF_SIGNALS ; PwdIdx++)
		{
			CfgPtr = &Pwd_CfgArr[PwdIdx];
			Dio_Read(CfgPtr->PwdChId , &bStateInput);
			
			switch (PwdState[PwdIdx])
			{
				case PWD_IDLE:
				
				if (bStateInput == STD_HIGH)
				{
					PwdState[PwdIdx] = PWD_RISING_EDGE;
				}
				break;
				
				case PWD_RISING_EDGE:
				u16TimeCounter[PwdIdx] = 0u;
				
				if (bStateInput == STD_HIGH)
				{
					PwdState[PwdIdx] = PWD_HIGH_WAIT;
				}
				else
				{
					PwdState[PwdIdx] = PWD_IDLE;
					RetVal = STD_NOT_OK;
				}
				break;
				
				case PWD_HIGH_WAIT:
				
				if (bStateInput == STD_LOW)
				{
					PwdState[PwdIdx] = PWD_FALLING_EDGE;
				}
				break;
				
				case PWD_FALLING_EDGE:
				u16HighCount[PwdIdx] = u16TimeCounter[PwdIdx];
				u16TimeCounter[PwdIdx] = 0u;
				
				if (bStateInput == STD_LOW)
				{
					PwdState[PwdIdx] = PWD_LOW_WAIT;
				}
				else
				{
					PwdState[PwdIdx] = PWD_IDLE;
					RetVal = STD_NOT_OK;
				}
				break;
				
				case PWD_LOW_WAIT:
				
				if (bStateInput == STD_HIGH)
				{
					PwdState[PwdIdx] = PWD_FINISH;
				}
				break;
				
				case PWD_FINISH:
				u16LowCount[PwdIdx] = u16TimeCounter[PwdIdx];
				au8PwdDuty[PwdIdx] = (uint8)((f32)u16HighCount[PwdIdx] / (u16HighCount[PwdIdx]+u16LowCount[PwdIdx]) * 100u + 0.5);
				au16PwdFrequency[PwdIdx] = (uint16)(1.0 / (u16HighCount[PwdIdx]+u16LowCount[PwdIdx]) * 1000.0 +0.5);
				
				PwdState[PwdIdx] = PWD_IDLE;
				break;
				
			}
			
			
		}
	}
	
	return RetVal;
}

Std_RetTyp Pwd_GetDuty (Pwd_IdTyp PwdId , uint8* Duty)
{
	Std_RetTyp RetVal = STD_OK;
	
	if (PwdId >= PWD_NUM_OF_SIGNALS || PwdInitState != PWD_INITIALIZED)
	{
		RetVal = STD_NOT_OK;
	} 
	else
	{
		*Duty = au8PwdDuty[PwdId];
	}
	
	return RetVal;
}

Std_RetTyp Pwd_GetFrequency (Pwd_IdTyp PwdId , uint16* Freq)
{
	Std_RetTyp RetVal = STD_OK;
	
	if (PwdId >= PWD_NUM_OF_SIGNALS || PwdInitState != PWD_INITIALIZED)
	{
		RetVal = STD_NOT_OK;
	}
	else
	{
		*Freq = au16PwdFrequency[PwdId];
	}
	
	return RetVal;
}