	.file	"x25519_ref10.c"
	.text
.Ltext0:
	.section	.text.fe_cswap,"ax",@progbits
	.align	4
	.type	fe_cswap, @function
fe_cswap:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c"
	.loc 1 21 0
.LVL0:
	entry	sp, 80
.LCFI0:
.LVL1:
	.loc 1 32 0
	l32i.n	a5, a3, 0
	s32i.n	a5, sp, 0
.LVL2:
	.loc 1 33 0
	l32i.n	a6, a3, 4
	s32i.n	a6, sp, 4
.LVL3:
	.loc 1 34 0
	l32i.n	a8, a3, 8
	s32i.n	a8, sp, 8
.LVL4:
	.loc 1 35 0
	l32i.n	a9, a3, 12
	s32i.n	a9, sp, 12
.LVL5:
	.loc 1 36 0
	l32i.n	a5, a3, 16
.LVL6:
	s32i.n	a5, sp, 16
.LVL7:
	.loc 1 37 0
	l32i.n	a6, a3, 20
.LVL8:
	s32i.n	a6, sp, 20
.LVL9:
	.loc 1 38 0
	l32i.n	a8, a3, 24
.LVL10:
	s32i.n	a8, sp, 24
.LVL11:
	.loc 1 39 0
	l32i.n	a9, a3, 28
.LVL12:
	s32i.n	a9, sp, 28
.LVL13:
	.loc 1 40 0
	l32i.n	a5, a3, 32
.LVL14:
	s32i.n	a5, sp, 32
.LVL15:
	.loc 1 41 0
	l32i.n	a6, a3, 36
.LVL16:
	s32i.n	a6, sp, 36
.LVL17:
	.loc 1 42 0
	l32i.n	a8, a2, 0
.LVL18:
	l32i.n	a9, sp, 0
.LVL19:
	xor	a5, a8, a9
.LVL20:
	.loc 1 43 0
	l32i.n	a6, a2, 4
.LVL21:
	l32i.n	a8, sp, 4
	xor	a15, a6, a8
.LVL22:
	.loc 1 44 0
	l32i.n	a9, a2, 8
	l32i.n	a6, sp, 8
	xor	a14, a9, a6
.LVL23:
	.loc 1 45 0
	l32i.n	a8, a2, 12
	l32i.n	a9, sp, 12
	xor	a13, a8, a9
.LVL24:
	.loc 1 46 0
	l32i.n	a6, a2, 16
	l32i.n	a8, sp, 16
	xor	a12, a6, a8
.LVL25:
	.loc 1 47 0
	l32i.n	a9, a2, 20
	l32i.n	a6, sp, 20
	xor	a11, a9, a6
.LVL26:
	.loc 1 48 0
	l32i.n	a8, a2, 24
	l32i.n	a9, sp, 24
	xor	a10, a8, a9
.LVL27:
	.loc 1 49 0
	l32i.n	a8, a2, 28
	l32i.n	a9, sp, 28
	xor	a6, a8, a9
.LVL28:
	.loc 1 50 0
	l32i.n	a8, a2, 32
	l32i.n	a9, sp, 32
	xor	a8, a8, a9
	s32i.n	a8, sp, 40
.LVL29:
	.loc 1 51 0
	l32i.n	a8, a2, 36
.LVL30:
	l32i.n	a9, sp, 36
	xor	a7, a8, a9
.LVL31:
	.loc 1 53 0
	neg	a4, a4
.LVL32:
	.loc 1 54 0
	and	a5, a5, a4
.LVL33:
	.loc 1 55 0
	and	a15, a15, a4
.LVL34:
	.loc 1 56 0
	and	a14, a14, a4
.LVL35:
	.loc 1 57 0
	and	a13, a13, a4
.LVL36:
	.loc 1 58 0
	and	a12, a12, a4
.LVL37:
	.loc 1 59 0
	and	a11, a11, a4
.LVL38:
	.loc 1 60 0
	and	a10, a10, a4
.LVL39:
	.loc 1 61 0
	and	a9, a6, a4
.LVL40:
	.loc 1 62 0
	l32i.n	a6, sp, 40
	and	a8, a6, a4
.LVL41:
	.loc 1 63 0
	and	a4, a7, a4
.LVL42:
	.loc 1 64 0
	l32i.n	a6, a2, 0
	xor	a7, a6, a5
	s32i.n	a7, a2, 0
.LVL43:
	.loc 1 65 0
	l32i.n	a6, a2, 4
.LVL44:
	xor	a7, a6, a15
	s32i.n	a7, a2, 4
.LVL45:
	.loc 1 66 0
	l32i.n	a6, a2, 8
.LVL46:
	xor	a7, a6, a14
	s32i.n	a7, a2, 8
.LVL47:
	.loc 1 67 0
	l32i.n	a6, a2, 12
.LVL48:
	xor	a7, a6, a13
	s32i.n	a7, a2, 12
.LVL49:
	.loc 1 68 0
	l32i.n	a6, a2, 16
.LVL50:
	xor	a7, a6, a12
	s32i.n	a7, a2, 16
.LVL51:
	.loc 1 69 0
	l32i.n	a6, a2, 20
.LVL52:
	xor	a7, a6, a11
	s32i.n	a7, a2, 20
.LVL53:
	.loc 1 70 0
	l32i.n	a6, a2, 24
.LVL54:
	xor	a7, a6, a10
	s32i.n	a7, a2, 24
.LVL55:
	.loc 1 71 0
	l32i.n	a6, a2, 28
.LVL56:
	xor	a7, a6, a9
	s32i.n	a7, a2, 28
.LVL57:
	.loc 1 72 0
	l32i.n	a6, a2, 32
.LVL58:
	xor	a7, a6, a8
	s32i.n	a7, a2, 32
.LVL59:
	.loc 1 73 0
	l32i.n	a6, a2, 36
.LVL60:
	xor	a7, a6, a4
	s32i.n	a7, a2, 36
.LVL61:
	.loc 1 74 0
	l32i.n	a2, sp, 0
.LVL62:
	xor	a5, a2, a5
.LVL63:
	s32i.n	a5, a3, 0
	.loc 1 75 0
	l32i.n	a5, sp, 4
	xor	a15, a5, a15
.LVL64:
	s32i.n	a15, a3, 4
	.loc 1 76 0
	l32i.n	a6, sp, 8
.LVL65:
	xor	a14, a6, a14
.LVL66:
	s32i.n	a14, a3, 8
	.loc 1 77 0
	l32i.n	a2, sp, 12
	xor	a13, a2, a13
.LVL67:
	s32i.n	a13, a3, 12
	.loc 1 78 0
	l32i.n	a5, sp, 16
	xor	a12, a5, a12
.LVL68:
	s32i.n	a12, a3, 16
	.loc 1 79 0
	l32i.n	a6, sp, 20
	xor	a11, a6, a11
.LVL69:
	s32i.n	a11, a3, 20
	.loc 1 80 0
	l32i.n	a2, sp, 24
	xor	a10, a2, a10
.LVL70:
	s32i.n	a10, a3, 24
	.loc 1 81 0
	l32i.n	a5, sp, 28
	xor	a9, a5, a9
.LVL71:
	s32i.n	a9, a3, 28
	.loc 1 82 0
	l32i.n	a6, sp, 32
	xor	a8, a6, a8
.LVL72:
	s32i.n	a8, a3, 32
	.loc 1 83 0
	l32i.n	a8, sp, 36
	xor	a4, a8, a4
.LVL73:
	s32i.n	a4, a3, 36
	retw.n
.LFE0:
	.size	fe_cswap, .-fe_cswap
	.section	.text.fe_mul121666,"ax",@progbits
	.literal_position
	.literal .LC0, 121666
	.literal .LC1, 16777216, 0
	.literal .LC2, -33554432
	.literal .LC4, -67108864
	.literal .LC5, 33554432
	.align	4
	.type	fe_mul121666, @function
fe_mul121666:
.LFB1:
	.loc 1 99 0
.LVL74:
	entry	sp, 128
.LCFI1:
	.loc 1 100 0
	l32i.n	a9, a3, 0
.LVL75:
	.loc 1 101 0
	l32i.n	a6, a3, 4
.LVL76:
	.loc 1 102 0
	l32i.n	a5, a3, 8
.LVL77:
	.loc 1 103 0
	l32i.n	a4, a3, 12
.LVL78:
	.loc 1 104 0
	l32i.n	a15, a3, 16
.LVL79:
	.loc 1 105 0
	l32i.n	a14, a3, 20
.LVL80:
	.loc 1 106 0
	l32i.n	a13, a3, 24
.LVL81:
	.loc 1 107 0
	l32i.n	a12, a3, 28
.LVL82:
	.loc 1 108 0
	l32i.n	a11, a3, 32
.LVL83:
	.loc 1 109 0
	l32i.n	a10, a3, 36
.LVL84:
	.loc 1 110 0
	srai	a3, a9, 31
.LVL85:
	l32r	a8, .LC0
	mull	a3, a3, a8
	mull	a7, a9, a8
	muluh	a9, a9, a8
.LVL86:
	s32i.n	a7, sp, 36
	add.n	a9, a3, a9
.LVL87:
	.loc 1 111 0
	srai	a3, a6, 31
	mull	a3, a3, a8
	s32i.n	a3, sp, 4
	mull	a3, a6, a8
	s32i.n	a3, sp, 0
	muluh	a6, a6, a8
.LVL88:
	s32i.n	a3, sp, 56
	l32i.n	a3, sp, 4
	add.n	a6, a3, a6
	s32i.n	a6, sp, 12
.LVL89:
	.loc 1 112 0
	srai	a3, a5, 31
	mull	a3, a3, a8
	mull	a6, a5, a8
	s32i.n	a6, sp, 28
	muluh	a6, a5, a8
	l32i.n	a5, sp, 28
.LVL90:
	s32i.n	a5, sp, 60
	add.n	a6, a3, a6
.LVL91:
	.loc 1 113 0
	srai	a5, a4, 31
.LVL92:
	mull	a5, a5, a8
	mull	a3, a4, a8
	muluh	a4, a4, a8
.LVL93:
	s32i	a3, sp, 64
	add.n	a4, a5, a4
	s32i.n	a4, sp, 16
.LVL94:
	.loc 1 114 0
	srai	a4, a15, 31
	mull	a4, a4, a8
	mull	a5, a15, a8
	s32i.n	a5, sp, 32
	muluh	a15, a15, a8
.LVL95:
	s32i	a5, sp, 68
	add.n	a15, a4, a15
.LVL96:
	.loc 1 115 0
	srai	a4, a14, 31
	mull	a4, a4, a8
	mull	a5, a14, a8
.LVL97:
	s32i.n	a5, sp, 4
	muluh	a14, a14, a8
.LVL98:
	s32i	a5, sp, 72
	add.n	a5, a4, a14
	s32i.n	a5, sp, 20
.LVL99:
	.loc 1 116 0
	srai	a4, a13, 31
	mull	a4, a4, a8
	mull	a5, a13, a8
	s32i.n	a5, sp, 48
	muluh	a13, a13, a8
.LVL100:
	s32i	a5, sp, 76
	add.n	a5, a4, a13
	s32i.n	a5, sp, 24
.LVL101:
	.loc 1 117 0
	srai	a4, a12, 31
	mull	a4, a4, a8
	mull	a5, a12, a8
.LVL102:
	s32i.n	a5, sp, 8
	muluh	a12, a12, a8
.LVL103:
	s32i	a5, sp, 80
	add.n	a5, a4, a12
	s32i.n	a5, sp, 40
.LVL104:
	.loc 1 118 0
	srai	a4, a11, 31
	mull	a4, a4, a8
	mull	a5, a11, a8
	s32i.n	a5, sp, 52
	muluh	a11, a11, a8
.LVL105:
	s32i	a5, sp, 84
	add.n	a5, a4, a11
	s32i.n	a5, sp, 44
.LVL106:
	.loc 1 119 0
	srai	a4, a10, 31
	mull	a4, a4, a8
	mull	a11, a10, a8
	muluh	a8, a10, a8
	add.n	a8, a4, a8
.LVL107:
	.loc 1 131 0
	l32r	a4, .LC1
	l32r	a5, .LC1+4
.LVL108:
	add.n	a13, a11, a4
	movi.n	a12, 1
	bltu	a13, a11, .L3
	movi.n	a12, 0
.L3:
	add.n	a8, a8, a5
	add.n	a12, a12, a8
	slli	a4, a12, 7
	extui	a13, a13, 25, 7
	or	a13, a4, a13
	srai	a12, a12, 25
.LVL109:
	.loc 1 132 0
	movi.n	a4, 0x13
	mull	a12, a4, a12
.LVL110:
	mull	a5, a4, a13
	muluh	a4, a4, a13
	add.n	a4, a12, a4
	add.n	a7, a7, a5
.LVL111:
	movi.n	a5, 1
	l32i.n	a8, sp, 36
	bltu	a7, a8, .L4
	movi.n	a5, 0
.L4:
	add.n	a9, a9, a4
.LVL112:
	add.n	a9, a5, a9
	s32i.n	a9, sp, 36
.LVL113:
	s32i	a7, sp, 88
.LVL114:
	.loc 1 133 0
	l32r	a4, .LC2
	mull	a13, a13, a4
	add.n	a13, a11, a13
	s32i	a13, sp, 92
	.loc 1 134 0
	l32r	a4, .LC1
	l32r	a5, .LC1+4
	l32i.n	a10, sp, 0
.LVL115:
	add.n	a9, a10, a4
.LVL116:
	movi.n	a8, 1
	l32i.n	a10, sp, 56
	bltu	a9, a10, .L6
.LVL117:
	movi.n	a8, 0
.L6:
	l32i.n	a10, sp, 12
	add.n	a4, a10, a5
	add.n	a8, a8, a4
	slli	a4, a8, 7
	extui	a9, a9, 25, 7
	or	a9, a4, a9
	srai	a8, a8, 25
.LVL118:
	.loc 1 135 0
	l32i.n	a4, sp, 28
	add.n	a12, a4, a9
	movi.n	a4, 1
	l32i.n	a5, sp, 60
	bltu	a12, a5, .L7
	movi.n	a4, 0
.L7:
	add.n	a8, a6, a8
.LVL119:
	add.n	a13, a4, a8
	s32i.n	a12, sp, 12
.LVL120:
	.loc 1 136 0
	l32r	a4, .LC2
	mull	a9, a9, a4
	l32i.n	a6, sp, 0
	add.n	a9, a6, a9
	s32i.n	a9, sp, 28
	.loc 1 137 0
	l32r	a4, .LC1
	l32r	a5, .LC1+4
	add.n	a11, a3, a4
	movi.n	a6, 1
	l32i	a8, sp, 64
	bltu	a11, a8, .L9
.LVL121:
	movi.n	a6, 0
.L9:
	l32i.n	a10, sp, 16
	add.n	a4, a10, a5
	add.n	a6, a6, a4
	slli	a4, a6, 7
	extui	a11, a11, 25, 7
	or	a11, a4, a11
	srai	a6, a6, 25
.LVL122:
	.loc 1 138 0
	l32i.n	a4, sp, 32
	add.n	a9, a4, a11
	movi.n	a14, 1
	l32i	a5, sp, 68
	bltu	a9, a5, .L10
	movi.n	a14, 0
.L10:
	add.n	a6, a15, a6
.LVL123:
	add.n	a14, a14, a6
	s32i.n	a9, sp, 0
.LVL124:
	.loc 1 139 0
	l32r	a4, .LC2
	mull	a11, a11, a4
	add.n	a11, a3, a11
	s32i.n	a11, sp, 32
	.loc 1 140 0
	l32r	a4, .LC1
	l32r	a5, .LC1+4
	l32i.n	a8, sp, 4
	add.n	a6, a8, a4
	movi.n	a3, 1
	l32i	a10, sp, 72
	bltu	a6, a10, .L12
.LVL125:
	movi.n	a3, 0
.L12:
	l32i.n	a8, sp, 20
	add.n	a4, a8, a5
	add.n	a3, a3, a4
	slli	a4, a3, 7
	extui	a6, a6, 25, 7
	or	a6, a4, a6
	srai	a3, a3, 25
.LVL126:
	.loc 1 141 0
	l32i.n	a10, sp, 48
	add.n	a8, a10, a6
	movi.n	a15, 1
	l32i	a4, sp, 76
	bltu	a8, a4, .L13
	movi.n	a15, 0
.L13:
	l32i.n	a5, sp, 24
	add.n	a3, a5, a3
.LVL127:
	add.n	a15, a15, a3
	s32i.n	a8, sp, 16
.LVL128:
	.loc 1 142 0
	l32r	a3, .LC2
	mull	a6, a6, a3
	l32i.n	a10, sp, 4
	add.n	a6, a10, a6
	s32i.n	a6, sp, 20
	.loc 1 143 0
	l32r	a4, .LC1
	l32r	a5, .LC1+4
	l32i.n	a6, sp, 8
	add.n	a3, a6, a4
	movi.n	a11, 1
	l32i	a10, sp, 80
	bltu	a3, a10, .L15
.LVL129:
	movi.n	a11, 0
.L15:
	l32i.n	a6, sp, 40
	add.n	a4, a6, a5
	add.n	a11, a11, a4
	slli	a5, a11, 7
	extui	a4, a3, 25, 7
	or	a4, a5, a4
	srai	a11, a11, 25
.LVL130:
	.loc 1 144 0
	l32i.n	a3, sp, 52
	add.n	a10, a3, a4
	movi.n	a3, 1
	l32i	a5, sp, 84
	bltu	a10, a5, .L16
	movi.n	a3, 0
.L16:
	l32i.n	a6, sp, 44
	add.n	a11, a6, a11
.LVL131:
	add.n	a3, a3, a11
	s32i.n	a10, sp, 4
.LVL132:
	.loc 1 145 0
	l32r	a5, .LC2
	mull	a4, a4, a5
	l32i.n	a5, sp, 8
	add.n	a4, a5, a4
	s32i.n	a4, sp, 8
	.loc 1 147 0
	l32r	a4, .LC5
	add.n	a6, a7, a4
	movi.n	a11, 1
	l32i	a5, sp, 88
	bltu	a6, a5, .L18
.LVL133:
	movi.n	a11, 0
.L18:
	l32i.n	a4, sp, 36
	addi	a5, a4, 0
	add.n	a11, a11, a5
	slli	a11, a11, 6
	extui	a6, a6, 26, 6
	or	a6, a11, a6
.LVL134:
	.loc 1 148 0
	l32i.n	a5, sp, 28
	add.n	a5, a5, a6
	s32i.n	a5, sp, 24
	.loc 1 149 0
	l32r	a4, .LC4
	mull	a6, a6, a4
	add.n	a7, a7, a6
.LVL135:
	.loc 1 150 0
	l32r	a4, .LC5
	add.n	a6, a12, a4
	movi.n	a11, 1
	l32i.n	a5, sp, 12
	bltu	a6, a5, .L21
	movi.n	a11, 0
.L21:
	addi	a4, a13, 0
	add.n	a11, a11, a4
	slli	a11, a11, 6
	extui	a6, a6, 26, 6
	or	a6, a11, a6
.LVL136:
	.loc 1 151 0
	l32i.n	a4, sp, 32
	add.n	a11, a4, a6
	.loc 1 152 0
	l32r	a4, .LC4
	mull	a6, a6, a4
	add.n	a6, a12, a6
.LVL137:
	.loc 1 153 0
	l32r	a5, .LC5
	add.n	a12, a9, a5
	movi.n	a13, 1
	l32i.n	a4, sp, 0
	bltu	a12, a4, .L24
	movi.n	a13, 0
.L24:
	addi	a14, a14, 0
	add.n	a13, a13, a14
	slli	a13, a13, 6
	extui	a12, a12, 26, 6
	or	a12, a13, a12
.LVL138:
	.loc 1 154 0
	l32i.n	a5, sp, 20
	add.n	a13, a5, a12
	.loc 1 155 0
	l32r	a4, .LC4
	mull	a12, a12, a4
	add.n	a12, a9, a12
.LVL139:
	.loc 1 156 0
	l32r	a4, .LC5
	add.n	a14, a8, a4
	movi.n	a9, 1
	l32i.n	a5, sp, 16
	bltu	a14, a5, .L27
	movi.n	a9, 0
.L27:
	addi	a15, a15, 0
	add.n	a9, a9, a15
	slli	a9, a9, 6
	extui	a14, a14, 26, 6
	or	a14, a9, a14
.LVL140:
	.loc 1 157 0
	l32i.n	a4, sp, 8
	add.n	a15, a4, a14
.LVL141:
	.loc 1 158 0
	l32r	a4, .LC4
	mull	a14, a14, a4
	add.n	a14, a8, a14
	.loc 1 159 0
	l32r	a5, .LC5
	add.n	a4, a10, a5
	movi.n	a5, 1
	l32i.n	a8, sp, 4
	bltu	a4, a8, .L30
	movi.n	a5, 0
.L30:
	addi	a3, a3, 0
	add.n	a5, a5, a3
	slli	a5, a5, 6
	extui	a4, a4, 26, 6
	or	a4, a5, a4
.LVL142:
	.loc 1 160 0
	l32i	a3, sp, 92
.LVL143:
	add.n	a5, a3, a4
	.loc 1 161 0
	l32r	a3, .LC4
	mull	a3, a4, a3
	add.n	a10, a10, a3
	.loc 1 163 0
	s32i.n	a7, a2, 0
.LVL144:
	.loc 1 164 0
	l32i.n	a4, sp, 24
	s32i.n	a4, a2, 4
	.loc 1 165 0
	s32i.n	a6, a2, 8
	.loc 1 166 0
	s32i.n	a11, a2, 12
	.loc 1 167 0
	s32i.n	a12, a2, 16
	.loc 1 168 0
	s32i.n	a13, a2, 20
	.loc 1 169 0
	s32i.n	a14, a2, 24
	.loc 1 170 0
	s32i.n	a15, a2, 28
	.loc 1 171 0
	s32i.n	a10, a2, 32
	.loc 1 172 0
	s32i.n	a5, a2, 36
	retw.n
.LFE1:
	.size	fe_mul121666, .-fe_mul121666
	.section	.text.edwards_to_montgomery,"ax",@progbits
	.align	4
	.type	edwards_to_montgomery, @function
edwards_to_montgomery:
.LFB3:
	.loc 1 244 0
.LVL145:
	entry	sp, 112
.LCFI2:
	.loc 1 248 0
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, sp
	call8	crypto_core_curve25519_ref10_fe_add
.LVL146:
	.loc 1 249 0
	mov.n	a12, a3
	mov.n	a11, a4
	addi	a10, sp, 40
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL147:
	.loc 1 250 0
	addi	a11, sp, 40
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_invert
.LVL148:
	.loc 1 251 0
	addi	a12, sp, 40
	mov.n	a11, sp
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL149:
	retw.n
.LFE3:
	.size	edwards_to_montgomery, .-edwards_to_montgomery
	.section	.text.crypto_scalarmult_curve25519_ref10_base,"ax",@progbits
	.align	4
	.type	crypto_scalarmult_curve25519_ref10_base, @function
crypto_scalarmult_curve25519_ref10_base:
.LFB4:
	.loc 1 257 0
.LVL150:
	entry	sp, 272
.LCFI3:
.LVL151:
	.loc 1 263 0
	movi.n	a8, 0
	j	.L35
.LVL152:
.L36:
	.loc 1 264 0 discriminator 3
	add.n	a9, a3, a8
	l8ui	a10, a9, 0
	add.n	a9, sp, a8
	s8i	a10, a9, 0
	.loc 1 263 0 discriminator 3
	addi.n	a8, a8, 1
.LVL153:
.L35:
	.loc 1 263 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x1f
	bgeu	a9, a8, .L36
	.loc 1 266 0 is_stmt 1
	l8ui	a8, sp, 0
.LVL154:
	movi.n	a3, -8
.LVL155:
	and	a3, a8, a3
	s8i	a3, sp, 0
	.loc 1 267 0
	l8ui	a3, sp, 31
	extui	a8, a3, 0, 7
	.loc 1 268 0
	movi.n	a3, 0x40
	or	a3, a8, a3
	s8i	a3, sp, 31
	.loc 1 269 0
	mov.n	a11, sp
	addi	a10, sp, 32
	call8	crypto_core_curve25519_ref10_ge_scalarmult_base
.LVL156:
	.loc 1 270 0
	addi	a12, sp, 112
	addi	a11, sp, 72
	movi	a10, 0xc0
	add.n	a10, a10, sp
	call8	edwards_to_montgomery
.LVL157:
	.loc 1 271 0
	movi	a11, 0xc0
	add.n	a11, a11, sp
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_tobytes
.LVL158:
	.loc 1 274 0
	movi.n	a2, 0
.LVL159:
	retw.n
.LFE4:
	.size	crypto_scalarmult_curve25519_ref10_base, .-crypto_scalarmult_curve25519_ref10_base
	.section	.text.crypto_scalarmult_curve25519_ref10,"ax",@progbits
	.align	4
	.type	crypto_scalarmult_curve25519_ref10, @function
crypto_scalarmult_curve25519_ref10:
.LFB2:
	.loc 1 179 0
.LVL160:
	entry	sp, 352
.LCFI4:
.LVL161:
	.loc 1 193 0
	movi.n	a5, 0
	j	.L38
.LVL162:
.L39:
	.loc 1 194 0 discriminator 3
	add.n	a8, a3, a5
	l8ui	a9, a8, 0
	add.n	a8, sp, a5
	s8i	a9, a8, 0
	.loc 1 193 0 discriminator 3
	addi.n	a5, a5, 1
.LVL163:
.L38:
	.loc 1 193 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x1f
	bgeu	a8, a5, .L39
	.loc 1 196 0 is_stmt 1
	l8ui	a5, sp, 0
.LVL164:
	movi.n	a3, -8
.LVL165:
	and	a3, a5, a3
	s8i	a3, sp, 0
	.loc 1 197 0
	l8ui	a3, sp, 31
	extui	a5, a3, 0, 7
	.loc 1 198 0
	movi.n	a3, 0x40
	or	a3, a5, a3
	s8i	a3, sp, 31
	.loc 1 199 0
	mov.n	a11, a4
	addi	a10, sp, 32
	call8	crypto_core_curve25519_ref10_fe_frombytes
.LVL166:
	.loc 1 200 0
	addi	a10, sp, 72
	call8	crypto_core_curve25519_ref10_fe_1
.LVL167:
	.loc 1 201 0
	addi	a10, sp, 112
	call8	crypto_core_curve25519_ref10_fe_0
.LVL168:
	.loc 1 202 0
	addi	a11, sp, 32
	movi	a10, 0x98
	add.n	a10, sp, a10
	call8	crypto_core_curve25519_ref10_fe_copy
.LVL169:
	.loc 1 203 0
	movi	a10, 0xc0
	add.n	a10, sp, a10
	call8	crypto_core_curve25519_ref10_fe_1
.LVL170:
	.loc 1 205 0
	movi.n	a4, 0
.LVL171:
	.loc 1 206 0
	movi	a3, 0xfe
	j	.L40
.LVL172:
.L41:
	.loc 1 207 0 discriminator 3
	addi.n	a8, a3, 7
	movgez	a8, a3, a3
	srai	a8, a8, 3
	add.n	a8, sp, a8
	l8ui	a5, a8, 0
	extui	a8, a3, 0, 3
	ssr	a8
	sra	a5, a5
.LVL173:
	.loc 1 208 0 discriminator 3
	extui	a5, a5, 0, 1
.LVL174:
	.loc 1 209 0 discriminator 3
	xor	a4, a4, a5
.LVL175:
	.loc 1 210 0 discriminator 3
	mov.n	a12, a4
	movi	a11, 0x98
	add.n	a11, a11, sp
	addi	a10, sp, 72
	call8	fe_cswap
.LVL176:
	.loc 1 211 0 discriminator 3
	mov.n	a12, a4
	movi	a11, 0xc0
	add.n	a11, a11, sp
	addi	a10, sp, 112
	call8	fe_cswap
.LVL177:
	.loc 1 213 0 discriminator 3
	movi	a12, 0xc0
	add.n	a12, a12, sp
	movi	a11, 0x98
	add.n	a11, a11, sp
	movi	a10, 0xe8
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL178:
	.loc 1 214 0 discriminator 3
	addi	a12, sp, 112
	addi	a11, sp, 72
	movi	a10, 0x110
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL179:
	.loc 1 215 0 discriminator 3
	addi	a12, sp, 112
	addi	a11, sp, 72
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_add
.LVL180:
	.loc 1 216 0 discriminator 3
	movi	a12, 0xc0
	add.n	a12, a12, sp
	movi	a11, 0x98
	add.n	a11, a11, sp
	addi	a10, sp, 112
	call8	crypto_core_curve25519_ref10_fe_add
.LVL181:
	.loc 1 217 0 discriminator 3
	addi	a12, sp, 72
	movi	a11, 0xe8
	add.n	a11, a11, sp
	movi	a10, 0xc0
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL182:
	.loc 1 218 0 discriminator 3
	movi	a12, 0x110
	add.n	a12, a12, sp
	addi	a11, sp, 112
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL183:
	.loc 1 219 0 discriminator 3
	movi	a11, 0x110
	add.n	a11, a11, sp
	movi	a10, 0xe8
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL184:
	.loc 1 220 0 discriminator 3
	addi	a11, sp, 72
	movi	a10, 0x110
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL185:
	.loc 1 221 0 discriminator 3
	addi	a12, sp, 112
	movi	a11, 0xc0
	add.n	a11, a11, sp
	movi	a10, 0x98
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_add
.LVL186:
	.loc 1 222 0 discriminator 3
	addi	a12, sp, 112
	movi	a11, 0xc0
	add.n	a11, a11, sp
	mov.n	a10, a12
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL187:
	.loc 1 223 0 discriminator 3
	movi	a12, 0xe8
	add.n	a12, a12, sp
	movi	a11, 0x110
	add.n	a11, a11, sp
	addi	a10, sp, 72
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL188:
	.loc 1 224 0 discriminator 3
	movi	a12, 0xe8
	add.n	a12, a12, sp
	movi	a11, 0x110
	add.n	a11, a11, sp
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_sub
.LVL189:
	.loc 1 225 0 discriminator 3
	addi	a11, sp, 112
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL190:
	.loc 1 226 0 discriminator 3
	movi	a11, 0x110
	add.n	a11, a11, sp
	movi	a10, 0xc0
	add.n	a10, a10, sp
	call8	fe_mul121666
.LVL191:
	.loc 1 227 0 discriminator 3
	movi	a11, 0x98
	add.n	a11, a11, sp
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_sq
.LVL192:
	.loc 1 228 0 discriminator 3
	movi	a12, 0xc0
	add.n	a12, a12, sp
	movi	a11, 0xe8
	add.n	a11, a11, sp
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_add
.LVL193:
	.loc 1 229 0 discriminator 3
	addi	a12, sp, 112
	addi	a11, sp, 32
	movi	a10, 0xc0
	add.n	a10, a10, sp
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL194:
	.loc 1 230 0 discriminator 3
	movi	a12, 0xe8
	add.n	a12, a12, sp
	movi	a11, 0x110
	add.n	a11, a11, sp
	addi	a10, sp, 112
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL195:
	.loc 1 206 0 discriminator 3
	addi.n	a3, a3, -1
.LVL196:
	.loc 1 212 0 discriminator 3
	mov.n	a4, a5
.LVL197:
.L40:
	.loc 1 206 0 discriminator 1
	bgez	a3, .L41
	.loc 1 232 0
	mov.n	a12, a4
	movi	a11, 0x98
	add.n	a11, sp, a11
	addi	a10, sp, 72
	call8	fe_cswap
.LVL198:
	.loc 1 233 0
	mov.n	a12, a4
	movi	a11, 0xc0
	add.n	a11, sp, a11
	addi	a10, sp, 112
	call8	fe_cswap
.LVL199:
	.loc 1 235 0
	addi	a11, sp, 112
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_invert
.LVL200:
	.loc 1 236 0
	addi	a12, sp, 112
	addi	a11, sp, 72
	mov.n	a10, a11
	call8	crypto_core_curve25519_ref10_fe_mul
.LVL201:
	.loc 1 237 0
	addi	a11, sp, 72
	mov.n	a10, a2
	call8	crypto_core_curve25519_ref10_fe_tobytes
.LVL202:
	.loc 1 240 0
	movi.n	a2, 0
.LVL203:
	retw.n
.LFE2:
	.size	crypto_scalarmult_curve25519_ref10, .-crypto_scalarmult_curve25519_ref10
	.global	crypto_scalarmult_curve25519_ref10_implementation
	.section	.data.crypto_scalarmult_curve25519_ref10_implementation,"aw",@progbits
	.align	4
	.type	crypto_scalarmult_curve25519_ref10_implementation, @object
	.size	crypto_scalarmult_curve25519_ref10_implementation, 8
crypto_scalarmult_curve25519_ref10_implementation:
	.word	crypto_scalarmult_curve25519_ref10
	.word	crypto_scalarmult_curve25519_ref10_base
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
	.uleb128 0x80
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x110
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x160
	.align	4
.LEFDE8:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "d:\\esp32\\esp-idf-v3.1-rc1\\components\\libsodium\\libsodium\\src\\libsodium\\crypto_scalarmult\\curve25519\\scalarmult_curve25519.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/curve25519_ref10.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbba
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xc
	.4byte	.LASF51
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x21
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1d
	.4byte	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x2c
	.4byte	0x4b
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x38
	.4byte	0x56
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x8
	.byte	0x4
	.byte	0x5
	.4byte	0xaa
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x4
	.byte	0x6
	.4byte	0xd4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x4
	.byte	0x8
	.4byte	0xee
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x21
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0xc9
	.uleb128 0x8
	.4byte	0xc9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3d
	.uleb128 0x9
	.byte	0x4
	.4byte	0xcf
	.uleb128 0xa
	.4byte	0x3d
	.uleb128 0x9
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x7
	.4byte	0x21
	.4byte	0xee
	.uleb128 0x8
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0xc9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xda
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x5
	.byte	0x8
	.4byte	0xff
	.uleb128 0xb
	.4byte	0x6f
	.4byte	0x10f
	.uleb128 0xc
	.4byte	0x10f
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0xd
	.byte	0xa0
	.byte	0x5
	.byte	0x4b
	.4byte	0x147
	.uleb128 0xe
	.string	"X"
	.byte	0x5
	.byte	0x4c
	.4byte	0xf4
	.byte	0
	.uleb128 0xe
	.string	"Y"
	.byte	0x5
	.byte	0x4d
	.4byte	0xf4
	.byte	0x28
	.uleb128 0xe
	.string	"Z"
	.byte	0x5
	.byte	0x4e
	.4byte	0xf4
	.byte	0x50
	.uleb128 0xe
	.string	"T"
	.byte	0x5
	.byte	0x4f
	.4byte	0xf4
	.byte	0x78
	.byte	0
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x50
	.4byte	0x116
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x14
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x331
	.uleb128 0x10
	.string	"f"
	.byte	0x1
	.byte	0x14
	.4byte	0x331
	.4byte	.LLST0
	.uleb128 0x11
	.string	"g"
	.byte	0x1
	.byte	0x14
	.4byte	0x331
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.byte	0x14
	.4byte	0x28
	.4byte	.LLST1
	.uleb128 0x12
	.string	"f0"
	.byte	0x1
	.byte	0x16
	.4byte	0x6f
	.4byte	.LLST2
	.uleb128 0x12
	.string	"f1"
	.byte	0x1
	.byte	0x17
	.4byte	0x6f
	.4byte	.LLST3
	.uleb128 0x12
	.string	"f2"
	.byte	0x1
	.byte	0x18
	.4byte	0x6f
	.4byte	.LLST4
	.uleb128 0x12
	.string	"f3"
	.byte	0x1
	.byte	0x19
	.4byte	0x6f
	.4byte	.LLST5
	.uleb128 0x12
	.string	"f4"
	.byte	0x1
	.byte	0x1a
	.4byte	0x6f
	.4byte	.LLST6
	.uleb128 0x12
	.string	"f5"
	.byte	0x1
	.byte	0x1b
	.4byte	0x6f
	.4byte	.LLST7
	.uleb128 0x12
	.string	"f6"
	.byte	0x1
	.byte	0x1c
	.4byte	0x6f
	.4byte	.LLST8
	.uleb128 0x12
	.string	"f7"
	.byte	0x1
	.byte	0x1d
	.4byte	0x6f
	.4byte	.LLST9
	.uleb128 0x12
	.string	"f8"
	.byte	0x1
	.byte	0x1e
	.4byte	0x6f
	.4byte	.LLST10
	.uleb128 0x12
	.string	"f9"
	.byte	0x1
	.byte	0x1f
	.4byte	0x6f
	.4byte	.LLST11
	.uleb128 0x12
	.string	"g0"
	.byte	0x1
	.byte	0x20
	.4byte	0x6f
	.4byte	.LLST12
	.uleb128 0x12
	.string	"g1"
	.byte	0x1
	.byte	0x21
	.4byte	0x6f
	.4byte	.LLST13
	.uleb128 0x12
	.string	"g2"
	.byte	0x1
	.byte	0x22
	.4byte	0x6f
	.4byte	.LLST14
	.uleb128 0x12
	.string	"g3"
	.byte	0x1
	.byte	0x23
	.4byte	0x6f
	.4byte	.LLST15
	.uleb128 0x12
	.string	"g4"
	.byte	0x1
	.byte	0x24
	.4byte	0x6f
	.4byte	.LLST16
	.uleb128 0x12
	.string	"g5"
	.byte	0x1
	.byte	0x25
	.4byte	0x6f
	.4byte	.LLST17
	.uleb128 0x12
	.string	"g6"
	.byte	0x1
	.byte	0x26
	.4byte	0x6f
	.4byte	.LLST18
	.uleb128 0x12
	.string	"g7"
	.byte	0x1
	.byte	0x27
	.4byte	0x6f
	.4byte	.LLST19
	.uleb128 0x12
	.string	"g8"
	.byte	0x1
	.byte	0x28
	.4byte	0x6f
	.4byte	.LLST20
	.uleb128 0x12
	.string	"g9"
	.byte	0x1
	.byte	0x29
	.4byte	0x6f
	.4byte	.LLST21
	.uleb128 0x12
	.string	"x0"
	.byte	0x1
	.byte	0x2a
	.4byte	0x6f
	.4byte	.LLST22
	.uleb128 0x12
	.string	"x1"
	.byte	0x1
	.byte	0x2b
	.4byte	0x6f
	.4byte	.LLST23
	.uleb128 0x12
	.string	"x2"
	.byte	0x1
	.byte	0x2c
	.4byte	0x6f
	.4byte	.LLST24
	.uleb128 0x12
	.string	"x3"
	.byte	0x1
	.byte	0x2d
	.4byte	0x6f
	.4byte	.LLST25
	.uleb128 0x12
	.string	"x4"
	.byte	0x1
	.byte	0x2e
	.4byte	0x6f
	.4byte	.LLST26
	.uleb128 0x12
	.string	"x5"
	.byte	0x1
	.byte	0x2f
	.4byte	0x6f
	.4byte	.LLST27
	.uleb128 0x12
	.string	"x6"
	.byte	0x1
	.byte	0x30
	.4byte	0x6f
	.4byte	.LLST28
	.uleb128 0x12
	.string	"x7"
	.byte	0x1
	.byte	0x31
	.4byte	0x6f
	.4byte	.LLST29
	.uleb128 0x12
	.string	"x8"
	.byte	0x1
	.byte	0x32
	.4byte	0x6f
	.4byte	.LLST30
	.uleb128 0x12
	.string	"x9"
	.byte	0x1
	.byte	0x33
	.4byte	0x6f
	.4byte	.LLST31
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6f
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x62
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4eb
	.uleb128 0x11
	.string	"h"
	.byte	0x1
	.byte	0x62
	.4byte	0x331
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x10
	.string	"f"
	.byte	0x1
	.byte	0x62
	.4byte	0x4eb
	.4byte	.LLST32
	.uleb128 0x12
	.string	"f0"
	.byte	0x1
	.byte	0x64
	.4byte	0x6f
	.4byte	.LLST33
	.uleb128 0x12
	.string	"f1"
	.byte	0x1
	.byte	0x65
	.4byte	0x6f
	.4byte	.LLST34
	.uleb128 0x12
	.string	"f2"
	.byte	0x1
	.byte	0x66
	.4byte	0x6f
	.4byte	.LLST35
	.uleb128 0x12
	.string	"f3"
	.byte	0x1
	.byte	0x67
	.4byte	0x6f
	.4byte	.LLST36
	.uleb128 0x12
	.string	"f4"
	.byte	0x1
	.byte	0x68
	.4byte	0x6f
	.4byte	.LLST37
	.uleb128 0x12
	.string	"f5"
	.byte	0x1
	.byte	0x69
	.4byte	0x6f
	.4byte	.LLST38
	.uleb128 0x12
	.string	"f6"
	.byte	0x1
	.byte	0x6a
	.4byte	0x6f
	.4byte	.LLST39
	.uleb128 0x12
	.string	"f7"
	.byte	0x1
	.byte	0x6b
	.4byte	0x6f
	.4byte	.LLST40
	.uleb128 0x12
	.string	"f8"
	.byte	0x1
	.byte	0x6c
	.4byte	0x6f
	.4byte	.LLST41
	.uleb128 0x12
	.string	"f9"
	.byte	0x1
	.byte	0x6d
	.4byte	0x6f
	.4byte	.LLST42
	.uleb128 0x12
	.string	"h0"
	.byte	0x1
	.byte	0x6e
	.4byte	0x7a
	.4byte	.LLST43
	.uleb128 0x13
	.string	"h1"
	.byte	0x1
	.byte	0x6f
	.4byte	0x7a
	.uleb128 0x12
	.string	"h2"
	.byte	0x1
	.byte	0x70
	.4byte	0x7a
	.4byte	.LLST44
	.uleb128 0x13
	.string	"h3"
	.byte	0x1
	.byte	0x71
	.4byte	0x7a
	.uleb128 0x12
	.string	"h4"
	.byte	0x1
	.byte	0x72
	.4byte	0x7a
	.4byte	.LLST45
	.uleb128 0x13
	.string	"h5"
	.byte	0x1
	.byte	0x73
	.4byte	0x7a
	.uleb128 0x12
	.string	"h6"
	.byte	0x1
	.byte	0x74
	.4byte	0x7a
	.4byte	.LLST46
	.uleb128 0x13
	.string	"h7"
	.byte	0x1
	.byte	0x75
	.4byte	0x7a
	.uleb128 0x12
	.string	"h8"
	.byte	0x1
	.byte	0x76
	.4byte	0x7a
	.4byte	.LLST47
	.uleb128 0x13
	.string	"h9"
	.byte	0x1
	.byte	0x77
	.4byte	0x7a
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x1
	.byte	0x78
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF19
	.byte	0x1
	.byte	0x79
	.4byte	0x7a
	.4byte	.LLST48
	.uleb128 0x14
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7a
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7b
	.4byte	0x7a
	.4byte	.LLST49
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0x7c
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7d
	.4byte	0x7a
	.4byte	.LLST50
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7e
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7f
	.4byte	0x7a
	.4byte	.LLST51
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x80
	.4byte	0x7a
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x81
	.4byte	0x7a
	.4byte	.LLST52
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4f1
	.uleb128 0xa
	.4byte	0x6f
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cd
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0xf3
	.4byte	0x331
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf3
	.4byte	0x4eb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0xf3
	.4byte	0x4eb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf5
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf6
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.4byte	.LVL146
	.4byte	0xb44
	.4byte	0x571
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL147
	.4byte	0xb4f
	.4byte	0x592
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL148
	.4byte	0xb5a
	.4byte	0x5ae
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL149
	.4byte	0xb65
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF34
	.byte	0x1
	.byte	0xff
	.4byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x691
	.uleb128 0x10
	.string	"q"
	.byte	0x1
	.byte	0xff
	.4byte	0xc3
	.4byte	.LLST53
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.2byte	0x100
	.4byte	0xc9
	.4byte	.LLST54
	.uleb128 0x1d
	.string	"e"
	.byte	0x1
	.2byte	0x102
	.4byte	0x691
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1d
	.string	"A"
	.byte	0x1
	.2byte	0x103
	.4byte	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1d
	.string	"pk"
	.byte	0x1
	.2byte	0x104
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.2byte	0x105
	.4byte	0x28
	.4byte	.LLST55
	.uleb128 0x18
	.4byte	.LVL156
	.4byte	0xb70
	.4byte	0x656
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x18
	.4byte	.LVL157
	.4byte	0x4f6
	.4byte	0x679
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL158
	.4byte	0xb7b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x3d
	.4byte	0x6a1
	.uleb128 0xc
	.4byte	0x10f
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb0
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb32
	.uleb128 0x10
	.string	"q"
	.byte	0x1
	.byte	0xb0
	.4byte	0xc3
	.4byte	.LLST56
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0xb1
	.4byte	0xc9
	.4byte	.LLST57
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0xb2
	.4byte	0xc9
	.4byte	.LLST58
	.uleb128 0x1f
	.string	"e"
	.byte	0x1
	.byte	0xb4
	.4byte	0x691
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xb5
	.4byte	0x28
	.4byte	.LLST59
	.uleb128 0x1f
	.string	"x1"
	.byte	0x1
	.byte	0xb6
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1f
	.string	"x2"
	.byte	0x1
	.byte	0xb7
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1f
	.string	"z2"
	.byte	0x1
	.byte	0xb8
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.string	"x3"
	.byte	0x1
	.byte	0xb9
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1f
	.string	"z3"
	.byte	0x1
	.byte	0xba
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0xbb
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.byte	0xbc
	.4byte	0xf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.string	"pos"
	.byte	0x1
	.byte	0xbd
	.4byte	0x21
	.4byte	.LLST60
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x1
	.byte	0xbe
	.4byte	0x28
	.4byte	.LLST61
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0xbf
	.4byte	0x28
	.4byte	.LLST62
	.uleb128 0x18
	.4byte	.LVL166
	.4byte	0xb86
	.4byte	0x7a5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL167
	.4byte	0xb91
	.4byte	0x7ba
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0x18
	.4byte	.LVL168
	.4byte	0xb9c
	.4byte	0x7cf
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x18
	.4byte	.LVL169
	.4byte	0xba7
	.4byte	0x7eb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x18
	.4byte	.LVL170
	.4byte	0xb91
	.4byte	0x800
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x18
	.4byte	.LVL176
	.4byte	0x152
	.4byte	0x822
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL177
	.4byte	0x152
	.4byte	0x844
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL178
	.4byte	0xb4f
	.4byte	0x867
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x18
	.4byte	.LVL179
	.4byte	0xb4f
	.4byte	0x88a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x18
	.4byte	.LVL180
	.4byte	0xb44
	.4byte	0x8ad
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x18
	.4byte	.LVL181
	.4byte	0xb44
	.4byte	0x8d0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x18
	.4byte	.LVL182
	.4byte	0xb65
	.4byte	0x8f3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0x18
	.4byte	.LVL183
	.4byte	0xb65
	.4byte	0x916
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x18
	.4byte	.LVL184
	.4byte	0xbb2
	.4byte	0x932
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x18
	.4byte	.LVL185
	.4byte	0xbb2
	.4byte	0x94e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0x18
	.4byte	.LVL186
	.4byte	0xb44
	.4byte	0x971
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x18
	.4byte	.LVL187
	.4byte	0xb4f
	.4byte	0x994
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x18
	.4byte	.LVL188
	.4byte	0xb65
	.4byte	0x9b7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x18
	.4byte	.LVL189
	.4byte	0xb4f
	.4byte	0x9da
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x18
	.4byte	.LVL190
	.4byte	0xbb2
	.4byte	0x9f6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x18
	.4byte	.LVL191
	.4byte	0x337
	.4byte	0xa12
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x18
	.4byte	.LVL192
	.4byte	0xbb2
	.4byte	0xa2e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x18
	.4byte	.LVL193
	.4byte	0xb44
	.4byte	0xa51
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x18
	.4byte	.LVL194
	.4byte	0xb65
	.4byte	0xa74
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x18
	.4byte	.LVL195
	.4byte	0xb65
	.4byte	0xa97
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x18
	.4byte	.LVL198
	.4byte	0x152
	.4byte	0xab9
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL199
	.4byte	0x152
	.4byte	0xadb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL200
	.4byte	0xb5a
	.4byte	0xaf7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x18
	.4byte	.LVL201
	.4byte	0xb65
	.4byte	0xb1a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL202
	.4byte	0xb7b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x115
	.4byte	0x85
	.uleb128 0x5
	.byte	0x3
	.4byte	crypto_scalarmult_curve25519_ref10_implementation
	.uleb128 0x21
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0x2c
	.uleb128 0x21
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0x2d
	.uleb128 0x21
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x32
	.uleb128 0x21
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.byte	0x2f
	.uleb128 0x21
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0x91
	.uleb128 0x21
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.byte	0x24
	.uleb128 0x21
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0x23
	.uleb128 0x21
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x5
	.byte	0x2a
	.uleb128 0x21
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0x29
	.uleb128 0x21
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0x26
	.uleb128 0x21
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.byte	0x30
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LFE0
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x72
	.sleb128 16
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x72
	.sleb128 20
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL1
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x72
	.sleb128 24
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL1
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x72
	.sleb128 28
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL1
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x72
	.sleb128 32
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL1
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x72
	.sleb128 36
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL6
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL8
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x73
	.sleb128 8
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x73
	.sleb128 16
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x73
	.sleb128 20
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL11
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x73
	.sleb128 24
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x73
	.sleb128 28
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL20
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x73
	.sleb128 32
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x73
	.sleb128 36
	.4byte	.LVL43
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL20
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL22
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL23
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL24
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL25
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL26
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL27
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL28
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL30
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL41
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LFE0
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1f
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL31
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL42
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL74
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL75
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LVL144
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL76
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL88
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL77
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL78
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0xc
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL79
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL95
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x10
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL80
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL98
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x14
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL81
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL100
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x18
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL82
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL103
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x1c
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL83
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL105
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL84
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL87
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x8
	.byte	0x91
	.sleb128 -92
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x7
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x9
	.byte	0x91
	.sleb128 -40
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL117
	.4byte	.LVL135
	.2byte	0x8
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL92
	.4byte	.LVL120
	.2byte	0x8
	.byte	0x91
	.sleb128 -100
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x8
	.byte	0x91
	.sleb128 -116
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL121
	.4byte	.LVL137
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL97
	.4byte	.LVL124
	.2byte	0x8
	.byte	0x91
	.sleb128 -96
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x8
	.byte	0x91
	.sleb128 -128
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL125
	.4byte	.LVL139
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x8
	.byte	0x91
	.sleb128 -80
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL102
	.4byte	.LVL128
	.2byte	0xa
	.byte	0x91
	.sleb128 -80
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x8
	.byte	0x91
	.sleb128 -112
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL129
	.4byte	.LVL141
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x8
	.byte	0x91
	.sleb128 -76
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL108
	.4byte	.LVL132
	.2byte	0xa
	.byte	0x91
	.sleb128 -76
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x8
	.byte	0x91
	.sleb128 -124
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL133
	.4byte	.LVL143
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x6
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x6
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL150
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL150
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL155
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL160
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL160
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL165
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL160
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL171
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x3
	.byte	0x8
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL177
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL197
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL173
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"carry0"
.LASF19:
	.string	"carry1"
.LASF20:
	.string	"carry2"
.LASF21:
	.string	"carry3"
.LASF22:
	.string	"carry4"
.LASF23:
	.string	"carry5"
.LASF24:
	.string	"carry6"
.LASF25:
	.string	"carry7"
.LASF26:
	.string	"carry8"
.LASF27:
	.string	"carry9"
.LASF32:
	.string	"tempX"
.LASF33:
	.string	"tempZ"
.LASF48:
	.string	"crypto_core_curve25519_ref10_fe_copy"
.LASF4:
	.string	"short int"
.LASF51:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_scalarmult/curve25519/ref10/x25519_ref10.c"
.LASF43:
	.string	"crypto_core_curve25519_ref10_ge_scalarmult_base"
.LASF17:
	.string	"fe_mul121666"
.LASF34:
	.string	"crypto_scalarmult_curve25519_ref10_base"
.LASF46:
	.string	"crypto_core_curve25519_ref10_fe_1"
.LASF10:
	.string	"int64_t"
.LASF39:
	.string	"crypto_core_curve25519_ref10_fe_add"
.LASF44:
	.string	"crypto_core_curve25519_ref10_fe_tobytes"
.LASF7:
	.string	"long long int"
.LASF45:
	.string	"crypto_core_curve25519_ref10_fe_frombytes"
.LASF6:
	.string	"__int64_t"
.LASF47:
	.string	"crypto_core_curve25519_ref10_fe_0"
.LASF30:
	.string	"edwardsY"
.LASF49:
	.string	"crypto_core_curve25519_ref10_fe_sq"
.LASF13:
	.string	"crypto_core_curve25519_ref10_fe"
.LASF41:
	.string	"crypto_core_curve25519_ref10_fe_invert"
.LASF16:
	.string	"fe_cswap"
.LASF3:
	.string	"unsigned char"
.LASF29:
	.string	"montgomeryX"
.LASF42:
	.string	"crypto_core_curve25519_ref10_fe_mul"
.LASF2:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF12:
	.string	"mult_base"
.LASF9:
	.string	"int32_t"
.LASF11:
	.string	"mult"
.LASF40:
	.string	"crypto_core_curve25519_ref10_fe_sub"
.LASF52:
	.string	"crypto_scalarmult_curve25519_implementation"
.LASF36:
	.string	"tmp0"
.LASF37:
	.string	"tmp1"
.LASF15:
	.string	"crypto_core_curve25519_ref10_ge_p3"
.LASF38:
	.string	"swap"
.LASF35:
	.string	"crypto_scalarmult_curve25519_ref10"
.LASF5:
	.string	"__int32_t"
.LASF14:
	.string	"sizetype"
.LASF28:
	.string	"edwards_to_montgomery"
.LASF53:
	.string	"crypto_scalarmult_curve25519_ref10_implementation"
.LASF50:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF31:
	.string	"edwardsZ"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
