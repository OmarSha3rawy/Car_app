#ifndef _TIMER0_CFG_H_
#define _TIMER0_CFG_H_

//Timer0 Callback Declaration
extern void Timer0_500us_Cbk (void);

#ifdef TIMER0_COMP_HANDLER
#error TIMER0_COMP_HANDLER Should not be defined
#else
// TIMER0_COMP_HANDLER : Parameter for the OC Handler Callback
// Type : Prebuild Config Parameter
#define TIMER0_COMP_HANDLER Timer0_500us_Cbk
#endif

#endif