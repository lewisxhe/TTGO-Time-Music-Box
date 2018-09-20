	.file	"poly1305_donna.c"
	.text
.Ltext0:
	.section	.text.poly1305_blocks,"ax",@progbits
	.literal_position
	.literal .LC0, 16777216
	.literal .LC1, 67108863
	.align	4
	.type	poly1305_blocks, @function
poly1305_blocks:
.LFB13:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna32.h"
	.loc 1 58 0
.LVL0:
	entry	sp, 128
.LCFI0:
	s32i	a2, sp, 80
	mov.n	a7, a3
	s32i.n	a4, sp, 48
	s32i.n	a5, sp, 44
	.loc 1 59 0
	l8ui	a2, a2, 80
.LVL1:
	beqz.n	a2, .L31
	movi.n	a2, 0
	s32i	a2, sp, 84
	j	.L2
.L31:
	l32r	a3, .LC0
.LVL2:
	s32i	a3, sp, 84
.L2:
.LVL3:
	.loc 1 66 0 discriminator 4
	l32i	a6, sp, 80
	l32i.n	a5, a6, 0
.LVL4:
	.loc 1 67 0 discriminator 4
	l32i.n	a8, a6, 4
	s32i.n	a8, sp, 16
.LVL5:
	.loc 1 68 0 discriminator 4
	l32i.n	a9, a6, 8
	s32i.n	a9, sp, 24
.LVL6:
	.loc 1 69 0 discriminator 4
	l32i.n	a10, a6, 12
	s32i.n	a10, sp, 32
.LVL7:
	.loc 1 70 0 discriminator 4
	l32i.n	a11, a6, 16
	s32i	a11, sp, 68
.LVL8:
	.loc 1 72 0 discriminator 4
	addx4	a13, a8, a8
	s32i	a13, sp, 72
.LVL9:
	.loc 1 73 0 discriminator 4
	addx4	a2, a9, a9
	s32i.n	a2, sp, 36
.LVL10:
	.loc 1 74 0 discriminator 4
	addx4	a3, a10, a10
	s32i.n	a3, sp, 28
.LVL11:
	.loc 1 75 0 discriminator 4
	addx4	a4, a11, a11
.LVL12:
	s32i.n	a4, sp, 20
.LVL13:
	.loc 1 77 0 discriminator 4
	l32i.n	a10, a6, 20
.LVL14:
	.loc 1 78 0 discriminator 4
	l32i.n	a14, a6, 24
.LVL15:
	.loc 1 79 0 discriminator 4
	l32i.n	a12, a6, 28
.LVL16:
	.loc 1 80 0 discriminator 4
	l32i.n	a2, a6, 32
.LVL17:
	.loc 1 81 0 discriminator 4
	l32i.n	a3, a6, 36
.LVL18:
	mov.n	a6, a2
.LVL19:
	.loc 1 83 0 discriminator 4
	j	.L3
.LVL20:
.L29:
.LBB39:
.LBB40:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 83 0
	l8ui	a2, a7, 0
	l8ui	a4, a7, 1
	s8i	a2, sp, 0
	l8ui	a8, a7, 2
	s8i	a4, sp, 1
	l8ui	a2, a7, 3
	s8i	a8, sp, 2
	s8i	a2, sp, 3
.LBE40:
.LBE39:
	.loc 1 85 0
	l32r	a2, .LC1
	l32i.n	a4, sp, 0
	and	a4, a4, a2
	add.n	a10, a10, a4
.LVL21:
.LBB41:
.LBB42:
	.loc 2 83 0
	l8ui	a8, a7, 3
	l8ui	a9, a7, 4
	s8i	a8, sp, 0
	l8ui	a8, a7, 5
	s8i	a9, sp, 1
	l8ui	a4, a7, 6
	s8i	a8, sp, 2
	s8i	a4, sp, 3
	.loc 2 84 0
	l32i.n	a4, sp, 0
.LBE42:
.LBE41:
	.loc 1 86 0
	srli	a4, a4, 2
	and	a4, a4, a2
	add.n	a14, a14, a4
.LVL22:
.LBB43:
.LBB44:
	.loc 2 83 0
	l8ui	a8, a7, 6
	l8ui	a9, a7, 7
	s8i	a8, sp, 0
	l8ui	a8, a7, 8
	s8i	a9, sp, 1
	l8ui	a4, a7, 9
	s8i	a8, sp, 2
	s8i	a4, sp, 3
	.loc 2 84 0
	l32i.n	a4, sp, 0
.LBE44:
.LBE43:
	.loc 1 87 0
	srli	a4, a4, 4
	and	a2, a4, a2
	add.n	a12, a12, a2
.LVL23:
.LBB45:
.LBB46:
	.loc 2 83 0
	l8ui	a4, a7, 9
	l8ui	a8, a7, 10
	s8i	a4, sp, 0
	l8ui	a4, a7, 11
	s8i	a8, sp, 1
	l8ui	a2, a7, 12
	s8i	a4, sp, 2
	s8i	a2, sp, 3
	.loc 2 84 0
	l32i.n	a2, sp, 0
.LBE46:
.LBE45:
	.loc 1 88 0
	srli	a2, a2, 6
	add.n	a2, a6, a2
.LVL24:
.LBB47:
.LBB48:
	.loc 2 83 0
	l8ui	a6, a7, 12
	l8ui	a8, a7, 13
	s8i	a6, sp, 0
	l8ui	a6, a7, 14
	s8i	a8, sp, 1
	l8ui	a4, a7, 15
	s8i	a6, sp, 2
	s8i	a4, sp, 3
	.loc 2 84 0
	l32i.n	a4, sp, 0
.LBE48:
.LBE47:
	.loc 1 89 0
	srli	a4, a4, 8
	l32i	a6, sp, 84
	or	a4, a6, a4
	add.n	a3, a3, a4
.LVL25:
	.loc 1 92 0
	mull	a9, a10, a5
	muluh	a11, a10, a5
.LVL26:
	l32i.n	a8, sp, 20
	mull	a4, a14, a8
	muluh	a8, a14, a8
	add.n	a4, a9, a4
	movi.n	a6, 1
	bltu	a4, a9, .L4
	movi.n	a6, 0
.L4:
	add.n	a8, a11, a8
	add.n	a6, a6, a8
	.loc 1 93 0
	l32i.n	a9, sp, 36
	mull	a11, a2, a9
	muluh	a15, a2, a9
	l32i.n	a13, sp, 28
	mull	a8, a12, a13
	muluh	a9, a12, a13
	add.n	a8, a11, a8
	movi.n	a13, 1
	bltu	a8, a11, .L5
	movi.n	a13, 0
.L5:
	add.n	a9, a15, a9
	add.n	a9, a13, a9
	add.n	a4, a8, a4
	movi.n	a11, 1
	bltu	a4, a8, .L6
	movi.n	a11, 0
.L6:
	add.n	a9, a9, a6
	add.n	a8, a11, a9
	.loc 1 94 0
	l32i	a6, sp, 72
	mull	a9, a6, a3
	muluh	a6, a6, a3
	.loc 1 92 0
	add.n	a9, a4, a9
	s32i.n	a9, sp, 40
	movi.n	a9, 1
	l32i.n	a11, sp, 40
	bltu	a11, a4, .L7
	movi.n	a9, 0
.L7:
	add.n	a8, a8, a6
	add.n	a8, a9, a8
	s32i.n	a8, sp, 52
.LVL27:
	.loc 1 95 0
	l32i.n	a13, sp, 16
	mull	a9, a10, a13
	muluh	a11, a10, a13
	mull	a4, a5, a14
	muluh	a8, a5, a14
.LVL28:
	add.n	a4, a9, a4
	movi.n	a6, 1
	bltu	a4, a9, .L8
	movi.n	a6, 0
.L8:
	add.n	a8, a11, a8
	add.n	a6, a6, a8
	.loc 1 96 0
	l32i.n	a8, sp, 28
	mull	a11, a2, a8
	muluh	a15, a2, a8
	l32i.n	a9, sp, 20
	mull	a8, a9, a12
	muluh	a9, a9, a12
	add.n	a8, a11, a8
	movi.n	a13, 1
	bltu	a8, a11, .L9
	movi.n	a13, 0
.L9:
	add.n	a9, a15, a9
	add.n	a9, a13, a9
	add.n	a4, a8, a4
	movi.n	a11, 1
	bltu	a4, a8, .L10
	movi.n	a11, 0
.L10:
	add.n	a9, a9, a6
	add.n	a11, a11, a9
	.loc 1 97 0
	l32i.n	a13, sp, 36
	mull	a8, a13, a3
	muluh	a6, a13, a3
	.loc 1 95 0
	add.n	a8, a4, a8
	s32i.n	a8, sp, 60
	movi.n	a8, 1
	l32i.n	a9, sp, 60
	bltu	a9, a4, .L11
	movi.n	a8, 0
.L11:
	add.n	a11, a11, a6
	add.n	a11, a8, a11
	s32i.n	a11, sp, 56
.LVL29:
	.loc 1 98 0
	l32i.n	a11, sp, 24
.LVL30:
	mull	a9, a10, a11
	muluh	a11, a10, a11
	l32i.n	a13, sp, 16
	mull	a4, a14, a13
	muluh	a8, a14, a13
	add.n	a4, a9, a4
	movi.n	a6, 1
	bltu	a4, a9, .L12
	movi.n	a6, 0
.L12:
	add.n	a8, a11, a8
	add.n	a6, a6, a8
	.loc 1 99 0
	l32i.n	a8, sp, 20
	mull	a11, a8, a2
	muluh	a15, a8, a2
	mull	a8, a5, a12
	muluh	a9, a5, a12
	add.n	a8, a11, a8
	movi.n	a13, 1
	bltu	a8, a11, .L13
	movi.n	a13, 0
.L13:
	add.n	a9, a15, a9
	add.n	a9, a13, a9
	add.n	a4, a8, a4
	movi.n	a11, 1
	bltu	a4, a8, .L14
	movi.n	a11, 0
.L14:
	add.n	a9, a9, a6
	add.n	a8, a11, a9
	.loc 1 100 0
	l32i.n	a11, sp, 28
	mull	a9, a11, a3
	muluh	a6, a11, a3
	.loc 1 98 0
	add.n	a9, a4, a9
	s32i	a9, sp, 64
	movi.n	a9, 1
	l32i	a13, sp, 64
	bltu	a13, a4, .L15
	movi.n	a9, 0
.L15:
	add.n	a8, a8, a6
	add.n	a15, a9, a8
.LVL31:
	.loc 1 101 0
	l32i.n	a4, sp, 32
	mull	a9, a10, a4
	muluh	a11, a10, a4
	l32i.n	a6, sp, 24
	mull	a4, a14, a6
	muluh	a8, a14, a6
	add.n	a4, a9, a4
	movi.n	a6, 1
	bltu	a4, a9, .L16
	movi.n	a6, 0
.L16:
	add.n	a8, a11, a8
	add.n	a6, a6, a8
	.loc 1 102 0
	mull	a11, a5, a2
	muluh	a8, a5, a2
	s32i	a8, sp, 76
	l32i.n	a9, sp, 16
	mull	a8, a12, a9
	muluh	a9, a12, a9
	add.n	a8, a11, a8
	movi.n	a13, 1
	bltu	a8, a11, .L17
	movi.n	a13, 0
.L17:
	l32i	a11, sp, 76
	add.n	a9, a11, a9
	add.n	a9, a13, a9
	add.n	a4, a8, a4
	movi.n	a11, 1
	bltu	a4, a8, .L18
	movi.n	a11, 0
.L18:
	add.n	a9, a9, a6
	add.n	a8, a11, a9
	.loc 1 103 0
	l32i.n	a13, sp, 20
	mull	a6, a13, a3
	muluh	a9, a13, a3
	.loc 1 101 0
	add.n	a6, a4, a6
	movi.n	a11, 1
	bltu	a6, a4, .L19
	movi.n	a11, 0
.L19:
	add.n	a8, a8, a9
	add.n	a4, a11, a8
.LVL32:
	.loc 1 104 0
	l32i	a8, sp, 68
	mull	a11, a8, a10
	muluh	a10, a8, a10
.LVL33:
	l32i.n	a9, sp, 32
	mull	a8, a14, a9
	muluh	a14, a14, a9
.LVL34:
	add.n	a8, a11, a8
	movi.n	a9, 1
	bltu	a8, a11, .L20
	movi.n	a9, 0
.L20:
	add.n	a14, a10, a14
	add.n	a9, a9, a14
	.loc 1 105 0
	l32i.n	a10, sp, 16
	mull	a11, a2, a10
	muluh	a2, a2, a10
.LVL35:
	l32i.n	a13, sp, 24
	mull	a10, a12, a13
	muluh	a12, a12, a13
.LVL36:
	add.n	a10, a11, a10
	movi.n	a13, 1
	bltu	a10, a11, .L21
	movi.n	a13, 0
.L21:
	add.n	a12, a2, a12
	add.n	a12, a13, a12
	add.n	a8, a10, a8
	movi.n	a11, 1
	bltu	a8, a10, .L22
	movi.n	a11, 0
.L22:
	add.n	a12, a12, a9
	add.n	a11, a11, a12
	.loc 1 106 0
	mull	a9, a5, a3
	muluh	a3, a5, a3
.LVL37:
	.loc 1 104 0
	add.n	a9, a8, a9
	movi.n	a2, 1
	bltu	a9, a8, .L23
	movi.n	a2, 0
.L23:
	add.n	a11, a11, a3
	add.n	a13, a2, a11
.LVL38:
	.loc 1 109 0
	l32i.n	a2, sp, 52
	slli	a3, a2, 6
	l32i.n	a8, sp, 40
	extui	a2, a8, 26, 6
	or	a2, a3, a2
.LVL39:
	.loc 1 110 0
	l32r	a11, .LC1
	and	a11, a8, a11
.LVL40:
	.loc 1 111 0
	l32i.n	a10, sp, 60
	add.n	a14, a2, a10
	movi.n	a8, 1
	bltu	a14, a2, .L24
	movi.n	a8, 0
.L24:
	l32i.n	a2, sp, 56
.LVL41:
	add.n	a8, a8, a2
.LVL42:
	.loc 1 112 0
	slli	a8, a8, 6
.LVL43:
	extui	a2, a14, 26, 6
	or	a2, a8, a2
.LVL44:
	.loc 1 113 0
	l32r	a3, .LC1
	and	a14, a14, a3
.LVL45:
	.loc 1 114 0
	l32i	a3, sp, 64
	add.n	a12, a2, a3
	movi.n	a3, 1
	bltu	a12, a2, .L25
	movi.n	a3, 0
.L25:
	add.n	a3, a3, a15
.LVL46:
	.loc 1 115 0
	slli	a3, a3, 6
.LVL47:
	extui	a8, a12, 26, 6
	or	a8, a3, a8
.LVL48:
	.loc 1 116 0
	l32r	a2, .LC1
	and	a12, a12, a2
.LVL49:
	.loc 1 117 0
	add.n	a6, a8, a6
.LVL50:
	movi.n	a2, 1
	bltu	a6, a8, .L26
	movi.n	a2, 0
.L26:
	add.n	a4, a2, a4
.LVL51:
	.loc 1 118 0
	slli	a4, a4, 6
.LVL52:
	extui	a8, a6, 26, 6
.LVL53:
	or	a8, a4, a8
.LVL54:
	.loc 1 119 0
	l32r	a2, .LC1
	and	a6, a6, a2
.LVL55:
	.loc 1 120 0
	add.n	a3, a8, a9
	movi.n	a2, 1
	bltu	a3, a8, .L27
	movi.n	a2, 0
.L27:
	add.n	a2, a2, a13
.LVL56:
	.loc 1 121 0
	slli	a2, a2, 6
.LVL57:
	extui	a4, a3, 26, 6
	or	a4, a2, a4
.LVL58:
	.loc 1 122 0
	l32r	a2, .LC1
	and	a3, a3, a2
.LVL59:
	.loc 1 123 0
	addx4	a10, a4, a4
	add.n	a10, a11, a10
.LVL60:
	.loc 1 124 0
	extui	a8, a10, 26, 6
.LVL61:
	.loc 1 125 0
	and	a10, a10, a2
.LVL62:
	.loc 1 126 0
	add.n	a14, a14, a8
.LVL63:
	.loc 1 128 0
	addi	a7, a7, 16
.LVL64:
	.loc 1 129 0
	l32i.n	a8, sp, 48
.LVL65:
	addi	a4, a8, -16
.LVL66:
	movi.n	a2, 1
	bltu	a4, a8, .L28
	movi.n	a2, 0
.L28:
	l32i.n	a9, sp, 44
	addi.n	a8, a9, -1
	add.n	a2, a2, a8
	s32i.n	a4, sp, 48
.LVL67:
	s32i.n	a2, sp, 44
.LVL68:
.L3:
	.loc 1 83 0
	l32i.n	a11, sp, 44
	bnez.n	a11, .L29
	bnez.n	a11, .L32
	movi.n	a2, 0xf
	l32i.n	a13, sp, 48
	bltu	a2, a13, .L29
.L32:
	mov.n	a2, a6
	.loc 1 132 0
	l32i	a6, sp, 80
.LVL69:
	s32i.n	a10, a6, 20
	.loc 1 133 0
	s32i.n	a14, a6, 24
	.loc 1 134 0
	s32i.n	a12, a6, 28
	.loc 1 135 0
	s32i.n	a2, a6, 32
	.loc 1 136 0
	s32i.n	a3, a6, 36
	retw.n
.LFE13:
	.size	poly1305_blocks, .-poly1305_blocks
	.section	.text.poly1305_update,"ax",@progbits
	.literal_position
	.literal .LC3, 0, 0
	.literal .LC4, 16, 0
	.align	4
	.type	poly1305_update, @function
poly1305_update:
.LFB15:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.c"
	.loc 3 17 0
.LVL70:
	entry	sp, 32
.LCFI1:
	.loc 3 21 0
	l32i.n	a12, a2, 56
	l32i.n	a14, a2, 60
	or	a8, a12, a14
	beqz.n	a8, .L34
.LBB49:
	.loc 3 22 0
	movi.n	a6, 0x10
	sub	a13, a6, a12
	movi.n	a11, 1
	bltu	a6, a13, .L36
	movi.n	a11, 0
.L36:
	movi.n	a8, 0
	sub	a8, a8, a14
	sub	a11, a8, a11
.LVL71:
	.loc 3 24 0
	bltu	a5, a11, .L57
	bne	a11, a5, .L37
	bgeu	a4, a13, .L37
.L57:
	.loc 3 25 0
	mov.n	a13, a4
.LVL72:
	mov.n	a11, a5
.LVL73:
.L37:
	.loc 3 27 0
	movi.n	a8, 0
	mov.n	a10, a8
	j	.L39
.LVL74:
.L42:
	.loc 3 28 0 discriminator 3
	add.n	a9, a8, a12
	add.n	a15, a3, a8
	l8ui	a15, a15, 0
	add.n	a9, a2, a9
	s8i	a15, a9, 64
	.loc 3 27 0 discriminator 3
	addi.n	a15, a8, 1
	movi.n	a9, 1
	bltu	a15, a8, .L41
	movi.n	a9, 0
.L41:
	add.n	a9, a9, a10
	mov.n	a8, a15
.LVL75:
	mov.n	a10, a9
.LVL76:
.L39:
	.loc 3 27 0 is_stmt 0 discriminator 1
	bltu	a10, a11, .L42
	bne	a11, a10, .L59
	bltu	a8, a13, .L42
.L59:
	.loc 3 30 0 is_stmt 1
	sub	a6, a4, a13
	movi.n	a8, 1
.LVL77:
	bltu	a4, a6, .L44
	movi.n	a8, 0
.L44:
	sub	a4, a5, a11
.LVL78:
	sub	a5, a4, a8
	mov.n	a4, a6
.LVL79:
	.loc 3 31 0
	add.n	a3, a3, a13
.LVL80:
	.loc 3 32 0
	add.n	a12, a13, a12
	movi.n	a8, 1
	bltu	a12, a13, .L45
	movi.n	a8, 0
.L45:
	add.n	a11, a11, a14
.LVL81:
	add.n	a8, a8, a11
	mov.n	a7, a12
	mov.n	a6, a8
	s32i.n	a12, a2, 56
	s32i.n	a8, a2, 60
	.loc 3 33 0
	bnez.n	a8, .L60
	bnez.n	a8, .L33
	movi.n	a6, 0xf
	bgeu	a6, a12, .L33
.L60:
	.loc 3 36 0
	l32r	a12, .LC4
	l32r	a13, .LC4+4
	addi	a11, a2, 64
	mov.n	a10, a2
	call8	poly1305_blocks
.LVL82:
	.loc 3 37 0
	l32r	a8, .LC3
	l32r	a9, .LC3+4
	s32i.n	a8, a2, 56
	s32i.n	a9, a2, 60
.LVL83:
.L34:
.LBE49:
	.loc 3 41 0
	bnez.n	a5, .L61
	bnez.n	a5, .L48
	movi.n	a6, 0xf
	bgeu	a6, a4, .L48
.L61:
.LBB50:
	.loc 3 42 0
	movi.n	a6, -0x10
	and	a6, a6, a4
	mov.n	a7, a5
.LVL84:
	.loc 3 44 0
	mov.n	a12, a6
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	poly1305_blocks
.LVL85:
	.loc 3 45 0
	add.n	a3, a3, a6
.LVL86:
	.loc 3 46 0
	sub	a6, a4, a6
.LVL87:
	movi.n	a8, 1
	bltu	a4, a6, .L50
.LVL88:
	movi.n	a8, 0
.L50:
	sub	a7, a5, a7
	sub	a5, a7, a8
.LVL89:
	mov.n	a7, a5
	mov.n	a4, a6
.LVL90:
.L48:
.LBE50:
	.loc 3 50 0
	or	a8, a4, a5
	bnez.n	a8, .L58
	retw.n
.LVL91:
.L54:
	.loc 3 52 0 discriminator 3
	l32i.n	a9, a2, 56
	add.n	a9, a8, a9
	add.n	a11, a3, a8
	l8ui	a11, a11, 0
	add.n	a9, a2, a9
	s8i	a11, a9, 64
	.loc 3 51 0 discriminator 3
	addi.n	a11, a8, 1
	movi.n	a9, 1
	bltu	a11, a8, .L53
	movi.n	a9, 0
.L53:
	add.n	a9, a9, a10
	mov.n	a8, a11
.LVL92:
	mov.n	a10, a9
.LVL93:
	j	.L51
.LVL94:
.L58:
	movi.n	a8, 0
	mov.n	a10, a8
.L51:
.LVL95:
	.loc 3 51 0 is_stmt 0 discriminator 1
	bltu	a10, a5, .L54
	bne	a5, a10, .L62
	bltu	a8, a4, .L54
.L62:
	.loc 3 54 0 is_stmt 1
	l32i.n	a6, a2, 56
	l32i.n	a7, a2, 60
	add.n	a4, a6, a4
.LVL96:
	movi.n	a3, 1
.LVL97:
	bltu	a4, a6, .L56
	movi.n	a3, 0
.L56:
	add.n	a5, a7, a5
	add.n	a3, a3, a5
	mov.n	a5, a3
	s32i.n	a4, a2, 56
	s32i.n	a3, a2, 60
.LVL98:
.L33:
	retw.n
.LFE15:
	.size	poly1305_update, .-poly1305_update
	.section	.text.crypto_onetimeauth_poly1305_donna_update,"ax",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna_update, @function
crypto_onetimeauth_poly1305_donna_update:
.LFB18:
	.loc 3 87 0
.LVL99:
	entry	sp, 32
.LCFI2:
	.loc 3 88 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	poly1305_update
.LVL100:
	.loc 3 91 0
	movi.n	a2, 0
.LVL101:
	retw.n
.LFE18:
	.size	crypto_onetimeauth_poly1305_donna_update, .-crypto_onetimeauth_poly1305_donna_update
	.section	.text.poly1305_init,"ax",@progbits
	.literal_position
	.literal .LC6, 67108863
	.literal .LC7, 67108611
	.literal .LC8, 67092735
	.literal .LC9, 66076671
	.literal .LC10, 1048575
	.literal .LC11, 0, 0
	.align	4
	.type	poly1305_init, @function
poly1305_init:
.LFB12:
	.loc 1 30 0
.LVL102:
	entry	sp, 48
.LCFI3:
.LVL103:
.LBB51:
.LBB52:
	.loc 2 83 0
	l8ui	a9, a3, 0
	l8ui	a8, a3, 1
	s8i	a9, sp, 0
	l8ui	a9, a3, 2
	s8i	a8, sp, 1
	l8ui	a8, a3, 3
	s8i	a9, sp, 2
	s8i	a8, sp, 3
.LBE52:
.LBE51:
	.loc 1 32 0
	l32r	a8, .LC6
	l32i.n	a9, sp, 0
	and	a8, a9, a8
	s32i.n	a8, a2, 0
.LVL104:
.LBB53:
.LBB54:
	.loc 2 83 0
	l8ui	a9, a3, 3
	l8ui	a10, a3, 4
	s8i	a9, sp, 0
	l8ui	a9, a3, 5
	s8i	a10, sp, 1
	l8ui	a8, a3, 6
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a8, sp, 0
.LBE54:
.LBE53:
	.loc 1 33 0
	srli	a9, a8, 2
	l32r	a8, .LC7
	and	a8, a9, a8
	s32i.n	a8, a2, 4
.LVL105:
.LBB55:
.LBB56:
	.loc 2 83 0
	l8ui	a9, a3, 6
	l8ui	a10, a3, 7
	s8i	a9, sp, 0
	l8ui	a9, a3, 8
	s8i	a10, sp, 1
	l8ui	a8, a3, 9
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a8, sp, 0
.LBE56:
.LBE55:
	.loc 1 34 0
	srli	a9, a8, 4
	l32r	a8, .LC8
	and	a8, a9, a8
	s32i.n	a8, a2, 8
.LVL106:
.LBB57:
.LBB58:
	.loc 2 83 0
	l8ui	a9, a3, 9
	l8ui	a10, a3, 10
	s8i	a9, sp, 0
	l8ui	a9, a3, 11
	s8i	a10, sp, 1
	l8ui	a8, a3, 12
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a8, sp, 0
.LBE58:
.LBE57:
	.loc 1 35 0
	srli	a9, a8, 6
	l32r	a8, .LC9
	and	a8, a9, a8
	s32i.n	a8, a2, 12
.LVL107:
.LBB59:
.LBB60:
	.loc 2 83 0
	l8ui	a9, a3, 12
	l8ui	a10, a3, 13
	s8i	a9, sp, 0
	l8ui	a9, a3, 14
	s8i	a10, sp, 1
	l8ui	a8, a3, 15
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 2 84 0
	l32i.n	a8, sp, 0
.LBE60:
.LBE59:
	.loc 1 36 0
	srli	a9, a8, 8
	l32r	a8, .LC10
	and	a8, a9, a8
	s32i.n	a8, a2, 16
	.loc 1 39 0
	movi.n	a8, 0
	s32i.n	a8, a2, 20
	.loc 1 40 0
	s32i.n	a8, a2, 24
	.loc 1 41 0
	s32i.n	a8, a2, 28
	.loc 1 42 0
	s32i.n	a8, a2, 32
	.loc 1 43 0
	s32i.n	a8, a2, 36
.LVL108:
.LBB61:
.LBB62:
	.loc 2 83 0
	l8ui	a10, a3, 16
	l8ui	a11, a3, 17
	s8i	a10, sp, 0
	l8ui	a10, a3, 18
	s8i	a11, sp, 1
	l8ui	a9, a3, 19
	s8i	a10, sp, 2
	s8i	a9, sp, 3
	.loc 2 84 0
	l32i.n	a9, sp, 0
.LBE62:
.LBE61:
	.loc 1 46 0
	s32i.n	a9, a2, 40
.LVL109:
.LBB63:
.LBB64:
	.loc 2 83 0
	l8ui	a10, a3, 20
	l8ui	a11, a3, 21
	s8i	a10, sp, 0
	l8ui	a10, a3, 22
	s8i	a11, sp, 1
	l8ui	a9, a3, 23
	s8i	a10, sp, 2
	s8i	a9, sp, 3
	.loc 2 84 0
	l32i.n	a9, sp, 0
.LBE64:
.LBE63:
	.loc 1 47 0
	s32i.n	a9, a2, 44
.LVL110:
.LBB65:
.LBB66:
	.loc 2 83 0
	l8ui	a10, a3, 24
	l8ui	a11, a3, 25
	s8i	a10, sp, 0
	l8ui	a10, a3, 26
	s8i	a11, sp, 1
	l8ui	a9, a3, 27
	s8i	a10, sp, 2
	s8i	a9, sp, 3
	.loc 2 84 0
	l32i.n	a9, sp, 0
.LBE66:
.LBE65:
	.loc 1 48 0
	s32i.n	a9, a2, 48
	.loc 1 49 0
	addi	a9, a3, 28
.LVL111:
.LBB67:
.LBB68:
	.loc 2 83 0
	l8ui	a10, a3, 28
	l8ui	a3, a3, 29
.LVL112:
	s8i	a10, sp, 0
	l8ui	a10, a9, 2
	s8i	a3, sp, 1
	l8ui	a3, a9, 3
	s8i	a10, sp, 2
	s8i	a3, sp, 3
	.loc 2 84 0
	l32i.n	a3, sp, 0
.LBE68:
.LBE67:
	.loc 1 49 0
	s32i.n	a3, a2, 52
	.loc 1 51 0
	l32r	a10, .LC11
	l32r	a11, .LC11+4
	s32i.n	a10, a2, 56
	s32i.n	a11, a2, 60
	.loc 1 52 0
	s8i	a8, a2, 80
	retw.n
.LFE12:
	.size	poly1305_init, .-poly1305_init
	.section	.text.crypto_onetimeauth_poly1305_donna_init,"ax",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna_init, @function
crypto_onetimeauth_poly1305_donna_init:
.LFB17:
	.loc 3 75 0
.LVL113:
	entry	sp, 32
.LCFI4:
	.loc 3 78 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	poly1305_init
.LVL114:
	.loc 3 81 0
	movi.n	a2, 0
.LVL115:
	retw.n
.LFE17:
	.size	crypto_onetimeauth_poly1305_donna_init, .-crypto_onetimeauth_poly1305_donna_init
	.section	.text.poly1305_finish,"ax",@progbits
	.literal_position
	.literal .LC13, 16, 0
	.literal .LC14, 67108863
	.literal .LC15, -67108864
	.align	4
	.type	poly1305_finish, @function
poly1305_finish:
.LFB14:
	.loc 1 141 0
.LVL116:
	entry	sp, 64
.LCFI5:
	.loc 1 148 0
	l32i.n	a6, a2, 56
	l32i.n	a4, a2, 60
	or	a5, a6, a4
	beqz.n	a5, .L67
.LVL117:
.LBB69:
	.loc 1 151 0
	addi.n	a5, a6, 1
	movi.n	a7, 1
	bltu	a5, a6, .L69
	movi.n	a7, 0
.L69:
	add.n	a4, a7, a4
.LVL118:
	add.n	a6, a2, a6
	movi.n	a7, 1
	s8i	a7, a6, 64
	.loc 1 152 0
	j	.L70
.L72:
	.loc 1 153 0 discriminator 2
	add.n	a6, a2, a5
	movi.n	a7, 0
	s8i	a7, a6, 64
	.loc 1 152 0 discriminator 2
	addi.n	a6, a5, 1
	movi.n	a7, 1
	bltu	a6, a5, .L71
	movi.n	a7, 0
.L71:
	mov.n	a5, a6
.LVL119:
	add.n	a4, a7, a4
.LVL120:
.L70:
	.loc 1 152 0 is_stmt 0 discriminator 1
	bnez.n	a4, .L81
	bnez.n	a4, .L72
	movi.n	a6, 0xf
	bgeu	a6, a5, .L72
.L81:
	.loc 1 155 0 is_stmt 1
	movi.n	a4, 1
.LVL121:
	s8i	a4, a2, 80
	.loc 1 156 0
	l32r	a12, .LC13
	l32r	a13, .LC13+4
	addi	a11, a2, 64
	mov.n	a10, a2
	call8	poly1305_blocks
.LVL122:
.L67:
.LBE69:
	.loc 1 160 0
	l32i.n	a13, a2, 20
.LVL123:
	.loc 1 161 0
	l32i.n	a6, a2, 24
.LVL124:
	.loc 1 162 0
	l32i.n	a5, a2, 28
.LVL125:
	.loc 1 163 0
	l32i.n	a15, a2, 32
.LVL126:
	.loc 1 164 0
	l32i.n	a12, a2, 36
.LVL127:
	.loc 1 166 0
	extui	a4, a6, 26, 6
.LVL128:
	.loc 1 167 0
	l32r	a8, .LC14
	and	a6, a6, a8
.LVL129:
	.loc 1 168 0
	add.n	a5, a5, a4
.LVL130:
	.loc 1 169 0
	extui	a4, a5, 26, 6
.LVL131:
	.loc 1 170 0
	and	a9, a5, a8
	s32i.n	a9, sp, 16
.LVL132:
	.loc 1 171 0
	add.n	a4, a15, a4
.LVL133:
	.loc 1 172 0
	extui	a7, a4, 26, 6
.LVL134:
	.loc 1 173 0
	and	a10, a4, a8
	s32i.n	a10, sp, 20
.LVL135:
	.loc 1 174 0
	add.n	a12, a12, a7
.LVL136:
	.loc 1 175 0
	extui	a7, a12, 26, 6
.LVL137:
	.loc 1 176 0
	and	a12, a12, a8
.LVL138:
	.loc 1 177 0
	addx4	a7, a7, a7
.LVL139:
	add.n	a13, a13, a7
.LVL140:
	.loc 1 178 0
	extui	a9, a13, 26, 6
.LVL141:
	.loc 1 179 0
	and	a7, a13, a8
.LVL142:
	.loc 1 180 0
	add.n	a6, a6, a9
.LVL143:
	.loc 1 183 0
	addi.n	a11, a7, 5
.LVL144:
	.loc 1 184 0
	extui	a9, a11, 26, 6
.LVL145:
	.loc 1 186 0
	add.n	a9, a6, a9
.LVL146:
	.loc 1 187 0
	extui	a10, a9, 26, 6
.LVL147:
	.loc 1 188 0
	and	a9, a9, a8
.LVL148:
	s32i.n	a9, sp, 24
.LVL149:
	.loc 1 189 0
	l32i.n	a9, sp, 16
.LVL150:
	add.n	a10, a9, a10
.LVL151:
	.loc 1 190 0
	extui	a15, a10, 26, 6
.LVL152:
	.loc 1 192 0
	l32i.n	a9, sp, 20
	add.n	a15, a9, a15
.LVL153:
	.loc 1 193 0
	extui	a14, a15, 26, 6
.LVL154:
	.loc 1 195 0
	add.n	a9, a12, a14
	l32r	a14, .LC15
.LVL155:
	add.n	a14, a9, a14
.LVL156:
	.loc 1 198 0
	extui	a9, a14, 31, 1
	addi.n	a9, a9, -1
.LVL157:
	xor	a11, a13, a11
.LVL158:
	and	a11, a11, a8
	and	a11, a11, a9
	.loc 1 206 0
	xor	a7, a7, a11
.LVL159:
	l32i.n	a13, sp, 24
.LVL160:
	xor	a11, a6, a13
	and	a11, a11, a9
	.loc 1 207 0
	xor	a6, a6, a11
.LVL161:
	xor	a5, a5, a10
	and	a5, a5, a8
	and	a5, a5, a9
	.loc 1 208 0
	l32i.n	a10, sp, 16
.LVL162:
	xor	a5, a10, a5
.LVL163:
	xor	a15, a4, a15
.LVL164:
	and	a8, a15, a8
.LVL165:
	and	a8, a8, a9
	.loc 1 209 0
	l32i.n	a13, sp, 20
	xor	a8, a13, a8
.LVL166:
	xor	a14, a12, a14
.LVL167:
	and	a9, a14, a9
.LVL168:
	.loc 1 210 0
	xor	a9, a12, a9
.LVL169:
	.loc 1 213 0
	slli	a4, a6, 26
.LVL170:
	or	a7, a7, a4
.LVL171:
	.loc 1 214 0
	srli	a6, a6, 6
.LVL172:
	slli	a13, a5, 20
	or	a13, a6, a13
.LVL173:
	.loc 1 215 0
	srli	a4, a5, 12
	slli	a11, a8, 14
	or	a11, a4, a11
.LVL174:
	.loc 1 216 0
	extui	a8, a8, 18, 14
.LVL175:
	slli	a9, a9, 8
.LVL176:
	or	a8, a8, a9
.LVL177:
	.loc 1 219 0
	l32i.n	a10, a2, 40
	add.n	a4, a7, a10
	movi.n	a6, 1
	bltu	a4, a7, .L74
	movi.n	a6, 0
.L74:
.LVL178:
	.loc 1 221 0
	l32i.n	a9, a2, 44
	add.n	a5, a9, a13
	movi.n	a4, 1
.LVL179:
	bltu	a5, a9, .L75
	movi.n	a4, 0
.L75:
	add.n	a6, a5, a6
.LVL180:
	movi.n	a9, 1
	bltu	a6, a5, .L76
	movi.n	a9, 0
.L76:
	add.n	a4, a9, a4
.LVL181:
	.loc 1 223 0
	l32i.n	a9, a2, 48
	add.n	a11, a9, a11
.LVL182:
	movi.n	a5, 1
	bltu	a11, a9, .L77
	movi.n	a5, 0
.L77:
	add.n	a4, a11, a4
.LVL183:
	movi.n	a9, 1
	bltu	a4, a11, .L78
	movi.n	a9, 0
.L78:
	add.n	a9, a9, a5
.LVL184:
	.loc 1 225 0
	l32i.n	a5, a2, 52
	add.n	a8, a5, a8
.LVL185:
	add.n	a5, a8, a9
.LVL186:
	add.n	a7, a7, a10
.LVL187:
	s32i.n	a7, sp, 0
.LVL188:
.LBB70:
.LBB71:
	.loc 2 99 0
	srli	a9, a7, 8
	s8i	a7, a3, 0
.LVL189:
	extui	a8, a7, 16, 16
	s8i	a9, a3, 1
	extui	a7, a7, 24, 8
.LVL190:
	s8i	a8, a3, 2
	s8i	a7, a3, 3
.LVL191:
	s32i.n	a6, sp, 4
.LVL192:
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	srli	a9, a6, 8
	s8i	a6, a3, 4
.LVL193:
	extui	a8, a6, 16, 16
	s8i	a9, a3, 5
	extui	a6, a6, 24, 8
.LVL194:
	s8i	a8, a3, 6
	s8i	a6, a3, 7
.LVL195:
	s32i.n	a4, sp, 8
.LVL196:
.LBE73:
.LBE72:
.LBB74:
.LBB75:
	srli	a8, a4, 8
	s8i	a4, a3, 8
	extui	a7, a4, 16, 16
	s8i	a8, a3, 9
	extui	a4, a4, 24, 8
.LVL197:
	s8i	a7, a3, 10
	s8i	a4, a3, 11
.LBE75:
.LBE74:
	.loc 1 231 0
	addi.n	a4, a3, 12
.LVL198:
	s32i.n	a5, sp, 12
.LVL199:
.LBB76:
.LBB77:
	.loc 2 99 0
	srli	a6, a5, 8
	s8i	a5, a3, 12
	extui	a3, a5, 16, 16
.LVL200:
	s8i	a6, a4, 1
	extui	a5, a5, 24, 8
.LVL201:
	s8i	a3, a4, 2
	s8i	a5, a4, 3
.LBE77:
.LBE76:
	.loc 1 234 0
	movi.n	a11, 0x58
	mov.n	a10, a2
	call8	sodium_memzero
.LVL202:
	retw.n
.LFE14:
	.size	poly1305_finish, .-poly1305_finish
	.section	.text.crypto_onetimeauth_poly1305_donna_final,"ax",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna_final, @function
crypto_onetimeauth_poly1305_donna_final:
.LFB19:
	.loc 3 96 0
.LVL203:
	entry	sp, 32
.LCFI6:
	.loc 3 97 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	poly1305_finish
.LVL204:
	.loc 3 100 0
	movi.n	a2, 0
.LVL205:
	retw.n
.LFE19:
	.size	crypto_onetimeauth_poly1305_donna_final, .-crypto_onetimeauth_poly1305_donna_final
	.section	.text.crypto_onetimeauth_poly1305_donna,"ax",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna, @function
crypto_onetimeauth_poly1305_donna:
.LFB16:
	.loc 3 62 0
.LVL206:
	entry	sp, 48
	mov.n	a7, sp
.LCFI7:
	s32i.n	a2, a7, 0
	movi	a2, -0xa0
.LVL207:
	add.n	a2, sp, a2
	movsp	sp, a2
	addi	a2, sp, 63
	srli	a2, a2, 6
	slli	a2, a2, 6
	.loc 3 65 0
	mov.n	a11, a6
	mov.n	a10, a2
	call8	poly1305_init
.LVL208:
	.loc 3 66 0
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	poly1305_update
.LVL209:
	.loc 3 67 0
	l32i.n	a11, a7, 0
	mov.n	a10, a2
	call8	poly1305_finish
.LVL210:
	.loc 3 70 0
	movi.n	a2, 0
	retw.n
.LFE16:
	.size	crypto_onetimeauth_poly1305_donna, .-crypto_onetimeauth_poly1305_donna
	.section	.text.crypto_onetimeauth_poly1305_donna_verify,"ax",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna_verify, @function
crypto_onetimeauth_poly1305_donna_verify:
.LFB20:
	.loc 3 107 0
.LVL211:
	entry	sp, 48
.LCFI8:
	.loc 3 110 0
	mov.n	a14, a6
	mov.n	a12, a4
	mov.n	a13, a5
	mov.n	a11, a3
	mov.n	a10, sp
	call8	crypto_onetimeauth_poly1305_donna
.LVL212:
	.loc 3 112 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_verify_16
.LVL213:
	.loc 3 113 0
	mov.n	a2, a10
.LVL214:
	retw.n
.LFE20:
	.size	crypto_onetimeauth_poly1305_donna_verify, .-crypto_onetimeauth_poly1305_donna_verify
	.global	crypto_onetimeauth_poly1305_donna_implementation
	.section	.data.crypto_onetimeauth_poly1305_donna_implementation,"aw",@progbits
	.align	4
	.type	crypto_onetimeauth_poly1305_donna_implementation, @object
	.size	crypto_onetimeauth_poly1305_donna_implementation, 20
crypto_onetimeauth_poly1305_donna_implementation:
	.word	crypto_onetimeauth_poly1305_donna
	.word	crypto_onetimeauth_poly1305_donna_verify
	.word	crypto_onetimeauth_poly1305_donna_init
	.word	crypto_onetimeauth_poly1305_donna_update
	.word	crypto_onetimeauth_poly1305_donna_final
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI2-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI3-.LFB12
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI5-.LFB14
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI6-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI7-.LFB16
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 7 "d:\\esp32\\esp-idf-v3.1-rc1\\components\\libsodium\\libsodium\\src\\libsodium\\crypto_onetimeauth\\poly1305\\onetimeauth_poly1305.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_16.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbaf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.LASF47
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
	.4byte	.LASF6
	.byte	0x4
	.byte	0x12
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x33
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x5
	.byte	0x15
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x5
	.byte	0x2d
	.4byte	0x61
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	.LASF15
	.2byte	0x100
	.byte	0x6
	.byte	0x13
	.4byte	0xc5
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.byte	0x14
	.4byte	0xc5
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x53
	.4byte	0xd5
	.uleb128 0x9
	.4byte	0x90
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.byte	0x15
	.4byte	0xab
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x14
	.byte	0x7
	.byte	0x7
	.4byte	0x129
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x7
	.byte	0x8
	.4byte	0x152
	.byte	0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa
	.4byte	0x176
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x7
	.byte	0xc
	.4byte	0x196
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x7
	.byte	0xe
	.4byte	0x1b5
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x7
	.byte	0x11
	.4byte	0x1cf
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x9e
	.uleb128 0xc
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x25
	.uleb128 0xc
	.4byte	0x147
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14d
	.uleb128 0xd
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
	.4byte	0x129
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x176
	.uleb128 0xc
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x25
	.uleb128 0xc
	.4byte	0x147
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x158
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x190
	.uleb128 0xc
	.4byte	0x190
	.uleb128 0xc
	.4byte	0x147
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17c
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x1b5
	.uleb128 0xc
	.4byte	0x190
	.uleb128 0xc
	.4byte	0x147
	.uleb128 0xc
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19c
	.uleb128 0xb
	.4byte	0x2c
	.4byte	0x1cf
	.uleb128 0xc
	.4byte	0x190
	.uleb128 0xc
	.4byte	0x9e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x58
	.byte	0x1
	.byte	0x13
	.4byte	0x226
	.uleb128 0xe
	.string	"r"
	.byte	0x1
	.byte	0x14
	.4byte	0x226
	.byte	0
	.uleb128 0xe
	.string	"h"
	.byte	0x1
	.byte	0x15
	.4byte	0x226
	.byte	0x14
	.uleb128 0xe
	.string	"pad"
	.byte	0x1
	.byte	0x16
	.4byte	0x236
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x17
	.4byte	0x25
	.byte	0x38
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x18
	.4byte	0x246
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x1
	.byte	0x19
	.4byte	0x53
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.4byte	0x97
	.4byte	0x236
	.uleb128 0x9
	.4byte	0x90
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0x97
	.4byte	0x246
	.uleb128 0x9
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x53
	.4byte	0x256
	.uleb128 0x9
	.4byte	0x90
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1a
	.4byte	0x1d5
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x2
	.byte	0x4f
	.4byte	0x7e
	.byte	0x3
	.4byte	0x286
	.uleb128 0x10
	.string	"src"
	.byte	0x2
	.byte	0x4f
	.4byte	0x286
	.uleb128 0x11
	.string	"w"
	.byte	0x2
	.byte	0x52
	.4byte	0x7e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x28c
	.uleb128 0xd
	.4byte	0x73
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x2
	.byte	0x60
	.byte	0x3
	.4byte	0x2b2
	.uleb128 0x10
	.string	"dst"
	.byte	0x2
	.byte	0x60
	.4byte	0x2b2
	.uleb128 0x10
	.string	"w"
	.byte	0x2
	.byte	0x60
	.4byte	0x7e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x38
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x507
	.uleb128 0x14
	.string	"st"
	.byte	0x1
	.byte	0x38
	.4byte	0x507
	.4byte	.LLST0
	.uleb128 0x14
	.string	"m"
	.byte	0x1
	.byte	0x38
	.4byte	0x147
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x39
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3b
	.4byte	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"r0"
	.byte	0x1
	.byte	0x3c
	.4byte	0x97
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.string	"r1"
	.byte	0x1
	.byte	0x3c
	.4byte	0x97
	.4byte	.LLST3
	.uleb128 0x18
	.string	"r2"
	.byte	0x1
	.byte	0x3c
	.4byte	0x97
	.4byte	.LLST4
	.uleb128 0x18
	.string	"r3"
	.byte	0x1
	.byte	0x3c
	.4byte	0x97
	.4byte	.LLST5
	.uleb128 0x18
	.string	"r4"
	.byte	0x1
	.byte	0x3c
	.4byte	0x97
	.4byte	.LLST6
	.uleb128 0x18
	.string	"s1"
	.byte	0x1
	.byte	0x3d
	.4byte	0x97
	.4byte	.LLST7
	.uleb128 0x18
	.string	"s2"
	.byte	0x1
	.byte	0x3d
	.4byte	0x97
	.4byte	.LLST8
	.uleb128 0x18
	.string	"s3"
	.byte	0x1
	.byte	0x3d
	.4byte	0x97
	.4byte	.LLST9
	.uleb128 0x18
	.string	"s4"
	.byte	0x1
	.byte	0x3d
	.4byte	0x97
	.4byte	.LLST10
	.uleb128 0x18
	.string	"h0"
	.byte	0x1
	.byte	0x3e
	.4byte	0x97
	.4byte	.LLST11
	.uleb128 0x18
	.string	"h1"
	.byte	0x1
	.byte	0x3e
	.4byte	0x97
	.4byte	.LLST12
	.uleb128 0x18
	.string	"h2"
	.byte	0x1
	.byte	0x3e
	.4byte	0x97
	.4byte	.LLST13
	.uleb128 0x18
	.string	"h3"
	.byte	0x1
	.byte	0x3e
	.4byte	0x97
	.4byte	.LLST14
	.uleb128 0x18
	.string	"h4"
	.byte	0x1
	.byte	0x3e
	.4byte	0x97
	.4byte	.LLST15
	.uleb128 0x18
	.string	"d0"
	.byte	0x1
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST16
	.uleb128 0x18
	.string	"d1"
	.byte	0x1
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x18
	.string	"d2"
	.byte	0x1
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x18
	.string	"d3"
	.byte	0x1
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x18
	.string	"d4"
	.byte	0x1
	.byte	0x3f
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x40
	.4byte	0x97
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0x55
	.4byte	0x44a
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST22
	.uleb128 0x1b
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0x56
	.4byte	0x47a
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST23
	.uleb128 0x1b
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.byte	0x57
	.4byte	0x4aa
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST24
	.uleb128 0x1b
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB45
	.4byte	.LBE45-.LBB45
	.byte	0x1
	.byte	0x58
	.4byte	0x4da
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST25
	.uleb128 0x1b
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x261
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x1
	.byte	0x59
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST26
	.uleb128 0x1b
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x256
	.uleb128 0xd
	.4byte	0x97
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x3
	.byte	0xf
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c0
	.uleb128 0x1e
	.string	"st"
	.byte	0x3
	.byte	0xf
	.4byte	0x507
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"m"
	.byte	0x3
	.byte	0xf
	.4byte	0x147
	.4byte	.LLST27
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x3
	.byte	0x10
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.byte	0x12
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x1f
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.4byte	0x590
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x3
	.byte	0x16
	.4byte	0x25
	.4byte	.LLST30
	.uleb128 0x21
	.4byte	.LVL82
	.4byte	0x2b8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 64
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x3
	.byte	0x2a
	.4byte	0x25
	.4byte	.LLST31
	.uleb128 0x21
	.4byte	.LVL85
	.4byte	0x2b8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF35
	.byte	0x3
	.byte	0x54
	.4byte	0x2c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61d
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x3
	.byte	0x55
	.4byte	0x190
	.4byte	.LLST32
	.uleb128 0x1e
	.string	"in"
	.byte	0x3
	.byte	0x55
	.4byte	0x147
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF33
	.byte	0x3
	.byte	0x56
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x21
	.4byte	.LVL100
	.4byte	0x512
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ef
	.uleb128 0x1e
	.string	"st"
	.byte	0x1
	.byte	0x1d
	.4byte	0x507
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"key"
	.byte	0x1
	.byte	0x1d
	.4byte	0x147
	.4byte	.LLST33
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.byte	0x20
	.4byte	0x67c
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST34
	.uleb128 0x1b
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.byte	0x21
	.4byte	0x6ab
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST35
	.uleb128 0x1b
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.byte	0x1
	.byte	0x22
	.4byte	0x6da
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST36
	.uleb128 0x1b
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.byte	0x1
	.byte	0x23
	.4byte	0x709
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST37
	.uleb128 0x1b
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB59
	.4byte	.LBE59-.LBB59
	.byte	0x1
	.byte	0x24
	.4byte	0x738
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST38
	.uleb128 0x1b
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x1
	.byte	0x2e
	.4byte	0x767
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST39
	.uleb128 0x1b
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.byte	0x1
	.byte	0x2f
	.4byte	0x796
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST40
	.uleb128 0x1b
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x261
	.4byte	.LBB65
	.4byte	.LBE65-.LBB65
	.byte	0x1
	.byte	0x30
	.4byte	0x7c5
	.uleb128 0x1a
	.4byte	0x271
	.4byte	.LLST41
	.uleb128 0x1b
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0x261
	.4byte	.LBB67
	.4byte	.LBE67-.LBB67
	.byte	0x1
	.byte	0x31
	.uleb128 0x25
	.4byte	0x271
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1b
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.uleb128 0x1c
	.4byte	0x27c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF36
	.byte	0x3
	.byte	0x49
	.4byte	0x2c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83b
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x3
	.byte	0x49
	.4byte	0x190
	.4byte	.LLST42
	.uleb128 0x1e
	.string	"key"
	.byte	0x3
	.byte	0x4a
	.4byte	0x147
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LVL114
	.4byte	0x61d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0x8c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ff
	.uleb128 0x1e
	.string	"st"
	.byte	0x1
	.byte	0x8c
	.4byte	0x507
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"mac"
	.byte	0x1
	.byte	0x8c
	.4byte	0x9e
	.4byte	.LLST43
	.uleb128 0x18
	.string	"h0"
	.byte	0x1
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST44
	.uleb128 0x18
	.string	"h1"
	.byte	0x1
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST45
	.uleb128 0x18
	.string	"h2"
	.byte	0x1
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST46
	.uleb128 0x18
	.string	"h3"
	.byte	0x1
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST47
	.uleb128 0x18
	.string	"h4"
	.byte	0x1
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST48
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0x8e
	.4byte	0x97
	.4byte	.LLST49
	.uleb128 0x18
	.string	"g0"
	.byte	0x1
	.byte	0x8f
	.4byte	0x97
	.4byte	.LLST50
	.uleb128 0x18
	.string	"g1"
	.byte	0x1
	.byte	0x8f
	.4byte	0x97
	.4byte	.LLST51
	.uleb128 0x18
	.string	"g2"
	.byte	0x1
	.byte	0x8f
	.4byte	0x97
	.4byte	.LLST52
	.uleb128 0x18
	.string	"g3"
	.byte	0x1
	.byte	0x8f
	.4byte	0x97
	.4byte	.LLST53
	.uleb128 0x18
	.string	"g4"
	.byte	0x1
	.byte	0x8f
	.4byte	0x97
	.4byte	.LLST54
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.byte	0x90
	.4byte	0x25
	.4byte	.LLST55
	.uleb128 0x20
	.4byte	.LASF38
	.byte	0x1
	.byte	0x91
	.4byte	0x97
	.4byte	.LLST56
	.uleb128 0x1f
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.4byte	0x952
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x95
	.4byte	0x25
	.4byte	.LLST57
	.uleb128 0x21
	.4byte	.LVL122
	.4byte	0x2b8
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 64
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x291
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.byte	0xe4
	.4byte	0x978
	.uleb128 0x1a
	.4byte	0x2a8
	.4byte	.LLST58
	.uleb128 0x1a
	.4byte	0x29d
	.4byte	.LLST59
	.byte	0
	.uleb128 0x19
	.4byte	0x291
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.byte	0xe5
	.4byte	0x99e
	.uleb128 0x1a
	.4byte	0x2a8
	.4byte	.LLST60
	.uleb128 0x1a
	.4byte	0x29d
	.4byte	.LLST61
	.byte	0
	.uleb128 0x19
	.4byte	0x291
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.byte	0xe6
	.4byte	0x9c4
	.uleb128 0x1a
	.4byte	0x2a8
	.4byte	.LLST62
	.uleb128 0x1a
	.4byte	0x29d
	.4byte	.LLST63
	.byte	0
	.uleb128 0x19
	.4byte	0x291
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x1
	.byte	0xe7
	.4byte	0x9e8
	.uleb128 0x1a
	.4byte	0x2a8
	.4byte	.LLST64
	.uleb128 0x25
	.4byte	0x29d
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x21
	.4byte	.LVL202
	.4byte	0xb9c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF39
	.byte	0x3
	.byte	0x5e
	.4byte	0x2c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4b
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x3
	.byte	0x5f
	.4byte	0x190
	.4byte	.LLST65
	.uleb128 0x1e
	.string	"out"
	.byte	0x3
	.byte	0x5f
	.4byte	0x9e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LVL204
	.4byte	0x83b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF40
	.byte	0x3
	.byte	0x3b
	.4byte	0x2c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf7
	.uleb128 0x14
	.string	"out"
	.byte	0x3
	.byte	0x3b
	.4byte	0x9e
	.4byte	.LLST66
	.uleb128 0x1e
	.string	"m"
	.byte	0x3
	.byte	0x3b
	.4byte	0x147
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF33
	.byte	0x3
	.byte	0x3c
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1e
	.string	"key"
	.byte	0x3
	.byte	0x3d
	.4byte	0x147
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x3
	.byte	0x3f
	.4byte	0x256
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL208
	.4byte	0x61d
	.4byte	0xac5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL209
	.4byte	0x512
	.4byte	0xadf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL210
	.4byte	0x83b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF41
	.byte	0x3
	.byte	0x67
	.4byte	0x2c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8b
	.uleb128 0x14
	.string	"h"
	.byte	0x3
	.byte	0x67
	.4byte	0x147
	.4byte	.LLST67
	.uleb128 0x1e
	.string	"in"
	.byte	0x3
	.byte	0x68
	.4byte	0x147
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF33
	.byte	0x3
	.byte	0x69
	.4byte	0x25
	.uleb128 0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1e
	.string	"k"
	.byte	0x3
	.byte	0x6a
	.4byte	0x147
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x3
	.byte	0x6c
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LVL212
	.4byte	0xa4b
	.4byte	0xb74
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL213
	.4byte	0xba7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF50
	.byte	0x3
	.byte	0x74
	.4byte	0xe0
	.uleb128 0x5
	.byte	0x3
	.4byte	crypto_onetimeauth_poly1305_donna_implementation
	.uleb128 0x28
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x8
	.byte	0x16
	.uleb128 0x28
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x9
	.byte	0x10
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x8
	.byte	0x91
	.sleb128 -80
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL26
	.4byte	.LVL67
	.2byte	0xa
	.byte	0x91
	.sleb128 -80
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL68
	.4byte	.LFE13
	.2byte	0xa
	.byte	0x91
	.sleb128 -80
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x76
	.sleb128 12
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x5
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -96
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x91
	.sleb128 -108
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL15
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL45
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL49
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL24
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL69
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x8
	.byte	0x91
	.sleb128 -88
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL28
	.4byte	.LVL68
	.2byte	0xa
	.byte	0x91
	.sleb128 -88
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x91
	.sleb128 -68
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL30
	.4byte	.LVL42
	.2byte	0xa
	.byte	0x91
	.sleb128 -68
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL31
	.4byte	.LVL46
	.2byte	0x7
	.byte	0x91
	.sleb128 -64
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL32
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL38
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0xa
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL20
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x77
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL21
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x77
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x77
	.sleb128 -13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL22
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x77
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x77
	.sleb128 -10
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL23
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x77
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x77
	.sleb128 -7
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL24
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x77
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x77
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL70
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL70
	.4byte	.LVL78
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL90
	.4byte	.LVL96
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL73
	.4byte	.LVL81
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL102
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x79
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL103
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x79
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL104
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x79
	.sleb128 -25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL105
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x73
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x79
	.sleb128 -22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL106
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x73
	.sleb128 9
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x79
	.sleb128 -19
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL107
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x73
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x79
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x73
	.sleb128 16
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x79
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x73
	.sleb128 20
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x79
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x73
	.sleb128 24
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x79
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL116
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL123
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL142
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL178
	.4byte	.LVL187
	.2byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL124
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x45
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x7b
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL181
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL125
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL132
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL141
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL163
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL174
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL184
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL126
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL135
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL166
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL177
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL186
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL127
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL169
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL128
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0xa
	.byte	0x7b
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL155
	.4byte	.LVL164
	.2byte	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x56
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL170
	.2byte	0x5c
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL189
	.2byte	0x90
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL145
	.4byte	.LVL157
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0xc
	.byte	0x7b
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0xc
	.byte	0x77
	.sleb128 5
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x11
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL165
	.2byte	0x2a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL168
	.2byte	0x27
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x8b
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x5
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x8
	.byte	0x7b
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL150
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL157
	.4byte	.LVL168
	.2byte	0x7
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x6b
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL152
	.4byte	.LVL157
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL162
	.2byte	0xc
	.byte	0x7a
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x57
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL168
	.2byte	0x5d
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0xc1
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL154
	.4byte	.LVL157
	.2byte	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL164
	.2byte	0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x5d
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x78
	.sleb128 0
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL168
	.2byte	0x63
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0xc7
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL157
	.4byte	.LVL167
	.2byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x66
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x79
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0xca
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL181
	.4byte	.LVL183
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL157
	.4byte	.LVL168
	.2byte	0x4
	.byte	0x79
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x65
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL189
	.2byte	0x99
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x5
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 32
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x72
	.sleb128 36
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x22
	.byte	0x4a
	.byte	0x25
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x1c
	.byte	0x4f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL188
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL186
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL191
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x74
	.sleb128 -8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL195
	.4byte	.LVL200
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x74
	.sleb128 -4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL199
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL203
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL211
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL214
	.4byte	.LFE20
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"poly1305_state_internal_t"
.LASF46:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_onetimeauth/poly1305/donna/poly1305_donna.c"
.LASF6:
	.string	"__uint8_t"
.LASF36:
	.string	"crypto_onetimeauth_poly1305_donna_init"
.LASF35:
	.string	"crypto_onetimeauth_poly1305_donna_update"
.LASF17:
	.string	"opaque"
.LASF0:
	.string	"long long unsigned int"
.LASF24:
	.string	"leftover"
.LASF49:
	.string	"store32_le"
.LASF8:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF30:
	.string	"poly1305_update"
.LASF32:
	.string	"state"
.LASF11:
	.string	"long int"
.LASF33:
	.string	"inlen"
.LASF7:
	.string	"__uint32_t"
.LASF38:
	.string	"mask"
.LASF39:
	.string	"crypto_onetimeauth_poly1305_donna_final"
.LASF20:
	.string	"onetimeauth_init"
.LASF34:
	.string	"poly1305_init"
.LASF1:
	.string	"unsigned int"
.LASF21:
	.string	"onetimeauth_update"
.LASF37:
	.string	"poly1305_finish"
.LASF13:
	.string	"long unsigned int"
.LASF29:
	.string	"poly1305_blocks"
.LASF2:
	.string	"short unsigned int"
.LASF41:
	.string	"crypto_onetimeauth_poly1305_donna_verify"
.LASF22:
	.string	"onetimeauth_final"
.LASF15:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF12:
	.string	"sizetype"
.LASF16:
	.string	"crypto_onetimeauth_poly1305_implementation"
.LASF43:
	.string	"sodium_memzero"
.LASF28:
	.string	"hibit"
.LASF4:
	.string	"unsigned char"
.LASF40:
	.string	"crypto_onetimeauth_poly1305_donna"
.LASF45:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF5:
	.string	"short int"
.LASF50:
	.string	"crypto_onetimeauth_poly1305_donna_implementation"
.LASF26:
	.string	"final"
.LASF10:
	.string	"uint32_t"
.LASF47:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\libsodium"
.LASF48:
	.string	"load32_le"
.LASF19:
	.string	"onetimeauth_verify"
.LASF14:
	.string	"char"
.LASF25:
	.string	"buffer"
.LASF31:
	.string	"want"
.LASF18:
	.string	"onetimeauth"
.LASF42:
	.string	"correct"
.LASF27:
	.string	"bytes"
.LASF9:
	.string	"uint8_t"
.LASF44:
	.string	"crypto_verify_16"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
