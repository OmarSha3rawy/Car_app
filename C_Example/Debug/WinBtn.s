	.file	"WinBtn.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.WinBtn_Init,"ax",@progbits
.global	WinBtn_Init
	.type	WinBtn_Init, @function
WinBtn_Init:
.LFB6:
	.file 1 "../APP/WinBtn/WinBtn.c"
	.loc 1 21 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE6:
	.size	WinBtn_Init, .-WinBtn_Init
	.section	.text.WinBtn_GetWinBtnState,"ax",@progbits
.global	WinBtn_GetWinBtnState
	.type	WinBtn_GetWinBtnState, @function
WinBtn_GetWinBtnState:
.LFB7:
	.loc 1 26 0
	.cfi_startproc
	.loc 1 26 0
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
.LCFI2:
	.cfi_def_cfa_offset 6
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI3:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
.LVL0:
	.loc 1 28 0
	std Y+1,__zero_reg__
	.loc 1 29 0
	std Y+2,__zero_reg__
	.loc 1 31 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,0
	call Sw_GetStateOnce
.LVL1:
	.loc 1 32 0
	movw r22,r28
	subi r22,-2
	sbci r23,-1
	ldi r24,lo8(1)
	call Sw_GetStateOnce
.LVL2:
	.loc 1 34 0
	ldd r24,Y+1
	cpi r24,lo8(1)
	breq .L4
	.loc 1 38 0
	ldd r24,Y+2
	cpi r24,lo8(1)
	breq .L5
	.loc 1 44 0
	ldi r24,0
	rjmp .L3
.L4:
	.loc 1 36 0
	ldi r24,lo8(1)
	rjmp .L3
.L5:
	.loc 1 40 0
	ldi r24,lo8(2)
.L3:
.LVL3:
/* epilogue start */
	.loc 1 48 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE7:
	.size	WinBtn_GetWinBtnState, .-WinBtn_GetWinBtnState
	.text
.Letext0:
	.file 2 "../APP/WinBtn/../../HAL/Switch/Switch_Src/Switch.h"
	.file 3 "../APP/WinBtn/WinBtn.h"
	.file 4 "../APP/WinBtn/../../Std_Headers/Std_Types.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x184
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF23
	.byte	0xc
	.long	.LASF24
	.long	.LASF25
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x6
	.long	0x29
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
	.uleb128 0x4
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
	.uleb128 0x5
	.byte	0x1
	.long	0x29
	.byte	0x2
	.byte	0x15
	.long	0xad
	.uleb128 0x6
	.long	.LASF11
	.byte	0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	0x29
	.byte	0x3
	.byte	0x12
	.long	0xcc
	.uleb128 0x6
	.long	.LASF15
	.byte	0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x3
	.byte	0x16
	.long	0xad
	.uleb128 0x7
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x14
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
	.long	.LASF27
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	0xcc
	.long	.LFB7
	.long	.LFE7
	.long	.LLST0
	.byte	0x1
	.long	0x16f
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x1b
	.long	0xcc
	.long	.LLST1
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x1c
	.long	0x30
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.byte	0x1d
	.long	0x30
	.byte	0x2
	.byte	0x8c
	.sleb128 2
	.uleb128 0xb
	.long	.LVL1
	.long	0x17a
	.long	0x154
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x30
	.uleb128 0xc
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
	.uleb128 0xd
	.long	.LVL2
	.long	0x17a
	.uleb128 0xc
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0xc
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF28
	.byte	0x1
	.byte	0x10
	.long	0xcc
	.uleb128 0xf
	.byte	0x1
	.byte	0x1
	.long	.LASF29
	.long	.LASF29
	.byte	0x2
	.byte	0x21
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.sleb128 6
	.long	.LCFI3
	.long	.LFE7
	.word	0x2
	.byte	0x8c
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LFE7
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"WINBTN_IDLE"
.LASF11:
	.string	"SW_WIN_UP"
.LASF7:
	.string	"double"
.LASF28:
	.string	"G_ButtonState"
.LASF24:
	.string	"../APP/WinBtn/WinBtn.c"
.LASF6:
	.string	"float"
.LASF0:
	.string	"unsigned char"
.LASF23:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF21:
	.string	"UpBtn"
.LASF2:
	.string	"short unsigned int"
.LASF29:
	.string	"Sw_GetStateOnce"
.LASF4:
	.string	"long unsigned int"
.LASF14:
	.string	"SW_NUM_OF_SW"
.LASF19:
	.string	"WinBtn_StateTyp"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"SW_WIN_DOWN"
.LASF10:
	.string	"long long unsigned int"
.LASF22:
	.string	"DownBtn"
.LASF9:
	.string	"long long int"
.LASF20:
	.string	"ButtonState"
.LASF3:
	.string	"short int"
.LASF27:
	.string	"WinBtn_GetWinBtnState"
.LASF13:
	.string	"SW_POS"
.LASF5:
	.string	"long int"
.LASF17:
	.string	"WINBTN_DOWN"
.LASF1:
	.string	"signed char"
.LASF16:
	.string	"WINBTN_UP"
.LASF25:
	.string	"X:\\\\VALEO_testing_academy\\\\challenge1\\\\C_ExampleTraineeVersion\\\\C_Example\\\\Debug"
.LASF18:
	.string	"boolean"
.LASF26:
	.string	"WinBtn_Init"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
