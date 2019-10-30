	.file	"Pos.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Pos_Init,"ax",@progbits
.global	Pos_Init
	.type	Pos_Init, @function
Pos_Init:
.LFB6:
	.file 1 "../APP/POS/Pos.c"
	.loc 1 25 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 26 0
	sts G_WindowPos,__zero_reg__
	ret
	.cfi_endproc
.LFE6:
	.size	Pos_Init, .-Pos_Init
	.section	.text.Pos_Cyclic,"ax",@progbits
.global	Pos_Cyclic
	.type	Pos_Cyclic, @function
Pos_Cyclic:
.LFB7:
	.loc 1 30 0
	.cfi_startproc
	push r17
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	push __zero_reg__
.LCFI3:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI4:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 31 0
	std Y+1,__zero_reg__
	.loc 1 32 0
	call Mod_GetCurrentMode
.LVL0:
	mov r17,r24
.LVL1:
	.loc 1 34 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(2)
	call Sw_GetState
.LVL2:
	.loc 1 36 0
	ldd r24,Y+1
	cpi r24,lo8(1)
	brne .L2
	.loc 1 38 0
	cpi r17,lo8(1)
	brne .L4
	.loc 1 40 0
	lds r24,G_WindowPos
	cpi r24,lo8(100)
	breq .L2
	.loc 1 42 0
	subi r24,lo8(-(5))
	sts G_WindowPos,r24
	rjmp .L2
.L4:
	.loc 1 45 0
	cpi r17,lo8(2)
	brne .L2
	.loc 1 47 0
	lds r24,G_WindowPos
	tst r24
	breq .L2
	.loc 1 49 0
	subi r24,lo8(-(-5))
	sts G_WindowPos,r24
.L2:
/* epilogue start */
	.loc 1 53 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
.LVL3:
	ret
	.cfi_endproc
.LFE7:
	.size	Pos_Cyclic, .-Pos_Cyclic
	.section	.text.Pos_GetWindowPos,"ax",@progbits
.global	Pos_GetWindowPos
	.type	Pos_GetWindowPos, @function
Pos_GetWindowPos:
.LFB8:
	.loc 1 57 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 59 0
	lds r24,G_WindowPos
	ret
	.cfi_endproc
.LFE8:
	.size	Pos_GetWindowPos, .-Pos_GetWindowPos
	.section	.bss.G_WindowPos,"aw",@nobits
	.type	G_WindowPos, @object
	.size	G_WindowPos, 1
G_WindowPos:
	.zero	1
	.text
.Letext0:
	.file 2 "../APP/POS/../../Std_Headers/Std_Types.h"
	.file 3 "../APP/POS/Pos.h"
	.file 4 "../APP/POS/../../HAL/Switch/Switch_Src/Switch.h"
	.file 5 "../APP/POS/../MOD/Mod.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1a0
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
	.long	.LASF0
	.byte	0x2
	.byte	0x5
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x6
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x1
	.long	0x34
	.byte	0x4
	.byte	0x15
	.long	0xb8
	.uleb128 0x6
	.long	.LASF13
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x12
	.long	0x29
	.uleb128 0x5
	.byte	0x1
	.long	0x34
	.byte	0x5
	.byte	0x11
	.long	0xe2
	.uleb128 0x6
	.long	.LASF18
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF21
	.byte	0x5
	.byte	0x15
	.long	0xc3
	.uleb128 0x7
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.byte	0x1
	.long	0x15e
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0x1f
	.long	0x3b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x20
	.long	0xe2
	.long	.LLST1
	.uleb128 0xb
	.long	.LVL0
	.long	0x189
	.uleb128 0xc
	.long	.LVL2
	.long	0x196
	.uleb128 0xd
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0xd
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF32
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.long	0xb8
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x13
	.long	0xb8
	.byte	0x5
	.byte	0x3
	.long	G_WindowPos
	.uleb128 0xf
	.byte	0x1
	.byte	0x1
	.long	.LASF25
	.long	.LASF25
	.byte	0x5
	.byte	0x1a
	.uleb128 0xf
	.byte	0x1
	.byte	0x1
	.long	.LASF26
	.long	.LASF26
	.byte	0x4
	.byte	0x20
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.long	.LFB7
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LFE7
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL3
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"SW_POS"
.LASF5:
	.string	"short int"
.LASF30:
	.string	"Pos_Init"
.LASF19:
	.string	"UP_STATE"
.LASF0:
	.string	"uint8"
.LASF28:
	.string	"../APP/POS/Pos.c"
.LASF8:
	.string	"float"
.LASF22:
	.string	"PosSwitch"
.LASF11:
	.string	"long long int"
.LASF25:
	.string	"Mod_GetCurrentMode"
.LASF7:
	.string	"long int"
.LASF18:
	.string	"OFF_STATE"
.LASF21:
	.string	"Mod_StateTyp"
.LASF2:
	.string	"unsigned char"
.LASF20:
	.string	"DOWN_STATE"
.LASF3:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF26:
	.string	"Sw_GetState"
.LASF10:
	.string	"unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF32:
	.string	"Pos_GetWindowPos"
.LASF17:
	.string	"Pos_PositionTyp"
.LASF24:
	.string	"G_WindowPos"
.LASF6:
	.string	"long unsigned int"
.LASF9:
	.string	"double"
.LASF14:
	.string	"SW_WIN_DOWN"
.LASF27:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF23:
	.string	"PosDirection"
.LASF16:
	.string	"SW_NUM_OF_SW"
.LASF29:
	.string	"X:\\\\VALEO_testing_academy\\\\challenge1\\\\C_ExampleTraineeVersion\\\\C_Example\\\\Debug"
.LASF13:
	.string	"SW_WIN_UP"
.LASF31:
	.string	"Pos_Cyclic"
.LASF1:
	.string	"boolean"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
