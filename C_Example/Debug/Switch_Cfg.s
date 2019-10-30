	.file	"Switch_Cfg.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.global	Sw_CfgArr
	.section	.rodata.Sw_CfgArr,"a",@progbits
	.type	Sw_CfgArr, @object
	.size	Sw_CfgArr, 6
Sw_CfgArr:
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.text
.Letext0:
	.file 1 "x:\\valeo_testing_academy\\challenge1\\c_exampletraineeversion\\c_example\\std_headers\\std_types.h"
	.file 2 "../HAL/Switch/Switch_Cfg/../Switch_Cfg/../../../MCAL/Dio/Dio_Src/Dio.h"
	.file 3 "../HAL/Switch/Switch_Cfg/../Switch_Cfg/Switch_Cfg.h"
	.file 4 "../HAL/Switch/Switch_Cfg/../Switch_Src/Switch.h"
	.file 5 "../HAL/Switch/Switch_Cfg/Switch_Cfg.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x149
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF29
	.byte	0xc
	.long	.LASF30
	.long	.LASF31
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x1
	.byte	0x6
	.long	0x1d
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
	.long	0x1d
	.byte	0x2
	.byte	0xa
	.long	0xb9
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
	.uleb128 0x6
	.long	.LASF15
	.byte	0x4
	.uleb128 0x6
	.long	.LASF16
	.byte	0x5
	.uleb128 0x6
	.long	.LASF17
	.byte	0x6
	.uleb128 0x6
	.long	.LASF18
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x2
	.byte	0x14
	.long	0x7c
	.uleb128 0x7
	.byte	0x2
	.byte	0x3
	.byte	0xe
	.long	0xe9
	.uleb128 0x8
	.long	.LASF21
	.byte	0x3
	.byte	0x10
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x3
	.byte	0x11
	.long	0x24
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF23
	.byte	0x3
	.byte	0x12
	.long	0xc4
	.uleb128 0x5
	.byte	0x1
	.long	0x1d
	.byte	0x4
	.byte	0x15
	.long	0x119
	.uleb128 0x6
	.long	.LASF24
	.byte	0
	.uleb128 0x6
	.long	.LASF25
	.byte	0x1
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.uleb128 0x6
	.long	.LASF27
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x130
	.long	0x129
	.uleb128 0xa
	.long	0x129
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF28
	.uleb128 0xb
	.long	0xe9
	.uleb128 0xc
	.long	.LASF32
	.byte	0x5
	.byte	0xb
	.long	0x147
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Sw_CfgArr
	.uleb128 0xb
	.long	0x119
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x14
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"DIO_TST_PIN"
.LASF26:
	.string	"SW_POS"
.LASF3:
	.string	"short int"
.LASF28:
	.string	"sizetype"
.LASF20:
	.string	"Dio_ChannelIdTyp"
.LASF24:
	.string	"SW_WIN_UP"
.LASF30:
	.string	"../HAL/Switch/Switch_Cfg/Switch_Cfg.c"
.LASF6:
	.string	"float"
.LASF9:
	.string	"long long int"
.LASF18:
	.string	"NUM_OF_CHANNELS"
.LASF5:
	.string	"long int"
.LASF32:
	.string	"Sw_CfgArr"
.LASF11:
	.string	"DIO_SW_0"
.LASF12:
	.string	"DIO_SW_1"
.LASF13:
	.string	"DIO_SW_2"
.LASF0:
	.string	"unsigned char"
.LASF22:
	.string	"ActiveState"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF8:
	.string	"unsigned int"
.LASF23:
	.string	"Sw_SwTyp"
.LASF15:
	.string	"DIO_LED_0"
.LASF16:
	.string	"DIO_LED_1"
.LASF17:
	.string	"DIO_LED_2"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"long unsigned int"
.LASF7:
	.string	"double"
.LASF25:
	.string	"SW_WIN_DOWN"
.LASF29:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF21:
	.string	"Sw_Id"
.LASF27:
	.string	"SW_NUM_OF_SW"
.LASF31:
	.string	"X:\\\\VALEO_testing_academy\\\\challenge1\\\\C_ExampleTraineeVersion\\\\C_Example\\\\Debug"
.LASF19:
	.string	"boolean"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.2_1778) 5.4.0"
.global __do_copy_data
