	.file	"Tasks.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Task_Init,"ax",@progbits
.global	Task_Init
	.type	Task_Init, @function
Task_Init:
.LFB6:
	.file 1 ".././Tasks.c"
	.loc 1 12 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 14 0
	call Dio_Init
.LVL0:
	.loc 1 15 0
	call Led_Init
.LVL1:
	.loc 1 16 0
	call Sw_Init
.LVL2:
	.loc 1 18 0
	call WinBtn_Init
.LVL3:
	.loc 1 19 0
	call Pos_Init
.LVL4:
	.loc 1 20 0
	call Motor_Init
.LVL5:
	.loc 1 21 0
	call Mod_Init
.LVL6:
	.loc 1 22 0
	call T0_Timer0_Init
.LVL7:
	ret
	.cfi_endproc
.LFE6:
	.size	Task_Init, .-Task_Init
	.section	.text.Task_500us,"ax",@progbits
.global	Task_500us
	.type	Task_500us, @function
Task_500us:
.LFB7:
	.loc 1 26 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE7:
	.size	Task_500us, .-Task_500us
	.section	.text.Task_1ms,"ax",@progbits
.global	Task_1ms
	.type	Task_1ms, @function
Task_1ms:
.LFB8:
	.loc 1 31 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE8:
	.size	Task_1ms, .-Task_1ms
	.section	.text.Task_2ms,"ax",@progbits
.global	Task_2ms
	.type	Task_2ms, @function
Task_2ms:
.LFB9:
	.loc 1 35 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE9:
	.size	Task_2ms, .-Task_2ms
	.section	.text.Task_5ms,"ax",@progbits
.global	Task_5ms
	.type	Task_5ms, @function
Task_5ms:
.LFB10:
	.loc 1 39 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE10:
	.size	Task_5ms, .-Task_5ms
	.section	.text.Task_10ms,"ax",@progbits
.global	Task_10ms
	.type	Task_10ms, @function
Task_10ms:
.LFB11:
	.loc 1 43 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 44 0
	call Sw_UpdateState_Cyclic
.LVL8:
	.loc 1 45 0
	call Pos_Cyclic
.LVL9:
	ret
	.cfi_endproc
.LFE11:
	.size	Task_10ms, .-Task_10ms
	.section	.text.Task_20ms,"ax",@progbits
.global	Task_20ms
	.type	Task_20ms, @function
Task_20ms:
.LFB12:
	.loc 1 48 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE12:
	.size	Task_20ms, .-Task_20ms
	.section	.text.Task_50ms,"ax",@progbits
.global	Task_50ms
	.type	Task_50ms, @function
Task_50ms:
.LFB13:
	.loc 1 52 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 53 0
	call Mod_Cyclic
.LVL10:
	ret
	.cfi_endproc
.LFE13:
	.size	Task_50ms, .-Task_50ms
	.section	.text.Task_100ms,"ax",@progbits
.global	Task_100ms
	.type	Task_100ms, @function
Task_100ms:
.LFB14:
	.loc 1 56 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE14:
	.size	Task_100ms, .-Task_100ms
	.section	.text.Task_200ms,"ax",@progbits
.global	Task_200ms
	.type	Task_200ms, @function
Task_200ms:
.LFB15:
	.loc 1 61 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE15:
	.size	Task_200ms, .-Task_200ms
	.section	.text.Task_500ms,"ax",@progbits
.global	Task_500ms
	.type	Task_500ms, @function
Task_500ms:
.LFB16:
	.loc 1 65 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE16:
	.size	Task_500ms, .-Task_500ms
	.section	.text.Task_1000ms,"ax",@progbits
.global	Task_1000ms
	.type	Task_1000ms, @function
Task_1000ms:
.LFB17:
	.loc 1 69 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE17:
	.size	Task_1000ms, .-Task_1000ms
	.section	.text.Task_2000ms,"ax",@progbits
.global	Task_2000ms
	.type	Task_2000ms, @function
Task_2000ms:
.LFB18:
	.loc 1 73 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE18:
	.size	Task_2000ms, .-Task_2000ms
	.text
.Letext0:
	.file 2 ".././MCAL/Dio/Dio_Src/Dio.h"
	.file 3 ".././HAL/Led/Led_Src/Led.h"
	.file 4 ".././HAL/Switch/Switch_Src/Switch.h"
	.file 5 ".././APP/MOD/../WinBtn/WinBtn.h"
	.file 6 ".././APP/MOD/../POS/Pos.h"
	.file 7 ".././APP/MOD/../Motor/Motor.h"
	.file 8 ".././APP/MOD/Mod.h"
	.file 9 ".././MCAL/Timer0/Timer0_Src/Timer0.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x299
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF35
	.byte	0xc
	.long	.LASF36
	.long	.LASF37
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
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xe0
	.uleb128 0x5
	.long	.LVL0
	.long	0x20d
	.uleb128 0x5
	.long	.LVL1
	.long	0x21a
	.uleb128 0x5
	.long	.LVL2
	.long	0x227
	.uleb128 0x5
	.long	.LVL3
	.long	0x234
	.uleb128 0x5
	.long	.LVL4
	.long	0x241
	.uleb128 0x5
	.long	.LVL5
	.long	0x24e
	.uleb128 0x5
	.long	.LVL6
	.long	0x25b
	.uleb128 0x5
	.long	.LVL7
	.long	0x268
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x165
	.uleb128 0x5
	.long	.LVL8
	.long	0x275
	.uleb128 0x5
	.long	.LVL9
	.long	0x282
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x19f
	.uleb128 0x5
	.long	.LVL10
	.long	0x28f
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF24
	.long	.LASF24
	.byte	0x2
	.byte	0x1a
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF25
	.long	.LASF25
	.byte	0x3
	.byte	0x19
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF26
	.long	.LASF26
	.byte	0x4
	.byte	0x1e
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF27
	.long	.LASF27
	.byte	0x5
	.byte	0x19
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF28
	.long	.LASF28
	.byte	0x6
	.byte	0x15
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF29
	.long	.LASF29
	.byte	0x7
	.byte	0x19
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF30
	.long	.LASF30
	.byte	0x8
	.byte	0x18
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF31
	.long	.LASF31
	.byte	0x9
	.byte	0x9
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF32
	.long	.LASF32
	.byte	0x4
	.byte	0x1f
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF33
	.long	.LASF33
	.byte	0x6
	.byte	0x16
	.uleb128 0x7
	.byte	0x1
	.byte	0x1
	.long	.LASF34
	.long	.LASF34
	.byte	0x8
	.byte	0x19
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.section	.debug_aranges,"",@progbits
	.long	0x7c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"Led_Init"
.LASF34:
	.string	"Mod_Cyclic"
.LASF11:
	.string	"Task_500us"
.LASF3:
	.string	"short int"
.LASF28:
	.string	"Pos_Init"
.LASF15:
	.string	"Task_Init"
.LASF16:
	.string	"Task_10ms"
.LASF30:
	.string	"Mod_Init"
.LASF18:
	.string	"Task_50ms"
.LASF24:
	.string	"Dio_Init"
.LASF6:
	.string	"float"
.LASF9:
	.string	"long long int"
.LASF5:
	.string	"long int"
.LASF23:
	.string	"Task_2000ms"
.LASF17:
	.string	"Task_20ms"
.LASF14:
	.string	"Task_5ms"
.LASF36:
	.string	".././Tasks.c"
.LASF0:
	.string	"unsigned char"
.LASF19:
	.string	"Task_100ms"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"Task_1ms"
.LASF2:
	.string	"short unsigned int"
.LASF31:
	.string	"T0_Timer0_Init"
.LASF32:
	.string	"Sw_UpdateState_Cyclic"
.LASF26:
	.string	"Sw_Init"
.LASF27:
	.string	"WinBtn_Init"
.LASF4:
	.string	"long unsigned int"
.LASF7:
	.string	"double"
.LASF13:
	.string	"Task_2ms"
.LASF35:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF20:
	.string	"Task_200ms"
.LASF22:
	.string	"Task_1000ms"
.LASF37:
	.string	"X:\\\\VALEO_testing_academy\\\\challenge1\\\\C_ExampleTraineeVersion\\\\C_Example\\\\Debug"
.LASF21:
	.string	"Task_500ms"
.LASF29:
	.string	"Motor_Init"
.LASF33:
	.string	"Pos_Cyclic"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
