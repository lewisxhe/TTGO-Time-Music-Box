	.file	"cpu_util.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC0, 1072988332
	.literal .LC1, -66060289
	.literal .LC2, 34603008
	.literal .LC3, 1072988160
	.literal .LC4, 67108863
	.literal .LC5, -2080374784
	.align	4
	.global	esp_cpu_stall
	.type	esp_cpu_stall, @function
esp_cpu_stall:
.LFB4:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/cpu_util.c"
	.loc 1 22 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 23 0
	bnei	a2, 1, .L2
.LBB2:
.LBB3:
	.loc 1 24 0
	l32r	a8, .LC0
	memw
	l32i.n	a10, a8, 0
.LBE3:
	l32r	a9, .LC1
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE2:
.LBB4:
.LBB5:
	.loc 1 25 0
	memw
	l32i.n	a10, a8, 0
.LBE5:
	l32r	a9, .LC2
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE4:
.LBB6:
.LBB7:
	.loc 1 26 0
	l32r	a8, .LC3
	memw
	l32i.n	a10, a8, 0
.LBE7:
	movi.n	a9, -4
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE6:
.LBB8:
.LBB9:
	.loc 1 27 0
	memw
	l32i.n	a10, a8, 0
.LBE9:
	movi.n	a9, 2
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE8:
	retw.n
.L2:
.LBB10:
.LBB11:
	.loc 1 29 0
	l32r	a8, .LC0
	memw
	l32i.n	a10, a8, 0
.LBE11:
	l32r	a9, .LC4
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE10:
.LBB12:
.LBB13:
	.loc 1 30 0
	memw
	l32i.n	a10, a8, 0
.LBE13:
	l32r	a9, .LC5
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE12:
.LBB14:
.LBB15:
	.loc 1 31 0
	l32r	a8, .LC3
	memw
	l32i.n	a10, a8, 0
.LBE15:
	movi.n	a9, -0xd
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE14:
.LBB16:
.LBB17:
	.loc 1 32 0
	memw
	l32i.n	a10, a8, 0
.LBE17:
	movi.n	a9, 8
	or	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
	retw.n
.LBE16:
.LFE4:
	.size	esp_cpu_stall, .-esp_cpu_stall
	.literal_position
	.literal .LC6, 1072988332
	.literal .LC7, -66060289
	.literal .LC8, 1072988160
	.literal .LC9, 67108863
	.align	4
	.global	esp_cpu_unstall
	.type	esp_cpu_unstall, @function
esp_cpu_unstall:
.LFB5:
	.loc 1 37 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 38 0
	bnei	a2, 1, .L5
.LBB18:
.LBB19:
	.loc 1 39 0
	l32r	a9, .LC6
	memw
	l32i.n	a10, a9, 0
.LBE19:
	l32r	a8, .LC7
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE18:
.LBB20:
.LBB21:
	.loc 1 40 0
	l32r	a9, .LC8
	memw
	l32i.n	a10, a9, 0
.LBE21:
	movi.n	a8, -4
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE20:
	retw.n
.L5:
.LBB22:
.LBB23:
	.loc 1 42 0
	l32r	a9, .LC6
	memw
	l32i.n	a10, a9, 0
.LBE23:
	l32r	a8, .LC9
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE22:
.LBB24:
.LBB25:
	.loc 1 43 0
	l32r	a9, .LC8
	memw
	l32i.n	a10, a9, 0
.LBE25:
	movi.n	a8, -0xd
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE24:
.LFE5:
	.size	esp_cpu_unstall, .-esp_cpu_unstall
	.literal_position
	.literal .LC10, 1072988160
	.align	4
	.global	esp_cpu_reset
	.type	esp_cpu_reset, @function
esp_cpu_reset:
.LFB6:
	.loc 1 48 0
.LVL2:
	entry	sp, 32
.LCFI2:
.LBB26:
.LBB27:
	.loc 1 49 0
	l32r	a8, .LC10
	memw
	l32i.n	a8, a8, 0
.LBE27:
	bnez.n	a2, .L9
	movi.n	a9, 0x20
	j	.L8
.L9:
	movi.n	a9, 0x10
.L8:
	.loc 1 49 0 is_stmt 0 discriminator 4
	or	a8, a9, a8
	l32r	a9, .LC10
	memw
	s32i.n	a8, a9, 0
	retw.n
.LBE26:
.LFE6:
	.size	esp_cpu_reset, .-esp_cpu_reset
	.literal_position
	.literal .LC11, 1056780
	.align	4
	.global	esp_cpu_in_ocd_debug_mode
	.type	esp_cpu_in_ocd_debug_mode, @function
esp_cpu_in_ocd_debug_mode:
.LFB7:
	.loc 1 54 0 is_stmt 1
	entry	sp, 32
.LCFI3:
.LVL3:
	.loc 1 58 0
	l32r	a2, .LC11
#APP
# 58 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/cpu_util.c" 1
	rer a2,a2
# 0 "" 2
.LVL4:
	.loc 1 63 0
#NO_APP
	extui	a2, a2, 0, 1
.LVL5:
	retw.n
.LFE7:
	.size	esp_cpu_in_ocd_debug_mode, .-esp_cpu_in_ocd_debug_mode
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI3-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x17a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x4f
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
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2d
	.4byte	0x44
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x15
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb7
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x15
	.4byte	0x3d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.4byte	.LASF16
	.4byte	0xc7
	.byte	0
	.uleb128 0x8
	.4byte	0x84
	.4byte	0xc7
	.uleb128 0x9
	.4byte	0x76
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.4byte	0xb7
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x24
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf8
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x24
	.4byte	0x3d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.4byte	.LASF16
	.4byte	0x108
	.byte	0
	.uleb128 0x8
	.4byte	0x84
	.4byte	0x108
	.uleb128 0x9
	.4byte	0x76
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xf8
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2f
	.4byte	0x3d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.4byte	.LASF16
	.4byte	0x139
	.byte	0
	.uleb128 0xa
	.4byte	0xb7
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x35
	.4byte	0x176
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x176
	.uleb128 0xc
	.string	"dcr"
	.byte	0x1
	.byte	0x38
	.4byte	0x3d
	.4byte	.LLST0
	.uleb128 0xd
	.string	"reg"
	.byte	0x1
	.byte	0x39
	.4byte	0x3d
	.4byte	0x10200c
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF4:
	.string	"unsigned int"
.LASF17:
	.string	"esp_cpu_reset"
.LASF7:
	.string	"__uint32_t"
.LASF20:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF11:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF14:
	.string	"esp_cpu_unstall"
.LASF13:
	.string	"esp_cpu_stall"
.LASF18:
	.string	"esp_cpu_in_ocd_debug_mode"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"char"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF19:
	.string	"_Bool"
.LASF15:
	.string	"cpu_id"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/cpu_util.c"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"__func__"
.LASF10:
	.string	"sizetype"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
