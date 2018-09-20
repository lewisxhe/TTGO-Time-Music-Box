	.file	"argon2.c"
	.text
.Ltext0:
	.section	.text.argon2_ctx,"ax",@progbits
	.align	4
	.global	argon2_ctx
	.type	argon2_ctx, @function
argon2_ctx:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.c"
	.loc 1 28 0
.LVL0:
	entry	sp, 80
.LCFI0:
	.loc 1 30 0
	mov.n	a10, a2
	call8	validate_inputs
.LVL1:
	.loc 1 34 0
	bnez.n	a10, .L4
	.loc 1 38 0
	bnei	a3, 1, .L5
	.loc 1 44 0
	l32i.n	a10, a2, 44
.LVL2:
	.loc 1 46 0
	l32i.n	a9, a2, 48
	slli	a8, a9, 3
	bltu	a10, a8, .L3
	.loc 1 44 0
	mov.n	a8, a10
.L3:
.LVL3:
	.loc 1 50 0
	slli	a10, a9, 2
	quou	a8, a8, a10
.LVL4:
	.loc 1 52 0
	mull	a10, a9, a8
	slli	a10, a10, 2
.LVL5:
	.loc 1 54 0
	movi.n	a11, 0
	s32i.n	a11, sp, 0
	.loc 1 55 0
	l32i.n	a11, a2, 40
	s32i.n	a11, sp, 4
	.loc 1 56 0
	s32i.n	a10, sp, 8
	.loc 1 57 0
	s32i.n	a8, sp, 12
	.loc 1 58 0
	slli	a8, a8, 2
.LVL6:
	s32i.n	a8, sp, 16
	.loc 1 59 0
	s32i.n	a9, sp, 20
	.loc 1 60 0
	l32i.n	a8, a2, 52
	s32i.n	a8, sp, 24
	.loc 1 61 0
	s32i.n	a3, sp, 28
	.loc 1 66 0
	mov.n	a11, a2
	mov.n	a10, sp
.LVL7:
	call8	initialize
.LVL8:
	.loc 1 68 0
	bnez.n	a10, .L6
	.loc 1 73 0
	mov.n	a10, sp
.LVL9:
	call8	fill_memory_blocks
.LVL10:
	.loc 1 75 0
	bnez.n	a10, .L7
	.loc 1 80 0
	mov.n	a11, sp
	mov.n	a10, a2
.LVL11:
	call8	finalize
.LVL12:
	.loc 1 82 0
	movi.n	a2, 0
.LVL13:
	retw.n
.LVL14:
.L4:
	.loc 1 35 0
	mov.n	a2, a10
.LVL15:
	retw.n
.LVL16:
.L5:
	.loc 1 39 0
	movi.n	a2, -0x1a
.LVL17:
	retw.n
.LVL18:
.L6:
	.loc 1 69 0
	mov.n	a2, a10
.LVL19:
	retw.n
.LVL20:
.L7:
	.loc 1 76 0
	mov.n	a2, a10
.LVL21:
	.loc 1 83 0
	retw.n
.LFE0:
	.size	argon2_ctx, .-argon2_ctx
	.section	.text.argon2_hash,"ax",@progbits
	.align	4
	.global	argon2_hash
	.type	argon2_hash, @function
argon2_hash:
.LFB1:
	.loc 1 91 0
.LVL22:
	entry	sp, 112
.LCFI1:
	s32i	a3, sp, 64
	.loc 1 108 0
	l32i	a10, sp, 120
	call8	malloc
.LVL23:
	mov.n	a3, a10
.LVL24:
	.loc 1 109 0
	beqz.n	a10, .L13
	.loc 1 113 0
	s32i.n	a10, sp, 0
	.loc 1 114 0
	l32i	a8, sp, 120
	s32i.n	a8, sp, 4
	.loc 1 115 0
	s32i.n	a5, sp, 8
	.loc 1 116 0
	s32i.n	a6, sp, 12
	.loc 1 117 0
	s32i.n	a7, sp, 16
	.loc 1 118 0
	l32i	a5, sp, 112
.LVL25:
	s32i.n	a5, sp, 20
	.loc 1 119 0
	movi.n	a5, 0
	s32i.n	a5, sp, 24
	.loc 1 120 0
	s32i.n	a5, sp, 28
	.loc 1 121 0
	s32i.n	a5, sp, 32
	.loc 1 122 0
	s32i.n	a5, sp, 36
	.loc 1 123 0
	s32i.n	a2, sp, 40
	.loc 1 124 0
	l32i	a2, sp, 64
.LVL26:
	s32i.n	a2, sp, 44
	.loc 1 125 0
	s32i.n	a4, sp, 48
	.loc 1 126 0
	s32i.n	a4, sp, 52
	.loc 1 127 0
	movi.n	a4, 4
.LVL27:
	s32i.n	a4, sp, 56
	.loc 1 129 0
	l32i	a11, sp, 132
	mov.n	a10, sp
	call8	argon2_ctx
.LVL28:
	mov.n	a4, a10
.LVL29:
	.loc 1 131 0
	beq	a10, a5, .L10
	.loc 1 132 0
	l32i	a11, sp, 120
	mov.n	a10, a3
	call8	sodium_memzero
.LVL30:
	.loc 1 133 0
	mov.n	a10, a3
	call8	free
.LVL31:
	.loc 1 134 0
	mov.n	a2, a4
	retw.n
.L10:
	.loc 1 138 0
	l32i	a2, sp, 116
	beqz.n	a2, .L11
	.loc 1 139 0
	l32i	a12, sp, 120
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcpy
.LVL32:
.L11:
	.loc 1 143 0
	movi.n	a4, 1
.LVL33:
	movi.n	a5, 0
	mov.n	a6, a5
.LVL34:
	l32i	a2, sp, 124
	movnez	a6, a4, a2
	l32i	a2, sp, 128
	moveqz	a4, a5, a2
	bnone	a6, a4, .L12
	.loc 1 144 0
	l32i	a13, sp, 132
	mov.n	a12, sp
	mov.n	a11, a2
	l32i	a10, sp, 124
	call8	encode_string
.LVL35:
	beq	a10, a5, .L12
	.loc 1 145 0
	l32i	a11, sp, 120
	mov.n	a10, a3
	call8	sodium_memzero
.LVL36:
	.loc 1 146 0
	l32i	a11, sp, 128
	l32i	a10, sp, 124
	call8	sodium_memzero
.LVL37:
	.loc 1 147 0
	mov.n	a10, a3
	call8	free
.LVL38:
	.loc 1 148 0
	movi.n	a2, -0x1f
	retw.n
.L12:
	.loc 1 152 0
	l32i	a11, sp, 120
	mov.n	a10, a3
	call8	sodium_memzero
.LVL39:
	.loc 1 153 0
	mov.n	a10, a3
	call8	free
.LVL40:
	.loc 1 155 0
	movi.n	a2, 0
	retw.n
.LVL41:
.L13:
	.loc 1 110 0
	movi.n	a2, -0x16
.LVL42:
	.loc 1 156 0
	retw.n
.LFE1:
	.size	argon2_hash, .-argon2_hash
	.section	.text.argon2i_hash_encoded,"ax",@progbits
	.align	4
	.global	argon2i_hash_encoded
	.type	argon2i_hash_encoded, @function
argon2i_hash_encoded:
.LFB2:
	.loc 1 164 0
.LVL43:
	entry	sp, 64
.LCFI2:
	mov.n	a15, a7
	.loc 1 165 0
	movi.n	a8, 1
	s32i.n	a8, sp, 20
	l32i	a8, sp, 76
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	s32i.n	a8, sp, 12
	l32i	a8, sp, 68
	s32i.n	a8, sp, 8
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	l32i	a8, sp, 64
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	argon2_hash
.LVL44:
	.loc 1 167 0
	mov.n	a2, a10
.LVL45:
	retw.n
.LFE2:
	.size	argon2i_hash_encoded, .-argon2i_hash_encoded
	.section	.text.argon2i_hash_raw,"ax",@progbits
	.align	4
	.global	argon2i_hash_raw
	.type	argon2i_hash_raw, @function
argon2i_hash_raw:
.LFB3:
	.loc 1 174 0
.LVL46:
	entry	sp, 64
.LCFI3:
	mov.n	a15, a7
	.loc 1 175 0
	movi.n	a8, 1
	s32i.n	a8, sp, 20
	movi.n	a8, 0
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 12
	l32i	a8, sp, 72
	s32i.n	a8, sp, 8
	l32i	a8, sp, 68
	s32i.n	a8, sp, 4
	l32i	a8, sp, 64
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	argon2_hash
.LVL47:
	.loc 1 177 0
	mov.n	a2, a10
.LVL48:
	retw.n
.LFE3:
	.size	argon2i_hash_raw, .-argon2i_hash_raw
	.section	.text.argon2_verify,"ax",@progbits
	.align	4
	.global	argon2_verify
	.type	argon2_verify, @function
argon2_verify:
.LFB4:
	.loc 1 182 0
.LVL49:
	entry	sp, 144
.LCFI4:
	s32i	a3, sp, 96
	.loc 1 189 0
	movi.n	a12, 0x3c
	movi.n	a11, 0
	addi	a10, sp, 32
	call8	memset
.LVL50:
	.loc 1 197 0
	mov.n	a10, a2
	call8	strlen
.LVL51:
	mov.n	a3, a10
.LVL52:
	.loc 1 201 0
	s32i	a10, sp, 68
	.loc 1 202 0
	s32i.n	a10, sp, 52
	.loc 1 203 0
	s32i.n	a10, sp, 36
	.loc 1 205 0
	call8	malloc
.LVL53:
	mov.n	a6, a10
	s32i	a10, sp, 64
	.loc 1 206 0
	mov.n	a10, a3
	call8	malloc
.LVL54:
	mov.n	a7, a10
	s32i.n	a10, sp, 48
	.loc 1 207 0
	mov.n	a10, a3
	call8	malloc
.LVL55:
	s32i.n	a10, sp, 32
	.loc 1 208 0
	beqz.n	a10, .L17
	.loc 1 208 0 is_stmt 0 discriminator 1
	beqz.n	a7, .L17
	.loc 1 208 0 discriminator 2
	bnez.n	a6, .L18
.L17:
	.loc 1 209 0 is_stmt 1
	mov.n	a10, a6
	call8	free
.LVL56:
	.loc 1 210 0
	l32i.n	a10, sp, 48
	call8	free
.LVL57:
	.loc 1 211 0
	l32i.n	a10, sp, 32
	call8	free
.LVL58:
	.loc 1 212 0
	movi.n	a2, -0x16
.LVL59:
	retw.n
.LVL60:
.L18:
	.loc 1 214 0
	mov.n	a10, a3
	call8	malloc
.LVL61:
	mov.n	a3, a10
.LVL62:
	.loc 1 215 0
	bnez.n	a10, .L20
	.loc 1 216 0
	mov.n	a10, a6
	call8	free
.LVL63:
	.loc 1 217 0
	l32i.n	a10, sp, 48
	call8	free
.LVL64:
	.loc 1 218 0
	l32i.n	a10, sp, 32
	call8	free
.LVL65:
	.loc 1 219 0
	movi.n	a2, -0x16
.LVL66:
	retw.n
.LVL67:
.L20:
	.loc 1 222 0
	mov.n	a12, a5
	mov.n	a11, a2
	addi	a10, sp, 32
	call8	decode_string
.LVL68:
	mov.n	a2, a10
.LVL69:
	.loc 1 223 0
	beqz.n	a10, .L21
	.loc 1 224 0
	l32i	a10, sp, 64
	call8	free
.LVL70:
	.loc 1 225 0
	l32i.n	a10, sp, 48
	call8	free
.LVL71:
	.loc 1 226 0
	l32i.n	a10, sp, 32
	call8	free
.LVL72:
	.loc 1 227 0
	mov.n	a10, a3
	call8	free
.LVL73:
	.loc 1 228 0
	retw.n
.L21:
	.loc 1 231 0
	s32i.n	a5, sp, 20
	movi.n	a2, 0
.LVL74:
	s32i.n	a2, sp, 16
	s32i.n	a2, sp, 12
	l32i.n	a2, sp, 36
	s32i.n	a2, sp, 8
	s32i.n	a3, sp, 4
	l32i.n	a2, sp, 52
	s32i.n	a2, sp, 0
	l32i.n	a15, sp, 48
	mov.n	a14, a4
	l32i	a13, sp, 96
	l32i	a12, sp, 84
	l32i	a11, sp, 76
	l32i	a10, sp, 72
.LVL75:
	call8	argon2_hash
.LVL76:
	mov.n	a2, a10
.LVL77:
	.loc 1 234 0
	l32i	a10, sp, 64
	call8	free
.LVL78:
	.loc 1 235 0
	l32i.n	a10, sp, 48
	call8	free
.LVL79:
	.loc 1 237 0
	bnez.n	a2, .L23
	.loc 1 237 0 is_stmt 0 discriminator 1
	l32i.n	a12, sp, 36
	l32i.n	a11, sp, 32
	mov.n	a10, a3
	call8	sodium_memcmp
.LVL80:
	bnez.n	a10, .L24
	j	.L22
.L23:
	.loc 1 238 0 is_stmt 1
	movi	a2, -0x23
.LVL81:
	j	.L22
.LVL82:
.L24:
	movi	a2, -0x23
.LVL83:
.L22:
	.loc 1 240 0
	mov.n	a10, a3
	call8	free
.LVL84:
	.loc 1 241 0
	l32i.n	a10, sp, 32
	call8	free
.LVL85:
	.loc 1 244 0
	retw.n
.LFE4:
	.size	argon2_verify, .-argon2_verify
	.section	.text.argon2i_verify,"ax",@progbits
	.align	4
	.global	argon2i_verify
	.type	argon2i_verify, @function
argon2i_verify:
.LFB5:
	.loc 1 248 0
.LVL86:
	entry	sp, 32
.LCFI5:
	.loc 1 249 0
	movi.n	a13, 1
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	argon2_verify
.LVL87:
	.loc 1 250 0
	mov.n	a2, a10
.LVL88:
	retw.n
.LFE5:
	.size	argon2i_verify, .-argon2i_verify
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
	.uleb128 0x50
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
	.uleb128 0x70
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
	.uleb128 0x40
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
	.uleb128 0x40
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
	.uleb128 0x90
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-core.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2-encoding.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbb7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0xc
	.4byte	.LASF118
	.4byte	.LASF119
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x37
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1e
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x39
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd4
	.uleb128 0x7
	.4byte	0xc7
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdf
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x4
	.4byte	0x4c
	.byte	0x5
	.byte	0x4b
	.4byte	0x1c9
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.sleb128 -1
	.uleb128 0xb
	.4byte	.LASF20
	.sleb128 -2
	.uleb128 0xb
	.4byte	.LASF21
	.sleb128 -3
	.uleb128 0xb
	.4byte	.LASF22
	.sleb128 -4
	.uleb128 0xb
	.4byte	.LASF23
	.sleb128 -5
	.uleb128 0xb
	.4byte	.LASF24
	.sleb128 -6
	.uleb128 0xb
	.4byte	.LASF25
	.sleb128 -7
	.uleb128 0xb
	.4byte	.LASF26
	.sleb128 -8
	.uleb128 0xb
	.4byte	.LASF27
	.sleb128 -9
	.uleb128 0xb
	.4byte	.LASF28
	.sleb128 -10
	.uleb128 0xb
	.4byte	.LASF29
	.sleb128 -11
	.uleb128 0xb
	.4byte	.LASF30
	.sleb128 -12
	.uleb128 0xb
	.4byte	.LASF31
	.sleb128 -13
	.uleb128 0xb
	.4byte	.LASF32
	.sleb128 -14
	.uleb128 0xb
	.4byte	.LASF33
	.sleb128 -15
	.uleb128 0xb
	.4byte	.LASF34
	.sleb128 -16
	.uleb128 0xb
	.4byte	.LASF35
	.sleb128 -17
	.uleb128 0xb
	.4byte	.LASF36
	.sleb128 -18
	.uleb128 0xb
	.4byte	.LASF37
	.sleb128 -19
	.uleb128 0xb
	.4byte	.LASF38
	.sleb128 -20
	.uleb128 0xb
	.4byte	.LASF39
	.sleb128 -21
	.uleb128 0xb
	.4byte	.LASF40
	.sleb128 -22
	.uleb128 0xb
	.4byte	.LASF41
	.sleb128 -23
	.uleb128 0xb
	.4byte	.LASF42
	.sleb128 -24
	.uleb128 0xb
	.4byte	.LASF43
	.sleb128 -25
	.uleb128 0xb
	.4byte	.LASF44
	.sleb128 -26
	.uleb128 0xb
	.4byte	.LASF45
	.sleb128 -27
	.uleb128 0xb
	.4byte	.LASF46
	.sleb128 -28
	.uleb128 0xb
	.4byte	.LASF47
	.sleb128 -29
	.uleb128 0xb
	.4byte	.LASF48
	.sleb128 -30
	.uleb128 0xb
	.4byte	.LASF49
	.sleb128 -31
	.uleb128 0xb
	.4byte	.LASF50
	.sleb128 -32
	.uleb128 0xb
	.4byte	.LASF51
	.sleb128 -33
	.uleb128 0xb
	.4byte	.LASF52
	.sleb128 -34
	.uleb128 0xb
	.4byte	.LASF53
	.sleb128 -35
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x3c
	.byte	0x5
	.byte	0xa3
	.4byte	0x289
	.uleb128 0xd
	.string	"out"
	.byte	0x5
	.byte	0xa4
	.4byte	0x289
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x5
	.byte	0xa5
	.4byte	0x89
	.byte	0x4
	.uleb128 0xd
	.string	"pwd"
	.byte	0x5
	.byte	0xa7
	.4byte	0x289
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x5
	.byte	0xa8
	.4byte	0x89
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5
	.byte	0xaa
	.4byte	0x289
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.byte	0xab
	.4byte	0x89
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.byte	0xad
	.4byte	0x289
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.byte	0xae
	.4byte	0x89
	.byte	0x1c
	.uleb128 0xd
	.string	"ad"
	.byte	0x5
	.byte	0xb0
	.4byte	0x289
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.byte	0xb1
	.4byte	0x89
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x5
	.byte	0xb3
	.4byte	0x89
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x5
	.byte	0xb4
	.4byte	0x89
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.byte	0xb5
	.4byte	0x89
	.byte	0x30
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x5
	.byte	0xb6
	.4byte	0x89
	.byte	0x34
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x5
	.byte	0xb8
	.4byte	0x89
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x5
	.byte	0xb9
	.4byte	0x1c9
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0xbc
	.4byte	0x2b1
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x5
	.byte	0xbc
	.4byte	0x29a
	.uleb128 0xf
	.4byte	.LASF72
	.2byte	0x400
	.byte	0x6
	.byte	0x31
	.4byte	0x2d4
	.uleb128 0xd
	.string	"v"
	.byte	0x6
	.byte	0x32
	.4byte	0x2d4
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x94
	.4byte	0x2e4
	.uleb128 0x11
	.4byte	0xb3
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x6
	.byte	0x33
	.4byte	0x2bc
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0xc
	.byte	0x6
	.byte	0x35
	.4byte	0x320
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x6
	.byte	0x36
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x6
	.byte	0x37
	.4byte	0x320
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x6
	.byte	0x38
	.4byte	0x9f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e4
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x6
	.byte	0x39
	.4byte	0x2ef
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x24
	.byte	0x6
	.byte	0x4c
	.4byte	0x3aa
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x6
	.byte	0x4d
	.4byte	0x3aa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x6
	.byte	0x4e
	.4byte	0x89
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x6
	.byte	0x4f
	.4byte	0x89
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x6
	.byte	0x50
	.4byte	0x89
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x6
	.byte	0x51
	.4byte	0x89
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x6
	.byte	0x52
	.4byte	0x89
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x6
	.byte	0x53
	.4byte	0x89
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x6
	.byte	0x54
	.4byte	0x2b1
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x6
	.byte	0x55
	.4byte	0x4c
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x326
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x6
	.byte	0x56
	.4byte	0x331
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x1b
	.4byte	0x4c
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x488
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.byte	0x1b
	.4byte	0x488
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.byte	0x1b
	.4byte	0x2b1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x1
	.byte	0x1e
	.4byte	0x4c
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x1
	.byte	0x1f
	.4byte	0x89
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x1
	.byte	0x1f
	.4byte	0x89
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0x20
	.4byte	0x3b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0xb2f
	.4byte	0x440
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0xb3a
	.4byte	0x45b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL10
	.4byte	0xb45
	.4byte	0x470
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0xb50
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x28f
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x1
	.byte	0x56
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x69f
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x56
	.4byte	0x69f
	.4byte	.LLST4
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x56
	.4byte	0x69f
	.4byte	.LLST5
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x1
	.byte	0x57
	.4byte	0x69f
	.4byte	.LLST6
	.uleb128 0x1a
	.string	"pwd"
	.byte	0x1
	.byte	0x57
	.4byte	0xd9
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x1
	.byte	0x57
	.4byte	0x6a4
	.4byte	.LLST8
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x58
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x1
	.byte	0x58
	.4byte	0x6a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x1
	.byte	0x58
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x1
	.byte	0x59
	.4byte	0x6a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x1
	.byte	0x59
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x1
	.byte	0x59
	.4byte	0x6a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.byte	0x5a
	.4byte	0x2b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x1
	.byte	0x5c
	.4byte	0x28f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x1
	.byte	0x5d
	.4byte	0x4c
	.4byte	.LLST9
	.uleb128 0x1b
	.string	"out"
	.byte	0x1
	.byte	0x5e
	.4byte	0x289
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0xb5b
	.4byte	0x593
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0x3bb
	.4byte	0x5af
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0xb66
	.4byte	0x5ca
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL31
	.4byte	0xb71
	.4byte	0x5de
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL32
	.4byte	0xb7c
	.4byte	0x5ff
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL35
	.4byte	0xb85
	.4byte	0x628
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL36
	.4byte	0xb66
	.4byte	0x643
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL37
	.4byte	0xb66
	.4byte	0x65f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL38
	.4byte	0xb71
	.4byte	0x673
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL39
	.4byte	0xb66
	.4byte	0x68e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL40
	.4byte	0xb71
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x89
	.uleb128 0x7
	.4byte	0x9f
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x1
	.byte	0x9f
	.4byte	0x4c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a5
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9f
	.4byte	0x69f
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9f
	.4byte	0x69f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0xa0
	.4byte	0x69f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"pwd"
	.byte	0x1
	.byte	0xa0
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0xa1
	.4byte	0x6a4
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0xa1
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x1
	.byte	0xa2
	.4byte	0x6a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x1
	.byte	0xa2
	.4byte	0x6a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x1
	.byte	0xa2
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x1
	.byte	0xa3
	.4byte	0x6a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x19
	.4byte	.LVL44
	.4byte	0x48e
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x1
	.byte	0xaa
	.4byte	0x4c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x891
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0xaa
	.4byte	0x69f
	.4byte	.LLST11
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0xaa
	.4byte	0x69f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.byte	0xab
	.4byte	0x69f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"pwd"
	.byte	0x1
	.byte	0xab
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0xac
	.4byte	0x6a4
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0xac
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x1
	.byte	0xac
	.4byte	0x6a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x1
	.byte	0xad
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x1
	.byte	0xad
	.4byte	0x6a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.4byte	.LVL47
	.4byte	0x48e
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.byte	0xb4
	.4byte	0x4c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacb
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.byte	0xb4
	.4byte	0xce
	.4byte	.LLST12
	.uleb128 0x1a
	.string	"pwd"
	.byte	0x1
	.byte	0xb4
	.4byte	0xd9
	.4byte	.LLST13
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0xb4
	.4byte	0x6a4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.byte	0xb5
	.4byte	0x2b1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"ctx"
	.byte	0x1
	.byte	0xb7
	.4byte	0x28f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.string	"out"
	.byte	0x1
	.byte	0xb8
	.4byte	0x289
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x1
	.byte	0xb9
	.4byte	0x4c
	.4byte	.LLST14
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0xba
	.4byte	0x4c
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x1
	.byte	0xbb
	.4byte	0x9f
	.4byte	.LLST16
	.uleb128 0x17
	.4byte	.LVL50
	.4byte	0xb90
	.4byte	0x94b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x17
	.4byte	.LVL51
	.4byte	0xb99
	.4byte	0x95f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL53
	.4byte	0xb5b
	.4byte	0x973
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL54
	.4byte	0xb5b
	.4byte	0x987
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL55
	.4byte	0xb5b
	.4byte	0x99b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL56
	.4byte	0xb71
	.4byte	0x9af
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL57
	.4byte	0xb71
	.uleb128 0x1e
	.4byte	.LVL58
	.4byte	0xb71
	.uleb128 0x17
	.4byte	.LVL61
	.4byte	0xb5b
	.4byte	0x9d5
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL63
	.4byte	0xb71
	.4byte	0x9e9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL64
	.4byte	0xb71
	.uleb128 0x1e
	.4byte	.LVL65
	.4byte	0xb71
	.uleb128 0x17
	.4byte	.LVL68
	.4byte	0xba4
	.4byte	0xa1c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL70
	.4byte	0xb71
	.uleb128 0x1e
	.4byte	.LVL71
	.4byte	0xb71
	.uleb128 0x1e
	.4byte	.LVL72
	.4byte	0xb71
	.uleb128 0x17
	.4byte	.LVL73
	.4byte	0xb71
	.4byte	0xa4b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL76
	.4byte	0x48e
	.4byte	0xa87
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL78
	.4byte	0xb71
	.uleb128 0x1e
	.4byte	.LVL79
	.4byte	0xb71
	.uleb128 0x17
	.4byte	.LVL80
	.4byte	0xbaf
	.4byte	0xaad
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL84
	.4byte	0xb71
	.4byte	0xac1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL85
	.4byte	0xb71
	.byte	0
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x1
	.byte	0xf7
	.4byte	0x4c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2f
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.byte	0xf7
	.4byte	0xce
	.4byte	.LLST17
	.uleb128 0x1c
	.string	"pwd"
	.byte	0x1
	.byte	0xf7
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf7
	.4byte	0x6a4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LVL87
	.4byte	0x891
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
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x6
	.byte	0x81
	.uleb128 0x1f
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x6
	.byte	0xa2
	.uleb128 0x1f
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x6
	.byte	0xc6
	.uleb128 0x1f
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x6
	.byte	0xaf
	.uleb128 0x1f
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x7
	.byte	0x65
	.uleb128 0x1f
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x8
	.byte	0x16
	.uleb128 0x1f
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x7
	.byte	0x5a
	.uleb128 0x20
	.4byte	.LASF112
	.4byte	.LASF112
	.uleb128 0x1f
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x9
	.byte	0x14
	.uleb128 0x20
	.4byte	.LASF113
	.4byte	.LASF113
	.uleb128 0x1f
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xa
	.byte	0x21
	.uleb128 0x1f
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0x9
	.byte	0x1f
	.uleb128 0x1f
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x8
	.byte	0x1f
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
	.uleb128 0x1b
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
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
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
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
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL28-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL28-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL25
	.4byte	.LVL28-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL28-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"ARGON2_PWD_TOO_SHORT"
.LASF108:
	.string	"malloc"
.LASF96:
	.string	"encoded"
.LASF56:
	.string	"salt"
.LASF86:
	.string	"print_internals"
.LASF13:
	.string	"size_t"
.LASF107:
	.string	"finalize"
.LASF12:
	.string	"uint64_t"
.LASF98:
	.string	"argon2i_hash_encoded"
.LASF116:
	.string	"sodium_memcmp"
.LASF40:
	.string	"ARGON2_MEMORY_ALLOCATION_ERROR"
.LASF4:
	.string	"__uint8_t"
.LASF103:
	.string	"argon2i_verify"
.LASF85:
	.string	"type"
.LASF45:
	.string	"ARGON2_OUT_PTR_MISMATCH"
.LASF9:
	.string	"long long unsigned int"
.LASF55:
	.string	"pwdlen"
.LASF111:
	.string	"encode_string"
.LASF24:
	.string	"ARGON2_SALT_TOO_SHORT"
.LASF37:
	.string	"ARGON2_SALT_PTR_MISMATCH"
.LASF110:
	.string	"free"
.LASF34:
	.string	"ARGON2_LANES_TOO_FEW"
.LASF33:
	.string	"ARGON2_MEMORY_TOO_MUCH"
.LASF90:
	.string	"instance"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF83:
	.string	"segment_length"
.LASF77:
	.string	"size"
.LASF95:
	.string	"hashlen"
.LASF69:
	.string	"Argon2_i"
.LASF14:
	.string	"long int"
.LASF36:
	.string	"ARGON2_PWD_PTR_MISMATCH"
.LASF112:
	.string	"memcpy"
.LASF35:
	.string	"ARGON2_LANES_TOO_MANY"
.LASF61:
	.string	"t_cost"
.LASF68:
	.string	"Argon2_type"
.LASF48:
	.string	"ARGON2_MISSING_ARGS"
.LASF5:
	.string	"__uint32_t"
.LASF63:
	.string	"lanes"
.LASF93:
	.string	"parallelism"
.LASF94:
	.string	"hash"
.LASF76:
	.string	"memory"
.LASF80:
	.string	"region"
.LASF39:
	.string	"ARGON2_AD_PTR_MISMATCH"
.LASF73:
	.string	"block"
.LASF6:
	.string	"unsigned int"
.LASF31:
	.string	"ARGON2_TIME_TOO_LARGE"
.LASF114:
	.string	"strlen"
.LASF28:
	.string	"ARGON2_SECRET_TOO_SHORT"
.LASF16:
	.string	"long unsigned int"
.LASF81:
	.string	"passes"
.LASF50:
	.string	"ARGON2_DECODING_FAIL"
.LASF47:
	.string	"ARGON2_THREADS_TOO_MANY"
.LASF53:
	.string	"ARGON2_VERIFY_MISMATCH"
.LASF102:
	.string	"encoded_len"
.LASF59:
	.string	"secretlen"
.LASF60:
	.string	"adlen"
.LASF3:
	.string	"short unsigned int"
.LASF100:
	.string	"argon2_verify"
.LASF57:
	.string	"saltlen"
.LASF91:
	.string	"argon2_ctx"
.LASF72:
	.string	"block_"
.LASF84:
	.string	"lane_length"
.LASF75:
	.string	"base"
.LASF58:
	.string	"secret"
.LASF23:
	.string	"ARGON2_PWD_TOO_LONG"
.LASF42:
	.string	"ARGON2_ALLOCATE_MEMORY_CBK_NULL"
.LASF15:
	.string	"sizetype"
.LASF79:
	.string	"Argon2_instance_t"
.LASF44:
	.string	"ARGON2_INCORRECT_TYPE"
.LASF20:
	.string	"ARGON2_OUTPUT_TOO_SHORT"
.LASF26:
	.string	"ARGON2_AD_TOO_SHORT"
.LASF109:
	.string	"sodium_memzero"
.LASF78:
	.string	"block_region"
.LASF8:
	.string	"__uint64_t"
.LASF49:
	.string	"ARGON2_ENCODING_FAIL"
.LASF30:
	.string	"ARGON2_TIME_TOO_SMALL"
.LASF74:
	.string	"block_region_"
.LASF70:
	.string	"argon2_type"
.LASF18:
	.string	"ARGON2_OK"
.LASF1:
	.string	"unsigned char"
.LASF117:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"short int"
.LASF32:
	.string	"ARGON2_MEMORY_TOO_LITTLE"
.LASF46:
	.string	"ARGON2_THREADS_TOO_FEW"
.LASF64:
	.string	"threads"
.LASF92:
	.string	"argon2_hash"
.LASF105:
	.string	"initialize"
.LASF27:
	.string	"ARGON2_AD_TOO_LONG"
.LASF104:
	.string	"validate_inputs"
.LASF29:
	.string	"ARGON2_SECRET_TOO_LONG"
.LASF11:
	.string	"uint32_t"
.LASF119:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\libsodium"
.LASF17:
	.string	"char"
.LASF62:
	.string	"m_cost"
.LASF82:
	.string	"memory_blocks"
.LASF38:
	.string	"ARGON2_SECRET_PTR_MISMATCH"
.LASF67:
	.string	"Argon2_ErrorCodes"
.LASF101:
	.string	"decode_result"
.LASF97:
	.string	"encodedlen"
.LASF88:
	.string	"context"
.LASF51:
	.string	"ARGON2_THREAD_FAIL"
.LASF71:
	.string	"Argon2_Context"
.LASF99:
	.string	"argon2i_hash_raw"
.LASF113:
	.string	"memset"
.LASF115:
	.string	"decode_string"
.LASF10:
	.string	"uint8_t"
.LASF66:
	.string	"argon2_context"
.LASF65:
	.string	"flags"
.LASF21:
	.string	"ARGON2_OUTPUT_TOO_LONG"
.LASF118:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/argon2/argon2.c"
.LASF87:
	.string	"argon2_instance_t"
.LASF19:
	.string	"ARGON2_OUTPUT_PTR_NULL"
.LASF25:
	.string	"ARGON2_SALT_TOO_LONG"
.LASF41:
	.string	"ARGON2_FREE_MEMORY_CBK_NULL"
.LASF54:
	.string	"outlen"
.LASF106:
	.string	"fill_memory_blocks"
.LASF52:
	.string	"ARGON2_DECODING_LENGTH_FAIL"
.LASF89:
	.string	"result"
.LASF43:
	.string	"ARGON2_INCORRECT_PARAMETER"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
