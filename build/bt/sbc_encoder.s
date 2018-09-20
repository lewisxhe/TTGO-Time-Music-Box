	.file	"sbc_encoder.c"
	.text
.Ltext0:
	.section	.text.SBC_Encoder,"ax",@progbits
	.literal_position
	.literal .LC0, s32LRDiff
	.literal .LC1, s32LRSum
	.literal .LC2, 8388608
	.literal .LC3, 32768
	.literal .LC4, sbc_prtc_cb
	.align	4
	.global	SBC_Encoder
	.type	SBC_Encoder, @function
SBC_Encoder:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/srce/sbc_encoder.c"
	.loc 1 118 0
.LVL0:
	entry	sp, 64
.LCFI0:
	s32i.n	a2, sp, 20
.LVL1:
	.loc 1 127 0
	l16si	a2, a2, 8
.LVL2:
	.loc 1 136 0
	l32i.n	a3, sp, 20
	l16si	a7, a3, 4
	s32i.n	a7, sp, 16
.LVL3:
	.loc 1 138 0
	addmi	a3, a3, 0x600
	l32i	a4, a3, 136
	s32i	a4, a3, 140
	.loc 1 143 0
	l32i.n	a4, sp, 20
	addi	a3, a4, 72
	s32i	a3, a4, 68
	.loc 1 121 0
	movi.n	a5, 0
	s32i.n	a5, sp, 8
	mov.n	a6, a4
.LVL4:
.L40:
	.loc 1 147 0
	l32i.n	a3, sp, 16
	bnei	a3, 4, .L2
	.loc 1 148 0
	mov.n	a10, a6
	call8	SbcAnalysisFilter4
.LVL5:
	j	.L3
.L2:
	.loc 1 150 0
	mov.n	a10, a6
	call8	SbcAnalysisFilter8
.LVL6:
.L3:
	.loc 1 154 0
	addi	a4, a6, 36
	s32i.n	a4, sp, 4
.LVL7:
	.loc 1 155 0
	l16si	a8, a6, 6
	l32i.n	a5, sp, 16
	mull	a8, a5, a8
.LVL8:
	.loc 1 157 0
	mull	a3, a2, a8
	l32i	a4, a6, 68
.LVL9:
	addx2	a3, a3, a4
	s32i	a3, a6, 68
.LVL10:
	.loc 1 154 0
	l32i.n	a10, sp, 4
	.loc 1 159 0
	movi.n	a9, 0
	l32i.n	a5, sp, 8
	j	.L4
.LVL11:
.L13:
	.loc 1 160 0
	movi	a4, 0x268
	add.n	a4, a6, a4
	addx4	a4, a9, a4
.LVL12:
	.loc 1 162 0
	mov.n	a12, a2
	.loc 1 161 0
	movi.n	a11, 0
	.loc 1 162 0
	j	.L5
.LVL13:
.L7:
	.loc 1 163 0
	l32i.n	a3, a4, 0
	abs	a3, a3
	bge	a11, a3, .L6
	.loc 1 164 0
	mov.n	a11, a3
.LVL14:
.L6:
	.loc 1 166 0 discriminator 2
	addx4	a4, a8, a4
.LVL15:
	.loc 1 162 0 discriminator 2
	addi.n	a12, a12, -1
.LVL16:
.L5:
	.loc 1 162 0 is_stmt 0 discriminator 1
	bgei	a12, 1, .L7
	.loc 1 169 0 is_stmt 1
	l32r	a3, .LC2
	bge	a3, a11, .L42
	movi.n	a3, 9
	j	.L9
.L42:
	movi.n	a3, 0
	j	.L9
.LVL17:
.L11:
	.loc 1 172 0
	l32r	a4, .LC3
	ssl	a3
	sll	a4, a4
	bge	a4, a11, .L10
	.loc 1 171 0
	addi.n	a3, a3, 1
.LVL18:
.L9:
	.loc 1 171 0 is_stmt 0 discriminator 1
	movi.n	a4, 0xe
	bgeu	a4, a3, .L11
.L10:
	.loc 1 176 0 is_stmt 1
	addi.n	a4, a10, 2
.LVL19:
	s16i	a3, a10, 0
	.loc 1 178 0
	bgeu	a5, a3, .L12
	.loc 1 179 0
	mov.n	a5, a3
.LVL20:
.L12:
	.loc 1 159 0 discriminator 2
	addi.n	a9, a9, 1
.LVL21:
	.loc 1 176 0 discriminator 2
	mov.n	a10, a4
.LVL22:
.L4:
	.loc 1 159 0 discriminator 1
	blt	a9, a8, .L13
	s32i.n	a5, sp, 8
	.loc 1 184 0
	l16si	a3, a6, 2
	bnei	a3, 3, .L15
	j	.L44
.LVL23:
.L34:
	.loc 1 189 0
	movi	a14, 0x268
	l32i.n	a3, sp, 12
	add.n	a14, a3, a14
	l32i.n	a4, sp, 0
.LVL24:
	addx4	a14, a4, a14
.LVL25:
	mov.n	a5, a14
	.loc 1 193 0
	l32r	a10, .LC0
	.loc 1 192 0
	l32r	a9, .LC1
	.loc 1 190 0
	movi.n	a12, 0
	.loc 1 194 0
	mov.n	a6, a12
	.loc 1 191 0
	mov.n	a13, a12
	.loc 1 194 0
	j	.L16
.LVL26:
.L19:
	.loc 1 195 0
	l32i.n	a11, a5, 0
	addx4	a4, a7, a5
	l32i.n	a3, a4, 0
	add.n	a3, a11, a3
	srai	a3, a3, 1
	s32i.n	a3, a9, 0
	.loc 1 196 0
	abs	a3, a3
	bge	a13, a3, .L17
	.loc 1 197 0
	mov.n	a13, a3
.LVL27:
.L17:
	.loc 1 199 0
	addi.n	a9, a9, 4
.LVL28:
	.loc 1 200 0
	l32i.n	a3, a5, 0
	l32i.n	a4, a4, 0
	sub	a3, a3, a4
	srai	a3, a3, 1
	s32i.n	a3, a10, 0
	.loc 1 201 0
	abs	a3, a3
	bge	a12, a3, .L18
	.loc 1 202 0
	mov.n	a12, a3
.LVL29:
.L18:
	.loc 1 204 0 discriminator 2
	addi.n	a10, a10, 4
.LVL30:
	.loc 1 205 0 discriminator 2
	addx4	a5, a8, a5
.LVL31:
	.loc 1 194 0 discriminator 2
	addi.n	a6, a6, 1
.LVL32:
.L16:
	.loc 1 194 0 is_stmt 0 discriminator 1
	blt	a6, a2, .L19
	.loc 1 207 0 is_stmt 1
	l32r	a3, .LC2
	bge	a3, a13, .L47
	movi.n	a4, 9
	j	.L21
.L47:
	movi.n	a4, 0
	j	.L21
.LVL33:
.L23:
	.loc 1 209 0
	l32r	a3, .LC3
	ssl	a4
	sll	a3, a3
	bge	a3, a13, .L22
	.loc 1 208 0
	addi.n	a4, a4, 1
.LVL34:
.L21:
	.loc 1 208 0 is_stmt 0 discriminator 1
	movi.n	a3, 0xe
	bgeu	a3, a4, .L23
.L22:
.LVL35:
	.loc 1 214 0 is_stmt 1
	l32r	a3, .LC2
	bge	a3, a12, .L48
	movi.n	a3, 9
	j	.L25
.L48:
	movi.n	a3, 0
	j	.L25
.LVL36:
.L27:
	.loc 1 216 0
	l32r	a5, .LC3
	ssl	a3
	sll	a5, a5
	bge	a5, a12, .L26
	.loc 1 215 0
	addi.n	a3, a3, 1
.LVL37:
.L25:
	.loc 1 215 0 is_stmt 0 discriminator 1
	movi.n	a5, 0xe
	bgeu	a5, a3, .L27
.L26:
.LVL38:
	.loc 1 221 0 is_stmt 1
	l32i.n	a5, sp, 4
	l16si	a9, a5, 0
.LVL39:
	mov.n	a6, a7
.LVL40:
	addx2	a10, a7, a5
.LVL41:
	l16si	a5, a10, 0
	add.n	a5, a9, a5
	add.n	a9, a4, a3
	sext	a9, a9, 15
	bge	a9, a5, .L28
.LVL42:
	.loc 1 223 0
	l32i.n	a5, sp, 8
	bgeu	a5, a4, .L29
	.loc 1 224 0
	s32i.n	a4, sp, 8
.LVL43:
.L29:
	.loc 1 227 0
	l32i.n	a5, sp, 8
	bgeu	a5, a3, .L30
	.loc 1 228 0
	s32i.n	a3, sp, 8
.LVL44:
.L30:
	.loc 1 231 0
	l32i.n	a5, sp, 4
	s16i	a4, a5, 0
	.loc 1 232 0
	s16i	a3, a10, 0
.LVL45:
	.loc 1 236 0
	l32r	a5, .LC0
	.loc 1 235 0
	l32r	a4, .LC1
.LVL46:
	.loc 1 238 0
	movi.n	a3, 0
.LVL47:
	j	.L31
.LVL48:
.L32:
	.loc 1 239 0 discriminator 3
	l32i.n	a9, a4, 0
	s32i.n	a9, a14, 0
	.loc 1 240 0 discriminator 3
	addx4	a9, a6, a14
	l32i.n	a10, a5, 0
	s32i.n	a10, a9, 0
	.loc 1 242 0 discriminator 3
	addx8	a14, a15, a14
.LVL49:
	.loc 1 243 0 discriminator 3
	addi.n	a4, a4, 4
.LVL50:
	.loc 1 244 0 discriminator 3
	addi.n	a5, a5, 4
.LVL51:
	.loc 1 238 0 discriminator 3
	addi.n	a3, a3, 1
.LVL52:
.L31:
	.loc 1 238 0 is_stmt 0 discriminator 1
	blt	a3, a2, .L32
	.loc 1 247 0 is_stmt 1
	l32i.n	a4, sp, 0
.LVL53:
	addi.n	a3, a4, 8
.LVL54:
	l32i.n	a5, sp, 12
.LVL55:
	addx2	a3, a3, a5
	movi.n	a4, 1
	s16i	a4, a3, 2
	j	.L33
.LVL56:
.L28:
	.loc 1 249 0
	l32i.n	a4, sp, 0
.LVL57:
	addi.n	a3, a4, 8
.LVL58:
	l32i.n	a5, sp, 12
	addx2	a3, a3, a5
	movi.n	a4, 0
	s16i	a4, a3, 2
.L33:
	.loc 1 251 0 discriminator 2
	l32i.n	a3, sp, 4
	addi.n	a3, a3, 2
	s32i.n	a3, sp, 4
.LVL59:
	.loc 1 188 0 discriminator 2
	l32i.n	a4, sp, 0
	addi.n	a4, a4, 1
	s32i.n	a4, sp, 0
.LVL60:
	j	.L14
.LVL61:
.L44:
	movi.n	a5, 0
.LVL62:
	s32i.n	a5, sp, 0
	l32i.n	a15, sp, 16
	s32i.n	a6, sp, 12
.LVL63:
.L14:
	.loc 1 188 0 is_stmt 0 discriminator 1
	addi.n	a3, a15, -1
	l32i.n	a4, sp, 0
	blt	a4, a3, .L34
	l32i.n	a6, sp, 12
	.loc 1 253 0 is_stmt 1
	addi.n	a3, a4, 8
	addx2	a3, a3, a6
	movi.n	a4, 0
	s16i	a4, a3, 2
.LVL64:
.L15:
	.loc 1 257 0
	l32i.n	a5, sp, 8
	s16i	a5, a6, 34
	.loc 1 260 0
	l16ui	a3, a6, 2
	addi	a3, a3, -2
	extui	a3, a3, 0, 16
	bgeui	a3, 2, .L35
	.loc 1 261 0
	mov.n	a10, a6
	call8	sbc_enc_bit_alloc_ste
.LVL65:
	j	.L36
.LVL66:
.L35:
	.loc 1 263 0
	mov.n	a10, a6
	call8	sbc_enc_bit_alloc_mono
.LVL67:
.L36:
	.loc 1 267 0
	addmi	a3, a6, 0x600
	l32i	a3, a3, 140
.LVL68:
	.loc 1 269 0
	mov.n	a10, a6
	call8	EncPacking
.LVL69:
	.loc 1 272 0
	l32r	a4, .LC4
	l8ui	a4, a4, 4
	bnez.n	a4, .L37
	.loc 1 272 0 is_stmt 0 discriminator 1
	movi.n	a5, 1
	l32r	a4, .LC4
	s8i	a5, a4, 4
	l8ui	a5, a3, 0
	movi.n	a4, -0x11
	and	a4, a5, a4
	s8i	a4, a3, 0
.L37:
.LVL70:
	.loc 1 273 0 is_stmt 1
	l32r	a5, .LC4
	l8ui	a4, a5, 1
	s8i	a4, a5, 3
	l8ui	a4, a5, 0
	s8i	a4, a5, 2
	l8ui	a9, a3, 3
	movi	a4, 0x64
	and	a4, a9, a4
	s8i	a4, a5, 0
	movi.n	a8, 0x30
	and	a8, a9, a8
	srai	a8, a8, 2
	extui	a9, a9, 0, 2
	add.n	a8, a9, a8
	s8i	a8, a5, 1
	movi.n	a8, 0
	movi.n	a9, 1
	moveqz	a8, a9, a4
	extui	a4, a8, 0, 8
	s8i	a4, a5, 5
	.loc 1 281 0
	addx2	a4, a4, a5
	l8ui	a4, a4, 1
.LVL71:
	beqz.n	a4, .L38
	.loc 1 281 0 is_stmt 0 discriminator 1
	bbci	a4, 0, .L39
	.loc 1 281 0 discriminator 2
	addmi	a5, a6, 0x600
	l16ui	a10, a5, 146
	l32r	a5, .LC4
	l8ui	a5, a5, 6
	ssl	a9
	sll	a8, a4
	add.n	a9, a5, a8
	bgeu	a9, a10, .L39
.LVL72:
	.loc 1 281 0 discriminator 4
	add.n	a4, a4, a5
.LVL73:
	add.n	a4, a3, a4
	l8ui	a5, a4, 0
.LVL74:
	add.n	a9, a3, a9
	l8ui	a9, a9, 0
	s8i	a9, a4, 0
	l32r	a4, .LC4
	l8ui	a4, a4, 6
	add.n	a8, a4, a8
.LVL75:
	add.n	a3, a3, a8
.LVL76:
	s8i	a5, a3, 0
	j	.L38
.LVL77:
.L39:
	.loc 1 281 0 discriminator 5
	l32r	a5, .LC4
	l8ui	a5, a5, 6
	add.n	a4, a5, a4
.LVL78:
	add.n	a3, a3, a4
.LVL79:
	l8ui	a4, a3, 0
.LVL80:
	srli	a5, a4, 5
	addx8	a4, a4, a5
.LVL81:
	s8i	a4, a3, 0
.LVL82:
.L38:
	.loc 1 282 0 is_stmt 1
	l8ui	a3, a6, 16
	addi.n	a3, a3, -1
	extui	a3, a3, 0, 8
	s8i	a3, a6, 16
	bnez.n	a3, .L40
	.loc 1 284 0
	movi.n	a2, 1
.LVL83:
	l32i.n	a3, sp, 20
	s8i	a2, a3, 16
	retw.n
.LFE5:
	.size	SBC_Encoder, .-SBC_Encoder
	.section	.text.SBC_Encoder_Init,"ax",@progbits
	.literal_position
	.literal .LC5, 16000
	.literal .LC6, 32000
	.literal .LC7, 44100
	.literal .LC8, 48000
	.literal .LC9, EncMaxShiftCounter
	.literal .LC10, sbc_prtc_cb
	.align	4
	.global	SBC_Encoder_Init
	.type	SBC_Encoder_Init, @function
SBC_Encoder_Init:
.LFB6:
	.loc 1 294 0
.LVL84:
	entry	sp, 32
.LCFI1:
	.loc 1 301 0
	movi.n	a3, 1
	s8i	a3, a2, 16
	.loc 1 304 0
	l16ui	a8, a2, 2
	sext	a4, a8, 15
	bnez.n	a4, .L52
	.loc 1 305 0
	movi.n	a3, 1
	s16i	a3, a2, 6
	j	.L53
.L52:
	.loc 1 307 0
	movi.n	a3, 2
	s16i	a3, a2, 6
.L53:
	.loc 1 311 0
	l16ui	a9, a2, 0
	sext	a3, a9, 15
	beqz.n	a3, .L64
	.loc 1 313 0
	beqi	a3, 1, .L65
	.loc 1 315 0
	bnei	a3, 2, .L66
	.loc 1 316 0
	l32r	a11, .LC7
	j	.L54
.L64:
	.loc 1 312 0
	l32r	a11, .LC5
	j	.L54
.L65:
	.loc 1 314 0
	l32r	a11, .LC6
	j	.L54
.L66:
	.loc 1 318 0
	l32r	a11, .LC8
.L54:
.LVL85:
	.loc 1 322 0
	extui	a8, a8, 0, 16
	addi	a3, a8, -2
	extui	a3, a3, 0, 16
	.loc 1 321 0
	bgeui	a3, 2, .L55
	.loc 1 323 0
	l16ui	a3, a2, 14
	.loc 1 324 0
	l16si	a14, a2, 4
	.loc 1 323 0
	mull	a6, a3, a14
	.loc 1 324 0
	slli	a5, a6, 5
	sub	a5, a5, a6
	addx4	a5, a5, a6
	slli	a6, a5, 3
	quos	a6, a6, a11
	.loc 1 325 0
	slli	a5, a14, 2
	.loc 1 326 0
	l16si	a10, a2, 6
	.loc 1 325 0
	mull	a5, a10, a5
	addi	a13, a5, 32
	.loc 1 327 0
	addi	a4, a4, -2
	mull	a10, a14, a4
	add.n	a13, a13, a10
	.loc 1 329 0
	l16si	a4, a2, 8
	quos	a13, a13, a4
	.loc 1 323 0
	sub	a13, a6, a13
	extui	a13, a13, 0, 16
	sext	a15, a13, 15
.LVL86:
	.loc 1 332 0
	addi.n	a12, a5, 7
	movgez	a12, a5, a5
	srai	a5, a12, 3
	.loc 1 335 0
	mull	a6, a15, a4
	add.n	a6, a10, a6
	mov.n	a12, a6
	addi.n	a10, a6, 7
	movltz	a12, a10, a6
	srai	a12, a12, 3
	.loc 1 331 0
	add.n	a12, a5, a12
	addi.n	a12, a12, 4
	sext	a12, a12, 15
.LVL87:
	.loc 1 337 0
	slli	a12, a12, 3
.LVL88:
	mull	a10, a11, a12
.LVL89:
	.loc 1 338 0
	mull	a4, a14, a4
	.loc 1 339 0
	slli	a5, a4, 5
.LVL90:
	sub	a5, a5, a4
	addx4	a4, a5, a4
	slli	a11, a4, 3
.LVL91:
	.loc 1 338 0
	quos	a10, a10, a11
	.loc 1 337 0
	sext	a10, a10, 15
.LVL92:
	.loc 1 341 0
	bge	a3, a10, .L56
	.loc 1 342 0
	addi.n	a13, a13, -1
.LVL93:
	sext	a15, a13, 15
.LVL94:
.L56:
	.loc 1 345 0
	bnei	a14, 8, .L57
	.loc 1 346 0
	movi	a13, 0xff
	min	a15, a15, a13
.LVL95:
	s16i	a15, a2, 12
	j	.L58
.LVL96:
.L57:
	.loc 1 348 0
	movi	a13, 0x80
	min	a15, a15, a13
.LVL97:
	s16i	a15, a2, 12
	j	.L58
.LVL98:
.L55:
	.loc 1 351 0
	l16si	a12, a2, 4
	.loc 1 352 0
	l16ui	a3, a2, 14
	.loc 1 351 0
	mull	a4, a3, a12
	.loc 1 352 0
	slli	a3, a4, 5
	sub	a3, a3, a4
	addx4	a3, a3, a4
	slli	a10, a3, 3
	.loc 1 353 0
	l16si	a3, a2, 6
	mull	a11, a11, a3
.LVL99:
	quos	a11, a10, a11
	.loc 1 354 0
	movi.n	a10, 0x20
	quos	a10, a10, a3
	addx4	a10, a12, a10
	.loc 1 356 0
	l16si	a3, a2, 8
	quos	a10, a10, a3
	.loc 1 351 0
	sub	a10, a11, a10
	sext	a10, a10, 15
.LVL100:
	.loc 1 360 0
	slli	a12, a12, 4
	min	a10, a10, a12
.LVL101:
	.loc 1 358 0
	s16i	a10, a2, 12
.LVL102:
.L58:
	.loc 1 363 0
	l16si	a3, a2, 12
	bgez	a3, .L59
	.loc 1 364 0
	movi.n	a3, 0
	s16i	a3, a2, 12
.L59:
	.loc 1 367 0
	extui	a9, a9, 0, 16
	slli	a9, a9, 6
	extui	a9, a9, 0, 8
.LVL103:
	.loc 1 370 0
	l16si	a10, a2, 8
	addi	a10, a10, -4
	movi.n	a11, 0xc
	and	a10, a10, a11
	slli	a10, a10, 2
	or	a9, a9, a10
.LVL104:
	.loc 1 373 0
	extui	a8, a8, 0, 2
	slli	a8, a8, 2
	or	a8, a9, a8
.LVL105:
	.loc 1 376 0
	l16ui	a9, a2, 10
	extui	a9, a9, 0, 1
	slli	a9, a9, 1
	or	a8, a8, a9
.LVL106:
	.loc 1 377 0
	l16si	a4, a2, 4
	extui	a3, a4, 3, 1
	or	a8, a8, a3
.LVL107:
	.loc 1 378 0
	addmi	a3, a2, 0x600
	s16i	a8, a3, 144
	.loc 1 380 0
	bnei	a4, 4, .L60
	.loc 1 381 0
	l16si	a3, a2, 6
	bnei	a3, 1, .L61
	.loc 1 382 0
	movi	a4, 0xb8
	l32r	a3, .LC9
	s16i	a4, a3, 0
	j	.L62
.L61:
	.loc 1 384 0
	movi.n	a4, 0x48
	l32r	a3, .LC9
	s16i	a4, a3, 0
	j	.L62
.L60:
	.loc 1 387 0
	l16si	a3, a2, 6
	bnei	a3, 1, .L63
	.loc 1 388 0
	movi	a4, 0x90
	l32r	a3, .LC9
	s16i	a4, a3, 0
	j	.L62
.L63:
	.loc 1 390 0
	movi.n	a4, 0x20
	l32r	a3, .LC9
	s16i	a4, a3, 0
.L62:
	.loc 1 397 0
	call8	SbcAnalysisInit
.LVL108:
	.loc 1 399 0
	l32r	a8, .LC10
	movi.n	a9, 0
	s8i	a9, a8, 0
	s8i	a9, a8, 1
	s8i	a9, a8, 2
	s8i	a9, a8, 3
	s8i	a9, a8, 4
	s8i	a9, a8, 5
	s8i	a9, a8, 6
	.loc 1 400 0
	l16si	a3, a2, 6
	l16si	a2, a2, 4
.LVL109:
	mull	a2, a3, a2
	extui	a3, a2, 31, 1
	add.n	a2, a3, a2
	srai	a2, a2, 1
	addi.n	a2, a2, 6
	s8i	a2, a8, 6
	retw.n
.LFE6:
	.size	SBC_Encoder_Init, .-SBC_Encoder_Init
	.global	s32LRSum
	.section	.bss.s32LRSum,"aw",@nobits
	.align	4
	.type	s32LRSum, @object
	.size	s32LRSum, 64
s32LRSum:
	.zero	64
	.global	s32LRDiff
	.section	.bss.s32LRDiff,"aw",@nobits
	.align	4
	.type	s32LRDiff, @object
	.size	s32LRDiff, 64
s32LRDiff:
	.zero	64
	.comm	sbc_prtc_cb,7,4
	.comm	EncMaxShiftCounter,2,2
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
	.uleb128 0x40
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/include/sbc_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/include/sbc_encoder.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/include/sbc_enc_func_declare.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x648
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0xc
	.4byte	.LASF95
	.4byte	.LASF96
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
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x9a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x22
	.4byte	0xa5
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x23
	.4byte	0xb0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x5
	.4byte	0xbb
	.4byte	0xf3
	.uleb128 0x6
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x1f
	.4byte	0x12a
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0x24
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x25
	.4byte	0x7e
	.uleb128 0xa
	.4byte	.LASF97
	.2byte	0x694
	.byte	0x6
	.byte	0x9a
	.4byte	0x251
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x9b
	.4byte	0x12a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x9c
	.4byte	0x12a
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x9d
	.4byte	0x12a
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x9e
	.4byte	0x12a
	.byte	0x6
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x9f
	.4byte	0x12a
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0xa0
	.4byte	0x12a
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0xa1
	.4byte	0x12a
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0xa3
	.4byte	0xc6
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0xa4
	.4byte	0xbb
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0xa6
	.4byte	0x251
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0xa9
	.4byte	0x12a
	.byte	0x22
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0xaa
	.4byte	0x261
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0xac
	.4byte	0x271
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0xb0
	.4byte	0x277
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0xb3
	.4byte	0x261
	.2byte	0x248
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0xb5
	.4byte	0x287
	.2byte	0x268
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0xb7
	.4byte	0x261
	.2byte	0x668
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0xb9
	.4byte	0xf3
	.2byte	0x688
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0xba
	.4byte	0xf3
	.2byte	0x68c
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0xbb
	.4byte	0xc6
	.2byte	0x690
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0xbc
	.4byte	0xc6
	.2byte	0x692
	.byte	0
	.uleb128 0x5
	.4byte	0x12a
	.4byte	0x261
	.uleb128 0x6
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x12a
	.4byte	0x271
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x12a
	.uleb128 0x5
	.4byte	0x12a
	.4byte	0x287
	.uleb128 0x6
	.4byte	0x85
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.4byte	0x135
	.4byte	0x297
	.uleb128 0x6
	.4byte	0x85
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x6
	.byte	0xbe
	.4byte	0x140
	.uleb128 0xd
	.byte	0x2
	.byte	0x1
	.byte	0x58
	.4byte	0x2c3
	.uleb128 0xe
	.string	"use"
	.byte	0x1
	.byte	0x59
	.4byte	0xbb
	.byte	0
	.uleb128 0xe
	.string	"idx"
	.byte	0x1
	.byte	0x5a
	.4byte	0xbb
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5b
	.4byte	0x2a2
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.byte	0x5d
	.4byte	0x306
	.uleb128 0xe
	.string	"fr"
	.byte	0x1
	.byte	0x5e
	.4byte	0x306
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0x5f
	.4byte	0xbb
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0x60
	.4byte	0xbb
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x1
	.byte	0x61
	.4byte	0xbb
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0x2c3
	.4byte	0x316
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x1
	.byte	0x62
	.4byte	0x2ce
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x1
	.byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e7
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x1
	.byte	0x75
	.4byte	0x4e7
	.4byte	.LLST0
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0x1
	.byte	0x77
	.4byte	0x135
	.4byte	.LLST1
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.byte	0x78
	.4byte	0x135
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.byte	0x79
	.4byte	0xd1
	.4byte	.LLST3
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.byte	0x79
	.4byte	0xd1
	.4byte	.LLST4
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x1
	.byte	0x7a
	.4byte	0x135
	.4byte	.LLST5
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0x7c
	.4byte	0x271
	.4byte	.LLST6
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.byte	0x7d
	.4byte	0x4ed
	.4byte	.LLST7
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x1
	.byte	0x7e
	.4byte	0x135
	.4byte	.LLST8
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7f
	.4byte	0x135
	.4byte	.LLST9
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x1
	.byte	0x81
	.4byte	0x135
	.4byte	.LLST10
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.byte	0x82
	.4byte	0xd1
	.4byte	.LLST11
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.byte	0x82
	.4byte	0xd1
	.4byte	.LLST12
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.byte	0x83
	.4byte	0x4ed
	.4byte	.LLST13
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.byte	0x83
	.4byte	0x4ed
	.4byte	.LLST14
	.uleb128 0x12
	.string	"pu8"
	.byte	0x1
	.byte	0x85
	.4byte	0xf3
	.4byte	.LLST15
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.byte	0x86
	.4byte	0x4f3
	.uleb128 0x6
	.byte	0x3
	.4byte	sbc_prtc_cb
	.byte	0x9f
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x1
	.byte	0x86
	.4byte	0x4f3
	.uleb128 0x6
	.byte	0x3
	.4byte	sbc_prtc_cb+2
	.byte	0x9f
	.uleb128 0x12
	.string	"idx"
	.byte	0x1
	.byte	0x87
	.4byte	0xd1
	.4byte	.LLST16
	.uleb128 0x12
	.string	"tmp"
	.byte	0x1
	.byte	0x87
	.4byte	0xd1
	.4byte	.LLST17
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.byte	0x87
	.4byte	0xd1
	.4byte	.LLST18
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0x88
	.4byte	0x135
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x609
	.4byte	0x49a
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0x614
	.4byte	0x4ae
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL65
	.4byte	0x61f
	.4byte	0x4c2
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL67
	.4byte	0x62a
	.4byte	0x4d6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL69
	.4byte	0x635
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x297
	.uleb128 0x7
	.byte	0x4
	.4byte	0x135
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c3
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x125
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x579
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x125
	.4byte	0x4e7
	.4byte	.LLST20
	.uleb128 0x19
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x127
	.4byte	0xc6
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x128
	.4byte	0x12a
	.4byte	.LLST22
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x129
	.4byte	0x12a
	.4byte	.LLST23
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x12a
	.4byte	0x12a
	.4byte	.LLST24
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x12b
	.4byte	0xc6
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	.LVL108
	.4byte	0x640
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x58c
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1c
	.4byte	0xe3
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x5a4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0xe3
	.uleb128 0x1d
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x2ea
	.4byte	0xbb
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.byte	0x20
	.4byte	0x12a
	.uleb128 0x5
	.byte	0x3
	.4byte	EncMaxShiftCounter
	.uleb128 0x1e
	.4byte	.LASF85
	.byte	0x1
	.byte	0x63
	.4byte	0x316
	.uleb128 0x5
	.byte	0x3
	.4byte	sbc_prtc_cb
	.uleb128 0x5
	.4byte	0x135
	.4byte	0x5e7
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF86
	.byte	0x1
	.byte	0x71
	.4byte	0x5d7
	.uleb128 0x5
	.byte	0x3
	.4byte	s32LRDiff
	.uleb128 0x1e
	.4byte	.LASF87
	.byte	0x1
	.byte	0x72
	.4byte	0x5d7
	.uleb128 0x5
	.byte	0x3
	.4byte	s32LRSum
	.uleb128 0x1f
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x8
	.byte	0x2d
	.uleb128 0x1f
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0x8
	.byte	0x2e
	.uleb128 0x1f
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x8
	.byte	0x29
	.uleb128 0x1f
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x8
	.byte	0x28
	.uleb128 0x1f
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x8
	.byte	0x33
	.uleb128 0x1f
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x8
	.byte	0x2b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL11
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL62
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL2
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x3
	.4byte	s32LRSum
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x3
	.4byte	s32LRSum
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x3
	.4byte	s32LRDiff
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x3
	.4byte	s32LRDiff
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL68
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL3
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL42
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL61
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL84
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL85
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL86
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1d
	.byte	0x7b
	.sleb128 0
	.byte	0x72
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x72
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1b
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x1b
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL92
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x15
	.byte	0x7a
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x26
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x15
	.byte	0x76
	.sleb128 7
	.byte	0x76
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x26
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL98
	.2byte	0x45
	.byte	0x7e
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7
	.byte	0x7e
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x26
	.byte	0x76
	.sleb128 7
	.byte	0x76
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x26
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL105
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF63:
	.string	"s32Blk"
.LASF82:
	.string	"bd_addr_null"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF60:
	.string	"s32MaxValue"
.LASF56:
	.string	"s32Ch"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF65:
	.string	"s32MaxValue2"
.LASF35:
	.string	"s16BitPool"
.LASF51:
	.string	"tSBC_FR_CB"
.LASF19:
	.string	"UINT32"
.LASF7:
	.string	"__uint32_t"
.LASF17:
	.string	"UINT8"
.LASF70:
	.string	"p_cur"
.LASF6:
	.string	"__uint16_t"
.LASF91:
	.string	"sbc_enc_bit_alloc_mono"
.LASF40:
	.string	"as16ScaleFactor"
.LASF92:
	.string	"EncPacking"
.LASF53:
	.string	"index"
.LASF47:
	.string	"pu8NextPacket"
.LASF16:
	.string	"uint32_t"
.LASF31:
	.string	"s16NumOfSubBands"
.LASF64:
	.string	"s32NumOfBlocks"
.LASF93:
	.string	"SbcAnalysisInit"
.LASF8:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"long int"
.LASF45:
	.string	"as16Bits"
.LASF73:
	.string	"s32NumOfSubBands"
.LASF5:
	.string	"__uint8_t"
.LASF46:
	.string	"pu8Packet"
.LASF79:
	.string	"s16FrameLen"
.LASF33:
	.string	"s16NumOfBlocks"
.LASF84:
	.string	"EncMaxShiftCounter"
.LASF69:
	.string	"pDiff"
.LASF97:
	.string	"SBC_ENC_PARAMS_TAG"
.LASF80:
	.string	"HeaderParams"
.LASF89:
	.string	"SbcAnalysisFilter8"
.LASF41:
	.string	"ps16NextPcmBuffer"
.LASF30:
	.string	"s16ChannelMode"
.LASF43:
	.string	"s16ScartchMemForBitAlloc"
.LASF29:
	.string	"s16SamplingFreq"
.LASF3:
	.string	"unsigned char"
.LASF96:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF87:
	.string	"s32LRSum"
.LASF67:
	.string	"u32CountDiff"
.LASF2:
	.string	"signed char"
.LASF59:
	.string	"maxBit"
.LASF95:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/srce/sbc_encoder.c"
.LASF0:
	.string	"unsigned int"
.LASF42:
	.string	"as16PcmBuffer"
.LASF12:
	.string	"long unsigned int"
.LASF39:
	.string	"s16MaxBitNeed"
.LASF88:
	.string	"SbcAnalysisFilter4"
.LASF18:
	.string	"UINT16"
.LASF13:
	.string	"char"
.LASF44:
	.string	"s32SbBuffer"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF49:
	.string	"u16PacketLength"
.LASF28:
	.string	"SINT32"
.LASF68:
	.string	"pSum"
.LASF1:
	.string	"short unsigned int"
.LASF83:
	.string	"appl_trace_level"
.LASF20:
	.string	"_Bool"
.LASF50:
	.string	"SBC_ENC_PARAMS"
.LASF77:
	.string	"s16Bitpool"
.LASF74:
	.string	"SBC_Encoder"
.LASF36:
	.string	"u16BitRate"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF32:
	.string	"s16NumOfChannels"
.LASF72:
	.string	"tmp2"
.LASF15:
	.string	"uint16_t"
.LASF55:
	.string	"tSBC_PRTC_CB"
.LASF86:
	.string	"s32LRDiff"
.LASF61:
	.string	"ps16ScfL"
.LASF85:
	.string	"sbc_prtc_cb"
.LASF58:
	.string	"u32Count"
.LASF66:
	.string	"u32CountSum"
.LASF71:
	.string	"p_last"
.LASF38:
	.string	"as16Join"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF48:
	.string	"FrameHeader"
.LASF90:
	.string	"sbc_enc_bit_alloc_ste"
.LASF37:
	.string	"u8NumPacketToEncode"
.LASF14:
	.string	"uint8_t"
.LASF57:
	.string	"s32Sb"
.LASF76:
	.string	"pstrEncParams"
.LASF75:
	.string	"SBC_Encoder_Init"
.LASF81:
	.string	"bd_addr_any"
.LASF34:
	.string	"s16AllocationMethod"
.LASF78:
	.string	"s16BitRate"
.LASF54:
	.string	"base"
.LASF94:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF27:
	.string	"SINT16"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF62:
	.string	"SbBuffer"
.LASF52:
	.string	"init"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
