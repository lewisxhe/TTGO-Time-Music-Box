	.file	"pwhash_scryptsalsa208sha256_nosse.c"
	.text
.Ltext0:
	.section	.text.salsa20_8,"ax",@progbits
	.align	4
	.type	salsa20_8, @function
salsa20_8:
.LFB16:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/pwhash_scryptsalsa208sha256_nosse.c"
	.loc 1 115 0
.LVL0:
	entry	sp, 128
.LCFI0:
	mov.n	a7, a2
.LVL1:
.LBB30:
.LBB31:
	.loc 1 47 0
	movi.n	a3, 0
	j	.L2
.LVL2:
.L3:
	.loc 1 48 0
	slli	a2, a3, 2
	add.n	a4, a7, a2
	l32i.n	a4, a4, 0
	add.n	a2, sp, a2
	s32i.n	a4, a2, 0
	.loc 1 47 0
	addi.n	a3, a3, 1
.LVL3:
.L2:
	movi.n	a2, 0xf
	bge	a2, a3, .L3
	movi.n	a2, 0
	s32i	a2, sp, 68
	s32i	a7, sp, 80
	j	.L4
.LVL4:
.L5:
.LBE31:
.LBE30:
	.loc 1 124 0 discriminator 3
	l32i.n	a6, sp, 0
	l32i.n	a3, sp, 48
	add.n	a11, a6, a3
	ssai	25
	src	a2, a11, a11
.LVL5:
	l32i.n	a11, sp, 16
	xor	a11, a2, a11
	.loc 1 125 0 discriminator 3
	add.n	a13, a6, a11
	ssai	23
	src	a2, a13, a13
	l32i.n	a13, sp, 32
	xor	a13, a2, a13
	.loc 1 126 0 discriminator 3
	add.n	a2, a11, a13
	ssai	19
	src	a2, a2, a2
	xor	a2, a3, a2
	s32i	a2, sp, 72
	.loc 1 127 0 discriminator 3
	add.n	a2, a13, a2
	ssai	14
	src	a2, a2, a2
	xor	a6, a6, a2
	.loc 1 129 0 discriminator 3
	l32i.n	a5, sp, 20
	l32i.n	a4, sp, 4
	add.n	a9, a5, a4
	ssai	25
	src	a2, a9, a9
	l32i.n	a9, sp, 36
	xor	a9, a2, a9
	.loc 1 130 0 discriminator 3
	add.n	a3, a5, a9
	ssai	23
	src	a3, a3, a3
	l32i.n	a2, sp, 52
	xor	a2, a3, a2
	s32i	a2, sp, 64
	.loc 1 131 0 discriminator 3
	add.n	a2, a9, a2
	ssai	19
	src	a2, a2, a2
	xor	a2, a4, a2
	.loc 1 132 0 discriminator 3
	l32i	a4, sp, 64
	add.n	a3, a4, a2
	ssai	14
	src	a3, a3, a3
	xor	a5, a5, a3
	.loc 1 134 0 discriminator 3
	l32i.n	a10, sp, 40
	l32i.n	a4, sp, 24
	add.n	a8, a10, a4
	ssai	25
	src	a3, a8, a8
	l32i.n	a8, sp, 56
	xor	a8, a3, a8
	.loc 1 135 0 discriminator 3
	add.n	a15, a10, a8
	ssai	23
	src	a3, a15, a15
	l32i.n	a15, sp, 8
	xor	a15, a3, a15
	.loc 1 136 0 discriminator 3
	add.n	a3, a8, a15
	ssai	19
	src	a3, a3, a3
	xor	a3, a4, a3
	s32i	a3, sp, 76
	.loc 1 137 0 discriminator 3
	add.n	a4, a15, a3
	ssai	14
	src	a3, a4, a4
	xor	a4, a10, a3
	.loc 1 139 0 discriminator 3
	l32i.n	a7, sp, 60
	l32i.n	a3, sp, 44
	add.n	a12, a7, a3
	ssai	25
	src	a3, a12, a12
	l32i.n	a12, sp, 12
	xor	a12, a3, a12
	.loc 1 140 0 discriminator 3
	add.n	a14, a7, a12
	ssai	23
	src	a3, a14, a14
	l32i.n	a14, sp, 28
	xor	a14, a3, a14
	.loc 1 141 0 discriminator 3
	add.n	a10, a12, a14
	ssai	19
	src	a10, a10, a10
	l32i.n	a3, sp, 44
	xor	a10, a3, a10
	.loc 1 142 0 discriminator 3
	add.n	a3, a14, a10
	ssai	14
	src	a3, a3, a3
	xor	a3, a7, a3
	.loc 1 145 0 discriminator 3
	add.n	a7, a6, a12
	ssai	25
	src	a7, a7, a7
	xor	a2, a2, a7
	s32i.n	a2, sp, 4
	.loc 1 146 0 discriminator 3
	add.n	a7, a6, a2
	ssai	23
	src	a7, a7, a7
	xor	a7, a15, a7
	s32i.n	a7, sp, 8
	.loc 1 147 0 discriminator 3
	add.n	a2, a2, a7
	ssai	19
	src	a2, a2, a2
	xor	a2, a12, a2
	s32i.n	a2, sp, 12
	.loc 1 148 0 discriminator 3
	add.n	a2, a7, a2
	ssai	14
	src	a2, a2, a2
	xor	a2, a6, a2
	s32i.n	a2, sp, 0
	.loc 1 150 0 discriminator 3
	add.n	a2, a11, a5
	ssai	25
	src	a2, a2, a2
	l32i	a6, sp, 76
	xor	a2, a6, a2
	s32i.n	a2, sp, 24
	.loc 1 151 0 discriminator 3
	add.n	a6, a5, a2
	ssai	23
	src	a6, a6, a6
	xor	a14, a14, a6
	s32i.n	a14, sp, 28
	.loc 1 152 0 discriminator 3
	add.n	a2, a2, a14
	ssai	19
	src	a2, a2, a2
	xor	a11, a11, a2
	s32i.n	a11, sp, 16
	.loc 1 153 0 discriminator 3
	add.n	a14, a14, a11
	ssai	14
	src	a14, a14, a14
	xor	a5, a5, a14
	s32i.n	a5, sp, 20
	.loc 1 155 0 discriminator 3
	add.n	a2, a9, a4
	ssai	25
	src	a2, a2, a2
	xor	a10, a10, a2
	s32i.n	a10, sp, 44
	.loc 1 156 0 discriminator 3
	add.n	a2, a4, a10
	ssai	23
	src	a2, a2, a2
	xor	a13, a13, a2
	s32i.n	a13, sp, 32
	.loc 1 157 0 discriminator 3
	add.n	a10, a10, a13
	ssai	19
	src	a10, a10, a10
	xor	a9, a9, a10
	s32i.n	a9, sp, 36
	.loc 1 158 0 discriminator 3
	add.n	a9, a13, a9
	ssai	14
	src	a9, a9, a9
	xor	a4, a4, a9
	s32i.n	a4, sp, 40
	.loc 1 160 0 discriminator 3
	add.n	a2, a8, a3
	ssai	25
	src	a2, a2, a2
	l32i	a4, sp, 72
	xor	a2, a4, a2
	s32i.n	a2, sp, 48
	.loc 1 161 0 discriminator 3
	add.n	a4, a3, a2
	ssai	23
	src	a4, a4, a4
	l32i	a5, sp, 64
	xor	a4, a5, a4
	s32i.n	a4, sp, 52
	.loc 1 162 0 discriminator 3
	add.n	a2, a2, a4
	ssai	19
	src	a2, a2, a2
	xor	a8, a8, a2
	s32i.n	a8, sp, 56
	.loc 1 163 0 discriminator 3
	add.n	a8, a4, a8
	ssai	14
	src	a8, a8, a8
	xor	a3, a3, a8
	s32i.n	a3, sp, 60
	.loc 1 121 0 discriminator 3
	l32i	a6, sp, 68
	addi.n	a6, a6, 2
	s32i	a6, sp, 68
.LVL6:
.L4:
	.loc 1 121 0 is_stmt 0 discriminator 1
	l32i	a2, sp, 68
	bltui	a2, 8, .L5
	l32i	a7, sp, 80
	movi.n	a4, 0
	j	.L6
.LVL7:
.L7:
	.loc 1 167 0 is_stmt 1 discriminator 3
	slli	a2, a4, 2
	add.n	a3, a7, a2
	add.n	a2, sp, a2
	l32i.n	a2, a2, 0
	l32i.n	a5, a3, 0
	add.n	a2, a5, a2
	s32i.n	a2, a3, 0
	.loc 1 166 0 discriminator 3
	addi.n	a4, a4, 1
.LVL8:
.L6:
	.loc 1 166 0 is_stmt 0 discriminator 1
	movi.n	a2, 0xf
	bgeu	a2, a4, .L7
	.loc 1 168 0 is_stmt 1
	retw.n
.LFE16:
	.size	salsa20_8, .-salsa20_8
	.section	.text.blockmix_salsa8,"ax",@progbits
	.align	4
	.type	blockmix_salsa8, @function
blockmix_salsa8:
.LFB17:
	.loc 1 178 0
.LVL9:
	entry	sp, 32
.LCFI1:
	.loc 1 182 0
	slli	a9, a5, 7
	.loc 1 183 0
	addi	a9, a9, -64
	.loc 1 182 0
	add.n	a9, a2, a9
.LVL10:
.LBB32:
.LBB33:
	.loc 1 47 0
	movi.n	a7, 0
	j	.L9
.LVL11:
.L10:
	.loc 1 48 0
	slli	a6, a7, 2
	add.n	a8, a9, a6
	l32i.n	a8, a8, 0
	add.n	a6, a4, a6
	s32i.n	a8, a6, 0
	.loc 1 47 0
	addi.n	a7, a7, 1
.LVL12:
.L9:
	movi.n	a6, 0xf
	bge	a6, a7, .L10
	movi.n	a7, 0
.LVL13:
	j	.L11
.LVL14:
.L20:
.LBE33:
.LBE32:
	.loc 1 188 0 discriminator 3
	slli	a12, a7, 6
	add.n	a12, a2, a12
.LVL15:
.LBB34:
.LBB35:
	.loc 1 63 0 discriminator 3
	movi.n	a9, 0
	j	.L12
.LVL16:
.L13:
	.loc 1 64 0
	slli	a8, a9, 2
	add.n	a10, a12, a8
	l32i.n	a10, a10, 0
	add.n	a8, a4, a8
	l32i.n	a11, a8, 0
	xor	a10, a11, a10
	s32i.n	a10, a8, 0
	.loc 1 63 0
	addi.n	a9, a9, 1
.LVL17:
.L12:
	movi.n	a8, 0xf
	bge	a8, a9, .L13
.LBE35:
.LBE34:
	.loc 1 189 0 discriminator 3
	mov.n	a10, a4
	call8	salsa20_8
.LVL18:
	.loc 1 193 0 discriminator 3
	slli	a11, a7, 5
	add.n	a11, a3, a11
.LVL19:
.LBB36:
.LBB37:
	.loc 1 47 0 discriminator 3
	movi.n	a9, 0
	j	.L14
.LVL20:
.L15:
	.loc 1 48 0
	slli	a8, a9, 2
	add.n	a10, a4, a8
	l32i.n	a10, a10, 0
	add.n	a8, a11, a8
	s32i.n	a10, a8, 0
	.loc 1 47 0
	addi.n	a9, a9, 1
.LVL21:
.L14:
	movi.n	a8, 0xf
	bge	a8, a9, .L15
.LBE37:
.LBE36:
	.loc 1 196 0 discriminator 3
	addi.n	a12, a7, 1
	slli	a12, a12, 6
	add.n	a12, a2, a12
.LVL22:
.LBB38:
.LBB39:
	.loc 1 63 0 discriminator 3
	movi.n	a9, 0
.LVL23:
	j	.L16
.LVL24:
.L17:
	.loc 1 64 0
	slli	a8, a9, 2
	add.n	a10, a12, a8
	l32i.n	a10, a10, 0
	add.n	a8, a4, a8
	l32i.n	a11, a8, 0
	xor	a10, a11, a10
	s32i.n	a10, a8, 0
	.loc 1 63 0
	addi.n	a9, a9, 1
.LVL25:
.L16:
	movi.n	a8, 0xf
	bge	a8, a9, .L17
.LBE39:
.LBE38:
	.loc 1 197 0 discriminator 3
	mov.n	a10, a4
	call8	salsa20_8
.LVL26:
	.loc 1 201 0 discriminator 3
	add.n	a10, a7, a6
	slli	a10, a10, 5
	add.n	a10, a3, a10
.LVL27:
.LBB40:
.LBB41:
	.loc 1 47 0 discriminator 3
	movi.n	a8, 0
	j	.L18
.LVL28:
.L19:
	.loc 1 48 0
	slli	a6, a8, 2
	add.n	a9, a4, a6
	l32i.n	a9, a9, 0
	add.n	a6, a10, a6
	s32i.n	a9, a6, 0
	.loc 1 47 0
	addi.n	a8, a8, 1
.LVL29:
.L18:
	movi.n	a6, 0xf
	bge	a6, a8, .L19
.LBE41:
.LBE40:
	.loc 1 186 0 discriminator 3
	addi.n	a7, a7, 2
.LVL30:
.L11:
	.loc 1 186 0 is_stmt 0 discriminator 1
	slli	a6, a5, 1
	bltu	a7, a6, .L20
	.loc 1 204 0 is_stmt 1
	retw.n
.LFE17:
	.size	blockmix_salsa8, .-blockmix_salsa8
	.section	.text.smix,"ax",@progbits
	.literal_position
	.align	4
	.type	smix, @function
smix:
.LFB19:
	.loc 1 228 0
.LVL31:
	entry	sp, 80
.LCFI2:
	s32i.n	a2, sp, 40
	s32i.n	a4, sp, 36
	s32i.n	a5, sp, 32
	s32i.n	a6, sp, 28
	mov.n	a2, a7
.LVL32:
	.loc 1 230 0
	slli	a4, a3, 7
.LVL33:
	s32i.n	a4, sp, 16
	add.n	a4, a7, a4
.LVL34:
	.loc 1 231 0
	slli	a5, a3, 8
	add.n	a5, a7, a5
	s32i.n	a5, sp, 24
.LVL35:
	.loc 1 237 0
	movi.n	a6, 0
.LVL36:
	l32i.n	a10, sp, 40
	j	.L22
.LVL37:
.L23:
	.loc 1 238 0 discriminator 3
	slli	a5, a6, 2
	add.n	a7, a2, a5
	add.n	a5, a10, a5
.LVL38:
.LBB42:
.LBB43:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 83 0 discriminator 3
	l8ui	a8, a5, 0
	l8ui	a9, a5, 1
	s8i	a8, sp, 0
	l8ui	a8, a5, 2
	s8i	a9, sp, 1
	l8ui	a5, a5, 3
.LVL39:
	s8i	a8, sp, 2
	s8i	a5, sp, 3
	.loc 2 84 0 discriminator 3
	l32i.n	a5, sp, 0
.LBE43:
.LBE42:
	.loc 1 238 0 discriminator 3
	s32i.n	a5, a7, 0
	.loc 1 237 0 discriminator 3
	addi.n	a6, a6, 1
.LVL40:
.L22:
	.loc 1 237 0 is_stmt 0 discriminator 1
	slli	a5, a3, 5
	bltu	a6, a5, .L23
	s32i.n	a5, sp, 44
	movi.n	a6, 0
.LVL41:
	mov.n	a7, a6
	j	.L24
.LVL42:
.L31:
	.loc 1 243 0 is_stmt 1 discriminator 3
	mull	a11, a3, a6
	slli	a11, a11, 7
	l32i.n	a5, sp, 28
	add.n	a11, a5, a11
.LVL43:
.LBB44:
.LBB45:
	.loc 1 79 0 discriminator 3
	l32i.n	a8, sp, 16
	srli	a5, a8, 2
.LVL44:
	.loc 1 80 0 discriminator 3
	movi.n	a9, 0
	j	.L25
.LVL45:
.L26:
	.loc 1 81 0
	slli	a8, a9, 2
	add.n	a10, a2, a8
	l32i.n	a10, a10, 0
	add.n	a8, a11, a8
	s32i.n	a10, a8, 0
	.loc 1 80 0
	addi.n	a9, a9, 1
.LVL46:
.L25:
	bltu	a9, a5, .L26
.LBE45:
.LBE44:
	.loc 1 247 0 discriminator 3
	mov.n	a13, a3
	l32i.n	a12, sp, 24
	mov.n	a11, a4
.LVL47:
	mov.n	a10, a2
	call8	blockmix_salsa8
.LVL48:
	.loc 1 250 0 discriminator 3
	addi.n	a11, a6, 1
	mull	a11, a3, a11
	slli	a11, a11, 7
	l32i.n	a9, sp, 28
	add.n	a11, a9, a11
.LVL49:
.LBB46:
.LBB47:
	.loc 1 80 0 discriminator 3
	movi.n	a9, 0
	j	.L28
.LVL50:
.L29:
	.loc 1 81 0
	slli	a8, a9, 2
	add.n	a10, a4, a8
	l32i.n	a10, a10, 0
	add.n	a8, a11, a8
	s32i.n	a10, a8, 0
	.loc 1 80 0
	addi.n	a9, a9, 1
.LVL51:
.L28:
	bltu	a9, a5, .L29
.LBE47:
.LBE46:
	.loc 1 254 0 discriminator 3
	mov.n	a13, a3
	l32i.n	a12, sp, 24
	mov.n	a11, a2
.LVL52:
	mov.n	a10, a4
	call8	blockmix_salsa8
.LVL53:
	.loc 1 241 0 discriminator 3
	addi.n	a8, a6, 2
	movi.n	a5, 1
.LVL54:
	bltu	a8, a6, .L30
	movi.n	a5, 0
.L30:
	add.n	a5, a5, a7
	mov.n	a6, a8
.LVL55:
	mov.n	a7, a5
.LVL56:
.L24:
	.loc 1 241 0 is_stmt 0 discriminator 1
	l32i.n	a5, sp, 32
	bltu	a7, a5, .L31
	bne	a5, a7, .L46
	l32i.n	a8, sp, 36
	bltu	a6, a8, .L31
.L46:
	movi.n	a5, 0
	s32i.n	a5, sp, 20
	mov.n	a7, a5
.LVL57:
	j	.L33
.LVL58:
.L42:
.LBB48:
.LBB49:
	.loc 1 213 0 is_stmt 1
	l32i.n	a6, sp, 16
	add.n	a5, a2, a6
	addi	a5, a5, -64
.LVL59:
	.loc 1 215 0
	l32i.n	a12, a5, 0
.LBE49:
.LBE48:
	.loc 1 260 0
	l32i.n	a8, sp, 36
	addi.n	a6, a8, -1
	and	a12, a6, a12
.LVL60:
	.loc 1 263 0
	mull	a12, a3, a12
.LVL61:
	slli	a12, a12, 7
	l32i.n	a5, sp, 28
.LVL62:
	add.n	a12, a5, a12
.LVL63:
.LBB50:
.LBB51:
	.loc 1 97 0
	l32i.n	a8, sp, 16
	srli	a5, a8, 2
.LVL64:
	.loc 1 98 0
	movi.n	a11, 0
	j	.L36
.LVL65:
.L37:
	.loc 1 99 0
	slli	a8, a11, 2
	add.n	a9, a12, a8
	l32i.n	a9, a9, 0
	add.n	a8, a2, a8
	l32i.n	a10, a8, 0
	xor	a9, a10, a9
	s32i.n	a9, a8, 0
	.loc 1 98 0
	addi.n	a11, a11, 1
.LVL66:
.L36:
	bltu	a11, a5, .L37
.LBE51:
.LBE50:
	.loc 1 265 0 discriminator 3
	mov.n	a13, a3
	l32i.n	a12, sp, 24
.LVL67:
	mov.n	a11, a4
.LVL68:
	mov.n	a10, a2
	call8	blockmix_salsa8
.LVL69:
.LBB52:
.LBB53:
	.loc 1 213 0 discriminator 3
	l32i.n	a9, sp, 16
	add.n	a8, a4, a9
	addi	a8, a8, -64
.LVL70:
	.loc 1 215 0 discriminator 3
	l32i.n	a11, a8, 0
.LBE53:
.LBE52:
	.loc 1 268 0 discriminator 3
	and	a11, a6, a11
.LVL71:
	.loc 1 271 0 discriminator 3
	mull	a11, a3, a11
.LVL72:
	slli	a11, a11, 7
	l32i.n	a6, sp, 28
.LVL73:
	add.n	a11, a6, a11
.LVL74:
.LBB54:
.LBB55:
	.loc 1 98 0 discriminator 3
	movi.n	a10, 0
	j	.L39
.LVL75:
.L40:
	.loc 1 99 0
	slli	a6, a10, 2
	add.n	a8, a11, a6
	l32i.n	a8, a8, 0
	add.n	a6, a4, a6
	l32i.n	a9, a6, 0
	xor	a8, a9, a8
	s32i.n	a8, a6, 0
	.loc 1 98 0
	addi.n	a10, a10, 1
.LVL76:
.L39:
	bltu	a10, a5, .L40
.LBE55:
.LBE54:
	.loc 1 273 0 discriminator 3
	mov.n	a13, a3
	l32i.n	a12, sp, 24
	mov.n	a11, a2
.LVL77:
	mov.n	a10, a4
.LVL78:
	call8	blockmix_salsa8
.LVL79:
	.loc 1 258 0 discriminator 3
	l32i.n	a5, sp, 20
.LVL80:
	addi.n	a6, a5, 2
	movi.n	a5, 1
	l32i.n	a8, sp, 20
	bltu	a6, a8, .L41
	movi.n	a5, 0
.L41:
	add.n	a5, a5, a7
	s32i.n	a6, sp, 20
.LVL81:
	mov.n	a7, a5
.LVL82:
.L33:
	.loc 1 258 0 is_stmt 0 discriminator 1
	l32i.n	a5, sp, 32
	bltu	a7, a5, .L42
	bne	a5, a7, .L47
	l32i.n	a6, sp, 20
	l32i.n	a8, sp, 36
	bltu	a6, a8, .L42
.L47:
	movi.n	a5, 0
	l32i.n	a7, sp, 44
.LVL83:
	l32i.n	a8, sp, 40
	j	.L44
.LVL84:
.L45:
	.loc 1 277 0 is_stmt 1 discriminator 3
	slli	a4, a5, 2
	add.n	a3, a8, a4
	add.n	a4, a2, a4
	l32i.n	a4, a4, 0
.LVL85:
	s32i.n	a4, sp, 0
.LVL86:
.LBB56:
.LBB57:
	.loc 2 99 0 discriminator 3
	srli	a6, a4, 8
	s8i	a4, a3, 0
	s8i	a6, a3, 1
	l8ui	a4, sp, 2
.LVL87:
	s8i	a4, a3, 2
	l8ui	a4, sp, 3
	s8i	a4, a3, 3
.LBE57:
.LBE56:
	.loc 1 276 0 discriminator 3
	addi.n	a5, a5, 1
.LVL88:
.L44:
	.loc 1 276 0 is_stmt 0 discriminator 1
	bltu	a5, a7, .L45
	.loc 1 279 0 is_stmt 1
	retw.n
.LFE19:
	.size	smix, .-smix
	.section	.text.escrypt_kdf_nosse,"ax",@progbits
	.literal_position
	.literal .LC4, 1073741823
	.literal .LC6, 33554431
	.literal .LC7, 16777215
	.literal .LC8, 1, 0
	.align	4
	.global	escrypt_kdf_nosse
	.type	escrypt_kdf_nosse, @function
escrypt_kdf_nosse:
.LFB20:
	.loc 1 296 0
.LVL89:
	entry	sp, 80
.LCFI3:
	s32i.n	a3, sp, 24
	s32i.n	a4, sp, 28
	s32i.n	a5, sp, 32
	s32i.n	a6, sp, 36
	l32i	a6, sp, 80
.LVL90:
	l32i	a5, sp, 84
.LVL91:
	l32i	a3, sp, 88
.LVL92:
	.loc 1 310 0
	l32i	a8, sp, 92
	muluh	a4, a3, a8
.LVL93:
	mull	a7, a3, a8
	bnez.n	a4, .L69
	bnez.n	a4, .L49
	l32r	a4, .LC4
	bgeu	a4, a7, .L49
.L69:
	.loc 1 311 0
	call8	__errno
.LVL94:
	movi.n	a2, 0x1b
.LVL95:
	s32i.n	a2, a10, 0
	.loc 1 312 0
	movi.n	a2, -1
	retw.n
.LVL96:
.L49:
	.loc 1 314 0
	beqz.n	a5, .L71
	.loc 1 315 0
	call8	__errno
.LVL97:
	movi.n	a2, 0x1b
.LVL98:
	s32i.n	a2, a10, 0
	.loc 1 316 0
	movi.n	a2, -1
	retw.n
.LVL99:
.L71:
	.loc 1 318 0
	addi.n	a7, a6, -1
	movi.n	a4, 1
	bltu	a7, a6, .L54
	movi.n	a4, 0
.L54:
	addi.n	a8, a5, -1
.LVL100:
	add.n	a4, a4, a8
	and	a7, a6, a7
	and	a4, a5, a4
	or	a8, a7, a4
	bnez.n	a8, .L55
	.loc 1 318 0 is_stmt 0 discriminator 1
	bnez.n	a5, .L56
	bnez.n	a5, .L55
	bgeui	a6, 2, .L56
.L55:
	.loc 1 319 0 is_stmt 1
	call8	__errno
.LVL101:
	movi.n	a2, 0x16
.LVL102:
	s32i.n	a2, a10, 0
	.loc 1 320 0
	movi.n	a2, -1
	retw.n
.LVL103:
.L56:
	.loc 1 322 0
	movi.n	a4, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a4, a3
	mov.n	a7, a9
	l32i	a9, sp, 92
	movnez	a4, a8, a9
	or	a4, a4, a7
	beq	a4, a8, .L58
	.loc 1 323 0
	call8	__errno
.LVL104:
	movi.n	a2, 0x16
.LVL105:
	s32i.n	a2, a10, 0
	.loc 1 324 0
	movi.n	a2, -1
	retw.n
.LVL106:
.L58:
	.loc 1 326 0
	l32r	a4, .LC6
	l32i	a8, sp, 92
	quou	a4, a4, a8
	bltu	a4, a3, .L59
	.loc 1 326 0 is_stmt 0 discriminator 1
	l32r	a4, .LC7
	bltu	a4, a3, .L59
	.loc 1 330 0 is_stmt 1
	l32r	a4, .LC6
	quou	a4, a4, a3
	.loc 1 328 0
	bnez.n	a5, .L59
	bnez.n	a5, .L60
	bgeu	a4, a6, .L60
.LVL107:
.L59:
	.loc 1 331 0
	call8	__errno
.LVL108:
	movi.n	a2, 0xc
.LVL109:
	s32i.n	a2, a10, 0
	.loc 1 332 0
	movi.n	a2, -1
	retw.n
.LVL110:
.L60:
	.loc 1 336 0
	l32i	a9, sp, 92
	mull	a4, a3, a9
	slli	a4, a4, 7
	s32i.n	a4, sp, 20
.LVL111:
	.loc 1 337 0
	mull	a7, a3, a6
	slli	a7, a7, 7
.LVL112:
	.loc 1 338 0
	add.n	a4, a4, a7
.LVL113:
	.loc 1 339 0
	bgeu	a4, a7, .L62
	.loc 1 340 0
	call8	__errno
.LVL114:
	movi.n	a2, 0xc
.LVL115:
	s32i.n	a2, a10, 0
	.loc 1 341 0
	movi.n	a2, -1
	retw.n
.LVL116:
.L62:
	.loc 1 343 0
	slli	a8, a3, 8
	addi	a8, a8, 64
.LVL117:
	.loc 1 344 0
	add.n	a4, a4, a8
.LVL118:
	.loc 1 345 0
	bgeu	a4, a8, .L63
	.loc 1 346 0
	call8	__errno
.LVL119:
	movi.n	a2, 0xc
.LVL120:
	s32i.n	a2, a10, 0
	.loc 1 347 0
	movi.n	a2, -1
	retw.n
.LVL121:
.L63:
	.loc 1 349 0
	l32i.n	a8, a2, 8
.LVL122:
	bgeu	a8, a4, .L64
	.loc 1 350 0
	mov.n	a10, a2
	call8	free_region
.LVL123:
	bnez.n	a10, .L67
	.loc 1 353 0
	mov.n	a11, a4
	mov.n	a10, a2
	call8	alloc_region
.LVL124:
	beqz.n	a10, .L68
.L64:
	.loc 1 357 0
	l32i.n	a2, a2, 4
.LVL125:
	.loc 1 358 0
	l32i.n	a4, sp, 20
.LVL126:
	add.n	a4, a2, a4
	s32i.n	a4, sp, 16
.LVL127:
	.loc 1 359 0
	add.n	a7, a4, a7
.LVL128:
	.loc 1 362 0
	l32i.n	a4, sp, 20
.LVL129:
	s32i.n	a4, sp, 4
	s32i.n	a2, sp, 0
	l32r	a14, .LC8
	l32r	a15, .LC8+4
	l32i.n	a13, sp, 36
	l32i.n	a12, sp, 32
	l32i.n	a11, sp, 28
	l32i.n	a10, sp, 24
	call8	PBKDF2_SHA256
.LVL130:
	.loc 1 365 0
	movi.n	a4, 0
	j	.L65
.LVL131:
.L66:
	.loc 1 367 0 discriminator 3
	mull	a10, a4, a3
	slli	a10, a10, 7
	mov.n	a15, a7
	l32i.n	a14, sp, 16
	mov.n	a12, a6
	mov.n	a13, a5
	mov.n	a11, a3
	add.n	a10, a2, a10
	call8	smix
.LVL132:
	.loc 1 365 0 discriminator 3
	addi.n	a4, a4, 1
.LVL133:
.L65:
	.loc 1 365 0 is_stmt 0 discriminator 1
	l32i	a8, sp, 92
	bltu	a4, a8, .L66
	.loc 1 371 0 is_stmt 1
	l32i	a3, sp, 100
.LVL134:
	s32i.n	a3, sp, 4
	l32i	a3, sp, 96
	s32i.n	a3, sp, 0
	l32r	a14, .LC8
	l32r	a15, .LC8+4
	l32i.n	a13, sp, 20
	mov.n	a12, a2
	l32i.n	a11, sp, 28
	l32i.n	a10, sp, 24
	call8	PBKDF2_SHA256
.LVL135:
	.loc 1 374 0
	movi.n	a2, 0
.LVL136:
	retw.n
.LVL137:
.L67:
	.loc 1 351 0
	movi.n	a2, -1
.LVL138:
	retw.n
.LVL139:
.L68:
	.loc 1 354 0
	movi.n	a2, -1
.LVL140:
	.loc 1 375 0
	retw.n
.LFE20:
	.size	escrypt_kdf_nosse, .-escrypt_kdf_nosse
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI0-.LFB16
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI1-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI2-.LFB19
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI3-.LFB20
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "d:\\esp32\\esp-idf-v3.1-rc1\\components\\libsodium\\libsodium\\src\\libsodium\\crypto_pwhash\\scryptsalsa208sha256\\crypto_scrypt.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/errno.h"
	.file 8 "d:\\esp32\\esp-idf-v3.1-rc1\\components\\libsodium\\libsodium\\src\\libsodium\\crypto_pwhash\\scryptsalsa208sha256\\pbkdf2-sha256.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0xd8
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x4
	.byte	0x12
	.4byte	0x5a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1a
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x32
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2d
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x39
	.4byte	0x7a
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0xaa
	.4byte	0x85
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x7
	.uleb128 0x8
	.byte	0xc
	.byte	0x6
	.byte	0x34
	.4byte	0x10e
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x35
	.4byte	0x9e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x35
	.4byte	0x9e
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x36
	.4byte	0x2f
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x6
	.byte	0x37
	.4byte	0xe1
	.uleb128 0xa
	.byte	0x40
	.byte	0x6
	.byte	0x39
	.4byte	0x134
	.uleb128 0xb
	.string	"d"
	.byte	0x6
	.byte	0x3a
	.4byte	0x134
	.uleb128 0xb
	.string	"w"
	.byte	0x6
	.byte	0x3b
	.4byte	0x144
	.byte	0
	.uleb128 0xc
	.4byte	0xc4
	.4byte	0x144
	.uleb128 0xd
	.4byte	0x97
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0xb9
	.4byte	0x154
	.uleb128 0xd
	.4byte	0x97
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x3c
	.4byte	0x119
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x3e
	.4byte	0x10e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x176
	.uleb128 0xe
	.4byte	0xae
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x2a
	.byte	0x3
	.4byte	0x1ad
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2a
	.4byte	0x1ad
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x2a
	.4byte	0x1b3
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.4byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x154
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b9
	.uleb128 0xe
	.4byte	0x154
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3a
	.byte	0x3
	.4byte	0x1ea
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3a
	.4byte	0x1ad
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x3a
	.4byte	0x1b3
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.4byte	0x28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x2
	.byte	0x4f
	.4byte	0xb9
	.byte	0x3
	.4byte	0x20f
	.uleb128 0x11
	.string	"src"
	.byte	0x2
	.byte	0x4f
	.4byte	0x170
	.uleb128 0x12
	.string	"w"
	.byte	0x2
	.byte	0x52
	.4byte	0xb9
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4a
	.byte	0x3
	.4byte	0x24f
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4a
	.4byte	0x1ad
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x4a
	.4byte	0x1b3
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x4a
	.4byte	0x2f
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x4c
	.4byte	0x2f
	.uleb128 0x12
	.string	"L"
	.byte	0x1
	.byte	0x4c
	.4byte	0x2f
	.byte	0
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.4byte	0x28f
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5c
	.4byte	0x1ad
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x5c
	.4byte	0x1b3
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x5c
	.4byte	0x2f
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.4byte	0x2f
	.uleb128 0x12
	.string	"L"
	.byte	0x1
	.byte	0x5e
	.4byte	0x2f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd3
	.4byte	0xc4
	.byte	0x3
	.4byte	0x2bb
	.uleb128 0x11
	.string	"B"
	.byte	0x1
	.byte	0xd3
	.4byte	0xda
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xd3
	.4byte	0x2f
	.uleb128 0x12
	.string	"X"
	.byte	0x1
	.byte	0xd5
	.4byte	0x2bb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c1
	.uleb128 0xe
	.4byte	0xb9
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x2
	.byte	0x60
	.byte	0x3
	.4byte	0x2e7
	.uleb128 0x11
	.string	"dst"
	.byte	0x2
	.byte	0x60
	.4byte	0x17b
	.uleb128 0x11
	.string	"w"
	.byte	0x2
	.byte	0x60
	.4byte	0xb9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x72
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x368
	.uleb128 0x15
	.string	"B"
	.byte	0x1
	.byte	0x72
	.4byte	0x368
	.4byte	.LLST0
	.uleb128 0x16
	.string	"X"
	.byte	0x1
	.byte	0x74
	.4byte	0x154
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x75
	.4byte	0x368
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x76
	.4byte	0x2f
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	0x181
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x78
	.uleb128 0x19
	.4byte	0x198
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	0x18d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uleb128 0x1b
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x1c
	.4byte	0x1a3
	.4byte	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb1
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4fe
	.uleb128 0x1d
	.string	"Bin"
	.byte	0x1
	.byte	0xb1
	.4byte	0x2bb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF36
	.byte	0x1
	.byte	0xb1
	.4byte	0x368
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"X"
	.byte	0x1
	.byte	0xb1
	.4byte	0x368
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.byte	0xb1
	.4byte	0x2f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xb3
	.4byte	0x2f
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1f
	.4byte	0x181
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0xb6
	.4byte	0x3f5
	.uleb128 0x19
	.4byte	0x198
	.4byte	.LLST4
	.uleb128 0x1a
	.4byte	0x18d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LBB33
	.4byte	.LBE33-.LBB33
	.uleb128 0x1c
	.4byte	0x1a3
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x1be
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0xbc
	.4byte	0x42e
	.uleb128 0x19
	.4byte	0x1d5
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	0x1ca
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.uleb128 0x1c
	.4byte	0x1e0
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x181
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0xc1
	.4byte	0x467
	.uleb128 0x19
	.4byte	0x198
	.4byte	.LLST9
	.uleb128 0x19
	.4byte	0x18d
	.4byte	.LLST10
	.uleb128 0x1b
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.uleb128 0x1c
	.4byte	0x1a3
	.4byte	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x1be
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0xc4
	.4byte	0x4a0
	.uleb128 0x19
	.4byte	0x1d5
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	0x1ca
	.4byte	.LLST13
	.uleb128 0x1b
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.uleb128 0x1c
	.4byte	0x1e0
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x181
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0xc9
	.4byte	0x4d9
	.uleb128 0x19
	.4byte	0x198
	.4byte	.LLST15
	.uleb128 0x19
	.4byte	0x18d
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.uleb128 0x1c
	.4byte	0x1a3
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL18
	.4byte	0x2e7
	.4byte	0x4ed
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL26
	.4byte	0x2e7
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0xe3
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x831
	.uleb128 0x15
	.string	"B"
	.byte	0x1
	.byte	0xe3
	.4byte	0x17b
	.4byte	.LLST18
	.uleb128 0x15
	.string	"r"
	.byte	0x1
	.byte	0xe3
	.4byte	0x2f
	.4byte	.LLST19
	.uleb128 0x15
	.string	"N"
	.byte	0x1
	.byte	0xe3
	.4byte	0xc4
	.4byte	.LLST20
	.uleb128 0x15
	.string	"V"
	.byte	0x1
	.byte	0xe3
	.4byte	0x368
	.4byte	.LLST21
	.uleb128 0x15
	.string	"XY"
	.byte	0x1
	.byte	0xe3
	.4byte	0x368
	.4byte	.LLST22
	.uleb128 0x17
	.string	"X"
	.byte	0x1
	.byte	0xe5
	.4byte	0x368
	.4byte	.LLST23
	.uleb128 0x17
	.string	"Y"
	.byte	0x1
	.byte	0xe6
	.4byte	0x368
	.4byte	.LLST24
	.uleb128 0x17
	.string	"Z"
	.byte	0x1
	.byte	0xe7
	.4byte	0x368
	.4byte	.LLST25
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xe8
	.4byte	0xc4
	.4byte	.LLST26
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0xe9
	.4byte	0xc4
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.byte	0xea
	.4byte	0x2f
	.4byte	.LLST27
	.uleb128 0x1f
	.4byte	0x1ea
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0xee
	.4byte	0x5cf
	.uleb128 0x19
	.4byte	0x1fa
	.4byte	.LLST28
	.uleb128 0x1b
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.uleb128 0x23
	.4byte	0x205
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x20f
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.byte	0xf3
	.4byte	0x61a
	.uleb128 0x19
	.4byte	0x231
	.4byte	.LLST29
	.uleb128 0x19
	.4byte	0x226
	.4byte	.LLST30
	.uleb128 0x19
	.4byte	0x21b
	.4byte	.LLST31
	.uleb128 0x1b
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.uleb128 0x1c
	.4byte	0x23c
	.4byte	.LLST32
	.uleb128 0x1c
	.4byte	0x245
	.4byte	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x20f
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.byte	0xfa
	.4byte	0x665
	.uleb128 0x19
	.4byte	0x231
	.4byte	.LLST34
	.uleb128 0x19
	.4byte	0x226
	.4byte	.LLST35
	.uleb128 0x19
	.4byte	0x21b
	.4byte	.LLST36
	.uleb128 0x1b
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.uleb128 0x1c
	.4byte	0x23c
	.4byte	.LLST37
	.uleb128 0x1c
	.4byte	0x245
	.4byte	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x28f
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.2byte	0x104
	.4byte	0x69f
	.uleb128 0x19
	.4byte	0x2a8
	.4byte	.LLST39
	.uleb128 0x19
	.4byte	0x29f
	.4byte	.LLST40
	.uleb128 0x1b
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.uleb128 0x1c
	.4byte	0x2b1
	.4byte	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x24f
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.2byte	0x107
	.4byte	0x6eb
	.uleb128 0x19
	.4byte	0x271
	.4byte	.LLST42
	.uleb128 0x19
	.4byte	0x266
	.4byte	.LLST43
	.uleb128 0x19
	.4byte	0x25b
	.4byte	.LLST44
	.uleb128 0x1b
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.uleb128 0x1c
	.4byte	0x27c
	.4byte	.LLST45
	.uleb128 0x1c
	.4byte	0x285
	.4byte	.LLST46
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x28f
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.2byte	0x10c
	.4byte	0x725
	.uleb128 0x19
	.4byte	0x2a8
	.4byte	.LLST47
	.uleb128 0x19
	.4byte	0x29f
	.4byte	.LLST48
	.uleb128 0x1b
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.uleb128 0x1c
	.4byte	0x2b1
	.4byte	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x24f
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.2byte	0x10f
	.4byte	0x771
	.uleb128 0x19
	.4byte	0x271
	.4byte	.LLST50
	.uleb128 0x19
	.4byte	0x266
	.4byte	.LLST51
	.uleb128 0x19
	.4byte	0x25b
	.4byte	.LLST52
	.uleb128 0x1b
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.uleb128 0x1c
	.4byte	0x27c
	.4byte	.LLST53
	.uleb128 0x1c
	.4byte	0x285
	.4byte	.LLST54
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x2c6
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.2byte	0x115
	.4byte	0x798
	.uleb128 0x19
	.4byte	0x2dd
	.4byte	.LLST55
	.uleb128 0x19
	.4byte	0x2d2
	.4byte	.LLST56
	.byte	0
	.uleb128 0x20
	.4byte	.LVL48
	.4byte	0x36e
	.4byte	0x7bf
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL53
	.4byte	0x36e
	.4byte	0x7e6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
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
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL69
	.4byte	0x36e
	.4byte	0x80d
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
	.byte	0x74
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL79
	.4byte	0x36e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
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
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x124
	.4byte	0x28
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa82
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x124
	.4byte	0x16a
	.4byte	.LLST57
	.uleb128 0x26
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x124
	.4byte	0x170
	.4byte	.LLST58
	.uleb128 0x26
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x125
	.4byte	0x2f
	.4byte	.LLST59
	.uleb128 0x26
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x125
	.4byte	0x170
	.4byte	.LLST60
	.uleb128 0x26
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x125
	.4byte	0x2f
	.4byte	.LLST61
	.uleb128 0x27
	.string	"N"
	.byte	0x1
	.2byte	0x126
	.4byte	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"_r"
	.byte	0x1
	.2byte	0x126
	.4byte	0xb9
	.4byte	.LLST62
	.uleb128 0x28
	.string	"_p"
	.byte	0x1
	.2byte	0x126
	.4byte	0xb9
	.4byte	.LLST63
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.2byte	0x126
	.4byte	0x17b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x127
	.4byte	0x2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2a
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x129
	.4byte	0x2f
	.4byte	.LLST64
	.uleb128 0x2a
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x129
	.4byte	0x2f
	.4byte	.LLST65
	.uleb128 0x2a
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x129
	.4byte	0x2f
	.4byte	.LLST66
	.uleb128 0x2a
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x129
	.4byte	0x2f
	.4byte	.LLST67
	.uleb128 0x2b
	.string	"B"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x17b
	.4byte	.LLST68
	.uleb128 0x2b
	.string	"V"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x368
	.4byte	.LLST69
	.uleb128 0x2b
	.string	"XY"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x368
	.4byte	.LLST70
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x2f
	.4byte	.LLST71
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x2f
	.4byte	.LLST72
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xb9
	.4byte	.LLST73
	.uleb128 0x2c
	.4byte	.LVL94
	.4byte	0xa82
	.uleb128 0x2c
	.4byte	.LVL97
	.4byte	0xa82
	.uleb128 0x2c
	.4byte	.LVL101
	.4byte	0xa82
	.uleb128 0x2c
	.4byte	.LVL104
	.4byte	0xa82
	.uleb128 0x2c
	.4byte	.LVL108
	.4byte	0xa82
	.uleb128 0x2c
	.4byte	.LVL114
	.4byte	0xa82
	.uleb128 0x2c
	.4byte	.LVL119
	.4byte	0xa82
	.uleb128 0x20
	.4byte	.LVL123
	.4byte	0xa8d
	.4byte	0x9cc
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL124
	.4byte	0xa98
	.4byte	0x9e6
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL130
	.4byte	0xaa3
	.4byte	0xa1e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL132
	.4byte	0x4fe
	.4byte	0xa4d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL135
	.4byte	0xaa3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x7
	.byte	0xf
	.uleb128 0x2d
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x45
	.uleb128 0x2d
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x44
	.uleb128 0x2d
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x8
	.byte	0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x17
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL4
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL7
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL4
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LFE17
	.2byte	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x37
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
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
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18-1
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26-1
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x77
	.sleb128 1
	.byte	0x36
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL31
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL33
	.4byte	.LFE19
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL36
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL31
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL37
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL32
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL37
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL34
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84
	.4byte	.LFE19
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL42
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL58
	.4byte	.LVL81
	.2byte	0x7
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x7
	.byte	0x91
	.sleb128 -60
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL84
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL43
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL43
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LVL55
	.2byte	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0xc
	.byte	0x78
	.sleb128 -2
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL44
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL49
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL49
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0xc
	.byte	0x76
	.sleb128 1
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0xc
	.byte	0x78
	.sleb128 -1
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL58
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL58
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62
	.4byte	.LVL82
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL63
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL63
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL63
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL64
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL69
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL69
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL82
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL75
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL74
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL74
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL89
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL91
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL90
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL89
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL107
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL89
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL97-1
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL112
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL128
	.4byte	.LVL134
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x9
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL117
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL119-1
	.4byte	.LVL121
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL122
	.4byte	.LVL134
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x8
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x38
	.byte	0x24
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE20
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL113
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL134
	.2byte	0x13
	.byte	0x73
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x15
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x37
	.byte	0x24
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL125
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL129
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL128
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL92
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL107
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL137
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL96
	.4byte	.LVL97-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL97-1
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"salt"
.LASF4:
	.string	"size_t"
.LASF19:
	.string	"uintptr_t"
.LASF18:
	.string	"uint64_t"
.LASF5:
	.string	"__uint8_t"
.LASF45:
	.string	"V_size"
.LASF35:
	.string	"blockmix_salsa8"
.LASF0:
	.string	"long long unsigned int"
.LASF50:
	.string	"alloc_region"
.LASF33:
	.string	"store32_le"
.LASF9:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF25:
	.string	"escrypt_local_t"
.LASF38:
	.string	"local"
.LASF48:
	.string	"__errno"
.LASF12:
	.string	"long int"
.LASF49:
	.string	"free_region"
.LASF46:
	.string	"XY_size"
.LASF21:
	.string	"aligned"
.LASF8:
	.string	"__uint32_t"
.LASF51:
	.string	"PBKDF2_SHA256"
.LASF1:
	.string	"unsigned int"
.LASF28:
	.string	"blkxor_64"
.LASF34:
	.string	"salsa20_8"
.LASF14:
	.string	"long unsigned int"
.LASF22:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF42:
	.string	"saltlen"
.LASF37:
	.string	"smix"
.LASF20:
	.string	"base"
.LASF13:
	.string	"sizetype"
.LASF27:
	.string	"blkcpy_64"
.LASF54:
	.string	"escrypt_kdf_nosse"
.LASF26:
	.string	"dest"
.LASF10:
	.string	"__uint64_t"
.LASF29:
	.string	"blkcpy"
.LASF53:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/nosse/pwhash_scryptsalsa208sha256_nosse.c"
.LASF6:
	.string	"unsigned char"
.LASF30:
	.string	"blkxor"
.LASF52:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF7:
	.string	"short int"
.LASF32:
	.string	"integerify"
.LASF11:
	.string	"__uintptr_t"
.LASF39:
	.string	"passwd"
.LASF43:
	.string	"buflen"
.LASF17:
	.string	"uint32_t"
.LASF31:
	.string	"load32_le"
.LASF15:
	.string	"char"
.LASF36:
	.string	"Bout"
.LASF23:
	.string	"escrypt_region_t"
.LASF44:
	.string	"B_size"
.LASF24:
	.string	"escrypt_block_t"
.LASF40:
	.string	"passwdlen"
.LASF16:
	.string	"uint8_t"
.LASF47:
	.string	"need"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
