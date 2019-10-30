	.file	"Pwd.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Pwd_Counters,"ax",@progbits
.global	Pwd_Counters
	.type	Pwd_Counters, @function
Pwd_Counters:
.LFB6:
	.file 1 "../HAL/PWD/PWD_Src/Pwd.c"
	.loc 1 19 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
	.loc 1 24 0
	lds r24,u16TimeCounter
	lds r25,u16TimeCounter+1
	lds r26,u16TimeCounter+2
	lds r27,u16TimeCounter+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts u16TimeCounter,r24
	sts u16TimeCounter+1,r25
	sts u16TimeCounter+2,r26
	sts u16TimeCounter+3,r27
.LVL1:
	ret
	.cfi_endproc
.LFE6:
	.size	Pwd_Counters, .-Pwd_Counters
	.section	.text.Pwd_Init,"ax",@progbits
.global	Pwd_Init
	.type	Pwd_Init, @function
Pwd_Init:
.LFB7:
	.loc 1 29 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL2:
	.loc 1 34 0
	sts PwdState,__zero_reg__
	.loc 1 35 0
	sts au8PwdDuty,__zero_reg__
	.loc 1 36 0
	sts au16PwdFrequency+1,__zero_reg__
	sts au16PwdFrequency,__zero_reg__
.LVL3:
	.loc 1 38 0
	ldi r24,lo8(1)
	sts PwdInitState,r24
	.loc 1 41 0
	ldi r24,0
	ret
	.cfi_endproc
.LFE7:
	.size	Pwd_Init, .-Pwd_Init
.global	__floatunsisf
.global	__divsf3
.global	__mulsf3
.global	__addsf3
.global	__fixunssfsi
	.section	.text.Pwd_CalcValues,"ax",@progbits
.global	Pwd_CalcValues
	.type	Pwd_CalcValues, @function
Pwd_CalcValues:
.LFB8:
	.loc 1 44 0
	.cfi_startproc
	push r8
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
	push r28
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
	push __zero_reg__
.LCFI10:
	.cfi_def_cfa_offset 13
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI11:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 11 */
.L__stack_usage = 11
.LVL4:
	.loc 1 46 0
	std Y+1,__zero_reg__
.LVL5:
	.loc 1 52 0
	lds r24,PwdInitState
	cpi r24,lo8(1)
	breq .+2
	rjmp .L15
.LVL6:
	.loc 1 61 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	lds r24,Pwd_CfgArr
	call Dio_Read
.LVL7:
	.loc 1 63 0
	lds r24,PwdState
	cpi r24,lo8(2)
	breq .L6
	brsh .L7
	tst r24
	breq .L8
	cpi r24,lo8(1)
	breq .L9
	rjmp .L16
.L7:
	cpi r24,lo8(4)
	brne .+2
	rjmp .L10
	brlo .L11
	cpi r24,lo8(5)
	brne .+2
	rjmp .L12
	rjmp .L16
.L8:
	.loc 1 67 0
	ldd r24,Y+1
	cpi r24,lo8(1)
	breq .+2
	rjmp .L17
	.loc 1 69 0
	sts PwdState,r24
	ldi r24,0
	rjmp .L4
.L9:
	.loc 1 74 0
	sts u16TimeCounter,__zero_reg__
	sts u16TimeCounter+1,__zero_reg__
	sts u16TimeCounter+2,__zero_reg__
	sts u16TimeCounter+3,__zero_reg__
	.loc 1 76 0
	ldd r24,Y+1
	cpi r24,lo8(1)
	brne .L13
	.loc 1 78 0
	ldi r24,lo8(2)
	sts PwdState,r24
	ldi r24,0
	rjmp .L4
.L13:
	.loc 1 82 0
	sts PwdState,__zero_reg__
.LVL8:
	.loc 1 83 0
	ldi r24,lo8(1)
	rjmp .L4
.LVL9:
.L6:
	.loc 1 89 0
	ldd r24,Y+1
	cpse r24,__zero_reg__
	rjmp .L18
	.loc 1 91 0
	ldi r24,lo8(3)
	sts PwdState,r24
	ldi r24,0
	rjmp .L4
.L11:
	.loc 1 96 0
	lds r24,u16TimeCounter
	lds r25,u16TimeCounter+1
	lds r26,u16TimeCounter+2
	lds r27,u16TimeCounter+3
	sts u16HighCount.1891,r24
	sts u16HighCount.1891+1,r25
	sts u16HighCount.1891+2,r26
	sts u16HighCount.1891+3,r27
	.loc 1 97 0
	sts u16TimeCounter,__zero_reg__
	sts u16TimeCounter+1,__zero_reg__
	sts u16TimeCounter+2,__zero_reg__
	sts u16TimeCounter+3,__zero_reg__
	.loc 1 99 0
	ldd r24,Y+1
	cpse r24,__zero_reg__
	rjmp .L14
	.loc 1 101 0
	ldi r24,lo8(4)
	sts PwdState,r24
	ldi r24,0
	rjmp .L4
.L14:
	.loc 1 105 0
	sts PwdState,__zero_reg__
.LVL10:
	.loc 1 106 0
	ldi r24,lo8(1)
	rjmp .L4
.LVL11:
.L10:
	.loc 1 112 0
	ldd r24,Y+1
	cpi r24,lo8(1)
	breq .+2
	rjmp .L19
	.loc 1 114 0
	ldi r24,lo8(5)
	sts PwdState,r24
	ldi r24,0
	rjmp .L4
.L12:
	.loc 1 120 0
	lds r12,u16HighCount.1891
	lds r13,u16HighCount.1891+1
	lds r14,u16HighCount.1891+2
	lds r15,u16HighCount.1891+3
	lds r24,u16TimeCounter
	lds r25,u16TimeCounter+1
	lds r26,u16TimeCounter+2
	lds r27,u16TimeCounter+3
	movw r22,r24
	movw r24,r26
	add r22,r12
	adc r23,r13
	adc r24,r14
	adc r25,r15
	call __floatunsisf
.LVL12:
	movw r8,r22
	movw r10,r24
	movw r24,r14
	movw r22,r12
	call __floatunsisf
.LVL13:
	movw r20,r10
	movw r18,r8
	call __divsf3
.LVL14:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-56)
	ldi r21,lo8(66)
	call __mulsf3
.LVL15:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	call __addsf3
.LVL16:
	call __fixunssfsi
.LVL17:
	sts au8PwdDuty,r22
	.loc 1 121 0
	movw r20,r10
	movw r18,r8
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(63)
	call __divsf3
.LVL18:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(122)
	ldi r21,lo8(68)
	call __mulsf3
.LVL19:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	call __addsf3
.LVL20:
	call __fixunssfsi
.LVL21:
	sts au16PwdFrequency+1,r23
	sts au16PwdFrequency,r22
	.loc 1 123 0
	sts PwdState,__zero_reg__
	.loc 1 124 0
	ldi r24,0
	rjmp .L4
.L16:
	.loc 1 63 0
	ldi r24,0
	rjmp .L4
.L17:
	ldi r24,0
	rjmp .L4
.L18:
	ldi r24,0
	rjmp .L4
.L19:
	ldi r24,0
.LVL22:
	rjmp .L4
.LVL23:
.L15:
	.loc 1 54 0
	ldi r24,lo8(1)
.LVL24:
.L4:
/* epilogue start */
	.loc 1 133 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE8:
	.size	Pwd_CalcValues, .-Pwd_CalcValues
	.section	.text.Pwd_GetDuty,"ax",@progbits
.global	Pwd_GetDuty
	.type	Pwd_GetDuty, @function
Pwd_GetDuty:
.LFB9:
	.loc 1 136 0
	.cfi_startproc
.LVL25:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 139 0
	cpse r24,__zero_reg__
	rjmp .L22
	.loc 1 139 0 is_stmt 0 discriminator 1
	lds r24,PwdInitState
.LVL26:
	cpi r24,lo8(1)
	brne .L23
	.loc 1 145 0 is_stmt 1
	lds r24,au8PwdDuty
	movw r30,r22
	st Z,r24
	.loc 1 137 0
	ldi r24,0
	ret
.LVL27:
.L22:
	.loc 1 141 0
	ldi r24,lo8(1)
.LVL28:
	ret
.L23:
	ldi r24,lo8(1)
.LVL29:
	.loc 1 149 0
	ret
	.cfi_endproc
.LFE9:
	.size	Pwd_GetDuty, .-Pwd_GetDuty
	.section	.text.Pwd_GetFrequency,"ax",@progbits
.global	Pwd_GetFrequency
	.type	Pwd_GetFrequency, @function
Pwd_GetFrequency:
.LFB10:
	.loc 1 152 0
	.cfi_startproc
.LVL30:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 155 0
	cpse r24,__zero_reg__
	rjmp .L26
	.loc 1 155 0 is_stmt 0 discriminator 1
	lds r24,PwdInitState
.LVL31:
	cpi r24,lo8(1)
	brne .L27
	.loc 1 161 0 is_stmt 1
	lds r24,au16PwdFrequency
	lds r25,au16PwdFrequency+1
	movw r30,r22
	std Z+1,r25
	st Z,r24
	.loc 1 153 0
	ldi r24,0
	ret
.LVL32:
.L26:
	.loc 1 157 0
	ldi r24,lo8(1)
.LVL33:
	ret
.L27:
	ldi r24,lo8(1)
.LVL34:
	.loc 1 165 0
	ret
	.cfi_endproc
.LFE10:
	.size	Pwd_GetFrequency, .-Pwd_GetFrequency
	.section	.bss.u16HighCount.1891,"aw",@nobits
	.type	u16HighCount.1891, @object
	.size	u16HighCount.1891, 4
u16HighCount.1891:
	.zero	4
	.section	.bss.u16TimeCounter,"aw",@nobits
	.type	u16TimeCounter, @object
	.size	u16TimeCounter, 4
u16TimeCounter:
	.zero	4
	.section	.bss.PwdInitState,"aw",@nobits
	.type	PwdInitState, @object
	.size	PwdInitState, 1
PwdInitState:
	.zero	1
	.section	.bss.au16PwdFrequency,"aw",@nobits
	.type	au16PwdFrequency, @object
	.size	au16PwdFrequency, 2
au16PwdFrequency:
	.zero	2
	.section	.bss.au8PwdDuty,"aw",@nobits
	.type	au8PwdDuty, @object
	.size	au8PwdDuty, 1
au8PwdDuty:
	.zero	1
	.section	.bss.PwdState,"aw",@nobits
	.type	PwdState, @object
	.size	PwdState, 1
PwdState:
	.zero	1
	.text
.Letext0:
	.file 2 "../HAL/PWD/PWD_Src/../../../Std_Headers/Std_Types.h"
	.file 3 "../HAL/PWD/PWD_Src/Pwd.h"
	.file 4 "../HAL/PWD/PWD_Src/../PWD_Cfg/../../../MCAL/Dio/Dio_Src/Dio.h"
	.file 5 "../HAL/PWD/PWD_Src/../PWD_Cfg/Pwd_Cfg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x456
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF67
	.byte	0xc
	.long	.LASF68
	.long	.LASF69
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
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
	.byte	0x8
	.long	0x58
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xa
	.long	0x71
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x4
	.string	"f32"
	.byte	0x2
	.byte	0xc
	.long	0x8a
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x5
	.byte	0x1
	.long	0x34
	.byte	0x2
	.byte	0xe
	.long	0xb1
	.uleb128 0x6
	.long	.LASF12
	.byte	0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF14
	.byte	0x2
	.byte	0xe
	.long	0x98
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF16
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF17
	.uleb128 0x8
	.byte	0x2
	.long	0x29
	.uleb128 0x5
	.byte	0x1
	.long	0x34
	.byte	0x3
	.byte	0x11
	.long	0xf7
	.uleb128 0x6
	.long	.LASF18
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.byte	0x11
	.long	0xde
	.uleb128 0x5
	.byte	0x1
	.long	0x34
	.byte	0x3
	.byte	0x12
	.long	0x133
	.uleb128 0x6
	.long	.LASF21
	.byte	0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.uleb128 0x6
	.long	.LASF24
	.byte	0x3
	.uleb128 0x6
	.long	.LASF25
	.byte	0x4
	.uleb128 0x6
	.long	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x3
	.byte	0x12
	.long	0x102
	.uleb128 0x5
	.byte	0x1
	.long	0x34
	.byte	0x3
	.byte	0x13
	.long	0x157
	.uleb128 0x6
	.long	.LASF28
	.byte	0
	.uleb128 0x6
	.long	.LASF29
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF30
	.byte	0x3
	.byte	0x13
	.long	0x13e
	.uleb128 0x5
	.byte	0x1
	.long	0x34
	.byte	0x4
	.byte	0xa
	.long	0x1cf
	.uleb128 0x6
	.long	.LASF31
	.byte	0
	.uleb128 0x6
	.long	.LASF32
	.byte	0x1
	.uleb128 0x6
	.long	.LASF33
	.byte	0x2
	.uleb128 0x6
	.long	.LASF34
	.byte	0x3
	.uleb128 0x6
	.long	.LASF35
	.byte	0x4
	.uleb128 0x6
	.long	.LASF36
	.byte	0x5
	.uleb128 0x6
	.long	.LASF37
	.byte	0x6
	.uleb128 0x6
	.long	.LASF38
	.byte	0x7
	.uleb128 0x6
	.long	.LASF39
	.byte	0x8
	.uleb128 0x6
	.long	.LASF40
	.byte	0x9
	.uleb128 0x6
	.long	.LASF41
	.byte	0xa
	.uleb128 0x6
	.long	.LASF42
	.byte	0xb
	.uleb128 0x6
	.long	.LASF43
	.byte	0xc
	.uleb128 0x6
	.long	.LASF44
	.byte	0xd
	.uleb128 0x6
	.long	.LASF45
	.byte	0xe
	.uleb128 0x6
	.long	.LASF46
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x4
	.byte	0x1b
	.long	0x162
	.uleb128 0x9
	.byte	0x1
	.byte	0x5
	.byte	0xd
	.long	0x1f1
	.uleb128 0xa
	.long	.LASF70
	.byte	0x5
	.byte	0xf
	.long	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x5
	.byte	0x10
	.long	0x1da
	.uleb128 0xb
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x226
	.uleb128 0xc
	.string	"Idx"
	.byte	0x1
	.byte	0x14
	.long	0x29
	.long	.LLST0
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	0xb1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x254
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.byte	0x1e
	.long	0x29
	.long	.LLST1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	0xb1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST2
	.byte	0x1
	.long	0x2df
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.byte	0x2d
	.long	0xb1
	.long	.LLST3
	.uleb128 0x10
	.long	.LASF53
	.byte	0x1
	.byte	0x2e
	.long	0x3b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0xe
	.long	.LASF54
	.byte	0x1
	.byte	0x2f
	.long	0x2df
	.long	.LLST4
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.byte	0x30
	.long	0x29
	.long	.LLST5
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x31
	.long	0x2ea
	.byte	0x5
	.byte	0x3
	.long	u16HighCount.1891
	.uleb128 0x11
	.long	.LASF72
	.byte	0x1
	.byte	0x32
	.long	0x2ea
	.uleb128 0x12
	.long	.LVL7
	.long	0x44c
	.uleb128 0x13
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
	.uleb128 0x8
	.byte	0x2
	.long	0x2e5
	.uleb128 0x14
	.long	0x1f1
	.uleb128 0x15
	.long	0x66
	.long	0x2fa
	.uleb128 0x16
	.long	0x2fa
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF56
	.uleb128 0xd
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x87
	.byte	0x1
	.long	0xb1
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x350
	.uleb128 0x17
	.long	.LASF58
	.byte	0x1
	.byte	0x87
	.long	0xf7
	.long	.LLST6
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.byte	0x87
	.long	0xd8
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.byte	0x89
	.long	0xb1
	.long	.LLST7
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF60
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.long	0xb1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x39f
	.uleb128 0x17
	.long	.LASF58
	.byte	0x1
	.byte	0x97
	.long	0xf7
	.long	.LLST8
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x97
	.long	0x39f
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.byte	0x99
	.long	0xb1
	.long	.LLST9
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x4d
	.uleb128 0x15
	.long	0x133
	.long	0x3b5
	.uleb128 0x16
	.long	0x2fa
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF62
	.byte	0x1
	.byte	0xc
	.long	0x3a5
	.byte	0x5
	.byte	0x3
	.long	PwdState
	.uleb128 0x15
	.long	0x29
	.long	0x3d6
	.uleb128 0x16
	.long	0x2fa
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0xd
	.long	0x3c6
	.byte	0x5
	.byte	0x3
	.long	au8PwdDuty
	.uleb128 0x15
	.long	0x4d
	.long	0x3f7
	.uleb128 0x16
	.long	0x2fa
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF64
	.byte	0x1
	.byte	0xe
	.long	0x3e7
	.byte	0x5
	.byte	0x3
	.long	au16PwdFrequency
	.uleb128 0x10
	.long	.LASF65
	.byte	0x1
	.byte	0xf
	.long	0x157
	.byte	0x5
	.byte	0x3
	.long	PwdInitState
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.byte	0x10
	.long	0x2ea
	.byte	0x5
	.byte	0x3
	.long	u16TimeCounter
	.uleb128 0x15
	.long	0x2e5
	.long	0x43a
	.uleb128 0x16
	.long	0x2fa
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF73
	.byte	0x5
	.byte	0x12
	.long	0x447
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0x42a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF74
	.long	.LASF74
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LFE6
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LFE7
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LFB8
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
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LFE8
	.word	0x2
	.byte	0x8c
	.sleb128 13
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL11
	.long	.LVL24
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL24
	.long	.LFE8
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL22
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL25
	.long	.LVL26
	.word	0x1
	.byte	0x68
	.long	.LVL26
	.long	.LVL27
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.word	0x1
	.byte	0x68
	.long	.LVL28
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL25
	.long	.LVL29
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LFE9
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST8:
	.long	.LVL30
	.long	.LVL31
	.word	0x1
	.byte	0x68
	.long	.LVL31
	.long	.LVL32
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.word	0x1
	.byte	0x68
	.long	.LVL33
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL30
	.long	.LVL34
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL34
	.long	.LFE10
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"Pwd_GetDuty"
.LASF34:
	.string	"DIO_TST_PIN"
.LASF54:
	.string	"CfgPtr"
.LASF61:
	.string	"Freq"
.LASF20:
	.string	"Pwd_IdTyp"
.LASF50:
	.string	"Pwd_Init"
.LASF6:
	.string	"short int"
.LASF52:
	.string	"RetVal"
.LASF56:
	.string	"sizetype"
.LASF28:
	.string	"PWD_UNINITIALIZED"
.LASF53:
	.string	"bStateInput"
.LASF55:
	.string	"u16HighCount"
.LASF49:
	.string	"PwdIdx"
.LASF74:
	.string	"Dio_Read"
.LASF29:
	.string	"PWD_INITIALIZED"
.LASF41:
	.string	"DIO_SEG7_DB"
.LASF59:
	.string	"Duty"
.LASF68:
	.string	"../HAL/PWD/PWD_Src/Pwd.c"
.LASF12:
	.string	"STD_OK"
.LASF58:
	.string	"PwdId"
.LASF0:
	.string	"uint8"
.LASF47:
	.string	"Dio_ChannelIdTyp"
.LASF44:
	.string	"DIO_SEG7_DP"
.LASF10:
	.string	"float"
.LASF18:
	.string	"PWD_0"
.LASF16:
	.string	"long long int"
.LASF46:
	.string	"NUM_OF_CHANNELS"
.LASF62:
	.string	"PwdState"
.LASF9:
	.string	"long int"
.LASF19:
	.string	"PWD_NUM_OF_SIGNALS"
.LASF71:
	.string	"Pwd_Counters"
.LASF31:
	.string	"DIO_SW_0"
.LASF32:
	.string	"DIO_SW_1"
.LASF33:
	.string	"DIO_SW_2"
.LASF2:
	.string	"unsigned char"
.LASF3:
	.string	"signed char"
.LASF40:
	.string	"DIO_SEG7_DA"
.LASF17:
	.string	"long long unsigned int"
.LASF42:
	.string	"DIO_SEG7_DC"
.LASF43:
	.string	"DIO_SEG7_DD"
.LASF72:
	.string	"u16LowCount"
.LASF15:
	.string	"unsigned int"
.LASF48:
	.string	"Pwd_CfgTyp"
.LASF35:
	.string	"DIO_LED_0"
.LASF36:
	.string	"DIO_LED_1"
.LASF37:
	.string	"DIO_LED_2"
.LASF14:
	.string	"Std_RetTyp"
.LASF65:
	.string	"PwdInitState"
.LASF5:
	.string	"short unsigned int"
.LASF45:
	.string	"DIO_PWD_0"
.LASF66:
	.string	"u16TimeCounter"
.LASF38:
	.string	"DIO_SEG7_En1"
.LASF39:
	.string	"DIO_SEG7_En2"
.LASF30:
	.string	"Pwd_InitTyp"
.LASF70:
	.string	"PwdChId"
.LASF4:
	.string	"uint16"
.LASF26:
	.string	"PWD_FINISH"
.LASF7:
	.string	"uint32"
.LASF8:
	.string	"long unsigned int"
.LASF11:
	.string	"double"
.LASF22:
	.string	"PWD_RISING_EDGE"
.LASF24:
	.string	"PWD_FALLING_EDGE"
.LASF27:
	.string	"Pwd_StateTyp"
.LASF67:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF60:
	.string	"Pwd_GetFrequency"
.LASF13:
	.string	"STD_NOT_OK"
.LASF21:
	.string	"PWD_IDLE"
.LASF25:
	.string	"PWD_LOW_WAIT"
.LASF69:
	.string	"X:\\\\VALEO_testing_academy\\\\challenge1\\\\C_ExampleTraineeVersion\\\\C_Example\\\\Debug"
.LASF73:
	.string	"Pwd_CfgArr"
.LASF23:
	.string	"PWD_HIGH_WAIT"
.LASF63:
	.string	"au8PwdDuty"
.LASF51:
	.string	"Pwd_CalcValues"
.LASF64:
	.string	"au16PwdFrequency"
.LASF1:
	.string	"boolean"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
