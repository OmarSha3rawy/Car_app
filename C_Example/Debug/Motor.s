	.file	"Motor.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Motor_Init,"ax",@progbits
.global	Motor_Init
	.type	Motor_Init, @function
Motor_Init:
.LFB9:
	.file 1 "../APP/Motor/Motor.c"
	.loc 1 42 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 47 0
	sts Gb_Motor,__zero_reg__
	ret
	.cfi_endproc
.LFE9:
	.size	Motor_Init, .-Motor_Init
	.section	.text.Motor_DriveMotor,"ax",@progbits
.global	Motor_DriveMotor
	.type	Motor_DriveMotor, @function
Motor_DriveMotor:
.LFB10:
	.loc 1 53 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 56 0
	cpse r24,__zero_reg__
	rjmp .L3
.LBB8:
.LBB9:
	.loc 1 21 0
	call Led_OFF
.LVL1:
	.loc 1 22 0
	ldi r24,lo8(1)
	call Led_OFF
.LVL2:
	.loc 1 23 0
	sts Gb_Motor,__zero_reg__
.LBE9:
.LBE8:
	.loc 1 54 0
	ldi r24,0
	ret
.LVL3:
.L3:
	.loc 1 60 0
	cpi r24,lo8(1)
	brne .L5
.LBB10:
.LBB11:
	.loc 1 28 0
	call Led_OFF
.LVL4:
	.loc 1 29 0
	ldi r24,0
	call Led_ON
.LVL5:
	.loc 1 30 0
	ldi r24,lo8(1)
	sts Gb_Motor,r24
.LBE11:
.LBE10:
	.loc 1 54 0
	ldi r24,0
	ret
.LVL6:
.L5:
	.loc 1 64 0
	cpi r24,lo8(2)
	brne .L6
.LBB12:
.LBB13:
	.loc 1 35 0
	ldi r24,0
.LVL7:
	call Led_OFF
.LVL8:
	.loc 1 36 0
	ldi r24,lo8(1)
	call Led_ON
.LVL9:
	.loc 1 37 0
	ldi r24,lo8(2)
	sts Gb_Motor,r24
.LBE13:
.LBE12:
	.loc 1 54 0
	ldi r24,0
	ret
.LVL10:
.L6:
	.loc 1 70 0
	ldi r24,lo8(1)
.LVL11:
	.loc 1 74 0
	ret
	.cfi_endproc
.LFE10:
	.size	Motor_DriveMotor, .-Motor_DriveMotor
.global	Gb_Motor
	.section	.bss.Gb_Motor,"aw",@nobits
	.type	Gb_Motor, @object
	.size	Gb_Motor, 1
Gb_Motor:
	.zero	1
	.text
.Letext0:
	.file 2 "../APP/Motor/../../Std_Headers/Std_Types.h"
	.file 3 "../APP/Motor/Motor.h"
	.file 4 "../APP/Motor/../../HAL/Led/Led_Src/Led.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x21d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF27
	.byte	0xc
	.long	.LASF28
	.long	.LASF29
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF7
	.uleb128 0x3
	.byte	0x1
	.long	0x29
	.byte	0x2
	.byte	0xe
	.long	0x7a
	.uleb128 0x4
	.long	.LASF8
	.byte	0
	.uleb128 0x4
	.long	.LASF9
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0xe
	.long	0x61
	.uleb128 0x3
	.byte	0x1
	.long	0x29
	.byte	0x3
	.byte	0x11
	.long	0xa4
	.uleb128 0x4
	.long	.LASF10
	.byte	0
	.uleb128 0x4
	.long	.LASF11
	.byte	0x1
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0x15
	.long	0x85
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF15
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x3
	.byte	0x1
	.long	0x29
	.byte	0x4
	.byte	0x16
	.long	0xf0
	.uleb128 0x4
	.long	.LASF18
	.byte	0
	.uleb128 0x4
	.long	.LASF19
	.byte	0x1
	.uleb128 0x4
	.long	.LASF20
	.byte	0x2
	.uleb128 0x4
	.long	.LASF21
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.long	.LASF24
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.long	0x7a
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1f4
	.uleb128 0xa
	.long	.LASF32
	.byte	0x1
	.byte	0x34
	.long	0xa4
	.long	.LLST0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.byte	0x36
	.long	0x7a
	.long	.LLST1
	.uleb128 0xc
	.long	0x106
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x3a
	.long	0x195
	.uleb128 0xd
	.long	.LVL1
	.long	0x206
	.long	0x185
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.uleb128 0xf
	.long	.LVL2
	.long	0x206
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x10f
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.byte	0x3e
	.long	0x1c1
	.uleb128 0x10
	.long	.LVL4
	.long	0x206
	.uleb128 0xf
	.long	.LVL5
	.long	0x213
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x118
	.long	.LBB12
	.long	.LBE12
	.byte	0x1
	.byte	0x42
	.uleb128 0xd
	.long	.LVL8
	.long	0x206
	.long	0x1e3
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.long	.LVL9
	.long	0x213
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0xf
	.long	0xa4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Gb_Motor
	.uleb128 0x13
	.byte	0x1
	.byte	0x1
	.long	.LASF25
	.long	.LASF25
	.byte	0x4
	.byte	0x1b
	.uleb128 0x13
	.byte	0x1
	.byte	0x1
	.long	.LASF26
	.long	.LASF26
	.byte	0x4
	.byte	0x1a
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1-1
	.word	0x1
	.byte	0x68
	.long	.LVL1-1
	.long	.LVL3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4-1
	.word	0x1
	.byte	0x68
	.long	.LVL4-1
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x68
	.long	.LVL11
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LFE10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"MOTOR_DOWN"
.LASF31:
	.string	"Motor_DriveMotor"
.LASF26:
	.string	"Led_ON"
.LASF20:
	.string	"LED_LED2"
.LASF28:
	.string	"../APP/Motor/Motor.c"
.LASF33:
	.string	"RetVal"
.LASF14:
	.string	"Motor_DirectionTyp"
.LASF3:
	.string	"short int"
.LASF8:
	.string	"STD_OK"
.LASF6:
	.string	"float"
.LASF16:
	.string	"long long int"
.LASF5:
	.string	"long int"
.LASF11:
	.string	"MOTOR_UP"
.LASF24:
	.string	"Motor_DriveDown"
.LASF0:
	.string	"unsigned char"
.LASF1:
	.string	"signed char"
.LASF34:
	.string	"Gb_Motor"
.LASF17:
	.string	"long long unsigned int"
.LASF15:
	.string	"unsigned int"
.LASF25:
	.string	"Led_OFF"
.LASF23:
	.string	"Motor_DriveUp"
.LASF13:
	.string	"Std_RetTyp"
.LASF2:
	.string	"short unsigned int"
.LASF32:
	.string	"MotorDir"
.LASF18:
	.string	"LED_MOTOR_UP"
.LASF10:
	.string	"MOTOR_OFF"
.LASF4:
	.string	"long unsigned int"
.LASF7:
	.string	"double"
.LASF27:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF9:
	.string	"STD_NOT_OK"
.LASF19:
	.string	"LED_MOTOR_DOWN"
.LASF29:
	.string	"X:\\\\VALEO_testing_academy\\\\challenge1\\\\C_ExampleTraineeVersion\\\\C_Example\\\\Debug"
.LASF21:
	.string	"LED_NUM_OF_LEDS"
.LASF30:
	.string	"Motor_Init"
.LASF22:
	.string	"Motor_DriveOff"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
