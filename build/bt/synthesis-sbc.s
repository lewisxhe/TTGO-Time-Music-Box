	.file	"synthesis-sbc.c"
	.text
.Ltext0:
	.section	.text.OI_SBC_SynthFrame_80,"ax",@progbits
	.literal_position
	.literal .LC0, 2147483576
	.align	4
	.global	OI_SBC_SynthFrame_80
	.type	OI_SBC_SynthFrame_80, @function
OI_SBC_SynthFrame_80:
.LFB6:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/synthesis-sbc.c"
	.loc 1 261 0
.LVL0:
	entry	sp, 64
.LCFI0:
	s32i.n	a3, sp, 0
	s32i.n	a4, sp, 8
	.loc 1 264 0
	l8ui	a3, a2, 12
.LVL1:
	s32i.n	a3, sp, 4
.LVL2:
	.loc 1 265 0
	l8ui	a3, a2, 78
.LVL3:
	addi.n	a4, a3, -1
.LVL4:
	movi.n	a3, 0
	movi.n	a6, 1
	movnez	a3, a6, a4
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 12
.LVL5:
	.loc 1 266 0
	l32i.n	a7, a2, 56
.LVL6:
	.loc 1 267 0
	l32i.n	a6, a2, 40
	l32i.n	a4, sp, 4
	l32i.n	a8, sp, 8
	mull	a3, a4, a8
.LVL7:
	slli	a3, a3, 5
	add.n	a6, a6, a3
.LVL8:
	.loc 1 268 0
	add.n	a5, a8, a5
.LVL9:
	s32i.n	a5, sp, 16
.LVL10:
	.loc 1 270 0
	j	.L2
.LVL11:
.L8:
	.loc 1 271 0
	bnez.n	a7, .L3
	.loc 1 272 0
	l32i.n	a10, a2, 44
	l32i.n	a4, a2, 52
.LVL12:
	l32r	a3, .LC0
	add.n	a3, a4, a3
	movi.n	a12, 0x48
	mov.n	a11, a10
	addx2	a10, a3, a10
	call8	shift_buffer
.LVL13:
	.loc 1 273 0
	l32i.n	a3, sp, 4
	bnei	a3, 2, .L4
	.loc 1 274 0
	l32i.n	a10, a2, 48
	l32i.n	a4, a2, 52
	l32r	a3, .LC0
	add.n	a3, a4, a3
	movi.n	a12, 0x48
	mov.n	a11, a10
	addx2	a10, a3, a10
	call8	shift_buffer
.LVL14:
.L4:
	.loc 1 276 0
	l32i.n	a7, a2, 52
.LVL15:
	addi	a7, a7, -80
.LVL16:
	j	.L5
.LVL17:
.L3:
	.loc 1 278 0
	addi	a7, a7, -8
.LVL18:
.L5:
	.loc 1 281 0
	movi.n	a3, 0
	j	.L6
.LVL19:
.L7:
	.loc 1 282 0 discriminator 3
	addi.n	a5, a3, 8
	addx4	a5, a5, a2
	l32i.n	a10, a5, 12
	slli	a4, a7, 1
	mov.n	a11, a6
	add.n	a10, a10, a4
	call8	dct2_8
.LVL20:
	.loc 1 283 0 discriminator 3
	l32i.n	a11, a5, 12
	l32i.n	a12, sp, 12
	add.n	a11, a11, a4
	l32i.n	a4, sp, 0
	addx2	a10, a3, a4
	call8	SynthWindow80_generated
.LVL21:
	.loc 1 284 0 discriminator 3
	addi	a6, a6, 32
.LVL22:
	.loc 1 281 0 discriminator 3
	addi.n	a3, a3, 1
.LVL23:
.L6:
	.loc 1 281 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 4
	bltu	a3, a4, .L7
	.loc 1 286 0 is_stmt 1 discriminator 2
	movi.n	a3, 8
.LVL24:
	l32i.n	a4, sp, 12
	ssl	a4
	sll	a3, a3
	l32i.n	a8, sp, 0
	addx2	a8, a3, a8
	s32i.n	a8, sp, 0
.LVL25:
	.loc 1 270 0 discriminator 2
	l32i.n	a3, sp, 8
	addi.n	a3, a3, 1
	s32i.n	a3, sp, 8
.LVL26:
.L2:
	.loc 1 270 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 8
	l32i.n	a3, sp, 16
	bltu	a4, a3, .L8
	.loc 1 288 0 is_stmt 1
	s32i.n	a7, a2, 56
	retw.n
.LFE6:
	.size	OI_SBC_SynthFrame_80, .-OI_SBC_SynthFrame_80
	.section	.text.default_mul_16s_32s_hi,"ax",@progbits
	.align	4
	.global	default_mul_16s_32s_hi
	.type	default_mul_16s_32s_hi, @function
default_mul_16s_32s_hi:
.LFB5:
	.loc 1 219 0
.LVL27:
	entry	sp, 32
.LCFI1:
	sext	a8, a2, 15
.LVL28:
	.loc 1 226 0
	srai	a2, a3, 16
.LVL29:
	.loc 1 228 0
	mull	a2, a2, a8
.LVL30:
	.loc 1 229 0
	extui	a3, a3, 0, 16
.LVL31:
	mull	a8, a3, a8
.LVL32:
	.loc 1 231 0
	srai	a8, a8, 16
.LVL33:
	.loc 1 232 0
	add.n	a2, a2, a8
.LVL34:
	retw.n
.LFE5:
	.size	default_mul_16s_32s_hi, .-default_mul_16s_32s_hi
	.section	.text.OI_SBC_SynthFrame,"ax",@progbits
	.literal_position
	.literal .LC1, SynthFrame4SB
	.literal .LC2, SynthFrame8SB
	.align	4
	.global	OI_SBC_SynthFrame
	.type	OI_SBC_SynthFrame, @function
OI_SBC_SynthFrame:
.LFB8:
	.loc 1 377 0
.LVL35:
	entry	sp, 32
.LCFI2:
	.loc 1 378 0
	l8ui	a9, a2, 9
.LVL36:
	.loc 1 379 0
	l8ui	a8, a2, 12
.LVL37:
	.loc 1 382 0
	bnei	a9, 4, .L11
	.loc 1 383 0
	l32r	a9, .LC1
.LVL38:
	addx4	a8, a8, a9
.LVL39:
	l32i.n	a8, a8, 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL40:
	retw.n
.LVL41:
.L11:
	.loc 1 389 0
	l32r	a9, .LC2
.LVL42:
	addx4	a8, a8, a9
.LVL43:
	l32i.n	a8, a8, 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	callx8	a8
.LVL44:
	retw.n
.LFE8:
	.size	OI_SBC_SynthFrame, .-OI_SBC_SynthFrame
	.section	.text.SynthWindow40_int32_int32_symmetry_with_sum,"ax",@progbits
	.literal_position
	.literal .LC3, 32767
	.literal .LC4, -32768
	.literal .LC5, 53243
	.literal .LC6, 16384
	.literal .LC7, 5824
	.literal .LC8, -14047
	.literal .LC9, 35274
	.literal .LC10, 50984
	.literal .LC11, 5224
	.literal .LC12, -5214
	.literal .LC13, 44618
	.align	4
	.global	SynthWindow40_int32_int32_symmetry_with_sum
	.type	SynthWindow40_int32_int32_symmetry_with_sum, @function
SynthWindow40_int32_int32_symmetry_with_sum:
.LFB9:
	.loc 1 395 0
.LVL45:
	entry	sp, 32
.LCFI3:
	.loc 1 413 0
	l16si	a10, a3, 24
	l16si	a8, a3, 152
	add.n	a10, a10, a8
	movi	a9, 0x2b6
	mull	a10, a10, a9
.LVL46:
	.loc 1 414 0
	l16si	a8, a3, 32
	l16si	a9, a3, 128
	sub	a8, a8, a9
	movi	a9, 0x7b6
	mull	a8, a8, a9
	add.n	a8, a10, a8
.LVL47:
	.loc 1 415 0
	l16si	a10, a3, 56
	l16si	a9, a3, 120
	add.n	a10, a10, a9
	addx8	a9, a10, a10
	slli	a11, a9, 6
	add.n	a9, a9, a11
	addx8	a9, a9, a10
	add.n	a10, a8, a9
.LVL48:
	.loc 1 416 0
	l16si	a9, a3, 64
	l16si	a8, a3, 96
	sub	a8, a9, a8
	addx2	a11, a8, a8
	slli	a9, a11, 9
	sub	a9, a9, a11
	slli	a9, a9, 4
	add.n	a8, a9, a8
	add.n	a8, a10, a8
.LVL49:
	.loc 1 417 0
	l16si	a10, a3, 88
	l32r	a9, .LC5
	mull	a9, a10, a9
	add.n	a8, a8, a9
.LVL50:
	.loc 1 418 0
	l32r	a9, .LC6
	sub	a8, a9, a8
.LVL51:
	srai	a8, a8, 15
.LVL52:
	.loc 1 419 0
	l32r	a9, .LC3
	blt	a9, a8, .L18
	.loc 1 419 0 is_stmt 0 discriminator 2
	l32r	a9, .LC4
	blt	a8, a9, .L19
	j	.L14
.L18:
	.loc 1 419 0
	l32r	a8, .LC3
.LVL53:
	j	.L14
.LVL54:
.L19:
	l32r	a8, .LC4
.LVL55:
.L14:
	.loc 1 420 0 is_stmt 1
	s16i	a8, a2, 0
	.loc 1 423 0
	l16si	a8, a3, 2
.LVL56:
	addx2	a9, a8, a8
	slli	a9, a9, 5
	add.n	a10, a9, a8
.LVL57:
	l16si	a8, a3, 158
	addx2	a13, a8, a8
	slli	a13, a13, 5
	add.n	a8, a13, a8
.LVL58:
	.loc 1 424 0
	l16si	a13, a3, 6
	slli	a11, a13, 4
	sub	a11, a11, a13
	slli	a13, a11, 5
	add.n	a11, a11, a13
	add.n	a8, a8, a11
.LVL59:
	l16si	a9, a3, 154
	slli	a12, a9, 4
	sub	a9, a12, a9
	slli	a11, a9, 5
	add.n	a9, a9, a11
	add.n	a9, a10, a9
.LVL60:
	.loc 1 425 0
	l16si	a12, a3, 26
	addx4	a10, a12, a12
	addx2	a12, a10, a12
	slli	a10, a12, 6
	add.n	a9, a9, a10
.LVL61:
	l16si	a10, a3, 134
	addx4	a14, a10, a10
	addx2	a14, a14, a10
	slli	a11, a14, 6
	add.n	a11, a8, a11
.LVL62:
	.loc 1 426 0
	l16si	a8, a3, 30
	movi	a10, -0x22a
	mull	a8, a8, a10
	add.n	a13, a11, a8
.LVL63:
	l16si	a8, a3, 130
	mull	a10, a8, a10
	add.n	a10, a9, a10
.LVL64:
	.loc 1 427 0
	l16si	a11, a3, 34
	subx8	a9, a11, a11
	slli	a8, a9, 5
	add.n	a9, a9, a8
	slli	a9, a9, 4
	add.n	a9, a9, a11
	add.n	a10, a10, a9
.LVL65:
	l16si	a8, a3, 126
	subx8	a9, a8, a8
	slli	a11, a9, 5
	add.n	a11, a9, a11
	slli	a11, a11, 4
	add.n	a8, a11, a8
	add.n	a8, a13, a8
.LVL66:
	.loc 1 428 0
	l16si	a13, a3, 38
	l32r	a9, .LC7
	mull	a13, a13, a9
	add.n	a8, a8, a13
.LVL67:
	l16si	a12, a3, 122
	mull	a9, a12, a9
	add.n	a9, a10, a9
.LVL68:
	.loc 1 429 0
	l16si	a12, a3, 58
	movi	a13, 0x455
	mull	a12, a12, a13
	add.n	a9, a9, a12
.LVL69:
	l16si	a11, a3, 102
	mull	a13, a11, a13
	add.n	a8, a8, a13
.LVL70:
	.loc 1 430 0
	l16si	a11, a3, 62
	l32r	a12, .LC8
	mull	a11, a11, a12
	add.n	a8, a8, a11
.LVL71:
	l16si	a10, a3, 98
	mull	a12, a10, a12
	add.n	a12, a9, a12
.LVL72:
	.loc 1 431 0
	l16si	a9, a3, 66
	l32r	a11, .LC9
	mull	a9, a9, a11
	add.n	a9, a12, a9
.LVL73:
	l16si	a10, a3, 94
	mull	a11, a10, a11
	add.n	a11, a8, a11
.LVL74:
	.loc 1 432 0
	l16si	a8, a3, 70
	l32r	a10, .LC10
	mull	a8, a8, a10
	add.n	a8, a11, a8
.LVL75:
	l16si	a11, a3, 90
	mull	a10, a11, a10
	add.n	a9, a9, a10
.LVL76:
	.loc 1 433 0
	l32r	a10, .LC6
	sub	a9, a10, a9
.LVL77:
	srai	a9, a9, 15
.LVL78:
	.loc 1 434 0
	l32r	a10, .LC3
	blt	a10, a9, .L20
	.loc 1 434 0 is_stmt 0 discriminator 2
	l32r	a10, .LC4
	blt	a9, a10, .L21
	j	.L15
.L20:
	.loc 1 434 0
	l32r	a9, .LC3
.LVL79:
	j	.L15
.LVL80:
.L21:
	l32r	a9, .LC4
.LVL81:
.L15:
	.loc 1 435 0 is_stmt 1
	movi.n	a10, 2
	ssl	a4
	sll	a10, a10
	add.n	a10, a2, a10
	s16i	a9, a10, 0
	.loc 1 436 0
	l32r	a9, .LC6
.LVL82:
	sub	a8, a9, a8
.LVL83:
	srai	a8, a8, 15
.LVL84:
	.loc 1 437 0
	l32r	a9, .LC3
	blt	a9, a8, .L22
	.loc 1 437 0 is_stmt 0 discriminator 2
	l32r	a9, .LC4
	blt	a8, a9, .L23
	j	.L16
.L22:
	.loc 1 437 0
	l32r	a8, .LC3
.LVL85:
	j	.L16
.LVL86:
.L23:
	l32r	a8, .LC4
.LVL87:
.L16:
	.loc 1 438 0 is_stmt 1
	movi.n	a9, 3
	ssl	a4
	sll	a9, a9
	addx2	a9, a9, a2
	s16i	a8, a9, 0
	.loc 1 441 0
	l16si	a8, a3, 156
.LVL88:
	addx8	a8, a8, a8
	slli	a9, a8, 4
	sub	a8, a9, a8
	slli	a9, a8, 1
.LVL89:
	.loc 1 442 0
	l16si	a10, a3, 28
	movi	a8, 0x152
	mull	a10, a10, a8
	add.n	a11, a9, a10
.LVL90:
	.loc 1 443 0
	l16si	a9, a3, 124
	l32r	a8, .LC11
	mull	a9, a9, a8
	add.n	a10, a11, a9
.LVL91:
	.loc 1 444 0
	l16si	a9, a3, 60
	l32r	a8, .LC12
	mull	a8, a9, a8
	add.n	a9, a10, a8
.LVL92:
	.loc 1 445 0
	l16si	a3, a3, 92
.LVL93:
	l32r	a8, .LC13
	mull	a3, a3, a8
	add.n	a3, a9, a3
.LVL94:
	.loc 1 446 0
	l32r	a8, .LC6
	sub	a3, a8, a3
.LVL95:
	srai	a3, a3, 15
.LVL96:
	.loc 1 447 0
	l32r	a8, .LC3
	blt	a8, a3, .L24
	.loc 1 447 0 is_stmt 0 discriminator 2
	l32r	a8, .LC4
	blt	a3, a8, .L25
	j	.L17
.L24:
	.loc 1 447 0
	l32r	a3, .LC3
.LVL97:
	j	.L17
.LVL98:
.L25:
	l32r	a3, .LC4
.LVL99:
.L17:
	.loc 1 448 0 is_stmt 1
	movi.n	a8, 2
	ssl	a4
	sll	a4, a8
.LVL100:
	addx2	a2, a4, a2
.LVL101:
	s16i	a3, a2, 0
	retw.n
.LFE9:
	.size	SynthWindow40_int32_int32_symmetry_with_sum, .-SynthWindow40_int32_int32_symmetry_with_sum
	.section	.text.cosineModulateSynth4,"ax",@progbits
	.literal_position
	.literal .LC14, 11585
	.literal .LC15, 21407
	.literal .LC16, -15137
	.literal .LC17, -8867
	.align	4
	.global	cosineModulateSynth4
	.type	cosineModulateSynth4, @function
cosineModulateSynth4:
.LFB10:
	.loc 1 478 0
.LVL102:
	entry	sp, 32
.LCFI4:
	.loc 1 482 0
	l32i.n	a11, a3, 0
	l32i.n	a4, a3, 12
	sub	a6, a11, a4
.LVL103:
	.loc 1 483 0
	add.n	a11, a11, a4
.LVL104:
	.loc 1 484 0
	l32i.n	a4, a3, 4
	l32i.n	a3, a3, 8
.LVL105:
	sub	a7, a4, a3
.LVL106:
	.loc 1 485 0
	add.n	a3, a4, a3
.LVL107:
	.loc 1 489 0
	add.n	a4, a11, a3
	addmi	a4, a4, 0x4000
	srai	a4, a4, 15
	neg	a4, a4
.LVL108:
	.loc 1 490 0
	sub	a11, a11, a3
.LVL109:
	l32r	a10, .LC14
	call8	default_mul_16s_32s_hi
.LVL110:
	slli	a10, a10, 2
	addmi	a5, a10, 0x4000
	srai	a5, a5, 15
	neg	a5, a5
.LVL111:
	.loc 1 491 0
	add.n	a3, a6, a7
.LVL112:
	.loc 1 492 0
	mov.n	a11, a6
	l32r	a10, .LC15
	call8	default_mul_16s_32s_hi
.LVL113:
	slli	a6, a10, 2
.LVL114:
	.loc 1 493 0
	mov.n	a11, a3
	l32r	a10, .LC16
	call8	default_mul_16s_32s_hi
.LVL115:
	slli	a3, a10, 2
.LVL116:
	.loc 1 494 0
	mov.n	a11, a7
	l32r	a10, .LC17
	call8	default_mul_16s_32s_hi
.LVL117:
	.loc 1 495 0
	add.n	a8, a6, a3
	addmi	a8, a8, 0x4000
	srai	a8, a8, 15
	neg	a8, a8
.LVL118:
	.loc 1 496 0
	subx4	a10, a10, a3
.LVL119:
	addmi	a3, a10, 0x4000
.LVL120:
	srai	a3, a3, 15
	neg	a3, a3
.LVL121:
	.loc 1 498 0
	neg	a6, a5
.LVL122:
	s16i	a6, a2, 0
	.loc 1 499 0
	neg	a6, a8
	s16i	a6, a2, 2
	.loc 1 500 0
	movi.n	a6, 0
	s16i	a6, a2, 4
	.loc 1 501 0
	s16i	a8, a2, 6
	.loc 1 502 0
	s16i	a5, a2, 8
	.loc 1 503 0
	sext	a3, a3, 15
.LVL123:
	s16i	a3, a2, 10
	.loc 1 504 0
	s16i	a4, a2, 12
	.loc 1 505 0
	s16i	a3, a2, 14
	retw.n
.LFE10:
	.size	cosineModulateSynth4, .-cosineModulateSynth4
	.section	.text.OI_SBC_SynthFrame_4SB,"ax",@progbits
	.literal_position
	.literal .LC18, 2147483576
	.align	4
	.global	OI_SBC_SynthFrame_4SB
	.type	OI_SBC_SynthFrame_4SB, @function
OI_SBC_SynthFrame_4SB:
.LFB7:
	.loc 1 292 0
.LVL124:
	entry	sp, 64
.LCFI5:
	s32i.n	a3, sp, 0
	s32i.n	a4, sp, 8
	.loc 1 295 0
	l8ui	a3, a2, 12
.LVL125:
	s32i.n	a3, sp, 4
.LVL126:
	.loc 1 296 0
	l8ui	a3, a2, 78
.LVL127:
	addi.n	a4, a3, -1
.LVL128:
	movi.n	a3, 0
	movi.n	a6, 1
	movnez	a3, a6, a4
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 12
.LVL129:
	.loc 1 297 0
	l32i.n	a7, a2, 56
.LVL130:
	.loc 1 298 0
	l32i.n	a6, a2, 40
	l32i.n	a4, sp, 4
	l32i.n	a8, sp, 8
	mull	a3, a4, a8
.LVL131:
	slli	a3, a3, 5
	add.n	a6, a6, a3
.LVL132:
	.loc 1 299 0
	add.n	a5, a8, a5
.LVL133:
	s32i.n	a5, sp, 16
.LVL134:
	.loc 1 301 0
	j	.L28
.LVL135:
.L34:
	.loc 1 302 0
	bnez.n	a7, .L29
	.loc 1 303 0
	l32i.n	a10, a2, 44
	l32i.n	a4, a2, 52
.LVL136:
	l32r	a3, .LC18
	add.n	a3, a4, a3
	movi.n	a12, 0x48
	mov.n	a11, a10
	addx2	a10, a3, a10
	call8	shift_buffer
.LVL137:
	.loc 1 304 0
	l32i.n	a3, sp, 4
	bnei	a3, 2, .L30
	.loc 1 305 0
	l32i.n	a10, a2, 48
	l32i.n	a4, a2, 52
	l32r	a3, .LC18
	add.n	a3, a4, a3
	movi.n	a12, 0x48
	mov.n	a11, a10
	addx2	a10, a3, a10
	call8	shift_buffer
.LVL138:
.L30:
	.loc 1 307 0
	l32i.n	a7, a2, 52
.LVL139:
	addi	a7, a7, -80
.LVL140:
	j	.L31
.LVL141:
.L29:
	.loc 1 309 0
	addi	a7, a7, -8
.LVL142:
.L31:
	.loc 1 311 0
	movi.n	a3, 0
	j	.L32
.LVL143:
.L33:
	.loc 1 312 0 discriminator 3
	addi.n	a5, a3, 8
	addx4	a5, a5, a2
	l32i.n	a10, a5, 12
	slli	a4, a7, 1
	mov.n	a11, a6
	add.n	a10, a10, a4
	call8	cosineModulateSynth4
.LVL144:
	.loc 1 314 0 discriminator 3
	l32i.n	a11, a5, 12
	.loc 1 313 0 discriminator 3
	l32i.n	a12, sp, 12
	add.n	a11, a11, a4
	l32i.n	a4, sp, 0
	addx2	a10, a3, a4
	call8	SynthWindow40_int32_int32_symmetry_with_sum
.LVL145:
	.loc 1 316 0 discriminator 3
	addi	a6, a6, 16
.LVL146:
	.loc 1 311 0 discriminator 3
	addi.n	a3, a3, 1
.LVL147:
.L32:
	.loc 1 311 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 4
	bltu	a3, a4, .L33
	.loc 1 318 0 is_stmt 1 discriminator 2
	movi.n	a3, 4
.LVL148:
	l32i.n	a4, sp, 12
	ssl	a4
	sll	a3, a3
	l32i.n	a8, sp, 0
	addx2	a8, a3, a8
	s32i.n	a8, sp, 0
.LVL149:
	.loc 1 301 0 discriminator 2
	l32i.n	a3, sp, 8
	addi.n	a3, a3, 1
	s32i.n	a3, sp, 8
.LVL150:
.L28:
	.loc 1 301 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 8
	l32i.n	a3, sp, 16
	bltu	a4, a3, .L34
	.loc 1 320 0 is_stmt 1
	s32i.n	a7, a2, 56
	retw.n
.LFE7:
	.size	OI_SBC_SynthFrame_4SB, .-OI_SBC_SynthFrame_4SB
	.section	.rodata.SynthFrame4SB,"a",@progbits
	.align	4
	.type	SynthFrame4SB, @object
	.size	SynthFrame4SB, 12
SynthFrame4SB:
	.word	0
	.word	OI_SBC_SynthFrame_4SB
	.word	OI_SBC_SynthFrame_4SB
	.section	.rodata.SynthFrame8SB,"a",@progbits
	.align	4
	.type	SynthFrame8SB, @object
	.size	SynthFrame8SB, 12
SynthFrame8SB:
	.word	0
	.word	OI_SBC_SynthFrame_80
	.word	OI_SBC_SynthFrame_80
	.global	dec_window_4
	.section	.rodata.dec_window_4,"a",@progbits
	.align	4
	.type	dec_window_4, @object
	.size	dec_window_4, 84
dec_window_4:
	.word	0
	.word	97
	.word	270
	.word	495
	.word	694
	.word	704
	.word	338
	.word	-554
	.word	1974
	.word	3697
	.word	5224
	.word	5824
	.word	4681
	.word	1109
	.word	-5214
	.word	-14047
	.word	24529
	.word	35274
	.word	44618
	.word	50984
	.word	53243
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI1-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI4-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI5-.LFB7
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_cpu_dep.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_stddefs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9dd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.4byte	.LASF89
	.4byte	.LASF90
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x21
	.4byte	0x68
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	0x73
	.4byte	0x9c
	.uleb128 0x6
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x67
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x68
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x135
	.4byte	0x25
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x136
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x137
	.4byte	0xa3
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x138
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x139
	.4byte	0x45
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x13a
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x85
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x7b
	.4byte	0xd3
	.uleb128 0x8
	.byte	0x10
	.byte	0x7
	.byte	0x7f
	.4byte	0x1e2
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x7
	.byte	0x80
	.4byte	0xf7
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x7
	.byte	0x81
	.4byte	0xeb
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x7
	.byte	0x83
	.4byte	0xeb
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x7
	.byte	0x84
	.4byte	0xeb
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x7
	.byte	0x87
	.4byte	0xeb
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x7
	.byte	0x88
	.4byte	0xeb
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x7
	.byte	0x8a
	.4byte	0xeb
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x7
	.byte	0x8b
	.4byte	0xeb
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x7
	.byte	0x8d
	.4byte	0xeb
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x7
	.byte	0x8e
	.4byte	0xeb
	.byte	0xa
	.uleb128 0xa
	.string	"crc"
	.byte	0x7
	.byte	0x8f
	.4byte	0xeb
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x7
	.byte	0x90
	.4byte	0xeb
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x7
	.byte	0x91
	.4byte	0xeb
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x7
	.byte	0x92
	.4byte	0xeb
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x7
	.byte	0x96
	.4byte	0xeb
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x97
	.4byte	0x125
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.byte	0xa5
	.4byte	0x20c
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x7
	.byte	0xa6
	.4byte	0x20c
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0xa7
	.4byte	0x21c
	.byte	0
	.uleb128 0x5
	.4byte	0xeb
	.4byte	0x21c
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	0x103
	.4byte	0x22c
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x50
	.byte	0x7
	.byte	0x9a
	.4byte	0x2d1
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0x9b
	.4byte	0x2d1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.byte	0x9c
	.4byte	0x1e2
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x7
	.byte	0x9d
	.4byte	0x2dc
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0x9e
	.4byte	0x103
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0x9f
	.4byte	0x2ec
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0xa1
	.4byte	0x2f2
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x7
	.byte	0xa2
	.4byte	0xdf
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x7
	.byte	0xa3
	.4byte	0xb1
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7
	.byte	0xa8
	.4byte	0x1ed
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0xa9
	.4byte	0xeb
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0xaa
	.4byte	0xbc
	.byte	0x4d
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0xab
	.4byte	0xeb
	.byte	0x4e
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0xac
	.4byte	0xeb
	.byte	0x4f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2d7
	.uleb128 0xe
	.4byte	0x10f
	.uleb128 0x5
	.4byte	0xc7
	.4byte	0x2ec
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xdf
	.uleb128 0x5
	.4byte	0x302
	.4byte	0x302
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x11a
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x7
	.byte	0xad
	.4byte	0x22c
	.uleb128 0x8
	.byte	0x54
	.byte	0x7
	.byte	0xc4
	.4byte	0x358
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x7
	.byte	0xc5
	.4byte	0x308
	.byte	0
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x7
	.byte	0xc6
	.4byte	0xeb
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x7
	.byte	0xc7
	.4byte	0xeb
	.byte	0x51
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x7
	.byte	0xc8
	.4byte	0xeb
	.byte	0x52
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x7
	.byte	0xc9
	.4byte	0xeb
	.byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x7
	.byte	0xca
	.4byte	0x313
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x1
	.byte	0xf2
	.4byte	0x36e
	.uleb128 0xd
	.byte	0x4
	.4byte	0x374
	.uleb128 0xf
	.4byte	0x38e
	.uleb128 0x10
	.4byte	0x38e
	.uleb128 0x10
	.4byte	0x394
	.uleb128 0x10
	.4byte	0xb1
	.uleb128 0x10
	.4byte	0xb1
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x358
	.uleb128 0xd
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x104
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b2
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x104
	.4byte	0x38e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.string	"pcm"
	.byte	0x1
	.2byte	0x104
	.4byte	0x394
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x104
	.4byte	0xb1
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x104
	.4byte	0xb1
	.4byte	.LLST2
	.uleb128 0x15
	.string	"blk"
	.byte	0x1
	.2byte	0x106
	.4byte	0xb1
	.4byte	.LLST3
	.uleb128 0x15
	.string	"ch"
	.byte	0x1
	.2byte	0x107
	.4byte	0xb1
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x108
	.4byte	0xb1
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x109
	.4byte	0xb1
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x10a
	.4byte	0xb1
	.4byte	.LLST7
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x2ec
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x10c
	.4byte	0xb1
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x9bf
	.4byte	0x46d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0x9bf
	.4byte	0x481
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL20
	.4byte	0x9ca
	.4byte	0x495
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x9d5
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x1
	.byte	0xda
	.4byte	0xdf
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51c
	.uleb128 0x1c
	.string	"u"
	.byte	0x1
	.byte	0xda
	.4byte	0xd3
	.4byte	.LLST9
	.uleb128 0x1c
	.string	"v"
	.byte	0x1
	.byte	0xda
	.4byte	0xdf
	.4byte	.LLST10
	.uleb128 0x1d
	.string	"v0"
	.byte	0x1
	.byte	0xdc
	.4byte	0xf7
	.4byte	.LLST11
	.uleb128 0x1d
	.string	"v1"
	.byte	0x1
	.byte	0xdd
	.4byte	0xd3
	.4byte	.LLST12
	.uleb128 0x1d
	.string	"w"
	.byte	0x1
	.byte	0xdf
	.4byte	0xdf
	.4byte	.LLST13
	.uleb128 0x1d
	.string	"x"
	.byte	0x1
	.byte	0xdf
	.4byte	0xdf
	.4byte	.LLST14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x178
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cb
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x178
	.4byte	0x38e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.string	"pcm"
	.byte	0x1
	.2byte	0x178
	.4byte	0x394
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x178
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x178
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x17a
	.4byte	0xb1
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x17b
	.4byte	0xb1
	.4byte	.LLST16
	.uleb128 0x1f
	.4byte	.LVL40
	.4byte	0x5ac
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL44
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x18a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x630
	.uleb128 0x13
	.string	"pcm"
	.byte	0x1
	.2byte	0x18a
	.4byte	0x394
	.4byte	.LLST17
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x18a
	.4byte	0x302
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x18a
	.4byte	0xb1
	.4byte	.LLST19
	.uleb128 0x15
	.string	"pa"
	.byte	0x1
	.2byte	0x18c
	.4byte	0xdf
	.4byte	.LLST20
	.uleb128 0x15
	.string	"pb"
	.byte	0x1
	.2byte	0x18d
	.4byte	0xdf
	.4byte	.LLST21
	.byte	0
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1dd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x782
	.uleb128 0x1e
	.string	"out"
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x302
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.string	"in"
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x782
	.4byte	.LLST22
	.uleb128 0x15
	.string	"f0"
	.byte	0x1
	.2byte	0x1df
	.4byte	0xdf
	.4byte	.LLST23
	.uleb128 0x15
	.string	"f1"
	.byte	0x1
	.2byte	0x1df
	.4byte	0xdf
	.4byte	.LLST24
	.uleb128 0x17
	.string	"f2"
	.byte	0x1
	.2byte	0x1df
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x15
	.string	"f3"
	.byte	0x1
	.2byte	0x1df
	.4byte	0xdf
	.4byte	.LLST25
	.uleb128 0x15
	.string	"f4"
	.byte	0x1
	.2byte	0x1df
	.4byte	0xdf
	.4byte	.LLST26
	.uleb128 0x15
	.string	"f7"
	.byte	0x1
	.2byte	0x1df
	.4byte	0xdf
	.4byte	.LLST27
	.uleb128 0x15
	.string	"f8"
	.byte	0x1
	.2byte	0x1df
	.4byte	0xdf
	.4byte	.LLST28
	.uleb128 0x15
	.string	"f9"
	.byte	0x1
	.2byte	0x1df
	.4byte	0xdf
	.4byte	.LLST29
	.uleb128 0x15
	.string	"f10"
	.byte	0x1
	.2byte	0x1df
	.4byte	0xdf
	.4byte	.LLST30
	.uleb128 0x17
	.string	"y0"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.string	"y1"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xdf
	.4byte	.LLST31
	.uleb128 0x17
	.string	"y2"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.string	"y3"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xdf
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x18
	.4byte	.LVL110
	.4byte	0x4b2
	.4byte	0x734
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2d41
	.byte	0
	.uleb128 0x18
	.4byte	.LVL113
	.4byte	0x4b2
	.4byte	0x74f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x539f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL115
	.4byte	0x4b2
	.4byte	0x76a
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xb
	.2byte	0xc4df
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL117
	.4byte	0x4b2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xb
	.2byte	0xdd5d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x788
	.uleb128 0xe
	.4byte	0xdf
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x123
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a5
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x123
	.4byte	0x38e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.string	"pcm"
	.byte	0x1
	.2byte	0x123
	.4byte	0x394
	.4byte	.LLST32
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x123
	.4byte	0xb1
	.4byte	.LLST33
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x123
	.4byte	0xb1
	.4byte	.LLST34
	.uleb128 0x15
	.string	"blk"
	.byte	0x1
	.2byte	0x125
	.4byte	0xb1
	.4byte	.LLST35
	.uleb128 0x15
	.string	"ch"
	.byte	0x1
	.2byte	0x126
	.4byte	0xb1
	.4byte	.LLST36
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x127
	.4byte	0xb1
	.4byte	.LLST37
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x128
	.4byte	0xb1
	.4byte	.LLST38
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x129
	.4byte	0xb1
	.4byte	.LLST39
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x2ec
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x12b
	.4byte	0xb1
	.4byte	.LLST40
	.uleb128 0x18
	.4byte	.LVL137
	.4byte	0x9bf
	.4byte	0x860
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL138
	.4byte	0x9bf
	.4byte	0x874
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.uleb128 0x18
	.4byte	.LVL144
	.4byte	0x630
	.4byte	0x888
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL145
	.4byte	0x5cb
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x8b8
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xe
	.4byte	0x8c
	.uleb128 0x21
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x8d0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0xf7
	.4byte	0x8e5
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.4byte	.LASF79
	.byte	0x8
	.byte	0x56
	.4byte	0x8f9
	.byte	0x8
	.byte	0x80
	.byte	0x3e
	.byte	0
	.byte	0x7d
	.byte	0x44
	.byte	0xac
	.byte	0x80
	.byte	0xbb
	.uleb128 0xe
	.4byte	0x8d5
	.uleb128 0x5
	.4byte	0xeb
	.4byte	0x90e
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.4byte	.LASF80
	.byte	0x8
	.byte	0x57
	.4byte	0x91e
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.uleb128 0xe
	.4byte	0x8fe
	.uleb128 0x22
	.4byte	.LASF81
	.byte	0x8
	.byte	0x58
	.4byte	0x933
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.uleb128 0xe
	.4byte	0x8fe
	.uleb128 0x5
	.4byte	0xeb
	.4byte	0x948
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.4byte	.LASF82
	.byte	0x8
	.byte	0x59
	.4byte	0x956
	.byte	0x2
	.byte	0x4
	.byte	0x8
	.uleb128 0xe
	.4byte	0x938
	.uleb128 0x5
	.4byte	0x363
	.4byte	0x96b
	.uleb128 0x6
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x23
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x16b
	.4byte	0x97d
	.uleb128 0x5
	.byte	0x3
	.4byte	SynthFrame8SB
	.uleb128 0xe
	.4byte	0x95b
	.uleb128 0x23
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x172
	.4byte	0x994
	.uleb128 0x5
	.byte	0x3
	.4byte	SynthFrame4SB
	.uleb128 0xe
	.4byte	0x95b
	.uleb128 0x5
	.4byte	0xdf
	.4byte	0x9a9
	.uleb128 0x6
	.4byte	0x85
	.byte	0x14
	.byte	0
	.uleb128 0x24
	.4byte	.LASF92
	.byte	0x1
	.byte	0xa6
	.4byte	0x9ba
	.uleb128 0x5
	.byte	0x3
	.4byte	dec_window_4
	.uleb128 0xe
	.4byte	0x999
	.uleb128 0x25
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x8
	.byte	0xb7
	.uleb128 0x25
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x1
	.byte	0xf0
	.uleb128 0x25
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x1
	.byte	0xee
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL26
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL11
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL9
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL16
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL11
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE5
	.2byte	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LFE5
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40-1
	.2byte	0x8
	.byte	0x72
	.sleb128 9
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44-1
	.2byte	0x8
	.byte	0x72
	.sleb128 9
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x8
	.byte	0x72
	.sleb128 12
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x8
	.byte	0x72
	.sleb128 12
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL45
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL45
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL45
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0xba
	.byte	0x73
	.sleb128 24
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 152
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0xa
	.2byte	0x2b6
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xcffb
	.byte	0x1e
	.byte	0x22
	.byte	0x73
	.sleb128 32
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 128
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.2byte	0x7b6
	.byte	0x1e
	.byte	0x22
	.byte	0x73
	.sleb128 56
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 120
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x73
	.sleb128 56
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 120
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x73
	.sleb128 56
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 120
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x73
	.sleb128 56
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 120
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x36
	.byte	0x24
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x7b
	.sleb128 0
	.byte	0x39
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x73
	.sleb128 120
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x73
	.sleb128 96
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x73
	.sleb128 64
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x73
	.sleb128 56
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0xc0
	.byte	0x73
	.sleb128 96
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 32
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 128
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0xa
	.2byte	0x7b6
	.byte	0x1e
	.byte	0x1c
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.2byte	0xcffb
	.byte	0x1e
	.byte	0x1c
	.byte	0x7b
	.sleb128 0
	.byte	0x39
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x1c
	.byte	0x73
	.sleb128 56
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 120
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x73
	.sleb128 56
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 120
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x73
	.sleb128 56
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 120
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x73
	.sleb128 56
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 120
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x22
	.byte	0x36
	.byte	0x24
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x1c
	.byte	0x73
	.sleb128 56
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x73
	.sleb128 64
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x73
	.sleb128 24
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 152
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0xa
	.2byte	0x2b6
	.byte	0x1e
	.byte	0x1c
	.byte	0x73
	.sleb128 120
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x23
	.uleb128 0x4000
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x18
	.byte	0x73
	.sleb128 66
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xa
	.2byte	0x89ca
	.byte	0x1e
	.byte	0x7b
	.sleb128 0
	.byte	0xa
	.2byte	0xc728
	.byte	0x1e
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1e
	.byte	0xa
	.2byte	0x4000
	.byte	0x7b
	.sleb128 0
	.byte	0xa
	.2byte	0xc728
	.byte	0x1e
	.byte	0x1c
	.byte	0x7c
	.sleb128 0
	.byte	0x1c
	.byte	0x73
	.sleb128 66
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xa
	.2byte	0x89ca
	.byte	0x1e
	.byte	0x1c
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x13
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x5c
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xa
	.2byte	0xae4a
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x19
	.byte	0xa
	.2byte	0x4000
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x5c
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xa
	.2byte	0xae4a
	.byte	0x1e
	.byte	0x1c
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL66
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL75
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL105
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL103
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL104
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0xc
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL107
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL112
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL114
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123
	.4byte	.LFE10
	.2byte	0x8
	.byte	0x7a
	.sleb128 16384
	.byte	0x3f
	.byte	0x26
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125
	.4byte	.LVL149
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL150
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL135
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL124
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL133
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL136
	.4byte	.LVL141
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL130
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL140
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL135
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"join"
.LASF24:
	.string	"SBC_BUFFER_T"
.LASF51:
	.string	"maxBitneed"
.LASF60:
	.string	"bufferedBlocks"
.LASF57:
	.string	"limitFrameFormat"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF78:
	.string	"bd_addr_null"
.LASF45:
	.string	"frameCount"
.LASF20:
	.string	"OI_UINT8"
.LASF84:
	.string	"SynthFrame4SB"
.LASF31:
	.string	"mode"
.LASF81:
	.string	"channel_values"
.LASF38:
	.string	"cachedInfo"
.LASF83:
	.string	"SynthFrame8SB"
.LASF86:
	.string	"dct2_8"
.LASF8:
	.string	"uint8_t"
.LASF34:
	.string	"bitpool"
.LASF80:
	.string	"block_values"
.LASF40:
	.string	"uint8"
.LASF58:
	.string	"restrictSubbands"
.LASF36:
	.string	"enhanced"
.LASF76:
	.string	"OI_SBC_SynthFrame_4SB"
.LASF5:
	.string	"long long int"
.LASF50:
	.string	"bits"
.LASF39:
	.string	"OI_CODEC_SBC_FRAME_INFO"
.LASF54:
	.string	"maxChannels"
.LASF47:
	.string	"filterBuffer"
.LASF13:
	.string	"long int"
.LASF92:
	.string	"dec_window_4"
.LASF44:
	.string	"scale_factor"
.LASF9:
	.string	"UINT8"
.LASF7:
	.string	"__uint8_t"
.LASF63:
	.string	"context"
.LASF22:
	.string	"OI_UINT32"
.LASF68:
	.string	"blkstop"
.LASF79:
	.string	"freq_values"
.LASF30:
	.string	"subbands"
.LASF71:
	.string	"start_block"
.LASF18:
	.string	"OI_INT16"
.LASF69:
	.string	"OI_SBC_SynthFrame_80"
.LASF26:
	.string	"freqIndex"
.LASF74:
	.string	"strideShift"
.LASF42:
	.string	"codecInfo"
.LASF1:
	.string	"unsigned char"
.LASF90:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF89:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/synthesis-sbc.c"
.LASF32:
	.string	"nrof_channels"
.LASF46:
	.string	"subdata"
.LASF49:
	.string	"filterBufferOffset"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF28:
	.string	"blocks"
.LASF4:
	.string	"unsigned int"
.LASF29:
	.string	"nrof_subbands"
.LASF62:
	.string	"SYNTH_FRAME"
.LASF33:
	.string	"alloc"
.LASF48:
	.string	"filterBufferLen"
.LASF75:
	.string	"cosineModulateSynth4"
.LASF3:
	.string	"short unsigned int"
.LASF67:
	.string	"offset"
.LASF43:
	.string	"frameInfo"
.LASF12:
	.string	"char"
.LASF70:
	.string	"OI_SBC_SynthFrame"
.LASF59:
	.string	"enhancedEnabled"
.LASF10:
	.string	"_Bool"
.LASF19:
	.string	"OI_INT32"
.LASF16:
	.string	"OI_BYTE"
.LASF73:
	.string	"buffer"
.LASF17:
	.string	"OI_INT8"
.LASF41:
	.string	"uint32"
.LASF14:
	.string	"long unsigned int"
.LASF37:
	.string	"min_bitpool"
.LASF55:
	.string	"OI_CODEC_SBC_COMMON_CONTEXT"
.LASF91:
	.string	"default_mul_16s_32s_hi"
.LASF56:
	.string	"common"
.LASF64:
	.string	"blkstart"
.LASF61:
	.string	"OI_CODEC_SBC_DECODER_CONTEXT"
.LASF72:
	.string	"SynthWindow40_int32_int32_symmetry_with_sum"
.LASF85:
	.string	"shift_buffer"
.LASF66:
	.string	"pcmStrideShift"
.LASF25:
	.string	"frequency"
.LASF53:
	.string	"pcmStride"
.LASF23:
	.string	"OI_CHAR"
.LASF27:
	.string	"nrof_blocks"
.LASF15:
	.string	"OI_UINT"
.LASF21:
	.string	"OI_UINT16"
.LASF88:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF77:
	.string	"bd_addr_any"
.LASF82:
	.string	"band_values"
.LASF65:
	.string	"blkcount"
.LASF87:
	.string	"SynthWindow80_generated"
.LASF52:
	.string	"formatByte"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
