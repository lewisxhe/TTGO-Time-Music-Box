	.file	"crypto_box_easy.c"
	.text
.Ltext0:
	.section	.text.crypto_box_detached_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_detached_afternm
	.type	crypto_box_detached_afternm, @function
crypto_box_detached_afternm:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box_easy.c"
	.loc 1 15 0
.LVL0:
	entry	sp, 48
.LCFI0:
	mov.n	a15, a7
	.loc 1 16 0
	l32i.n	a8, sp, 52
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_secretbox_detached
.LVL1:
	.loc 1 17 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE12:
	.size	crypto_box_detached_afternm, .-crypto_box_detached_afternm
	.section	.text.crypto_box_detached,"ax",@progbits
	.align	4
	.global	crypto_box_detached
	.type	crypto_box_detached, @function
crypto_box_detached:
.LFB13:
	.loc 1 24 0
.LVL3:
	entry	sp, 80
.LCFI1:
	.loc 1 29 0
	l32i	a12, sp, 88
	l32i	a11, sp, 84
	addi	a10, sp, 16
	call8	crypto_box_beforenm
.LVL4:
	bnez.n	a10, .L4
	.loc 1 32 0
	addi	a5, sp, 16
	s32i.n	a5, sp, 4
	l32i	a8, sp, 80
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a15, a7
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_detached_afternm
.LVL5:
	mov.n	a2, a10
.LVL6:
	.loc 1 33 0
	movi.n	a11, 0x20
	mov.n	a10, a5
	call8	sodium_memzero
.LVL7:
	.loc 1 35 0
	retw.n
.LVL8:
.L4:
	.loc 1 30 0
	movi.n	a2, -1
.LVL9:
	.loc 1 36 0
	retw.n
.LFE13:
	.size	crypto_box_detached, .-crypto_box_detached
	.section	.text.crypto_box_easy_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_easy_afternm
	.type	crypto_box_easy_afternm, @function
crypto_box_easy_afternm:
.LFB14:
	.loc 1 42 0
.LVL10:
	entry	sp, 48
.LCFI2:
	.loc 1 43 0
	bnez.n	a5, .L8
	bnez.n	a5, .L9
	movi.n	a8, -0x11
	bltu	a8, a4, .L8
.L9:
	.loc 1 46 0
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a14, a4
	mov.n	a15, a5
	mov.n	a12, a3
	mov.n	a11, a2
	addi	a10, a2, 16
	call8	crypto_box_detached_afternm
.LVL11:
	mov.n	a2, a10
.LVL12:
	retw.n
.LVL13:
.L8:
	.loc 1 44 0
	movi.n	a2, -1
.LVL14:
	.loc 1 48 0
	retw.n
.LFE14:
	.size	crypto_box_easy_afternm, .-crypto_box_easy_afternm
	.section	.text.crypto_box_easy,"ax",@progbits
	.align	4
	.global	crypto_box_easy
	.type	crypto_box_easy, @function
crypto_box_easy:
.LFB15:
	.loc 1 54 0
.LVL15:
	entry	sp, 48
.LCFI3:
	.loc 1 55 0
	bnez.n	a5, .L13
	bnez.n	a5, .L14
	movi.n	a8, -0x11
	bltu	a8, a4, .L13
.L14:
	.loc 1 58 0
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 8
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a14, a4
	mov.n	a15, a5
	mov.n	a12, a3
	mov.n	a11, a2
	addi	a10, a2, 16
	call8	crypto_box_detached
.LVL16:
	mov.n	a2, a10
.LVL17:
	retw.n
.LVL18:
.L13:
	.loc 1 56 0
	movi.n	a2, -1
.LVL19:
	.loc 1 60 0
	retw.n
.LFE15:
	.size	crypto_box_easy, .-crypto_box_easy
	.section	.text.crypto_box_open_detached_afternm,"ax",@progbits
	.align	4
	.global	crypto_box_open_detached_afternm
	.type	crypto_box_open_detached_afternm, @function
crypto_box_open_detached_afternm:
.LFB16:
	.loc 1 68 0
.LVL20:
	entry	sp, 48
.LCFI4:
	mov.n	a15, a7
	.loc 1 69 0
	l32i.n	a8, sp, 52
	s32i.n	a8, sp, 4
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_secretbox_open_detached
.LVL21:
	.loc 1 70 0
	mov.n	a2, a10
.LVL22:
	retw.n
.LFE16:
	.size	crypto_box_open_detached_afternm, .-crypto_box_open_detached_afternm
	.section	.text.crypto_box_open_detached,"ax",@progbits
	.align	4
	.global	crypto_box_open_detached
	.type	crypto_box_open_detached, @function
crypto_box_open_detached:
.LFB17:
	.loc 1 77 0
.LVL23:
	entry	sp, 80
.LCFI5:
	.loc 1 81 0
	l32i	a12, sp, 88
	l32i	a11, sp, 84
	addi	a10, sp, 16
	call8	crypto_box_beforenm
.LVL24:
	bnez.n	a10, .L18
	.loc 1 84 0
	addi	a5, sp, 16
	s32i.n	a5, sp, 4
	l32i	a8, sp, 80
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a15, a7
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_box_open_detached_afternm
.LVL25:
	mov.n	a2, a10
.LVL26:
	.loc 1 85 0
	movi.n	a11, 0x20
	mov.n	a10, a5
	call8	sodium_memzero
.LVL27:
	.loc 1 87 0
	retw.n
.LVL28:
.L18:
	.loc 1 82 0
	movi.n	a2, -1
.LVL29:
	.loc 1 88 0
	retw.n
.LFE17:
	.size	crypto_box_open_detached, .-crypto_box_open_detached
	.section	.text.crypto_box_open_easy_afternm,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_box_open_easy_afternm
	.type	crypto_box_open_easy_afternm, @function
crypto_box_open_easy_afternm:
.LFB18:
	.loc 1 94 0
.LVL30:
	entry	sp, 48
.LCFI6:
	.loc 1 95 0
	bnez.n	a5, .L24
	bnez.n	a5, .L23
	movi.n	a8, 0xf
	bgeu	a8, a4, .L23
.L24:
	.loc 1 98 0
	addi	a14, a4, -16
	movi.n	a15, 1
	bltu	a14, a4, .L22
	movi.n	a15, 0
.L22:
	addi.n	a5, a5, -1
	add.n	a15, a15, a5
	mov.n	a5, a15
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a12, a3
	addi	a11, a3, 16
	mov.n	a10, a2
	call8	crypto_box_open_detached_afternm
.LVL31:
	mov.n	a2, a10
.LVL32:
	retw.n
.LVL33:
.L23:
	.loc 1 96 0
	movi.n	a2, -1
.LVL34:
	.loc 1 101 0
	retw.n
.LFE18:
	.size	crypto_box_open_easy_afternm, .-crypto_box_open_easy_afternm
	.section	.text.crypto_box_open_easy,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_box_open_easy
	.type	crypto_box_open_easy, @function
crypto_box_open_easy:
.LFB19:
	.loc 1 107 0
.LVL35:
	entry	sp, 48
.LCFI7:
	.loc 1 108 0
	bnez.n	a5, .L30
	bnez.n	a5, .L29
	movi.n	a8, 0xf
	bgeu	a8, a4, .L29
.L30:
	.loc 1 111 0
	addi	a14, a4, -16
	movi.n	a15, 1
	bltu	a14, a4, .L28
	movi.n	a15, 0
.L28:
	addi.n	a5, a5, -1
	add.n	a15, a15, a5
	mov.n	a5, a15
	l32i.n	a4, sp, 48
.LVL36:
	s32i.n	a4, sp, 8
	s32i.n	a7, sp, 4
	s32i.n	a6, sp, 0
	mov.n	a12, a3
	addi	a11, a3, 16
	mov.n	a10, a2
	call8	crypto_box_open_detached
.LVL37:
	mov.n	a2, a10
.LVL38:
	retw.n
.LVL39:
.L29:
	.loc 1 109 0
	movi.n	a2, -1
.LVL40:
	.loc 1 114 0
	retw.n
.LFE19:
	.size	crypto_box_open_easy, .-crypto_box_open_easy
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x50
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_box.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x613
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0xc
	.4byte	0x44
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x110
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0xc
	.4byte	0x6e
	.4byte	.LLST0
	.uleb128 0x7
	.string	"mac"
	.byte	0x1
	.byte	0xc
	.4byte	0x6e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0xd
	.4byte	0x110
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0xd
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0xe
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0xe
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LVL1
	.4byte	0x5ea
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x116
	.uleb128 0xb
	.4byte	0x2f
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x14
	.4byte	0x44
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x214
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x14
	.4byte	0x6e
	.4byte	.LLST1
	.uleb128 0x7
	.string	"mac"
	.byte	0x1
	.byte	0x14
	.4byte	0x6e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x15
	.4byte	0x110
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x15
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x16
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"pk"
	.byte	0x1
	.byte	0x16
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x7
	.string	"sk"
	.byte	0x1
	.byte	0x17
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x19
	.4byte	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0x1a
	.4byte	0x44
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LVL4
	.4byte	0x5f5
	.4byte	0x1ce
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x7b
	.4byte	0x1fd
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL7
	.4byte	0x600
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x2f
	.4byte	0x224
	.uleb128 0x10
	.4byte	0x60
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x27
	.4byte	0x44
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a8
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x27
	.4byte	0x6e
	.4byte	.LLST3
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x27
	.4byte	0x110
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x28
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x28
	.4byte	0x110
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x29
	.4byte	0x110
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x9
	.4byte	.LVL11
	.4byte	0x7b
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x33
	.4byte	0x44
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x342
	.uleb128 0x6
	.string	"c"
	.byte	0x1
	.byte	0x33
	.4byte	0x6e
	.4byte	.LLST4
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x33
	.4byte	0x110
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x34
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x34
	.4byte	0x110
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x7
	.string	"pk"
	.byte	0x1
	.byte	0x35
	.4byte	0x110
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x7
	.string	"sk"
	.byte	0x1
	.byte	0x35
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LVL16
	.4byte	0x11b
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3f
	.4byte	0x44
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d7
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0x3f
	.4byte	0x6e
	.4byte	.LLST5
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x3f
	.4byte	0x110
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.string	"mac"
	.byte	0x1
	.byte	0x40
	.4byte	0x110
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x41
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x42
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x43
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LVL21
	.4byte	0x60b
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xa
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
	.4byte	.LASF18
	.byte	0x1
	.byte	0x49
	.4byte	0x44
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d0
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0x49
	.4byte	0x6e
	.4byte	.LLST6
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x49
	.4byte	0x110
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.string	"mac"
	.byte	0x1
	.byte	0x4a
	.4byte	0x110
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4b
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x4b
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"pk"
	.byte	0x1
	.byte	0x4c
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x7
	.string	"sk"
	.byte	0x1
	.byte	0x4c
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.string	"k"
	.byte	0x1
	.byte	0x4e
	.4byte	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.string	"ret"
	.byte	0x1
	.byte	0x4f
	.4byte	0x44
	.4byte	.LLST7
	.uleb128 0xe
	.4byte	.LVL24
	.4byte	0x5f5
	.4byte	0x48a
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LVL25
	.4byte	0x342
	.4byte	0x4b9
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL27
	.4byte	0x600
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x5b
	.4byte	0x44
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x554
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0x5b
	.4byte	0x6e
	.4byte	.LLST8
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x5b
	.4byte	0x110
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x5c
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x5c
	.4byte	0x110
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x7
	.string	"k"
	.byte	0x1
	.byte	0x5d
	.4byte	0x110
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x9
	.4byte	.LVL31
	.4byte	0x342
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x68
	.4byte	0x44
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ea
	.uleb128 0x6
	.string	"m"
	.byte	0x1
	.byte	0x68
	.4byte	0x6e
	.4byte	.LLST9
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x68
	.4byte	0x110
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x1
	.byte	0x69
	.4byte	0x21
	.4byte	.LLST10
	.uleb128 0x7
	.string	"n"
	.byte	0x1
	.byte	0x69
	.4byte	0x110
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x7
	.string	"pk"
	.byte	0x1
	.byte	0x6a
	.4byte	0x110
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x7
	.string	"sk"
	.byte	0x1
	.byte	0x6a
	.4byte	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LVL37
	.4byte	0x3d7
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 16
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x2
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x3
	.byte	0x59
	.uleb128 0x12
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x4
	.byte	0x16
	.uleb128 0x12
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x2
	.byte	0x33
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
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
	.4byte	.LFE13
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
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
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
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
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
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
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
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE19
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"crypto_box_open_easy"
.LASF17:
	.string	"clen"
.LASF11:
	.string	"mlen"
.LASF14:
	.string	"crypto_box_easy_afternm"
.LASF12:
	.string	"crypto_box_detached_afternm"
.LASF26:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_box/crypto_box_easy.c"
.LASF25:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"crypto_box_beforenm"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF15:
	.string	"crypto_box_easy"
.LASF21:
	.string	"crypto_secretbox_detached"
.LASF5:
	.string	"unsigned int"
.LASF0:
	.string	"long long unsigned int"
.LASF24:
	.string	"crypto_secretbox_open_detached"
.LASF19:
	.string	"crypto_box_open_easy_afternm"
.LASF8:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF16:
	.string	"crypto_box_open_detached_afternm"
.LASF3:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF18:
	.string	"crypto_box_open_detached"
.LASF1:
	.string	"signed char"
.LASF23:
	.string	"sodium_memzero"
.LASF13:
	.string	"crypto_box_detached"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
