	.file	"blake2b-ref.c"
	.text
.Ltext0:
	.section	.text.crypto_generichash_blake2b__init_param,"ax",@progbits
	.literal_position
	.literal .LC0, blake2b_IV
	.align	4
	.global	crypto_generichash_blake2b__init_param
	.type	crypto_generichash_blake2b__init_param, @function
crypto_generichash_blake2b__init_param:
.LFB19:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-ref.c"
	.loc 1 173 0
.LVL0:
	entry	sp, 48
.LCFI0:
.LVL1:
.LBB49:
.LBB50:
	.loc 1 162 0
	movi	a12, 0x165
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL2:
	.loc 1 164 0
	movi.n	a5, 0
	j	.L2
.LVL3:
.L3:
	.loc 1 165 0
	slli	a4, a5, 3
	l32r	a8, .LC0
	add.n	a8, a8, a4
	l32i.n	a9, a8, 4
	l32i.n	a8, a8, 0
	add.n	a4, a2, a4
	s32i.n	a8, a4, 0
	s32i.n	a9, a4, 4
	.loc 1 164 0
	addi.n	a5, a5, 1
.LVL4:
.L2:
	blti	a5, 8, .L3
.LBE50:
.LBE49:
	.loc 1 182 0
	movi.n	a5, 0
.LVL5:
	j	.L4
.LVL6:
.L5:
	.loc 1 183 0 discriminator 3
	slli	a4, a5, 3
.LVL7:
.LBB51:
.LBB52:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 44 0 discriminator 3
	movi.n	a12, 8
	add.n	a11, a3, a4
.LVL8:
	mov.n	a10, sp
	call8	memcpy
.LVL9:
.LBE52:
.LBE51:
	.loc 1 183 0 discriminator 3
	add.n	a8, a2, a4
	l32i.n	a9, a8, 0
	l32i.n	a4, sp, 0
.LVL10:
	xor	a4, a9, a4
	s32i.n	a4, a8, 0
	l32i.n	a9, a8, 4
	l32i.n	a4, sp, 4
	xor	a4, a9, a4
	s32i.n	a4, a8, 4
	.loc 1 182 0 discriminator 3
	addi.n	a5, a5, 1
.LVL11:
.L4:
	.loc 1 182 0 is_stmt 0 discriminator 1
	bltui	a5, 8, .L5
	.loc 1 186 0 is_stmt 1
	movi.n	a2, 0
.LVL12:
	retw.n
.LFE19:
	.size	crypto_generichash_blake2b__init_param, .-crypto_generichash_blake2b__init_param
	.section	.text.crypto_generichash_blake2b__init,"ax",@progbits
	.literal_position
	.literal .LC1, 0, 0
	.align	4
	.global	crypto_generichash_blake2b__init
	.type	crypto_generichash_blake2b__init, @function
crypto_generichash_blake2b__init:
.LFB20:
	.loc 1 190 0
.LVL13:
	entry	sp, 112
.LCFI1:
	extui	a3, a3, 0, 8
	.loc 1 193 0
	addi.n	a8, a3, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L7
	.loc 1 194 0
	call8	abort
.LVL14:
.L7:
	.loc 1 196 0
	s8i	a3, sp, 0
	.loc 1 197 0
	movi.n	a9, 0
	s8i	a9, sp, 1
	.loc 1 198 0
	movi.n	a3, 1
.LVL15:
	s8i	a3, sp, 2
	.loc 1 199 0
	s8i	a3, sp, 3
.LVL16:
.LBB53:
.LBB54:
	.loc 2 99 0
	movi.n	a8, 0
	s32i	a8, sp, 64
	s32i.n	a8, sp, 4
.LVL17:
.LBE54:
.LBE53:
.LBB55:
.LBB56:
	.loc 2 64 0
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	s32i	a12, sp, 72
	s32i	a13, sp, 76
	s32i.n	a8, sp, 8
	l32i	a3, sp, 76
	s32i.n	a3, sp, 12
.LBE56:
.LBE55:
	.loc 1 202 0
	s8i	a9, sp, 16
	.loc 1 203 0
	s8i	a9, sp, 17
	.loc 1 204 0
	s16i	a8, sp, 18
	s16i	a8, sp, 20
	s16i	a8, sp, 22
	s16i	a8, sp, 24
	s16i	a8, sp, 26
	s16i	a8, sp, 28
	s16i	a8, sp, 30
	.loc 1 205 0
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 36
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	.loc 1 206 0
	s32i.n	a8, sp, 48
	s32i.n	a8, sp, 52
	s32i.n	a8, sp, 56
	s32i.n	a8, sp, 60
	.loc 1 207 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init_param
.LVL18:
	.loc 1 208 0
	mov.n	a2, a10
.LVL19:
	retw.n
.LFE20:
	.size	crypto_generichash_blake2b__init, .-crypto_generichash_blake2b__init
	.section	.text.crypto_generichash_blake2b__init_salt_personal,"ax",@progbits
	.literal_position
	.literal .LC2, 0, 0
	.align	4
	.global	crypto_generichash_blake2b__init_salt_personal
	.type	crypto_generichash_blake2b__init_salt_personal, @function
crypto_generichash_blake2b__init_salt_personal:
.LFB21:
	.loc 1 213 0
.LVL20:
	entry	sp, 112
.LCFI2:
	extui	a3, a3, 0, 8
	.loc 1 216 0
	addi.n	a8, a3, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L9
	.loc 1 217 0
	call8	abort
.LVL21:
.L9:
	.loc 1 219 0
	s8i	a3, sp, 0
	.loc 1 220 0
	movi.n	a9, 0
	s8i	a9, sp, 1
	.loc 1 221 0
	movi.n	a3, 1
.LVL22:
	s8i	a3, sp, 2
	.loc 1 222 0
	s8i	a3, sp, 3
.LVL23:
.LBB57:
.LBB58:
	.loc 2 99 0
	movi.n	a8, 0
	s32i	a8, sp, 64
	s32i.n	a8, sp, 4
.LVL24:
.LBE58:
.LBE57:
.LBB59:
.LBB60:
	.loc 2 64 0
	l32r	a10, .LC2
	l32r	a11, .LC2+4
	s32i	a10, sp, 72
	s32i	a11, sp, 76
	s32i.n	a8, sp, 8
	l32i	a3, sp, 76
	s32i.n	a3, sp, 12
.LBE60:
.LBE59:
	.loc 1 225 0
	s8i	a9, sp, 16
	.loc 1 226 0
	s8i	a9, sp, 17
	.loc 1 227 0
	s16i	a8, sp, 18
	s16i	a8, sp, 20
	s16i	a8, sp, 22
	s16i	a8, sp, 24
	s16i	a8, sp, 26
	s16i	a8, sp, 28
	s16i	a8, sp, 30
	.loc 1 228 0
	beq	a4, a8, .L10
.LVL25:
.LBB61:
.LBB62:
	.loc 1 146 0
	movi.n	a12, 0x10
	mov.n	a11, a4
	addi	a10, sp, 32
	call8	memcpy
.LVL26:
	j	.L11
.LVL27:
.L10:
.LBE62:
.LBE61:
	.loc 1 231 0
	movi.n	a3, 0
	s32i.n	a3, sp, 32
	s32i.n	a3, sp, 36
	s32i.n	a3, sp, 40
	s32i.n	a3, sp, 44
.L11:
	.loc 1 233 0
	beqz.n	a5, .L12
.LVL28:
.LBB63:
.LBB64:
	.loc 1 154 0
	movi.n	a12, 0x10
	mov.n	a11, a5
	addi	a10, sp, 48
	call8	memcpy
.LVL29:
	j	.L13
.LVL30:
.L12:
.LBE64:
.LBE63:
	.loc 1 236 0
	movi.n	a3, 0
	s32i.n	a3, sp, 48
	s32i.n	a3, sp, 52
	s32i.n	a3, sp, 56
	s32i.n	a3, sp, 60
.L13:
	.loc 1 238 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init_param
.LVL31:
	.loc 1 239 0
	mov.n	a2, a10
.LVL32:
	retw.n
.LFE21:
	.size	crypto_generichash_blake2b__init_salt_personal, .-crypto_generichash_blake2b__init_salt_personal
	.section	.text.crypto_generichash_blake2b__update,"ax",@progbits
	.literal_position
	.literal .LC6, blake2b_compress
	.align	4
	.global	crypto_generichash_blake2b__update
	.type	crypto_generichash_blake2b__update, @function
crypto_generichash_blake2b__update:
.LFB24:
	.loc 1 327 0
.LVL33:
	entry	sp, 32
.LCFI3:
	.loc 1 328 0
	j	.L15
.LVL34:
.L24:
.LBB65:
	.loc 1 329 0
	l32i	a8, a2, 352
.LVL35:
	.loc 1 330 0
	movi	a6, 0x100
	sub	a6, a6, a8
.LVL36:
	.loc 1 332 0
	mov.n	a7, a6
	bnez.n	a5, .L25
	bnez.n	a5, .L16
	bgeu	a6, a4, .L16
.L25:
	.loc 1 333 0
	addi	a7, a2, 96
	mov.n	a12, a6
	mov.n	a11, a3
	add.n	a10, a7, a8
	call8	memcpy
.LVL37:
	.loc 1 334 0
	l32i	a8, a2, 352
	add.n	a8, a8, a6
	s32i	a8, a2, 352
.LVL38:
.LBB66:
.LBB67:
	.loc 1 91 0
	l32i	a10, a2, 64
	l32i	a9, a2, 68
	movi	a8, 0x80
	add.n	a8, a10, a8
	movi.n	a11, 1
	bltu	a8, a10, .L18
	movi.n	a11, 0
.L18:
	add.n	a9, a11, a9
	mov.n	a11, a8
	mov.n	a10, a9
	s32i	a8, a2, 64
	s32i	a9, a2, 68
	.loc 1 92 0
	movi.n	a9, 1
	movi.n	a8, 0
	bne	a10, a8, .L20
	bne	a10, a8, .L19
	movi	a10, 0x7f
	bgeu	a10, a11, .L19
.L20:
	movi.n	a9, 0
	mov.n	a8, a9
.L19:
	l32i	a11, a2, 72
	l32i	a12, a2, 76
	add.n	a9, a11, a9
	movi.n	a10, 1
	bltu	a9, a11, .L21
	movi.n	a10, 0
.L21:
	add.n	a8, a12, a8
	add.n	a10, a10, a8
	s32i	a9, a2, 72
	s32i	a10, a2, 76
.LBE67:
.LBE66:
	.loc 1 336 0
	l32r	a8, .LC6
	l32i.n	a8, a8, 0
	mov.n	a11, a7
	mov.n	a10, a2
	callx8	a8
.LVL39:
	.loc 1 337 0
	movi	a12, 0x80
	movi	a11, 0xe0
	add.n	a11, a2, a11
	mov.n	a10, a7
	call8	memcpy
.LVL40:
	.loc 1 339 0
	l32i	a7, a2, 352
	addi	a7, a7, -128
	s32i	a7, a2, 352
	.loc 1 340 0
	add.n	a3, a3, a6
.LVL41:
	.loc 1 341 0
	sub	a6, a4, a6
.LVL42:
	movi.n	a7, 1
	bltu	a4, a6, .L22
	movi.n	a7, 0
.L22:
	sub	a7, a5, a7
	mov.n	a4, a6
.LVL43:
	mov.n	a5, a7
.LVL44:
	j	.L15
.LVL45:
.L16:
	.loc 1 344 0
	addi	a10, a2, 96
	mov.n	a12, a4
	mov.n	a11, a3
	add.n	a10, a10, a8
	call8	memcpy
.LVL46:
	.loc 1 345 0
	l32i	a5, a2, 352
.LVL47:
	add.n	a5, a5, a4
	s32i	a5, a2, 352
	.loc 1 346 0
	add.n	a3, a3, a4
.LVL48:
	.loc 1 347 0
	movi.n	a4, 0
	mov.n	a5, a4
.LVL49:
.L15:
.LBE65:
	.loc 1 328 0
	or	a6, a4, a5
	bnez.n	a6, .L24
	.loc 1 352 0
	movi.n	a2, 0
.LVL50:
	retw.n
.LFE24:
	.size	crypto_generichash_blake2b__update, .-crypto_generichash_blake2b__update
	.section	.text.crypto_generichash_blake2b__init_key,"ax",@progbits
	.literal_position
	.literal .LC7, 0, 0
	.literal .LC8, 128, 0
	.align	4
	.global	crypto_generichash_blake2b__init_key
	.type	crypto_generichash_blake2b__init_key, @function
crypto_generichash_blake2b__init_key:
.LFB22:
	.loc 1 244 0
.LVL51:
	entry	sp, 240
.LCFI4:
	extui	a3, a3, 0, 8
	extui	a5, a5, 0, 8
	.loc 1 247 0
	addi.n	a8, a3, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L27
	.loc 1 248 0
	call8	abort
.LVL52:
.L27:
	.loc 1 250 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a4
	movnez	a8, a10, a5
	or	a8, a8, a9
	bne	a8, a10, .L28
	.loc 1 250 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x40
	bgeu	a8, a5, .L29
.L28:
	.loc 1 251 0 is_stmt 1
	call8	abort
.LVL53:
.L29:
	.loc 1 253 0
	s8i	a3, sp, 0
	.loc 1 254 0
	s8i	a5, sp, 1
	.loc 1 255 0
	movi.n	a3, 1
.LVL54:
	s8i	a3, sp, 2
	.loc 1 256 0
	s8i	a3, sp, 3
.LVL55:
.LBB68:
.LBB69:
	.loc 2 99 0
	movi.n	a8, 0
	s32i	a8, sp, 192
	s32i.n	a8, sp, 4
.LVL56:
.LBE69:
.LBE68:
.LBB70:
.LBB71:
	.loc 2 64 0
	l32r	a10, .LC7
	l32r	a11, .LC7+4
	s32i	a10, sp, 200
	s32i	a11, sp, 204
	s32i.n	a8, sp, 8
	l32i	a3, sp, 204
	s32i.n	a3, sp, 12
.LBE71:
.LBE70:
	.loc 1 259 0
	s8i	a8, sp, 16
	.loc 1 260 0
	s8i	a8, sp, 17
	.loc 1 261 0
	s16i	a8, sp, 18
	s16i	a8, sp, 20
	s16i	a8, sp, 22
	s16i	a8, sp, 24
	s16i	a8, sp, 26
	s16i	a8, sp, 28
	s16i	a8, sp, 30
	.loc 1 262 0
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 36
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 44
	.loc 1 263 0
	s32i.n	a8, sp, 48
	s32i.n	a8, sp, 52
	s32i.n	a8, sp, 56
	s32i.n	a8, sp, 60
	.loc 1 265 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init_param
.LVL57:
	bgez	a10, .L30
	.loc 1 266 0
	call8	abort
.LVL58:
.L30:
.LBB72:
	.loc 1 270 0
	movi	a3, 0x80
	mov.n	a12, a3
	movi.n	a11, 0
	addi	a10, sp, 64
	call8	memset
.LVL59:
	.loc 1 271 0
	mov.n	a12, a5
	mov.n	a11, a4
	addi	a10, sp, 64
	call8	memcpy
.LVL60:
	.loc 1 272 0
	l32r	a12, .LC8
	l32r	a13, .LC8+4
	addi	a11, sp, 64
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__update
.LVL61:
	.loc 1 273 0
	mov.n	a11, a3
	addi	a10, sp, 64
	call8	sodium_memzero
.LVL62:
.LBE72:
	.loc 1 276 0
	movi.n	a2, 0
.LVL63:
	retw.n
.LFE22:
	.size	crypto_generichash_blake2b__init_key, .-crypto_generichash_blake2b__init_key
	.section	.text.crypto_generichash_blake2b__init_key_salt_personal,"ax",@progbits
	.literal_position
	.literal .LC9, 0, 0
	.literal .LC10, 128, 0
	.align	4
	.global	crypto_generichash_blake2b__init_key_salt_personal
	.type	crypto_generichash_blake2b__init_key_salt_personal, @function
crypto_generichash_blake2b__init_key_salt_personal:
.LFB23:
	.loc 1 282 0
.LVL64:
	entry	sp, 240
.LCFI5:
	mov.n	a11, a6
	mov.n	a6, a7
.LVL65:
	extui	a3, a3, 0, 8
	extui	a5, a5, 0, 8
	.loc 1 285 0
	addi.n	a8, a3, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L32
	.loc 1 286 0
	call8	abort
.LVL66:
.L32:
	.loc 1 288 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a4
	movnez	a8, a10, a5
	or	a8, a8, a9
	bne	a8, a10, .L33
	.loc 1 288 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x40
	bgeu	a8, a5, .L34
.L33:
	.loc 1 289 0 is_stmt 1
	call8	abort
.LVL67:
.L34:
	.loc 1 291 0
	s8i	a3, sp, 0
	.loc 1 292 0
	s8i	a5, sp, 1
	.loc 1 293 0
	movi.n	a3, 1
.LVL68:
	s8i	a3, sp, 2
	.loc 1 294 0
	s8i	a3, sp, 3
.LVL69:
.LBB73:
.LBB74:
	.loc 2 99 0
	movi.n	a8, 0
	s32i	a8, sp, 192
	s32i.n	a8, sp, 4
.LVL70:
.LBE74:
.LBE73:
.LBB75:
.LBB76:
	.loc 2 64 0
	l32r	a12, .LC9
	l32r	a13, .LC9+4
	s32i	a12, sp, 200
	s32i	a13, sp, 204
	s32i.n	a8, sp, 8
	l32i	a3, sp, 204
	s32i.n	a3, sp, 12
.LBE76:
.LBE75:
	.loc 1 297 0
	s8i	a8, sp, 16
	.loc 1 298 0
	s8i	a8, sp, 17
	.loc 1 299 0
	s16i	a8, sp, 18
	s16i	a8, sp, 20
	s16i	a8, sp, 22
	s16i	a8, sp, 24
	s16i	a8, sp, 26
	s16i	a8, sp, 28
	s16i	a8, sp, 30
	.loc 1 300 0
	beq	a11, a8, .L35
.LVL71:
.LBB77:
.LBB78:
	.loc 1 146 0
	movi.n	a12, 0x10
	addi	a10, sp, 32
	call8	memcpy
.LVL72:
	j	.L36
.LVL73:
.L35:
.LBE78:
.LBE77:
	.loc 1 303 0
	movi.n	a3, 0
	s32i.n	a3, sp, 32
	s32i.n	a3, sp, 36
	s32i.n	a3, sp, 40
	s32i.n	a3, sp, 44
.LVL74:
.L36:
	.loc 1 305 0
	beqz.n	a6, .L37
.LVL75:
.LBB79:
.LBB80:
	.loc 1 154 0
	movi.n	a12, 0x10
	mov.n	a11, a7
	addi	a10, sp, 48
	call8	memcpy
.LVL76:
	j	.L38
.LVL77:
.L37:
.LBE80:
.LBE79:
	.loc 1 308 0
	movi.n	a3, 0
	s32i.n	a3, sp, 48
	s32i.n	a3, sp, 52
	s32i.n	a3, sp, 56
	s32i.n	a3, sp, 60
.L38:
	.loc 1 311 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__init_param
.LVL78:
	bgez	a10, .L39
	.loc 1 312 0
	call8	abort
.LVL79:
.L39:
.LBB81:
	.loc 1 316 0
	movi	a3, 0x80
	mov.n	a12, a3
	movi.n	a11, 0
	addi	a10, sp, 64
	call8	memset
.LVL80:
	.loc 1 317 0
	mov.n	a12, a5
	mov.n	a11, a4
	addi	a10, sp, 64
	call8	memcpy
.LVL81:
	.loc 1 318 0
	l32r	a12, .LC10
	l32r	a13, .LC10+4
	addi	a11, sp, 64
	mov.n	a10, a2
	call8	crypto_generichash_blake2b__update
.LVL82:
	.loc 1 319 0
	mov.n	a11, a3
	addi	a10, sp, 64
	call8	sodium_memzero
.LVL83:
.LBE81:
	.loc 1 322 0
	movi.n	a2, 0
.LVL84:
	retw.n
.LFE23:
	.size	crypto_generichash_blake2b__init_key_salt_personal, .-crypto_generichash_blake2b__init_key_salt_personal
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC15:
	.string	"S->buflen <= BLAKE2B_BLOCKBYTES"
	.align	4
.LC18:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-ref.c"
	.section	.text.crypto_generichash_blake2b__final,"ax",@progbits
	.literal_position
	.literal .LC14, blake2b_compress
	.literal .LC16, .LC15
	.literal .LC17, __func__$2631
	.literal .LC19, .LC18
	.literal .LC20, -1, -1
	.align	4
	.global	crypto_generichash_blake2b__final
	.type	crypto_generichash_blake2b__final, @function
crypto_generichash_blake2b__final:
.LFB25:
	.loc 1 356 0
.LVL85:
	entry	sp, 32
.LCFI6:
	extui	a4, a4, 0, 8
	.loc 1 357 0
	addi.n	a8, a4, -1
	extui	a8, a8, 0, 8
	movi.n	a5, 0x3f
	bgeu	a5, a8, .L41
	.loc 1 358 0
	call8	abort
.LVL86:
.L41:
.LBB82:
.LBB83:
	.loc 1 61 0
	l32i	a9, a2, 80
	l32i	a5, a2, 84
.LBE83:
.LBE82:
	.loc 1 360 0
	or	a8, a9, a5
	bnez.n	a8, .L54
	.loc 1 363 0
	l32i	a5, a2, 352
	movi	a8, 0x80
	bgeu	a8, a5, .L43
.LVL87:
.LBB84:
.LBB85:
	.loc 1 91 0
	l32i	a9, a2, 64
	l32i	a8, a2, 68
	movi	a5, 0x80
	add.n	a5, a9, a5
	movi.n	a10, 1
	bltu	a5, a9, .L44
	movi.n	a10, 0
.L44:
	add.n	a8, a10, a8
	mov.n	a10, a5
	mov.n	a9, a8
	s32i	a5, a2, 64
	s32i	a8, a2, 68
	.loc 1 92 0
	movi.n	a8, 1
	movi.n	a5, 0
	bne	a9, a5, .L46
	bne	a9, a5, .L45
	movi	a9, 0x7f
	bgeu	a9, a10, .L45
.L46:
	movi.n	a8, 0
	mov.n	a5, a8
.L45:
	l32i	a10, a2, 72
	l32i	a11, a2, 76
	add.n	a8, a10, a8
	movi.n	a9, 1
	bltu	a8, a10, .L47
	movi.n	a9, 0
.L47:
	add.n	a5, a11, a5
	add.n	a9, a9, a5
	s32i	a8, a2, 72
	s32i	a9, a2, 76
.LBE85:
.LBE84:
	.loc 1 365 0
	addi	a5, a2, 96
	l32r	a8, .LC14
	l32i.n	a8, a8, 0
	mov.n	a11, a5
	mov.n	a10, a2
	callx8	a8
.LVL88:
	.loc 1 366 0
	l32i	a12, a2, 352
	addi	a12, a12, -128
	s32i	a12, a2, 352
	.loc 1 367 0
	movi	a8, 0x80
	bgeu	a8, a12, .L48
	.loc 1 367 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0x16f
	l32r	a10, .LC19
	call8	__assert_func
.LVL89:
.L48:
	.loc 1 368 0 is_stmt 1
	movi	a11, 0xe0
	add.n	a11, a2, a11
	mov.n	a10, a5
	call8	memcpy
.LVL90:
.L43:
	.loc 1 371 0
	l32i	a10, a2, 352
	mov.n	a13, a10
	movi.n	a12, 0
.LVL91:
.LBB86:
.LBB87:
	.loc 1 91 0
	l32i	a8, a2, 64
	l32i	a9, a2, 68
	add.n	a8, a10, a8
	movi.n	a5, 1
	bltu	a8, a10, .L49
	mov.n	a5, a12
.L49:
	add.n	a9, a5, a9
	mov.n	a14, a8
	s32i	a8, a2, 64
	s32i	a9, a2, 68
	.loc 1 92 0
	movi.n	a11, 1
	movi.n	a8, 0
	bltu	a9, a12, .L50
	bne	a12, a9, .L51
	bltu	a14, a13, .L50
.L51:
	movi.n	a11, 0
	mov.n	a8, a11
.LVL92:
.L50:
	l32i	a5, a2, 72
	l32i	a12, a2, 76
	add.n	a11, a5, a11
	movi.n	a9, 1
	bltu	a11, a5, .L52
	movi.n	a9, 0
.L52:
	add.n	a8, a12, a8
.LVL93:
	add.n	a9, a9, a8
	s32i	a11, a2, 72
	s32i	a9, a2, 76
.LVL94:
.LBE87:
.LBE86:
.LBB88:
.LBB89:
	.loc 1 67 0
	addmi	a5, a2, 0x100
	l8ui	a5, a5, 100
	beqz.n	a5, .L53
.LVL95:
.LBB90:
.LBB91:
	.loc 1 46 0
	l32r	a8, .LC20
	l32r	a9, .LC20+4
	s32i	a8, a2, 88
	s32i	a9, a2, 92
.LVL96:
.L53:
.LBE91:
.LBE90:
	.loc 1 70 0
	l32r	a8, .LC20
	l32r	a9, .LC20+4
	s32i	a8, a2, 80
	s32i	a9, a2, 84
.LBE89:
.LBE88:
	.loc 1 373 0
	addi	a5, a2, 96
	movi	a12, 0x100
	sub	a12, a12, a10
	movi.n	a11, 0
	add.n	a10, a5, a10
.LVL97:
	call8	memset
.LVL98:
	.loc 1 375 0
	l32r	a8, .LC14
	l32i.n	a8, a8, 0
	mov.n	a11, a5
	mov.n	a10, a2
	callx8	a8
.LVL99:
	.loc 1 378 0
	mov.n	a12, a4
	mov.n	a11, a2
	mov.n	a10, a3
	call8	memcpy
.LVL100:
	.loc 1 390 0
	movi.n	a2, 0
.LVL101:
	retw.n
.LVL102:
.L54:
	.loc 1 361 0
	movi.n	a2, -1
.LVL103:
	.loc 1 391 0
	retw.n
.LFE25:
	.size	crypto_generichash_blake2b__final, .-crypto_generichash_blake2b__final
	.section	.text.crypto_generichash_blake2b__blake2b,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b__blake2b
	.type	crypto_generichash_blake2b__blake2b, @function
crypto_generichash_blake2b__blake2b:
.LFB26:
	.loc 1 397 0
.LVL104:
	entry	sp, 48
	s32i.n	a7, sp, 0
	mov	a7, sp
.LCFI7:
	mov.n	a12, a4
	extui	a4, a5, 0, 8
.LVL105:
	l8ui	a13, a7, 48
	movi	a5, -0x1c0
.LVL106:
	add.n	a5, sp, a5
	movsp	sp, a5
	addi	a5, sp, 63
	srli	a5, a5, 6
	slli	a5, a5, 6
	.loc 1 401 0
	movi.n	a10, 1
	movi.n	a8, 0
	mov.n	a11, a8
	moveqz	a11, a10, a3
	l32i.n	a14, a7, 0
	or	a9, a6, a14
	movnez	a8, a10, a9
	.loc 1 401 0
	bnone	a8, a11, .L56
	.loc 1 402 0
	call8	abort
.LVL107:
.L56:
	.loc 1 404 0
	bnez.n	a2, .L57
	.loc 1 405 0
	call8	abort
.LVL108:
.L57:
	.loc 1 407 0
	addi.n	a8, a4, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L58
	.loc 1 408 0
	call8	abort
.LVL109:
.L58:
	.loc 1 410 0
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a10, a9
	moveqz	a10, a8, a12
	moveqz	a8, a9, a13
	.loc 1 410 0
	bnone	a8, a10, .L59
	.loc 1 411 0
	call8	abort
.LVL110:
.L59:
	.loc 1 413 0
	movi.n	a8, 0x40
	bgeu	a8, a13, .L60
	.loc 1 414 0
	call8	abort
.LVL111:
.L60:
	.loc 1 416 0
	beqz.n	a13, .L61
	.loc 1 417 0
	mov.n	a11, a4
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__init_key
.LVL112:
	bgez	a10, .L62
	.loc 1 418 0
	call8	abort
.LVL113:
.L61:
	.loc 1 420 0
	mov.n	a11, a4
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__init
.LVL114:
	bgez	a10, .L62
	.loc 1 421 0
	call8	abort
.LVL115:
.L62:
	.loc 1 424 0
	mov.n	a12, a6
	l32i.n	a13, a7, 0
	mov.n	a11, a3
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__update
.LVL116:
	.loc 1 425 0
	mov.n	a12, a4
	mov.n	a11, a2
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__final
.LVL117:
	.loc 1 427 0
	movi.n	a2, 0
.LVL118:
	retw.n
.LFE26:
	.size	crypto_generichash_blake2b__blake2b, .-crypto_generichash_blake2b__blake2b
	.section	.text.crypto_generichash_blake2b__blake2b_salt_personal,"ax",@progbits
	.align	4
	.global	crypto_generichash_blake2b__blake2b_salt_personal
	.type	crypto_generichash_blake2b__blake2b_salt_personal, @function
crypto_generichash_blake2b__blake2b_salt_personal:
.LFB27:
	.loc 1 433 0
.LVL119:
	entry	sp, 48
	s32i.n	a7, sp, 0
	mov	a7, sp
.LCFI8:
	mov.n	a12, a4
	extui	a4, a5, 0, 8
.LVL120:
	l8ui	a13, a7, 48
	movi	a5, -0x1c0
.LVL121:
	add.n	a5, sp, a5
	movsp	sp, a5
	addi	a5, sp, 63
	srli	a5, a5, 6
	slli	a5, a5, 6
	.loc 1 437 0
	movi.n	a10, 1
	movi.n	a8, 0
	mov.n	a11, a8
	moveqz	a11, a10, a3
	l32i.n	a14, a7, 0
	or	a9, a6, a14
	movnez	a8, a10, a9
	.loc 1 437 0
	bnone	a8, a11, .L64
	.loc 1 438 0
	call8	abort
.LVL122:
.L64:
	.loc 1 440 0
	bnez.n	a2, .L65
	.loc 1 441 0
	call8	abort
.LVL123:
.L65:
	.loc 1 443 0
	addi.n	a8, a4, -1
	extui	a8, a8, 0, 8
	movi.n	a9, 0x3f
	bgeu	a9, a8, .L66
	.loc 1 444 0
	call8	abort
.LVL124:
.L66:
	.loc 1 446 0
	movi.n	a8, 1
	movi.n	a9, 0
	mov.n	a10, a9
	moveqz	a10, a8, a12
	moveqz	a8, a9, a13
	.loc 1 446 0
	bnone	a8, a10, .L67
	.loc 1 447 0
	call8	abort
.LVL125:
.L67:
	.loc 1 449 0
	movi.n	a8, 0x40
	bgeu	a8, a13, .L68
	.loc 1 450 0
	call8	abort
.LVL126:
.L68:
	.loc 1 452 0
	beqz.n	a13, .L69
	.loc 1 453 0
	l32i.n	a15, a7, 56
	l32i.n	a14, a7, 52
	mov.n	a11, a4
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__init_key_salt_personal
.LVL127:
	bgez	a10, .L70
	.loc 1 455 0
	call8	abort
.LVL128:
.L69:
	.loc 1 457 0
	l32i.n	a13, a7, 56
	l32i.n	a12, a7, 52
.LVL129:
	mov.n	a11, a4
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__init_salt_personal
.LVL130:
	bgez	a10, .L70
	.loc 1 458 0
	call8	abort
.LVL131:
.L70:
	.loc 1 461 0
	mov.n	a12, a6
	l32i.n	a13, a7, 0
	mov.n	a11, a3
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__update
.LVL132:
	.loc 1 462 0
	mov.n	a12, a4
	mov.n	a11, a2
	mov.n	a10, a5
	call8	crypto_generichash_blake2b__final
.LVL133:
	.loc 1 464 0
	movi.n	a2, 0
.LVL134:
	retw.n
.LFE27:
	.size	crypto_generichash_blake2b__blake2b_salt_personal, .-crypto_generichash_blake2b__blake2b_salt_personal
	.section	.text.crypto_generichash_blake2b__pick_best_implementation,"ax",@progbits
	.literal_position
	.literal .LC21, blake2b_compress
	.literal .LC22, blake2b_compress_ref
	.align	4
	.global	crypto_generichash_blake2b__pick_best_implementation
	.type	crypto_generichash_blake2b__pick_best_implementation, @function
crypto_generichash_blake2b__pick_best_implementation:
.LFB28:
	.loc 1 468 0
	entry	sp, 32
.LCFI9:
	.loc 1 490 0
	l32r	a9, .LC22
	l32r	a8, .LC21
	s32i.n	a9, a8, 0
	.loc 1 494 0
	movi.n	a2, 0
	retw.n
.LFE28:
	.size	crypto_generichash_blake2b__pick_best_implementation, .-crypto_generichash_blake2b__pick_best_implementation
	.section	.rodata.__func__$2631,"a",@progbits
	.align	4
	.type	__func__$2631, @object
	.size	__func__$2631, 34
__func__$2631:
	.string	"crypto_generichash_blake2b__final"
	.section	.rodata.blake2b_IV,"a",@progbits
	.align	8
	.type	blake2b_IV, @object
	.size	blake2b_IV, 64
blake2b_IV:
	.word	-205731576
	.word	1779033703
	.word	-2067093701
	.word	-1150833019
	.word	-23791573
	.word	1013904242
	.word	1595750129
	.word	-1521486534
	.word	-1377402159
	.word	1359893119
	.word	725511199
	.word	-1694144372
	.word	-79577749
	.word	528734635
	.word	327033209
	.word	1541459225
	.section	.data.blake2b_compress,"aw",@progbits
	.align	4
	.type	blake2b_compress, @object
	.size	blake2b_compress, 4
blake2b_compress:
	.word	blake2b_compress_ref
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI2-.LFB21
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI4-.LFB22
	.byte	0xe
	.uleb128 0xf0
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI5-.LFB23
	.byte	0xe
	.uleb128 0xf0
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI6-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI8-.LFB27
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI9-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_generichash_blake2b.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1059
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xc
	.4byte	.LASF75
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x4
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
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x4
	.byte	0x1e
	.4byte	0x7e
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x6
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x15
	.4byte	0x48
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x39
	.4byte	0x73
	.uleb128 0x7
	.4byte	.LASF20
	.2byte	0x165
	.byte	0x6
	.byte	0x17
	.4byte	0x11b
	.uleb128 0x8
	.string	"h"
	.byte	0x6
	.byte	0x18
	.4byte	0x11b
	.byte	0
	.uleb128 0x8
	.string	"t"
	.byte	0x6
	.byte	0x19
	.4byte	0x12b
	.byte	0x40
	.uleb128 0x8
	.string	"f"
	.byte	0x6
	.byte	0x1a
	.4byte	0x12b
	.byte	0x50
	.uleb128 0x8
	.string	"buf"
	.byte	0x6
	.byte	0x1b
	.4byte	0x13b
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x1c
	.4byte	0x21
	.2byte	0x160
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0x1d
	.4byte	0xa8
	.2byte	0x164
	.byte	0
	.uleb128 0xa
	.4byte	0xbe
	.4byte	0x12b
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0xbe
	.4byte	0x13b
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x14b
	.uleb128 0xb
	.4byte	0x8c
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x1e
	.4byte	0xc9
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x28
	.4byte	0x185
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x40
	.byte	0x7
	.byte	0x36
	.4byte	0x216
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x7
	.byte	0x37
	.4byte	0xa8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x7
	.byte	0x38
	.4byte	0xa8
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x7
	.byte	0x39
	.4byte	0xa8
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x7
	.byte	0x3a
	.4byte	0xa8
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x7
	.byte	0x3b
	.4byte	0x216
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3c
	.4byte	0x226
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3d
	.4byte	0xa8
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3e
	.4byte	0xa8
	.byte	0x11
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3f
	.4byte	0x236
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x7
	.byte	0x40
	.4byte	0x246
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x7
	.byte	0x41
	.4byte	0x246
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x226
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x236
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x246
	.uleb128 0xb
	.4byte	0x8c
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x256
	.uleb128 0xb
	.4byte	0x8c
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x7
	.byte	0x42
	.4byte	0x185
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x7
	.byte	0x44
	.4byte	0x14b
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x7
	.byte	0x61
	.4byte	0x277
	.uleb128 0x5
	.byte	0x4
	.4byte	0x27d
	.uleb128 0x10
	.4byte	0x3a
	.4byte	0x291
	.uleb128 0x11
	.4byte	0x291
	.uleb128 0x11
	.4byte	0x297
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x261
	.uleb128 0x5
	.byte	0x4
	.4byte	0x29d
	.uleb128 0x12
	.4byte	0xa8
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x2c
	.4byte	0x3a
	.byte	0x3
	.4byte	0x2bc
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x2c
	.4byte	0x291
	.byte	0
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x2
	.byte	0x28
	.4byte	0xbe
	.byte	0x3
	.4byte	0x2e1
	.uleb128 0x14
	.string	"src"
	.byte	0x2
	.byte	0x28
	.4byte	0x297
	.uleb128 0x15
	.string	"w"
	.byte	0x2
	.byte	0x2b
	.4byte	0xbe
	.byte	0
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.4byte	0x302
	.uleb128 0x14
	.string	"dst"
	.byte	0x2
	.byte	0x3d
	.4byte	0x302
	.uleb128 0x14
	.string	"w"
	.byte	0x2
	.byte	0x3d
	.4byte	0xbe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa8
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x2
	.byte	0x60
	.byte	0x3
	.4byte	0x329
	.uleb128 0x14
	.string	"dst"
	.byte	0x2
	.byte	0x60
	.4byte	0x302
	.uleb128 0x14
	.string	"w"
	.byte	0x2
	.byte	0x60
	.4byte	0xb3
	.byte	0
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0x90
	.4byte	0x3a
	.byte	0x3
	.4byte	0x34e
	.uleb128 0x14
	.string	"P"
	.byte	0x1
	.byte	0x90
	.4byte	0x34e
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0x90
	.4byte	0x297
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x256
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x1
	.byte	0x97
	.4byte	0x3a
	.byte	0x3
	.4byte	0x379
	.uleb128 0x14
	.string	"P"
	.byte	0x1
	.byte	0x97
	.4byte	0x34e
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.byte	0x98
	.4byte	0x297
	.byte	0
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x53
	.4byte	0x3a
	.byte	0x3
	.4byte	0x39e
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x53
	.4byte	0x291
	.uleb128 0x14
	.string	"inc"
	.byte	0x1
	.byte	0x53
	.4byte	0x39e
	.byte	0
	.uleb128 0x12
	.4byte	0xbe
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0x3b
	.4byte	0x3a
	.byte	0x3
	.4byte	0x3bd
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x3b
	.4byte	0x3bd
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3c3
	.uleb128 0x12
	.4byte	0x261
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x41
	.4byte	0x3a
	.byte	0x3
	.4byte	0x3e2
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x41
	.4byte	0x291
	.byte	0
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0x9f
	.4byte	0x3a
	.byte	0x3
	.4byte	0x405
	.uleb128 0x14
	.string	"S"
	.byte	0x1
	.byte	0x9f
	.4byte	0x291
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.4byte	0x3a
	.byte	0
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.byte	0xac
	.4byte	0x3a
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x19
	.string	"S"
	.byte	0x1
	.byte	0xac
	.4byte	0x291
	.4byte	.LLST0
	.uleb128 0x1a
	.string	"P"
	.byte	0x1
	.byte	0xac
	.4byte	0x4e0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xae
	.4byte	0x21
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.byte	0xaf
	.4byte	0x297
	.uleb128 0x1c
	.4byte	0x3e2
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.byte	0xb2
	.4byte	0x496
	.uleb128 0x1d
	.4byte	0x3f2
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x1f
	.4byte	0x3fb
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0x1029
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x165
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x2bc
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.byte	0xb7
	.uleb128 0x1d
	.4byte	0x2cc
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x23
	.4byte	0x2d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.4byte	.LVL9
	.4byte	0x1032
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4e6
	.uleb128 0x12
	.4byte	0x256
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.byte	0xbd
	.4byte	0x3a
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x596
	.uleb128 0x19
	.string	"S"
	.byte	0x1
	.byte	0xbd
	.4byte	0x291
	.4byte	.LLST4
	.uleb128 0x24
	.4byte	.LASF53
	.byte	0x1
	.byte	0xbd
	.4byte	0x29d
	.4byte	.LLST5
	.uleb128 0x1b
	.string	"P"
	.byte	0x1
	.byte	0xbf
	.4byte	0x596
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.4byte	0x308
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.byte	0xc8
	.4byte	0x551
	.uleb128 0x25
	.4byte	0x31f
	.byte	0
	.uleb128 0x26
	.4byte	0x314
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x9f
	.byte	0
	.uleb128 0x1c
	.4byte	0x2e1
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.byte	0x1
	.byte	0xc9
	.4byte	0x575
	.uleb128 0x25
	.4byte	0x2f8
	.byte	0
	.uleb128 0x26
	.4byte	0x2ed
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.byte	0
	.uleb128 0x27
	.4byte	.LVL14
	.4byte	0x103b
	.uleb128 0x20
	.4byte	.LVL18
	.4byte	0x405
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x256
	.4byte	0x5a6
	.uleb128 0xb
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.byte	0xd3
	.4byte	0x3a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ee
	.uleb128 0x19
	.string	"S"
	.byte	0x1
	.byte	0xd3
	.4byte	0x291
	.4byte	.LLST6
	.uleb128 0x24
	.4byte	.LASF53
	.byte	0x1
	.byte	0xd3
	.4byte	0x29d
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	.LASF36
	.byte	0x1
	.byte	0xd4
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LASF37
	.byte	0x1
	.byte	0xd4
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"P"
	.byte	0x1
	.byte	0xd6
	.4byte	0x596
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.4byte	0x308
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.byte	0x1
	.byte	0xdf
	.4byte	0x626
	.uleb128 0x25
	.4byte	0x31f
	.byte	0
	.uleb128 0x26
	.4byte	0x314
	.uleb128 0x4
	.byte	0x91
	.sleb128 -108
	.byte	0x9f
	.byte	0
	.uleb128 0x1c
	.4byte	0x2e1
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.byte	0x1
	.byte	0xe0
	.4byte	0x64a
	.uleb128 0x25
	.4byte	0x2f8
	.byte	0
	.uleb128 0x26
	.4byte	0x2ed
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.byte	0
	.uleb128 0x1c
	.4byte	0x329
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.byte	0xe5
	.4byte	0x68c
	.uleb128 0x1d
	.4byte	0x342
	.4byte	.LLST8
	.uleb128 0x1d
	.4byte	0x339
	.4byte	.LLST9
	.uleb128 0x20
	.4byte	.LVL26
	.4byte	0x1032
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x354
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.byte	0x1
	.byte	0xea
	.4byte	0x6cd
	.uleb128 0x1d
	.4byte	0x36d
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	0x364
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	0x1032
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL21
	.4byte	0x103b
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0x405
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x146
	.4byte	0x3a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ee
	.uleb128 0x2a
	.string	"S"
	.byte	0x1
	.2byte	0x146
	.4byte	0x291
	.4byte	.LLST12
	.uleb128 0x2a
	.string	"in"
	.byte	0x1
	.2byte	0x146
	.4byte	0x297
	.4byte	.LLST13
	.uleb128 0x2b
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x146
	.4byte	0xbe
	.4byte	.LLST14
	.uleb128 0x1e
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.uleb128 0x2c
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x149
	.4byte	0x21
	.4byte	.LLST15
	.uleb128 0x2c
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x14a
	.4byte	0x21
	.4byte	.LLST16
	.uleb128 0x2d
	.4byte	0x379
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.2byte	0x14f
	.4byte	0x785
	.uleb128 0x1d
	.4byte	0x392
	.4byte	.LLST17
	.uleb128 0x1d
	.4byte	0x389
	.4byte	.LLST18
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL37
	.4byte	0x1032
	.4byte	0x79f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL39
	.4byte	0x7b5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL40
	.4byte	0x1032
	.4byte	0x7d6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 224
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x20
	.4byte	.LVL46
	.4byte	0x1032
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf2
	.4byte	0x3a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x95c
	.uleb128 0x19
	.string	"S"
	.byte	0x1
	.byte	0xf2
	.4byte	0x291
	.4byte	.LLST19
	.uleb128 0x24
	.4byte	.LASF53
	.byte	0x1
	.byte	0xf2
	.4byte	0x29d
	.4byte	.LLST20
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.byte	0xf2
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LASF60
	.byte	0x1
	.byte	0xf3
	.4byte	0x29d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.string	"P"
	.byte	0x1
	.byte	0xf5
	.4byte	0x596
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2d
	.4byte	0x308
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.2byte	0x101
	.4byte	0x86f
	.uleb128 0x25
	.4byte	0x31f
	.byte	0
	.uleb128 0x26
	.4byte	0x314
	.uleb128 0x4
	.byte	0x91
	.sleb128 -236
	.byte	0x9f
	.byte	0
	.uleb128 0x2d
	.4byte	0x2e1
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.2byte	0x102
	.4byte	0x894
	.uleb128 0x25
	.4byte	0x2f8
	.byte	0
	.uleb128 0x26
	.4byte	0x2ed
	.uleb128 0x4
	.byte	0x91
	.sleb128 -232
	.byte	0x9f
	.byte	0
	.uleb128 0x30
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.4byte	0x925
	.uleb128 0x31
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x10d
	.4byte	0x95c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2e
	.4byte	.LVL59
	.4byte	0x1029
	.4byte	0x8d1
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL60
	.4byte	0x1032
	.4byte	0x8f2
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL61
	.4byte	0x6ee
	.4byte	0x90d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x20
	.4byte	.LVL62
	.4byte	0x1046
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL52
	.4byte	0x103b
	.uleb128 0x27
	.4byte	.LVL53
	.4byte	0x103b
	.uleb128 0x2e
	.4byte	.LVL57
	.4byte	0x405
	.4byte	0x952
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x27
	.4byte	.LVL58
	.4byte	0x103b
	.byte	0
	.uleb128 0xa
	.4byte	0xa8
	.4byte	0x96c
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x7f
	.byte	0
	.uleb128 0x29
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x117
	.4byte	0x3a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb87
	.uleb128 0x2a
	.string	"S"
	.byte	0x1
	.2byte	0x117
	.4byte	0x291
	.4byte	.LLST21
	.uleb128 0x2b
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x117
	.4byte	0x29d
	.4byte	.LLST22
	.uleb128 0x32
	.string	"key"
	.byte	0x1
	.2byte	0x118
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x118
	.4byte	0x29d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2b
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x119
	.4byte	0xa1
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x119
	.4byte	0xa1
	.4byte	.LLST24
	.uleb128 0x34
	.string	"P"
	.byte	0x1
	.2byte	0x11b
	.4byte	0x596
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2d
	.4byte	0x308
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.byte	0x1
	.2byte	0x127
	.4byte	0xa13
	.uleb128 0x25
	.4byte	0x31f
	.byte	0
	.uleb128 0x26
	.4byte	0x314
	.uleb128 0x4
	.byte	0x91
	.sleb128 -236
	.byte	0x9f
	.byte	0
	.uleb128 0x2d
	.4byte	0x2e1
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x1
	.2byte	0x128
	.4byte	0xa38
	.uleb128 0x25
	.4byte	0x2f8
	.byte	0
	.uleb128 0x26
	.4byte	0x2ed
	.uleb128 0x4
	.byte	0x91
	.sleb128 -232
	.byte	0x9f
	.byte	0
	.uleb128 0x2d
	.4byte	0x329
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.byte	0x1
	.2byte	0x12d
	.4byte	0xa7c
	.uleb128 0x1d
	.4byte	0x342
	.4byte	.LLST25
	.uleb128 0x1d
	.4byte	0x339
	.4byte	.LLST26
	.uleb128 0x20
	.4byte	.LVL72
	.4byte	0x1032
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x354
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.byte	0x1
	.2byte	0x132
	.4byte	0xabf
	.uleb128 0x1d
	.4byte	0x36d
	.4byte	.LLST27
	.uleb128 0x1d
	.4byte	0x364
	.4byte	.LLST28
	.uleb128 0x20
	.4byte	.LVL76
	.4byte	0x1032
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.4byte	0xb50
	.uleb128 0x31
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x13b
	.4byte	0x95c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2e
	.4byte	.LVL80
	.4byte	0x1029
	.4byte	0xafc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL81
	.4byte	0x1032
	.4byte	0xb1d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL82
	.4byte	0x6ee
	.4byte	0xb38
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x20
	.4byte	.LVL83
	.4byte	0x1046
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL66
	.4byte	0x103b
	.uleb128 0x27
	.4byte	.LVL67
	.4byte	0x103b
	.uleb128 0x2e
	.4byte	.LVL78
	.4byte	0x405
	.4byte	0xb7d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x27
	.4byte	.LVL79
	.4byte	0x103b
	.byte	0
	.uleb128 0x29
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x163
	.4byte	0x3a
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2d
	.uleb128 0x2a
	.string	"S"
	.byte	0x1
	.2byte	0x163
	.4byte	0x291
	.4byte	.LLST29
	.uleb128 0x32
	.string	"out"
	.byte	0x1
	.2byte	0x163
	.4byte	0x302
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x163
	.4byte	0xa8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.4byte	.LASF64
	.4byte	0xd3d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2631
	.uleb128 0x2d
	.4byte	0x3a3
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.2byte	0x168
	.4byte	0xbf8
	.uleb128 0x1d
	.4byte	0x3b3
	.4byte	.LLST30
	.byte	0
	.uleb128 0x2d
	.4byte	0x379
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.2byte	0x16c
	.4byte	0xc1f
	.uleb128 0x1d
	.4byte	0x392
	.4byte	.LLST31
	.uleb128 0x1d
	.4byte	0x389
	.4byte	.LLST32
	.byte	0
	.uleb128 0x2d
	.4byte	0x379
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.2byte	0x173
	.4byte	0xc46
	.uleb128 0x1d
	.4byte	0x392
	.4byte	.LLST33
	.uleb128 0x1d
	.4byte	0x389
	.4byte	.LLST34
	.byte	0
	.uleb128 0x2d
	.4byte	0x3c8
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.byte	0x1
	.2byte	0x174
	.4byte	0xc7d
	.uleb128 0x1d
	.4byte	0x3d8
	.4byte	.LLST35
	.uleb128 0x22
	.4byte	0x2a2
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.byte	0x1
	.byte	0x44
	.uleb128 0x1d
	.4byte	0x2b2
	.4byte	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL86
	.4byte	0x103b
	.uleb128 0x2f
	.4byte	.LVL88
	.4byte	0xc9c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL89
	.4byte	0x1051
	.4byte	0xccc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$2631
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL90
	.4byte	0x1032
	.4byte	0xce7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 224
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL98
	.4byte	0x1029
	.4byte	0xcfa
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL99
	.4byte	0xd10
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL100
	.4byte	0x1032
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x9a
	.4byte	0xd3d
	.uleb128 0xb
	.4byte	0x8c
	.byte	0x21
	.byte	0
	.uleb128 0x12
	.4byte	0xd2d
	.uleb128 0x29
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x18b
	.4byte	0x3a
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe72
	.uleb128 0x2a
	.string	"out"
	.byte	0x1
	.2byte	0x18b
	.4byte	0x302
	.4byte	.LLST37
	.uleb128 0x32
	.string	"in"
	.byte	0x1
	.2byte	0x18b
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"key"
	.byte	0x1
	.2byte	0x18b
	.4byte	0xa1
	.4byte	.LLST38
	.uleb128 0x2b
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x18b
	.4byte	0x29d
	.4byte	.LLST39
	.uleb128 0x33
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x18c
	.4byte	0x39e
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x33
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x18c
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"S"
	.byte	0x1
	.2byte	0x18e
	.4byte	0xe72
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.4byte	.LVL107
	.4byte	0x103b
	.uleb128 0x27
	.4byte	.LVL108
	.4byte	0x103b
	.uleb128 0x27
	.4byte	.LVL109
	.4byte	0x103b
	.uleb128 0x27
	.4byte	.LVL110
	.4byte	0x103b
	.uleb128 0x27
	.4byte	.LVL111
	.4byte	0x103b
	.uleb128 0x2e
	.4byte	.LVL112
	.4byte	0x7ee
	.4byte	0xe0f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL113
	.4byte	0x103b
	.uleb128 0x2e
	.4byte	.LVL114
	.4byte	0x4eb
	.4byte	0xe32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL115
	.4byte	0x103b
	.uleb128 0x2e
	.4byte	.LVL116
	.4byte	0x6ee
	.4byte	0xe55
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL117
	.4byte	0xb87
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x261
	.4byte	0xe82
	.uleb128 0xb
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x3a
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfec
	.uleb128 0x2a
	.string	"out"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x302
	.4byte	.LLST40
	.uleb128 0x32
	.string	"in"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xa1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.string	"key"
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xa1
	.4byte	.LLST41
	.uleb128 0x2b
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1af
	.4byte	0x29d
	.4byte	.LLST42
	.uleb128 0x33
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1af
	.4byte	0x39e
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x33
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x34
	.string	"S"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xe72
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.4byte	.LVL122
	.4byte	0x103b
	.uleb128 0x27
	.4byte	.LVL123
	.4byte	0x103b
	.uleb128 0x27
	.4byte	.LVL124
	.4byte	0x103b
	.uleb128 0x27
	.4byte	.LVL125
	.4byte	0x103b
	.uleb128 0x27
	.4byte	.LVL126
	.4byte	0x103b
	.uleb128 0x2e
	.4byte	.LVL127
	.4byte	0x96c
	.4byte	0xf7b
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.4byte	.LVL128
	.4byte	0x103b
	.uleb128 0x2e
	.4byte	.LVL130
	.4byte	0x5a6
	.4byte	0xfac
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x27
	.4byte	.LVL131
	.4byte	0x103b
	.uleb128 0x2e
	.4byte	.LVL132
	.4byte	0x6ee
	.4byte	0xfcf
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL133
	.4byte	0xb87
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x3a
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.4byte	.LASF67
	.byte	0x1
	.byte	0x22
	.4byte	0x26c
	.uleb128 0x5
	.byte	0x3
	.4byte	blake2b_compress
	.uleb128 0x37
	.4byte	.LASF68
	.byte	0x1
	.byte	0x24
	.4byte	0x1024
	.uleb128 0x5
	.byte	0x3
	.4byte	blake2b_IV
	.uleb128 0x12
	.4byte	0x11b
	.uleb128 0x38
	.4byte	.LASF69
	.4byte	.LASF69
	.uleb128 0x38
	.4byte	.LASF70
	.4byte	.LASF70
	.uleb128 0x39
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x8
	.byte	0x47
	.uleb128 0x39
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x9
	.byte	0x16
	.uleb128 0x39
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0xa
	.byte	0x29
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x18
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0x91
	.sleb128 -112
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL49
	.4byte	.LFE24
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL36
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x80
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL38
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL51
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL64
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66-1
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67-1
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL72-1
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL64
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL77
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL72-1
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL85
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0x75
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL86
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0x75
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x80
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL91
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0x75
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL94
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0x75
	.sleb128 -96
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL104
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL107-1
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL108-1
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL109-1
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110-1
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL111-1
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL112-1
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL114-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL106
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL119
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120
	.4byte	.LVL122-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL122-1
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL123-1
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL124-1
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL125-1
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL126-1
	.4byte	.LVL126
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL127-1
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL129
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL121
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"salt"
.LASF41:
	.string	"blake2b_set_lastnode"
.LASF3:
	.string	"size_t"
.LASF17:
	.string	"uint64_t"
.LASF4:
	.string	"__uint8_t"
.LASF57:
	.string	"left"
.LASF10:
	.string	"long long unsigned int"
.LASF72:
	.string	"sodium_memzero"
.LASF34:
	.string	"inner_length"
.LASF44:
	.string	"store32_le"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF76:
	.string	"blake2b_constant"
.LASF38:
	.string	"blake2b_param"
.LASF11:
	.string	"long int"
.LASF24:
	.string	"BLAKE2B_SALTBYTES"
.LASF31:
	.string	"leaf_length"
.LASF28:
	.string	"key_length"
.LASF56:
	.string	"inlen"
.LASF7:
	.string	"__uint32_t"
.LASF35:
	.string	"reserved"
.LASF67:
	.string	"blake2b_compress"
.LASF52:
	.string	"crypto_generichash_blake2b__init"
.LASF61:
	.string	"block"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"blake2b_init0"
.LASF13:
	.string	"long unsigned int"
.LASF26:
	.string	"blake2b_param_"
.LASF1:
	.string	"short unsigned int"
.LASF27:
	.string	"digest_length"
.LASF30:
	.string	"depth"
.LASF42:
	.string	"load64_le"
.LASF48:
	.string	"blake2b_is_lastblock"
.LASF77:
	.string	"crypto_generichash_blake2b__pick_best_implementation"
.LASF20:
	.string	"crypto_generichash_blake2b_state"
.LASF55:
	.string	"crypto_generichash_blake2b__update"
.LASF12:
	.string	"sizetype"
.LASF75:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_generichash/blake2b/ref/blake2b-ref.c"
.LASF33:
	.string	"node_depth"
.LASF60:
	.string	"keylen"
.LASF47:
	.string	"blake2b_increment_counter"
.LASF65:
	.string	"crypto_generichash_blake2b__blake2b"
.LASF49:
	.string	"blake2b_set_lastblock"
.LASF9:
	.string	"__uint64_t"
.LASF29:
	.string	"fanout"
.LASF46:
	.string	"blake2b_param_set_personal"
.LASF73:
	.string	"__assert_func"
.LASF5:
	.string	"unsigned char"
.LASF68:
	.string	"blake2b_IV"
.LASF74:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF6:
	.string	"short int"
.LASF21:
	.string	"BLAKE2B_BLOCKBYTES"
.LASF58:
	.string	"fill"
.LASF59:
	.string	"crypto_generichash_blake2b__init_key"
.LASF64:
	.string	"__func__"
.LASF18:
	.string	"buflen"
.LASF16:
	.string	"uint32_t"
.LASF14:
	.string	"char"
.LASF71:
	.string	"abort"
.LASF40:
	.string	"blake2b_compress_fn"
.LASF43:
	.string	"store64_le"
.LASF70:
	.string	"memcpy"
.LASF25:
	.string	"BLAKE2B_PERSONALBYTES"
.LASF19:
	.string	"last_node"
.LASF63:
	.string	"crypto_generichash_blake2b__final"
.LASF37:
	.string	"personal"
.LASF39:
	.string	"blake2b_state"
.LASF69:
	.string	"memset"
.LASF23:
	.string	"BLAKE2B_KEYBYTES"
.LASF15:
	.string	"uint8_t"
.LASF62:
	.string	"crypto_generichash_blake2b__init_key_salt_personal"
.LASF53:
	.string	"outlen"
.LASF54:
	.string	"crypto_generichash_blake2b__init_salt_personal"
.LASF51:
	.string	"crypto_generichash_blake2b__init_param"
.LASF32:
	.string	"node_offset"
.LASF45:
	.string	"blake2b_param_set_salt"
.LASF22:
	.string	"BLAKE2B_OUTBYTES"
.LASF66:
	.string	"crypto_generichash_blake2b__blake2b_salt_personal"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
