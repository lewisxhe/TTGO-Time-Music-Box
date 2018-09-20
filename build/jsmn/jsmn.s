	.file	"jsmn.c"
	.text
.Ltext0:
	.section	.text.jsmn_alloc_token,"ax",@progbits
	.align	4
	.type	jsmn_alloc_token, @function
jsmn_alloc_token:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/jsmn/src/jsmn.c"
	.loc 1 37 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 39 0
	l32i.n	a8, a2, 4
	bgeu	a8, a4, .L3
	.loc 1 42 0
	addi.n	a9, a8, 1
	s32i.n	a9, a2, 4
	slli	a8, a8, 4
	add.n	a2, a3, a8
.LVL1:
	.loc 1 43 0
	movi.n	a8, -1
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 4
	.loc 1 44 0
	movi.n	a3, 0
.LVL2:
	s32i.n	a3, a2, 12
	.loc 1 48 0
	retw.n
.LVL3:
.L3:
	.loc 1 40 0
	movi.n	a2, 0
.LVL4:
	.loc 1 49 0
	retw.n
.LFE0:
	.size	jsmn_alloc_token, .-jsmn_alloc_token
	.section	.text.jsmn_fill_token,"ax",@progbits
	.align	4
	.type	jsmn_fill_token, @function
jsmn_fill_token:
.LFB1:
	.loc 1 55 0
.LVL5:
	entry	sp, 32
.LCFI1:
	.loc 1 56 0
	s32i.n	a3, a2, 0
	.loc 1 57 0
	s32i.n	a4, a2, 4
	.loc 1 58 0
	s32i.n	a5, a2, 8
	.loc 1 59 0
	movi.n	a8, 0
	s32i.n	a8, a2, 12
	retw.n
.LFE1:
	.size	jsmn_fill_token, .-jsmn_fill_token
	.section	.text.jsmn_parse_primitive,"ax",@progbits
	.align	4
	.type	jsmn_parse_primitive, @function
jsmn_parse_primitive:
.LFB2:
	.loc 1 66 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 70 0
	l32i.n	a7, a2, 0
.LVL7:
	.loc 1 72 0
	j	.L6
.L13:
	.loc 1 73 0
	beqi	a8, 32, .L8
	movi.n	a10, 0x20
	bltu	a10, a8, .L9
	movi.n	a10, 9
	bltu	a8, a10, .L7
	movi.n	a10, 0xa
	bgeu	a10, a8, .L8
	movi.n	a10, 0xd
	bne	a8, a10, .L7
	j	.L8
.L9:
	movi.n	a10, 0x3a
	beq	a8, a10, .L8
	bltu	a10, a8, .L10
	movi.n	a10, 0x2c
	bne	a8, a10, .L7
	j	.L8
.L10:
	movi.n	a10, 0x5d
	beq	a8, a10, .L8
	movi	a10, 0x7d
	beq	a8, a10, .L8
.L7:
	.loc 1 82 0
	addi	a8, a8, -32
	extui	a8, a8, 0, 8
	movi.n	a10, 0x5e
	bgeu	a10, a8, .L11
	.loc 1 83 0
	s32i.n	a7, a2, 0
	.loc 1 84 0
	movi.n	a2, -2
.LVL8:
	retw.n
.LVL9:
.L11:
	.loc 1 72 0
	addi.n	a8, a9, 1
	s32i.n	a8, a2, 0
.L6:
	.loc 1 72 0 is_stmt 0 discriminator 1
	l32i.n	a9, a2, 0
	bgeu	a9, a4, .L8
	.loc 1 72 0 discriminator 2
	add.n	a8, a3, a9
	l8ui	a8, a8, 0
	bnez.n	a8, .L13
.L8:
	.loc 1 94 0 is_stmt 1
	bnez.n	a5, .L14
	.loc 1 95 0
	addi.n	a8, a9, -1
	s32i.n	a8, a2, 0
	.loc 1 96 0
	movi.n	a2, 0
.LVL10:
	retw.n
.LVL11:
.L14:
	.loc 1 98 0
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a2
	call8	jsmn_alloc_token
.LVL12:
	.loc 1 99 0
	bnez.n	a10, .L15
	.loc 1 100 0
	s32i.n	a7, a2, 0
	.loc 1 101 0
	movi.n	a2, -1
.LVL13:
	retw.n
.LVL14:
.L15:
	.loc 1 103 0
	l32i.n	a13, a2, 0
	mov.n	a12, a7
	movi.n	a11, 4
	call8	jsmn_fill_token
.LVL15:
	.loc 1 107 0
	l32i.n	a3, a2, 0
.LVL16:
	addi.n	a3, a3, -1
	s32i.n	a3, a2, 0
	.loc 1 108 0
	movi.n	a2, 0
.LVL17:
	.loc 1 109 0
	retw.n
.LFE2:
	.size	jsmn_parse_primitive, .-jsmn_parse_primitive
	.section	.text.jsmn_parse_string,"ax",@progbits
	.literal_position
	.literal .LC0, .L23
	.align	4
	.type	jsmn_parse_string, @function
jsmn_parse_string:
.LFB3:
	.loc 1 115 0
.LVL18:
	entry	sp, 32
.LCFI3:
	.loc 1 118 0
	l32i.n	a7, a2, 0
.LVL19:
	.loc 1 120 0
	addi.n	a8, a7, 1
	s32i.n	a8, a2, 0
	.loc 1 123 0
	j	.L17
.L32:
.LVL20:
.LBB2:
	.loc 1 127 0
	movi.n	a10, 0x22
	bne	a9, a10, .L18
	.loc 1 128 0
	beqz.n	a5, .L33
	.loc 1 131 0
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a2
	call8	jsmn_alloc_token
.LVL21:
	.loc 1 132 0
	bnez.n	a10, .L20
	.loc 1 133 0
	s32i.n	a7, a2, 0
	.loc 1 134 0
	movi.n	a2, -1
.LVL22:
	retw.n
.LVL23:
.L20:
	.loc 1 136 0
	l32i.n	a13, a2, 0
	addi.n	a12, a7, 1
	movi.n	a11, 3
	call8	jsmn_fill_token
.LVL24:
	.loc 1 140 0
	movi.n	a2, 0
.LVL25:
	retw.n
.LVL26:
.L18:
	.loc 1 144 0
	movi.n	a10, 0x5c
	bne	a9, a10, .L21
	.loc 1 144 0 is_stmt 0 discriminator 1
	addi.n	a8, a8, 1
	bgeu	a8, a4, .L21
.LBB3:
	.loc 1 146 0 is_stmt 1
	s32i.n	a8, a2, 0
	.loc 1 147 0
	add.n	a9, a3, a8
.LVL27:
	l8ui	a9, a9, 0
	addi	a9, a9, -34
	extui	a10, a9, 0, 8
	movi.n	a11, 0x53
	bltu	a11, a10, .L22
	mov.n	a9, a10
	l32r	a10, .LC0
	addx4	a9, a9, a10
	l32i.n	a9, a9, 0
	jx	a9
	.section	.rodata.jsmn_parse_string,"a",@progbits
	.align	4
	.align	4
.L23:
	.word	.L21
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L21
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L21
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L21
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L21
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L21
	.word	.L22
	.word	.L22
	.word	.L22
	.word	.L21
	.word	.L22
	.word	.L21
	.word	.L24
	.section	.text.jsmn_parse_string
.L24:
	.loc 1 154 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
.LVL28:
	.loc 1 155 0
	movi.n	a12, 0
	j	.L25
.LVL29:
.L30:
	.loc 1 157 0
	addi	a9, a8, -48
	movi.n	a13, 1
	extui	a9, a9, 0, 8
	movi.n	a11, 9
	bltu	a11, a9, .L26
	movi.n	a13, 0
.L26:
	addi	a11, a8, -65
	movi.n	a9, 1
	extui	a11, a11, 0, 8
	bgeui	a11, 6, .L27
	movi.n	a9, 0
.L27:
	and	a9, a13, a9
	extui	a9, a9, 0, 8
	beqz.n	a9, .L28
	.loc 1 159 0 discriminator 1
	addi	a8, a8, -97
	extui	a8, a8, 0, 8
	.loc 1 157 0 discriminator 1
	bltui	a8, 6, .L28
	.loc 1 160 0
	s32i.n	a7, a2, 0
	.loc 1 161 0
	movi.n	a2, -2
.LVL30:
	retw.n
.LVL31:
.L28:
	.loc 1 163 0 discriminator 2
	addi.n	a10, a10, 1
	s32i.n	a10, a2, 0
	.loc 1 155 0 discriminator 2
	addi.n	a12, a12, 1
.LVL32:
.L25:
	.loc 1 155 0 is_stmt 0 discriminator 1
	bgei	a12, 4, .L29
	.loc 1 155 0 discriminator 3
	l32i.n	a10, a2, 0
	bgeu	a10, a4, .L29
	.loc 1 155 0 discriminator 4
	add.n	a8, a3, a10
	l8ui	a8, a8, 0
	bnez.n	a8, .L30
.L29:
	.loc 1 165 0 is_stmt 1
	l32i.n	a8, a2, 0
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 0
	.loc 1 166 0
	j	.L21
.LVL33:
.L22:
	.loc 1 169 0
	s32i.n	a7, a2, 0
	.loc 1 170 0
	movi.n	a2, -2
.LVL34:
	retw.n
.LVL35:
.L21:
.LBE3:
.LBE2:
	.loc 1 123 0
	l32i.n	a8, a2, 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 0
.L17:
	.loc 1 123 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	bgeu	a8, a4, .L31
	.loc 1 123 0 discriminator 2
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	bnez.n	a9, .L32
.L31:
	.loc 1 174 0 is_stmt 1
	s32i.n	a7, a2, 0
	.loc 1 175 0
	movi.n	a2, -3
.LVL36:
	retw.n
.LVL37:
.L33:
.LBB4:
	.loc 1 129 0
	movi.n	a2, 0
.LVL38:
.LBE4:
	.loc 1 176 0
	retw.n
.LFE3:
	.size	jsmn_parse_string, .-jsmn_parse_string
	.section	.text.jsmn_parse,"ax",@progbits
	.align	4
	.global	jsmn_parse
	.type	jsmn_parse, @function
jsmn_parse:
.LFB4:
	.loc 1 182 0
.LVL39:
	entry	sp, 48
.LCFI4:
	s32i.n	a6, sp, 0
	.loc 1 186 0
	l32i.n	a7, a2, 4
.LVL40:
	.loc 1 188 0
	j	.L35
.LVL41:
.L61:
.LBB5:
	.loc 1 193 0
	movi.n	a8, 0x2c
	beq	a6, a8, .L37
	bltu	a8, a6, .L38
	movi.n	a8, 0xd
	beq	a6, a8, .L39
	bltu	a8, a6, .L40
	addi	a6, a6, -9
.LVL42:
	movi.n	a8, 1
	bgeu	a8, a6, .L39
	j	.L36
.LVL43:
.L40:
	beqi	a6, 32, .L39
	movi.n	a8, 0x22
	beq	a6, a8, .L41
	j	.L36
.L38:
	movi.n	a8, 0x5d
	beq	a6, a8, .L42
	bltu	a8, a6, .L43
	movi.n	a8, 0x3a
	beq	a6, a8, .L44
	movi.n	a8, 0x5b
	beq	a6, a8, .L45
	j	.L36
.L43:
	movi	a8, 0x7b
	beq	a6, a8, .L45
	movi	a8, 0x7d
	beq	a6, a8, .L42
	j	.L36
.L45:
	.loc 1 195 0
	addi.n	a7, a7, 1
.LVL44:
	.loc 1 196 0
	beqz.n	a5, .L39
	.loc 1 199 0
	l32i.n	a12, sp, 0
	mov.n	a11, a5
	mov.n	a10, a2
	call8	jsmn_alloc_token
.LVL45:
	.loc 1 200 0
	beqz.n	a10, .L65
	.loc 1 202 0
	l32i.n	a8, a2, 8
	beqi	a8, -1, .L47
	.loc 1 203 0
	slli	a8, a8, 4
	add.n	a8, a5, a8
	l32i.n	a9, a8, 12
	addi.n	a9, a9, 1
	s32i.n	a9, a8, 12
.L47:
	.loc 1 208 0
	movi	a8, 0x7b
	bne	a6, a8, .L66
	movi.n	a6, 1
.LVL46:
	j	.L48
.LVL47:
.L66:
	movi.n	a6, 2
.LVL48:
.L48:
	.loc 1 208 0 is_stmt 0 discriminator 4
	s32i.n	a6, a10, 0
	.loc 1 209 0 is_stmt 1 discriminator 4
	l32i.n	a6, a2, 0
	s32i.n	a6, a10, 4
	.loc 1 210 0 discriminator 4
	l32i.n	a6, a2, 4
	addi.n	a6, a6, -1
	s32i.n	a6, a2, 8
	.loc 1 211 0 discriminator 4
	j	.L39
.LVL49:
.L42:
	.loc 1 213 0
	beqz.n	a5, .L39
	.loc 1 215 0
	movi	a8, 0x7d
	bne	a6, a8, .L67
	movi.n	a11, 1
	j	.L49
.L67:
	movi.n	a11, 2
.L49:
.LVL50:
	.loc 1 236 0 discriminator 4
	l32i.n	a6, a2, 4
.LVL51:
	addi.n	a6, a6, -1
.LVL52:
	j	.L50
.L53:
	.loc 1 237 0
	slli	a8, a6, 4
	add.n	a8, a5, a8
.LVL53:
	.loc 1 238 0
	l32i.n	a9, a8, 4
	beqi	a9, -1, .L51
	.loc 1 238 0 is_stmt 0 discriminator 1
	l32i.n	a9, a8, 8
	bnei	a9, -1, .L51
	.loc 1 239 0 is_stmt 1
	l32i.n	a9, a8, 0
	bne	a11, a9, .L68
	.loc 1 242 0
	movi.n	a9, -1
	s32i.n	a9, a2, 8
.LVL54:
	.loc 1 243 0
	addi.n	a10, a10, 1
	s32i.n	a10, a8, 8
	.loc 1 244 0
	j	.L52
.LVL55:
.L51:
	.loc 1 236 0 discriminator 2
	addi.n	a6, a6, -1
.LVL56:
.L50:
	.loc 1 236 0 is_stmt 0 discriminator 1
	bgez	a6, .L53
.LVL57:
.L52:
	.loc 1 248 0 is_stmt 1
	bnei	a6, -1, .L54
	j	.L69
.L56:
	.loc 1 250 0
	slli	a8, a6, 4
	add.n	a8, a5, a8
.LVL58:
	.loc 1 251 0
	l32i.n	a9, a8, 4
	beqi	a9, -1, .L55
	.loc 1 251 0 is_stmt 0 discriminator 1
	l32i.n	a8, a8, 8
.LVL59:
	bnei	a8, -1, .L55
	.loc 1 252 0 is_stmt 1
	s32i.n	a6, a2, 8
	.loc 1 253 0
	j	.L39
.L55:
	.loc 1 249 0
	addi.n	a6, a6, -1
.LVL60:
.L54:
	.loc 1 249 0 is_stmt 0 discriminator 1
	bgez	a6, .L56
	j	.L39
.LVL61:
.L41:
	.loc 1 259 0 is_stmt 1
	l32i.n	a14, sp, 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	jsmn_parse_string
.LVL62:
	.loc 1 260 0
	bltz	a10, .L70
	.loc 1 261 0
	addi.n	a7, a7, 1
.LVL63:
	.loc 1 262 0
	l32i.n	a6, a2, 8
.LVL64:
	beqi	a6, -1, .L39
	.loc 1 262 0 is_stmt 0 discriminator 1
	beqz.n	a5, .L39
	.loc 1 263 0 is_stmt 1
	slli	a6, a6, 4
	add.n	a6, a5, a6
	l32i.n	a8, a6, 12
	addi.n	a8, a8, 1
	s32i.n	a8, a6, 12
	j	.L39
.LVL65:
.L44:
	.loc 1 268 0
	l32i.n	a6, a2, 4
.LVL66:
	addi.n	a6, a6, -1
	s32i.n	a6, a2, 8
.LVL67:
	.loc 1 269 0
	j	.L39
.LVL68:
.L37:
	.loc 1 271 0
	beqz.n	a5, .L39
	.loc 1 271 0 discriminator 1
	l32i.n	a6, a2, 8
.LVL69:
	beqi	a6, -1, .L39
	.loc 1 272 0 discriminator 2
	slli	a6, a6, 4
	add.n	a6, a5, a6
	l32i.n	a6, a6, 0
	.loc 1 271 0 discriminator 2
	beqi	a6, 2, .L39
	.loc 1 272 0
	beqi	a6, 1, .L39
	.loc 1 277 0
	l32i.n	a8, a2, 4
	addi.n	a8, a8, -1
.LVL70:
	j	.L57
.L59:
	.loc 1 278 0
	slli	a6, a8, 4
	add.n	a6, a5, a6
	l32i.n	a9, a6, 0
	addi.n	a9, a9, -1
	bgeui	a9, 2, .L58
	.loc 1 279 0
	l32i.n	a9, a6, 4
	beqi	a9, -1, .L58
	.loc 1 279 0 is_stmt 0 discriminator 1
	l32i.n	a6, a6, 8
	bnei	a6, -1, .L58
	.loc 1 280 0 is_stmt 1
	s32i.n	a8, a2, 8
.LVL71:
	.loc 1 281 0
	j	.L39
.LVL72:
.L58:
	.loc 1 277 0 discriminator 2
	addi.n	a8, a8, -1
.LVL73:
.L57:
	.loc 1 277 0 is_stmt 0 discriminator 1
	bgez	a8, .L59
	j	.L39
.LVL74:
.L36:
	.loc 1 305 0 is_stmt 1
	l32i.n	a14, sp, 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL75:
	call8	jsmn_parse_primitive
.LVL76:
	.loc 1 306 0
	bltz	a10, .L71
	.loc 1 307 0
	addi.n	a7, a7, 1
.LVL77:
	.loc 1 308 0
	l32i.n	a6, a2, 8
	beqi	a6, -1, .L39
	.loc 1 308 0 is_stmt 0 discriminator 1
	beqz.n	a5, .L39
	.loc 1 309 0 is_stmt 1
	slli	a6, a6, 4
	add.n	a6, a5, a6
	l32i.n	a8, a6, 12
	addi.n	a8, a8, 1
	s32i.n	a8, a6, 12
.LVL78:
.L39:
.LBE5:
	.loc 1 188 0
	l32i.n	a6, a2, 0
	addi.n	a6, a6, 1
	s32i.n	a6, a2, 0
.L35:
	.loc 1 188 0 is_stmt 0 discriminator 1
	l32i.n	a10, a2, 0
	bgeu	a10, a4, .L60
	.loc 1 188 0 discriminator 2
	add.n	a6, a3, a10
	l8ui	a6, a6, 0
	bnez.n	a6, .L61
.L60:
	.loc 1 320 0 is_stmt 1
	beqz.n	a5, .L72
	.loc 1 321 0
	l32i.n	a3, a2, 4
.LVL79:
	addi.n	a3, a3, -1
.LVL80:
	j	.L62
.LVL81:
.L64:
	.loc 1 323 0
	slli	a2, a3, 4
	add.n	a2, a5, a2
	l32i.n	a4, a2, 4
	beqi	a4, -1, .L63
	.loc 1 323 0 is_stmt 0 discriminator 1
	l32i.n	a2, a2, 8
	beqi	a2, -1, .L73
.L63:
	.loc 1 321 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, -1
.LVL82:
.L62:
	.loc 1 321 0 is_stmt 0 discriminator 1
	bgez	a3, .L64
	.loc 1 329 0 is_stmt 1
	mov.n	a2, a7
	retw.n
.LVL83:
.L65:
.LBB6:
	.loc 1 201 0
	movi.n	a2, -1
.LVL84:
	retw.n
.LVL85:
.L68:
	.loc 1 240 0
	movi.n	a2, -2
.LVL86:
	retw.n
.LVL87:
.L69:
	.loc 1 248 0
	movi.n	a2, -2
.LVL88:
	retw.n
.LVL89:
.L70:
	.loc 1 260 0
	mov.n	a2, a10
.LVL90:
	retw.n
.LVL91:
.L71:
	.loc 1 306 0
	mov.n	a2, a10
.LVL92:
	retw.n
.LVL93:
.L72:
.LBE6:
	.loc 1 329 0
	mov.n	a2, a7
.LVL94:
	retw.n
.LVL95:
.L73:
	.loc 1 324 0
	movi.n	a2, -3
	.loc 1 330 0
	retw.n
.LFE4:
	.size	jsmn_parse, .-jsmn_parse
	.section	.text.jsmn_init,"ax",@progbits
	.align	4
	.global	jsmn_init
	.type	jsmn_init, @function
jsmn_init:
.LFB5:
	.loc 1 336 0
.LVL96:
	entry	sp, 32
.LCFI5:
	.loc 1 337 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 338 0
	s32i.n	a8, a2, 4
	.loc 1 339 0
	movi.n	a8, -1
	s32i.n	a8, a2, 8
	retw.n
.LFE5:
	.size	jsmn_init, .-jsmn_init
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
	.uleb128 0x30
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
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/jsmn/include/jsmn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4b6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x33
	.byte	0x3
	.byte	0x2f
	.4byte	0x6c
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x35
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.4byte	0x21
	.byte	0x3
	.byte	0x37
	.4byte	0x9a
	.uleb128 0x8
	.4byte	.LASF9
	.sleb128 -1
	.uleb128 0x8
	.4byte	.LASF10
	.sleb128 -2
	.uleb128 0x8
	.4byte	.LASF11
	.sleb128 -3
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x3
	.byte	0x46
	.4byte	0xd3
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x3
	.byte	0x47
	.4byte	0x6c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0x48
	.4byte	0x21
	.byte	0x4
	.uleb128 0xb
	.string	"end"
	.byte	0x3
	.byte	0x49
	.4byte	0x21
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x3
	.byte	0x4a
	.4byte	0x21
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x4e
	.4byte	0x9a
	.uleb128 0x9
	.byte	0xc
	.byte	0x3
	.byte	0x54
	.4byte	0x10b
	.uleb128 0xb
	.string	"pos"
	.byte	0x3
	.byte	0x55
	.4byte	0x33
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0x56
	.4byte	0x33
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x3
	.byte	0x57
	.4byte	0x21
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x58
	.4byte	0xde
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x24
	.4byte	0x16a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x24
	.4byte	0x170
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0x25
	.4byte	0x16a
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.4byte	0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"tok"
	.byte	0x1
	.byte	0x26
	.4byte	0x16a
	.4byte	.LLST2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x10
	.byte	0x4
	.4byte	0x10b
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x36
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x36
	.4byte	0x16a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xe
	.4byte	.LASF12
	.byte	0x1
	.byte	0x36
	.4byte	0x6c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF13
	.byte	0x1
	.byte	0x37
	.4byte	0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0x37
	.4byte	0x21
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x41
	.4byte	0x21
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27a
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x41
	.4byte	0x170
	.4byte	.LLST3
	.uleb128 0x13
	.string	"js"
	.byte	0x1
	.byte	0x41
	.4byte	0x27a
	.4byte	.LLST4
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x42
	.4byte	0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x42
	.4byte	0x16a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x42
	.4byte	0x28
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0x43
	.4byte	0x16a
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LASF13
	.byte	0x1
	.byte	0x44
	.4byte	0x21
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5d
	.4byte	.L8
	.uleb128 0x17
	.4byte	.LVL12
	.4byte	0x116
	.4byte	0x264
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0x176
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x287
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.uleb128 0x1a
	.4byte	0x280
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x72
	.4byte	0x21
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x367
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x72
	.4byte	0x170
	.4byte	.LLST6
	.uleb128 0x12
	.string	"js"
	.byte	0x1
	.byte	0x72
	.4byte	0x27a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x73
	.4byte	0x28
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x73
	.4byte	0x16a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x73
	.4byte	0x28
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0x74
	.4byte	0x16a
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LASF13
	.byte	0x1
	.byte	0x76
	.4byte	0x21
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0x7c
	.4byte	0x280
	.4byte	.LLST8
	.uleb128 0x1c
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x330
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x91
	.4byte	0x21
	.4byte	.LLST9
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0x116
	.4byte	0x350
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0x176
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb5
	.4byte	0x21
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x498
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb5
	.4byte	0x170
	.4byte	.LLST10
	.uleb128 0x13
	.string	"js"
	.byte	0x1
	.byte	0xb5
	.4byte	0x27a
	.4byte	.LLST11
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0xb5
	.4byte	0x28
	.4byte	.LLST12
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb6
	.4byte	0x16a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb6
	.4byte	0x33
	.4byte	.LLST13
	.uleb128 0xf
	.string	"r"
	.byte	0x1
	.byte	0xb7
	.4byte	0x21
	.4byte	.LLST14
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xb8
	.4byte	0x21
	.4byte	.LLST15
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb9
	.4byte	0x16a
	.4byte	.LLST16
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0xba
	.4byte	0x21
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.byte	0xbd
	.4byte	0x280
	.4byte	.LLST17
	.uleb128 0x14
	.4byte	.LASF12
	.byte	0x1
	.byte	0xbe
	.4byte	0x6c
	.4byte	.LLST18
	.uleb128 0x17
	.4byte	.LVL45
	.4byte	0x116
	.4byte	0x440
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL62
	.4byte	0x28c
	.4byte	0x46d
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
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL76
	.4byte	0x1c0
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
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x150
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x150
	.4byte	0x170
	.uleb128 0x1
	.byte	0x52
	.byte	0
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
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
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL39
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL39
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL41
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL95
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL50
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
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
.LASF7:
	.string	"size_t"
.LASF23:
	.string	"jsmn_alloc_token"
.LASF17:
	.string	"toksuper"
.LASF27:
	.string	"count"
.LASF3:
	.string	"JSMN_OBJECT"
.LASF13:
	.string	"start"
.LASF16:
	.string	"toknext"
.LASF29:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/jsmn/src/jsmn.c"
.LASF33:
	.string	"jsmn_parse"
.LASF14:
	.string	"size"
.LASF2:
	.string	"JSMN_UNDEFINED"
.LASF24:
	.string	"jsmn_parse_primitive"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"JSMN_ARRAY"
.LASF15:
	.string	"jsmntok_t"
.LASF8:
	.string	"jsmntype_t"
.LASF34:
	.string	"jsmn_init"
.LASF19:
	.string	"parser"
.LASF10:
	.string	"JSMN_ERROR_INVAL"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"tokens"
.LASF5:
	.string	"JSMN_STRING"
.LASF21:
	.string	"num_tokens"
.LASF28:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"found"
.LASF31:
	.string	"jsmn_fill_token"
.LASF12:
	.string	"type"
.LASF18:
	.string	"jsmn_parser"
.LASF30:
	.string	"jsmnerr"
.LASF22:
	.string	"token"
.LASF25:
	.string	"char"
.LASF26:
	.string	"jsmn_parse_string"
.LASF9:
	.string	"JSMN_ERROR_NOMEM"
.LASF11:
	.string	"JSMN_ERROR_PART"
.LASF6:
	.string	"JSMN_PRIMITIVE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
