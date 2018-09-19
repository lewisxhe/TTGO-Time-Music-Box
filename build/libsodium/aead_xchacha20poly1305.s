	.file	"aead_xchacha20poly1305.c"
	.text
.Ltext0:
	.section	.text.crypto_aead_xchacha20poly1305_ietf_encrypt_detached,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_encrypt_detached
	.type	crypto_aead_xchacha20poly1305_ietf_encrypt_detached, @function
crypto_aead_xchacha20poly1305_ietf_encrypt_detached:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_aead/xchacha20poly1305/sodium/aead_xchacha20poly1305.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 128
.LCFI0:
	s32i	a7, sp, 80
	.loc 1 28 0
	movi.n	a13, 0
	s32i	a13, sp, 64
	s32i	a13, sp, 68
	s32i	a13, sp, 72
	.loc 1 31 0
	l32i	a12, sp, 152
	l32i	a11, sp, 148
	addi	a7, sp, 32
	mov.n	a10, a7
	call8	crypto_core_hchacha20
.LVL1:
	.loc 1 32 0
	movi.n	a12, 8
	l32i	a8, sp, 148
	addi	a11, a8, 16
	addi	a10, sp, 68
	call8	memcpy
.LVL2:
	.loc 1 34 0
	s32i.n	a7, sp, 24
	addi	a8, sp, 64
	s32i.n	a8, sp, 20
	l32i	a8, sp, 144
	s32i.n	a8, sp, 16
	l32i	a8, sp, 136
	l32i	a9, sp, 140
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 12
	l32i	a8, sp, 128
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	l32i	a15, sp, 80
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_aead_chacha20poly1305_ietf_encrypt_detached
.LVL3:
	mov.n	a2, a10
.LVL4:
	.loc 1 36 0
	movi.n	a11, 0x20
	mov.n	a10, a7
	call8	sodium_memzero
.LVL5:
	.loc 1 39 0
	retw.n
.LFE12:
	.size	crypto_aead_xchacha20poly1305_ietf_encrypt_detached, .-crypto_aead_xchacha20poly1305_ietf_encrypt_detached
	.section	.text.crypto_aead_xchacha20poly1305_ietf_encrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_encrypt
	.type	crypto_aead_xchacha20poly1305_ietf_encrypt, @function
crypto_aead_xchacha20poly1305_ietf_encrypt:
.LFB13:
	.loc 1 51 0
.LVL6:
	entry	sp, 64
.LCFI1:
	mov.n	a5, a6
.LVL7:
	.loc 1 55 0
	bnei	a7, -1, .L3
	movi.n	a8, -0x11
	bgeu	a8, a6, .L3
	.loc 1 56 0
	call8	abort
.LVL8:
.L3:
	.loc 1 58 0
	l32i	a8, sp, 88
	s32i.n	a8, sp, 24
	l32i	a8, sp, 84
	s32i.n	a8, sp, 20
	l32i	a8, sp, 80
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	l32i	a9, sp, 76
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 12
	l32i	a8, sp, 64
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a15, a7
	mov.n	a13, a4
	movi.n	a12, 0
	add.n	a11, a2, a6
	mov.n	a10, a2
	call8	crypto_aead_xchacha20poly1305_ietf_encrypt_detached
.LVL9:
	.loc 1 60 0
	beqz.n	a3, .L5
	.loc 1 61 0
	bnez.n	a10, .L8
	.loc 1 62 0
	addi	a6, a6, 16
.LVL10:
	movi.n	a9, 1
	bltu	a6, a5, .L7
	movi.n	a9, 0
.L7:
	mov.n	a8, a6
	add.n	a5, a9, a7
.LVL11:
	j	.L6
.LVL12:
.L8:
	.loc 1 52 0
	movi.n	a8, 0
	mov.n	a5, a8
.LVL13:
.L6:
	.loc 1 64 0
	s32i.n	a8, a3, 0
	s32i.n	a5, a3, 4
.LVL14:
.L5:
	.loc 1 67 0
	mov.n	a2, a10
.LVL15:
	retw.n
.LFE13:
	.size	crypto_aead_xchacha20poly1305_ietf_encrypt, .-crypto_aead_xchacha20poly1305_ietf_encrypt
	.section	.text.crypto_aead_xchacha20poly1305_ietf_decrypt_detached,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_decrypt_detached
	.type	crypto_aead_xchacha20poly1305_ietf_decrypt_detached, @function
crypto_aead_xchacha20poly1305_ietf_decrypt_detached:
.LFB14:
	.loc 1 79 0
.LVL16:
	entry	sp, 112
.LCFI2:
	.loc 1 81 0
	movi.n	a13, 0
	s32i	a13, sp, 64
	s32i	a13, sp, 68
	s32i	a13, sp, 72
	.loc 1 84 0
	l32i	a12, sp, 132
	l32i	a11, sp, 128
	addi	a5, sp, 32
	mov.n	a10, a5
	call8	crypto_core_hchacha20
.LVL17:
	.loc 1 85 0
	movi.n	a12, 8
	l32i	a8, sp, 128
	addi	a11, a8, 16
	addi	a10, sp, 68
	call8	memcpy
.LVL18:
	.loc 1 87 0
	s32i.n	a5, sp, 20
	addi	a8, sp, 64
	s32i.n	a8, sp, 16
	l32i	a8, sp, 120
	l32i	a9, sp, 124
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 12
	l32i	a8, sp, 116
	s32i.n	a8, sp, 4
	l32i	a8, sp, 112
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a15, a7
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_aead_chacha20poly1305_ietf_decrypt_detached
.LVL19:
	mov.n	a2, a10
.LVL20:
	.loc 1 89 0
	movi.n	a11, 0x20
	mov.n	a10, a5
	call8	sodium_memzero
.LVL21:
	.loc 1 93 0
	retw.n
.LFE14:
	.size	crypto_aead_xchacha20poly1305_ietf_decrypt_detached, .-crypto_aead_xchacha20poly1305_ietf_decrypt_detached
	.section	.text.crypto_aead_xchacha20poly1305_ietf_decrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_decrypt
	.type	crypto_aead_xchacha20poly1305_ietf_decrypt, @function
crypto_aead_xchacha20poly1305_ietf_decrypt:
.LFB15:
	.loc 1 105 0
.LVL22:
	entry	sp, 64
.LCFI3:
	mov.n	a11, a4
	mov.n	a4, a6
.LVL23:
	.loc 1 109 0
	bnez.n	a7, .L20
	bnez.n	a7, .L18
	movi.n	a8, 0xf
	bgeu	a8, a6, .L18
.L20:
	.loc 1 110 0
	addi	a14, a6, -16
	movi.n	a15, 1
	bltu	a14, a4, .L14
	movi.n	a15, 0
.L14:
	addi.n	a8, a7, -1
	add.n	a15, a15, a8
	.loc 1 113 0
	addi	a10, a6, -16
	.loc 1 110 0
	add.n	a10, a5, a10
	l32i	a8, sp, 84
	s32i.n	a8, sp, 20
	l32i	a8, sp, 80
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	l32i	a9, sp, 76
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 12
	l32i	a8, sp, 64
	s32i.n	a8, sp, 4
	s32i.n	a10, sp, 0
	mov.n	a12, a5
	mov.n	a10, a2
	call8	crypto_aead_xchacha20poly1305_ietf_decrypt_detached
.LVL24:
	mov.n	a2, a10
.LVL25:
	j	.L12
.LVL26:
.L18:
	.loc 1 107 0
	movi.n	a2, -1
.LVL27:
.L12:
	.loc 1 116 0
	beqz.n	a3, .L15
	.loc 1 117 0
	bnez.n	a2, .L19
	.loc 1 118 0
	addi	a6, a6, -16
.LVL28:
	movi.n	a5, 1
.LVL29:
	bltu	a6, a4, .L17
	movi.n	a5, 0
.L17:
	addi.n	a7, a7, -1
	add.n	a4, a5, a7
	mov.n	a7, a6
	mov.n	a5, a4
.LVL30:
	j	.L16
.LVL31:
.L19:
	.loc 1 106 0
	movi.n	a7, 0
	mov.n	a5, a7
.LVL32:
.L16:
	.loc 1 120 0
	s32i.n	a7, a3, 0
	s32i.n	a5, a3, 4
.LVL33:
.L15:
	.loc 1 123 0
	retw.n
.LFE15:
	.size	crypto_aead_xchacha20poly1305_ietf_decrypt, .-crypto_aead_xchacha20poly1305_ietf_decrypt
	.section	.text.crypto_aead_xchacha20poly1305_ietf_keybytes,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_keybytes
	.type	crypto_aead_xchacha20poly1305_ietf_keybytes, @function
crypto_aead_xchacha20poly1305_ietf_keybytes:
.LFB16:
	.loc 1 127 0
	entry	sp, 32
.LCFI4:
	.loc 1 129 0
	movi.n	a2, 0x20
	retw.n
.LFE16:
	.size	crypto_aead_xchacha20poly1305_ietf_keybytes, .-crypto_aead_xchacha20poly1305_ietf_keybytes
	.section	.text.crypto_aead_xchacha20poly1305_ietf_npubbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_npubbytes
	.type	crypto_aead_xchacha20poly1305_ietf_npubbytes, @function
crypto_aead_xchacha20poly1305_ietf_npubbytes:
.LFB17:
	.loc 1 133 0
	entry	sp, 32
.LCFI5:
	.loc 1 135 0
	movi.n	a2, 0x18
	retw.n
.LFE17:
	.size	crypto_aead_xchacha20poly1305_ietf_npubbytes, .-crypto_aead_xchacha20poly1305_ietf_npubbytes
	.section	.text.crypto_aead_xchacha20poly1305_ietf_nsecbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_nsecbytes
	.type	crypto_aead_xchacha20poly1305_ietf_nsecbytes, @function
crypto_aead_xchacha20poly1305_ietf_nsecbytes:
.LFB18:
	.loc 1 139 0
	entry	sp, 32
.LCFI6:
	.loc 1 141 0
	movi.n	a2, 0
	retw.n
.LFE18:
	.size	crypto_aead_xchacha20poly1305_ietf_nsecbytes, .-crypto_aead_xchacha20poly1305_ietf_nsecbytes
	.section	.text.crypto_aead_xchacha20poly1305_ietf_abytes,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_abytes
	.type	crypto_aead_xchacha20poly1305_ietf_abytes, @function
crypto_aead_xchacha20poly1305_ietf_abytes:
.LFB19:
	.loc 1 145 0
	entry	sp, 32
.LCFI7:
	.loc 1 147 0
	movi.n	a2, 0x10
	retw.n
.LFE19:
	.size	crypto_aead_xchacha20poly1305_ietf_abytes, .-crypto_aead_xchacha20poly1305_ietf_abytes
	.section	.text.crypto_aead_xchacha20poly1305_ietf_keygen,"ax",@progbits
	.align	4
	.global	crypto_aead_xchacha20poly1305_ietf_keygen
	.type	crypto_aead_xchacha20poly1305_ietf_keygen, @function
crypto_aead_xchacha20poly1305_ietf_keygen:
.LFB20:
	.loc 1 151 0
.LVL34:
	entry	sp, 32
.LCFI8:
	.loc 1 152 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL35:
	retw.n
.LFE20:
	.size	crypto_aead_xchacha20poly1305_ietf_keygen, .-crypto_aead_xchacha20poly1305_ietf_keygen
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
	.uleb128 0x80
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
	.uleb128 0x40
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
	.uleb128 0x70
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
	.uleb128 0x40
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_core_hchacha20.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_aead_chacha20poly1305.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 7 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x637
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
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
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x7
	.byte	0xd8
	.4byte	0x4b
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x10
	.4byte	0x44
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f3
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x10
	.4byte	0x79
	.4byte	.LLST0
	.uleb128 0x8
	.string	"mac"
	.byte	0x1
	.byte	0x11
	.4byte	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x12
	.4byte	0x1f3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x13
	.4byte	0x1f9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0x14
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x8
	.string	"ad"
	.byte	0x1
	.byte	0x15
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x16
	.4byte	0x21
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x17
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x18
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x19
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xa
	.string	"k2"
	.byte	0x1
	.byte	0x1b
	.4byte	0x204
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1c
	.4byte	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x1d
	.4byte	0x44
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0x5ef
	.4byte	0x176
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.4byte	.LVL2
	.4byte	0x5fa
	.4byte	0x198
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LVL3
	.4byte	0x603
	.4byte	0x1dc
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
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL5
	.4byte	0x60e
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ff
	.uleb128 0xf
	.4byte	0x2f
	.uleb128 0x10
	.4byte	0x2f
	.4byte	0x214
	.uleb128 0x11
	.4byte	0x6b
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	0x2f
	.4byte	0x224
	.uleb128 0x11
	.4byte	0x6b
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2a
	.4byte	0x44
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31e
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x2a
	.4byte	0x79
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2b
	.4byte	0x1f3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"m"
	.byte	0x1
	.byte	0x2c
	.4byte	0x1f9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x1
	.byte	0x2d
	.4byte	0x21
	.4byte	.LLST2
	.uleb128 0x8
	.string	"ad"
	.byte	0x1
	.byte	0x2e
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2f
	.4byte	0x21
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x30
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x31
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x32
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.byte	0x34
	.4byte	0x21
	.4byte	.LLST3
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x35
	.4byte	0x44
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x14
	.4byte	.LVL8
	.4byte	0x619
	.uleb128 0xe
	.4byte	.LVL9
	.4byte	0x86
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x46
	.4byte	0x44
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x478
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x46
	.4byte	0x79
	.4byte	.LLST4
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x47
	.4byte	0x79
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x8
	.string	"c"
	.byte	0x1
	.byte	0x48
	.4byte	0x1f9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x49
	.4byte	0x21
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x8
	.string	"mac"
	.byte	0x1
	.byte	0x4a
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.string	"ad"
	.byte	0x1
	.byte	0x4b
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x4c
	.4byte	0x21
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4d
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x4e
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0xa
	.string	"k2"
	.byte	0x1
	.byte	0x50
	.4byte	0x204
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x51
	.4byte	0x214
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x52
	.4byte	0x44
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LVL17
	.4byte	0x5ef
	.4byte	0x401
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.4byte	.LVL18
	.4byte	0x5fa
	.4byte	0x423
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LVL19
	.4byte	0x624
	.4byte	0x461
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
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL21
	.4byte	0x60e
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x60
	.4byte	0x44
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x564
	.uleb128 0x7
	.string	"m"
	.byte	0x1
	.byte	0x60
	.4byte	0x79
	.4byte	.LLST5
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x61
	.4byte	0x1f3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF14
	.byte	0x1
	.byte	0x62
	.4byte	0x79
	.4byte	.LLST6
	.uleb128 0x7
	.string	"c"
	.byte	0x1
	.byte	0x63
	.4byte	0x1f9
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x64
	.4byte	0x21
	.4byte	.LLST8
	.uleb128 0x8
	.string	"ad"
	.byte	0x1
	.byte	0x65
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x66
	.4byte	0x21
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x67
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x68
	.4byte	0x1f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x13
	.4byte	.LASF12
	.byte	0x1
	.byte	0x6a
	.4byte	0x21
	.4byte	.LLST9
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0x6b
	.4byte	0x44
	.4byte	.LLST10
	.uleb128 0xe
	.4byte	.LVL24
	.4byte	0x31e
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x1c
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7e
	.4byte	0x59
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x1
	.byte	0x84
	.4byte	0x59
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF26
	.byte	0x1
	.byte	0x8a
	.4byte	0x59
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF27
	.byte	0x1
	.byte	0x90
	.4byte	0x59
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.byte	0x96
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ef
	.uleb128 0x8
	.string	"k"
	.byte	0x1
	.byte	0x96
	.4byte	0x79
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LVL35
	.4byte	0x62f
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
	.uleb128 0x18
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x2
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF38
	.4byte	.LASF38
	.uleb128 0x18
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x3
	.byte	0x39
	.uleb128 0x18
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x4
	.byte	0x16
	.uleb128 0x18
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x5
	.byte	0x47
	.uleb128 0x18
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x3
	.byte	0x45
	.uleb128 0x18
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x6
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
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
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL13
	.4byte	.LFE13
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24-1
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL32
	.4byte	.LFE15
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"size_t"
.LASF20:
	.string	"clen"
.LASF18:
	.string	"crypto_aead_xchacha20poly1305_ietf_encrypt"
.LASF12:
	.string	"mlen"
.LASF15:
	.string	"npub"
.LASF37:
	.string	"crypto_aead_xchacha20poly1305_ietf_keygen"
.LASF4:
	.string	"short unsigned int"
.LASF16:
	.string	"npub2"
.LASF35:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_aead/xchacha20poly1305/sodium/aead_xchacha20poly1305.c"
.LASF17:
	.string	"crypto_aead_xchacha20poly1305_ietf_encrypt_detached"
.LASF22:
	.string	"crypto_aead_xchacha20poly1305_ietf_decrypt"
.LASF34:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"crypto_aead_chacha20poly1305_ietf_decrypt_detached"
.LASF25:
	.string	"crypto_aead_xchacha20poly1305_ietf_npubbytes"
.LASF19:
	.string	"clen_p"
.LASF13:
	.string	"adlen"
.LASF27:
	.string	"crypto_aead_xchacha20poly1305_ietf_abytes"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF33:
	.string	"randombytes_buf"
.LASF23:
	.string	"mlen_p"
.LASF5:
	.string	"unsigned int"
.LASF29:
	.string	"crypto_aead_chacha20poly1305_ietf_encrypt_detached"
.LASF0:
	.string	"long long unsigned int"
.LASF26:
	.string	"crypto_aead_xchacha20poly1305_ietf_nsecbytes"
.LASF11:
	.string	"maclen_p"
.LASF8:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF14:
	.string	"nsec"
.LASF38:
	.string	"memcpy"
.LASF3:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF31:
	.string	"abort"
.LASF21:
	.string	"crypto_aead_xchacha20poly1305_ietf_decrypt_detached"
.LASF1:
	.string	"signed char"
.LASF30:
	.string	"sodium_memzero"
.LASF28:
	.string	"crypto_core_hchacha20"
.LASF24:
	.string	"crypto_aead_xchacha20poly1305_ietf_keybytes"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
