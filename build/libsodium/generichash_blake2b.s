	.file	"generichash_blake2b.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"outlen <= UINT8_MAX"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/generichash_blake2b.c"
	.align	4
.LC5:
	.string	"keylen <= UINT8_MAX"
	.section	.text.crypto_generichash_blake2b,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$2272
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	crypto_generichash_blake2b
	.type	crypto_generichash_blake2b, @function
crypto_generichash_blake2b:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/generichash_blake2b.c"
	.loc 1 13 0
.LVL0:
	entry	sp, 48
.LCFI0:
	mov.n	a15, a7
	l32i.n	a8, sp, 52
	.loc 1 14 0
	addi.n	a9, a3, -1
	movi.n	a12, 0x3f
	bltu	a12, a9, .L5
	.loc 1 15 0
	movi.n	a9, 0x40
	bltu	a9, a8, .L6
	.loc 1 18 0
	movi	a9, 0xff
	bgeu	a9, a3, .L3
	.loc 1 18 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x12
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L3:
	.loc 1 19 0 is_stmt 1
	movi	a9, 0xff
	bgeu	a9, a8, .L4
	.loc 1 19 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi.n	a11, 0x13
	l32r	a10, .LC4
	call8	__assert_func
.LVL2:
.L4:
	.loc 1 21 0 is_stmt 1
	extui	a8, a8, 0, 8
.LVL3:
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	extui	a13, a3, 0, 8
	l32i.n	a12, sp, 48
	mov.n	a11, a4
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__blake2b
.LVL4:
	mov.n	a2, a10
.LVL5:
	retw.n
.LVL6:
.L5:
	.loc 1 16 0
	movi.n	a2, -1
.LVL7:
	retw.n
.LVL8:
.L6:
	movi.n	a2, -1
.LVL9:
	.loc 1 23 0
	retw.n
.LFE0:
	.size	crypto_generichash_blake2b, .-crypto_generichash_blake2b
	.section	.text.crypto_generichash_blake2b_salt_personal,"ax",@progbits
	.literal_position
	.literal .LC7, .LC0
	.literal .LC8, __func__$2283
	.literal .LC9, .LC3
	.literal .LC10, .LC5
	.align	4
	.global	crypto_generichash_blake2b_salt_personal
	.type	crypto_generichash_blake2b_salt_personal, @function
crypto_generichash_blake2b_salt_personal:
.LFB1:
	.loc 1 30 0
.LVL10:
	entry	sp, 48
.LCFI1:
	mov.n	a15, a7
	l32i.n	a8, sp, 52
	.loc 1 31 0
	addi.n	a9, a3, -1
	movi.n	a12, 0x3f
	bltu	a12, a9, .L11
	.loc 1 32 0
	movi.n	a9, 0x40
	bltu	a9, a8, .L12
	.loc 1 35 0
	movi	a9, 0xff
	bgeu	a9, a3, .L9
	.loc 1 35 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi.n	a11, 0x23
	l32r	a10, .LC9
	call8	__assert_func
.LVL11:
.L9:
	.loc 1 36 0 is_stmt 1
	movi	a9, 0xff
	bgeu	a9, a8, .L10
	.loc 1 36 0 is_stmt 0 discriminator 1
	l32r	a13, .LC10
	l32r	a12, .LC8
	movi.n	a11, 0x24
	l32r	a10, .LC9
	call8	__assert_func
.LVL12:
.L10:
	.loc 1 38 0 is_stmt 1
	l32i.n	a9, sp, 60
	s32i.n	a9, sp, 8
	l32i.n	a9, sp, 56
	s32i.n	a9, sp, 4
	extui	a8, a8, 0, 8
.LVL13:
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	extui	a13, a3, 0, 8
	l32i.n	a12, sp, 48
	mov.n	a11, a4
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__blake2b_salt_personal
.LVL14:
	mov.n	a2, a10
.LVL15:
	retw.n
.LVL16:
.L11:
	.loc 1 33 0
	movi.n	a2, -1
.LVL17:
	retw.n
.LVL18:
.L12:
	movi.n	a2, -1
.LVL19:
	.loc 1 41 0
	retw.n
.LFE1:
	.size	crypto_generichash_blake2b_salt_personal, .-crypto_generichash_blake2b_salt_personal
	.section	.text.crypto_generichash_blake2b_init,"ax",@progbits
	.literal_position
	.literal .LC11, .LC0
	.literal .LC12, __func__$2290
	.literal .LC13, .LC3
	.literal .LC14, .LC5
	.align	4
	.global	crypto_generichash_blake2b_init
	.type	crypto_generichash_blake2b_init, @function
crypto_generichash_blake2b_init:
.LFB2:
	.loc 1 47 0
.LVL20:
	entry	sp, 32
.LCFI2:
	.loc 1 48 0
	addi.n	a8, a5, -1
	movi.n	a9, 0x3f
	bltu	a9, a8, .L18
	.loc 1 48 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x40
	bltu	a8, a4, .L19
	.loc 1 52 0 is_stmt 1
	movi	a8, 0xff
	bgeu	a8, a5, .L15
	.loc 1 52 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi.n	a11, 0x34
	l32r	a10, .LC13
	call8	__assert_func
.LVL21:
.L15:
	.loc 1 53 0 is_stmt 1
	movi	a8, 0xff
	bgeu	a8, a4, .L16
	.loc 1 53 0 is_stmt 0 discriminator 1
	l32r	a13, .LC14
	l32r	a12, .LC12
	movi.n	a11, 0x35
	l32r	a10, .LC13
	call8	__assert_func
.LVL22:
.L16:
	.loc 1 54 0 is_stmt 1
	movi.n	a8, 1
	movi.n	a11, 0
	mov.n	a9, a11
	moveqz	a9, a8, a3
	.loc 1 54 0
	movnez	a8, a11, a4
	or	a8, a8, a9
	.loc 1 54 0
	beq	a8, a11, .L17
	.loc 1 55 0
	extui	a11, a5, 0, 8
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init
.LVL23:
	mov.n	a2, a10
.LVL24:
	beqz.n	a10, .L14
	.loc 1 56 0
	movi.n	a2, -1
	retw.n
.LVL25:
.L17:
	.loc 1 58 0
	extui	a13, a4, 0, 8
	mov.n	a12, a3
	extui	a11, a5, 0, 8
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init_key
.LVL26:
	mov.n	a2, a10
.LVL27:
	beqz.n	a10, .L14
	.loc 1 60 0
	movi.n	a2, -1
	retw.n
.LVL28:
.L18:
	.loc 1 50 0
	movi.n	a2, -1
.LVL29:
	retw.n
.LVL30:
.L19:
	movi.n	a2, -1
.LVL31:
.L14:
	.loc 1 63 0
	retw.n
.LFE2:
	.size	crypto_generichash_blake2b_init, .-crypto_generichash_blake2b_init
	.section	.text.crypto_generichash_blake2b_init_salt_personal,"ax",@progbits
	.literal_position
	.literal .LC15, .LC0
	.literal .LC16, __func__$2299
	.literal .LC17, .LC3
	.literal .LC18, .LC5
	.align	4
	.global	crypto_generichash_blake2b_init_salt_personal
	.type	crypto_generichash_blake2b_init_salt_personal, @function
crypto_generichash_blake2b_init_salt_personal:
.LFB3:
	.loc 1 70 0
.LVL32:
	entry	sp, 32
.LCFI3:
	.loc 1 71 0
	addi.n	a8, a5, -1
	movi.n	a9, 0x3f
	bltu	a9, a8, .L25
	.loc 1 71 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x40
	bltu	a8, a4, .L26
	.loc 1 75 0 is_stmt 1
	movi	a8, 0xff
	bgeu	a8, a5, .L22
	.loc 1 75 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC16
	movi.n	a11, 0x4b
	l32r	a10, .LC17
	call8	__assert_func
.LVL33:
.L22:
	.loc 1 76 0 is_stmt 1
	movi	a8, 0xff
	bgeu	a8, a4, .L23
	.loc 1 76 0 is_stmt 0 discriminator 1
	l32r	a13, .LC18
	l32r	a12, .LC16
	movi.n	a11, 0x4c
	l32r	a10, .LC17
	call8	__assert_func
.LVL34:
.L23:
	.loc 1 77 0 is_stmt 1
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a3
	.loc 1 77 0
	movnez	a8, a10, a4
	or	a8, a8, a9
	.loc 1 77 0
	beq	a8, a10, .L24
	.loc 1 78 0
	mov.n	a13, a7
	mov.n	a12, a6
	extui	a11, a5, 0, 8
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init_salt_personal
.LVL35:
	mov.n	a2, a10
.LVL36:
	beqz.n	a10, .L21
	.loc 1 80 0
	movi.n	a2, -1
	retw.n
.LVL37:
.L24:
	.loc 1 82 0
	mov.n	a15, a7
	mov.n	a14, a6
	extui	a13, a4, 0, 8
	mov.n	a12, a3
	extui	a11, a5, 0, 8
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init_key_salt_personal
.LVL38:
	mov.n	a2, a10
.LVL39:
	beqz.n	a10, .L21
	.loc 1 85 0
	movi.n	a2, -1
	retw.n
.LVL40:
.L25:
	.loc 1 73 0
	movi.n	a2, -1
.LVL41:
	retw.n
.LVL42:
.L26:
	movi.n	a2, -1
.LVL43:
.L21:
	.loc 1 88 0
	retw.n
.LFE3:
	.size	crypto_generichash_blake2b_init_salt_personal, .-crypto_generichash_blake2b_init_salt_personal
	.section	.text.crypto_generichash_blake2b_update,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b_update
	.type	crypto_generichash_blake2b_update, @function
crypto_generichash_blake2b_update:
.LFB4:
	.loc 1 94 0
.LVL44:
	entry	sp, 32
.LCFI4:
	.loc 1 95 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__update
.LVL45:
	.loc 1 96 0
	mov.n	a2, a10
.LVL46:
	retw.n
.LFE4:
	.size	crypto_generichash_blake2b_update, .-crypto_generichash_blake2b_update
	.section	.text.crypto_generichash_blake2b_final,"ax",@progbits
	.literal_position
	.literal .LC19, .LC0
	.literal .LC20, __func__$2310
	.literal .LC21, .LC3
	.align	4
	.global	crypto_generichash_blake2b_final
	.type	crypto_generichash_blake2b_final, @function
crypto_generichash_blake2b_final:
.LFB5:
	.loc 1 101 0
.LVL47:
	entry	sp, 32
.LCFI5:
	.loc 1 102 0
	movi	a8, 0xff
	bgeu	a8, a4, .L29
	.loc 1 102 0 is_stmt 0 discriminator 1
	l32r	a13, .LC19
	l32r	a12, .LC20
	movi	a11, 0x66
	l32r	a10, .LC21
	call8	__assert_func
.LVL48:
.L29:
	.loc 1 103 0 is_stmt 1
	extui	a12, a4, 0, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__final
.LVL49:
	.loc 1 104 0
	mov.n	a2, a10
.LVL50:
	retw.n
.LFE5:
	.size	crypto_generichash_blake2b_final, .-crypto_generichash_blake2b_final
	.section	.text._crypto_generichash_blake2b_pick_best_implementation,"ax",@progbits
	.align	4
	.global	_crypto_generichash_blake2b_pick_best_implementation
	.type	_crypto_generichash_blake2b_pick_best_implementation, @function
_crypto_generichash_blake2b_pick_best_implementation:
.LFB6:
	.loc 1 108 0
	entry	sp, 32
.LCFI6:
	.loc 1 109 0
	call8	crypto_generichash_blake2b__pick_best_implementation
.LVL51:
	.loc 1 110 0
	mov.n	a2, a10
	retw.n
.LFE6:
	.size	_crypto_generichash_blake2b_pick_best_implementation, .-_crypto_generichash_blake2b_pick_best_implementation
	.section	.rodata.__func__$2310,"a",@progbits
	.align	4
	.type	__func__$2310, @object
	.size	__func__$2310, 33
__func__$2310:
	.string	"crypto_generichash_blake2b_final"
	.section	.rodata.__func__$2299,"a",@progbits
	.align	4
	.type	__func__$2299, @object
	.size	__func__$2299, 46
__func__$2299:
	.string	"crypto_generichash_blake2b_init_salt_personal"
	.section	.rodata.__func__$2290,"a",@progbits
	.align	4
	.type	__func__$2290, @object
	.size	__func__$2290, 32
__func__$2290:
	.string	"crypto_generichash_blake2b_init"
	.section	.rodata.__func__$2283,"a",@progbits
	.align	4
	.type	__func__$2283, @object
	.size	__func__$2283, 41
__func__$2283:
	.string	"crypto_generichash_blake2b_salt_personal"
	.section	.rodata.__func__$2272,"a",@progbits
	.align	4
	.type	__func__$2272, @object
	.size	__func__$2272, 27
__func__$2272:
	.string	"crypto_generichash_blake2b"
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x7f6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
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
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x73
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x48
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x39
	.4byte	0x68
	.uleb128 0x6
	.4byte	.LASF18
	.2byte	0x165
	.byte	0x5
	.byte	0x17
	.4byte	0x104
	.uleb128 0x7
	.string	"h"
	.byte	0x5
	.byte	0x18
	.4byte	0x104
	.byte	0
	.uleb128 0x7
	.string	"t"
	.byte	0x5
	.byte	0x19
	.4byte	0x114
	.byte	0x40
	.uleb128 0x7
	.string	"f"
	.byte	0x5
	.byte	0x1a
	.4byte	0x114
	.byte	0x50
	.uleb128 0x7
	.string	"buf"
	.byte	0x5
	.byte	0x1b
	.4byte	0x124
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x1c
	.4byte	0x21
	.2byte	0x160
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1d
	.4byte	0x9c
	.2byte	0x164
	.byte	0
	.uleb128 0x9
	.4byte	0xa7
	.4byte	0x114
	.uleb128 0xa
	.4byte	0x81
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0xa7
	.4byte	0x124
	.uleb128 0xa
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x9c
	.4byte	0x134
	.uleb128 0xa
	.4byte	0x81
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1e
	.4byte	0xb2
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x28
	.4byte	0x16e
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa
	.4byte	0x3a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27b
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.byte	0xa
	.4byte	0x8f
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0xb
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb
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
	.byte	0xc
	.4byte	0x27b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc
	.4byte	0x21
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF31
	.4byte	0x296
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2272
	.uleb128 0x13
	.4byte	.LVL1
	.4byte	0x78b
	.4byte	0x21b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2272
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL2
	.4byte	0x78b
	.4byte	0x249
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2272
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x796
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x6
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x281
	.uleb128 0x16
	.4byte	0x53
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x296
	.uleb128 0xa
	.4byte	0x81
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.4byte	0x286
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1a
	.4byte	0x3a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d6
	.uleb128 0xe
	.string	"out"
	.byte	0x1
	.byte	0x1b
	.4byte	0x8f
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1b
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0x1b
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1c
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
	.byte	0x1c
	.4byte	0x27b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1c
	.4byte	0x21
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1d
	.4byte	0x27b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1d
	.4byte	0x27b
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x12
	.4byte	.LASF31
	.4byte	0x3e6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2283
	.uleb128 0x13
	.4byte	.LVL11
	.4byte	0x78b
	.4byte	0x365
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2283
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x78b
	.4byte	0x394
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2283
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x15
	.4byte	.LVL14
	.4byte	0x7a1
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x6
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x3e6
	.uleb128 0xa
	.4byte	0x81
	.byte	0x28
	.byte	0
	.uleb128 0x16
	.4byte	0x3d6
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2c
	.4byte	0x3a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ed
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2c
	.4byte	0x4ed
	.4byte	.LLST4
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0x2d
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2d
	.4byte	0x4f3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2e
	.4byte	0x4f3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.4byte	.LASF31
	.4byte	0x508
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2290
	.uleb128 0x13
	.4byte	.LVL21
	.4byte	0x78b
	.4byte	0x478
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2290
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL22
	.4byte	0x78b
	.4byte	0x4a7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2290
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0x7ac
	.4byte	0x4c4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0x7b7
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x134
	.uleb128 0x16
	.4byte	0x21
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x508
	.uleb128 0xa
	.4byte	0x81
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.4byte	0x4f8
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x42
	.4byte	0x3a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x641
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x43
	.4byte	0x4ed
	.4byte	.LLST5
	.uleb128 0x10
	.string	"key"
	.byte	0x1
	.byte	0x43
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x44
	.4byte	0x4f3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x44
	.4byte	0x4f3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x44
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x45
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x12
	.4byte	.LASF31
	.4byte	0x651
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2299
	.uleb128 0x13
	.4byte	.LVL33
	.4byte	0x78b
	.4byte	0x5b4
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2299
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL34
	.4byte	0x78b
	.4byte	0x5e3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2299
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x13
	.4byte	.LVL35
	.4byte	0x7c2
	.4byte	0x60c
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0x7cd
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x651
	.uleb128 0xa
	.4byte	0x81
	.byte	0x2d
	.byte	0
	.uleb128 0x16
	.4byte	0x641
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5b
	.4byte	0x3a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b3
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5b
	.4byte	0x4ed
	.4byte	.LLST6
	.uleb128 0x10
	.string	"in"
	.byte	0x1
	.byte	0x5c
	.4byte	0x27b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5d
	.4byte	0x73
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LVL45
	.4byte	0x7d8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x63
	.4byte	0x3a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x753
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x63
	.4byte	0x4ed
	.4byte	.LLST7
	.uleb128 0x10
	.string	"out"
	.byte	0x1
	.byte	0x64
	.4byte	0x8f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x64
	.4byte	0x4f3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF31
	.4byte	0x763
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2310
	.uleb128 0x13
	.4byte	.LVL48
	.4byte	0x78b
	.4byte	0x733
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2310
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL49
	.4byte	0x7e3
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x763
	.uleb128 0xa
	.4byte	0x81
	.byte	0x20
	.byte	0
	.uleb128 0x16
	.4byte	0x753
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6b
	.4byte	0x3a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78b
	.uleb128 0x17
	.4byte	.LVL51
	.4byte	0x7ee
	.byte	0
	.uleb128 0x18
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x29
	.uleb128 0x18
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x5c
	.uleb128 0x18
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4d
	.uleb128 0x18
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.byte	0x4e
	.uleb128 0x18
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x7
	.byte	0x52
	.uleb128 0x18
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x7
	.byte	0x56
	.uleb128 0x18
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x7
	.byte	0x57
	.uleb128 0x18
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x7
	.byte	0x63
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x5
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL2-1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL6
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12-1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"BLAKE2B_PERSONALBYTES"
.LASF34:
	.string	"crypto_generichash_blake2b_init_salt_personal"
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF27:
	.string	"crypto_generichash_blake2b"
.LASF30:
	.string	"personal"
.LASF33:
	.string	"state"
.LASF14:
	.string	"uint8_t"
.LASF13:
	.string	"char"
.LASF15:
	.string	"uint64_t"
.LASF48:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF19:
	.string	"BLAKE2B_BLOCKBYTES"
.LASF31:
	.string	"__func__"
.LASF29:
	.string	"salt"
.LASF39:
	.string	"crypto_generichash_blake2b__blake2b"
.LASF42:
	.string	"crypto_generichash_blake2b__init_key"
.LASF41:
	.string	"crypto_generichash_blake2b__init"
.LASF5:
	.string	"unsigned char"
.LASF12:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF28:
	.string	"crypto_generichash_blake2b_salt_personal"
.LASF21:
	.string	"BLAKE2B_KEYBYTES"
.LASF44:
	.string	"crypto_generichash_blake2b__init_key_salt_personal"
.LASF38:
	.string	"__assert_func"
.LASF17:
	.string	"last_node"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"blake2b_constant"
.LASF43:
	.string	"crypto_generichash_blake2b__init_salt_personal"
.LASF9:
	.string	"long long unsigned int"
.LASF49:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/generichash_blake2b.c"
.LASF36:
	.string	"crypto_generichash_blake2b_final"
.LASF35:
	.string	"crypto_generichash_blake2b_update"
.LASF40:
	.string	"crypto_generichash_blake2b__blake2b_salt_personal"
.LASF18:
	.string	"crypto_generichash_blake2b_state"
.LASF11:
	.string	"sizetype"
.LASF7:
	.string	"long long int"
.LASF20:
	.string	"BLAKE2B_OUTBYTES"
.LASF47:
	.string	"crypto_generichash_blake2b__pick_best_implementation"
.LASF25:
	.string	"inlen"
.LASF46:
	.string	"crypto_generichash_blake2b__final"
.LASF32:
	.string	"crypto_generichash_blake2b_init"
.LASF6:
	.string	"short int"
.LASF26:
	.string	"keylen"
.LASF8:
	.string	"__uint64_t"
.LASF16:
	.string	"buflen"
.LASF10:
	.string	"long int"
.LASF37:
	.string	"_crypto_generichash_blake2b_pick_best_implementation"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"BLAKE2B_SALTBYTES"
.LASF24:
	.string	"outlen"
.LASF45:
	.string	"crypto_generichash_blake2b__update"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
