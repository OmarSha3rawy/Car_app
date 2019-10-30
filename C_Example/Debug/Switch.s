	.file	"Switch.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Sw_Init,"ax",@progbits
.global	Sw_Init
	.type	Sw_Init, @function
Sw_Init:
.LFB6:
	.file 1 "../HAL/Switch/Switch_Src/Switch.c"
	.loc 1 16 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
	ldi r26,lo8(Sw_CfgArr)
	ldi r27,hi8(Sw_CfgArr)
	ldi r30,lo8(SwValue)
	ldi r31,hi8(SwValue)
	ldi r18,lo8(SwValue+3)
	ldi r19,hi8(SwValue+3)
	.loc 1 28 0
	ldi r25,lo8(1)
.LVL1:
.L4:
	.loc 1 22 0
	adiw r26,1
	ld r24,X
	sbiw r26,1
	cpi r24,lo8(1)
	brne .L2
	.loc 1 24 0
	st Z,__zero_reg__
	rjmp .L3
.L2:
	.loc 1 28 0
	st Z,r25
.L3:
.LVL2:
	adiw r26,2
	adiw r30,1
.LVL3:
	.loc 1 20 0
	cp r30,r18
	cpc r31,r19
	brne .L4
	.loc 1 34 0
	sts SwInitState,__zero_reg__
	.loc 1 37 0
	ldi r24,0
	ret
	.cfi_endproc
.LFE6:
	.size	Sw_Init, .-Sw_Init
	.section	.text.Sw_UpdateState_Cyclic,"ax",@progbits
.global	Sw_UpdateState_Cyclic
	.type	Sw_UpdateState_Cyclic, @function
Sw_UpdateState_Cyclic:
.LFB7:
	.loc 1 41 0
	.cfi_startproc
	push r6
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 6, -2
	push r7
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -3
	push r8
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 8, -4
	push r9
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 9, -5
	push r10
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 10, -6
	push r11
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -7
	push r12
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 12, -8
	push r13
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 13, -9
	push r14
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 14, -10
	push r15
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 15, -11
	push r16
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 16, -12
	push r17
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 17, -13
	push r28
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 28, -14
	push r29
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -15
	push __zero_reg__
.LCFI14:
	.cfi_def_cfa_offset 17
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI15:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 15 */
.L__stack_usage = 15
.LVL4:
	.loc 1 46 0
	std Y+1,__zero_reg__
	.loc 1 48 0
	lds r24,SwInitState
	cpse r24,__zero_reg__
	rjmp .L18
	mov __tmp_reg__,r31
	ldi r31,lo8(Sw_CfgArr)
	mov r14,r31
	ldi r31,hi8(Sw_CfgArr)
	mov r15,r31
	mov r31,__tmp_reg__
	ldi r16,lo8(SwState.1875)
	ldi r17,hi8(SwState.1875)
	mov __tmp_reg__,r31
	ldi r31,lo8(SwValue)
	mov r12,r31
	ldi r31,hi8(SwValue)
	mov r13,r31
	mov r31,__tmp_reg__
	mov __tmp_reg__,r31
	ldi r31,lo8(SwState.1875+3)
	mov r10,r31
	ldi r31,hi8(SwState.1875+3)
	mov r11,r31
	mov r31,__tmp_reg__
	.loc 1 61 0
	clr r9
	inc r9
	mov r8,__zero_reg__
	.loc 1 80 0
	set
	clr r7
	bld r7,1
	.loc 1 93 0
	mov __tmp_reg__,r31
	ldi r31,lo8(3)
	mov r6,r31
	mov r31,__tmp_reg__
.LVL5:
.L17:
	.loc 1 57 0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r26,r14
	ld r24,X
	call Dio_Read
.LVL6:
	.loc 1 59 0
	movw r30,r14
	ldd r24,Z+1
	cpse r24,__zero_reg__
	rjmp .L8
	.loc 1 61 0
	mov r24,r9
	ldd r25,Y+1
	cpse r25,__zero_reg__
	mov r24,r8
.L9:
	std Y+1,r24
.L8:
	movw r30,r16
	.loc 1 64 0
	ld r24,Z
	cpi r24,lo8(1)
	breq .L11
	brlo .L12
	cpi r24,lo8(2)
	breq .L13
	cpi r24,lo8(3)
	breq .L14
	rjmp .L10
.L12:
	.loc 1 67 0
	movw r26,r12
	st X,__zero_reg__
	.loc 1 69 0
	ldd r24,Y+1
	cpi r24,lo8(1)
	brne .L10
	.loc 1 71 0
	st Z,r9
	rjmp .L10
.L11:
	.loc 1 76 0
	movw r26,r12
	st X,__zero_reg__
	.loc 1 78 0
	ldd r24,Y+1
	cpi r24,lo8(1)
	brne .L15
	.loc 1 80 0
	st Z,r7
	rjmp .L10
.L15:
	.loc 1 82 0
	cpse r24,__zero_reg__
	rjmp .L10
	.loc 1 84 0
	st Z,__zero_reg__
	rjmp .L10
.L13:
	.loc 1 89 0
	movw r26,r12
	st X,r9
	.loc 1 91 0
	ldd r24,Y+1
	cpse r24,__zero_reg__
	rjmp .L10
	.loc 1 93 0
	st Z,r6
	rjmp .L10
.L14:
	.loc 1 98 0
	movw r26,r12
	st X,r9
	.loc 1 100 0
	ldd r24,Y+1
	cpi r24,lo8(1)
	brne .L16
	.loc 1 102 0
	st Z,r7
	rjmp .L10
.L16:
	.loc 1 104 0
	cpse r24,__zero_reg__
	rjmp .L10
	.loc 1 106 0
	st Z,__zero_reg__
.L10:
.LVL7:
	ldi r27,2
	add r14,r27
	adc r15,__zero_reg__
	subi r16,-1
	sbci r17,-1
.LVL8:
	ldi r30,-1
	sub r12,r30
	sbc r13,r30
.LVL9:
	.loc 1 54 0
	cp r16,r10
	cpc r17,r11
	breq .+2
	rjmp .L17
	.loc 1 42 0
	ldi r24,0
	rjmp .L7
.LVL10:
.L18:
	.loc 1 50 0
	ldi r24,lo8(1)
.LVL11:
.L7:
/* epilogue start */
	.loc 1 119 0
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	ret
	.cfi_endproc
.LFE7:
	.size	Sw_UpdateState_Cyclic, .-Sw_UpdateState_Cyclic
	.section	.text.Sw_GetState,"ax",@progbits
.global	Sw_GetState
	.type	Sw_GetState, @function
Sw_GetState:
.LFB8:
	.loc 1 123 0
	.cfi_startproc
.LVL12:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 126 0
	cpi r24,lo8(3)
	brsh .L22
	.loc 1 126 0 is_stmt 0 discriminator 1
	lds r25,SwInitState
	cpse r25,__zero_reg__
	rjmp .L23
	.loc 1 132 0 is_stmt 1
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(SwValue))
	sbci r31,hi8(-(SwValue))
	ld r24,Z
.LVL13:
	movw r30,r22
	st Z,r24
	.loc 1 124 0
	ldi r24,0
	ret
.LVL14:
.L22:
	.loc 1 128 0
	ldi r24,lo8(1)
.LVL15:
	ret
.LVL16:
.L23:
	ldi r24,lo8(1)
.LVL17:
	.loc 1 136 0
	ret
	.cfi_endproc
.LFE8:
	.size	Sw_GetState, .-Sw_GetState
	.section	.text.Sw_GetStateOnce,"ax",@progbits
.global	Sw_GetStateOnce
	.type	Sw_GetStateOnce, @function
Sw_GetStateOnce:
.LFB9:
	.loc 1 139 0
	.cfi_startproc
.LVL18:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 143 0
	cpi r24,lo8(3)
	brlo .+2
	rjmp .L32
	.loc 1 143 0 is_stmt 0 discriminator 1
	lds r25,SwInitState
	cpse r25,__zero_reg__
	rjmp .L33
	.loc 1 149 0 is_stmt 1
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(State.1897))
	sbci r31,hi8(-(State.1897))
	ld r18,Z
	cpi r18,lo8(1)
	breq .L26
	brlo .L27
	cpi r18,lo8(2)
	breq .L28
	rjmp .L35
.L27:
	.loc 1 152 0
	movw r30,r22
	st Z,__zero_reg__
	.loc 1 154 0
	movw r30,r24
	subi r30,lo8(-(SwValue))
	sbci r31,hi8(-(SwValue))
	ld r18,Z
	cpi r18,lo8(1)
	brne .L29
	.loc 1 156 0
	movw r30,r24
	subi r30,lo8(-(State.1897))
	sbci r31,hi8(-(State.1897))
	st Z,r18
	.loc 1 140 0
	ldi r24,0
.LVL19:
	ret
.LVL20:
.L29:
	.loc 1 160 0
	movw r30,r24
	subi r30,lo8(-(State.1897))
	sbci r31,hi8(-(State.1897))
	st Z,__zero_reg__
	.loc 1 140 0
	ldi r24,0
.LVL21:
	ret
.LVL22:
.L26:
	.loc 1 165 0
	ldi r18,lo8(1)
	movw r30,r22
	st Z,r18
	.loc 1 167 0
	movw r30,r24
	subi r30,lo8(-(SwValue))
	sbci r31,hi8(-(SwValue))
	ld r18,Z
	cpi r18,lo8(1)
	brne .L30
	.loc 1 169 0
	movw r30,r24
	subi r30,lo8(-(State.1897))
	sbci r31,hi8(-(State.1897))
	ldi r18,lo8(2)
	st Z,r18
	.loc 1 140 0
	ldi r24,0
.LVL23:
	ret
.LVL24:
.L30:
	.loc 1 173 0
	movw r30,r24
	subi r30,lo8(-(State.1897))
	sbci r31,hi8(-(State.1897))
	st Z,__zero_reg__
	.loc 1 140 0
	ldi r24,0
.LVL25:
	ret
.LVL26:
.L28:
	.loc 1 178 0
	movw r30,r22
	st Z,__zero_reg__
	.loc 1 180 0
	movw r30,r24
	subi r30,lo8(-(SwValue))
	sbci r31,hi8(-(SwValue))
	ld r18,Z
	cpi r18,lo8(1)
	brne .L31
	.loc 1 182 0
	movw r30,r24
	subi r30,lo8(-(State.1897))
	sbci r31,hi8(-(State.1897))
	ldi r18,lo8(2)
	st Z,r18
	.loc 1 140 0
	ldi r24,0
.LVL27:
	ret
.LVL28:
.L31:
	.loc 1 186 0
	movw r30,r24
	subi r30,lo8(-(State.1897))
	sbci r31,hi8(-(State.1897))
	st Z,__zero_reg__
	.loc 1 140 0
	ldi r24,0
.LVL29:
	ret
.LVL30:
.L32:
	.loc 1 145 0
	ldi r24,lo8(1)
.LVL31:
	ret
.LVL32:
.L33:
	ldi r24,lo8(1)
.LVL33:
	ret
.LVL34:
.L35:
	.loc 1 140 0
	ldi r24,0
.LVL35:
	.loc 1 193 0
	ret
	.cfi_endproc
.LFE9:
	.size	Sw_GetStateOnce, .-Sw_GetStateOnce
	.section	.bss.State.1897,"aw",@nobits
	.type	State.1897, @object
	.size	State.1897, 3
State.1897:
	.zero	3
	.section	.bss.SwState.1875,"aw",@nobits
	.type	SwState.1875, @object
	.size	SwState.1875, 3
SwState.1875:
	.zero	3
	.section	.bss.SwValue,"aw",@nobits
	.type	SwValue, @object
	.size	SwValue, 3
SwValue:
	.zero	3
	.section	.data.SwInitState,"aw",@progbits
	.type	SwInitState, @object
	.size	SwInitState, 1
SwInitState:
	.byte	1
	.text
.Letext0:
	.file 2 "../HAL/Switch/Switch_Src/../../../Std_Headers/Std_Types.h"
	.file 3 "../HAL/Switch/Switch_Src/../../../MCAL/Dio/Dio_Src/Dio.h"
	.file 4 "../HAL/Switch/Switch_Src/../Switch_Cfg/Switch_Cfg.h"
	.file 5 "../HAL/Switch/Switch_Src/Switch.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3dc
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF59
	.byte	0xc
	.long	.LASF60
	.long	.LASF61
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
	.byte	0x1
	.long	0x34
	.byte	0x2
	.byte	0xe
	.long	0x90
	.uleb128 0x5
	.long	.LASF10
	.byte	0
	.uleb128 0x5
	.long	.LASF11
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF12
	.byte	0x2
	.byte	0xe
	.long	0x77
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x4
	.byte	0x1
	.long	0x34
	.byte	0x3
	.byte	0xa
	.long	0xf4
	.uleb128 0x5
	.long	.LASF16
	.byte	0
	.uleb128 0x5
	.long	.LASF17
	.byte	0x1
	.uleb128 0x5
	.long	.LASF18
	.byte	0x2
	.uleb128 0x5
	.long	.LASF19
	.byte	0x3
	.uleb128 0x5
	.long	.LASF20
	.byte	0x4
	.uleb128 0x5
	.long	.LASF21
	.byte	0x5
	.uleb128 0x5
	.long	.LASF22
	.byte	0x6
	.uleb128 0x5
	.long	.LASF23
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.long	.LASF24
	.byte	0x3
	.byte	0x14
	.long	0xb7
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.byte	0xe
	.long	0x124
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0x10
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0x11
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x4
	.byte	0x12
	.long	0xff
	.uleb128 0x4
	.byte	0x1
	.long	0x34
	.byte	0x5
	.byte	0x15
	.long	0x154
	.uleb128 0x5
	.long	.LASF28
	.byte	0
	.uleb128 0x5
	.long	.LASF29
	.byte	0x1
	.uleb128 0x5
	.long	.LASF30
	.byte	0x2
	.uleb128 0x5
	.long	.LASF31
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF32
	.byte	0x5
	.byte	0x1a
	.long	0x12f
	.uleb128 0x4
	.byte	0x1
	.long	0x34
	.byte	0x5
	.byte	0x1c
	.long	0x178
	.uleb128 0x5
	.long	.LASF33
	.byte	0
	.uleb128 0x5
	.long	.LASF34
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF35
	.byte	0x5
	.byte	0x1c
	.long	0x15f
	.uleb128 0x4
	.byte	0x1
	.long	0x34
	.byte	0x1
	.byte	0xa
	.long	0x1a8
	.uleb128 0x5
	.long	.LASF36
	.byte	0
	.uleb128 0x5
	.long	.LASF37
	.byte	0x1
	.uleb128 0x5
	.long	.LASF38
	.byte	0x2
	.uleb128 0x5
	.long	.LASF39
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x1
	.byte	0xa
	.long	0x183
	.uleb128 0x4
	.byte	0x1
	.long	0x34
	.byte	0x1
	.byte	0xb
	.long	0x1d2
	.uleb128 0x5
	.long	.LASF41
	.byte	0
	.uleb128 0x5
	.long	.LASF42
	.byte	0x1
	.uleb128 0x5
	.long	.LASF43
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x1
	.byte	0xb
	.long	0x1b3
	.uleb128 0x9
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.long	0x90
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x217
	.uleb128 0xa
	.long	.LASF45
	.byte	0x1
	.byte	0x11
	.long	0x90
	.byte	0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x1
	.byte	0x12
	.long	0x29
	.long	.LLST0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	0x90
	.long	.LFB7
	.long	.LFE7
	.long	.LLST1
	.byte	0x1
	.long	0x297
	.uleb128 0xb
	.long	.LASF45
	.byte	0x1
	.byte	0x2a
	.long	0x90
	.long	.LLST2
	.uleb128 0xb
	.long	.LASF49
	.byte	0x1
	.byte	0x2b
	.long	0x297
	.long	.LLST3
	.uleb128 0xd
	.long	.LASF50
	.byte	0x1
	.byte	0x2c
	.long	0x2a2
	.byte	0x5
	.byte	0x3
	.long	SwState.1875
	.uleb128 0xb
	.long	.LASF46
	.byte	0x1
	.byte	0x2d
	.long	0x29
	.long	.LLST4
	.uleb128 0xd
	.long	.LASF51
	.byte	0x1
	.byte	0x2e
	.long	0x3b
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0xe
	.long	.LVL6
	.long	0x3d2
	.uleb128 0xf
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
	.uleb128 0x10
	.byte	0x2
	.long	0x29d
	.uleb128 0x11
	.long	0x124
	.uleb128 0x12
	.long	0x1a8
	.long	0x2b2
	.uleb128 0x13
	.long	0x2b2
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF52
	.uleb128 0x9
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	0x90
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x308
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x7a
	.long	0x154
	.long	.LLST5
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.byte	0x7a
	.long	0x308
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF45
	.byte	0x1
	.byte	0x7c
	.long	0x90
	.long	.LLST6
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.long	0x3b
	.uleb128 0x9
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.long	0x90
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x36e
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x8a
	.long	0x154
	.long	.LLST7
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.byte	0x8a
	.long	0x308
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF45
	.byte	0x1
	.byte	0x8c
	.long	0x90
	.long	.LLST8
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.byte	0x8d
	.long	0x36e
	.byte	0x5
	.byte	0x3
	.long	State.1897
	.byte	0
	.uleb128 0x12
	.long	0x1d2
	.long	0x37e
	.uleb128 0x13
	.long	0x2b2
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	.LASF57
	.byte	0x1
	.byte	0xc
	.long	0x178
	.byte	0x5
	.byte	0x3
	.long	SwInitState
	.uleb128 0x12
	.long	0x3b
	.long	0x39f
	.uleb128 0x13
	.long	0x2b2
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	.LASF58
	.byte	0x1
	.byte	0xd
	.long	0x38f
	.byte	0x5
	.byte	0x3
	.long	SwValue
	.uleb128 0x12
	.long	0x29d
	.long	0x3c0
	.uleb128 0x13
	.long	0x2b2
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.long	.LASF62
	.byte	0x5
	.byte	0x25
	.long	0x3cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x3b0
	.uleb128 0x17
	.byte	0x1
	.byte	0x1
	.long	.LASF63
	.long	.LASF63
	.byte	0x3
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.long	.LVL2
	.word	0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	SwValue
	.byte	0x1c
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0xb
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	SwValue
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL3
	.long	.LFE6
	.word	0x9
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	SwValue
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
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
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI15
	.long	.LFE7
	.word	0x2
	.byte	0x8c
	.sleb128 17
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LFE7
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL5
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL5
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL7
	.word	0x9
	.byte	0x80
	.sleb128 0
	.byte	0x3
	.long	SwState.1875
	.byte	0x1c
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0xb
	.byte	0x80
	.sleb128 0
	.byte	0x3
	.long	SwState.1875
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0xb
	.byte	0x8e
	.sleb128 0
	.byte	0x3
	.long	SwState.1875
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x9
	.byte	0x80
	.sleb128 0
	.byte	0x3
	.long	SwState.1875
	.byte	0x1c
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LVL14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x68
	.long	.LVL15
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
	.long	.LVL17
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LFE8
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST7:
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	.LVL19
	.long	.LVL20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL21
	.long	.LVL22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x68
	.long	.LVL23
	.long	.LVL24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.word	0x1
	.byte	0x68
	.long	.LVL25
	.long	.LVL26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.word	0x1
	.byte	0x68
	.long	.LVL27
	.long	.LVL28
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.word	0x1
	.byte	0x68
	.long	.LVL29
	.long	.LVL30
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
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
	.long	.LVL34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.word	0x1
	.byte	0x68
	.long	.LVL35
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LVL35
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LFE9
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"Sw_StateTyp"
.LASF19:
	.string	"DIO_TST_PIN"
.LASF49:
	.string	"CfgPtr"
.LASF32:
	.string	"Sw_SwIdTyp"
.LASF50:
	.string	"SwState"
.LASF30:
	.string	"SW_POS"
.LASF60:
	.string	"../HAL/Switch/Switch_Src/Switch.c"
.LASF5:
	.string	"short int"
.LASF45:
	.string	"RetVal"
.LASF52:
	.string	"sizetype"
.LASF58:
	.string	"SwValue"
.LASF10:
	.string	"STD_OK"
.LASF35:
	.string	"Sw_InitTyp"
.LASF0:
	.string	"uint8"
.LASF24:
	.string	"Dio_ChannelIdTyp"
.LASF28:
	.string	"SW_WIN_UP"
.LASF54:
	.string	"SwId"
.LASF39:
	.string	"SW_PRE_RELEASED"
.LASF8:
	.string	"float"
.LASF14:
	.string	"long long int"
.LASF23:
	.string	"NUM_OF_CHANNELS"
.LASF56:
	.string	"State"
.LASF7:
	.string	"long int"
.LASF55:
	.string	"Sw_GetStateOnce"
.LASF62:
	.string	"Sw_CfgArr"
.LASF16:
	.string	"DIO_SW_0"
.LASF17:
	.string	"DIO_SW_1"
.LASF18:
	.string	"DIO_SW_2"
.LASF42:
	.string	"SW_ONCE_PRESSED"
.LASF2:
	.string	"unsigned char"
.LASF26:
	.string	"ActiveState"
.LASF3:
	.string	"signed char"
.LASF15:
	.string	"long long unsigned int"
.LASF53:
	.string	"Sw_GetState"
.LASF13:
	.string	"unsigned int"
.LASF34:
	.string	"SW_UNINITIALIZED"
.LASF41:
	.string	"SW_ONCE_RELEASED"
.LASF27:
	.string	"Sw_SwTyp"
.LASF20:
	.string	"DIO_LED_0"
.LASF21:
	.string	"DIO_LED_1"
.LASF22:
	.string	"DIO_LED_2"
.LASF12:
	.string	"Std_RetTyp"
.LASF4:
	.string	"short unsigned int"
.LASF63:
	.string	"Dio_Read"
.LASF51:
	.string	"PinState"
.LASF48:
	.string	"Sw_UpdateState_Cyclic"
.LASF46:
	.string	"SwIdx"
.LASF36:
	.string	"SW_RELEASED"
.LASF47:
	.string	"Sw_Init"
.LASF6:
	.string	"long unsigned int"
.LASF9:
	.string	"double"
.LASF33:
	.string	"SW_INITALIZED"
.LASF29:
	.string	"SW_WIN_DOWN"
.LASF59:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF11:
	.string	"STD_NOT_OK"
.LASF57:
	.string	"SwInitState"
.LASF25:
	.string	"Sw_Id"
.LASF31:
	.string	"SW_NUM_OF_SW"
.LASF61:
	.string	"X:\\\\VALEO_testing_academy\\\\challenge1\\\\C_ExampleTraineeVersion\\\\C_Example\\\\Debug"
.LASF43:
	.string	"SW_ONCE_POST_PRESSED"
.LASF37:
	.string	"SW_PRE_PRESSED"
.LASF44:
	.string	"Sw_StateOnceTyp"
.LASF1:
	.string	"boolean"
.LASF38:
	.string	"SW_PRESSED"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
