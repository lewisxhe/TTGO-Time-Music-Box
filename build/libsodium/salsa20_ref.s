	.file	"salsa20_ref.c"
	.text
.Ltext0:
	.section	.text.stream_ref_xor_ic,"ax",@progbits
	.literal_position
	.align	4
	.type	stream_ref_xor_ic, @function
stream_ref_xor_ic:
.LFB1:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
	.loc 1 67 0
.LVL0:
	entry	sp, 144
.LCFI0:
	l32i	a11, sp, 144
	l32i	a13, sp, 148
	l32i	a12, sp, 152
	.loc 1 74 0
	or	a8, a4, a5
	beqz.n	a8, .L2
	movi.n	a8, 0
	j	.L4
.LVL1:
.L5:
	.loc 1 78 0 discriminator 3
	add.n	a9, a12, a8
	l8ui	a10, a9, 0
	addi	a14, sp, 80
	add.n	a9, a14, a8
	s8i	a10, a9, 0
	.loc 1 77 0 discriminator 3
	addi.n	a8, a8, 1
.LVL2:
.L4:
	.loc 1 77 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x1f
	bgeu	a9, a8, .L5
	movi.n	a8, 0
.LVL3:
	j	.L6
.LVL4:
.L7:
	.loc 1 81 0 is_stmt 1 discriminator 3
	add.n	a9, a6, a8
	l8ui	a10, a9, 0
	add.n	a9, sp, a8
	s8i	a10, a9, 0
	.loc 1 80 0 discriminator 3
	addi.n	a8, a8, 1
.LVL5:
.L6:
	.loc 1 80 0 is_stmt 0 discriminator 1
	bltui	a8, 8, .L7
	movi.n	a8, 8
.LVL6:
	j	.L8
.LVL7:
.L9:
	.loc 1 84 0 is_stmt 1 discriminator 3
	add.n	a9, sp, a8
	s8i	a11, a9, 0
	.loc 1 85 0 discriminator 3
	slli	a9, a13, 24
	srli	a11, a11, 8
.LVL8:
	or	a11, a9, a11
	srli	a13, a13, 8
.LVL9:
	.loc 1 83 0 discriminator 3
	addi.n	a8, a8, 1
.LVL10:
.L8:
	.loc 1 83 0 is_stmt 0 discriminator 1
	movi.n	a9, 0xf
	bgeu	a9, a8, .L9
	j	.L10
.LVL11:
.L16:
	.loc 1 88 0 is_stmt 1
	movi.n	a13, 0
	addi	a12, sp, 80
	mov.n	a11, sp
	addi	a10, sp, 16
	call8	crypto_core_salsa20
.LVL12:
	.loc 1 89 0
	movi.n	a8, 0
	j	.L11
.LVL13:
.L12:
	.loc 1 90 0 discriminator 3
	add.n	a11, a2, a8
	add.n	a9, a3, a8
	l8ui	a12, a9, 0
	addi	a6, sp, 16
	add.n	a10, a6, a8
	l8ui	a9, a10, 0
	xor	a9, a12, a9
	s8i	a9, a11, 0
	.loc 1 89 0 discriminator 3
	addi.n	a8, a8, 1
.LVL14:
.L11:
	.loc 1 89 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L12
	movi.n	a8, 1
.LVL15:
	movi.n	a9, 8
	j	.L13
.LVL16:
.L14:
	.loc 1 94 0 is_stmt 1 discriminator 3
	add.n	a10, sp, a9
	l8ui	a11, a10, 0
	add.n	a8, a8, a11
.LVL17:
	.loc 1 95 0 discriminator 3
	s8i	a8, a10, 0
	.loc 1 96 0 discriminator 3
	srli	a8, a8, 8
.LVL18:
	.loc 1 93 0 discriminator 3
	addi.n	a9, a9, 1
.LVL19:
.L13:
	.loc 1 93 0 is_stmt 0 discriminator 1
	movi.n	a10, 0xf
	bgeu	a10, a9, .L14
	.loc 1 98 0 is_stmt 1
	addi	a9, a4, -64
.LVL20:
	movi.n	a8, 1
.LVL21:
	bltu	a9, a4, .L15
	movi.n	a8, 0
.L15:
	addi.n	a4, a5, -1
.LVL22:
	add.n	a5, a8, a4
.LVL23:
	mov.n	a4, a9
.LVL24:
	.loc 1 99 0
	addi	a2, a2, 64
.LVL25:
	.loc 1 100 0
	addi	a3, a3, 64
.LVL26:
.L10:
	.loc 1 87 0
	bnez.n	a5, .L16
	bnez.n	a5, .L22
	movi.n	a6, 0x3f
	bltu	a6, a4, .L16
.L22:
	.loc 1 102 0
	or	a6, a4, a5
	beqz.n	a6, .L18
	.loc 1 103 0
	movi.n	a13, 0
	addi	a12, sp, 80
	mov.n	a11, sp
	addi	a10, sp, 16
	call8	crypto_core_salsa20
.LVL27:
	.loc 1 104 0
	movi.n	a5, 0
.LVL28:
	j	.L20
.LVL29:
.L21:
	.loc 1 105 0 discriminator 3
	add.n	a10, a2, a5
	add.n	a8, a3, a5
	l8ui	a11, a8, 0
	addi	a14, sp, 16
	add.n	a9, a14, a5
	l8ui	a8, a9, 0
	xor	a8, a11, a8
	s8i	a8, a10, 0
	.loc 1 104 0 discriminator 3
	addi.n	a5, a5, 1
.LVL30:
.L20:
	.loc 1 104 0 is_stmt 0 discriminator 1
	bltu	a5, a4, .L21
.LVL31:
.L18:
	.loc 1 108 0 is_stmt 1
	movi.n	a11, 0x40
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL32:
	.loc 1 109 0
	movi.n	a11, 0x20
	addi	a10, sp, 80
	call8	sodium_memzero
.LVL33:
.L2:
	.loc 1 112 0
	movi.n	a2, 0
.LVL34:
	retw.n
.LFE1:
	.size	stream_ref_xor_ic, .-stream_ref_xor_ic
	.section	.text.stream_ref,"ax",@progbits
	.literal_position
	.align	4
	.type	stream_ref, @function
stream_ref:
.LFB0:
	.loc 1 21 0
.LVL35:
	entry	sp, 144
.LCFI1:
	.loc 1 28 0
	or	a8, a4, a5
	beqz.n	a8, .L24
	movi.n	a8, 0
	j	.L26
.LVL36:
.L27:
	.loc 1 32 0 discriminator 3
	add.n	a9, a7, a8
	l8ui	a10, a9, 0
	addi	a3, sp, 80
	add.n	a9, a3, a8
	s8i	a10, a9, 0
	.loc 1 31 0 discriminator 3
	addi.n	a8, a8, 1
.LVL37:
.L26:
	.loc 1 31 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x1f
	bgeu	a9, a8, .L27
	movi.n	a8, 0
.LVL38:
	j	.L28
.LVL39:
.L29:
	.loc 1 35 0 is_stmt 1 discriminator 3
	add.n	a7, a6, a8
	l8ui	a9, a7, 0
	add.n	a7, sp, a8
	s8i	a9, a7, 0
	.loc 1 34 0 discriminator 3
	addi.n	a8, a8, 1
.LVL40:
.L28:
	.loc 1 34 0 is_stmt 0 discriminator 1
	bltui	a8, 8, .L29
	movi.n	a7, 8
	j	.L30
.LVL41:
.L31:
	.loc 1 38 0 is_stmt 1 discriminator 3
	add.n	a8, sp, a7
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 37 0 discriminator 3
	addi.n	a7, a7, 1
.LVL42:
.L30:
	.loc 1 37 0 is_stmt 0 discriminator 1
	movi.n	a8, 0xf
	bgeu	a8, a7, .L31
	j	.L32
.LVL43:
.L36:
	.loc 1 41 0 is_stmt 1
	movi.n	a13, 0
	addi	a12, sp, 80
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_core_salsa20
.LVL44:
	.loc 1 42 0
	movi.n	a8, 1
	.loc 1 43 0
	movi.n	a9, 8
	j	.L33
.LVL45:
.L34:
	.loc 1 44 0 discriminator 3
	add.n	a10, sp, a9
	l8ui	a11, a10, 0
	add.n	a8, a8, a11
.LVL46:
	.loc 1 45 0 discriminator 3
	s8i	a8, a10, 0
	.loc 1 46 0 discriminator 3
	srli	a8, a8, 8
.LVL47:
	.loc 1 43 0 discriminator 3
	addi.n	a9, a9, 1
.LVL48:
.L33:
	.loc 1 43 0 is_stmt 0 discriminator 1
	movi.n	a10, 0xf
	bgeu	a10, a9, .L34
	.loc 1 48 0 is_stmt 1
	addi	a7, a4, -64
	movi.n	a8, 1
.LVL49:
	bltu	a7, a4, .L35
	movi.n	a8, 0
.L35:
	addi.n	a4, a5, -1
.LVL50:
	add.n	a5, a8, a4
.LVL51:
	mov.n	a4, a7
.LVL52:
	.loc 1 49 0
	addi	a2, a2, 64
.LVL53:
.L32:
	.loc 1 40 0
	bnez.n	a5, .L36
	bnez.n	a5, .L42
	movi.n	a6, 0x3f
	bltu	a6, a4, .L36
.L42:
	.loc 1 51 0
	or	a6, a4, a5
	beqz.n	a6, .L38
	.loc 1 52 0
	movi.n	a13, 0
	addi	a12, sp, 80
	mov.n	a11, sp
	addi	a10, sp, 16
	call8	crypto_core_salsa20
.LVL54:
	.loc 1 53 0
	movi.n	a5, 0
.LVL55:
	j	.L40
.LVL56:
.L41:
	.loc 1 54 0 discriminator 3
	add.n	a9, a2, a5
	addi	a3, sp, 16
	add.n	a8, a3, a5
	l8ui	a8, a8, 0
	s8i	a8, a9, 0
	.loc 1 53 0 discriminator 3
	addi.n	a5, a5, 1
.LVL57:
.L40:
	.loc 1 53 0 is_stmt 0 discriminator 1
	bltu	a5, a4, .L41
.LVL58:
.L38:
	.loc 1 57 0 is_stmt 1
	movi.n	a11, 0x40
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL59:
	.loc 1 58 0
	movi.n	a11, 0x20
	addi	a10, sp, 80
	call8	sodium_memzero
.LVL60:
.L24:
	.loc 1 61 0
	movi.n	a2, 0
.LVL61:
	retw.n
.LFE0:
	.size	stream_ref, .-stream_ref
	.global	crypto_stream_salsa20_ref_implementation
	.section	.data.crypto_stream_salsa20_ref_implementation,"aw",@progbits
	.align	4
	.type	crypto_stream_salsa20_ref_implementation, @object
	.size	crypto_stream_salsa20_ref_implementation, 8
crypto_stream_salsa20_ref_implementation:
	.word	stream_ref
	.word	stream_ref_xor_ic
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
	.uleb128 0x90
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
	.uleb128 0x90
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "d:\\esp32\\esp-idf-v3.1-rc1\\components\\libsodium\\libsodium\\src\\libsodium\\crypto_stream\\salsa20\\stream_salsa20.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_salsa20.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x394
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1e
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x39
	.4byte	0x52
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x8
	.byte	0x4
	.byte	0x7
	.4byte	0x94
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.4byte	0xc3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x4
	.byte	0xa
	.4byte	0xf1
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x3d
	.4byte	0xb2
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x8
	.4byte	0x5d
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0xb8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x28
	.uleb128 0x9
	.byte	0x4
	.4byte	0xbe
	.uleb128 0xa
	.4byte	0x28
	.uleb128 0x9
	.byte	0x4
	.4byte	0x94
	.uleb128 0x7
	.4byte	0x3d
	.4byte	0xf1
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0x5d
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0x64
	.uleb128 0x8
	.4byte	0xb8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xc9
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x40
	.4byte	0x3d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x226
	.uleb128 0xc
	.string	"c"
	.byte	0x1
	.byte	0x40
	.4byte	0xb2
	.4byte	.LLST0
	.uleb128 0xc
	.string	"m"
	.byte	0x1
	.byte	0x40
	.4byte	0xb8
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x41
	.4byte	0x5d
	.4byte	.LLST2
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x41
	.4byte	0xb8
	.4byte	.LLST3
	.uleb128 0xc
	.string	"ic"
	.byte	0x1
	.byte	0x41
	.4byte	0x64
	.4byte	.LLST4
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x42
	.4byte	0xb8
	.4byte	.LLST5
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0x44
	.4byte	0x226
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x1
	.byte	0x45
	.4byte	0x23d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x1
	.byte	0x46
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x47
	.4byte	0x44
	.4byte	.LLST6
	.uleb128 0x10
	.string	"u"
	.byte	0x1
	.byte	0x48
	.4byte	0x44
	.4byte	.LLST7
	.uleb128 0x11
	.4byte	.LVL12
	.4byte	0x381
	.4byte	0x1cd
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL27
	.4byte	0x381
	.4byte	0x1f4
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL32
	.4byte	0x38c
	.4byte	0x20f
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x13
	.4byte	.LVL33
	.4byte	0x38c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x28
	.4byte	0x236
	.uleb128 0x15
	.4byte	0x236
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x14
	.4byte	0x28
	.4byte	0x24d
	.uleb128 0x15
	.4byte	0x236
	.byte	0x3f
	.byte	0
	.uleb128 0x14
	.4byte	0x28
	.4byte	0x25d
	.uleb128 0x15
	.4byte	0x236
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x13
	.4byte	0x3d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x370
	.uleb128 0xc
	.string	"c"
	.byte	0x1
	.byte	0x13
	.4byte	0xb2
	.4byte	.LLST8
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x13
	.4byte	0x5d
	.4byte	.LLST9
	.uleb128 0xc
	.string	"n"
	.byte	0x1
	.byte	0x13
	.4byte	0xb8
	.4byte	.LLST10
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x14
	.4byte	0xb8
	.4byte	.LLST11
	.uleb128 0xe
	.string	"in"
	.byte	0x1
	.byte	0x16
	.4byte	0x226
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x1
	.byte	0x17
	.4byte	0x23d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x1
	.byte	0x18
	.4byte	0x24d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x19
	.4byte	0x44
	.4byte	.LLST12
	.uleb128 0x10
	.string	"u"
	.byte	0x1
	.byte	0x1a
	.4byte	0x44
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	.LVL44
	.4byte	0x381
	.4byte	0x317
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL54
	.4byte	0x381
	.4byte	0x33e
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL59
	.4byte	0x38c
	.4byte	0x359
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x13
	.4byte	.LVL60
	.4byte	0x38c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF23
	.byte	0x1
	.byte	0x73
	.4byte	0x6f
	.uleb128 0x5
	.byte	0x3
	.4byte	crypto_stream_salsa20_ref_implementation
	.uleb128 0x17
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1c
	.uleb128 0x17
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x6
	.byte	0x16
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL11
	.4byte	.LVL22
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL2
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL35
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL43
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL39
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"stream"
.LASF23:
	.string	"crypto_stream_salsa20_ref_implementation"
.LASF21:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_stream/salsa20/ref/salsa20_ref.c"
.LASF11:
	.string	"mlen"
.LASF8:
	.string	"uint64_t"
.LASF12:
	.string	"block"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"crypto_core_salsa20"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"crypto_stream_salsa20_implementation"
.LASF10:
	.string	"stream_xor_ic"
.LASF13:
	.string	"kcopy"
.LASF4:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF15:
	.string	"stream_ref_xor_ic"
.LASF20:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF14:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF16:
	.string	"stream_ref"
.LASF2:
	.string	"short int"
.LASF7:
	.string	"__uint64_t"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"sodium_memzero"
.LASF17:
	.string	"clen"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
