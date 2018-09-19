	.file	"crypto_pwhash.c"
	.text
.Ltext0:
	.section	.text.crypto_pwhash_alg_argon2i13,"ax",@progbits
	.align	4
	.global	crypto_pwhash_alg_argon2i13
	.type	crypto_pwhash_alg_argon2i13, @function
crypto_pwhash_alg_argon2i13:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/crypto_pwhash.c"
	.loc 1 8 0
	entry	sp, 32
.LCFI0:
	.loc 1 10 0
	movi.n	a2, 1
	retw.n
.LFE0:
	.size	crypto_pwhash_alg_argon2i13, .-crypto_pwhash_alg_argon2i13
	.section	.text.crypto_pwhash_alg_default,"ax",@progbits
	.align	4
	.global	crypto_pwhash_alg_default
	.type	crypto_pwhash_alg_default, @function
crypto_pwhash_alg_default:
.LFB1:
	.loc 1 14 0
	entry	sp, 32
.LCFI1:
	.loc 1 16 0
	movi.n	a2, 1
	retw.n
.LFE1:
	.size	crypto_pwhash_alg_default, .-crypto_pwhash_alg_default
	.section	.text.crypto_pwhash_bytes_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_bytes_min
	.type	crypto_pwhash_bytes_min, @function
crypto_pwhash_bytes_min:
.LFB2:
	.loc 1 20 0
	entry	sp, 32
.LCFI2:
	.loc 1 22 0
	movi.n	a2, 0x10
	retw.n
.LFE2:
	.size	crypto_pwhash_bytes_min, .-crypto_pwhash_bytes_min
	.section	.text.crypto_pwhash_bytes_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_bytes_max
	.type	crypto_pwhash_bytes_max, @function
crypto_pwhash_bytes_max:
.LFB3:
	.loc 1 26 0
	entry	sp, 32
.LCFI3:
	.loc 1 28 0
	movi.n	a2, -1
	retw.n
.LFE3:
	.size	crypto_pwhash_bytes_max, .-crypto_pwhash_bytes_max
	.section	.text.crypto_pwhash_passwd_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_passwd_min
	.type	crypto_pwhash_passwd_min, @function
crypto_pwhash_passwd_min:
.LFB4:
	.loc 1 32 0
	entry	sp, 32
.LCFI4:
	.loc 1 34 0
	movi.n	a2, 0
	retw.n
.LFE4:
	.size	crypto_pwhash_passwd_min, .-crypto_pwhash_passwd_min
	.section	.text.crypto_pwhash_passwd_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_passwd_max
	.type	crypto_pwhash_passwd_max, @function
crypto_pwhash_passwd_max:
.LFB5:
	.loc 1 38 0
	entry	sp, 32
.LCFI5:
	.loc 1 40 0
	movi.n	a2, -1
	retw.n
.LFE5:
	.size	crypto_pwhash_passwd_max, .-crypto_pwhash_passwd_max
	.section	.text.crypto_pwhash_saltbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_saltbytes
	.type	crypto_pwhash_saltbytes, @function
crypto_pwhash_saltbytes:
.LFB6:
	.loc 1 44 0
	entry	sp, 32
.LCFI6:
	.loc 1 46 0
	movi.n	a2, 0x10
	retw.n
.LFE6:
	.size	crypto_pwhash_saltbytes, .-crypto_pwhash_saltbytes
	.section	.text.crypto_pwhash_strbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_strbytes
	.type	crypto_pwhash_strbytes, @function
crypto_pwhash_strbytes:
.LFB7:
	.loc 1 50 0
	entry	sp, 32
.LCFI7:
	.loc 1 52 0
	movi	a2, 0x80
	retw.n
.LFE7:
	.size	crypto_pwhash_strbytes, .-crypto_pwhash_strbytes
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"$argon2i$"
	.section	.text.crypto_pwhash_strprefix,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_pwhash_strprefix
	.type	crypto_pwhash_strprefix, @function
crypto_pwhash_strprefix:
.LFB8:
	.loc 1 56 0
	entry	sp, 32
.LCFI8:
	.loc 1 58 0
	l32r	a2, .LC1
	retw.n
.LFE8:
	.size	crypto_pwhash_strprefix, .-crypto_pwhash_strprefix
	.section	.text.crypto_pwhash_opslimit_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_opslimit_min
	.type	crypto_pwhash_opslimit_min, @function
crypto_pwhash_opslimit_min:
.LFB9:
	.loc 1 62 0
	entry	sp, 32
.LCFI9:
	.loc 1 64 0
	movi.n	a2, 3
	retw.n
.LFE9:
	.size	crypto_pwhash_opslimit_min, .-crypto_pwhash_opslimit_min
	.section	.text.crypto_pwhash_opslimit_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_opslimit_max
	.type	crypto_pwhash_opslimit_max, @function
crypto_pwhash_opslimit_max:
.LFB10:
	.loc 1 68 0
	entry	sp, 32
.LCFI10:
	.loc 1 70 0
	movi.n	a2, -1
	retw.n
.LFE10:
	.size	crypto_pwhash_opslimit_max, .-crypto_pwhash_opslimit_max
	.section	.text.crypto_pwhash_memlimit_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_memlimit_min
	.type	crypto_pwhash_memlimit_min, @function
crypto_pwhash_memlimit_min:
.LFB11:
	.loc 1 74 0
	entry	sp, 32
.LCFI11:
	.loc 1 76 0
	movi.n	a2, 1
	retw.n
.LFE11:
	.size	crypto_pwhash_memlimit_min, .-crypto_pwhash_memlimit_min
	.section	.text.crypto_pwhash_memlimit_max,"ax",@progbits
	.literal_position
	.literal .LC2, 32768
	.align	4
	.global	crypto_pwhash_memlimit_max
	.type	crypto_pwhash_memlimit_max, @function
crypto_pwhash_memlimit_max:
.LFB12:
	.loc 1 80 0
	entry	sp, 32
.LCFI12:
	.loc 1 82 0
	l32r	a2, .LC2
	retw.n
.LFE12:
	.size	crypto_pwhash_memlimit_max, .-crypto_pwhash_memlimit_max
	.section	.text.crypto_pwhash_opslimit_interactive,"ax",@progbits
	.align	4
	.global	crypto_pwhash_opslimit_interactive
	.type	crypto_pwhash_opslimit_interactive, @function
crypto_pwhash_opslimit_interactive:
.LFB13:
	.loc 1 86 0
	entry	sp, 32
.LCFI13:
	.loc 1 88 0
	movi.n	a2, 4
	retw.n
.LFE13:
	.size	crypto_pwhash_opslimit_interactive, .-crypto_pwhash_opslimit_interactive
	.section	.text.crypto_pwhash_memlimit_interactive,"ax",@progbits
	.literal_position
	.literal .LC3, 33554432
	.align	4
	.global	crypto_pwhash_memlimit_interactive
	.type	crypto_pwhash_memlimit_interactive, @function
crypto_pwhash_memlimit_interactive:
.LFB14:
	.loc 1 92 0
	entry	sp, 32
.LCFI14:
	.loc 1 94 0
	l32r	a2, .LC3
	retw.n
.LFE14:
	.size	crypto_pwhash_memlimit_interactive, .-crypto_pwhash_memlimit_interactive
	.section	.text.crypto_pwhash_opslimit_moderate,"ax",@progbits
	.align	4
	.global	crypto_pwhash_opslimit_moderate
	.type	crypto_pwhash_opslimit_moderate, @function
crypto_pwhash_opslimit_moderate:
.LFB15:
	.loc 1 98 0
	entry	sp, 32
.LCFI15:
	.loc 1 100 0
	movi.n	a2, 6
	retw.n
.LFE15:
	.size	crypto_pwhash_opslimit_moderate, .-crypto_pwhash_opslimit_moderate
	.section	.text.crypto_pwhash_memlimit_moderate,"ax",@progbits
	.literal_position
	.literal .LC4, 134217728
	.align	4
	.global	crypto_pwhash_memlimit_moderate
	.type	crypto_pwhash_memlimit_moderate, @function
crypto_pwhash_memlimit_moderate:
.LFB16:
	.loc 1 104 0
	entry	sp, 32
.LCFI16:
	.loc 1 106 0
	l32r	a2, .LC4
	retw.n
.LFE16:
	.size	crypto_pwhash_memlimit_moderate, .-crypto_pwhash_memlimit_moderate
	.section	.text.crypto_pwhash_opslimit_sensitive,"ax",@progbits
	.align	4
	.global	crypto_pwhash_opslimit_sensitive
	.type	crypto_pwhash_opslimit_sensitive, @function
crypto_pwhash_opslimit_sensitive:
.LFB17:
	.loc 1 110 0
	entry	sp, 32
.LCFI17:
	.loc 1 112 0
	movi.n	a2, 8
	retw.n
.LFE17:
	.size	crypto_pwhash_opslimit_sensitive, .-crypto_pwhash_opslimit_sensitive
	.section	.text.crypto_pwhash_memlimit_sensitive,"ax",@progbits
	.literal_position
	.literal .LC5, 536870912
	.align	4
	.global	crypto_pwhash_memlimit_sensitive
	.type	crypto_pwhash_memlimit_sensitive, @function
crypto_pwhash_memlimit_sensitive:
.LFB18:
	.loc 1 116 0
	entry	sp, 32
.LCFI18:
	.loc 1 118 0
	l32r	a2, .LC5
	retw.n
.LFE18:
	.size	crypto_pwhash_memlimit_sensitive, .-crypto_pwhash_memlimit_sensitive
	.section	.text.crypto_pwhash,"ax",@progbits
	.align	4
	.global	crypto_pwhash
	.type	crypto_pwhash, @function
crypto_pwhash:
.LFB19:
	.loc 1 125 0
.LVL0:
	entry	sp, 64
.LCFI19:
	l32i	a8, sp, 92
	.loc 1 126 0
	beqi	a8, 1, .L21
	.loc 1 127 0
	call8	__errno
.LVL1:
	movi.n	a2, 0x16
.LVL2:
	s32i.n	a2, a10, 0
	.loc 1 128 0
	movi.n	a2, -1
	retw.n
.LVL3:
.L21:
	.loc 1 130 0
	s32i.n	a8, sp, 28
	l32i	a8, sp, 88
.LVL4:
	s32i.n	a8, sp, 24
	l32i	a8, sp, 80
	l32i	a9, sp, 84
	s32i.n	a8, sp, 16
	s32i.n	a9, sp, 20
	l32i	a8, sp, 72
	s32i.n	a8, sp, 8
	l32i	a8, sp, 64
	l32i	a9, sp, 68
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a10, a2
	call8	crypto_pwhash_argon2i
.LVL5:
	mov.n	a2, a10
.LVL6:
	.loc 1 132 0
	retw.n
.LFE19:
	.size	crypto_pwhash, .-crypto_pwhash
	.section	.text.crypto_pwhash_str,"ax",@progbits
	.align	4
	.global	crypto_pwhash_str
	.type	crypto_pwhash_str, @function
crypto_pwhash_str:
.LFB20:
	.loc 1 138 0
.LVL7:
	entry	sp, 48
.LCFI20:
	mov.n	a15, a7
	.loc 1 139 0
	l32i.n	a8, sp, 48
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_pwhash_argon2i_str
.LVL8:
	.loc 1 141 0
	mov.n	a2, a10
.LVL9:
	retw.n
.LFE20:
	.size	crypto_pwhash_str, .-crypto_pwhash_str
	.section	.text.crypto_pwhash_str_verify,"ax",@progbits
	.align	4
	.global	crypto_pwhash_str_verify
	.type	crypto_pwhash_str_verify, @function
crypto_pwhash_str_verify:
.LFB21:
	.loc 1 147 0
.LVL10:
	entry	sp, 32
.LCFI21:
	.loc 1 148 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_pwhash_argon2i_str_verify
.LVL11:
	.loc 1 149 0
	mov.n	a2, a10
.LVL12:
	retw.n
.LFE21:
	.size	crypto_pwhash_str_verify, .-crypto_pwhash_str_verify
	.section	.rodata.str1.4
	.align	4
.LC6:
	.string	"argon2i"
	.section	.text.crypto_pwhash_primitive,"ax",@progbits
	.literal_position
	.literal .LC7, .LC6
	.align	4
	.global	crypto_pwhash_primitive
	.type	crypto_pwhash_primitive, @function
crypto_pwhash_primitive:
.LFB22:
	.loc 1 152 0
	entry	sp, 32
.LCFI22:
	.loc 1 154 0
	l32r	a2, .LC7
	retw.n
.LFE22:
	.size	crypto_pwhash_primitive, .-crypto_pwhash_primitive
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
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI16-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI17-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI18-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI19-.LFB19
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI20-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI21-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI22-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/errno.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_pwhash_argon2i.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x428
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF46
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.4byte	0x85
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x92
	.uleb128 0x6
	.4byte	0x85
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0x7
	.4byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0xd
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x13
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x19
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1f
	.4byte	0x28
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x1
	.byte	0x25
	.4byte	0x28
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2b
	.4byte	0x28
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x1
	.byte	0x31
	.4byte	0x28
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x37
	.4byte	0x8c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3d
	.4byte	0x28
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x43
	.4byte	0x28
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x49
	.4byte	0x28
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4f
	.4byte	0x28
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x55
	.4byte	0x28
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5b
	.4byte	0x28
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x1
	.byte	0x61
	.4byte	0x28
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x1
	.byte	0x67
	.4byte	0x28
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.byte	0x6d
	.4byte	0x28
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x1
	.byte	0x73
	.4byte	0x28
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1
	.byte	0x79
	.4byte	0x21
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ec
	.uleb128 0x9
	.string	"out"
	.byte	0x1
	.byte	0x79
	.4byte	0x2ec
	.4byte	.LLST0
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x79
	.4byte	0x5d
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7a
	.4byte	0x2f1
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7a
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7b
	.4byte	0x301
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7c
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7c
	.4byte	0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x9
	.string	"alg"
	.byte	0x1
	.byte	0x7c
	.4byte	0x21
	.4byte	.LLST1
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x3ff
	.uleb128 0xc
	.4byte	.LVL5
	.4byte	0x40a
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x71
	.sleb128 28
	.uleb128 0x3
	.byte	0x91
	.sleb128 28
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x79
	.uleb128 0x6
	.4byte	0x8c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2fc
	.uleb128 0x6
	.4byte	0x48
	.uleb128 0x6
	.4byte	0x2f6
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x1
	.byte	0x87
	.4byte	0x21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x38c
	.uleb128 0x9
	.string	"out"
	.byte	0x1
	.byte	0x87
	.4byte	0x7f
	.4byte	.LLST2
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x88
	.4byte	0x2f1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x88
	.4byte	0x5d
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x89
	.4byte	0x5d
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x1
	.byte	0x89
	.4byte	0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.4byte	.LVL8
	.4byte	0x415
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
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x1
	.byte	0x90
	.4byte	0x21
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ea
	.uleb128 0x9
	.string	"str"
	.byte	0x1
	.byte	0x90
	.4byte	0x8c
	.4byte	.LLST3
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x91
	.4byte	0x2f1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0x92
	.4byte	0x5d
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LVL11
	.4byte	0x420
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
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x1
	.byte	0x98
	.4byte	0x8c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x2
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x3
	.byte	0x5a
	.uleb128 0xe
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x3
	.byte	0x64
	.uleb128 0xe
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x3
	.byte	0x6b
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x91
	.sleb128 28
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x91
	.sleb128 28
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xcc
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"memlimit"
.LASF46:
	.string	"size_t"
.LASF31:
	.string	"passwd"
.LASF36:
	.string	"crypto_pwhash"
.LASF27:
	.string	"crypto_pwhash_memlimit_moderate"
.LASF21:
	.string	"crypto_pwhash_opslimit_max"
.LASF19:
	.string	"crypto_pwhash_strprefix"
.LASF37:
	.string	"crypto_pwhash_str"
.LASF1:
	.string	"short unsigned int"
.LASF38:
	.string	"crypto_pwhash_str_verify"
.LASF42:
	.string	"crypto_pwhash_argon2i_str"
.LASF28:
	.string	"crypto_pwhash_opslimit_sensitive"
.LASF44:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF20:
	.string	"crypto_pwhash_opslimit_min"
.LASF11:
	.string	"crypto_pwhash_alg_argon2i13"
.LASF33:
	.string	"salt"
.LASF3:
	.string	"unsigned char"
.LASF32:
	.string	"passwdlen"
.LASF9:
	.string	"long unsigned int"
.LASF24:
	.string	"crypto_pwhash_opslimit_interactive"
.LASF39:
	.string	"crypto_pwhash_primitive"
.LASF25:
	.string	"crypto_pwhash_memlimit_interactive"
.LASF45:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/crypto_pwhash.c"
.LASF34:
	.string	"opslimit"
.LASF23:
	.string	"crypto_pwhash_memlimit_max"
.LASF41:
	.string	"crypto_pwhash_argon2i"
.LASF14:
	.string	"crypto_pwhash_bytes_max"
.LASF43:
	.string	"crypto_pwhash_argon2i_str_verify"
.LASF17:
	.string	"crypto_pwhash_saltbytes"
.LASF29:
	.string	"crypto_pwhash_memlimit_sensitive"
.LASF0:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF22:
	.string	"crypto_pwhash_memlimit_min"
.LASF13:
	.string	"crypto_pwhash_bytes_min"
.LASF8:
	.string	"sizetype"
.LASF15:
	.string	"crypto_pwhash_passwd_min"
.LASF5:
	.string	"long long int"
.LASF12:
	.string	"crypto_pwhash_alg_default"
.LASF4:
	.string	"short int"
.LASF40:
	.string	"__errno"
.LASF7:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF16:
	.string	"crypto_pwhash_passwd_max"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"outlen"
.LASF26:
	.string	"crypto_pwhash_opslimit_moderate"
.LASF18:
	.string	"crypto_pwhash_strbytes"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
