	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB6:
	.file 1 ".././main.c"
	.loc 1 15 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 16 0
	call Task_Init
.LVL0:
	.loc 1 50 0
	mov __tmp_reg__,r31
	ldi r31,lo8(20)
	mov r10,r31
	mov r31,__tmp_reg__
	.loc 1 55 0
	mov __tmp_reg__,r31
	ldi r31,lo8(50)
	mov r11,r31
	mov r31,__tmp_reg__
	.loc 1 60 0
	mov __tmp_reg__,r31
	ldi r31,lo8(100)
	mov r12,r31
	mov r31,__tmp_reg__
	.loc 1 65 0
	mov __tmp_reg__,r31
	ldi r31,lo8(-56)
	mov r13,r31
	mov r31,__tmp_reg__
	.loc 1 70 0
	mov __tmp_reg__,r31
	ldi r31,lo8(-12)
	mov r14,r31
	clr r15
	inc r15
	mov r31,__tmp_reg__
	.loc 1 75 0
	ldi r16,lo8(-24)
	ldi r17,lo8(3)
	.loc 1 80 0
	ldi r28,lo8(-48)
	ldi r29,lo8(7)
.L2:
	.loc 1 21 0
	lds r24,u8IsTickCountersUpdated
	cpi r24,lo8(1)
	brne .L2
	.loc 1 23 0
	sts u8IsTickCountersUpdated,__zero_reg__
	.loc 1 25 0
	lds r24,u16Counter_500us
	lds r25,u16Counter_500us+1
	.loc 1 27 0
	call Task_500us
.LVL1:
	.loc 1 30 0
	lds r24,u16Counter_1ms
	lds r25,u16Counter_1ms+1
	.loc 1 32 0
	call Task_1ms
.LVL2:
	.loc 1 35 0
	lds r24,u16Counter_1ms
	lds r25,u16Counter_1ms+1
	sbrs r24,0
	.loc 1 37 0
	call Task_2ms
.LVL3:
.L3:
	.loc 1 40 0
	lds r20,u16Counter_1ms
	lds r21,u16Counter_1ms+1
	movw r18,r20
	ldi r26,lo8(-51)
	ldi r27,lo8(-52)
	call __umulhisi3
	lsr r25
	ror r24
	lsr r25
	ror r24
	movw r18,r24
	lsl r18
	rol r19
	lsl r18
	rol r19
	add r24,r18
	adc r25,r19
	cp r20,r24
	cpc r21,r25
	brne .L4
	.loc 1 42 0
	call Task_5ms
.LVL4:
.L4:
	.loc 1 45 0
	lds r20,u16Counter_1ms
	lds r21,u16Counter_1ms+1
	movw r18,r20
	ldi r26,lo8(-51)
	ldi r27,lo8(-52)
	call __umulhisi3
	lsr r25
	ror r24
	lsr r25
	ror r24
	lsr r25
	ror r24
	movw r18,r24
	lsl r18
	rol r19
	lsl r24
	rol r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	add r24,r18
	adc r25,r19
	cp r20,r24
	cpc r21,r25
	brne .L5
	.loc 1 47 0
	call Task_10ms
.LVL5:
.L5:
	.loc 1 50 0
	lds r20,u16Counter_1ms
	lds r21,u16Counter_1ms+1
	movw r18,r20
	ldi r26,lo8(-51)
	ldi r27,lo8(-52)
	call __umulhisi3
	swap r25
	swap r24
	andi r24,0x0f
	eor r24,r25
	andi r25,0x0f
	eor r24,r25
	mul r10,r24
	movw r18,r0
	mul r10,r25
	add r19,r0
	clr __zero_reg__
	cp r20,r18
	cpc r21,r19
	brne .L6
	.loc 1 52 0
	call Task_20ms
.LVL6:
.L6:
	.loc 1 55 0
	lds r20,u16Counter_1ms
	lds r21,u16Counter_1ms+1
	movw r18,r20
	lsr r19
	ror r18
	ldi r26,lo8(123)
	ldi r27,lo8(20)
	call __umulhisi3
	lsr r25
	ror r24
	mul r11,r24
	movw r18,r0
	mul r11,r25
	add r19,r0
	clr __zero_reg__
	cp r20,r18
	cpc r21,r19
	brne .L7
	.loc 1 57 0
	call Task_50ms
.LVL7:
.L7:
	.loc 1 60 0
	lds r20,u16Counter_1ms
	lds r21,u16Counter_1ms+1
	movw r18,r20
	lsr r19
	ror r18
	lsr r19
	ror r18
	ldi r26,lo8(123)
	ldi r27,lo8(20)
	call __umulhisi3
	lsr r25
	ror r24
	mul r12,r24
	movw r18,r0
	mul r12,r25
	add r19,r0
	clr __zero_reg__
	cp r20,r18
	cpc r21,r19
	brne .L8
	.loc 1 62 0
	call Task_100ms
.LVL8:
.L8:
	.loc 1 65 0
	lds r20,u16Counter_1ms
	lds r21,u16Counter_1ms+1
	movw r18,r20
	lsr r19
	ror r18
	lsr r19
	ror r18
	lsr r19
	ror r18
	ldi r26,lo8(123)
	ldi r27,lo8(20)
	call __umulhisi3
	lsr r25
	ror r24
	mul r13,r24
	movw r18,r0
	mul r13,r25
	add r19,r0
	clr __zero_reg__
	cp r20,r18
	cpc r21,r19
	brne .L9
	.loc 1 67 0
	call Task_200ms
.LVL9:
.L9:
	.loc 1 70 0
	lds r20,u16Counter_1ms
	lds r21,u16Counter_1ms+1
	movw r18,r20
	lsr r19
	ror r18
	lsr r19
	ror r18
	ldi r26,lo8(-59)
	ldi r27,lo8(32)
	call __umulhisi3
	swap r25
	swap r24
	andi r24,0x0f
	eor r24,r25
	andi r25,0x0f
	eor r24,r25
	mul r24,r14
	movw r18,r0
	mul r24,r15
	add r19,r0
	mul r25,r14
	add r19,r0
	clr r1
	cp r20,r18
	cpc r21,r19
	brne .L10
	.loc 1 72 0
	call Task_500ms
.LVL10:
.L10:
	.loc 1 75 0
	lds r20,u16Counter_1ms
	lds r21,u16Counter_1ms+1
	movw r18,r20
	lsr r19
	ror r18
	lsr r19
	ror r18
	lsr r19
	ror r18
	ldi r26,lo8(-59)
	ldi r27,lo8(32)
	call __umulhisi3
	swap r25
	swap r24
	andi r24,0x0f
	eor r24,r25
	andi r25,0x0f
	eor r24,r25
	mul r24,r16
	movw r18,r0
	mul r24,r17
	add r19,r0
	mul r25,r16
	add r19,r0
	clr r1
	cp r20,r18
	cpc r21,r19
	brne .L11
	.loc 1 77 0
	call Task_1000ms
.LVL11:
.L11:
	.loc 1 80 0
	lds r20,u16Counter_1ms
	lds r21,u16Counter_1ms+1
	movw r18,r20
	swap r19
	swap r18
	andi r18,0x0f
	eor r18,r19
	andi r19,0x0f
	eor r18,r19
	ldi r26,lo8(99)
	ldi r27,lo8(16)
	call __umulhisi3
	lsr r25
	ror r24
	lsr r25
	ror r24
	lsr r25
	ror r24
	mul r24,r28
	movw r18,r0
	mul r24,r29
	add r19,r0
	mul r25,r28
	add r19,r0
	clr r1
	cp r20,r18
	cpc r21,r19
	breq .+2
	rjmp .L2
	.loc 1 82 0
	call Task_2000ms
.LVL12:
	rjmp .L2
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.text.Timer0_500us_Cbk,"ax",@progbits
.global	Timer0_500us_Cbk
	.type	Timer0_500us_Cbk, @function
Timer0_500us_Cbk:
.LFB7:
	.loc 1 90 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 91 0
	ldi r24,lo8(1)
	sts u8IsTickCountersUpdated,r24
	.loc 1 94 0
	lds r24,IsPeriod_1ms.1950
	ldi r25,lo8(1)
	cpse r24,__zero_reg__
	ldi r25,0
.L17:
	sts IsPeriod_1ms.1950,r25
	.loc 1 96 0
	cpse r24,__zero_reg__
	rjmp .L18
	.loc 1 98 0
	lds r24,u16Counter_1ms
	lds r25,u16Counter_1ms+1
	adiw r24,1
	sts u16Counter_1ms+1,r25
	sts u16Counter_1ms,r24
	.loc 1 100 0
	lds r24,u16Counter_1ms
	lds r25,u16Counter_1ms+1
	cpi r24,-48
	sbci r25,7
	brne .L18
	.loc 1 102 0
	sts u16Counter_1ms+1,__zero_reg__
	sts u16Counter_1ms,__zero_reg__
.L18:
	.loc 1 106 0
	lds r24,u16Counter_500us
	lds r25,u16Counter_500us+1
	adiw r24,1
	andi r24,1
	clr r25
	sts u16Counter_500us+1,r25
	sts u16Counter_500us,r24
	ret
	.cfi_endproc
.LFE7:
	.size	Timer0_500us_Cbk, .-Timer0_500us_Cbk
	.section	.data.IsPeriod_1ms.1950,"aw",@progbits
	.type	IsPeriod_1ms.1950, @object
	.size	IsPeriod_1ms.1950, 1
IsPeriod_1ms.1950:
	.byte	1
.global	u16Counter_500us
	.section	.bss.u16Counter_500us,"aw",@nobits
	.type	u16Counter_500us, @object
	.size	u16Counter_500us, 2
u16Counter_500us:
	.zero	2
.global	u16Counter_1ms
	.section	.bss.u16Counter_1ms,"aw",@nobits
	.type	u16Counter_1ms, @object
	.size	u16Counter_1ms, 2
u16Counter_1ms:
	.zero	2
.global	u8IsTickCountersUpdated
	.section	.bss.u8IsTickCountersUpdated,"aw",@nobits
	.type	u8IsTickCountersUpdated, @object
	.size	u8IsTickCountersUpdated, 1
u8IsTickCountersUpdated:
	.zero	1
	.text
.Letext0:
	.file 2 ".././Std_Headers/Std_Types.h"
	.file 3 ".././HAL/Led/Led_Src/Led.h"
	.file 4 ".././HAL/Switch/Switch_Src/Switch.h"
	.file 5 ".././Tasks.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x284
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF37
	.byte	0xc
	.long	.LASF38
	.long	.LASF39
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
	.byte	0x6
	.long	0x29
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x8
	.long	0x4d
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x1
	.long	0x29
	.byte	0x3
	.byte	0x16
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
	.uleb128 0x5
	.byte	0x1
	.long	0x29
	.byte	0x4
	.byte	0x15
	.long	0xdd
	.uleb128 0x6
	.long	.LASF17
	.byte	0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.uleb128 0x6
	.long	.LASF20
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	0x77
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x172
	.uleb128 0x8
	.long	.LVL0
	.long	0x1de
	.uleb128 0x8
	.long	.LVL1
	.long	0x1eb
	.uleb128 0x8
	.long	.LVL2
	.long	0x1f8
	.uleb128 0x8
	.long	.LVL3
	.long	0x205
	.uleb128 0x8
	.long	.LVL4
	.long	0x212
	.uleb128 0x8
	.long	.LVL5
	.long	0x21f
	.uleb128 0x8
	.long	.LVL6
	.long	0x22c
	.uleb128 0x8
	.long	.LVL7
	.long	0x239
	.uleb128 0x8
	.long	.LVL8
	.long	0x246
	.uleb128 0x8
	.long	.LVL9
	.long	0x253
	.uleb128 0x8
	.long	.LVL10
	.long	0x260
	.uleb128 0x8
	.long	.LVL11
	.long	0x26d
	.uleb128 0x8
	.long	.LVL12
	.long	0x27a
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x19e
	.uleb128 0xa
	.long	.LASF42
	.byte	0x1
	.byte	0x5c
	.long	0x30
	.byte	0x5
	.byte	0x3
	.long	IsPeriod_1ms.1950
	.byte	0
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0xa
	.long	0x1b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	u8IsTickCountersUpdated
	.uleb128 0xc
	.long	0x30
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.byte	0xb
	.long	0x1c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	u16Counter_1ms
	.uleb128 0xc
	.long	0x42
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0xc
	.long	0x1c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	u16Counter_500us
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF24
	.long	.LASF24
	.byte	0x5
	.byte	0x2a
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF25
	.long	.LASF25
	.byte	0x5
	.byte	0x29
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF26
	.long	.LASF26
	.byte	0x5
	.byte	0x2b
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF27
	.long	.LASF27
	.byte	0x5
	.byte	0x2c
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF28
	.long	.LASF28
	.byte	0x5
	.byte	0x2d
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF29
	.long	.LASF29
	.byte	0x5
	.byte	0x2e
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF30
	.long	.LASF30
	.byte	0x5
	.byte	0x2f
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF31
	.long	.LASF31
	.byte	0x5
	.byte	0x30
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF32
	.long	.LASF32
	.byte	0x5
	.byte	0x31
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF33
	.long	.LASF33
	.byte	0x5
	.byte	0x32
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF34
	.long	.LASF34
	.byte	0x5
	.byte	0x33
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF35
	.long	.LASF35
	.byte	0x5
	.byte	0x34
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.long	.LASF36
	.long	.LASF36
	.byte	0x5
	.byte	0x35
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
	.uleb128 0x87
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
.LASF19:
	.string	"SW_POS"
.LASF25:
	.string	"Task_500us"
.LASF5:
	.string	"short int"
.LASF24:
	.string	"Task_Init"
.LASF15:
	.string	"LED_LED2"
.LASF21:
	.string	"u8IsTickCountersUpdated"
.LASF29:
	.string	"Task_10ms"
.LASF40:
	.string	"main"
.LASF31:
	.string	"Task_50ms"
.LASF3:
	.string	"uint16"
.LASF17:
	.string	"SW_WIN_UP"
.LASF8:
	.string	"float"
.LASF11:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF36:
	.string	"Task_2000ms"
.LASF30:
	.string	"Task_20ms"
.LASF28:
	.string	"Task_5ms"
.LASF0:
	.string	"unsigned char"
.LASF32:
	.string	"Task_100ms"
.LASF1:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF10:
	.string	"unsigned int"
.LASF23:
	.string	"u16Counter_500us"
.LASF26:
	.string	"Task_1ms"
.LASF38:
	.string	".././main.c"
.LASF4:
	.string	"short unsigned int"
.LASF13:
	.string	"LED_MOTOR_UP"
.LASF6:
	.string	"long unsigned int"
.LASF9:
	.string	"double"
.LASF27:
	.string	"Task_2ms"
.LASF18:
	.string	"SW_WIN_DOWN"
.LASF37:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF41:
	.string	"Timer0_500us_Cbk"
.LASF22:
	.string	"u16Counter_1ms"
.LASF33:
	.string	"Task_200ms"
.LASF14:
	.string	"LED_MOTOR_DOWN"
.LASF35:
	.string	"Task_1000ms"
.LASF20:
	.string	"SW_NUM_OF_SW"
.LASF42:
	.string	"IsPeriod_1ms"
.LASF39:
	.string	"X:\\\\VALEO_testing_academy\\\\challenge1\\\\C_ExampleTraineeVersion\\\\C_Example\\\\Debug"
.LASF34:
	.string	"Task_500ms"
.LASF16:
	.string	"LED_NUM_OF_LEDS"
.LASF2:
	.string	"boolean"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
