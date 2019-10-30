#ifndef _CONTROLLER_H_
#define _CONTROLLER_H_

#define F_CPU (12000000UL)

#include "Std_Types.h"
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>


#define CONTROLLER ATMEGA32

typedef enum Ports {PORT_A = 0u , PORT_B , PORT_C , PORT_D , MAX_NUM_OF_PORTS}ePortsTyp;
typedef enum Pins  {P0 = 0u , P1 , P2 , P3 , P4 , P5 , P6 , P7 , MAX_NUM_OF_PINS}ePinsTyp;

typedef uint8 * SFRTyp;

//#define PORTA (*(SFRTyp)(0x3B))
//#define DDRA  (*(SFRTyp)(0x3A))
//#define PINA  (*(SFRTyp)(0x39))
//#define PORTB (*(SFRTyp)(0x38))
//#define DDRB  (*(SFRTyp)(0x37))
//#define PINB  (*(SFRTyp)(0x36))
//#define PORTC (*(SFRTyp)(0x35))
//#define DDRC  (*(SFRTyp)(0x34))
//#define PINC  (*(SFRTyp)(0x33))
//#define PORTD (*(SFRTyp)(0x32))
//#define DDRD  (*(SFRTyp)(0x31))
//#define PIND  (*(SFRTyp)(0x30))

#endif