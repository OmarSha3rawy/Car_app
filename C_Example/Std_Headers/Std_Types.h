
#ifndef _STD_TYPES_H_
#define _STD_TYPES_H_

typedef unsigned char   uint8;
typedef unsigned char   boolean;
typedef signed char     sint8;
typedef unsigned short  uint16;
typedef signed short    sint16;
typedef unsigned long   uint32;
typedef signed long     sint32;
typedef float           f32;
typedef double          f64;
typedef enum {STD_OK , STD_NOT_OK}Std_RetTyp;
typedef void (*P2VFTyp)(void);

#define NULL ((void*)0u)


#endif