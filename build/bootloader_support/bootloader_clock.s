	.file	"bootloader_clock.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.ascii	"\"(Cannot use REG_GET_"
	.string	"FIELD for DPORT registers use DPORT_REG_GET_FIELD)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.align	4
.LC6:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
	.align	4
.LC8:
	.ascii	"\"(Cannot us"
	.string	"e REG_READ for DPORT registers use DPORT_REG_READ)\" && (!((((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) >= 0x3ff00000) && ((((0x3ff40000 + (uart_no) * 0x10000 + ( (uart_no) > 1 ? 0xe000 : 0 ) ) + 0x1C))) <= 0x3ff13FFC))"
	.section	.rodata
	.align	4
.LC0:
	.byte	0
	.byte	9
	.byte	254
	.byte	1
	.byte	-84
	.zero	3
	.section	.text.bootloader_clock_configure,"ax",@progbits
	.literal_position
	.literal .LC10, 1072955420
	.literal .LC11, 1073061900
	.literal .LC12, .LC0
	.literal .LC13, -12289
	.literal .LC14, -2049
	.align	4
	.global	bootloader_clock_configure
	.type	bootloader_clock_configure, @function
bootloader_clock_configure:
.LFB4:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_clock.c"
	.loc 1 23 0
	entry	sp, 48
.LCFI0:
.L5:
.LBB7:
.LBB8:
.LBB9:
.LBB10:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/uart.h"
	.loc 2 270 0
	l32r	a8, .LC10
	memw
	l32i.n	a8, a8, 0
.LBE10:
	extui	a8, a8, 24, 4
.LBE9:
	bnez.n	a8, .L5
.LVL0:
.LBE8:
.LBE7:
.LBB11:
	.loc 1 39 0
	l32r	a8, .LC11
	memw
	l32i.n	a8, a8, 0
.LBE11:
	.loc 1 45 0
	l32r	a8, .LC12
	l32i.n	a9, a8, 0
	l32i.n	a8, a8, 4
	s32i.n	a9, sp, 0
	s32i.n	a8, sp, 4
	.loc 1 46 0
	movi.n	a8, 0x28
	s8i	a8, sp, 0
	.loc 1 47 0
	movi	a8, -0x701
	l32i.n	a9, sp, 0
	and	a9, a9, a8
	movi	a8, 0x100
	or	a8, a9, a8
	s32i.n	a8, sp, 0
	.loc 1 48 0
	call8	rtc_clk_slow_freq_get
.LVL1:
	extui	a10, a10, 0, 2
	slli	a10, a10, 12
	l32r	a8, .LC13
	l32i.n	a9, sp, 0
	and	a8, a9, a8
	or	a8, a8, a10
	s32i.n	a8, sp, 0
	.loc 1 49 0
	call8	rtc_clk_fast_freq_get
.LVL2:
	extui	a10, a10, 0, 1
	slli	a8, a10, 11
	l32r	a9, .LC14
	l32i.n	a10, sp, 0
	and	a10, a10, a9
	or	a10, a10, a8
	s32i.n	a10, sp, 0
	.loc 1 50 0
	l32i.n	a11, sp, 4
	call8	rtc_clk_init
.LVL3:
	retw.n
.LFE4:
	.size	bootloader_clock_configure, .-bootloader_clock_configure
	.section	.rodata.__func__$2347,"a",@progbits
	.align	4
	.type	__func__$2347, @object
	.size	__func__$2347, 18
__func__$2347:
	.string	"uart_tx_wait_idle"
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
	.uleb128 0x30
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2d1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xc
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x33
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1a
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x28
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x5
	.byte	0x3c
	.4byte	0xc6
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1a
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x41
	.4byte	0xa1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x5
	.byte	0x46
	.4byte	0xfc
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x4c
	.4byte	0xd1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x5
	.byte	0x51
	.4byte	0x126
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x55
	.4byte	0x107
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5a
	.byte	0x5
	.byte	0x5a
	.4byte	0x14a
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x5d
	.4byte	0x131
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.byte	0x6e
	.4byte	0x1c7
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x5
	.byte	0x6f
	.4byte	0xc6
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x5
	.byte	0x70
	.4byte	0xfc
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x5
	.byte	0x71
	.4byte	0x14a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x5
	.byte	0x72
	.4byte	0x126
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x5
	.byte	0x73
	.4byte	0x7a
	.byte	0x4
	.byte	0x3
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x5
	.byte	0x74
	.4byte	0x7a
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x5
	.byte	0x75
	.4byte	0x7a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x5
	.byte	0x76
	.4byte	0x155
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x10d
	.byte	0x3
	.4byte	0x1f9
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x10d
	.4byte	0x6f
	.uleb128 0xb
	.4byte	.LASF50
	.4byte	0x209
	.4byte	.LASF48
	.byte	0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	0x209
	.uleb128 0xd
	.4byte	0x8c
	.byte	0x11
	.byte	0
	.uleb128 0xe
	.4byte	0x1f9
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x1
	.byte	0x16
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29d
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x20
	.4byte	0xfc
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x1
	.byte	0x27
	.4byte	0x7a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x12
	.4byte	.LASF50
	.4byte	0x2ad
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2d
	.4byte	0x1c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	0x1d2
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.byte	0x1d
	.4byte	0x281
	.uleb128 0x14
	.4byte	0x1df
	.uleb128 0x15
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x16
	.4byte	0x1eb
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2347
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0x2b2
	.uleb128 0x17
	.4byte	.LVL2
	.4byte	0x2bd
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0x2c9
	.byte	0
	.uleb128 0xc
	.4byte	0x9a
	.4byte	0x2ad
	.uleb128 0xd
	.4byte	0x8c
	.byte	0x1a
	.byte	0
	.uleb128 0xe
	.4byte	0x29d
	.uleb128 0x18
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0xfd
	.uleb128 0x19
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x117
	.uleb128 0x18
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0x93
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF51:
	.string	"bootloader_clock_configure"
.LASF4:
	.string	"__uint8_t"
.LASF21:
	.string	"RTC_CPU_FREQ_80M"
.LASF20:
	.string	"RTC_CPU_FREQ_XTAL"
.LASF15:
	.string	"RTC_XTAL_FREQ_AUTO"
.LASF50:
	.string	"__func__"
.LASF32:
	.string	"rtc_fast_freq_t"
.LASF38:
	.string	"slow_clk_dcap"
.LASF35:
	.string	"fast_freq"
.LASF37:
	.string	"clk_8m_div"
.LASF31:
	.string	"RTC_FAST_FREQ_8M"
.LASF47:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_clock.c"
.LASF27:
	.string	"RTC_SLOW_FREQ_32K_XTAL"
.LASF48:
	.string	"uart_tx_wait_idle"
.LASF16:
	.string	"RTC_XTAL_FREQ_40M"
.LASF42:
	.string	"clk_cfg"
.LASF33:
	.string	"xtal_freq"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF49:
	.string	"uart_no"
.LASF5:
	.string	"__uint32_t"
.LASF22:
	.string	"RTC_CPU_FREQ_160M"
.LASF39:
	.string	"clk_8m_dfreq"
.LASF44:
	.string	"rtc_clk_fast_freq_get"
.LASF40:
	.string	"rtc_clk_config_t"
.LASF34:
	.string	"cpu_freq"
.LASF19:
	.string	"rtc_xtal_freq_t"
.LASF6:
	.string	"unsigned int"
.LASF29:
	.string	"rtc_slow_freq_t"
.LASF8:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF24:
	.string	"RTC_CPU_FREQ_2M"
.LASF45:
	.string	"rtc_clk_init"
.LASF18:
	.string	"RTC_XTAL_FREQ_24M"
.LASF46:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF41:
	.string	"chip_ver_reg"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF17:
	.string	"RTC_XTAL_FREQ_26M"
.LASF36:
	.string	"slow_freq"
.LASF14:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF26:
	.string	"RTC_SLOW_FREQ_RTC"
.LASF28:
	.string	"RTC_SLOW_FREQ_8MD256"
.LASF10:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF30:
	.string	"RTC_FAST_FREQ_XTALD4"
.LASF0:
	.string	"signed char"
.LASF25:
	.string	"rtc_cpu_freq_t"
.LASF23:
	.string	"RTC_CPU_FREQ_240M"
.LASF43:
	.string	"rtc_clk_slow_freq_get"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
