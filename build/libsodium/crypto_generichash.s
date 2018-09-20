	.file	"crypto_generichash.c"
	.text
.Ltext0:
	.section	.text.crypto_generichash_bytes_min,"ax",@progbits
	.align	4
	.global	crypto_generichash_bytes_min
	.type	crypto_generichash_bytes_min, @function
crypto_generichash_bytes_min:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/crypto_generichash.c"
	.loc 1 7 0
	entry	sp, 32
.LCFI0:
	.loc 1 9 0
	movi.n	a2, 0x10
	retw.n
.LFE0:
	.size	crypto_generichash_bytes_min, .-crypto_generichash_bytes_min
	.section	.text.crypto_generichash_bytes_max,"ax",@progbits
	.align	4
	.global	crypto_generichash_bytes_max
	.type	crypto_generichash_bytes_max, @function
crypto_generichash_bytes_max:
.LFB1:
	.loc 1 13 0
	entry	sp, 32
.LCFI1:
	.loc 1 15 0
	movi.n	a2, 0x40
	retw.n
.LFE1:
	.size	crypto_generichash_bytes_max, .-crypto_generichash_bytes_max
	.section	.text.crypto_generichash_bytes,"ax",@progbits
	.align	4
	.global	crypto_generichash_bytes
	.type	crypto_generichash_bytes, @function
crypto_generichash_bytes:
.LFB2:
	.loc 1 19 0
	entry	sp, 32
.LCFI2:
	.loc 1 21 0
	movi.n	a2, 0x20
	retw.n
.LFE2:
	.size	crypto_generichash_bytes, .-crypto_generichash_bytes
	.section	.text.crypto_generichash_keybytes_min,"ax",@progbits
	.align	4
	.global	crypto_generichash_keybytes_min
	.type	crypto_generichash_keybytes_min, @function
crypto_generichash_keybytes_min:
.LFB3:
	.loc 1 25 0
	entry	sp, 32
.LCFI3:
	.loc 1 27 0
	movi.n	a2, 0x10
	retw.n
.LFE3:
	.size	crypto_generichash_keybytes_min, .-crypto_generichash_keybytes_min
	.section	.text.crypto_generichash_keybytes_max,"ax",@progbits
	.align	4
	.global	crypto_generichash_keybytes_max
	.type	crypto_generichash_keybytes_max, @function
crypto_generichash_keybytes_max:
.LFB4:
	.loc 1 31 0
	entry	sp, 32
.LCFI4:
	.loc 1 33 0
	movi.n	a2, 0x40
	retw.n
.LFE4:
	.size	crypto_generichash_keybytes_max, .-crypto_generichash_keybytes_max
	.section	.text.crypto_generichash_keybytes,"ax",@progbits
	.align	4
	.global	crypto_generichash_keybytes
	.type	crypto_generichash_keybytes, @function
crypto_generichash_keybytes:
.LFB5:
	.loc 1 37 0
	entry	sp, 32
.LCFI5:
	.loc 1 39 0
	movi.n	a2, 0x20
	retw.n
.LFE5:
	.size	crypto_generichash_keybytes, .-crypto_generichash_keybytes
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"blake2b"
	.section	.text.crypto_generichash_primitive,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_generichash_primitive
	.type	crypto_generichash_primitive, @function
crypto_generichash_primitive:
.LFB6:
	.loc 1 43 0
	entry	sp, 32
.LCFI6:
	.loc 1 45 0
	l32r	a2, .LC1
	retw.n
.LFE6:
	.size	crypto_generichash_primitive, .-crypto_generichash_primitive
	.section	.text.crypto_generichash_statebytes,"ax",@progbits
	.align	4
	.global	crypto_generichash_statebytes
	.type	crypto_generichash_statebytes, @function
crypto_generichash_statebytes:
.LFB7:
	.loc 1 49 0
	entry	sp, 32
.LCFI7:
	.loc 1 51 0
	movi	a2, 0x180
	retw.n
.LFE7:
	.size	crypto_generichash_statebytes, .-crypto_generichash_statebytes
	.section	.text.crypto_generichash,"ax",@progbits
	.align	4
	.global	crypto_generichash
	.type	crypto_generichash, @function
crypto_generichash:
.LFB8:
	.loc 1 57 0
.LVL0:
	entry	sp, 48
.LCFI8:
	mov.n	a15, a7
	.loc 1 58 0
	l32i.n	a8, sp, 52
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_generichash_blake2b
.LVL1:
	.loc 1 59 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE8:
	.size	crypto_generichash, .-crypto_generichash
	.section	.text.crypto_generichash_init,"ax",@progbits
	.align	4
	.global	crypto_generichash_init
	.type	crypto_generichash_init, @function
crypto_generichash_init:
.LFB9:
	.loc 1 65 0
.LVL3:
	entry	sp, 32
.LCFI9:
	.loc 1 66 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_generichash_blake2b_init
.LVL4:
	.loc 1 68 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE9:
	.size	crypto_generichash_init, .-crypto_generichash_init
	.section	.text.crypto_generichash_update,"ax",@progbits
	.align	4
	.global	crypto_generichash_update
	.type	crypto_generichash_update, @function
crypto_generichash_update:
.LFB10:
	.loc 1 74 0
.LVL6:
	entry	sp, 32
.LCFI10:
	.loc 1 75 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_generichash_blake2b_update
.LVL7:
	.loc 1 77 0
	mov.n	a2, a10
.LVL8:
	retw.n
.LFE10:
	.size	crypto_generichash_update, .-crypto_generichash_update
	.section	.text.crypto_generichash_final,"ax",@progbits
	.align	4
	.global	crypto_generichash_final
	.type	crypto_generichash_final, @function
crypto_generichash_final:
.LFB11:
	.loc 1 82 0
.LVL9:
	entry	sp, 32
.LCFI11:
	.loc 1 83 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_generichash_blake2b_final
.LVL10:
	.loc 1 85 0
	mov.n	a2, a10
.LVL11:
	retw.n
.LFE11:
	.size	crypto_generichash_final, .-crypto_generichash_final
	.section	.text.crypto_generichash_keygen,"ax",@progbits
	.align	4
	.global	crypto_generichash_keygen
	.type	crypto_generichash_keygen, @function
crypto_generichash_keygen:
.LFB12:
	.loc 1 89 0
.LVL12:
	entry	sp, 32
.LCFI12:
	.loc 1 90 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL13:
	retw.n
.LFE12:
	.size	crypto_generichash_keygen, .-crypto_generichash_keygen
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
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
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI11-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI12-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x448
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
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
	.4byte	0x33
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
	.4byte	0x53
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x73
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x39
	.4byte	0x68
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x6
	.4byte	0xab
	.uleb128 0x7
	.4byte	.LASF18
	.2byte	0x165
	.byte	0x5
	.byte	0x17
	.4byte	0x10f
	.uleb128 0x8
	.string	"h"
	.byte	0x5
	.byte	0x18
	.4byte	0x10f
	.byte	0
	.uleb128 0x8
	.string	"t"
	.byte	0x5
	.byte	0x19
	.4byte	0x11f
	.byte	0x40
	.uleb128 0x8
	.string	"f"
	.byte	0x5
	.byte	0x1a
	.4byte	0x11f
	.byte	0x50
	.uleb128 0x8
	.string	"buf"
	.byte	0x5
	.byte	0x1b
	.4byte	0x12f
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1c
	.4byte	0x28
	.2byte	0x160
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1d
	.4byte	0x7a
	.2byte	0x164
	.byte	0
	.uleb128 0xa
	.4byte	0x85
	.4byte	0x11f
	.uleb128 0xb
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x85
	.4byte	0x12f
	.uleb128 0xb
	.4byte	0x97
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x13f
	.uleb128 0xb
	.4byte	0x97
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1e
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2c
	.4byte	0x13f
	.uleb128 0x6
	.4byte	0x28
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6
	.4byte	0x28
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x12
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x18
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1e
	.4byte	0x28
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x24
	.4byte	0x28
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2a
	.4byte	0xb2
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x30
	.4byte	0x28
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x36
	.4byte	0x21
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29e
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.byte	0x36
	.4byte	0xa5
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x36
	.4byte	0x28
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0x36
	.4byte	0x29e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x37
	.4byte	0x73
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0x37
	.4byte	0x29e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x38
	.4byte	0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x414
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a4
	.uleb128 0x6
	.4byte	0x53
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3e
	.4byte	0x21
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31b
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3e
	.4byte	0x31b
	.4byte	.LLST1
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0x3f
	.4byte	0x29e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x40
	.4byte	0x155
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x40
	.4byte	0x155
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.4byte	.LVL4
	.4byte	0x41f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14a
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x47
	.4byte	0x21
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37e
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x47
	.4byte	0x31b
	.4byte	.LLST2
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0x48
	.4byte	0x29e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x49
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LVL7
	.4byte	0x42a
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x50
	.4byte	0x21
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3dd
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x50
	.4byte	0x31b
	.4byte	.LLST3
	.uleb128 0x10
	.string	"out"
	.byte	0x1
	.byte	0x51
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x51
	.4byte	0x155
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.4byte	.LVL10
	.4byte	0x435
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0x58
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x414
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x58
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x440
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0x4a
	.uleb128 0x15
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x59
	.uleb128 0x15
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x65
	.uleb128 0x15
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x6a
	.uleb128 0x15
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x21
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF36:
	.string	"crypto_generichash_blake2b"
.LASF33:
	.string	"state"
.LASF27:
	.string	"crypto_generichash_statebytes"
.LASF34:
	.string	"crypto_generichash_update"
.LASF24:
	.string	"crypto_generichash_keybytes_max"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"uint64_t"
.LASF41:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"crypto_generichash_bytes"
.LASF26:
	.string	"crypto_generichash_primitive"
.LASF23:
	.string	"crypto_generichash_keybytes_min"
.LASF5:
	.string	"unsigned char"
.LASF25:
	.string	"crypto_generichash_keybytes"
.LASF14:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF31:
	.string	"crypto_generichash"
.LASF21:
	.string	"crypto_generichash_bytes_max"
.LASF42:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/crypto_generichash.c"
.LASF29:
	.string	"inlen"
.LASF32:
	.string	"crypto_generichash_init"
.LASF40:
	.string	"randombytes_buf"
.LASF17:
	.string	"last_node"
.LASF19:
	.string	"crypto_generichash_state"
.LASF20:
	.string	"crypto_generichash_bytes_min"
.LASF35:
	.string	"crypto_generichash_final"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF39:
	.string	"crypto_generichash_blake2b_final"
.LASF38:
	.string	"crypto_generichash_blake2b_update"
.LASF18:
	.string	"crypto_generichash_blake2b_state"
.LASF13:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF37:
	.string	"crypto_generichash_blake2b_init"
.LASF6:
	.string	"short int"
.LASF30:
	.string	"keylen"
.LASF8:
	.string	"__uint64_t"
.LASF16:
	.string	"buflen"
.LASF12:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF28:
	.string	"outlen"
.LASF43:
	.string	"crypto_generichash_keygen"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
