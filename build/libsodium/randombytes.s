	.file	"randombytes.c"
	.text
.Ltext0:
	.section	.text.randombytes_set_implementation,"ax",@progbits
	.literal_position
	.literal .LC0, implementation
	.align	4
	.global	randombytes_set_implementation
	.type	randombytes_set_implementation, @function
randombytes_set_implementation:
.LFB13:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/randombytes/randombytes.c"
	.loc 1 54 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 55 0
	l32r	a8, .LC0
	s32i.n	a2, a8, 0
	.loc 1 58 0
	movi.n	a2, 0
.LVL1:
	retw.n
.LFE13:
	.size	randombytes_set_implementation, .-randombytes_set_implementation
	.section	.text.randombytes_stir,"ax",@progbits
	.literal_position
	.literal .LC1, implementation
	.align	4
	.global	randombytes_stir
	.type	randombytes_stir, @function
randombytes_stir:
.LFB16:
	.loc 1 86 0
	entry	sp, 32
.LCFI1:
	.loc 1 88 0
	call8	randombytes_init_if_needed
.LVL2:
	.loc 1 89 0
	l32r	a8, .LC1
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 8
	beqz.n	a8, .L2
	.loc 1 90 0
	callx8	a8
.LVL3:
.L2:
	retw.n
.LFE16:
	.size	randombytes_stir, .-randombytes_stir
	.section	.text.randombytes_init_if_needed,"ax",@progbits
	.literal_position
	.literal .LC2, implementation
	.literal .LC3, randombytes_esp32_implementation
	.align	4
	.type	randombytes_init_if_needed, @function
randombytes_init_if_needed:
.LFB12:
	.loc 1 45 0
	entry	sp, 32
.LCFI2:
	.loc 1 46 0
	l32r	a8, .LC2
	l32i.n	a8, a8, 0
	bnez.n	a8, .L4
	.loc 1 47 0
	l32r	a9, .LC3
	l32r	a8, .LC2
	s32i.n	a9, a8, 0
	.loc 1 48 0
	call8	randombytes_stir
.LVL4:
.L4:
	retw.n
.LFE12:
	.size	randombytes_init_if_needed, .-randombytes_init_if_needed
	.section	.text.randombytes_implementation_name,"ax",@progbits
	.literal_position
	.literal .LC4, implementation
	.align	4
	.global	randombytes_implementation_name
	.type	randombytes_implementation_name, @function
randombytes_implementation_name:
.LFB14:
	.loc 1 62 0
	entry	sp, 32
.LCFI3:
	.loc 1 64 0
	call8	randombytes_init_if_needed
.LVL5:
	.loc 1 65 0
	l32r	a8, .LC4
	l32i.n	a8, a8, 0
	l32i.n	a10, a8, 0
	callx8	a10
.LVL6:
	.loc 1 69 0
	mov.n	a2, a10
	retw.n
.LFE14:
	.size	randombytes_implementation_name, .-randombytes_implementation_name
	.section	.text.randombytes_random,"ax",@progbits
	.literal_position
	.literal .LC5, implementation
	.align	4
	.global	randombytes_random
	.type	randombytes_random, @function
randombytes_random:
.LFB15:
	.loc 1 73 0
	entry	sp, 32
.LCFI4:
	.loc 1 75 0
	call8	randombytes_init_if_needed
.LVL7:
	.loc 1 76 0
	l32r	a8, .LC5
	l32i.n	a8, a8, 0
	l32i.n	a10, a8, 4
	callx8	a10
.LVL8:
	.loc 1 82 0
	mov.n	a2, a10
	retw.n
.LFE15:
	.size	randombytes_random, .-randombytes_random
	.section	.text.randombytes_uniform,"ax",@progbits
	.literal_position
	.literal .LC6, implementation
	.align	4
	.global	randombytes_uniform
	.type	randombytes_uniform, @function
randombytes_uniform:
.LFB17:
	.loc 1 125 0
.LVL9:
	entry	sp, 32
.LCFI5:
	.loc 1 130 0
	call8	randombytes_init_if_needed
.LVL10:
	.loc 1 131 0
	l32r	a3, .LC6
	l32i.n	a3, a3, 0
	l32i.n	a3, a3, 12
	beqz.n	a3, .L9
	.loc 1 132 0
	mov.n	a10, a2
	callx8	a3
.LVL11:
	mov.n	a2, a10
.LVL12:
	retw.n
.LVL13:
.L9:
	.loc 1 135 0
	bltui	a2, 2, .L12
	.loc 1 138 0
	neg	a3, a2
	remu	a3, a3, a2
.LVL14:
.L11:
	.loc 1 140 0 discriminator 1
	call8	randombytes_random
.LVL15:
	.loc 1 141 0 discriminator 1
	bltu	a10, a3, .L11
	.loc 1 143 0
	remu	a2, a10, a2
.LVL16:
	retw.n
.LVL17:
.L12:
	.loc 1 136 0
	movi.n	a2, 0
.LVL18:
	.loc 1 144 0
	retw.n
.LFE17:
	.size	randombytes_uniform, .-randombytes_uniform
	.section	.text.randombytes_buf,"ax",@progbits
	.literal_position
	.literal .LC7, implementation
	.align	4
	.global	randombytes_buf
	.type	randombytes_buf, @function
randombytes_buf:
.LFB18:
	.loc 1 148 0
.LVL19:
	entry	sp, 32
.LCFI6:
	.loc 1 150 0
	call8	randombytes_init_if_needed
.LVL20:
	.loc 1 151 0
	beqz.n	a3, .L13
	.loc 1 152 0
	l32r	a8, .LC7
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 16
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL21:
.L13:
	retw.n
.LFE18:
	.size	randombytes_buf, .-randombytes_buf
	.section	.text.randombytes_buf_deterministic,"ax",@progbits
	.literal_position
	.literal .LC8, nonce$2512
	.align	4
	.global	randombytes_buf_deterministic
	.type	randombytes_buf_deterministic, @function
randombytes_buf_deterministic:
.LFB19:
	.loc 1 167 0
.LVL22:
	entry	sp, 32
.LCFI7:
	.loc 1 178 0
	mov.n	a15, a4
	l32r	a14, .LC8
	mov.n	a12, a3
	movi.n	a13, 0
	mov.n	a10, a2
	call8	crypto_stream_chacha20_ietf
.LVL23:
	retw.n
.LFE19:
	.size	randombytes_buf_deterministic, .-randombytes_buf_deterministic
	.section	.text.randombytes_seedbytes,"ax",@progbits
	.align	4
	.global	randombytes_seedbytes
	.type	randombytes_seedbytes, @function
randombytes_seedbytes:
.LFB20:
	.loc 1 184 0
	entry	sp, 32
.LCFI8:
	.loc 1 186 0
	movi.n	a2, 0x20
	retw.n
.LFE20:
	.size	randombytes_seedbytes, .-randombytes_seedbytes
	.section	.text.randombytes_close,"ax",@progbits
	.literal_position
	.literal .LC9, implementation
	.align	4
	.global	randombytes_close
	.type	randombytes_close, @function
randombytes_close:
.LFB21:
	.loc 1 190 0
	entry	sp, 32
.LCFI9:
	.loc 1 191 0
	l32r	a8, .LC9
	l32i.n	a8, a8, 0
	beqz.n	a8, .L19
	.loc 1 191 0 discriminator 1
	l32i.n	a10, a8, 20
	beqz.n	a10, .L20
	.loc 1 192 0
	callx8	a10
.LVL24:
	mov.n	a2, a10
	retw.n
.L19:
	.loc 1 194 0
	movi.n	a2, 0
	retw.n
.L20:
	movi.n	a2, 0
	.loc 1 195 0
	retw.n
.LFE21:
	.size	randombytes_close, .-randombytes_close
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"buf_len <= SIZE_MAX"
	.align	4
.LC13:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/randombytes/randombytes.c"
	.section	.text.randombytes,"ax",@progbits
	.literal_position
	.literal .LC11, .LC10
	.literal .LC12, __func__$2523
	.literal .LC14, .LC13
	.align	4
	.global	randombytes
	.type	randombytes, @function
randombytes:
.LFB22:
	.loc 1 199 0
.LVL25:
	entry	sp, 32
.LCFI10:
	.loc 1 200 0
	beqz.n	a5, .L25
	.loc 1 200 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi	a11, 0xc8
	l32r	a10, .LC14
	call8	__assert_func
.LVL26:
.L25:
	.loc 1 201 0 is_stmt 1
	mov.n	a11, a4
	mov.n	a10, a2
	call8	randombytes_buf
.LVL27:
	retw.n
.LFE22:
	.size	randombytes, .-randombytes
	.section	.rodata.__func__$2523,"a",@progbits
	.align	4
	.type	__func__$2523, @object
	.size	__func__$2523, 12
__func__$2523:
	.string	"randombytes"
	.section	.rodata.nonce$2512,"a",@progbits
	.align	4
	.type	nonce$2512, @object
	.size	nonce$2512, 12
nonce$2512:
	.byte	76
	.byte	105
	.byte	98
	.byte	115
	.byte	111
	.byte	100
	.byte	105
	.byte	117
	.byte	109
	.byte	68
	.byte	82
	.byte	71
	.section	.bss.implementation,"aw",@nobits
	.align	4
	.type	implementation, @object
	.size	implementation, 4
implementation:
	.zero	4
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI2-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI4-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI8-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI9-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI10-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_chacha20.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/port/randombytes_default.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x471
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x8
	.4byte	0x93
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x18
	.byte	0x5
	.byte	0x13
	.4byte	0x105
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x5
	.byte	0x14
	.4byte	0x10a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x5
	.byte	0x15
	.4byte	0x115
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x5
	.byte	0x16
	.4byte	0x86
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x5
	.byte	0x17
	.4byte	0x12f
	.byte	0xc
	.uleb128 0xb
	.string	"buf"
	.byte	0x5
	.byte	0x18
	.4byte	0x14f
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0x19
	.4byte	0x15a
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.4byte	0x9a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x105
	.uleb128 0xc
	.4byte	0xa5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x110
	.uleb128 0xd
	.4byte	0xa5
	.4byte	0x12a
	.uleb128 0xe
	.4byte	0x12a
	.byte	0
	.uleb128 0x8
	.4byte	0xa5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x11b
	.uleb128 0xf
	.4byte	0x145
	.uleb128 0xe
	.4byte	0x145
	.uleb128 0xe
	.4byte	0x14a
	.byte	0
	.uleb128 0x8
	.4byte	0x7d
	.uleb128 0x8
	.4byte	0x21
	.uleb128 0x6
	.byte	0x4
	.4byte	0x135
	.uleb128 0xc
	.4byte	0x3a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x155
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1a
	.4byte	0xb0
	.uleb128 0x10
	.4byte	.LASF20
	.byte	0x1
	.byte	0x35
	.4byte	0x3a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x194
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x35
	.4byte	0x194
	.4byte	.LLST0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x160
	.uleb128 0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x55
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b9
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x1b9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0x2c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d8
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x19a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3d
	.4byte	0x9a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb
	.uleb128 0x13
	.4byte	.LVL5
	.4byte	0x1b9
	.byte	0
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x1
	.byte	0x48
	.4byte	0xa5
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21e
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0x1b9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7c
	.4byte	0xa5
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x288
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7c
	.4byte	0x12a
	.4byte	.LLST1
	.uleb128 0x16
	.string	"min"
	.byte	0x1
	.byte	0x7e
	.4byte	0xa5
	.4byte	.LLST2
	.uleb128 0x16
	.string	"r"
	.byte	0x1
	.byte	0x7f
	.4byte	0xa5
	.4byte	.LLST3
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x1b9
	.uleb128 0x17
	.4byte	.LVL11
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x27e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL15
	.4byte	0x1fb
	.byte	0
	.uleb128 0x19
	.4byte	.LASF27
	.byte	0x1
	.byte	0x93
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d3
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x93
	.4byte	0x145
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF28
	.byte	0x1
	.byte	0x93
	.4byte	0x14a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LVL20
	.4byte	0x1b9
	.uleb128 0x1c
	.4byte	.LVL21
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF29
	.byte	0x1
	.byte	0xa5
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x340
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0xa5
	.4byte	0x145
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa5
	.4byte	0x14a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x1
	.byte	0xa6
	.4byte	0x340
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF31
	.byte	0x1
	.byte	0xa8
	.4byte	0x35b
	.uleb128 0x5
	.byte	0x3
	.4byte	nonce$2512
	.uleb128 0x1e
	.4byte	.LVL23
	.4byte	0x45e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	nonce$2512
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x346
	.uleb128 0x8
	.4byte	0x48
	.uleb128 0x1f
	.4byte	0x48
	.4byte	0x35b
	.uleb128 0x20
	.4byte	0x76
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x34b
	.uleb128 0x21
	.4byte	.LASF32
	.byte	0x1
	.byte	0xb7
	.4byte	0x21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF33
	.byte	0x1
	.byte	0xbd
	.4byte	0x3a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF34
	.byte	0x1
	.byte	0xc6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x413
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0xc6
	.4byte	0x413
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x1
	.byte	0xc6
	.4byte	0x418
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x23
	.4byte	.LASF42
	.4byte	0x42d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2523
	.uleb128 0x24
	.4byte	.LVL26
	.4byte	0x469
	.4byte	0x3fc
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2523
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL27
	.4byte	0x288
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x8d
	.uleb128 0x8
	.4byte	0x68
	.uleb128 0x1f
	.4byte	0x93
	.4byte	0x42d
	.uleb128 0x20
	.4byte	0x76
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x41d
	.uleb128 0x1d
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1d
	.4byte	0x443
	.uleb128 0x5
	.byte	0x3
	.4byte	implementation
	.uleb128 0x6
	.byte	0x4
	.4byte	0x449
	.uleb128 0x8
	.4byte	0x160
	.uleb128 0x25
	.4byte	.LASF43
	.byte	0x8
	.byte	0x14
	.4byte	0x459
	.uleb128 0x8
	.4byte	0xb0
	.uleb128 0x26
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3e
	.uleb128 0x26
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x29
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE13
	.2byte	0x5
	.byte	0x3
	.4byte	implementation
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"size_t"
.LASF36:
	.string	"implementation"
.LASF33:
	.string	"randombytes_close"
.LASF37:
	.string	"crypto_stream_chacha20_ietf"
.LASF42:
	.string	"__func__"
.LASF19:
	.string	"randombytes_implementation"
.LASF26:
	.string	"randombytes_stir"
.LASF40:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/randombytes/randombytes.c"
.LASF39:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"random"
.LASF16:
	.string	"stir"
.LASF2:
	.string	"signed char"
.LASF28:
	.string	"size"
.LASF11:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF35:
	.string	"buf_len"
.LASF20:
	.string	"randombytes_set_implementation"
.LASF14:
	.string	"implementation_name"
.LASF23:
	.string	"randombytes_uniform"
.LASF31:
	.string	"nonce"
.LASF24:
	.string	"impl"
.LASF6:
	.string	"__uint32_t"
.LASF27:
	.string	"randombytes_buf"
.LASF22:
	.string	"randombytes_random"
.LASF38:
	.string	"__assert_func"
.LASF3:
	.string	"unsigned char"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF43:
	.string	"randombytes_esp32_implementation"
.LASF34:
	.string	"randombytes"
.LASF32:
	.string	"randombytes_seedbytes"
.LASF10:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF29:
	.string	"randombytes_buf_deterministic"
.LASF4:
	.string	"short int"
.LASF30:
	.string	"seed"
.LASF25:
	.string	"upper_bound"
.LASF13:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF41:
	.string	"randombytes_init_if_needed"
.LASF18:
	.string	"close"
.LASF21:
	.string	"randombytes_implementation_name"
.LASF17:
	.string	"uniform"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
