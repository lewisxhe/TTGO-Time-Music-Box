	.file	"bitalloc.c"
	.text
.Ltext0:
	.section	.text.OI_SBC_MaxBitpool,"ax",@progbits
	.align	4
	.global	OI_SBC_MaxBitpool
	.type	OI_SBC_MaxBitpool, @function
OI_SBC_MaxBitpool:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/bitalloc.c"
	.loc 1 46 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 47 0
	l8ui	a8, a2, 7
	bltui	a8, 2, .L3
	bgeui	a8, 4, .L5
	j	.L6
.L3:
	.loc 1 50 0
	l8ui	a2, a2, 5
.LVL1:
	slli	a2, a2, 4
	retw.n
.LVL2:
.L6:
	.loc 1 53 0
	l8ui	a2, a2, 5
.LVL3:
	slli	a2, a2, 5
	retw.n
.LVL4:
.L5:
	.loc 1 58 0
	movi.n	a2, 0
.LVL5:
	.loc 1 59 0
	retw.n
.LFE5:
	.size	OI_SBC_MaxBitpool, .-OI_SBC_MaxBitpool
	.section	.text.internal_CalculateFramelen,"ax",@progbits
	.align	4
	.global	internal_CalculateFramelen
	.type	internal_CalculateFramelen, @function
internal_CalculateFramelen:
.LFB6:
	.loc 1 63 0
.LVL6:
	entry	sp, 32
.LCFI1:
	.loc 1 64 0
	l8ui	a9, a2, 3
	l8ui	a8, a2, 10
	mull	a8, a9, a8
.LVL7:
	.loc 1 65 0
	l8ui	a9, a2, 5
.LVL8:
	.loc 1 68 0
	l8ui	a2, a2, 7
.LVL9:
	bnei	a2, 3, .L8
	.loc 1 69 0
	addx8	a10, a9, a9
	add.n	a8, a8, a10
.LVL10:
	extui	a8, a8, 0, 16
.LVL11:
	j	.L9
.LVL12:
.L8:
	.loc 1 71 0
	bnei	a2, 1, .L10
	.loc 1 72 0
	slli	a8, a8, 1
.LVL13:
	extui	a8, a8, 0, 16
.LVL14:
.L10:
	.loc 1 74 0
	bnez.n	a2, .L11
	.loc 1 75 0
	addx4	a8, a9, a8
.LVL15:
	extui	a8, a8, 0, 16
.LVL16:
	j	.L9
.L11:
	.loc 1 77 0
	addx8	a8, a9, a8
.LVL17:
	extui	a8, a8, 0, 16
.LVL18:
.L9:
	.loc 1 80 0
	addi.n	a9, a8, 7
.LVL19:
	mov.n	a2, a9
	addi.n	a8, a8, 14
.LVL20:
	movltz	a2, a8, a9
	srai	a2, a2, 3
	addi.n	a2, a2, 4
	.loc 1 81 0
	extui	a2, a2, 0, 16
	retw.n
.LFE6:
	.size	internal_CalculateFramelen, .-internal_CalculateFramelen
	.section	.text.internal_CalculateBitrate,"ax",@progbits
	.align	4
	.global	internal_CalculateBitrate
	.type	internal_CalculateBitrate, @function
internal_CalculateBitrate:
.LFB7:
	.loc 1 85 0
.LVL21:
	entry	sp, 32
.LCFI2:
	.loc 1 87 0
	l8ui	a8, a2, 5
	l8ui	a3, a2, 3
	mull	a3, a8, a3
.LVL22:
	.loc 1 89 0
	mov.n	a10, a2
	call8	internal_CalculateFramelen
.LVL23:
	slli	a10, a10, 3
	l16ui	a2, a2, 0
.LVL24:
	mull	a2, a2, a10
	.loc 1 90 0
	quou	a2, a2, a3
	retw.n
.LFE7:
	.size	internal_CalculateBitrate, .-internal_CalculateBitrate
	.section	.text.OI_SBC_CalculateFrameAndHeaderlen,"ax",@progbits
	.align	4
	.global	OI_SBC_CalculateFrameAndHeaderlen
	.type	OI_SBC_CalculateFrameAndHeaderlen, @function
OI_SBC_CalculateFrameAndHeaderlen:
.LFB8:
	.loc 1 94 0
.LVL25:
	entry	sp, 32
.LCFI3:
	mov.n	a10, a2
	.loc 1 95 0
	l8ui	a9, a2, 5
	l8ui	a8, a2, 8
	mull	a8, a9, a8
	extui	a9, a8, 31, 1
	add.n	a8, a9, a8
	srai	a8, a8, 1
	addi.n	a8, a8, 4
.LVL26:
	.loc 1 97 0
	l8ui	a9, a2, 7
	bnei	a9, 3, .L14
	.loc 1 98 0
	addi.n	a8, a8, 1
.LVL27:
.L14:
	.loc 1 101 0
	s32i.n	a8, a3, 0
	.loc 1 102 0
	call8	internal_CalculateFramelen
.LVL28:
	.loc 1 103 0
	mov.n	a2, a10
.LVL29:
	retw.n
.LFE8:
	.size	OI_SBC_CalculateFrameAndHeaderlen, .-OI_SBC_CalculateFrameAndHeaderlen
	.section	.text.computeBitneed,"ax",@progbits
	.literal_position
	.literal .LC0, offset4$4222
	.literal .LC1, offset8$4223
	.align	4
	.global	computeBitneed
	.type	computeBitneed, @function
computeBitneed:
.LFB9:
	.loc 1 133 0
.LVL30:
	entry	sp, 32
.LCFI4:
	.loc 1 148 0
	l8ui	a14, a2, 9
.LVL31:
	.loc 1 150 0
	bnez.n	a4, .L31
	movi.n	a12, 0
	j	.L16
.L31:
	mov.n	a12, a14
.L16:
	.loc 1 150 0 is_stmt 0 discriminator 4
	addi	a12, a12, 16
	add.n	a12, a2, a12
	addi.n	a12, a12, 4
.LVL32:
	.loc 1 155 0 is_stmt 1 discriminator 4
	l8ui	a4, a2, 13
.LVL33:
	bnei	a4, 1, .L33
	j	.L32
.LVL34:
.L21:
.LBB2:
	.loc 1 157 0
	add.n	a4, a12, a9
	l8ui	a4, a4, 0
	sext	a8, a4, 7
.LVL35:
	.loc 1 158 0
	bge	a11, a8, .L19
	.loc 1 159 0
	extui	a11, a4, 0, 8
.LVL36:
.L19:
	.loc 1 161 0
	add.n	a10, a3, a9
	extui	a8, a4, 0, 8
.LVL37:
	s8i	a8, a10, 0
	bltui	a8, 2, .L20
	.loc 1 162 0
	sext	a4, a4, 7
	add.n	a13, a13, a4
.LVL38:
.L20:
	.loc 1 164 0 discriminator 2
	add.n	a8, a6, a8
.LVL39:
	extui	a8, a8, 0, 8
	addi.n	a8, a8, 2
	extui	a6, a8, 0, 8
.LVL40:
.LBE2:
	.loc 1 156 0 discriminator 2
	addi.n	a9, a9, 1
.LVL41:
	j	.L17
.LVL42:
.L32:
	movi.n	a6, 0
	mov.n	a11, a6
	mov.n	a13, a6
	mov.n	a9, a6
.LVL43:
.L17:
	.loc 1 156 0 is_stmt 0 discriminator 1
	bltu	a9, a14, .L21
	j	.L22
.LVL44:
.L33:
.LBB3:
	.loc 1 168 0 is_stmt 1
	bnei	a14, 4, .L23
	.loc 1 169 0
	l8ui	a15, a2, 6
	l32r	a4, .LC0
	addx4	a15, a15, a4
.LVL45:
	j	.L24
.LVL46:
.L23:
	.loc 1 171 0
	l8ui	a15, a2, 6
	l32r	a4, .LC1
	addx8	a15, a15, a4
.LVL47:
.L24:
.LBE3:
	.loc 1 153 0
	movi.n	a6, 0
	.loc 1 152 0
	mov.n	a11, a6
	.loc 1 151 0
	mov.n	a13, a6
.LBB5:
	.loc 1 173 0
	mov.n	a10, a6
	j	.L25
.LVL48:
.L30:
.LBB4:
	.loc 1 174 0
	add.n	a4, a12, a10
	l8ui	a8, a4, 0
	sext	a9, a8, 7
.LVL49:
	.loc 1 175 0
	bge	a11, a9, .L26
	.loc 1 176 0
	extui	a11, a8, 0, 8
.LVL50:
.L26:
	.loc 1 178 0
	add.n	a8, a6, a8
	extui	a8, a8, 0, 8
	addi.n	a8, a8, 2
	extui	a6, a8, 0, 8
.LVL51:
	.loc 1 179 0
	beqz.n	a9, .L27
	.loc 1 180 0
	add.n	a4, a15, a10
	l8ui	a4, a4, 0
	sext	a4, a4, 7
	sub	a9, a9, a4
.LVL52:
	.loc 1 181 0
	blti	a9, 1, .L28
	.loc 1 182 0
	extui	a4, a9, 31, 1
	add.n	a9, a4, a9
.LVL53:
	srai	a9, a9, 1
.LVL54:
.L28:
	.loc 1 184 0
	addi.n	a9, a9, 5
.LVL55:
.L27:
	.loc 1 186 0
	add.n	a4, a3, a10
	extui	a8, a9, 0, 8
.LVL56:
	s8i	a8, a4, 0
	bltui	a8, 2, .L29
	.loc 1 187 0
	add.n	a13, a13, a9
.LVL57:
.L29:
.LBE4:
	.loc 1 173 0 discriminator 2
	addi.n	a10, a10, 1
.LVL58:
.L25:
	.loc 1 173 0 is_stmt 0 discriminator 1
	bltu	a10, a14, .L30
.LVL59:
.L22:
.LBE5:
	.loc 1 191 0 is_stmt 1
	l8ui	a3, a2, 76
.LVL60:
	maxu	a11, a11, a3
.LVL61:
	s8i	a11, a2, 76
	.loc 1 192 0
	l32i.n	a8, a5, 0
	add.n	a8, a8, a6
	s32i.n	a8, a5, 0
	.loc 1 194 0
	mov.n	a2, a13
.LVL62:
	retw.n
.LFE9:
	.size	computeBitneed, .-computeBitneed
	.section	.text.adjustToFitBitpool,"ax",@progbits
	.literal_position
	.literal .LC2, 1077952576
	.literal .LC3, 2139062143
	.literal .LC4, 269488144
	.literal .LC5, 252645135
	.literal .LC6, 235802126
	.literal .LC7, 505290270
	.align	4
	.global	adjustToFitBitpool
	.type	adjustToFitBitpool, @function
adjustToFitBitpool:
.LFB10:
	.loc 1 262 0
.LVL63:
	entry	sp, 32
.LCFI5:
	mov.n	a15, a2
.LVL64:
	.loc 1 264 0
	bgeu	a2, a5, .L42
	movi.n	a14, -8
	j	.L35
.L42:
	movi.n	a14, 8
.L35:
.LBB6:
	.loc 1 300 0
	movi.n	a13, 8
	movi.n	a2, 0
.LVL65:
	j	.L36
.LVL66:
.L41:
	.loc 1 276 0
	extui	a12, a14, 0, 7
.LVL67:
	.loc 1 277 0
	slli	a7, a12, 8
	or	a7, a12, a7
.LVL68:
	.loc 1 278 0
	slli	a12, a7, 16
	or	a12, a7, a12
.LVL69:
	.loc 1 280 0
	srli	a10, a4, 2
	addi.n	a10, a10, -1
.LVL70:
	.loc 1 271 0
	movi.n	a11, 0
	.loc 1 280 0
	j	.L37
.LVL71:
.L38:
.LBB7:
	.loc 1 282 0 discriminator 3
	addx4	a7, a10, a3
	l32i.n	a8, a7, 0
	add.n	a8, a12, a8
.LVL72:
	.loc 1 283 0 discriminator 3
	l32r	a7, .LC2
	and	a7, a8, a7
	srli	a7, a7, 6
	l32r	a9, .LC3
	add.n	a9, a7, a9
.LVL73:
	.loc 1 284 0 discriminator 3
	and	a9, a8, a9
.LVL74:
	.loc 1 285 0 discriminator 3
	l32r	a7, .LC4
.LVL75:
	and	a7, a9, a7
	srli	a7, a7, 4
	l32r	a8, .LC5
.LVL76:
	add.n	a8, a7, a8
.LVL77:
	.loc 1 286 0 discriminator 3
	and	a8, a9, a8
.LVL78:
	.loc 1 287 0 discriminator 3
	l32r	a9, .LC6
	add.n	a9, a8, a9
	srli	a7, a9, 4
.LVL79:
	l32r	a9, .LC7
	or	a9, a7, a9
.LVL80:
	.loc 1 288 0 discriminator 3
	and	a8, a8, a9
.LVL81:
	.loc 1 289 0 discriminator 3
	add.n	a11, a11, a8
.LVL82:
.LBE7:
	.loc 1 280 0 discriminator 3
	addi.n	a10, a10, -1
.LVL83:
.L37:
	.loc 1 280 0 is_stmt 0 discriminator 1
	bgez	a10, .L38
	.loc 1 292 0 is_stmt 1
	extui	a7, a11, 0, 16
	extui	a11, a11, 16, 16
.LVL84:
	add.n	a11, a7, a11
.LVL85:
	.loc 1 293 0
	extui	a7, a11, 0, 8
	srli	a11, a11, 8
.LVL86:
	add.n	a11, a7, a11
.LVL87:
	.loc 1 295 0
	srai	a13, a13, 1
.LVL88:
	.loc 1 296 0
	bgeu	a15, a11, .L39
	.loc 1 297 0
	sub	a14, a14, a13
.LVL89:
	j	.L36
.L39:
.LVL90:
	.loc 1 299 0
	mov.n	a2, a14
	.loc 1 301 0
	add.n	a14, a14, a13
.LVL91:
	.loc 1 300 0
	mov.n	a5, a11
.LVL92:
.L36:
.LBE6:
	.loc 1 270 0
	sub	a8, a5, a15
	movi.n	a7, 1
	movi.n	a9, 0
	mov.n	a10, a9
	movnez	a10, a7, a8
	moveqz	a7, a9, a13
	bany	a10, a7, .L41
	.loc 1 305 0
	sub	a5, a15, a5
.LVL93:
	s32i.n	a5, a6, 0
	.loc 1 308 0
	retw.n
.LFE10:
	.size	adjustToFitBitpool, .-adjustToFitBitpool
	.section	.text.allocAdjustedBits,"ax",@progbits
	.align	4
	.global	allocAdjustedBits
	.type	allocAdjustedBits, @function
allocAdjustedBits:
.LFB11:
	.loc 1 318 0
.LVL94:
	entry	sp, 32
.LCFI6:
	.loc 1 319 0
	movi.n	a8, 0xf
	blt	a8, a3, .L47
	.loc 1 320 0
	blti	a3, 2, .L45
	.loc 1 321 0
	beqz.n	a4, .L44
	.loc 1 322 0
	addi.n	a3, a3, 1
.LVL95:
	.loc 1 323 0
	addi.n	a4, a4, -1
.LVL96:
	j	.L44
.L45:
	.loc 1 325 0
	addi.n	a3, a3, -1
.LVL97:
	movi.n	a8, 1
	movi.n	a9, 0
	moveqz	a9, a8, a3
	extui	a3, a9, 0, 8
.LVL98:
	bgei	a4, 2, .L46
	movi.n	a8, 0
.L46:
	bnone	a3, a8, .L48
.LVL99:
	.loc 1 327 0
	addi	a4, a4, -2
.LVL100:
	.loc 1 326 0
	movi.n	a3, 2
	j	.L44
.LVL101:
.L47:
	.loc 1 332 0
	movi.n	a3, 0x10
.LVL102:
	j	.L44
.L48:
	.loc 1 329 0
	movi.n	a3, 0
.LVL103:
.L44:
	.loc 1 334 0
	s8i	a3, a2, 0
	.loc 1 336 0
	mov.n	a2, a4
.LVL104:
	retw.n
.LFE11:
	.size	allocAdjustedBits, .-allocAdjustedBits
	.section	.text.allocExcessBits,"ax",@progbits
	.align	4
	.global	allocExcessBits
	.type	allocExcessBits, @function
allocExcessBits:
.LFB12:
	.loc 1 344 0
.LVL105:
	entry	sp, 32
.LCFI7:
	.loc 1 345 0
	l8ui	a8, a2, 0
	movi.n	a9, 0xf
	bltu	a9, a8, .L51
	.loc 1 346 0
	addi.n	a8, a8, 1
	s8i	a8, a2, 0
	.loc 1 347 0
	addi.n	a2, a3, -1
.LVL106:
	retw.n
.LVL107:
.L51:
	.loc 1 349 0
	mov.n	a2, a3
.LVL108:
	.loc 1 351 0
	retw.n
.LFE12:
	.size	allocExcessBits, .-allocExcessBits
	.section	.text.oneChannelBitAllocation,"ax",@progbits
	.align	4
	.global	oneChannelBitAllocation
	.type	oneChannelBitAllocation, @function
oneChannelBitAllocation:
.LFB13:
	.loc 1 357 0
.LVL109:
	entry	sp, 48
.LCFI8:
	.loc 1 358 0
	l8ui	a6, a2, 9
.LVL110:
.LBB8:
	.loc 1 367 0
	mov.n	a7, a6
	mov.n	a14, sp
	mov.n	a13, a5
	mov.n	a12, a6
	mov.n	a11, a3
	l8ui	a10, a2, 14
	call8	adjustToFitBitpool
.LVL111:
	mov.n	a5, a10
.LVL112:
	.loc 1 369 0
	l32i.n	a10, sp, 0
.LVL113:
.LBE8:
	.loc 1 375 0
	bnez.n	a4, .L53
	movi.n	a6, 0
.LVL114:
.L53:
	.loc 1 375 0 is_stmt 0 discriminator 4
	addi	a6, a6, 48
	add.n	a2, a2, a6
.LVL115:
	addi.n	a2, a2, 12
.LVL116:
	.loc 1 377 0 is_stmt 1 discriminator 4
	movi.n	a4, 0
.LVL117:
	.loc 1 378 0 discriminator 4
	j	.L54
.LVL118:
.L55:
	.loc 1 379 0
	add.n	a6, a3, a4
	l8ui	a11, a6, 0
	mov.n	a12, a10
	add.n	a11, a11, a5
	add.n	a10, a2, a4
.LVL119:
	call8	allocAdjustedBits
.LVL120:
	.loc 1 380 0
	addi.n	a4, a4, 1
.LVL121:
.L54:
	.loc 1 378 0
	bltu	a4, a7, .L55
	movi.n	a3, 0
.LVL122:
	j	.L56
.LVL123:
.L57:
	.loc 1 384 0
	mov.n	a11, a10
	add.n	a10, a2, a3
.LVL124:
	call8	allocExcessBits
.LVL125:
	.loc 1 385 0
	addi.n	a3, a3, 1
.LVL126:
.L56:
	.loc 1 383 0
	bnez.n	a10, .L57
	.loc 1 387 0
	retw.n
.LFE13:
	.size	oneChannelBitAllocation, .-oneChannelBitAllocation
	.section	.text.monoBitAllocation,"ax",@progbits
	.align	4
	.global	monoBitAllocation
	.type	monoBitAllocation, @function
monoBitAllocation:
.LFB14:
	.loc 1 391 0
.LVL127:
	entry	sp, 48
.LCFI9:
	.loc 1 394 0
	movi.n	a3, 0
	s32i.n	a3, sp, 8
	.loc 1 396 0
	addi.n	a13, sp, 8
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
	call8	computeBitneed
.LVL128:
	.loc 1 398 0
	mov.n	a13, a10
	mov.n	a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
.LVL129:
	call8	oneChannelBitAllocation
.LVL130:
	retw.n
.LFE14:
	.size	monoBitAllocation, .-monoBitAllocation
	.section	.rodata.offset8$4223,"a",@progbits
	.align	4
	.type	offset8$4223, @object
	.size	offset8$4223, 32
offset8$4223:
	.byte	-2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	-3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	-4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	-4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.section	.rodata.offset4$4222,"a",@progbits
	.align	4
	.type	offset4$4222, @object
	.size	offset4$4222, 16
offset4$4222:
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.byte	-2
	.byte	0
	.byte	0
	.byte	1
	.byte	-2
	.byte	0
	.byte	0
	.byte	1
	.byte	-2
	.byte	0
	.byte	0
	.byte	1
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI5-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI6-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI7-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI8-.LFB13
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI9-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
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
	.4byte	.LASF100
	.byte	0xc
	.4byte	.LASF101
	.4byte	.LASF102
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x66
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x67
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x68
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x135
	.4byte	0x25
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x136
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x137
	.4byte	0xa3
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x138
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x139
	.4byte	0x45
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x13a
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x85
	.4byte	0x9c
	.uleb128 0x5
	.4byte	0xf6
	.4byte	0x135
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x7b
	.4byte	0xde
	.uleb128 0x8
	.byte	0x10
	.byte	0x7
	.byte	0x7f
	.4byte	0x1fd
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x7
	.byte	0x80
	.4byte	0x102
	.byte	0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x7
	.byte	0x81
	.4byte	0xf6
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x7
	.byte	0x83
	.4byte	0xf6
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x7
	.byte	0x84
	.4byte	0xf6
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x7
	.byte	0x87
	.4byte	0xf6
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x7
	.byte	0x88
	.4byte	0xf6
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x7
	.byte	0x8a
	.4byte	0xf6
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x7
	.byte	0x8b
	.4byte	0xf6
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x7
	.byte	0x8d
	.4byte	0xf6
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x7
	.byte	0x8e
	.4byte	0xf6
	.byte	0xa
	.uleb128 0xa
	.string	"crc"
	.byte	0x7
	.byte	0x8f
	.4byte	0xf6
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x7
	.byte	0x90
	.4byte	0xf6
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x7
	.byte	0x91
	.4byte	0xf6
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x7
	.byte	0x92
	.4byte	0xf6
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0x96
	.4byte	0xf6
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0x97
	.4byte	0x140
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.byte	0xa5
	.4byte	0x227
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x7
	.byte	0xa6
	.4byte	0x125
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x7
	.byte	0xa7
	.4byte	0x227
	.byte	0
	.uleb128 0x5
	.4byte	0x10e
	.4byte	0x237
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x50
	.byte	0x7
	.byte	0x9a
	.4byte	0x2dc
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.byte	0x9b
	.4byte	0x2dc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x7
	.byte	0x9c
	.4byte	0x1fd
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0x9d
	.4byte	0x2e7
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0x9e
	.4byte	0x10e
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0x9f
	.4byte	0x2f7
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x7
	.byte	0xa1
	.4byte	0x2fd
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x7
	.byte	0xa2
	.4byte	0xea
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x7
	.byte	0xa3
	.4byte	0xbc
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0xa8
	.4byte	0x208
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0xa9
	.4byte	0xf6
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0xaa
	.4byte	0xc7
	.byte	0x4d
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0xab
	.4byte	0xf6
	.byte	0x4e
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x7
	.byte	0xac
	.4byte	0xf6
	.byte	0x4f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2e2
	.uleb128 0xe
	.4byte	0x11a
	.uleb128 0x5
	.4byte	0xd2
	.4byte	0x2f7
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xea
	.uleb128 0x5
	.4byte	0x30d
	.4byte	0x30d
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x135
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x7
	.byte	0xad
	.4byte	0x237
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.byte	0x4c
	.4byte	0x33d
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4d
	.4byte	0x33d
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x8
	.byte	0x4e
	.4byte	0x34d
	.byte	0
	.uleb128 0x5
	.4byte	0xf6
	.4byte	0x34d
	.uleb128 0x6
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x10e
	.4byte	0x35d
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x4f
	.4byte	0x31e
	.uleb128 0xe
	.4byte	0xf6
	.uleb128 0xd
	.byte	0x4
	.4byte	0xf6
	.uleb128 0xd
	.byte	0x4
	.4byte	0x313
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x1
	.byte	0x2d
	.4byte	0x10e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a2
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x2d
	.4byte	0x3a2
	.4byte	.LLST0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1fd
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.byte	0x3e
	.4byte	0x102
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fe
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x3e
	.4byte	0x3a2
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0x40
	.4byte	0x102
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x41
	.4byte	0x102
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0x42
	.4byte	0x102
	.4byte	.LLST4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x1
	.byte	0x54
	.4byte	0x10e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x444
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x54
	.4byte	0x3a2
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.byte	0x56
	.4byte	0xbc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0x3a8
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.byte	0x5d
	.4byte	0x102
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x492
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5d
	.4byte	0x3a2
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x1
	.byte	0x5d
	.4byte	0x492
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.byte	0x5f
	.4byte	0xbc
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	.LVL28
	.4byte	0x3a8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xbc
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x1
	.byte	0x81
	.4byte	0xbc
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ad
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x1
	.byte	0x81
	.4byte	0x373
	.4byte	.LLST8
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1
	.byte	0x82
	.4byte	0x36d
	.4byte	.LLST9
	.uleb128 0x17
	.string	"ch"
	.byte	0x1
	.byte	0x83
	.4byte	0xbc
	.4byte	.LLST10
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0x84
	.4byte	0x492
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x1
	.byte	0x86
	.4byte	0x5c3
	.uleb128 0x5
	.byte	0x3
	.4byte	offset4$4222
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x1
	.byte	0x8d
	.4byte	0x5de
	.uleb128 0x5
	.byte	0x3
	.4byte	offset8$4223
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x94
	.4byte	0x5e3
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x18
	.string	"sb"
	.byte	0x1
	.byte	0x95
	.4byte	0xbc
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x96
	.4byte	0x5e8
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x1
	.byte	0x97
	.4byte	0xbc
	.4byte	.LLST12
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x1
	.byte	0x98
	.4byte	0xf6
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.byte	0x99
	.4byte	0xf6
	.4byte	.LLST14
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x57e
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x9d
	.4byte	0xb1
	.4byte	.LLST15
	.byte	0
	.uleb128 0x1a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x1
	.byte	0xa7
	.4byte	0x5ee
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0xae
	.4byte	0xb1
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xd2
	.4byte	0x5c3
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	0x5ad
	.uleb128 0x5
	.4byte	0xd2
	.4byte	0x5de
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.uleb128 0x6
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.4byte	0x5c8
	.uleb128 0xe
	.4byte	0xbc
	.uleb128 0xd
	.byte	0x4
	.4byte	0xd2
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5f4
	.uleb128 0xe
	.4byte	0xd2
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x101
	.4byte	0xb1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fc
	.uleb128 0x1d
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x101
	.4byte	0x5e3
	.4byte	.LLST18
	.uleb128 0x1e
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x102
	.4byte	0x6fc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x103
	.4byte	0x5e3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x104
	.4byte	0xbc
	.4byte	.LLST19
	.uleb128 0x1e
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x105
	.4byte	0x492
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1f
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x107
	.4byte	0xb1
	.4byte	.LLST20
	.uleb128 0x1f
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x108
	.4byte	0xb1
	.4byte	.LLST21
	.uleb128 0x20
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x109
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1b
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1f
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x10f
	.4byte	0x10e
	.4byte	.LLST22
	.uleb128 0x1f
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x110
	.4byte	0xbc
	.4byte	.LLST23
	.uleb128 0x1f
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x111
	.4byte	0x10e
	.4byte	.LLST24
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.2byte	0x112
	.4byte	0xb1
	.4byte	.LLST25
	.uleb128 0x1b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1f
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x119
	.4byte	0x10e
	.4byte	.LLST26
	.uleb128 0x21
	.string	"n"
	.byte	0x1
	.2byte	0x11a
	.4byte	0x10e
	.4byte	.LLST27
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x10e
	.uleb128 0x1c
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x13b
	.4byte	0xb1
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x74d
	.uleb128 0x1d
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x13b
	.4byte	0x36d
	.4byte	.LLST28
	.uleb128 0x1d
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x13c
	.4byte	0xb1
	.4byte	.LLST29
	.uleb128 0x1d
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x13d
	.4byte	0xb1
	.4byte	.LLST30
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x156
	.4byte	0xb1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x786
	.uleb128 0x1d
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x156
	.4byte	0x36d
	.4byte	.LLST31
	.uleb128 0x1e
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x157
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x22
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x161
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88f
	.uleb128 0x1d
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x161
	.4byte	0x373
	.4byte	.LLST32
	.uleb128 0x1d
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x162
	.4byte	0x88f
	.4byte	.LLST33
	.uleb128 0x23
	.string	"ch"
	.byte	0x1
	.2byte	0x163
	.4byte	0xbc
	.4byte	.LLST34
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x164
	.4byte	0xbc
	.4byte	.LLST35
	.uleb128 0x1f
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x166
	.4byte	0x368
	.4byte	.LLST36
	.uleb128 0x1f
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x167
	.4byte	0xbc
	.4byte	.LLST37
	.uleb128 0x21
	.string	"sb"
	.byte	0x1
	.2byte	0x168
	.4byte	0xbc
	.4byte	.LLST38
	.uleb128 0x20
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x169
	.4byte	0xb1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x16a
	.4byte	0x36d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x864
	.uleb128 0x24
	.string	"ex"
	.byte	0x1
	.2byte	0x16e
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	.LVL111
	.4byte	0x5f9
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL120
	.4byte	0x702
	.4byte	0x87b
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x13
	.4byte	.LVL125
	.4byte	0x74d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x35d
	.uleb128 0x22
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x186
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92a
	.uleb128 0x1e
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x186
	.4byte	0x373
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x188
	.4byte	0x35d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x189
	.4byte	0xbc
	.4byte	.LLST39
	.uleb128 0x20
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x18a
	.4byte	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.4byte	.LVL128
	.4byte	0x498
	.4byte	0x90d
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x13
	.4byte	.LVL130
	.4byte	0x786
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x93d
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xe
	.4byte	0x8c
	.uleb128 0x26
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x955
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
	.4byte	0x102
	.4byte	0x96a
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x27
	.4byte	.LASF96
	.byte	0x8
	.byte	0x56
	.4byte	0x97e
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
	.4byte	0x95a
	.uleb128 0x5
	.4byte	0xf6
	.4byte	0x993
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x27
	.4byte	.LASF97
	.byte	0x8
	.byte	0x57
	.4byte	0x9a3
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.uleb128 0xe
	.4byte	0x983
	.uleb128 0x27
	.4byte	.LASF98
	.byte	0x8
	.byte	0x58
	.4byte	0x9b8
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.uleb128 0xe
	.4byte	0x983
	.uleb128 0x5
	.4byte	0xf6
	.4byte	0x9cd
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x27
	.4byte	.LASF99
	.byte	0x8
	.byte	0x59
	.4byte	0x9db
	.byte	0x2
	.byte	0x4
	.byte	0x8
	.uleb128 0xe
	.4byte	0x9bd
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0xa
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE6
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0xa
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0xa
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0xa
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x78
	.sleb128 -14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x18
	.byte	0x7c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x7f
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL63
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL91
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL66
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL87
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL69
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL70
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x7
	.byte	0x77
	.sleb128 2139062143
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x11
	.byte	0x78
	.sleb128 0
	.byte	0xc
	.4byte	0x40404040
	.byte	0x1a
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x7f7f7f7f
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1a
	.byte	0x7c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x40404040
	.byte	0x1a
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x7f7f7f7f
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x7
	.byte	0x77
	.sleb128 252645135
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x33
	.byte	0x7c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0x7c
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.byte	0xc
	.4byte	0x40404040
	.byte	0x1a
	.byte	0x36
	.byte	0x25
	.byte	0x23
	.uleb128 0x7f7f7f7f
	.byte	0x1a
	.byte	0xc
	.4byte	0x10101010
	.byte	0x1a
	.byte	0x34
	.byte	0x25
	.byte	0x23
	.uleb128 0xf0f0f0f
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL94
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL96
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL109
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL109
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL122
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL109
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL112
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x2
	.byte	0x72
	.sleb128 9
	.4byte	.LVL111-1
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL114
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL113
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL120-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL125
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129
	.4byte	.LVL130-1
	.2byte	0x1
	.byte	0x5d
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"join"
.LASF95:
	.string	"bd_addr_null"
.LASF62:
	.string	"result"
.LASF25:
	.string	"SBC_BUFFER_T"
.LASF52:
	.string	"maxBitneed"
.LASF59:
	.string	"internal_CalculateFramelen"
.LASF88:
	.string	"dest"
.LASF67:
	.string	"headerLen"
.LASF99:
	.string	"band_values"
.LASF72:
	.string	"offset4"
.LASF70:
	.string	"bitneeds"
.LASF89:
	.string	"allocExcessBits"
.LASF73:
	.string	"offset8"
.LASF11:
	.string	"sizetype"
.LASF46:
	.string	"frameCount"
.LASF21:
	.string	"OI_UINT8"
.LASF81:
	.string	"bitadjust"
.LASF96:
	.string	"freq_values"
.LASF32:
	.string	"mode"
.LASF98:
	.string	"channel_values"
.LASF39:
	.string	"cachedInfo"
.LASF85:
	.string	"adjust4"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"OI_INT"
.LASF47:
	.string	"subdata"
.LASF8:
	.string	"uint8_t"
.LASF97:
	.string	"block_values"
.LASF41:
	.string	"uint8"
.LASF37:
	.string	"enhanced"
.LASF61:
	.string	"nbits"
.LASF74:
	.string	"bitcount"
.LASF35:
	.string	"bitpool"
.LASF5:
	.string	"long long int"
.LASF51:
	.string	"bits"
.LASF40:
	.string	"OI_CODEC_SBC_FRAME_INFO"
.LASF55:
	.string	"maxChannels"
.LASF44:
	.string	"frameInfo"
.LASF48:
	.string	"filterBuffer"
.LASF13:
	.string	"long int"
.LASF45:
	.string	"scale_factor"
.LASF9:
	.string	"UINT8"
.LASF7:
	.string	"__uint8_t"
.LASF23:
	.string	"OI_UINT32"
.LASF93:
	.string	"bitpoolPreference"
.LASF31:
	.string	"subbands"
.LASF66:
	.string	"headerLen_"
.LASF92:
	.string	"monoBitAllocation"
.LASF83:
	.string	"total"
.LASF1:
	.string	"unsigned char"
.LASF102:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF33:
	.string	"nrof_channels"
.LASF71:
	.string	"preferredBitpool"
.LASF68:
	.string	"computeBitneed"
.LASF50:
	.string	"filterBufferOffset"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF30:
	.string	"nrof_subbands"
.LASF34:
	.string	"alloc"
.LASF49:
	.string	"filterBufferLen"
.LASF3:
	.string	"short unsigned int"
.LASF77:
	.string	"offset"
.LASF63:
	.string	"internal_CalculateBitrate"
.LASF60:
	.string	"frame"
.LASF27:
	.string	"freqIndex"
.LASF12:
	.string	"char"
.LASF90:
	.string	"allocBits"
.LASF10:
	.string	"_Bool"
.LASF20:
	.string	"OI_INT32"
.LASF17:
	.string	"OI_BYTE"
.LASF58:
	.string	"OI_SBC_MaxBitpool"
.LASF80:
	.string	"maxBitadjust"
.LASF18:
	.string	"OI_INT8"
.LASF42:
	.string	"uint32"
.LASF14:
	.string	"long unsigned int"
.LASF38:
	.string	"min_bitpool"
.LASF56:
	.string	"OI_CODEC_SBC_COMMON_CONTEXT"
.LASF64:
	.string	"blocksbands"
.LASF69:
	.string	"common"
.LASF19:
	.string	"OI_INT16"
.LASF84:
	.string	"count"
.LASF91:
	.string	"oneChannelBitAllocation"
.LASF79:
	.string	"excess"
.LASF82:
	.string	"chop"
.LASF78:
	.string	"adjustToFitBitpool"
.LASF29:
	.string	"blocks"
.LASF65:
	.string	"OI_SBC_CalculateFrameAndHeaderlen"
.LASF26:
	.string	"frequency"
.LASF94:
	.string	"bd_addr_any"
.LASF43:
	.string	"codecInfo"
.LASF54:
	.string	"pcmStride"
.LASF101:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/srce/bitalloc.c"
.LASF24:
	.string	"OI_CHAR"
.LASF28:
	.string	"nrof_blocks"
.LASF16:
	.string	"OI_UINT"
.LASF22:
	.string	"OI_UINT16"
.LASF100:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF75:
	.string	"maxBits"
.LASF57:
	.string	"BITNEED_UNION1"
.LASF76:
	.string	"prefBits"
.LASF86:
	.string	"mask"
.LASF87:
	.string	"allocAdjustedBits"
.LASF53:
	.string	"formatByte"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
