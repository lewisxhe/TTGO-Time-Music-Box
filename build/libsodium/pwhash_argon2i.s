	.file	"pwhash_argon2i.c"
	.text
.Ltext0:
	.section	.text.crypto_pwhash_argon2i_alg_argon2i13,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_alg_argon2i13
	.type	crypto_pwhash_argon2i_alg_argon2i13, @function
crypto_pwhash_argon2i_alg_argon2i13:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/pwhash_argon2i.c"
	.loc 1 18 0
	entry	sp, 32
.LCFI0:
	.loc 1 20 0
	movi.n	a2, 1
	retw.n
.LFE0:
	.size	crypto_pwhash_argon2i_alg_argon2i13, .-crypto_pwhash_argon2i_alg_argon2i13
	.section	.text.crypto_pwhash_argon2i_bytes_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_bytes_min
	.type	crypto_pwhash_argon2i_bytes_min, @function
crypto_pwhash_argon2i_bytes_min:
.LFB1:
	.loc 1 24 0
	entry	sp, 32
.LCFI1:
	.loc 1 26 0
	movi.n	a2, 0x10
	retw.n
.LFE1:
	.size	crypto_pwhash_argon2i_bytes_min, .-crypto_pwhash_argon2i_bytes_min
	.section	.text.crypto_pwhash_argon2i_bytes_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_bytes_max
	.type	crypto_pwhash_argon2i_bytes_max, @function
crypto_pwhash_argon2i_bytes_max:
.LFB2:
	.loc 1 30 0
	entry	sp, 32
.LCFI2:
	.loc 1 32 0
	movi.n	a2, -1
	retw.n
.LFE2:
	.size	crypto_pwhash_argon2i_bytes_max, .-crypto_pwhash_argon2i_bytes_max
	.section	.text.crypto_pwhash_argon2i_passwd_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_passwd_min
	.type	crypto_pwhash_argon2i_passwd_min, @function
crypto_pwhash_argon2i_passwd_min:
.LFB3:
	.loc 1 36 0
	entry	sp, 32
.LCFI3:
	.loc 1 38 0
	movi.n	a2, 0
	retw.n
.LFE3:
	.size	crypto_pwhash_argon2i_passwd_min, .-crypto_pwhash_argon2i_passwd_min
	.section	.text.crypto_pwhash_argon2i_passwd_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_passwd_max
	.type	crypto_pwhash_argon2i_passwd_max, @function
crypto_pwhash_argon2i_passwd_max:
.LFB4:
	.loc 1 42 0
	entry	sp, 32
.LCFI4:
	.loc 1 44 0
	movi.n	a2, -1
	retw.n
.LFE4:
	.size	crypto_pwhash_argon2i_passwd_max, .-crypto_pwhash_argon2i_passwd_max
	.section	.text.crypto_pwhash_argon2i_saltbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_saltbytes
	.type	crypto_pwhash_argon2i_saltbytes, @function
crypto_pwhash_argon2i_saltbytes:
.LFB5:
	.loc 1 48 0
	entry	sp, 32
.LCFI5:
	.loc 1 50 0
	movi.n	a2, 0x10
	retw.n
.LFE5:
	.size	crypto_pwhash_argon2i_saltbytes, .-crypto_pwhash_argon2i_saltbytes
	.section	.text.crypto_pwhash_argon2i_strbytes,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_strbytes
	.type	crypto_pwhash_argon2i_strbytes, @function
crypto_pwhash_argon2i_strbytes:
.LFB6:
	.loc 1 54 0
	entry	sp, 32
.LCFI6:
	.loc 1 56 0
	movi	a2, 0x80
	retw.n
.LFE6:
	.size	crypto_pwhash_argon2i_strbytes, .-crypto_pwhash_argon2i_strbytes
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"$argon2i$"
	.section	.text.crypto_pwhash_argon2i_strprefix,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.global	crypto_pwhash_argon2i_strprefix
	.type	crypto_pwhash_argon2i_strprefix, @function
crypto_pwhash_argon2i_strprefix:
.LFB7:
	.loc 1 60 0
	entry	sp, 32
.LCFI7:
	.loc 1 62 0
	l32r	a2, .LC1
	retw.n
.LFE7:
	.size	crypto_pwhash_argon2i_strprefix, .-crypto_pwhash_argon2i_strprefix
	.section	.text.crypto_pwhash_argon2i_opslimit_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_opslimit_min
	.type	crypto_pwhash_argon2i_opslimit_min, @function
crypto_pwhash_argon2i_opslimit_min:
.LFB8:
	.loc 1 66 0
	entry	sp, 32
.LCFI8:
	.loc 1 68 0
	movi.n	a2, 3
	retw.n
.LFE8:
	.size	crypto_pwhash_argon2i_opslimit_min, .-crypto_pwhash_argon2i_opslimit_min
	.section	.text.crypto_pwhash_argon2i_opslimit_max,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_opslimit_max
	.type	crypto_pwhash_argon2i_opslimit_max, @function
crypto_pwhash_argon2i_opslimit_max:
.LFB9:
	.loc 1 72 0
	entry	sp, 32
.LCFI9:
	.loc 1 74 0
	movi.n	a2, -1
	retw.n
.LFE9:
	.size	crypto_pwhash_argon2i_opslimit_max, .-crypto_pwhash_argon2i_opslimit_max
	.section	.text.crypto_pwhash_argon2i_memlimit_min,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_memlimit_min
	.type	crypto_pwhash_argon2i_memlimit_min, @function
crypto_pwhash_argon2i_memlimit_min:
.LFB10:
	.loc 1 78 0
	entry	sp, 32
.LCFI10:
	.loc 1 80 0
	movi.n	a2, 1
	retw.n
.LFE10:
	.size	crypto_pwhash_argon2i_memlimit_min, .-crypto_pwhash_argon2i_memlimit_min
	.section	.text.crypto_pwhash_argon2i_memlimit_max,"ax",@progbits
	.literal_position
	.literal .LC2, 32768
	.align	4
	.global	crypto_pwhash_argon2i_memlimit_max
	.type	crypto_pwhash_argon2i_memlimit_max, @function
crypto_pwhash_argon2i_memlimit_max:
.LFB11:
	.loc 1 84 0
	entry	sp, 32
.LCFI11:
	.loc 1 86 0
	l32r	a2, .LC2
	retw.n
.LFE11:
	.size	crypto_pwhash_argon2i_memlimit_max, .-crypto_pwhash_argon2i_memlimit_max
	.section	.text.crypto_pwhash_argon2i_opslimit_interactive,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_opslimit_interactive
	.type	crypto_pwhash_argon2i_opslimit_interactive, @function
crypto_pwhash_argon2i_opslimit_interactive:
.LFB12:
	.loc 1 90 0
	entry	sp, 32
.LCFI12:
	.loc 1 92 0
	movi.n	a2, 4
	retw.n
.LFE12:
	.size	crypto_pwhash_argon2i_opslimit_interactive, .-crypto_pwhash_argon2i_opslimit_interactive
	.section	.text.crypto_pwhash_argon2i_memlimit_interactive,"ax",@progbits
	.literal_position
	.literal .LC3, 33554432
	.align	4
	.global	crypto_pwhash_argon2i_memlimit_interactive
	.type	crypto_pwhash_argon2i_memlimit_interactive, @function
crypto_pwhash_argon2i_memlimit_interactive:
.LFB13:
	.loc 1 96 0
	entry	sp, 32
.LCFI13:
	.loc 1 98 0
	l32r	a2, .LC3
	retw.n
.LFE13:
	.size	crypto_pwhash_argon2i_memlimit_interactive, .-crypto_pwhash_argon2i_memlimit_interactive
	.section	.text.crypto_pwhash_argon2i_opslimit_moderate,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_opslimit_moderate
	.type	crypto_pwhash_argon2i_opslimit_moderate, @function
crypto_pwhash_argon2i_opslimit_moderate:
.LFB14:
	.loc 1 102 0
	entry	sp, 32
.LCFI14:
	.loc 1 104 0
	movi.n	a2, 6
	retw.n
.LFE14:
	.size	crypto_pwhash_argon2i_opslimit_moderate, .-crypto_pwhash_argon2i_opslimit_moderate
	.section	.text.crypto_pwhash_argon2i_memlimit_moderate,"ax",@progbits
	.literal_position
	.literal .LC4, 134217728
	.align	4
	.global	crypto_pwhash_argon2i_memlimit_moderate
	.type	crypto_pwhash_argon2i_memlimit_moderate, @function
crypto_pwhash_argon2i_memlimit_moderate:
.LFB15:
	.loc 1 108 0
	entry	sp, 32
.LCFI15:
	.loc 1 110 0
	l32r	a2, .LC4
	retw.n
.LFE15:
	.size	crypto_pwhash_argon2i_memlimit_moderate, .-crypto_pwhash_argon2i_memlimit_moderate
	.section	.text.crypto_pwhash_argon2i_opslimit_sensitive,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_opslimit_sensitive
	.type	crypto_pwhash_argon2i_opslimit_sensitive, @function
crypto_pwhash_argon2i_opslimit_sensitive:
.LFB16:
	.loc 1 114 0
	entry	sp, 32
.LCFI16:
	.loc 1 116 0
	movi.n	a2, 8
	retw.n
.LFE16:
	.size	crypto_pwhash_argon2i_opslimit_sensitive, .-crypto_pwhash_argon2i_opslimit_sensitive
	.section	.text.crypto_pwhash_argon2i_memlimit_sensitive,"ax",@progbits
	.literal_position
	.literal .LC5, 536870912
	.align	4
	.global	crypto_pwhash_argon2i_memlimit_sensitive
	.type	crypto_pwhash_argon2i_memlimit_sensitive, @function
crypto_pwhash_argon2i_memlimit_sensitive:
.LFB17:
	.loc 1 120 0
	entry	sp, 32
.LCFI17:
	.loc 1 122 0
	l32r	a2, .LC5
	retw.n
.LFE17:
	.size	crypto_pwhash_argon2i_memlimit_sensitive, .-crypto_pwhash_argon2i_memlimit_sensitive
	.section	.text.crypto_pwhash_argon2i,"ax",@progbits
	.literal_position
	.literal .LC6, 2097152
	.align	4
	.global	crypto_pwhash_argon2i
	.type	crypto_pwhash_argon2i, @function
crypto_pwhash_argon2i:
.LFB18:
	.loc 1 129 0
.LVL0:
	entry	sp, 64
.LCFI18:
	l32i	a3, sp, 64
	s32i.n	a3, sp, 20
	l32i	a3, sp, 68
	s32i.n	a3, sp, 16
	l32i	a7, sp, 80
	l32i	a3, sp, 84
	.loc 1 130 0
	mov.n	a12, a4
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL1:
	.loc 1 131 0
	l32i	a8, sp, 92
	bnei	a8, 1, .L37
	.loc 1 134 0
	l32i	a11, sp, 88
	srli	a11, a11, 10
.LVL2:
	.loc 1 135 0
	bnez.n	a5, .L21
	movi.n	a8, 0
.L21:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	l32i.n	a10, sp, 16
	bnez.n	a10, .L23
	movi.n	a8, 0
.L23:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L25
	.loc 1 136 0
	movi.n	a8, 1
	bnez.n	a3, .L26
	movi.n	a8, 0
.L26:
	extui	a8, a8, 0, 8
	movi.n	a9, 1
	l32r	a10, .LC6
	bltu	a10, a11, .L28
	movi.n	a9, 0
.L28:
	extui	a9, a9, 0, 8
	bnez.n	a8, .L25
	beqz.n	a9, .L29
.L25:
	.loc 1 137 0
	call8	__errno
.LVL3:
	movi.n	a2, 0x1b
.LVL4:
	s32i.n	a2, a10, 0
	.loc 1 138 0
	movi.n	a2, -1
	retw.n
.LVL5:
.L29:
	.loc 1 140 0
	movi.n	a8, 1
	bnez.n	a5, .L32
	bnez.n	a5, .L31
	movi.n	a5, 0xf
	bgeu	a5, a4, .L31
.L32:
	movi.n	a8, 0
.L31:
	extui	a8, a8, 0, 8
	.loc 1 141 0
	movi.n	a5, 1
	bnez.n	a3, .L34
	bnez.n	a3, .L33
	bltui	a7, 3, .L33
.L34:
	movi.n	a5, 0
.L33:
	extui	a5, a5, 0, 8
	.loc 1 140 0
	or	a5, a8, a5
	bnez.n	a5, .L35
	.loc 1 141 0
	bgeui	a11, 8, .L36
.L35:
	.loc 1 142 0
	call8	__errno
.LVL6:
	movi.n	a2, 0x16
.LVL7:
	s32i.n	a2, a10, 0
	.loc 1 143 0
	movi.n	a2, -1
	retw.n
.LVL8:
.L36:
	.loc 1 145 0
	s32i.n	a4, sp, 8
	s32i.n	a2, sp, 4
	movi.n	a2, 0x10
.LVL9:
	s32i.n	a2, sp, 0
	l32i	a15, sp, 72
	l32i.n	a14, sp, 20
	mov.n	a13, a6
	movi.n	a12, 1
	mov.n	a10, a7
	call8	argon2i_hash_raw
.LVL10:
	mov.n	a2, a10
	beqz.n	a10, .L20
	.loc 1 149 0
	movi.n	a2, -1
	retw.n
.LVL11:
.L37:
	.loc 1 132 0
	movi.n	a2, -1
.LVL12:
.L20:
	.loc 1 152 0
	retw.n
.LFE18:
	.size	crypto_pwhash_argon2i, .-crypto_pwhash_argon2i
	.section	.text.crypto_pwhash_argon2i_str,"ax",@progbits
	.literal_position
	.literal .LC7, 2097152
	.align	4
	.global	crypto_pwhash_argon2i_str
	.type	crypto_pwhash_argon2i_str, @function
crypto_pwhash_argon2i_str:
.LFB19:
	.loc 1 159 0
.LVL13:
	entry	sp, 80
.LCFI19:
	s32i.n	a3, sp, 32
	s32i.n	a6, sp, 36
	.loc 1 162 0
	movi	a12, 0x80
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL14:
	.loc 1 163 0
	l32i	a3, sp, 80
.LVL15:
	srli	a3, a3, 10
.LVL16:
	.loc 1 164 0
	movi.n	a8, 1
	bnez.n	a5, .L39
	movi.n	a8, 0
.L39:
	extui	a8, a8, 0, 8
	movi.n	a5, 1
	bnez.n	a7, .L41
	movi.n	a5, 0
.L41:
	extui	a5, a5, 0, 8
	or	a5, a8, a5
	bnez.n	a5, .L43
	.loc 1 164 0 is_stmt 0 discriminator 1
	l32r	a5, .LC7
	bgeu	a5, a3, .L44
.L43:
	.loc 1 166 0 is_stmt 1
	call8	__errno
.LVL17:
	movi.n	a2, 0x1b
.LVL18:
	s32i.n	a2, a10, 0
	.loc 1 167 0
	movi.n	a2, -1
	retw.n
.LVL19:
.L44:
	.loc 1 169 0
	movi.n	a5, 1
	bnez.n	a7, .L47
	bnez.n	a7, .L46
	l32i.n	a8, sp, 36
	bltui	a8, 3, .L46
.L47:
	movi.n	a5, 0
.L46:
	extui	a7, a5, 0, 8
	.loc 1 170 0
	movi.n	a5, 1
	bltui	a3, 8, .L48
	movi.n	a5, 0
.L48:
	extui	a5, a5, 0, 8
	.loc 1 169 0
	or	a5, a7, a5
	beqz.n	a5, .L49
	.loc 1 171 0
	call8	__errno
.LVL20:
	movi.n	a2, 0x16
.LVL21:
	s32i.n	a2, a10, 0
	.loc 1 172 0
	movi.n	a2, -1
	retw.n
.LVL22:
.L49:
	.loc 1 174 0
	movi.n	a11, 0x10
	add.n	a10, sp, a11
	call8	randombytes_buf
.LVL23:
	.loc 1 175 0
	movi	a5, 0x80
	s32i.n	a5, sp, 12
	s32i.n	a2, sp, 8
	movi.n	a2, 0x20
.LVL24:
	s32i.n	a2, sp, 4
	movi.n	a2, 0x10
	s32i.n	a2, sp, 0
	add.n	a15, sp, a2
	mov.n	a14, a4
	l32i.n	a13, sp, 32
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a6
	call8	argon2i_hash_encoded
.LVL25:
	mov.n	a2, a10
	beqz.n	a10, .L45
	.loc 1 179 0
	movi.n	a2, -1
.L45:
	.loc 1 182 0
	retw.n
.LFE19:
	.size	crypto_pwhash_argon2i_str, .-crypto_pwhash_argon2i_str
	.section	.text.crypto_pwhash_argon2i_str_verify,"ax",@progbits
	.align	4
	.global	crypto_pwhash_argon2i_str_verify
	.type	crypto_pwhash_argon2i_str_verify, @function
crypto_pwhash_argon2i_str_verify:
.LFB20:
	.loc 1 188 0
.LVL26:
	entry	sp, 32
.LCFI20:
	.loc 1 189 0
	beqz.n	a5, .L55
	.loc 1 190 0
	call8	__errno
.LVL27:
	movi.n	a2, 0x1b
.LVL28:
	s32i.n	a2, a10, 0
	.loc 1 191 0
	movi.n	a2, -1
	retw.n
.LVL29:
.L55:
	.loc 1 199 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	argon2i_verify
.LVL30:
	mov.n	a2, a10
.LVL31:
	beqz.n	a10, .L53
	.loc 1 200 0
	movi.n	a2, -1
.L53:
	.loc 1 203 0
	retw.n
.LFE20:
	.size	crypto_pwhash_argon2i_str_verify, .-crypto_pwhash_argon2i_str_verify
	.section	.text._crypto_pwhash_argon2i_pick_best_implementation,"ax",@progbits
	.align	4
	.global	_crypto_pwhash_argon2i_pick_best_implementation
	.type	_crypto_pwhash_argon2i_pick_best_implementation, @function
_crypto_pwhash_argon2i_pick_best_implementation:
.LFB21:
	.loc 1 207 0
	entry	sp, 32
.LCFI21:
	.loc 1 208 0
	call8	argon2_pick_best_implementation
.LVL32:
	.loc 1 209 0
	mov.n	a2, a10
	retw.n
.LFE21:
	.size	_crypto_pwhash_argon2i_pick_best_implementation, .-_crypto_pwhash_argon2i_pick_best_implementation
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
	.uleb128 0x40
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
	.uleb128 0x50
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
	.uleb128 0x20
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
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/errno.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x625
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x33
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.4byte	0x90
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x6
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.4byte	0x56
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x4
	.4byte	0x21
	.byte	0x6
	.byte	0x4b
	.4byte	0x196
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.sleb128 -1
	.uleb128 0x9
	.4byte	.LASF16
	.sleb128 -2
	.uleb128 0x9
	.4byte	.LASF17
	.sleb128 -3
	.uleb128 0x9
	.4byte	.LASF18
	.sleb128 -4
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 -5
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 -6
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 -7
	.uleb128 0x9
	.4byte	.LASF22
	.sleb128 -8
	.uleb128 0x9
	.4byte	.LASF23
	.sleb128 -9
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 -10
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 -11
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 -12
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 -13
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 -14
	.uleb128 0x9
	.4byte	.LASF29
	.sleb128 -15
	.uleb128 0x9
	.4byte	.LASF30
	.sleb128 -16
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 -17
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 -18
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 -19
	.uleb128 0x9
	.4byte	.LASF34
	.sleb128 -20
	.uleb128 0x9
	.4byte	.LASF35
	.sleb128 -21
	.uleb128 0x9
	.4byte	.LASF36
	.sleb128 -22
	.uleb128 0x9
	.4byte	.LASF37
	.sleb128 -23
	.uleb128 0x9
	.4byte	.LASF38
	.sleb128 -24
	.uleb128 0x9
	.4byte	.LASF39
	.sleb128 -25
	.uleb128 0x9
	.4byte	.LASF40
	.sleb128 -26
	.uleb128 0x9
	.4byte	.LASF41
	.sleb128 -27
	.uleb128 0x9
	.4byte	.LASF42
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF43
	.sleb128 -29
	.uleb128 0x9
	.4byte	.LASF44
	.sleb128 -30
	.uleb128 0x9
	.4byte	.LASF45
	.sleb128 -31
	.uleb128 0x9
	.4byte	.LASF46
	.sleb128 -32
	.uleb128 0x9
	.4byte	.LASF47
	.sleb128 -33
	.uleb128 0x9
	.4byte	.LASF48
	.sleb128 -34
	.uleb128 0x9
	.4byte	.LASF49
	.sleb128 -35
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x1
	.byte	0x11
	.4byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x1
	.byte	0x17
	.4byte	0x28
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x1
	.byte	0x1d
	.4byte	0x28
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x1
	.byte	0x23
	.4byte	0x28
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x1
	.byte	0x29
	.4byte	0x28
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x1
	.byte	0x2f
	.4byte	0x28
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x1
	.byte	0x35
	.4byte	0x28
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x1
	.byte	0x3b
	.4byte	0x97
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x1
	.byte	0x41
	.4byte	0x28
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x1
	.byte	0x47
	.4byte	0x28
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x1
	.byte	0x4d
	.4byte	0x28
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x1
	.byte	0x53
	.4byte	0x28
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x1
	.byte	0x59
	.4byte	0x28
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x1
	.byte	0x5f
	.4byte	0x28
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x1
	.byte	0x65
	.4byte	0x28
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x1
	.byte	0x6b
	.4byte	0x28
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x1
	.byte	0x71
	.4byte	0x28
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x1
	.byte	0x77
	.4byte	0x28
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x1
	.byte	0x7d
	.4byte	0x21
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40f
	.uleb128 0xc
	.string	"out"
	.byte	0x1
	.byte	0x7d
	.4byte	0x40f
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x1
	.byte	0x7d
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x1
	.byte	0x7e
	.4byte	0x414
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0x7e
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x1
	.byte	0x7f
	.4byte	0x424
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x1
	.byte	0x80
	.4byte	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.byte	0x80
	.4byte	0x28
	.4byte	.LLST1
	.uleb128 0xf
	.string	"alg"
	.byte	0x1
	.byte	0x80
	.4byte	0x21
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x10
	.4byte	.LVL1
	.4byte	0x5dd
	.4byte	0x3bd
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL3
	.4byte	0x5e6
	.uleb128 0x12
	.4byte	.LVL6
	.4byte	0x5e6
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x5f1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x84
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41f
	.uleb128 0x6
	.4byte	0x48
	.uleb128 0x6
	.4byte	0x419
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x1
	.byte	0x9b
	.4byte	0x21
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53d
	.uleb128 0xc
	.string	"out"
	.byte	0x1
	.byte	0x9b
	.4byte	0x8a
	.4byte	.LLST2
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x1
	.byte	0x9c
	.4byte	0x414
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0x9d
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x1
	.byte	0x9e
	.4byte	0x68
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x1
	.byte	0x9e
	.4byte	0x28
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa0
	.4byte	0x53d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.4byte	.LVL14
	.4byte	0x5dd
	.4byte	0x4c0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x12
	.4byte	.LVL17
	.4byte	0x5e6
	.uleb128 0x12
	.4byte	.LVL20
	.4byte	0x5e6
	.uleb128 0x10
	.4byte	.LVL23
	.4byte	0x5fc
	.4byte	0x4eb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x607
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x50
	.byte	0x1c
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x48
	.4byte	0x54d
	.uleb128 0x16
	.4byte	0x76
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x1
	.byte	0xb9
	.4byte	0x21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ba
	.uleb128 0xc
	.string	"str"
	.byte	0x1
	.byte	0xb9
	.4byte	0x97
	.4byte	.LLST5
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x1
	.byte	0xba
	.4byte	0x414
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0xbb
	.4byte	0x68
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LVL27
	.4byte	0x5e6
	.uleb128 0x13
	.4byte	.LVL30
	.4byte	0x612
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x1
	.byte	0xce
	.4byte	0x21
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5dd
	.uleb128 0x12
	.4byte	.LVL32
	.4byte	0x61d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF87
	.4byte	.LASF87
	.uleb128 0x18
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x5
	.byte	0xf
	.uleb128 0x18
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x6
	.byte	0xe8
	.uleb128 0x18
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x7
	.byte	0x21
	.uleb128 0x18
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x6
	.byte	0xd4
	.uleb128 0x18
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x6
	.byte	0xfb
	.uleb128 0x18
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x8
	.byte	0xba
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
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
	.4byte	.LVL10-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 24
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0x3a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x91
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL25-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL16
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xc4
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF82:
	.string	"argon2i_verify"
.LASF71:
	.string	"salt"
.LASF68:
	.string	"outlen"
.LASF33:
	.string	"ARGON2_SALT_PTR_MISMATCH"
.LASF5:
	.string	"size_t"
.LASF52:
	.string	"crypto_pwhash_argon2i_bytes_max"
.LASF10:
	.string	"sizetype"
.LASF81:
	.string	"argon2i_hash_encoded"
.LASF59:
	.string	"crypto_pwhash_argon2i_opslimit_max"
.LASF26:
	.string	"ARGON2_TIME_TOO_SMALL"
.LASF73:
	.string	"memlimit"
.LASF32:
	.string	"ARGON2_PWD_PTR_MISMATCH"
.LASF6:
	.string	"__uint32_t"
.LASF64:
	.string	"crypto_pwhash_argon2i_opslimit_moderate"
.LASF56:
	.string	"crypto_pwhash_argon2i_strbytes"
.LASF4:
	.string	"short int"
.LASF51:
	.string	"crypto_pwhash_argon2i_bytes_min"
.LASF46:
	.string	"ARGON2_DECODING_FAIL"
.LASF61:
	.string	"crypto_pwhash_argon2i_memlimit_max"
.LASF69:
	.string	"passwd"
.LASF58:
	.string	"crypto_pwhash_argon2i_opslimit_min"
.LASF25:
	.string	"ARGON2_SECRET_TOO_LONG"
.LASF85:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/pwhash_argon2i.c"
.LASF49:
	.string	"ARGON2_VERIFY_MISMATCH"
.LASF28:
	.string	"ARGON2_MEMORY_TOO_LITTLE"
.LASF72:
	.string	"opslimit"
.LASF45:
	.string	"ARGON2_ENCODING_FAIL"
.LASF36:
	.string	"ARGON2_MEMORY_ALLOCATION_ERROR"
.LASF34:
	.string	"ARGON2_SECRET_PTR_MISMATCH"
.LASF86:
	.string	"Argon2_ErrorCodes"
.LASF60:
	.string	"crypto_pwhash_argon2i_memlimit_min"
.LASF17:
	.string	"ARGON2_OUTPUT_TOO_LONG"
.LASF14:
	.string	"ARGON2_OK"
.LASF7:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF9:
	.string	"long int"
.LASF24:
	.string	"ARGON2_SECRET_TOO_SHORT"
.LASF39:
	.string	"ARGON2_INCORRECT_PARAMETER"
.LASF30:
	.string	"ARGON2_LANES_TOO_FEW"
.LASF20:
	.string	"ARGON2_SALT_TOO_SHORT"
.LASF75:
	.string	"crypto_pwhash_argon2i_str"
.LASF47:
	.string	"ARGON2_THREAD_FAIL"
.LASF48:
	.string	"ARGON2_DECODING_LENGTH_FAIL"
.LASF3:
	.string	"unsigned char"
.LASF43:
	.string	"ARGON2_THREADS_TOO_MANY"
.LASF37:
	.string	"ARGON2_FREE_MEMORY_CBK_NULL"
.LASF18:
	.string	"ARGON2_PWD_TOO_SHORT"
.LASF70:
	.string	"passwdlen"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF55:
	.string	"crypto_pwhash_argon2i_saltbytes"
.LASF0:
	.string	"unsigned int"
.LASF65:
	.string	"crypto_pwhash_argon2i_memlimit_moderate"
.LASF77:
	.string	"_crypto_pwhash_argon2i_pick_best_implementation"
.LASF66:
	.string	"crypto_pwhash_argon2i_opslimit_sensitive"
.LASF35:
	.string	"ARGON2_AD_PTR_MISMATCH"
.LASF1:
	.string	"short unsigned int"
.LASF50:
	.string	"crypto_pwhash_argon2i_alg_argon2i13"
.LASF76:
	.string	"crypto_pwhash_argon2i_str_verify"
.LASF16:
	.string	"ARGON2_OUTPUT_TOO_SHORT"
.LASF80:
	.string	"randombytes_buf"
.LASF38:
	.string	"ARGON2_ALLOCATE_MEMORY_CBK_NULL"
.LASF67:
	.string	"crypto_pwhash_argon2i_memlimit_sensitive"
.LASF42:
	.string	"ARGON2_THREADS_TOO_FEW"
.LASF29:
	.string	"ARGON2_MEMORY_TOO_MUCH"
.LASF21:
	.string	"ARGON2_SALT_TOO_LONG"
.LASF63:
	.string	"crypto_pwhash_argon2i_memlimit_interactive"
.LASF22:
	.string	"ARGON2_AD_TOO_SHORT"
.LASF41:
	.string	"ARGON2_OUT_PTR_MISMATCH"
.LASF11:
	.string	"long unsigned int"
.LASF19:
	.string	"ARGON2_PWD_TOO_LONG"
.LASF83:
	.string	"argon2_pick_best_implementation"
.LASF54:
	.string	"crypto_pwhash_argon2i_passwd_max"
.LASF87:
	.string	"memset"
.LASF44:
	.string	"ARGON2_MISSING_ARGS"
.LASF62:
	.string	"crypto_pwhash_argon2i_opslimit_interactive"
.LASF79:
	.string	"argon2i_hash_raw"
.LASF74:
	.string	"crypto_pwhash_argon2i"
.LASF40:
	.string	"ARGON2_INCORRECT_TYPE"
.LASF31:
	.string	"ARGON2_LANES_TOO_MANY"
.LASF53:
	.string	"crypto_pwhash_argon2i_passwd_min"
.LASF84:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"ARGON2_TIME_TOO_LARGE"
.LASF15:
	.string	"ARGON2_OUTPUT_PTR_NULL"
.LASF23:
	.string	"ARGON2_AD_TOO_LONG"
.LASF78:
	.string	"__errno"
.LASF57:
	.string	"crypto_pwhash_argon2i_strprefix"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
