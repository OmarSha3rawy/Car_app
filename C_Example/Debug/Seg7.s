	.file	"Seg7.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Seg7_DpValue,"ax",@progbits
.global	Seg7_DpValue
	.type	Seg7_DpValue, @function
Seg7_DpValue:
.LFB7:
	.file 1 "../HAL/Seg7/Seg7_Src/Seg7.c"
	.loc 1 30 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 33 0
	cpi r24,lo8(2)
	brsh .L3
	.loc 1 39 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(G_au8Seg7DP))
	sbci r31,hi8(-(G_au8Seg7DP))
	st Z,r22
	.loc 1 31 0
	ldi r24,0
.LVL1:
	ret
.LVL2:
.L3:
	.loc 1 35 0
	ldi r24,lo8(1)
.LVL3:
	.loc 1 43 0
	ret
	.cfi_endproc
.LFE7:
	.size	Seg7_DpValue, .-Seg7_DpValue
	.section	.text.Seg7_WriteBuffer,"ax",@progbits
.global	Seg7_WriteBuffer
	.type	Seg7_WriteBuffer, @function
Seg7_WriteBuffer:
.LFB8:
	.loc 1 46 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 49 0
	cpi r24,lo8(2)
	brsh .L6
	.loc 1 50 0
	cpi r22,lo8(10)
	brsh .L7
	.loc 1 56 0
	mov r30,r24
	ldi r31,0
	subi r30,lo8(-(G_au8Seg7Buffer))
	sbci r31,hi8(-(G_au8Seg7Buffer))
	st Z,r22
	.loc 1 47 0
	ldi r24,0
.LVL5:
	ret
.LVL6:
.L6:
	.loc 1 52 0
	ldi r24,lo8(1)
.LVL7:
	ret
.LVL8:
.L7:
	ldi r24,lo8(1)
.LVL9:
	.loc 1 60 0
	ret
	.cfi_endproc
.LFE8:
	.size	Seg7_WriteBuffer, .-Seg7_WriteBuffer
	.section	.text.Seg7_UpdateDisplays,"ax",@progbits
.global	Seg7_UpdateDisplays
	.type	Seg7_UpdateDisplays, @function
Seg7_UpdateDisplays:
.LFB9:
	.loc 1 63 0
	.cfi_startproc
	push r14
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
.LVL10:
	.loc 1 71 0
	lds r14,u8displayIdx.1881
	mov r15,__zero_reg__
.LVL11:
	.loc 1 72 0
	movw r30,r14
	subi r30,lo8(-(G_au8Seg7Buffer))
	sbci r31,hi8(-(G_au8Seg7Buffer))
	ld r17,Z
.LVL12:
	.loc 1 73 0
	movw r30,r14
	subi r30,lo8(-(G_au8Seg7DP))
	sbci r31,hi8(-(G_au8Seg7DP))
	ld r16,Z
.LVL13:
	.loc 1 78 0
	ldi r28,lo8(Seg7_CfgArr)
	ldi r29,hi8(Seg7_CfgArr)
	ldi r22,0
	ld r24,Y
	call Dio_Write
.LVL14:
	ldi r22,0
	ldd r24,Y+7
	call Dio_Write
.LVL15:
	.loc 1 83 0
	mov r22,r17
	andi r22,lo8(1)
	movw r28,r14
	lsl r28
	rol r29
	lsl r28
	rol r29
	lsl r28
	rol r29
	sub r28,r14
	sbc r29,r15
	subi r28,lo8(-(Seg7_CfgArr))
	sbci r29,hi8(-(Seg7_CfgArr))
	ldd r24,Y+1
	call Dio_Write
.LVL16:
	.loc 1 84 0
	bst r17,1
	clr r22
	bld r22,0
	ldd r24,Y+2
	call Dio_Write
.LVL17:
	.loc 1 85 0
	bst r17,2
	clr r22
	bld r22,0
	ldd r24,Y+3
	call Dio_Write
.LVL18:
	.loc 1 86 0
	bst r17,3
	clr r22
	bld r22,0
	ldd r24,Y+4
	call Dio_Write
.LVL19:
	.loc 1 87 0
	mov r22,r16
	ldd r24,Y+5
	call Dio_Write
.LVL20:
	.loc 1 90 0
	ldi r22,lo8(1)
	ld r24,Y
	call Dio_Write
.LVL21:
	.loc 1 91 0
	lds r24,u8displayIdx.1881
	ldi r25,0
	adiw r24,1
	andi r24,1
	andi r25,128
	tst r25
	brge .L9
	sbiw r24,1
	ori r24,254
	ori r25,255
	adiw r24,1
.L9:
	sts u8displayIdx.1881,r24
	.loc 1 94 0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
.LVL22:
	pop r16
.LVL23:
	pop r15
	pop r14
.LVL24:
	ret
	.cfi_endproc
.LFE9:
	.size	Seg7_UpdateDisplays, .-Seg7_UpdateDisplays
	.section	.text.Seg7_Init,"ax",@progbits
.global	Seg7_Init
	.type	Seg7_Init, @function
Seg7_Init:
.LFB6:
	.loc 1 12 0
	.cfi_startproc
	push r14
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 14, -2
	push r15
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 15, -3
	push r16
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 16, -4
	push r17
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 17, -5
	push r28
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
.LVL25:
	.loc 1 19 0
	ldi r28,lo8(Seg7_CfgArr)
	ldi r29,hi8(Seg7_CfgArr)
	ld r24,Y
	call Dio_ClearChannel
.LVL26:
	.loc 1 20 0
	mov __tmp_reg__,r31
	ldi r31,lo8(G_au8Seg7Buffer)
	mov r14,r31
	ldi r31,hi8(G_au8Seg7Buffer)
	mov r15,r31
	mov r31,__tmp_reg__
	ldd r24,Y+6
	movw r30,r14
	st Z,r24
	.loc 1 21 0
	ldi r16,lo8(G_au8Seg7DP)
	ldi r17,hi8(G_au8Seg7DP)
	movw r30,r16
	st Z,__zero_reg__
.LVL27:
	.loc 1 19 0
	ldd r24,Y+7
	call Dio_ClearChannel
.LVL28:
	.loc 1 20 0
	ldd r24,Y+13
	movw r30,r14
	std Z+1,r24
	.loc 1 21 0
	movw r30,r16
	std Z+1,__zero_reg__
.LVL29:
	.loc 1 24 0
	call Seg7_UpdateDisplays
.LVL30:
	.loc 1 27 0
	ldi r24,0
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	ret
	.cfi_endproc
.LFE6:
	.size	Seg7_Init, .-Seg7_Init
	.section	.bss.u8displayIdx.1881,"aw",@nobits
	.type	u8displayIdx.1881, @object
	.size	u8displayIdx.1881, 1
u8displayIdx.1881:
	.zero	1
	.section	.bss.G_au8Seg7DP,"aw",@nobits
	.type	G_au8Seg7DP, @object
	.size	G_au8Seg7DP, 2
G_au8Seg7DP:
	.zero	2
	.section	.bss.G_au8Seg7Buffer,"aw",@nobits
	.type	G_au8Seg7Buffer, @object
	.size	G_au8Seg7Buffer, 2
G_au8Seg7Buffer:
	.zero	2
	.text
.Letext0:
	.file 2 "../HAL/Seg7/Seg7_Src/../../../Std_Headers/Std_Types.h"
	.file 3 "../HAL/Seg7/Seg7_Src/../../../MCAL/Dio/Dio_Src/Dio.h"
	.file 4 "../HAL/Seg7/Seg7_Src/../Seg7_Cfg/Seg7_Cfg.h"
	.file 5 "../HAL/Seg7/Seg7_Src/Seg7.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4ad
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF62
	.byte	0xc
	.long	.LASF63
	.long	.LASF64
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
	.long	0x124
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
	.uleb128 0x5
	.long	.LASF24
	.byte	0x8
	.uleb128 0x5
	.long	.LASF25
	.byte	0x9
	.uleb128 0x5
	.long	.LASF26
	.byte	0xa
	.uleb128 0x5
	.long	.LASF27
	.byte	0xb
	.uleb128 0x5
	.long	.LASF28
	.byte	0xc
	.uleb128 0x5
	.long	.LASF29
	.byte	0xd
	.uleb128 0x5
	.long	.LASF30
	.byte	0xe
	.uleb128 0x5
	.long	.LASF31
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.long	.LASF32
	.byte	0x3
	.byte	0x1b
	.long	0xb7
	.uleb128 0x7
	.byte	0x7
	.byte	0x4
	.byte	0x6
	.long	0x19a
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.byte	0x8
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.byte	0x9
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.byte	0xa
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.byte	0xb
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.byte	0xc
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.byte	0xd
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.byte	0xe
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x4
	.byte	0x10
	.long	0x12f
	.uleb128 0x4
	.byte	0x1
	.long	0x34
	.byte	0x5
	.byte	0xc
	.long	0x1c4
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
	.byte	0x5
	.byte	0xc
	.long	0x1a5
	.uleb128 0x9
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0x90
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x219
	.uleb128 0xa
	.long	.LASF45
	.byte	0x1
	.byte	0x1d
	.long	0x1c4
	.long	.LLST0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x1
	.byte	0x1d
	.long	0x29
	.byte	0x1
	.byte	0x66
	.uleb128 0xc
	.long	.LASF50
	.byte	0x1
	.byte	0x1f
	.long	0x90
	.long	.LLST1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF48
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	0x90
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x263
	.uleb128 0xa
	.long	.LASF45
	.byte	0x1
	.byte	0x2d
	.long	0x1c4
	.long	.LLST2
	.uleb128 0xb
	.long	.LASF49
	.byte	0x1
	.byte	0x2d
	.long	0x29
	.byte	0x1
	.byte	0x66
	.uleb128 0xc
	.long	.LASF50
	.byte	0x1
	.byte	0x2f
	.long	0x90
	.long	.LLST3
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.long	0x90
	.long	.LFB9
	.long	.LFE9
	.long	.LLST4
	.byte	0x1
	.long	0x3c2
	.uleb128 0xe
	.long	.LASF50
	.byte	0x1
	.byte	0x40
	.long	0x90
	.byte	0
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.byte	0x41
	.long	0x29
	.byte	0x5
	.byte	0x3
	.long	u8displayIdx.1881
	.uleb128 0xc
	.long	.LASF49
	.byte	0x1
	.byte	0x42
	.long	0x29
	.long	.LLST5
	.uleb128 0xc
	.long	.LASF46
	.byte	0x1
	.byte	0x43
	.long	0x3b
	.long	.LLST6
	.uleb128 0xc
	.long	.LASF53
	.byte	0x1
	.byte	0x44
	.long	0x3c2
	.long	.LLST7
	.uleb128 0xc
	.long	.LASF54
	.byte	0x1
	.byte	0x45
	.long	0x29
	.long	.LLST8
	.uleb128 0x10
	.long	.LVL14
	.long	0x496
	.long	0x2f6
	.uleb128 0x11
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.long	.LVL15
	.long	0x496
	.long	0x312
	.uleb128 0x11
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 7
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.long	.LVL16
	.long	0x496
	.long	0x330
	.uleb128 0x11
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x81
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.long	.LVL17
	.long	0x496
	.long	0x350
	.uleb128 0x11
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.byte	0x81
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x10
	.long	.LVL18
	.long	0x496
	.long	0x370
	.uleb128 0x11
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.byte	0x81
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x10
	.long	.LVL19
	.long	0x496
	.long	0x38e
	.uleb128 0x11
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x4
	.byte	0x81
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x10
	.long	.LVL20
	.long	0x496
	.long	0x3aa
	.uleb128 0x11
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 5
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.long	.LVL21
	.long	0x496
	.uleb128 0x11
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x2
	.long	0x3c8
	.uleb128 0x14
	.long	0x19a
	.uleb128 0xd
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.long	0x90
	.long	.LFB6
	.long	.LFE6
	.long	.LLST9
	.byte	0x1
	.long	0x43b
	.uleb128 0xc
	.long	.LASF56
	.byte	0x1
	.byte	0xd
	.long	0x29
	.long	.LLST10
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0xe
	.long	0x3c2
	.uleb128 0x10
	.long	.LVL26
	.long	0x4a3
	.long	0x41b
	.uleb128 0x11
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LVL28
	.long	0x4a3
	.long	0x431
	.uleb128 0x11
	.byte	0x1
	.byte	0x68
	.byte	0x4
	.byte	0x8c
	.sleb128 7
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.long	.LVL30
	.long	0x263
	.byte	0
	.uleb128 0x17
	.long	0x29
	.long	0x44b
	.uleb128 0x18
	.long	0x44b
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF57
	.uleb128 0xf
	.long	.LASF58
	.byte	0x1
	.byte	0x8
	.long	0x43b
	.byte	0x5
	.byte	0x3
	.long	G_au8Seg7Buffer
	.uleb128 0xf
	.long	.LASF59
	.byte	0x1
	.byte	0x9
	.long	0x43b
	.byte	0x5
	.byte	0x3
	.long	G_au8Seg7DP
	.uleb128 0x17
	.long	0x3c8
	.long	0x484
	.uleb128 0x18
	.long	0x44b
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.long	.LASF65
	.byte	0x5
	.byte	0xe
	.long	0x491
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.long	0x474
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF60
	.long	.LASF60
	.byte	0x3
	.byte	0x1f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF61
	.long	.LASF61
	.byte	0x3
	.byte	0x24
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
	.uleb128 0xc
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
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x68
	.long	.LVL3
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
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
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
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
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL9
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LFE8
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST4:
	.long	.LFB9
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
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL22
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL23
	.word	0x1
	.byte	0x60
	.long	0
	.long	0
.LLST7:
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL10
	.long	.LVL14
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL15
	.long	.LFE9
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LFB6
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI11
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST10:
	.long	.LVL25
	.long	.LVL27
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL27
	.long	.LVL29
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL29
	.long	.LFE6
	.word	0x2
	.byte	0x32
	.byte	0x9f
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB6
	.long	.LFE6
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"DIO_TST_PIN"
.LASF53:
	.string	"CfgPtr"
.LASF43:
	.string	"SEG7_NUM_OF_DIS"
.LASF63:
	.string	"../HAL/Seg7/Seg7_Src/Seg7.c"
.LASF56:
	.string	"u8DisplayIdx"
.LASF5:
	.string	"short int"
.LASF50:
	.string	"RetVal"
.LASF57:
	.string	"sizetype"
.LASF59:
	.string	"G_au8Seg7DP"
.LASF26:
	.string	"DIO_SEG7_DB"
.LASF10:
	.string	"STD_OK"
.LASF0:
	.string	"uint8"
.LASF32:
	.string	"Dio_ChannelIdTyp"
.LASF38:
	.string	"Seg7DPId"
.LASF29:
	.string	"DIO_SEG7_DP"
.LASF8:
	.string	"float"
.LASF44:
	.string	"Seg7_IdTyp"
.LASF14:
	.string	"long long int"
.LASF31:
	.string	"NUM_OF_CHANNELS"
.LASF65:
	.string	"Seg7_CfgArr"
.LASF7:
	.string	"long int"
.LASF45:
	.string	"Seg7Id"
.LASF41:
	.string	"SEG7_DISPLAY0"
.LASF42:
	.string	"SEG7_DISPLAY1"
.LASF16:
	.string	"DIO_SW_0"
.LASF17:
	.string	"DIO_SW_1"
.LASF18:
	.string	"DIO_SW_2"
.LASF47:
	.string	"Seg7_DpValue"
.LASF2:
	.string	"unsigned char"
.LASF3:
	.string	"signed char"
.LASF25:
	.string	"DIO_SEG7_DA"
.LASF15:
	.string	"long long unsigned int"
.LASF27:
	.string	"DIO_SEG7_DC"
.LASF28:
	.string	"DIO_SEG7_DD"
.LASF13:
	.string	"unsigned int"
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
.LASF61:
	.string	"Dio_ClearChannel"
.LASF30:
	.string	"DIO_PWD_0"
.LASF33:
	.string	"EnablePinId"
.LASF39:
	.string	"InitValue"
.LASF23:
	.string	"DIO_SEG7_En1"
.LASF24:
	.string	"DIO_SEG7_En2"
.LASF54:
	.string	"u8LoopIdx"
.LASF48:
	.string	"Seg7_WriteBuffer"
.LASF51:
	.string	"Seg7_UpdateDisplays"
.LASF37:
	.string	"Seg7DId"
.LASF6:
	.string	"long unsigned int"
.LASF35:
	.string	"Seg7BId"
.LASF9:
	.string	"double"
.LASF49:
	.string	"u8DisplayValue"
.LASF46:
	.string	"bDpState"
.LASF62:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF55:
	.string	"Seg7_Init"
.LASF11:
	.string	"STD_NOT_OK"
.LASF58:
	.string	"G_au8Seg7Buffer"
.LASF34:
	.string	"Seg7AId"
.LASF40:
	.string	"Seg7_CfgTyp"
.LASF36:
	.string	"Seg7CId"
.LASF64:
	.string	"X:\\\\VALEO_testing_academy\\\\challenge1\\\\C_ExampleTraineeVersion\\\\C_Example\\\\Debug"
.LASF52:
	.string	"u8displayIdx"
.LASF1:
	.string	"boolean"
.LASF60:
	.string	"Dio_Write"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_clear_bss
