	.file	"open.c"
	.text
.Ltext0:
	.section	.text.crypto_sign_check_S_lt_L,"ax",@progbits
	.literal_position
	.literal .LC0, L$2581
	.align	4
	.type	crypto_sign_check_S_lt_L, @function
crypto_sign_check_S_lt_L:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/open.c"
	.loc 1 16 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 25 0
	movi.n	a12, 0x20
	.loc 1 24 0
	movi.n	a11, 1
	.loc 1 23 0
	movi.n	a13, 0
.LVL2:
.L2:
	.loc 1 28 0 discriminator 1
	addi.n	a12, a12, -1
.LVL3:
	.loc 1 29 0 discriminator 1
	add.n	a8, a2, a12
	l8ui	a9, a8, 0
	l32r	a10, .LC0
	add.n	a10, a10, a12
	l8ui	a8, a10, 0
	sub	a10, a9, a8
	srai	a10, a10, 8
	extui	a11, a11, 0, 8
.LVL4:
	and	a10, a10, a11
	or	a13, a10, a13
.LVL5:
	.loc 1 30 0 discriminator 1
	xor	a9, a9, a8
	addi.n	a9, a9, -1
	srai	a9, a9, 8
	and	a8, a11, a9
	extui	a11, a8, 0, 8
.LVL6:
	.loc 1 31 0 discriminator 1
	bnez.n	a12, .L2
	.loc 1 33 0
	movi.n	a2, 0
.LVL7:
	movi.n	a8, 1
.LVL8:
	moveqz	a2, a8, a13
	.loc 1 34 0
	neg	a2, a2
	retw.n
.LFE0:
	.size	crypto_sign_check_S_lt_L, .-crypto_sign_check_S_lt_L
	.section	.text.small_order,"ax",@progbits
	.literal_position
	.literal .LC1, blacklist$2590
	.align	4
	.type	small_order, @function
small_order:
.LFB1:
	.loc 1 38 0
.LVL9:
	entry	sp, 32
.LCFI1:
.LVL10:
	.loc 1 97 0
	movi.n	a13, 0
	j	.L4
.LVL11:
.L5:
	.loc 1 100 0 discriminator 3
	add.n	a8, a2, a9
	l8ui	a11, a8, 0
	slli	a8, a13, 5
	l32r	a12, .LC1
	add.n	a8, a12, a8
	add.n	a8, a8, a9
	l8ui	a8, a8, 0
	xor	a8, a11, a8
	or	a10, a10, a8
.LVL12:
	.loc 1 99 0 discriminator 3
	addi.n	a9, a9, 1
.LVL13:
	j	.L7
.LVL14:
.L9:
	movi.n	a10, 0
	mov.n	a9, a10
.L7:
.LVL15:
	.loc 1 99 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x1f
	bgeu	a8, a9, .L5
	.loc 1 102 0 is_stmt 1
	beqz.n	a10, .L8
	.loc 1 97 0 discriminator 2
	addi.n	a13, a13, 1
.LVL16:
.L4:
	.loc 1 97 0 is_stmt 0 discriminator 1
	movi.n	a8, 0xb
	bgeu	a8, a13, .L9
	.loc 1 106 0 is_stmt 1
	movi.n	a2, 0
.LVL17:
	retw.n
.LVL18:
.L8:
	.loc 1 103 0
	movi.n	a2, 1
.LVL19:
	.loc 1 107 0
	retw.n
.LFE1:
	.size	small_order, .-small_order
	.section	.text._crypto_sign_ed25519_verify_detached,"ax",@progbits
	.literal_position
	.literal .LC2, 32, 0
	.align	4
	.global	_crypto_sign_ed25519_verify_detached
	.type	_crypto_sign_ed25519_verify_detached, @function
_crypto_sign_ed25519_verify_detached:
.LFB2:
	.loc 1 116 0
.LVL20:
	entry	sp, 640
.LCFI2:
	s32i	a7, sp, 592
.LVL21:
	.loc 1 126 0
	addi	a7, a2, 32
.LVL22:
	mov.n	a10, a7
	call8	crypto_sign_check_S_lt_L
.LVL23:
	bnez.n	a10, .L14
	.loc 1 126 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
	call8	small_order
.LVL24:
	bnez.n	a10, .L15
	.loc 1 134 0 is_stmt 1
	mov.n	a11, a6
	movi	a10, 0x130
	add.n	a10, sp, a10
	call8	crypto_core_curve25519_ref10_ge_frombytes_negate_vartime
.LVL25:
	bnez.n	a10, .L16
	movi.n	a9, 0
	mov.n	a8, a9
	j	.L12
.LVL26:
.L13:
	.loc 1 138 0 discriminator 3
	add.n	a10, a6, a8
	l8ui	a10, a10, 0
	or	a9, a9, a10
.LVL27:
	.loc 1 137 0 discriminator 3
	addi.n	a8, a8, 1
.LVL28:
.L12:
	.loc 1 137 0 is_stmt 0 discriminator 1
	movi.n	a10, 0x1f
	bgeu	a10, a8, .L13
	.loc 1 140 0 is_stmt 1
	beqz.n	a9, .L17
	.loc 1 143 0
	l32i	a11, sp, 592
	mov.n	a10, sp
	call8	_crypto_sign_ed25519_ref10_hinit
.LVL29:
	.loc 1 144 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a2
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL30:
	.loc 1 145 0
	l32r	a12, .LC2
	l32r	a13, .LC2+4
	mov.n	a11, a6
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL31:
	.loc 1 146 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_hash_sha512_update
.LVL32:
	.loc 1 147 0
	movi	a11, 0xd0
	add.n	a11, a11, sp
	mov.n	a10, sp
	call8	crypto_hash_sha512_final
.LVL33:
	.loc 1 148 0
	movi	a10, 0xd0
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_sc_reduce
.LVL34:
	.loc 1 150 0
	mov.n	a13, a7
	movi	a12, 0x130
	add.n	a12, sp, a12
	movi	a11, 0xd0
	add.n	a11, a11, sp
	movi	a10, 0x1d0
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_double_scalarmult_vartime
.LVL35:
	.loc 1 151 0
	movi	a11, 0x1d0
	add.n	a11, a11, sp
	movi	a10, 0x110
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_ge_tobytes
.LVL36:
	.loc 1 153 0
	mov.n	a11, a2
	movi	a10, 0x110
	add.n	a10, a10, sp
	call8	crypto_verify_32
.LVL37:
	mov.n	a3, a10
.LVL38:
	.loc 1 154 0
	movi.n	a12, 0x20
	movi	a11, 0x110
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	sodium_memcmp
.LVL39:
	.loc 1 153 0
	or	a2, a3, a10
.LVL40:
	retw.n
.LVL41:
.L14:
	.loc 1 127 0
	movi.n	a2, -1
.LVL42:
	retw.n
.LVL43:
.L15:
	movi.n	a2, -1
.LVL44:
	retw.n
.LVL45:
.L16:
	.loc 1 135 0
	movi.n	a2, -1
.LVL46:
	retw.n
.LVL47:
.L17:
	.loc 1 141 0
	movi.n	a2, -1
.LVL48:
	.loc 1 155 0
	retw.n
.LFE2:
	.size	_crypto_sign_ed25519_verify_detached, .-_crypto_sign_ed25519_verify_detached
	.section	.text.crypto_sign_ed25519_verify_detached,"ax",@progbits
	.align	4
	.global	crypto_sign_ed25519_verify_detached
	.type	crypto_sign_ed25519_verify_detached, @function
crypto_sign_ed25519_verify_detached:
.LFB3:
	.loc 1 162 0
.LVL49:
	entry	sp, 32
.LCFI3:
	.loc 1 163 0
	movi.n	a15, 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_crypto_sign_ed25519_verify_detached
.LVL50:
	.loc 1 164 0
	mov.n	a2, a10
.LVL51:
	retw.n
.LFE3:
	.size	crypto_sign_ed25519_verify_detached, .-crypto_sign_ed25519_verify_detached
	.section	.text.crypto_sign_ed25519_open,"ax",@progbits
	.literal_position
	.literal .LC4, 0, 0
	.align	4
	.global	crypto_sign_ed25519_open
	.type	crypto_sign_ed25519_open, @function
crypto_sign_ed25519_open:
.LFB4:
	.loc 1 170 0
.LVL52:
	entry	sp, 32
.LCFI4:
	mov.n	a10, a4
	.loc 1 173 0
	addi	a4, a6, -64
.LVL53:
	movi.n	a5, 1
	bltu	a4, a6, .L20
	movi.n	a5, 0
.L20:
	addi.n	a7, a7, -1
	add.n	a5, a5, a7
	mov.n	a7, a4
	bnez.n	a5, .L21
	bnez.n	a5, .L27
	movi	a6, -0x41
.LVL54:
	bltu	a6, a4, .L21
.L27:
	.loc 1 177 0
	addi	a7, a10, 64
	l32i.n	a14, sp, 32
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a7
	call8	crypto_sign_ed25519_verify_detached
.LVL55:
	mov.n	a6, a10
	beqz.n	a10, .L23
	.loc 1 178 0
	mov.n	a12, a4
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL56:
	.loc 1 179 0
	j	.L21
.L23:
	.loc 1 181 0
	beqz.n	a3, .L24
	.loc 1 182 0
	s32i.n	a4, a3, 0
	s32i.n	a5, a3, 4
.L24:
	.loc 1 184 0
	mov.n	a12, a4
	mov.n	a11, a7
	mov.n	a10, a2
	call8	memmove
.LVL57:
	.loc 1 186 0
	j	.L25
.LVL58:
.L21:
	.loc 1 189 0
	beqz.n	a3, .L26
	.loc 1 190 0
	l32r	a4, .LC4
	l32r	a5, .LC4+4
	s32i.n	a4, a3, 0
	s32i.n	a5, a3, 4
	.loc 1 192 0
	movi.n	a6, -1
	j	.L25
.L26:
	movi.n	a6, -1
.L25:
	.loc 1 193 0
	mov.n	a2, a6
.LVL59:
	retw.n
.LFE4:
	.size	crypto_sign_ed25519_open, .-crypto_sign_ed25519_open
	.section	.rodata.blacklist$2590,"a",@progbits
	.align	16
	.type	blacklist$2590, @object
	.size	blacklist$2590, 384
blacklist$2590:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	38
	.byte	-24
	.byte	-107
	.byte	-113
	.byte	-62
	.byte	-78
	.byte	39
	.byte	-80
	.byte	69
	.byte	-61
	.byte	-12
	.byte	-119
	.byte	-14
	.byte	-17
	.byte	-104
	.byte	-16
	.byte	-43
	.byte	-33
	.byte	-84
	.byte	5
	.byte	-45
	.byte	-58
	.byte	51
	.byte	57
	.byte	-79
	.byte	56
	.byte	2
	.byte	-120
	.byte	109
	.byte	83
	.byte	-4
	.byte	5
	.byte	-57
	.byte	23
	.byte	106
	.byte	112
	.byte	61
	.byte	77
	.byte	-40
	.byte	79
	.byte	-70
	.byte	60
	.byte	11
	.byte	118
	.byte	13
	.byte	16
	.byte	103
	.byte	15
	.byte	42
	.byte	32
	.byte	83
	.byte	-6
	.byte	44
	.byte	57
	.byte	-52
	.byte	-58
	.byte	78
	.byte	-57
	.byte	-3
	.byte	119
	.byte	-110
	.byte	-84
	.byte	3
	.byte	122
	.byte	19
	.byte	-24
	.byte	-107
	.byte	-113
	.byte	-62
	.byte	-78
	.byte	39
	.byte	-80
	.byte	69
	.byte	-61
	.byte	-12
	.byte	-119
	.byte	-14
	.byte	-17
	.byte	-104
	.byte	-16
	.byte	-43
	.byte	-33
	.byte	-84
	.byte	5
	.byte	-45
	.byte	-58
	.byte	51
	.byte	57
	.byte	-79
	.byte	56
	.byte	2
	.byte	-120
	.byte	109
	.byte	83
	.byte	-4
	.byte	-123
	.byte	-76
	.byte	23
	.byte	106
	.byte	112
	.byte	61
	.byte	77
	.byte	-40
	.byte	79
	.byte	-70
	.byte	60
	.byte	11
	.byte	118
	.byte	13
	.byte	16
	.byte	103
	.byte	15
	.byte	42
	.byte	32
	.byte	83
	.byte	-6
	.byte	44
	.byte	57
	.byte	-52
	.byte	-58
	.byte	78
	.byte	-57
	.byte	-3
	.byte	119
	.byte	-110
	.byte	-84
	.byte	3
	.byte	-6
	.byte	-20
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	127
	.byte	-19
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	127
	.byte	-18
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	127
	.byte	-39
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-38
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-37
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.section	.rodata.L$2581,"a",@progbits
	.align	4
	.type	L$2581, @object
	.size	L$2581, 32
L$2581:
	.byte	-19
	.byte	-45
	.byte	-11
	.byte	92
	.byte	26
	.byte	99
	.byte	18
	.byte	88
	.byte	-42
	.byte	-100
	.byte	-9
	.byte	-94
	.byte	-34
	.byte	-7
	.byte	-34
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
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
	.uleb128 0x280
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_hash_sha512.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/ed25519_ref10.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_32.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6a0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x3a
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x5a
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2f
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2c
	.4byte	0x4f
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x39
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0xd0
	.byte	0x5
	.byte	0x18
	.4byte	0xf9
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0x19
	.4byte	0xf9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0x1a
	.4byte	0x109
	.byte	0x40
	.uleb128 0x8
	.string	"buf"
	.byte	0x5
	.byte	0x1b
	.4byte	0x119
	.byte	0x50
	.byte	0
	.uleb128 0x9
	.4byte	0x90
	.4byte	0x109
	.uleb128 0xa
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x90
	.4byte	0x119
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x129
	.uleb128 0xa
	.4byte	0xad
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1c
	.4byte	0xc8
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x8
	.4byte	0x13f
	.uleb128 0x9
	.4byte	0x85
	.4byte	0x14f
	.uleb128 0xa
	.4byte	0xad
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.byte	0x78
	.byte	0x6
	.byte	0x44
	.4byte	0x176
	.uleb128 0x8
	.string	"X"
	.byte	0x6
	.byte	0x45
	.4byte	0x134
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0x6
	.byte	0x46
	.4byte	0x134
	.byte	0x28
	.uleb128 0x8
	.string	"Z"
	.byte	0x6
	.byte	0x47
	.4byte	0x134
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x48
	.4byte	0x14f
	.uleb128 0xb
	.byte	0xa0
	.byte	0x6
	.byte	0x4b
	.4byte	0x1b2
	.uleb128 0x8
	.string	"X"
	.byte	0x6
	.byte	0x4c
	.4byte	0x134
	.byte	0
	.uleb128 0x8
	.string	"Y"
	.byte	0x6
	.byte	0x4d
	.4byte	0x134
	.byte	0x28
	.uleb128 0x8
	.string	"Z"
	.byte	0x6
	.byte	0x4e
	.4byte	0x134
	.byte	0x50
	.uleb128 0x8
	.string	"T"
	.byte	0x6
	.byte	0x4f
	.4byte	0x134
	.byte	0x78
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x50
	.4byte	0x181
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0xf
	.4byte	0x5a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21a
	.uleb128 0xd
	.string	"S"
	.byte	0x1
	.byte	0xf
	.4byte	0x21a
	.4byte	.LLST0
	.uleb128 0xe
	.string	"L"
	.byte	0x1
	.byte	0x12
	.4byte	0x235
	.uleb128 0x5
	.byte	0x3
	.4byte	L$2581
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x17
	.4byte	0x3a
	.4byte	.LLST1
	.uleb128 0xf
	.string	"n"
	.byte	0x1
	.byte	0x18
	.4byte	0x3a
	.4byte	.LLST2
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x19
	.4byte	0x61
	.4byte	.LLST3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x220
	.uleb128 0x10
	.4byte	0x3a
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x235
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	0x225
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x25
	.4byte	0x5a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x299
	.uleb128 0xd
	.string	"R"
	.byte	0x1
	.byte	0x25
	.4byte	0x21a
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x28
	.4byte	0x2af
	.uleb128 0x5
	.byte	0x3
	.4byte	blacklist$2590
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.4byte	0x9b
	.4byte	.LLST5
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x5e
	.4byte	0x9b
	.4byte	.LLST6
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x5f
	.4byte	0x3a
	.4byte	.LLST7
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x2af
	.uleb128 0xa
	.4byte	0xad
	.byte	0xb
	.uleb128 0xa
	.4byte	0xad
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	0x299
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6f
	.4byte	0x5a
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d3
	.uleb128 0xd
	.string	"sig"
	.byte	0x1
	.byte	0x6f
	.4byte	0x21a
	.4byte	.LLST8
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x70
	.4byte	0x21a
	.4byte	.LLST9
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x71
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.string	"pk"
	.byte	0x1
	.byte	0x72
	.4byte	0x21a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x73
	.4byte	0x5a
	.4byte	.LLST10
	.uleb128 0xe
	.string	"hs"
	.byte	0x1
	.byte	0x75
	.4byte	0x129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0xe
	.string	"h"
	.byte	0x1
	.byte	0x76
	.4byte	0x4d3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x77
	.4byte	0x225
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x78
	.4byte	0x61
	.4byte	.LLST11
	.uleb128 0xf
	.string	"d"
	.byte	0x1
	.byte	0x79
	.4byte	0x3a
	.4byte	.LLST12
	.uleb128 0xe
	.string	"A"
	.byte	0x1
	.byte	0x7a
	.4byte	0x1b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0xe
	.string	"R"
	.byte	0x1
	.byte	0x7b
	.4byte	0x176
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0x1bd
	.4byte	0x388
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0x23a
	.4byte	0x39c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0x62c
	.4byte	0x3b7
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0x637
	.4byte	0x3d3
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0x642
	.4byte	0x3ee
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL31
	.4byte	0x642
	.4byte	0x409
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0x642
	.4byte	0x424
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL33
	.4byte	0x64d
	.4byte	0x440
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x16
	.4byte	.LVL34
	.4byte	0x658
	.4byte	0x455
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0x663
	.4byte	0x47e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL36
	.4byte	0x66e
	.4byte	0x49a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x16
	.4byte	.LVL37
	.4byte	0x679
	.4byte	0x4b5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL39
	.4byte	0x684
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x3a
	.4byte	0x4e3
	.uleb128 0xa
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x9e
	.4byte	0x5a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x556
	.uleb128 0xd
	.string	"sig"
	.byte	0x1
	.byte	0x9e
	.4byte	0x21a
	.4byte	.LLST13
	.uleb128 0x14
	.string	"m"
	.byte	0x1
	.byte	0x9f
	.4byte	0x21a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa0
	.4byte	0x21
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.string	"pk"
	.byte	0x1
	.byte	0xa1
	.4byte	0x21a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x18
	.4byte	.LVL50
	.4byte	0x2b4
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0xa7
	.4byte	0x5a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x626
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0xa7
	.4byte	0xbb
	.4byte	.LLST14
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa7
	.4byte	0x626
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"sm"
	.byte	0x1
	.byte	0xa8
	.4byte	0x21a
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.byte	0xa8
	.4byte	0x21
	.4byte	.LLST16
	.uleb128 0x14
	.string	"pk"
	.byte	0x1
	.byte	0xa9
	.4byte	0x21a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.4byte	.LASF27
	.byte	0x1
	.byte	0xab
	.4byte	0x21
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0xbc
	.4byte	.L21
	.uleb128 0x16
	.4byte	.LVL55
	.4byte	0x4e3
	.4byte	0x5ea
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 -64
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL56
	.4byte	0x68f
	.4byte	0x609
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL57
	.4byte	0x698
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21
	.uleb128 0x1b
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0x81
	.uleb128 0x1b
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0x2d
	.uleb128 0x1b
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x32
	.uleb128 0x1b
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x6
	.byte	0x9d
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x6
	.byte	0x92
	.uleb128 0x1b
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x6
	.byte	0x7f
	.uleb128 0x1b
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x9
	.byte	0x1f
	.uleb128 0x1c
	.4byte	.LASF48
	.4byte	.LASF48
	.uleb128 0x1b
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0xa
	.byte	0x18
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
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
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL18
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x77
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x77
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x77
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x77
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE2
	.2byte	0x3
	.byte	0x77
	.sleb128 -32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL22
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL52
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55-1
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x77
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL54
	.4byte	.LFE4
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"count"
.LASF26:
	.string	"blacklist"
.LASF42:
	.string	"crypto_verify_32"
.LASF34:
	.string	"smlen"
.LASF13:
	.string	"size_t"
.LASF12:
	.string	"uint64_t"
.LASF43:
	.string	"sodium_memcmp"
.LASF5:
	.string	"__uint8_t"
.LASF0:
	.string	"long long unsigned int"
.LASF20:
	.string	"crypto_hash_sha512_state"
.LASF8:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF18:
	.string	"state"
.LASF14:
	.string	"long int"
.LASF33:
	.string	"mlen_p"
.LASF38:
	.string	"crypto_hash_sha512_final"
.LASF7:
	.string	"unsigned int"
.LASF16:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF27:
	.string	"mlen"
.LASF41:
	.string	"crypto_core_curve25519_ref10_ge_tobytes"
.LASF15:
	.string	"sizetype"
.LASF37:
	.string	"crypto_hash_sha512_update"
.LASF24:
	.string	"crypto_sign_check_S_lt_L"
.LASF22:
	.string	"crypto_core_curve25519_ref10_ge_p2"
.LASF23:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF30:
	.string	"_crypto_sign_ed25519_verify_detached"
.LASF9:
	.string	"__uint64_t"
.LASF47:
	.string	"badsig"
.LASF32:
	.string	"crypto_sign_ed25519_open"
.LASF11:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF21:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF45:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"short int"
.LASF36:
	.string	"_crypto_sign_ed25519_ref10_hinit"
.LASF17:
	.string	"char"
.LASF40:
	.string	"crypto_core_curve25519_ref10_ge_double_scalarmult_vartime"
.LASF6:
	.string	"__int32_t"
.LASF28:
	.string	"prehashed"
.LASF25:
	.string	"small_order"
.LASF31:
	.string	"crypto_sign_ed25519_verify_detached"
.LASF48:
	.string	"memset"
.LASF44:
	.string	"memmove"
.LASF10:
	.string	"uint8_t"
.LASF46:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_sign/ed25519/ref10/open.c"
.LASF39:
	.string	"crypto_core_curve25519_ref10_sc_reduce"
.LASF35:
	.string	"crypto_core_curve25519_ref10_ge_frombytes_negate_vartime"
.LASF29:
	.string	"rcheck"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
