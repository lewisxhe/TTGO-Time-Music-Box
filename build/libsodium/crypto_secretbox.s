	.file	"crypto_secretbox.c"
	.text
.Ltext0:
	.section	.text.crypto_secretbox_keybytes,"ax",@progbits
	.align	4
	.global	crypto_secretbox_keybytes
	.type	crypto_secretbox_keybytes, @function
crypto_secretbox_keybytes:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox.c"
	.loc 1 7 0
	entry	sp, 32
.LCFI0:
	.loc 1 9 0
	movi.n	a2, 0x20
	retw.n
.LFE0:
	.size	crypto_secretbox_keybytes, .-crypto_secretbox_keybytes
	.section	.text.crypto_secretbox_noncebytes,"ax",@progbits
	.align	4
	.global	crypto_secretbox_noncebytes
	.type	crypto_secretbox_noncebytes, @function
crypto_secretbox_noncebytes:
.LFB1:
	.loc 1 13 0
	entry	sp, 32
.LCFI1:
	.loc 1 15 0
	movi.n	a2, 0x18
	retw.n
.LFE1:
	.size	crypto_secretbox_noncebytes, .-crypto_secretbox_noncebytes
	.section	.text.crypto_secretbox_zerobytes,"ax",@progbits
	.align	4
	.global	crypto_secretbox_zerobytes
	.type	crypto_secretbox_zerobytes, @function
crypto_secretbox_zerobytes:
.LFB2:
	.loc 1 19 0
	entry	sp, 32
.LCFI2:
	.loc 1 21 0
	movi.n	a2, 0x20
	retw.n
.LFE2:
	.size	crypto_secretbox_zerobytes, .-crypto_secretbox_zerobytes
	.section	.text.crypto_secretbox_boxzerobytes,"ax",@progbits
	.align	4
	.global	crypto_secretbox_boxzerobytes
	.type	crypto_secretbox_boxzerobytes, @function
crypto_secretbox_boxzerobytes:
.LFB3:
	.loc 1 25 0
	entry	sp, 32
.LCFI3:
	.loc 1 27 0
	movi.n	a2, 0x10
	retw.n
.LFE3:
	.size	crypto_secretbox_boxzerobytes, .-crypto_secretbox_boxzerobytes
	.section	.text.crypto_secretbox_macbytes,"ax",@progbits
	.align	4
	.global	crypto_secretbox_macbytes
	.type	crypto_secretbox_macbytes, @function
crypto_secretbox_macbytes:
.LFB4:
	.loc 1 31 0
	entry	sp, 32
.LCFI4:
	.loc 1 33 0
	movi.n	a2, 0x10
	retw.n
.LFE4:
	.size	crypto_secretbox_macbytes, .-crypto_secretbox_macbytes
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"xsalsa20poly1305"
	.section	.text.crypto_secretbox_primitive,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_secretbox_primitive
	.type	crypto_secretbox_primitive, @function
crypto_secretbox_primitive:
.LFB5:
	.loc 1 37 0
	entry	sp, 32
.LCFI5:
	.loc 1 39 0
	l32r	a2, .LC1
	retw.n
.LFE5:
	.size	crypto_secretbox_primitive, .-crypto_secretbox_primitive
	.section	.text.crypto_secretbox,"ax",@progbits
	.align	4
	.global	crypto_secretbox
	.type	crypto_secretbox, @function
crypto_secretbox:
.LFB6:
	.loc 1 45 0
.LVL0:
	entry	sp, 32
.LCFI6:
	mov.n	a15, a7
	.loc 1 46 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_secretbox_xsalsa20poly1305
.LVL1:
	.loc 1 47 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE6:
	.size	crypto_secretbox, .-crypto_secretbox
	.section	.text.crypto_secretbox_open,"ax",@progbits
	.align	4
	.global	crypto_secretbox_open
	.type	crypto_secretbox_open, @function
crypto_secretbox_open:
.LFB7:
	.loc 1 53 0
.LVL3:
	entry	sp, 32
.LCFI7:
	mov.n	a15, a7
	.loc 1 54 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_secretbox_xsalsa20poly1305_open
.LVL4:
	.loc 1 55 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE7:
	.size	crypto_secretbox_open, .-crypto_secretbox_open
	.section	.text.crypto_secretbox_keygen,"ax",@progbits
	.align	4
	.global	crypto_secretbox_keygen
	.type	crypto_secretbox_keygen, @function
crypto_secretbox_keygen:
.LFB8:
	.loc 1 59 0
.LVL6:
	entry	sp, 32
.LCFI8:
	.loc 1 60 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL7:
	retw.n
.LFE8:
	.size	crypto_secretbox_keygen, .-crypto_secretbox_keygen
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
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_secretbox_xsalsa20poly1305.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x267
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x86
	.uleb128 0x6
	.4byte	0x79
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0x6
	.4byte	0x28
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0xc
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x12
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x18
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1e
	.4byte	0x28
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x24
	.4byte	0x80
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2a
	.4byte	0x21
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x185
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x2a
	.4byte	0x185
	.4byte	.LLST0
	.uleb128 0xa
	.string	"m"
	.byte	0x1
	.byte	0x2a
	.4byte	0x18b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2b
	.4byte	0x5d
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x2b
	.4byte	0x18b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"k"
	.byte	0x1
	.byte	0x2c
	.4byte	0x18b
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0x249
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.4byte	0x191
	.uleb128 0x6
	.4byte	0x48
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0x32
	.4byte	0x21
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x212
	.uleb128 0x9
	.string	"m"
	.byte	0x1
	.byte	0x32
	.4byte	0x185
	.4byte	.LLST1
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0x32
	.4byte	0x18b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x33
	.4byte	0x5d
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0x33
	.4byte	0x18b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"k"
	.byte	0x1
	.byte	0x34
	.4byte	0x18b
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xc
	.4byte	.LVL4
	.4byte	0x254
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x249
	.uleb128 0xa
	.string	"k"
	.byte	0x1
	.byte	0x3a
	.4byte	0x185
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LVL7
	.4byte	0x25f
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x2
	.byte	0x25
	.uleb128 0xf
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x2
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x3
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.4byte	.LFE6
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
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"crypto_secretbox_keygen"
.LASF4:
	.string	"short int"
.LASF26:
	.string	"size_t"
.LASF8:
	.string	"sizetype"
.LASF20:
	.string	"clen"
.LASF13:
	.string	"crypto_secretbox_zerobytes"
.LASF18:
	.string	"crypto_secretbox"
.LASF22:
	.string	"crypto_secretbox_xsalsa20poly1305_open"
.LASF5:
	.string	"long long int"
.LASF14:
	.string	"crypto_secretbox_boxzerobytes"
.LASF7:
	.string	"long int"
.LASF11:
	.string	"crypto_secretbox_keybytes"
.LASF3:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF15:
	.string	"crypto_secretbox_macbytes"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF23:
	.string	"randombytes_buf"
.LASF25:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_secretbox/crypto_secretbox.c"
.LASF9:
	.string	"long unsigned int"
.LASF16:
	.string	"crypto_secretbox_primitive"
.LASF17:
	.string	"mlen"
.LASF19:
	.string	"crypto_secretbox_open"
.LASF12:
	.string	"crypto_secretbox_noncebytes"
.LASF24:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"crypto_secretbox_xsalsa20poly1305"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
