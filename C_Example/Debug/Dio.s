	.file	"Dio.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Dio_SetDir,"ax",@progbits
.global	Dio_SetDir
	.type	Dio_SetDir, @function
Dio_SetDir:
.LFB8:
	.file 1 "../MCAL/Dio/Dio_Src/Dio.c"
	.loc 1 63 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 75 0
	ldi r25,0
.LVL1:
	.loc 1 84 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ld r18,Z
	cpi r18,lo8(1)
	brne .+2
	rjmp .L3
	brlo .L4
	cpi r18,lo8(2)
	brne .+2
	rjmp .L5
	cpi r18,lo8(3)
	brne .+2
	rjmp .L6
	rjmp .L2
.L4:
	.loc 1 88 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldd r18,Z+2
	cpi r18,lo8(1)
	brne .L7
	.loc 1 88 0 discriminator 1
	in r18,0x1a
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL2:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x1a,r24
	rjmp .L2
.LVL3:
.L7:
	.loc 1 89 0
	in r18,0x1a
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL4:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x1a,r24
	rjmp .L2
.LVL5:
.L3:
	.loc 1 93 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldd r18,Z+2
	cpi r18,lo8(1)
	brne .L8
	.loc 1 93 0 discriminator 1
	in r18,0x17
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL6:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x17,r24
	rjmp .L2
.LVL7:
.L8:
	.loc 1 94 0
	in r18,0x17
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL8:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x17,r24
	rjmp .L2
.LVL9:
.L5:
	.loc 1 98 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldd r18,Z+2
	cpi r18,lo8(1)
	brne .L9
	.loc 1 98 0 discriminator 1
	in r18,0x14
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL10:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x14,r24
	rjmp .L2
.LVL11:
.L9:
	.loc 1 99 0
	in r18,0x14
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL12:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x14,r24
	rjmp .L2
.LVL13:
.L6:
	.loc 1 103 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldd r18,Z+2
	cpi r18,lo8(1)
	brne .L10
	.loc 1 103 0 discriminator 1
	in r18,0x11
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL14:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x11,r24
	rjmp .L2
.LVL15:
.L10:
	.loc 1 104 0
	in r18,0x11
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL16:
	movw r30,r24
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x11,r24
.L2:
	.loc 1 117 0
	ldi r24,0
	ret
	.cfi_endproc
.LFE8:
	.size	Dio_SetDir, .-Dio_SetDir
	.section	.text.Dio_Write,"ax",@progbits
.global	Dio_Write
	.type	Dio_Write, @function
Dio_Write:
.LFB9:
	.loc 1 119 0
	.cfi_startproc
.LVL17:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 131 0
	ldi r25,0
.LVL18:
	.loc 1 142 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ld r18,Z
	cpi r18,lo8(1)
	breq .L13
	brlo .L14
	cpi r18,lo8(2)
	brne .+2
	rjmp .L15
	cpi r18,lo8(3)
	brne .+2
	rjmp .L16
	rjmp .L12
.L14:
	.loc 1 146 0
	cpi r22,lo8(1)
	brne .L17
	.loc 1 146 0 discriminator 1
	in r18,0x1b
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL19:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x1b,r24
	rjmp .L12
.LVL20:
.L17:
	.loc 1 147 0
	in r18,0x1b
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL21:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x1b,r24
	rjmp .L12
.LVL22:
.L13:
	.loc 1 151 0
	cpi r22,lo8(1)
	brne .L18
	.loc 1 151 0 discriminator 1
	in r18,0x18
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL23:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x18,r24
	rjmp .L12
.LVL24:
.L18:
	.loc 1 152 0
	in r18,0x18
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL25:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x18,r24
	rjmp .L12
.LVL26:
.L15:
	.loc 1 156 0
	cpi r22,lo8(1)
	brne .L19
	.loc 1 156 0 discriminator 1
	in r18,0x15
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL27:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x15,r24
	rjmp .L12
.LVL28:
.L19:
	.loc 1 157 0
	in r18,0x15
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL29:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x15,r24
	rjmp .L12
.LVL30:
.L16:
	.loc 1 161 0
	cpi r22,lo8(1)
	brne .L20
	.loc 1 161 0 discriminator 1
	in r18,0x12
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL31:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x12,r24
	rjmp .L12
.LVL32:
.L20:
	.loc 1 162 0
	in r18,0x12
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL33:
	movw r30,r24
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x12,r24
.L12:
	.loc 1 175 0
	ldi r24,0
	ret
	.cfi_endproc
.LFE9:
	.size	Dio_Write, .-Dio_Write
	.section	.text.Dio_Init_Channel,"ax",@progbits
.global	Dio_Init_Channel
	.type	Dio_Init_Channel, @function
Dio_Init_Channel:
.LFB6:
	.loc 1 8 0
	.cfi_startproc
.LVL34:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LVL35:
	.loc 1 13 0
	cpi r24,lo8(7)
	brsh .L23
	mov r28,r24
	.loc 1 19 0
	mov r16,r24
	ldi r17,0
.LVL36:
	.loc 1 21 0
	call Dio_SetDir
.LVL37:
	.loc 1 23 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r16
	adc r31,r17
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldd r25,Z+2
	tst r25
	breq .L22
	.loc 1 41 0
	movw r30,r16
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r16,r30
	adc r17,r31
.LVL38:
	movw r30,r16
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldd r22,Z+4
	mov r24,r28
.LVL39:
	call Dio_Write
.LVL40:
	rjmp .L22
.LVL41:
.L23:
	.loc 1 15 0
	ldi r24,lo8(1)
.LVL42:
.L22:
/* epilogue start */
	.loc 1 46 0
	pop r28
	pop r17
	pop r16
	ret
	.cfi_endproc
.LFE6:
	.size	Dio_Init_Channel, .-Dio_Init_Channel
	.section	.text.Dio_Init,"ax",@progbits
.global	Dio_Init
	.type	Dio_Init, @function
Dio_Init:
.LFB7:
	.loc 1 49 0
	.cfi_startproc
	push r17
.LCFI3:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI5:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
.LVL43:
	.loc 1 51 0
	ldi r29,0
	.loc 1 53 0
	ldi r28,0
	.loc 1 56 0
	ldi r17,lo8(1)
.LVL44:
.L26:
	.loc 1 55 0
	mov r24,r28
	call Dio_Init_Channel
.LVL45:
	cpi r24,lo8(1)
	brne .L25
	.loc 1 56 0
	mov r29,r17
.LVL46:
.L25:
	.loc 1 53 0 discriminator 2
	subi r28,lo8(-(1))
.LVL47:
	cpi r28,lo8(7)
	brne .L26
	.loc 1 60 0
	mov r24,r29
/* epilogue start */
	pop r29
.LVL48:
	pop r28
.LVL49:
	pop r17
	ret
	.cfi_endproc
.LFE7:
	.size	Dio_Init, .-Dio_Init
	.section	.text.Dio_Read,"ax",@progbits
.global	Dio_Read
	.type	Dio_Read, @function
Dio_Read:
.LFB10:
	.loc 1 177 0
	.cfi_startproc
.LVL50:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 189 0
	ldi r25,0
.LVL51:
	.loc 1 199 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ld r18,Z
	cpi r18,lo8(1)
	breq .L30
	brlo .L31
	cpi r18,lo8(2)
	breq .L32
	cpi r18,lo8(3)
	brne .+2
	rjmp .L33
	rjmp .L29
.L31:
	.loc 1 203 0
	in r18,0x19
	.loc 1 203 0
	ldi r19,0
	.loc 1 203 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL52:
	movw r30,r24
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	.loc 1 203 0
	movw r24,r18
	ldd r0,Z+1
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	andi r24,lo8(1)
	movw r30,r22
	st Z,r24
	.loc 1 204 0
	rjmp .L29
.LVL53:
.L30:
	.loc 1 207 0
	in r18,0x16
	.loc 1 207 0
	ldi r19,0
	.loc 1 207 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL54:
	movw r30,r24
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	.loc 1 207 0
	movw r24,r18
	ldd r0,Z+1
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	andi r24,lo8(1)
	movw r30,r22
	st Z,r24
	.loc 1 208 0
	rjmp .L29
.LVL55:
.L32:
	.loc 1 211 0
	in r18,0x13
	.loc 1 211 0
	ldi r19,0
	.loc 1 211 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL56:
	movw r30,r24
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	.loc 1 211 0
	movw r24,r18
	ldd r0,Z+1
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	andi r24,lo8(1)
	movw r30,r22
	st Z,r24
	.loc 1 212 0
	rjmp .L29
.LVL57:
.L33:
	.loc 1 215 0
	in r18,0x10
	.loc 1 215 0
	ldi r19,0
	.loc 1 215 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL58:
	movw r30,r24
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	.loc 1 215 0
	movw r24,r18
	ldd r0,Z+1
	rjmp 2f
	1:
	asr r25
	ror r24
	2:
	dec r0
	brpl 1b
	andi r24,lo8(1)
	movw r30,r22
	st Z,r24
.L29:
	.loc 1 228 0
	ldi r24,0
	ret
	.cfi_endproc
.LFE10:
	.size	Dio_Read, .-Dio_Read
	.section	.text.Dio_SetChannel,"ax",@progbits
.global	Dio_SetChannel
	.type	Dio_SetChannel, @function
Dio_SetChannel:
.LFB11:
	.loc 1 231 0
	.cfi_startproc
.LVL59:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 243 0
	ldi r25,0
.LVL60:
	.loc 1 255 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ld r18,Z
	cpi r18,lo8(1)
	breq .L36
	brlo .L37
	cpi r18,lo8(2)
	breq .L38
	cpi r18,lo8(3)
	brne .+2
	rjmp .L39
	rjmp .L35
.L37:
	.loc 1 259 0
	in r18,0x1a
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL61:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x1a,r24
	.loc 1 260 0
	rjmp .L35
.LVL62:
.L36:
	.loc 1 263 0
	in r18,0x17
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL63:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x17,r24
	.loc 1 264 0
	rjmp .L35
.LVL64:
.L38:
	.loc 1 267 0
	in r18,0x14
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL65:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x14,r24
	.loc 1 268 0
	rjmp .L35
.LVL66:
.L39:
	.loc 1 271 0
	in r18,0x11
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL67:
	movw r30,r24
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r24,r18
	out 0x11,r24
.L35:
	.loc 1 284 0
	ldi r24,0
	ret
	.cfi_endproc
.LFE11:
	.size	Dio_SetChannel, .-Dio_SetChannel
	.section	.text.Dio_ClearChannel,"ax",@progbits
.global	Dio_ClearChannel
	.type	Dio_ClearChannel, @function
Dio_ClearChannel:
.LFB12:
	.loc 1 287 0
	.cfi_startproc
.LVL68:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 299 0
	ldi r25,0
.LVL69:
	.loc 1 311 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ld r18,Z
	cpi r18,lo8(1)
	breq .L42
	brlo .L43
	cpi r18,lo8(2)
	breq .L44
	cpi r18,lo8(3)
	brne .+2
	rjmp .L45
	rjmp .L41
.L43:
	.loc 1 315 0
	in r18,0x1a
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL70:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x1a,r24
	.loc 1 316 0
	rjmp .L41
.LVL71:
.L42:
	.loc 1 319 0
	in r18,0x17
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL72:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x17,r24
	.loc 1 320 0
	rjmp .L41
.LVL73:
.L44:
	.loc 1 323 0
	in r18,0x14
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL74:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x14,r24
	.loc 1 324 0
	rjmp .L41
.LVL75:
.L45:
	.loc 1 327 0
	in r18,0x11
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL76:
	movw r30,r24
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	out 0x11,r24
.L41:
	.loc 1 340 0
	ldi r24,0
	ret
	.cfi_endproc
.LFE12:
	.size	Dio_ClearChannel, .-Dio_ClearChannel
	.section	.text.Dio_ToggleChannel,"ax",@progbits
.global	Dio_ToggleChannel
	.type	Dio_ToggleChannel, @function
Dio_ToggleChannel:
.LFB13:
	.loc 1 343 0
	.cfi_startproc
.LVL77:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 355 0
	ldi r25,0
.LVL78:
	.loc 1 367 0
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ld r18,Z
	cpi r18,lo8(1)
	breq .L48
	brlo .L49
	cpi r18,lo8(2)
	breq .L50
	cpi r18,lo8(3)
	brne .+2
	rjmp .L51
	rjmp .L47
.L49:
	.loc 1 371 0
	in r18,0x1b
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL79:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	eor r24,r18
	out 0x1b,r24
	.loc 1 372 0
	rjmp .L47
.LVL80:
.L48:
	.loc 1 375 0
	in r18,0x18
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL81:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	eor r24,r18
	out 0x18,r24
	.loc 1 376 0
	rjmp .L47
.LVL82:
.L50:
	.loc 1 379 0
	in r18,0x15
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r30,r24
	adc r31,r25
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
.LVL83:
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	eor r24,r18
	out 0x15,r24
	.loc 1 380 0
	rjmp .L47
.LVL84:
.L51:
	.loc 1 383 0
	in r18,0x12
	movw r30,r24
	lsl r30
	rol r31
	lsl r30
	rol r31
	add r24,r30
	adc r25,r31
.LVL85:
	movw r30,r24
	subi r30,lo8(-(Dio_CfgArr))
	sbci r31,hi8(-(Dio_CfgArr))
	ldi r24,lo8(1)
	ldi r25,0
	ldd r0,Z+1
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	eor r24,r18
	out 0x12,r24
.L47:
	.loc 1 396 0
	ldi r24,0
	ret
	.cfi_endproc
.LFE13:
	.size	Dio_ToggleChannel, .-Dio_ToggleChannel
	.text
.Letext0:
	.file 2 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Std_Types.h"
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 4 "../MCAL/Dio/Dio_Src/../../../Std_Headers/Controller.h"
	.file 5 "../MCAL/Dio/Dio_Src/Dio.h"
	.file 6 "../MCAL/Dio/Dio_Src/../Dio_Cfg/Dio_Cfg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4ae
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF57
	.byte	0xc
	.long	.LASF58
	.long	.LASF59
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF10
	.byte	0x2
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
	.byte	0x1
	.long	0x29
	.byte	0x2
	.byte	0xe
	.long	0x85
	.uleb128 0x5
	.long	.LASF8
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF11
	.byte	0x2
	.byte	0xe
	.long	0x6c
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x7e
	.long	0x29
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x7
	.long	.LASF22
	.byte	0x1
	.long	0x29
	.byte	0x4
	.byte	0xe
	.long	0xe6
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
	.byte	0
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0xe
	.long	0xb7
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.long	0x29
	.byte	0x4
	.byte	0xf
	.long	0x130
	.uleb128 0x8
	.string	"P0"
	.byte	0
	.uleb128 0x8
	.string	"P1"
	.byte	0x1
	.uleb128 0x8
	.string	"P2"
	.byte	0x2
	.uleb128 0x8
	.string	"P3"
	.byte	0x3
	.uleb128 0x8
	.string	"P4"
	.byte	0x4
	.uleb128 0x8
	.string	"P5"
	.byte	0x5
	.uleb128 0x8
	.string	"P6"
	.byte	0x6
	.uleb128 0x8
	.string	"P7"
	.byte	0x7
	.uleb128 0x5
	.long	.LASF24
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x4
	.byte	0xf
	.long	0xf1
	.uleb128 0x4
	.byte	0x1
	.long	0x29
	.byte	0x5
	.byte	0xa
	.long	0x178
	.uleb128 0x5
	.long	.LASF26
	.byte	0
	.uleb128 0x5
	.long	.LASF27
	.byte	0x1
	.uleb128 0x5
	.long	.LASF28
	.byte	0x2
	.uleb128 0x5
	.long	.LASF29
	.byte	0x3
	.uleb128 0x5
	.long	.LASF30
	.byte	0x4
	.uleb128 0x5
	.long	.LASF31
	.byte	0x5
	.uleb128 0x5
	.long	.LASF32
	.byte	0x6
	.uleb128 0x5
	.long	.LASF33
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF34
	.byte	0x5
	.byte	0x14
	.long	0x13b
	.uleb128 0x9
	.byte	0x5
	.byte	0x6
	.byte	0xa
	.long	0x1d2
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.byte	0xc
	.long	0xe6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.byte	0xd
	.long	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.byte	0xe
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.byte	0xf
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.byte	0x10
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF40
	.byte	0x6
	.byte	0x11
	.long	0x183
	.uleb128 0xb
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.long	0x85
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x226
	.uleb128 0xc
	.long	.LASF45
	.byte	0x1
	.byte	0x3e
	.long	0x178
	.long	.LLST0
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0x40
	.long	0x226
	.long	.LLST1
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.byte	0x41
	.long	0x85
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x22c
	.uleb128 0x10
	.long	0x1d2
	.uleb128 0xb
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	0x85
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x287
	.uleb128 0xc
	.long	.LASF45
	.byte	0x1
	.byte	0x76
	.long	0x178
	.long	.LLST2
	.uleb128 0x11
	.long	.LASF46
	.byte	0x1
	.byte	0x76
	.long	0x30
	.byte	0x1
	.byte	0x66
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0x78
	.long	0x226
	.long	.LLST3
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.byte	0x79
	.long	0x85
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.long	0x85
	.long	.LFB6
	.long	.LFE6
	.long	.LLST4
	.byte	0x1
	.long	0x2f7
	.uleb128 0xc
	.long	.LASF45
	.byte	0x1
	.byte	0x7
	.long	0x178
	.long	.LLST5
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.byte	0x9
	.long	0x85
	.long	.LLST6
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0xa
	.long	0x226
	.long	.LLST7
	.uleb128 0x13
	.long	.LVL37
	.long	0x1dd
	.long	0x2e6
	.uleb128 0x14
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LVL40
	.long	0x231
	.uleb128 0x14
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	0x85
	.long	.LFB7
	.long	.LFE7
	.long	.LLST8
	.byte	0x1
	.long	0x344
	.uleb128 0xd
	.long	.LASF50
	.byte	0x1
	.byte	0x32
	.long	0x178
	.long	.LLST9
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.byte	0x33
	.long	0x85
	.long	.LLST10
	.uleb128 0x15
	.long	.LVL45
	.long	0x287
	.uleb128 0x14
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	0x85
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x39f
	.uleb128 0xc
	.long	.LASF45
	.byte	0x1
	.byte	0xb0
	.long	0x178
	.long	.LLST11
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.byte	0xb0
	.long	0x39f
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0xb2
	.long	0x226
	.long	.LLST12
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.byte	0xb3
	.long	0x85
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x30
	.uleb128 0xb
	.byte	0x1
	.long	.LASF53
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.long	0x85
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3ee
	.uleb128 0xc
	.long	.LASF45
	.byte	0x1
	.byte	0xe6
	.long	0x178
	.long	.LLST13
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0xe8
	.long	0x226
	.long	.LLST14
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.byte	0xe9
	.long	0x85
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.word	0x11e
	.byte	0x1
	.long	0x85
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x43b
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.word	0x11e
	.long	0x178
	.long	.LLST15
	.uleb128 0x18
	.long	.LASF41
	.byte	0x1
	.word	0x120
	.long	0x226
	.long	.LLST16
	.uleb128 0x19
	.long	.LASF42
	.byte	0x1
	.word	0x121
	.long	0x85
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.word	0x156
	.byte	0x1
	.long	0x85
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x488
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.word	0x156
	.long	0x178
	.long	.LLST17
	.uleb128 0x18
	.long	.LASF41
	.byte	0x1
	.word	0x158
	.long	0x226
	.long	.LLST18
	.uleb128 0x19
	.long	.LASF42
	.byte	0x1
	.word	0x159
	.long	0x85
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x22c
	.long	0x498
	.uleb128 0x1b
	.long	0x498
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF56
	.uleb128 0x1c
	.long	.LASF60
	.byte	0x6
	.byte	0x14
	.long	0x4ac
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x488
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.word	0x1
	.byte	0x68
	.long	.LVL2
	.long	.LVL3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x68
	.long	.LVL4
	.long	.LVL5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.word	0x1
	.byte	0x68
	.long	.LVL6
	.long	.LVL7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x68
	.long	.LVL8
	.long	.LVL9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x68
	.long	.LVL10
	.long	.LVL11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	.LVL12
	.long	.LVL13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.word	0x1
	.byte	0x68
	.long	.LVL14
	.long	.LVL15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL17
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
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LFB6
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
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST5:
	.long	.LVL34
	.long	.LVL37-1
	.word	0x1
	.byte	0x68
	.long	.LVL37-1
	.long	.LVL38
	.word	0x1
	.byte	0x60
	.long	.LVL38
	.long	.LVL41
	.word	0x1
	.byte	0x6c
	.long	.LVL41
	.long	.LVL42
	.word	0x1
	.byte	0x68
	.long	.LVL42
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL35
	.long	.LVL37
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL39
	.word	0x1
	.byte	0x68
	.long	.LVL40
	.long	.LVL41
	.word	0x1
	.byte	0x68
	.long	.LVL41
	.long	.LVL42
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL42
	.long	.LFE6
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST7:
	.long	.LVL35
	.long	.LVL36
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL41
	.long	.LVL42
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LFB7
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI5
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST9:
	.long	.LVL43
	.long	.LVL44
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL44
	.long	.LVL49
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST10:
	.long	.LVL43
	.long	.LVL44
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL44
	.long	.LVL48
	.word	0x1
	.byte	0x6d
	.long	.LVL48
	.long	.LFE7
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST11:
	.long	.LVL50
	.long	.LVL52
	.word	0x1
	.byte	0x68
	.long	.LVL52
	.long	.LVL53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL53
	.long	.LVL54
	.word	0x1
	.byte	0x68
	.long	.LVL54
	.long	.LVL55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL55
	.long	.LVL56
	.word	0x1
	.byte	0x68
	.long	.LVL56
	.long	.LVL57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL57
	.long	.LVL58
	.word	0x1
	.byte	0x68
	.long	.LVL58
	.long	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL50
	.long	.LVL51
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL59
	.long	.LVL61
	.word	0x1
	.byte	0x68
	.long	.LVL61
	.long	.LVL62
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL62
	.long	.LVL63
	.word	0x1
	.byte	0x68
	.long	.LVL63
	.long	.LVL64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65
	.word	0x1
	.byte	0x68
	.long	.LVL65
	.long	.LVL66
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL66
	.long	.LVL67
	.word	0x1
	.byte	0x68
	.long	.LVL67
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL59
	.long	.LVL60
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL68
	.long	.LVL70
	.word	0x1
	.byte	0x68
	.long	.LVL70
	.long	.LVL71
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL71
	.long	.LVL72
	.word	0x1
	.byte	0x68
	.long	.LVL72
	.long	.LVL73
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74
	.word	0x1
	.byte	0x68
	.long	.LVL74
	.long	.LVL75
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL75
	.long	.LVL76
	.word	0x1
	.byte	0x68
	.long	.LVL76
	.long	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL68
	.long	.LVL69
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL77
	.long	.LVL79
	.word	0x1
	.byte	0x68
	.long	.LVL79
	.long	.LVL80
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL80
	.long	.LVL81
	.word	0x1
	.byte	0x68
	.long	.LVL81
	.long	.LVL82
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL82
	.long	.LVL83
	.word	0x1
	.byte	0x68
	.long	.LVL83
	.long	.LVL84
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL84
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL85
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL77
	.long	.LVL78
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"DIO_TST_PIN"
.LASF41:
	.string	"CfgPtr"
.LASF43:
	.string	"Dio_SetDir"
.LASF46:
	.string	"u8Value"
.LASF23:
	.string	"Pins"
.LASF3:
	.string	"short int"
.LASF42:
	.string	"RetVal"
.LASF53:
	.string	"Dio_SetChannel"
.LASF40:
	.string	"Dio_ChannelCfgTyp"
.LASF60:
	.string	"Dio_CfgArr"
.LASF52:
	.string	"u8pValuePtr"
.LASF8:
	.string	"STD_OK"
.LASF12:
	.string	"uint8_t"
.LASF49:
	.string	"Dio_Init"
.LASF34:
	.string	"Dio_ChannelIdTyp"
.LASF38:
	.string	"isPullUp"
.LASF39:
	.string	"initVal"
.LASF45:
	.string	"ChannelId"
.LASF6:
	.string	"float"
.LASF22:
	.string	"Ports"
.LASF14:
	.string	"long long int"
.LASF33:
	.string	"NUM_OF_CHANNELS"
.LASF5:
	.string	"long int"
.LASF58:
	.string	"../MCAL/Dio/Dio_Src/Dio.c"
.LASF26:
	.string	"DIO_SW_0"
.LASF0:
	.string	"unsigned char"
.LASF1:
	.string	"signed char"
.LASF15:
	.string	"long long unsigned int"
.LASF13:
	.string	"unsigned int"
.LASF35:
	.string	"PinPort"
.LASF30:
	.string	"DIO_LED_0"
.LASF31:
	.string	"DIO_LED_1"
.LASF32:
	.string	"DIO_LED_2"
.LASF11:
	.string	"Std_RetTyp"
.LASF2:
	.string	"short unsigned int"
.LASF54:
	.string	"Dio_ClearChannel"
.LASF17:
	.string	"PORT_B"
.LASF18:
	.string	"PORT_C"
.LASF19:
	.string	"PORT_D"
.LASF51:
	.string	"Dio_Read"
.LASF16:
	.string	"PORT_A"
.LASF21:
	.string	"ePortsTyp"
.LASF50:
	.string	"CurrentId"
.LASF37:
	.string	"PinDir"
.LASF20:
	.string	"MAX_NUM_OF_PORTS"
.LASF36:
	.string	"PinNum"
.LASF4:
	.string	"long unsigned int"
.LASF7:
	.string	"double"
.LASF24:
	.string	"MAX_NUM_OF_PINS"
.LASF57:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF9:
	.string	"STD_NOT_OK"
.LASF56:
	.string	"sizetype"
.LASF55:
	.string	"Dio_ToggleChannel"
.LASF47:
	.string	"Dio_Init_Channel"
.LASF48:
	.string	"retVal"
.LASF59:
	.string	"X:\\\\VALEO_testing_academy\\\\challenge1\\\\C_ExampleTraineeVersion\\\\C_Example\\\\Debug"
.LASF27:
	.string	"DIO_SW_1"
.LASF28:
	.string	"DIO_SW_2"
.LASF25:
	.string	"ePinsTyp"
.LASF10:
	.string	"boolean"
.LASF44:
	.string	"Dio_Write"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
