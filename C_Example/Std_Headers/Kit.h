#ifndef _KIT_H_
#define _KIT_H_

#include"Std_Types.h"

typedef struct 
{
    uint8  Button0   :1;
    uint8  Button1   :1;
    uint8  Button2   :1;
    uint8  Relay_EN  :1;
    uint8  Buzzer    :1;
    uint8  Led0      :1;
    uint8  Led1      :1;
    uint8  Led2      :1;
}Kit_D_PortTyp;

typedef struct 
{
    uint8  SCL       :1;
    uint8  SDA       :1;
    uint8  Seg7_En1  :1;
    uint8  Seg7_En2  :1;
    uint8  Seg7_Data :4;
}Kit_C_PortTyp;

typedef struct 
{
    uint8  Seg7_DP  :1;
    uint8  Lcd_RS   :1;
    uint8  Lcd_RW   :1;
    uint8  Lcd_E    :1;
    uint8  Res      :4;
}Kit_B_PortTyp;


typedef struct 
{
    uint8  Adc0     :1;
    uint8  Adc1     :1;
    uint8  Res0     :1;
    uint8  Res1     :1;
    uint8  Lcd_D    :4;
}Kit_A_PortTyp;



#define KIT_PORTA (*(volatile Kit_A_PortTyp *)(0x3B))
#define KIT_DDRA  (*(volatile Kit_A_PortTyp *)(0x3A))
#define KIT_PINA  (*(volatile Kit_A_PortTyp *)(0x39))
#define KIT_PORTB (*(volatile Kit_B_PortTyp *)(0x38))
#define KIT_DDRB  (*(volatile Kit_B_PortTyp *)(0x37))
#define KIT_PINB  (*(volatile Kit_B_PortTyp *)(0x36))
#define KIT_PORTC (*(volatile Kit_C_PortTyp *)(0x35))
#define KIT_DDRC  (*(volatile Kit_C_PortTyp *)(0x34))
#define KIT_PINC  (*(volatile Kit_C_PortTyp *)(0x33))
#define KIT_PORTD (*(volatile Kit_D_PortTyp *)(0x32))
#define KIT_DDRD  (*(volatile Kit_D_PortTyp *)(0x31))
#define KIT_PIND  (*(volatile Kit_D_PortTyp *)(0x30))

#endif