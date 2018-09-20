	.file	"randombytes_esp32.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"esp32"
	.section	.text.randombytes_esp32_implementation_name,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.type	randombytes_esp32_implementation_name, @function
randombytes_esp32_implementation_name:
.LFB7:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/port/randombytes_esp32.c"
	.loc 1 26 0
	entry	sp, 32
.LCFI0:
	.loc 1 28 0
	l32r	a2, .LC1
	retw.n
.LFE7:
	.size	randombytes_esp32_implementation_name, .-randombytes_esp32_implementation_name
	.section	.text.randombytes_esp32_random_buf,"ax",@progbits
	.align	4
	.type	randombytes_esp32_random_buf, @function
randombytes_esp32_random_buf:
.LFB6:
	.loc 1 18 0
.LVL0:
	entry	sp, 32
.LCFI1:
.LVL1:
.LBB2:
	.loc 1 20 0
	movi.n	a4, 0
	j	.L3
.LVL2:
.L4:
	.loc 1 21 0 discriminator 3
	add.n	a5, a2, a4
	call8	esp_random
.LVL3:
	s8i	a10, a5, 0
	.loc 1 20 0 discriminator 3
	addi.n	a4, a4, 1
.LVL4:
.L3:
	.loc 1 20 0 is_stmt 0 discriminator 1
	bltu	a4, a3, .L4
.LBE2:
	.loc 1 23 0 is_stmt 1
	retw.n
.LFE6:
	.size	randombytes_esp32_random_buf, .-randombytes_esp32_random_buf
	.global	randombytes_esp32_implementation
	.section	.rodata.randombytes_esp32_implementation,"a",@progbits
	.align	4
	.type	randombytes_esp32_implementation, @object
	.size	randombytes_esp32_implementation, 24
randombytes_esp32_implementation:
	.word	randombytes_esp32_implementation_name
	.word	esp_random
	.word	0
	.word	0
	.word	randombytes_esp32_random_buf
	.word	0
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x20f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x18
	.byte	0x5
	.byte	0x13
	.4byte	0x107
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x14
	.4byte	0x117
	.byte	0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x15
	.4byte	0x122
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x16
	.4byte	0x129
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x17
	.4byte	0x143
	.byte	0xc
	.uleb128 0x8
	.string	"buf"
	.byte	0x5
	.byte	0x18
	.4byte	0x163
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.byte	0x19
	.4byte	0x16e
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0x10c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x112
	.uleb128 0xb
	.4byte	0xab
	.uleb128 0xa
	.byte	0x4
	.4byte	0x107
	.uleb128 0x9
	.4byte	0x89
	.uleb128 0xa
	.byte	0x4
	.4byte	0x11d
	.uleb128 0xc
	.uleb128 0xa
	.byte	0x4
	.4byte	0x128
	.uleb128 0xd
	.4byte	0x89
	.4byte	0x13e
	.uleb128 0xe
	.4byte	0x13e
	.byte	0
	.uleb128 0xb
	.4byte	0x89
	.uleb128 0xa
	.byte	0x4
	.4byte	0x12f
	.uleb128 0xf
	.4byte	0x159
	.uleb128 0xe
	.4byte	0x159
	.uleb128 0xe
	.4byte	0x15e
	.byte	0
	.uleb128 0xb
	.4byte	0xa2
	.uleb128 0xb
	.4byte	0x2c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x149
	.uleb128 0x9
	.4byte	0x25
	.uleb128 0xa
	.byte	0x4
	.4byte	0x169
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x19
	.4byte	0x10c
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x11
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eb
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0x11
	.4byte	0x159
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF22
	.byte	0x1
	.byte	0x11
	.4byte	0x15e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x13
	.4byte	0x1eb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x14
	.4byte	0x2c
	.4byte	.LLST0
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0x207
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x18
	.4byte	.LASF29
	.byte	0x1
	.byte	0x25
	.4byte	0x202
	.uleb128 0x5
	.byte	0x3
	.4byte	randombytes_esp32_implementation
	.uleb128 0xb
	.4byte	0xb2
	.uleb128 0x19
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.byte	0x8a
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
	.uleb128 0x8
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x12
	.uleb128 0x5
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF21:
	.string	"_Bool"
.LASF16:
	.string	"implementation_name"
.LASF26:
	.string	"randombytes_implementation"
.LASF29:
	.string	"randombytes_esp32_implementation"
.LASF17:
	.string	"random"
.LASF18:
	.string	"stir"
.LASF30:
	.string	"esp_random"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"size"
.LASF14:
	.string	"long unsigned int"
.LASF20:
	.string	"close"
.LASF1:
	.string	"short unsigned int"
.LASF24:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/port/randombytes_esp32.c"
.LASF7:
	.string	"__uint32_t"
.LASF5:
	.string	"unsigned char"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF23:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF6:
	.string	"short int"
.LASF25:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\libsodium"
.LASF11:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF27:
	.string	"randombytes_esp32_implementation_name"
.LASF28:
	.string	"randombytes_esp32_random_buf"
.LASF19:
	.string	"uniform"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
