# 1 "../APP/Motor/Motor.c"
# 1 "X:\\VALEO_testing_academy\\challenge1\\C_ExampleTraineeVersion\\C_Example\\Debug//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../APP/Motor/Motor.c"
# 9 "../APP/Motor/Motor.c"
# 1 "../APP/Motor/Motor.h" 1
# 13 "../APP/Motor/Motor.h"
# 1 "../APP/Motor/../../Std_Headers/Std_Types.h" 1




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
# 14 "../APP/Motor/Motor.h" 2
# 1 "../APP/Motor/../../Std_Headers/Std_Macros.h" 1
# 15 "../APP/Motor/Motor.h" 2


typedef enum{
MOTOR_OFF=0,
MOTOR_UP ,
MOTOR_DOWN
}Motor_DirectionTyp;

extern Motor_DirectionTyp Gb_Motor;

extern void Motor_Init(void);
extern Std_RetTyp Motor_DriveMotor (Motor_DirectionTyp MotorDir);
# 10 "../APP/Motor/Motor.c" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/Led.h" 1
# 12 "../APP/Motor/../../HAL/Led/Led_Src/Led.h"
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/Dio.h" 1



# 1 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/../../../Std_Headers/Std_Macros.h" 1
# 5 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/Dio.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/../../../Std_Headers/Std_Types.h" 1
# 6 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/Dio.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h" 1





# 1 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/../../../Std_Headers/Std_Types.h" 1
# 7 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h" 2
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
# 8 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h" 2
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
# 9 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h" 2
# 1 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\avr\\interrupt.h" 1 3
# 10 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h" 2





# 14 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h"
typedef enum Ports {PORT_A = 0u , PORT_B , PORT_C , PORT_D , MAX_NUM_OF_PORTS}ePortsTyp;
typedef enum Pins {P0 = 0u , P1 , P2 , P3 , P4 , P5 , P6 , P7 , MAX_NUM_OF_PINS}ePinsTyp;

typedef uint8 * SFRTyp;
# 7 "../APP/Motor/../../HAL/Led/Led_Src/../../../MCAL/Dio/Dio_Src/Dio.h" 2



typedef enum{
 DIO_SW_0,
 DIO_SW_1,
 DIO_SW_2,
 DIO_TST_PIN,
 DIO_LED_0,
 DIO_LED_1,
 DIO_LED_2,
 DIO_SEG7_En1,
 DIO_SEG7_En2,
 DIO_SEG7_DA,
 DIO_SEG7_DB,
 DIO_SEG7_DC,
 DIO_SEG7_DD,
 DIO_SEG7_DP,
 DIO_PWD_0,
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
# 13 "../APP/Motor/../../HAL/Led/Led_Src/Led.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../../../Std_Headers/Controller.h" 1
# 14 "../APP/Motor/../../HAL/Led/Led_Src/Led.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../../../Std_Headers/Kit.h" 1



# 1 "../APP/Motor/../../HAL/Led/Led_Src/../../../Std_Headers/Std_Types.h" 1
# 5 "../APP/Motor/../../HAL/Led/Led_Src/../../../Std_Headers/Kit.h" 2

typedef struct
{
    uint8 Button0 :1;
    uint8 Button1 :1;
    uint8 Button2 :1;
    uint8 Relay_EN :1;
    uint8 Buzzer :1;
    uint8 Led0 :1;
    uint8 Led1 :1;
    uint8 Led2 :1;
}Kit_D_PortTyp;

typedef struct
{
    uint8 SCL :1;
    uint8 SDA :1;
    uint8 Seg7_En1 :1;
    uint8 Seg7_En2 :1;
    uint8 Seg7_Data :4;
}Kit_C_PortTyp;

typedef struct
{
    uint8 Seg7_DP :1;
    uint8 Lcd_RS :1;
    uint8 Lcd_RW :1;
    uint8 Lcd_E :1;
    uint8 Res :4;
}Kit_B_PortTyp;


typedef struct
{
    uint8 Adc0 :1;
    uint8 Adc1 :1;
    uint8 Res0 :1;
    uint8 Res1 :1;
    uint8 Lcd_D :4;
}Kit_A_PortTyp;
# 15 "../APP/Motor/../../HAL/Led/Led_Src/Led.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../../../Std_Headers/Std_Macros.h" 1
# 16 "../APP/Motor/../../HAL/Led/Led_Src/Led.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../../../Std_Headers/Std_Types.h" 1
# 17 "../APP/Motor/../../HAL/Led/Led_Src/Led.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/Led_Cfg.h" 1
# 12 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/Led_Cfg.h"
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/../../../MCAL/Dio/Dio_Src/Dio.h" 1
# 13 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/Led_Cfg.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/../../../Std_Headers/Controller.h" 1
# 14 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/Led_Cfg.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/../../../Std_Headers/Kit.h" 1
# 15 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/Led_Cfg.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/../../../Std_Headers/Std_Macros.h" 1
# 16 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/Led_Cfg.h" 2
# 1 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/../../../Std_Headers/Std_Types.h" 1
# 17 "../APP/Motor/../../HAL/Led/Led_Src/../Led_Cfg/Led_Cfg.h" 2


typedef struct
{
 Dio_ChannelIdTyp LedChannelId;
 boolean ActiveState;
 boolean InitVal;
}Led_CfgTyp;
# 18 "../APP/Motor/../../HAL/Led/Led_Src/Led.h" 2




typedef enum {LED_MOTOR_UP , LED_MOTOR_DOWN , LED_LED2 , LED_NUM_OF_LEDS}Led_LedIdTyp;
typedef enum {LED_INITALIZED , LED_UNINITIALIZED}Led_InitTyp;

extern Std_RetTyp Led_Init(void);
extern Std_RetTyp Led_ON(Led_LedIdTyp LedId);
extern Std_RetTyp Led_OFF(Led_LedIdTyp LedId);
extern Std_RetTyp Led_Toggle(Led_LedIdTyp LedId);

extern const Led_CfgTyp Led_CfgArr [LED_NUM_OF_LEDS];
# 11 "../APP/Motor/Motor.c" 2




Motor_DirectionTyp Gb_Motor = MOTOR_OFF;



static void Motor_DriveOff(void)
{
 Led_OFF(LED_MOTOR_UP);
 Led_OFF(LED_MOTOR_DOWN);
 Gb_Motor = MOTOR_OFF;
}

static void Motor_DriveUp(void)
{
 Led_OFF(LED_MOTOR_DOWN);
 Led_ON(LED_MOTOR_UP);
 Gb_Motor = MOTOR_UP;
}

static void Motor_DriveDown(void)
{
 Led_OFF(LED_MOTOR_UP);
 Led_ON(LED_MOTOR_DOWN);
 Gb_Motor = MOTOR_DOWN;
}


void Motor_Init(void)
{




 Gb_Motor = MOTOR_OFF;

}


Std_RetTyp Motor_DriveMotor (Motor_DirectionTyp MotorDir)
{
 Std_RetTyp RetVal = STD_OK;

 if (MOTOR_OFF == MotorDir)
 {
  Motor_DriveOff();
 }
 else if (MOTOR_UP == MotorDir)
 {
  Motor_DriveUp();
 }
 else if (MOTOR_DOWN == MotorDir)
 {
  Motor_DriveDown();
 }
 else
 {
  RetVal = STD_NOT_OK;
 }

 return RetVal;
}
