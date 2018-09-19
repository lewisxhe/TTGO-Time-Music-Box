	.file	"efuse.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC8:
	.string	"\"(Cannot use REG_WRITE for DPORT registers use DPORT_REG_WRITE)\" && (!((((r)) >= 0x3ff00000) && ((r)) <= 0x3ff13FFC))"
	.align	4
.LC11:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/efuse.c"
	.section	.rodata
	.align	4
.LC0:
	.word	1073061916
	.word	1073062040
	.word	1073062072
	.word	1073062104
	.align	4
.LC1:
	.word	1073061940
	.word	1073062068
	.word	1073062100
	.word	1073062132
	.section	.text.esp_efuse_reset,"ax",@progbits
	.literal_position
	.literal .LC2, 1073062140
	.literal .LC3, 23205
	.literal .LC4, .LC0
	.literal .LC5, .LC1
	.literal .LC6, -1072693248
	.literal .LC7, 81916
	.literal .LC9, .LC8
	.literal .LC10, __func__$2307
	.literal .LC12, .LC11
	.align	4
	.global	esp_efuse_reset
	.type	esp_efuse_reset, @function
esp_efuse_reset:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/efuse.c"
	.loc 1 39 0
	entry	sp, 64
.LCFI0:
.LBB2:
	.loc 1 40 0
	l32r	a9, .LC3
	l32r	a8, .LC2
	memw
	s32i.n	a9, a8, 0
.LBE2:
	.loc 1 41 0
	l32r	a8, .LC4
	l32i.n	a9, a8, 0
	l32i.n	a10, a8, 4
	s32i.n	a9, sp, 0
	l32i.n	a9, a8, 8
	s32i.n	a10, sp, 4
	l32i.n	a8, a8, 12
	s32i.n	a9, sp, 8
	s32i.n	a8, sp, 12
	.loc 1 43 0
	l32r	a8, .LC5
	l32i.n	a9, a8, 0
	l32i.n	a10, a8, 4
	s32i.n	a9, sp, 16
	l32i.n	a9, a8, 8
	s32i.n	a10, sp, 20
	l32i.n	a8, a8, 12
	s32i.n	a9, sp, 24
	s32i.n	a8, sp, 28
.LVL0:
.LBB3:
	.loc 1 45 0
	movi.n	a11, 0
	j	.L2
.LVL1:
.L6:
.LBB4:
	.loc 1 46 0
	addx4	a8, a11, sp
	l32i.n	a8, a8, 0
.LVL2:
	j	.L3
.L5:
.LBB5:
	.loc 1 47 0
	l32r	a9, .LC6
	add.n	a9, a8, a9
	l32r	a10, .LC7
	bltu	a10, a9, .L4
	.loc 1 47 0 is_stmt 0 discriminator 1
	l32r	a13, .LC9
	l32r	a12, .LC10
	movi.n	a11, 0x2f
.LVL3:
	l32r	a10, .LC12
	call8	__assert_func
.LVL4:
.L4:
	.loc 1 47 0 discriminator 2
	movi.n	a9, 0
	memw
	s32i.n	a9, a8, 0
.LBE5:
	.loc 1 46 0 is_stmt 1 discriminator 2
	addi.n	a8, a8, 4
.LVL5:
.L3:
	addx4	a9, a11, sp
	l32i.n	a9, a9, 16
	bgeu	a9, a8, .L5
.LBE4:
	.loc 1 45 0 discriminator 2
	addi.n	a11, a11, 1
.LVL6:
.L2:
	.loc 1 45 0 is_stmt 0 discriminator 1
	blti	a11, 4, .L6
.LBE3:
	.loc 1 50 0 is_stmt 1
	retw.n
.LFE1:
	.size	esp_efuse_reset, .-esp_efuse_reset
	.section	.text.esp_efuse_burn_new_values,"ax",@progbits
	.literal_position
	.literal .LC13, 1073062140
	.literal .LC14, 23130
	.literal .LC15, 1073062148
	.literal .LC16, 23205
	.align	4
	.global	esp_efuse_burn_new_values
	.type	esp_efuse_burn_new_values, @function
esp_efuse_burn_new_values:
.LFB0:
	.loc 1 26 0
	entry	sp, 32
.LCFI1:
.LBB6:
	.loc 1 27 0
	l32r	a9, .LC14
	l32r	a8, .LC13
	memw
	s32i.n	a9, a8, 0
.LBE6:
.LBB7:
	.loc 1 28 0
	movi.n	a9, 2
	l32r	a8, .LC15
	memw
	s32i.n	a9, a8, 0
.L8:
.LBE7:
.LBB8:
	.loc 1 29 0 discriminator 1
	l32r	a8, .LC15
	memw
	l32i.n	a8, a8, 0
.LBE8:
	bnez.n	a8, .L8
.LBB9:
	.loc 1 31 0
	l32r	a9, .LC16
	l32r	a8, .LC13
	memw
	s32i.n	a9, a8, 0
.LBE9:
.LBB10:
	.loc 1 32 0
	movi.n	a9, 1
	l32r	a8, .LC15
	memw
	s32i.n	a9, a8, 0
.L9:
.LBE10:
.LBB11:
	.loc 1 33 0 discriminator 1
	l32r	a8, .LC15
	memw
	l32i.n	a8, a8, 0
.LBE11:
	bnez.n	a8, .L9
	.loc 1 35 0
	call8	esp_efuse_reset
.LVL7:
	retw.n
.LFE0:
	.size	esp_efuse_burn_new_values, .-esp_efuse_burn_new_values
	.section	.rodata.str1.4
	.align	4
.LC18:
	.string	"efuse"
	.align	4
.LC20:
	.string	"\033[0;32mI (%d) %s: Disable BASIC ROM Console fallback via efuse...\033[0m\n"
	.section	.text.esp_efuse_disable_basic_rom_console,"ax",@progbits
	.literal_position
	.literal .LC17, 1073061912
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC22, 1073061940
	.align	4
	.global	esp_efuse_disable_basic_rom_console
	.type	esp_efuse_disable_basic_rom_console, @function
esp_efuse_disable_basic_rom_console:
.LFB2:
	.loc 1 53 0
	entry	sp, 32
.LCFI2:
.LBB12:
	.loc 1 54 0
	l32r	a8, .LC17
	memw
	l32i.n	a8, a8, 0
.LBE12:
	bbsi	a8, 2, .L10
	.loc 1 55 0 discriminator 1
	call8	esp_log_timestamp
.LVL8:
	l32r	a12, .LC19
	mov.n	a11, a10
	l32r	a10, .LC21
	call8	ets_printf
.LVL9:
	.loc 1 56 0 discriminator 1
	call8	esp_efuse_reset
.LVL10:
.LBB13:
	.loc 1 57 0 discriminator 1
	movi.n	a9, 4
	l32r	a8, .LC22
	memw
	s32i.n	a9, a8, 0
.LBE13:
	.loc 1 58 0 discriminator 1
	call8	esp_efuse_burn_new_values
.LVL11:
.L10:
	retw.n
.LFE2:
	.size	esp_efuse_disable_basic_rom_console, .-esp_efuse_disable_basic_rom_console
	.section	.rodata.__func__$2307,"a",@progbits
	.align	4
	.type	__func__$2307, @object
	.size	__func__$2307, 16
__func__$2307:
	.string	"esp_efuse_reset"
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI1-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x275
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
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
	.4byte	0x53
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
	.4byte	0x48
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
	.byte	0x4
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x88
	.uleb128 0x7
	.byte	0x4
	.4byte	0x53
	.byte	0x5
	.byte	0x1f
	.4byte	0xcb
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x26
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x165
	.uleb128 0xa
	.4byte	.LASF24
	.4byte	0x175
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2307
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x29
	.4byte	0x18a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2b
	.4byte	0x18f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.4byte	0x41
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xd
	.string	"r"
	.byte	0x1
	.byte	0x2e
	.4byte	0x68
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x257
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2f
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2307
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x88
	.4byte	0x175
	.uleb128 0x11
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x165
	.uleb128 0x10
	.4byte	0x68
	.4byte	0x18a
	.uleb128 0x11
	.4byte	0x7a
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x17a
	.uleb128 0x6
	.4byte	0x17a
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x19
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bc
	.uleb128 0x12
	.4byte	.LASF24
	.4byte	0x1cc
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0xcb
	.byte	0
	.uleb128 0x10
	.4byte	0x88
	.4byte	0x1cc
	.uleb128 0x11
	.4byte	0x7a
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	0x1bc
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x34
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22b
	.uleb128 0x12
	.4byte	.LASF24
	.4byte	0x23b
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x262
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x26d
	.4byte	0x218
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0xcb
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0x194
	.byte	0
	.uleb128 0x10
	.4byte	0x88
	.4byte	0x23b
	.uleb128 0x11
	.4byte	0x7a
	.byte	0x23
	.byte	0
	.uleb128 0x6
	.4byte	0x22b
	.uleb128 0x15
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0x252
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC18
	.byte	0x9f
	.uleb128 0x6
	.4byte	0x8f
	.uleb128 0x16
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x4
	.byte	0x29
	.uleb128 0x16
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x5
	.byte	0x57
	.uleb128 0x16
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x6
	.byte	0xde
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"ESP_LOG_ERROR"
.LASF19:
	.string	"block_start"
.LASF21:
	.string	"esp_efuse_reset"
.LASF28:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"esp_log_timestamp"
.LASF24:
	.string	"__func__"
.LASF16:
	.string	"ESP_LOG_INFO"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"esp_efuse_disable_basic_rom_console"
.LASF7:
	.string	"__uint32_t"
.LASF25:
	.string	"__assert_func"
.LASF20:
	.string	"block_end"
.LASF4:
	.string	"unsigned int"
.LASF17:
	.string	"ESP_LOG_DEBUG"
.LASF6:
	.string	"long long unsigned int"
.LASF29:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/efuse.c"
.LASF27:
	.string	"ets_printf"
.LASF10:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"ESP_LOG_NONE"
.LASF30:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bootloader_support"
.LASF8:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"esp_efuse_burn_new_values"
.LASF18:
	.string	"ESP_LOG_VERBOSE"
.LASF15:
	.string	"ESP_LOG_WARN"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
