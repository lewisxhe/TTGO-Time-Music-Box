	.file	"framing-sbc.c"
	.text
.Ltext0:
	.global	OI_CODEC_SBC_AllocText
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"SBC_LOUDNESS"
	.align	4
.LC1:
	.string	"SBC_SNR"
	.section	.rodata.OI_CODEC_SBC_AllocText,"a",@progbits
	.align	4
	.type	OI_CODEC_SBC_AllocText, @object
	.size	OI_CODEC_SBC_AllocText, 8
OI_CODEC_SBC_AllocText:
	.word	.LC0
	.word	.LC1
	.global	OI_CODEC_SBC_BlocksText
	.section	.rodata.str1.4
	.align	4
.LC2:
	.string	"SBC_BLOCKS_4"
	.align	4
.LC3:
	.string	"SBC_BLOCKS_8"
	.align	4
.LC4:
	.string	"SBC_BLOCKS_12"
	.align	4
.LC5:
	.string	"SBC_BLOCKS_16"
	.section	.rodata.OI_CODEC_SBC_BlocksText,"a",@progbits
	.align	4
	.type	OI_CODEC_SBC_BlocksText, @object
	.size	OI_CODEC_SBC_BlocksText, 16
OI_CODEC_SBC_BlocksText:
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.global	OI_CODEC_SBC_SubbandsText
	.section	.rodata.str1.4
	.align	4
.LC6:
	.string	"SBC_SUBBANDS_4"
	.align	4
.LC7:
	.string	"SBC_SUBBANDS_8"
	.section	.rodata.OI_CODEC_SBC_SubbandsText,"a",@progbits
	.align	4
	.type	OI_CODEC_SBC_SubbandsText, @object
	.size	OI_CODEC_SBC_SubbandsText, 8
OI_CODEC_SBC_SubbandsText:
	.word	.LC6
	.word	.LC7
	.global	OI_CODEC_SBC_ModeText
	.section	.rodata.str1.4
	.align	4
.LC8:
	.string	"SBC_MONO"
	.align	4
.LC9:
	.string	"SBC_DUAL_CHANNEL"
	.align	4
.LC10:
	.string	"SBC_STEREO"
	.align	4
.LC11:
	.string	"SBC_JOINT_STEREO"
	.section	.rodata.OI_CODEC_SBC_ModeText,"a",@progbits
	.align	4
	.type	OI_CODEC_SBC_ModeText, @object
	.size	OI_CODEC_SBC_ModeText, 16
OI_CODEC_SBC_ModeText:
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.global	OI_CODEC_SBC_FreqText
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"SBC_FREQ_16000"
	.align	4
.LC13:
	.string	"SBC_FREQ_32000"
	.align	4
.LC14:
	.string	"SBC_FREQ_44100"
	.align	4
.LC15:
	.string	"SBC_FREQ_48000"
	.section	.rodata.OI_CODEC_SBC_FreqText,"a",@progbits
	.align	4
	.type	OI_CODEC_SBC_FreqText, @object
	.size	OI_CODEC_SBC_FreqText, 16
OI_CODEC_SBC_FreqText:
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.text
.Letext0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_cpu_dep.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_stddefs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc_private.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/framing-sbc.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x218
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0xc
	.4byte	.LASF30
	.4byte	.LASF31
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.byte	0x12
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x15
	.4byte	0x24
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x21
	.4byte	0x60
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	0x6b
	.4byte	0x94
	.uleb128 0x6
	.4byte	0x7d
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x138
	.4byte	0x2f
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x139
	.4byte	0x3d
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x85
	.4byte	0x94
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd2
	.uleb128 0x9
	.4byte	0xc1
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x2cc
	.4byte	0xea
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x9
	.4byte	0x84
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x2cd
	.4byte	0x102
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x84
	.uleb128 0x5
	.4byte	0xb5
	.4byte	0x117
	.uleb128 0x6
	.4byte	0x7d
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x56
	.4byte	0x12b
	.byte	0x8
	.byte	0x80
	.byte	0x3e
	.byte	0
	.byte	0x7d
	.byte	0x44
	.byte	0xac
	.byte	0x80
	.byte	0xbb
	.uleb128 0x9
	.4byte	0x107
	.uleb128 0x5
	.4byte	0xa9
	.4byte	0x140
	.uleb128 0x6
	.4byte	0x7d
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x57
	.4byte	0x150
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.uleb128 0x9
	.4byte	0x130
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x58
	.4byte	0x165
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.uleb128 0x9
	.4byte	0x130
	.uleb128 0x5
	.4byte	0xa9
	.4byte	0x17a
	.uleb128 0x6
	.4byte	0x7d
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x59
	.4byte	0x188
	.byte	0x2
	.byte	0x4
	.byte	0x8
	.uleb128 0x9
	.4byte	0x16a
	.uleb128 0x5
	.4byte	0xcc
	.4byte	0x19d
	.uleb128 0x6
	.4byte	0x7d
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x7
	.byte	0x24
	.4byte	0x1ae
	.uleb128 0x5
	.byte	0x3
	.4byte	OI_CODEC_SBC_FreqText
	.uleb128 0x9
	.4byte	0x18d
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x7
	.byte	0x25
	.4byte	0x1c4
	.uleb128 0x5
	.byte	0x3
	.4byte	OI_CODEC_SBC_ModeText
	.uleb128 0x9
	.4byte	0x18d
	.uleb128 0x5
	.4byte	0xcc
	.4byte	0x1d9
	.uleb128 0x6
	.4byte	0x7d
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x7
	.byte	0x26
	.4byte	0x1ea
	.uleb128 0x5
	.byte	0x3
	.4byte	OI_CODEC_SBC_SubbandsText
	.uleb128 0x9
	.4byte	0x1c9
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x7
	.byte	0x27
	.4byte	0x200
	.uleb128 0x5
	.byte	0x3
	.4byte	OI_CODEC_SBC_BlocksText
	.uleb128 0x9
	.4byte	0x18d
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.byte	0x28
	.4byte	0x216
	.uleb128 0x5
	.byte	0x3
	.4byte	OI_CODEC_SBC_AllocText
	.uleb128 0x9
	.4byte	0x1c9
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
	.uleb128 0x17
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
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
	.uleb128 0x1c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"__uint8_t"
.LASF19:
	.string	"bd_addr_null"
.LASF21:
	.string	"block_values"
.LASF30:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/framing-sbc.c"
.LASF9:
	.string	"UINT8"
.LASF27:
	.string	"OI_CODEC_SBC_BlocksText"
.LASF15:
	.string	"OI_UINT8"
.LASF29:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"OI_CODEC_SBC_AllocText"
.LASF31:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF23:
	.string	"band_values"
.LASF14:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"channel_values"
.LASF26:
	.string	"OI_CODEC_SBC_SubbandsText"
.LASF17:
	.string	"OI_CHAR"
.LASF4:
	.string	"unsigned int"
.LASF16:
	.string	"OI_UINT16"
.LASF12:
	.string	"char"
.LASF8:
	.string	"uint8_t"
.LASF24:
	.string	"OI_CODEC_SBC_FreqText"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF18:
	.string	"bd_addr_any"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"freq_values"
.LASF25:
	.string	"OI_CODEC_SBC_ModeText"
.LASF13:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"_Bool"
.LASF6:
	.string	"long long unsigned int"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
