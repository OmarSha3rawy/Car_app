# 1 "../MCAL/Dio/Dio_Src/Dio.c"
# 1 "X:\\VALEO_testing_academy\\challenge1\\C_ExampleTraineeVersion\\C_Example\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../MCAL/Dio/Dio_Src/Dio.c"


# 1 "../MCAL/Dio/Dio_Src/Dio.h" 1



# 1 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Std_Macros.h" 1
# 5 "../MCAL/Dio/Dio_Src/Dio.h" 2
# 1 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Std_Types.h" 1




typedef unsigned char uint8;
typedef unsigned char boolean;
typedef signed char sint8;
typedef unsigned short uint16;
typedef signed short sint16;
typedef unsigned long uint32;
typedef signed long sint32;
typedef float f32;
typedef double f64;
typedef enum {STD_OK , STD_NOT_OK}Std_RetTyp;
typedef void (*P2VFTyp)(void);
# 6 "../MCAL/Dio/Dio_Src/Dio.h" 2
# 1 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h" 1





# 1 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Std_Types.h" 1
# 7 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 1 3
# 99 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 1 3
# 126 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 1 3
# 37 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 1 3 4
# 9 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 3 4
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 1 3 4
# 125 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4

# 125 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\lib\\gcc\\avr\\5.4.0\\include\\stdint.h" 2 3 4
# 38 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 2 3
# 77 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 127 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\sfr_defs.h" 2 3
# 100 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 244 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\iom32.h" 1 3
# 720 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\iom32.h" 3
       
# 721 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\iom32.h" 3

       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
# 245 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 627 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\portpins.h" 1 3
# 628 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\common.h" 1 3
# 630 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\version.h" 1 3
# 632 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3






# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h" 1 3
# 248 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
} __fuse_t;
# 639 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3


# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\lock.h" 1 3
# 642 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\io.h" 2 3
# 8 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 1 3
# 45 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 1 3
# 40 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
static __inline__ void _delay_loop_1(uint8_t __count) __attribute__((__always_inline__));
static __inline__ void _delay_loop_2(uint16_t __count) __attribute__((__always_inline__));
# 80 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 46 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 2 3
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 1 3
# 127 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 47 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 2 3
# 86 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
static __inline__ void _delay_us(double __us) __attribute__((__always_inline__));
static __inline__ void _delay_ms(double __ms) __attribute__((__always_inline__));
# 165 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
void
_delay_ms(double __ms)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 174 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
          (12000000UL)
# 174 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
               ) / 1e3) * __ms;
# 184 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 210 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
}
# 254 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
void
_delay_us(double __us)
{
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((
# 263 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
          (12000000UL)
# 263 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
               ) / 1e6) * __us;
# 273 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 299 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h" 3
}
# 9 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 1 3
# 10 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h" 2





# 14 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h"
typedef enum Ports {PORT_A = 0u , PORT_B , PORT_C , PORT_D , MAX_NUM_OF_PORTS}ePortsTyp;
typedef enum Pins {P0 = 0u , P1 , P2 , P3 , P4 , P5 , P6 , P7 , MAX_NUM_OF_PINS}ePinsTyp;

typedef uint8 * SFRTyp;
# 7 "../MCAL/Dio/Dio_Src/Dio.h" 2



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
Std_RetTyp Dio_Read (Dio_ChannelIdTyp ChannelId , boolean* u8pValuePtr);
Std_RetTyp Dio_Init (void);
Std_RetTyp Dio_Init_Channel (Dio_ChannelIdTyp ChannelId);
Std_RetTyp Dio_SetChannel (Dio_ChannelIdTyp ChannelId);
Std_RetTyp Dio_ClearChannel (Dio_ChannelIdTyp ChannelId);
Std_RetTyp Dio_ToggleChannel (Dio_ChannelIdTyp ChannelId);
# 4 "../MCAL/Dio/Dio_Src/Dio.c" 2
# 1 "../MCAL/Dio/Dio_Src/../Dio_Cfg/Dio_Cfg.h" 1



# 1 "../MCAL/Dio/Dio_Src/../Dio_Cfg/../../../Std_Headers/Std_Types.h" 1
# 5 "../MCAL/Dio/Dio_Src/../Dio_Cfg/Dio_Cfg.h" 2





typedef struct
{
 ePortsTyp PinPort;
 ePinsTyp PinNum;
 boolean PinDir;
 boolean isPullUp;
 boolean initVal;
}Dio_ChannelCfgTyp;


extern const Dio_ChannelCfgTyp Dio_CfgArr [NUM_OF_CHANNELS];
# 5 "../MCAL/Dio/Dio_Src/Dio.c" 2


Std_RetTyp Dio_Init_Channel (Dio_ChannelIdTyp ChannelId)
{
    Std_RetTyp retVal = STD_OK;
    const Dio_ChannelCfgTyp * CfgPtr = ((void*)0u);


    if (ChannelId >= NUM_OF_CHANNELS)
    {
        retVal = STD_NOT_OK;
    }
    else
    {
        CfgPtr = &Dio_CfgArr[ChannelId];

        retVal = Dio_SetDir(ChannelId);

        if (CfgPtr->PinDir == (0u))
        {







        }
        else
        {






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
    const Dio_ChannelCfgTyp * CfgPtr = ((void*)0u);
    Std_RetTyp RetVal = STD_OK;
# 74 "../MCAL/Dio/Dio_Src/Dio.c"
    {
        CfgPtr = &Dio_CfgArr[ChannelId];







        {
            switch(CfgPtr->PinPort)
            {
                case PORT_A:
                {
                    if ((1u) == CfgPtr->PinDir) ((
# 88 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                                     (*(volatile uint8_t *)((0x1A) + 0x20))
# 88 "../MCAL/Dio/Dio_Src/Dio.c"
                                                     )|= (1u<<(CfgPtr->PinNum)));
                    else ((
# 89 "../MCAL/Dio/Dio_Src/Dio.c" 3
                        (*(volatile uint8_t *)((0x1A) + 0x20))
# 89 "../MCAL/Dio/Dio_Src/Dio.c"
                        )&=~(1u<<(CfgPtr->PinNum)));
                }break;
                case PORT_B:
                {
                    if ((1u) == CfgPtr->PinDir) ((
# 93 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                                     (*(volatile uint8_t *)((0x17) + 0x20))
# 93 "../MCAL/Dio/Dio_Src/Dio.c"
                                                     )|= (1u<<(CfgPtr->PinNum)));
                    else ((
# 94 "../MCAL/Dio/Dio_Src/Dio.c" 3
                        (*(volatile uint8_t *)((0x17) + 0x20))
# 94 "../MCAL/Dio/Dio_Src/Dio.c"
                        )&=~(1u<<(CfgPtr->PinNum)));
                }break;
                case PORT_C:
                {
                    if ((1u) == CfgPtr->PinDir) ((
# 98 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                                     (*(volatile uint8_t *)((0x14) + 0x20))
# 98 "../MCAL/Dio/Dio_Src/Dio.c"
                                                     )|= (1u<<(CfgPtr->PinNum)));
                    else ((
# 99 "../MCAL/Dio/Dio_Src/Dio.c" 3
                        (*(volatile uint8_t *)((0x14) + 0x20))
# 99 "../MCAL/Dio/Dio_Src/Dio.c"
                        )&=~(1u<<(CfgPtr->PinNum)));
                }break;
                case PORT_D:
                {
                    if ((1u) == CfgPtr->PinDir) ((
# 103 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                                     (*(volatile uint8_t *)((0x11) + 0x20))
# 103 "../MCAL/Dio/Dio_Src/Dio.c"
                                                     )|= (1u<<(CfgPtr->PinNum)));
                    else ((
# 104 "../MCAL/Dio/Dio_Src/Dio.c" 3
                        (*(volatile uint8_t *)((0x11) + 0x20))
# 104 "../MCAL/Dio/Dio_Src/Dio.c"
                        )&=~(1u<<(CfgPtr->PinNum)));
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
    const Dio_ChannelCfgTyp * CfgPtr = ((void*)0u);
    Std_RetTyp RetVal = STD_OK;
# 130 "../MCAL/Dio/Dio_Src/Dio.c"
    {
        CfgPtr = &Dio_CfgArr[ChannelId];
# 141 "../MCAL/Dio/Dio_Src/Dio.c"
        {
            switch(CfgPtr->PinPort)
            {
                case PORT_A:
                {
                    if ((1u) == u8Value) ((
# 146 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                            (*(volatile uint8_t *)((0x1B) + 0x20))
# 146 "../MCAL/Dio/Dio_Src/Dio.c"
                                            )|= (1u<<(CfgPtr->PinNum)));
                    else ((
# 147 "../MCAL/Dio/Dio_Src/Dio.c" 3
                        (*(volatile uint8_t *)((0x1B) + 0x20))
# 147 "../MCAL/Dio/Dio_Src/Dio.c"
                        )&=~(1u<<(CfgPtr->PinNum)));
                }break;
                case PORT_B:
                {
                    if ((1u) == u8Value) ((
# 151 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                            (*(volatile uint8_t *)((0x18) + 0x20))
# 151 "../MCAL/Dio/Dio_Src/Dio.c"
                                            )|= (1u<<(CfgPtr->PinNum)));
                    else ((
# 152 "../MCAL/Dio/Dio_Src/Dio.c" 3
                        (*(volatile uint8_t *)((0x18) + 0x20))
# 152 "../MCAL/Dio/Dio_Src/Dio.c"
                        )&=~(1u<<(CfgPtr->PinNum)));
                }break;
                case PORT_C:
                {
                    if ((1u) == u8Value) ((
# 156 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                            (*(volatile uint8_t *)((0x15) + 0x20))
# 156 "../MCAL/Dio/Dio_Src/Dio.c"
                                            )|= (1u<<(CfgPtr->PinNum)));
                    else ((
# 157 "../MCAL/Dio/Dio_Src/Dio.c" 3
                        (*(volatile uint8_t *)((0x15) + 0x20))
# 157 "../MCAL/Dio/Dio_Src/Dio.c"
                        )&=~(1u<<(CfgPtr->PinNum)));
                }break;
                case PORT_D:
                {
                    if ((1u) == u8Value) ((
# 161 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                            (*(volatile uint8_t *)((0x12) + 0x20))
# 161 "../MCAL/Dio/Dio_Src/Dio.c"
                                            )|= (1u<<(CfgPtr->PinNum)));
                    else ((
# 162 "../MCAL/Dio/Dio_Src/Dio.c" 3
                        (*(volatile uint8_t *)((0x12) + 0x20))
# 162 "../MCAL/Dio/Dio_Src/Dio.c"
                        )&=~(1u<<(CfgPtr->PinNum)));
                }break;
                default:
                {

                }

            }
        }

    }

    return RetVal;
}
Std_RetTyp Dio_Read (Dio_ChannelIdTyp ChannelId , boolean* u8pValuePtr)
{
    const Dio_ChannelCfgTyp * CfgPtr = ((void*)0u);
    Std_RetTyp RetVal = STD_OK;
# 188 "../MCAL/Dio/Dio_Src/Dio.c"
    {
        CfgPtr = &Dio_CfgArr[ChannelId];
# 198 "../MCAL/Dio/Dio_Src/Dio.c"
        {
            switch(CfgPtr->PinPort)
            {
                case PORT_A:
                {
                    *u8pValuePtr = (((
# 203 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                  (*(volatile uint8_t *)((0x19) + 0x20))
# 203 "../MCAL/Dio/Dio_Src/Dio.c"
                                  )>>(CfgPtr->PinNum))&(1u));
                }break;
                case PORT_B:
                {
                    *u8pValuePtr = (((
# 207 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                  (*(volatile uint8_t *)((0x16) + 0x20))
# 207 "../MCAL/Dio/Dio_Src/Dio.c"
                                  )>>(CfgPtr->PinNum))&(1u));
                }break;
                case PORT_C:
                {
                    *u8pValuePtr = (((
# 211 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                  (*(volatile uint8_t *)((0x13) + 0x20))
# 211 "../MCAL/Dio/Dio_Src/Dio.c"
                                  )>>(CfgPtr->PinNum))&(1u));
                }break;
                case PORT_D:
                {
                    *u8pValuePtr = (((
# 215 "../MCAL/Dio/Dio_Src/Dio.c" 3
                                  (*(volatile uint8_t *)((0x10) + 0x20))
# 215 "../MCAL/Dio/Dio_Src/Dio.c"
                                  )>>(CfgPtr->PinNum))&(1u));
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
 const Dio_ChannelCfgTyp * CfgPtr = ((void*)0u);
 Std_RetTyp RetVal = STD_OK;
# 242 "../MCAL/Dio/Dio_Src/Dio.c"
 {
  CfgPtr = &Dio_CfgArr[ChannelId];
# 254 "../MCAL/Dio/Dio_Src/Dio.c"
  {
   switch(CfgPtr->PinPort)
   {
    case PORT_A:
    {
     ((
# 259 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x1A) + 0x20))
# 259 "../MCAL/Dio/Dio_Src/Dio.c"
    )|= (1u<<(CfgPtr->PinNum)));
    }break;
    case PORT_B:
    {
     ((
# 263 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x17) + 0x20))
# 263 "../MCAL/Dio/Dio_Src/Dio.c"
    )|= (1u<<(CfgPtr->PinNum)));
    }break;
    case PORT_C:
    {
     ((
# 267 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x14) + 0x20))
# 267 "../MCAL/Dio/Dio_Src/Dio.c"
    )|= (1u<<(CfgPtr->PinNum)));
    }break;
    case PORT_D:
    {
     ((
# 271 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x11) + 0x20))
# 271 "../MCAL/Dio/Dio_Src/Dio.c"
    )|= (1u<<(CfgPtr->PinNum)));
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
 const Dio_ChannelCfgTyp * CfgPtr = ((void*)0u);
 Std_RetTyp RetVal = STD_OK;
# 298 "../MCAL/Dio/Dio_Src/Dio.c"
 {
  CfgPtr = &Dio_CfgArr[ChannelId];
# 310 "../MCAL/Dio/Dio_Src/Dio.c"
  {
   switch(CfgPtr->PinPort)
   {
    case PORT_A:
    {
     ((
# 315 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x1A) + 0x20))
# 315 "../MCAL/Dio/Dio_Src/Dio.c"
    )&=~(1u<<(CfgPtr->PinNum)));
    }break;
    case PORT_B:
    {
     ((
# 319 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x17) + 0x20))
# 319 "../MCAL/Dio/Dio_Src/Dio.c"
    )&=~(1u<<(CfgPtr->PinNum)));
    }break;
    case PORT_C:
    {
     ((
# 323 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x14) + 0x20))
# 323 "../MCAL/Dio/Dio_Src/Dio.c"
    )&=~(1u<<(CfgPtr->PinNum)));
    }break;
    case PORT_D:
    {
     ((
# 327 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x11) + 0x20))
# 327 "../MCAL/Dio/Dio_Src/Dio.c"
    )&=~(1u<<(CfgPtr->PinNum)));
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
 const Dio_ChannelCfgTyp * CfgPtr = ((void*)0u);
 Std_RetTyp RetVal = STD_OK;
# 354 "../MCAL/Dio/Dio_Src/Dio.c"
 {
  CfgPtr = &Dio_CfgArr[ChannelId];
# 366 "../MCAL/Dio/Dio_Src/Dio.c"
  {
   switch(CfgPtr->PinPort)
   {
    case PORT_A:
    {
     ((
# 371 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x1B) + 0x20))
# 371 "../MCAL/Dio/Dio_Src/Dio.c"
    )^= (1u<<(CfgPtr->PinNum)));
    }break;
    case PORT_B:
    {
     ((
# 375 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x18) + 0x20))
# 375 "../MCAL/Dio/Dio_Src/Dio.c"
    )^= (1u<<(CfgPtr->PinNum)));
    }break;
    case PORT_C:
    {
     ((
# 379 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x15) + 0x20))
# 379 "../MCAL/Dio/Dio_Src/Dio.c"
    )^= (1u<<(CfgPtr->PinNum)));
    }break;
    case PORT_D:
    {
     ((
# 383 "../MCAL/Dio/Dio_Src/Dio.c" 3
    (*(volatile uint8_t *)((0x12) + 0x20))
# 383 "../MCAL/Dio/Dio_Src/Dio.c"
    )^= (1u<<(CfgPtr->PinNum)));
    }break;
    default:
    {

    }

   }
  }

 }

 return RetVal;
}
