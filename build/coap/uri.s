	.file	"uri.c"
	.text
.Ltext0:
	.section	.text.decode_segment,"ax",@progbits
	.align	4
	.type	decode_segment, @function
decode_segment:
.LFB43:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/uri.c"
	.loc 1 205 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 207 0
	j	.L2
.LVL1:
.L9:
	.loc 1 209 0
	l8ui	a8, a2, 0
	movi.n	a9, 0x25
	bne	a8, a9, .L3
	.loc 1 210 0
	l8ui	a8, a2, 1
	bbci	a8, 6, .L4
	.loc 1 210 0 is_stmt 0 discriminator 1
	extui	a8, a8, 0, 4
	addi.n	a8, a8, 9
	slli	a8, a8, 4
	extui	a8, a8, 0, 8
	j	.L5
.L4:
	.loc 1 210 0 discriminator 2
	slli	a8, a8, 4
	extui	a8, a8, 0, 8
.L5:
	.loc 1 210 0 discriminator 4
	l8ui	a9, a2, 2
	bbci	a9, 6, .L6
	.loc 1 210 0 discriminator 5
	extui	a9, a9, 0, 4
	addi.n	a9, a9, 9
	j	.L7
.L6:
	.loc 1 210 0 discriminator 6
	extui	a9, a9, 0, 4
.L7:
	.loc 1 210 0 discriminator 8
	add.n	a8, a8, a9
	s8i	a8, a4, 0
	.loc 1 212 0 is_stmt 1 discriminator 8
	addi.n	a2, a2, 2
.LVL2:
	addi	a3, a3, -3
.LVL3:
	j	.L8
.LVL4:
.L3:
	.loc 1 214 0
	s8i	a8, a4, 0
	.loc 1 207 0
	mov.n	a3, a10
.LVL5:
.L8:
	.loc 1 217 0
	addi.n	a4, a4, 1
.LVL6:
	addi.n	a2, a2, 1
.LVL7:
.L2:
	.loc 1 207 0
	addi.n	a10, a3, -1
.LVL8:
	bnez.n	a3, .L9
	.loc 1 219 0
	retw.n
.LFE43:
	.size	decode_segment, .-decode_segment
	.section	.text.check_segment,"ax",@progbits
	.literal_position
	.literal .LC0, __ctype_ptr__
	.align	4
	.type	check_segment, @function
check_segment:
.LFB44:
	.loc 1 227 0
.LVL9:
	entry	sp, 32
.LCFI1:
.LVL10:
	.loc 1 229 0
	movi.n	a8, 0
	.loc 1 231 0
	j	.L11
.LVL11:
.L14:
	.loc 1 232 0
	l8ui	a10, a2, 0
	movi.n	a9, 0x25
	bne	a10, a9, .L12
	.loc 1 233 0
	bltui	a3, 2, .L15
	.loc 1 233 0 is_stmt 0 discriminator 1
	l32r	a9, .LC0
	l32i.n	a10, a9, 0
	l8ui	a9, a2, 1
	add.n	a9, a10, a9
	l8ui	a11, a9, 1
	movi.n	a9, 0x44
	bnone	a11, a9, .L16
	.loc 1 233 0 discriminator 2
	l8ui	a9, a2, 2
	add.n	a9, a10, a9
	l8ui	a10, a9, 1
	movi.n	a9, 0x44
	bnone	a10, a9, .L17
	.loc 1 236 0 is_stmt 1
	addi.n	a2, a2, 2
.LVL12:
	.loc 1 237 0
	addi	a3, a3, -2
.LVL13:
.L12:
	.loc 1 240 0
	addi.n	a2, a2, 1
.LVL14:
	addi.n	a8, a8, 1
.LVL15:
	addi.n	a3, a3, -1
.LVL16:
.L11:
	.loc 1 231 0
	bnez.n	a3, .L14
	.loc 1 243 0
	mov.n	a2, a8
.LVL17:
	retw.n
.LVL18:
.L15:
	.loc 1 234 0
	movi.n	a2, -1
.LVL19:
	retw.n
.LVL20:
.L16:
	movi.n	a2, -1
.LVL21:
	retw.n
.LVL22:
.L17:
	movi.n	a2, -1
.LVL23:
	.loc 1 244 0
	retw.n
.LFE44:
	.size	check_segment, .-check_segment
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"?#"
	.section	.text.coap_split_path_impl,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.align	4
	.type	coap_split_path_impl, @function
coap_split_path_impl:
.LFB47:
	.loc 1 329 0
.LVL24:
	entry	sp, 32
.LCFI2:
.LVL25:
	.loc 1 333 0
	mov.n	a6, a2
	mov.n	a10, a2
	.loc 1 334 0
	j	.L19
.LVL26:
.L28:
	.loc 1 335 0
	movi.n	a8, 0x2f
	bne	a11, a8, .L20
	.loc 1 337 0
	sub	a11, a6, a10
.LVL27:
.LBB14:
.LBB15:
	.loc 1 313 0
	l8ui	a9, a10, 0
.LVL28:
	movi.n	a8, 0x2e
	bne	a9, a8, .L31
	beqi	a11, 1, .L32
	l8ui	a9, a10, 1
	bne	a9, a8, .L33
	beqi	a11, 2, .L34
	movi.n	a8, 0
	j	.L21
.L31:
	movi.n	a8, 0
	j	.L21
.L32:
	movi.n	a8, 1
	j	.L21
.L33:
	movi.n	a8, 0
	j	.L21
.L34:
	movi.n	a8, 1
.L21:
.LBE15:
.LBE14:
	.loc 1 337 0
	bnez.n	a8, .L22
	.loc 1 338 0
	mov.n	a12, a5
	callx8	a4
.LVL29:
.L22:
	.loc 1 341 0
	addi.n	a10, a6, 1
.LVL30:
.L20:
	.loc 1 344 0
	addi.n	a6, a6, 1
.LVL31:
	.loc 1 345 0
	addi.n	a3, a3, -1
.LVL32:
.L19:
	.loc 1 334 0
	beqz.n	a3, .L23
	.loc 1 334 0 is_stmt 0 discriminator 1
	l8ui	a11, a6, 0
.LVL33:
	movi.n	a9, 2
	l32r	a8, .LC2
	j	.L24
.LVL34:
.L26:
.LBB16:
.LBB17:
	.loc 1 39 0 is_stmt 1
	addi.n	a9, a9, -1
.LVL35:
	.loc 1 38 0
	mov.n	a8, a12
.LVL36:
.L24:
	beqz.n	a9, .L25
	addi.n	a12, a8, 1
.LVL37:
	l8ui	a8, a8, 0
	bne	a11, a8, .L26
	mov.n	a8, a12
.LVL38:
.L25:
	.loc 1 41 0
	bnez.n	a9, .L27
	movi.n	a8, 0
.LVL39:
.L27:
.LBE17:
.LBE16:
	.loc 1 334 0
	beqz.n	a8, .L28
.LVL40:
.L23:
	.loc 1 349 0
	mov.n	a3, a6
.LVL41:
	sub	a11, a6, a10
.LVL42:
.LBB18:
.LBB19:
	.loc 1 313 0
	l8ui	a8, a10, 0
	movi.n	a6, 0x2e
.LVL43:
	bne	a8, a6, .L36
	beqi	a11, 1, .L37
	l8ui	a8, a10, 1
	bne	a8, a6, .L38
	beqi	a11, 2, .L39
	movi.n	a6, 0
	j	.L29
.L36:
	movi.n	a6, 0
	j	.L29
.L37:
	movi.n	a6, 1
	j	.L29
.L38:
	movi.n	a6, 0
	j	.L29
.L39:
	movi.n	a6, 1
.L29:
.LBE19:
.LBE18:
	.loc 1 349 0
	bnez.n	a6, .L30
	.loc 1 350 0
	mov.n	a12, a5
	callx8	a4
.LVL44:
.L30:
	.loc 1 354 0
	sub	a2, a3, a2
.LVL45:
	retw.n
.LFE47:
	.size	coap_split_path_impl, .-coap_split_path_impl
	.section	.rodata.str1.4
	.align	4
.LC3:
	.string	"make_decoded_option(): buflen is 0!\n"
	.align	4
.LC5:
	.string	"written <= buflen"
	.align	4
.LC8:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/uri.c"
	.align	4
.LC10:
	.string	"buffer too small for option\n"
	.section	.text.make_decoded_option,"ax",@progbits
	.literal_position
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.literal .LC7, __func__$6521
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.align	4
	.type	make_decoded_option, @function
make_decoded_option:
.LFB45:
	.loc 1 267 0
.LVL46:
	entry	sp, 48
.LCFI3:
	.loc 1 271 0
	bnez.n	a5, .L41
	.loc 1 272 0
	l32r	a11, .LC4
	movi.n	a10, 7
	call8	coap_log_impl
.LVL47:
	.loc 1 273 0
	movi.n	a2, -1
.LVL48:
	retw.n
.LVL49:
.L41:
	.loc 1 276 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	check_segment
.LVL50:
	mov.n	a7, a10
.LVL51:
	.loc 1 277 0
	bltz	a10, .L45
	.loc 1 281 0
	s32i.n	a10, sp, 0
	mov.n	a13, a10
	movi.n	a12, 0
	mov.n	a11, a5
	mov.n	a10, a4
	call8	coap_opt_setheader
.LVL52:
	mov.n	a6, a10
.LVL53:
	.loc 1 283 0
	bgeu	a5, a10, .L43
	.loc 1 283 0 is_stmt 0 discriminator 1
	l32r	a13, .LC6
	l32r	a12, .LC7
	movi	a11, 0x11b
	l32r	a10, .LC9
	call8	__assert_func
.LVL54:
.L43:
	.loc 1 285 0 is_stmt 1
	beqz.n	a10, .L46
	.loc 1 288 0
	add.n	a12, a4, a10
.LVL55:
	.loc 1 289 0
	sub	a5, a5, a10
.LVL56:
	.loc 1 291 0
	l32i.n	a4, sp, 0
	bgeu	a5, a4, .L44
	.loc 1 292 0
	l32r	a11, .LC11
	movi.n	a10, 7
	call8	coap_log_impl
.LVL57:
	.loc 1 293 0
	movi.n	a2, -1
.LVL58:
	retw.n
.LVL59:
.L44:
	.loc 1 296 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	decode_segment
.LVL60:
	.loc 1 298 0
	add.n	a2, a7, a6
.LVL61:
	retw.n
.LVL62:
.L45:
	.loc 1 278 0
	movi.n	a2, -1
.LVL63:
	retw.n
.LVL64:
.L46:
	.loc 1 286 0
	movi.n	a2, -1
.LVL65:
	.loc 1 299 0
	retw.n
.LFE45:
	.size	make_decoded_option, .-make_decoded_option
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"state"
	.section	.text.write_option,"ax",@progbits
	.literal_position
	.literal .LC13, .LC12
	.literal .LC14, __func__$6551
	.literal .LC15, .LC8
	.align	4
	.type	write_option, @function
write_option:
.LFB48:
	.loc 1 362 0
.LVL66:
	entry	sp, 32
.LCFI4:
.LVL67:
	.loc 1 365 0
	bnez.n	a4, .L48
	.loc 1 365 0 is_stmt 0 discriminator 1
	l32r	a13, .LC13
	l32r	a12, .LC14
	movi	a11, 0x16d
	l32r	a10, .LC15
	call8	__assert_func
.LVL68:
.L48:
	.loc 1 367 0 is_stmt 1
	l32i.n	a13, a4, 0
	l32i.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	make_decoded_option
.LVL69:
	.loc 1 368 0
	blti	a10, 1, .L47
	.loc 1 369 0
	l32i.n	a8, a4, 4
	add.n	a8, a8, a10
	s32i.n	a8, a4, 4
	.loc 1 370 0
	l32i.n	a8, a4, 0
	sub	a10, a8, a10
.LVL70:
	s32i.n	a10, a4, 0
	.loc 1 371 0
	l32i.n	a8, a4, 8
	addi.n	a8, a8, 1
	s32i.n	a8, a4, 8
.L47:
	retw.n
.LFE48:
	.size	write_option, .-write_option
	.section	.text.hash_segment,"ax",@progbits
	.align	4
	.type	hash_segment, @function
hash_segment:
.LFB53:
	.loc 1 478 0
.LVL71:
	entry	sp, 32
.LCFI5:
	.loc 1 479 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	coap_hash_impl
.LVL72:
	retw.n
.LFE53:
	.size	hash_segment, .-hash_segment
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"coap"
	.align	4
.LC18:
	.string	"://"
	.section	.text.coap_split_uri,"ax",@progbits
	.literal_position
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC20, 5683
	.literal .LC21, __ctype_ptr__
	.literal .LC22, 65535
	.align	4
	.global	coap_split_uri
	.type	coap_split_uri, @function
coap_split_uri:
.LFB42:
	.loc 1 48 0
.LVL73:
	entry	sp, 32
.LCFI6:
.LVL74:
	.loc 1 52 0
	movi.n	a8, 1
	movi.n	a10, 0
	mov.n	a9, a10
	moveqz	a9, a8, a2
	movnez	a8, a10, a4
	or	a8, a8, a9
	bne	a8, a10, .L78
	.loc 1 55 0
	movi.n	a12, 0x1c
	mov.n	a11, a10
	mov.n	a10, a4
	call8	memset
.LVL75:
	.loc 1 56 0
	l32r	a5, .LC20
	s16i	a5, a4, 8
.LVL76:
	.loc 1 60 0
	l8ui	a9, a2, 0
	movi.n	a8, 0x2f
	beq	a9, a8, .L79
	l32r	a9, .LC17
	j	.L54
.LVL77:
.L56:
	.loc 1 67 0
	addi.n	a2, a2, 1
.LVL78:
	addi.n	a9, a9, 1
.LVL79:
	addi.n	a3, a3, -1
.LVL80:
.L54:
	.loc 1 66 0
	beqz.n	a3, .L55
	.loc 1 66 0 is_stmt 0 discriminator 1
	l8ui	a8, a9, 0
	beqz.n	a8, .L55
	.loc 1 66 0 discriminator 2
	l8ui	a11, a2, 0
	beq	a8, a11, .L56
	.loc 1 66 0 discriminator 3
	l32r	a10, .LC21
	l32i.n	a10, a10, 0
	add.n	a10, a10, a8
	l8ui	a10, a10, 1
	extui	a10, a10, 0, 2
	bnei	a10, 2, .L55
	.loc 1 66 0 discriminator 4
	addi	a8, a8, -32
	beq	a11, a8, .L56
.L55:
	.loc 1 72 0 is_stmt 1
	l8ui	a8, a9, 0
	bnez.n	a8, .L80
	.loc 1 78 0
	beqz.n	a3, .L57
	.loc 1 78 0 is_stmt 0 discriminator 1
	l8ui	a9, a2, 0
.LVL81:
	movi	a8, 0x73
	bne	a9, a8, .L57
	.loc 1 79 0 is_stmt 1
	addi.n	a2, a2, 1
.LVL82:
	addi.n	a3, a3, -1
.LVL83:
.L57:
	l32r	a8, .LC19
	j	.L58
.LVL84:
.L60:
	.loc 1 84 0
	addi.n	a2, a2, 1
.LVL85:
	addi.n	a8, a8, 1
.LVL86:
	addi.n	a3, a3, -1
.LVL87:
.L58:
	.loc 1 83 0
	beqz.n	a3, .L59
	.loc 1 83 0 is_stmt 0 discriminator 1
	l8ui	a9, a8, 0
	beqz.n	a9, .L59
	.loc 1 83 0 discriminator 2
	l8ui	a10, a2, 0
	beq	a9, a10, .L60
.L59:
	.loc 1 87 0 is_stmt 1
	l8ui	a8, a8, 0
.LVL88:
	bnez.n	a8, .L81
.LVL89:
	.loc 1 94 0
	beqz.n	a3, .L82
	.loc 1 94 0 is_stmt 0 discriminator 1
	l8ui	a9, a2, 0
	movi.n	a8, 0x5b
	bne	a9, a8, .L83
	.loc 1 95 0 is_stmt 1
	addi.n	a10, a2, 1
.LVL90:
	.loc 1 97 0
	j	.L62
.L64:
	.loc 1 98 0
	addi.n	a2, a2, 1
.LVL91:
	addi.n	a3, a3, -1
.LVL92:
.L62:
	.loc 1 97 0
	beqz.n	a3, .L63
	.loc 1 97 0 is_stmt 0 discriminator 1
	l8ui	a9, a2, 0
	movi.n	a8, 0x5d
	bne	a9, a8, .L64
.L63:
	.loc 1 101 0 is_stmt 1
	beqz.n	a3, .L84
	.loc 1 101 0 is_stmt 0 discriminator 1
	l8ui	a9, a2, 0
	movi.n	a8, 0x5d
	bne	a9, a8, .L85
	.loc 1 101 0 discriminator 2
	beq	a2, a10, .L86
	.loc 1 106 0 is_stmt 1
	sub	a8, a2, a10
	s32i.n	a8, a4, 0
	s32i.n	a10, a4, 4
	.loc 1 107 0
	addi.n	a9, a2, 1
.LVL93:
	addi.n	a3, a3, -1
.LVL94:
	.loc 1 95 0
	mov.n	a2, a10
	.loc 1 107 0
	j	.L65
.LVL95:
.L67:
	.loc 1 110 0
	addi.n	a9, a9, 1
.LVL96:
	.loc 1 111 0
	addi.n	a3, a3, -1
.LVL97:
	j	.L61
.LVL98:
.L82:
	mov.n	a9, a2
	j	.L61
.L83:
	mov.n	a9, a2
.LVL99:
.L61:
	.loc 1 109 0
	beqz.n	a3, .L66
	.loc 1 109 0 is_stmt 0 discriminator 1
	l8ui	a8, a9, 0
	movi.n	a10, 0x3a
	beq	a8, a10, .L66
	.loc 1 109 0 discriminator 2
	movi.n	a10, 0x2f
	beq	a8, a10, .L66
	.loc 1 109 0 discriminator 3
	movi.n	a10, 0x3f
	bne	a8, a10, .L67
.L66:
	.loc 1 114 0 is_stmt 1
	beq	a2, a9, .L87
	.loc 1 119 0
	sub	a8, a9, a2
	s32i.n	a8, a4, 0
	s32i.n	a2, a4, 4
.L65:
	.loc 1 123 0
	beqz.n	a3, .L53
	.loc 1 123 0 is_stmt 0 discriminator 1
	l8ui	a10, a9, 0
	movi.n	a8, 0x3a
	bne	a10, a8, .L53
	.loc 1 124 0 is_stmt 1
	addi.n	a2, a9, 1
.LVL100:
	.loc 1 125 0
	addi.n	a3, a3, -1
.LVL101:
	.loc 1 124 0
	mov.n	a9, a2
	.loc 1 127 0
	j	.L68
.LVL102:
.L70:
	.loc 1 128 0
	addi.n	a9, a9, 1
.LVL103:
	.loc 1 129 0
	addi.n	a3, a3, -1
.LVL104:
.L68:
	.loc 1 127 0
	beqz.n	a3, .L69
	.loc 1 127 0 is_stmt 0 discriminator 1
	l8ui	a8, a9, 0
	l32r	a10, .LC21
	l32i.n	a10, a10, 0
	add.n	a8, a10, a8
	l8ui	a8, a8, 1
	bbsi	a8, 2, .L70
.L69:
	.loc 1 132 0 is_stmt 1
	bltu	a2, a9, .L88
	j	.L53
.LVL105:
.L72:
.LBB20:
	.loc 1 136 0
	addx4	a8, a8, a8
.LVL106:
	slli	a10, a8, 1
.LVL107:
	l8ui	a8, a2, 0
	addi	a8, a8, -48
	add.n	a8, a10, a8
.LVL108:
	addi.n	a2, a2, 1
.LVL109:
	j	.L71
.LVL110:
.L88:
.LBE20:
	movi.n	a8, 0
.L71:
.LVL111:
.LBB21:
	.loc 1 135 0
	bltu	a2, a9, .L72
	.loc 1 139 0
	l32r	a10, .LC22
	blt	a10, a8, .L89
	.loc 1 144 0
	s16i	a8, a4, 8
	j	.L53
.LVL112:
.L79:
.LBE21:
	.loc 1 61 0
	mov.n	a9, a2
.LVL113:
.L53:
	.loc 1 150 0
	beqz.n	a3, .L73
	.loc 1 153 0
	l8ui	a10, a9, 0
	movi.n	a8, 0x2f
	bne	a10, a8, .L74
	.loc 1 154 0
	addi.n	a2, a9, 1
.LVL114:
	.loc 1 155 0
	addi.n	a3, a3, -1
.LVL115:
	.loc 1 154 0
	mov.n	a8, a2
	.loc 1 157 0
	j	.L75
.LVL116:
.L77:
	.loc 1 158 0
	addi.n	a8, a8, 1
.LVL117:
	.loc 1 159 0
	addi.n	a3, a3, -1
.LVL118:
.L75:
	.loc 1 157 0
	beqz.n	a3, .L76
	.loc 1 157 0 is_stmt 0 discriminator 1
	l8ui	a10, a8, 0
	movi.n	a9, 0x3f
	bne	a10, a9, .L77
.L76:
	.loc 1 162 0 is_stmt 1
	bgeu	a2, a8, .L74
	.loc 1 163 0
	sub	a9, a8, a2
	s32i.n	a9, a4, 12
	s32i.n	a2, a4, 16
.LVL119:
	.loc 1 164 0
	mov.n	a2, a8
.LVL120:
.L74:
	.loc 1 169 0
	beqz.n	a3, .L73
	.loc 1 169 0 is_stmt 0 discriminator 1
	l8ui	a9, a2, 0
	movi.n	a8, 0x3f
	bne	a9, a8, .L73
	.loc 1 170 0 is_stmt 1
	addi.n	a2, a2, 1
.LVL121:
	.loc 1 171 0
	addi.n	a3, a3, -1
.LVL122:
	.loc 1 172 0
	s32i.n	a3, a4, 20
	s32i.n	a2, a4, 24
.LVL123:
	.loc 1 173 0
	movi.n	a3, 0
.LVL124:
.L73:
	.loc 1 177 0
	beqz.n	a3, .L90
	movi.n	a2, -1
.LVL125:
	retw.n
.LVL126:
.L78:
	.loc 1 53 0
	movi.n	a2, -1
.LVL127:
	retw.n
.LVL128:
.L80:
	.loc 1 73 0
	movi.n	a2, -1
.LVL129:
	retw.n
.LVL130:
.L81:
	.loc 1 88 0
	movi.n	a2, -2
.LVL131:
	retw.n
.LVL132:
.L84:
	.loc 1 102 0
	movi.n	a2, -3
.LVL133:
	retw.n
.LVL134:
.L85:
	movi.n	a2, -3
.LVL135:
	retw.n
.LVL136:
.L86:
	movi.n	a2, -3
.LVL137:
	retw.n
.LVL138:
.L87:
	.loc 1 115 0
	movi.n	a2, -3
.LVL139:
	retw.n
.LVL140:
.L89:
.LBB22:
	.loc 1 140 0
	movi.n	a2, -4
.LVL141:
	retw.n
.LVL142:
.L90:
.LBE22:
	.loc 1 177 0
	movi.n	a2, 0
.LVL143:
	.loc 1 181 0
	retw.n
.LFE42:
	.size	coap_split_uri, .-coap_split_uri
	.section	.text.coap_split_path,"ax",@progbits
	.literal_position
	.literal .LC23, write_option
	.align	4
	.global	coap_split_path
	.type	coap_split_path, @function
coap_split_path:
.LFB49:
	.loc 1 377 0
.LVL144:
	entry	sp, 48
.LCFI7:
	.loc 1 378 0
	l32i.n	a8, a5, 0
	s32i.n	a8, sp, 0
	s32i.n	a4, sp, 4
	movi.n	a8, 0
	s32i.n	a8, sp, 8
	.loc 1 380 0
	mov.n	a13, sp
	l32r	a12, .LC23
	mov.n	a11, a3
	mov.n	a10, a2
	call8	coap_split_path_impl
.LVL145:
	.loc 1 382 0
	l32i.n	a8, a5, 0
	l32i.n	a9, sp, 0
	sub	a8, a8, a9
	s32i.n	a8, a5, 0
	.loc 1 385 0
	l32i.n	a2, sp, 8
.LVL146:
	retw.n
.LFE49:
	.size	coap_split_path, .-coap_split_path
	.section	.text.coap_split_query,"ax",@progbits
	.align	4
	.global	coap_split_query
	.type	coap_split_query, @function
coap_split_query:
.LFB50:
	.loc 1 389 0
.LVL147:
	entry	sp, 48
.LCFI8:
	.loc 1 390 0
	l32i.n	a8, a5, 0
	s32i.n	a8, sp, 0
	s32i.n	a4, sp, 4
	movi.n	a8, 0
	s32i.n	a8, sp, 8
.LVL148:
	.loc 1 393 0
	mov.n	a10, a2
	.loc 1 394 0
	j	.L93
.LVL149:
.L96:
	.loc 1 395 0
	movi.n	a9, 0x26
	bne	a8, a9, .L94
	.loc 1 396 0
	mov.n	a12, sp
	sub	a11, a2, a10
	call8	write_option
.LVL150:
	.loc 1 397 0
	addi.n	a10, a2, 1
.LVL151:
.L94:
	.loc 1 400 0
	addi.n	a2, a2, 1
.LVL152:
	.loc 1 401 0
	addi.n	a3, a3, -1
.LVL153:
.L93:
	.loc 1 394 0
	beqz.n	a3, .L95
	.loc 1 394 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 0
	movi.n	a9, 0x23
	bne	a8, a9, .L96
.L95:
	.loc 1 405 0 is_stmt 1
	mov.n	a12, sp
	sub	a11, a2, a10
	call8	write_option
.LVL154:
	.loc 1 407 0
	l32i.n	a2, a5, 0
.LVL155:
	l32i.n	a3, sp, 0
.LVL156:
	sub	a2, a2, a3
	s32i.n	a2, a5, 0
	.loc 1 409 0
	l32i.n	a2, sp, 8
	retw.n
.LFE50:
	.size	coap_split_query, .-coap_split_query
	.section	.text.coap_new_uri,"ax",@progbits
	.align	4
	.global	coap_new_uri
	.type	coap_new_uri, @function
coap_new_uri:
.LFB51:
	.loc 1 414 0
.LVL157:
	entry	sp, 32
.LCFI9:
.LVL158:
.LBB23:
.LBB24:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/mem.h"
	.loc 2 71 0
	addi	a11, a3, 29
.LVL159:
	movi.n	a10, 0
	call8	coap_malloc_type
.LVL160:
	mov.n	a4, a10
.LBE24:
.LBE23:
	.loc 1 419 0
	beqz.n	a10, .L99
	.loc 1 422 0
	addi	a8, a10, 28
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a2, a8
.LVL161:
	mov.n	a10, a8
	call8	memcpy
.LVL162:
	.loc 1 423 0
	addi	a8, a3, 28
	add.n	a8, a4, a8
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 425 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	coap_split_uri
.LVL163:
	bgez	a10, .L100
.LVL164:
.LBB25:
.LBB26:
	.loc 2 78 0
	mov.n	a11, a4
	movi.n	a10, 0
	call8	coap_free_type
.LVL165:
.LBE26:
.LBE25:
	.loc 1 427 0
	movi.n	a2, 0
	retw.n
.LVL166:
.L99:
	.loc 1 420 0
	movi.n	a2, 0
.LVL167:
	retw.n
.L100:
	.loc 1 429 0
	mov.n	a2, a4
	.loc 1 430 0
	retw.n
.LFE51:
	.size	coap_new_uri, .-coap_new_uri
	.section	.text.coap_clone_uri,"ax",@progbits
	.align	4
	.global	coap_clone_uri
	.type	coap_clone_uri, @function
coap_clone_uri:
.LFB52:
	.loc 1 433 0
.LVL168:
	entry	sp, 32
.LCFI10:
	.loc 1 436 0
	beqz.n	a2, .L105
	.loc 1 439 0
	l32i.n	a11, a2, 20
	l32i.n	a3, a2, 0
	add.n	a11, a11, a3
	.loc 1 440 0
	l32i.n	a3, a2, 12
	.loc 1 439 0
	add.n	a11, a11, a3
.LVL169:
.LBB27:
.LBB28:
	.loc 2 71 0
	addi	a11, a11, 29
.LVL170:
	movi.n	a10, 0
	call8	coap_malloc_type
.LVL171:
	mov.n	a3, a10
.LBE28:
.LBE27:
	.loc 1 442 0
	beqz.n	a10, .L106
	.loc 1 445 0
	movi.n	a12, 0x1c
	movi.n	a11, 0
	call8	memset
.LVL172:
	.loc 1 447 0
	l16ui	a8, a2, 8
	s16i	a8, a3, 8
	.loc 1 449 0
	l32i.n	a8, a2, 0
	beqz.n	a8, .L103
	.loc 1 450 0
	addi	a10, a3, 28
	s32i.n	a10, a3, 4
	.loc 1 451 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a3, 0
	.loc 1 453 0
	l32i.n	a12, a2, 0
	l32i.n	a11, a2, 4
	call8	memcpy
.LVL173:
.L103:
	.loc 1 456 0
	l32i.n	a8, a2, 12
	beqz.n	a8, .L104
	.loc 1 457 0
	l32i.n	a10, a2, 0
	addi	a10, a10, 28
	add.n	a10, a3, a10
	s32i.n	a10, a3, 16
	.loc 1 458 0
	l32i.n	a8, a2, 12
	s32i.n	a8, a3, 12
	.loc 1 460 0
	l32i.n	a12, a2, 12
	l32i.n	a11, a2, 16
	call8	memcpy
.LVL174:
.L104:
	.loc 1 463 0
	l32i.n	a8, a2, 20
	beqz.n	a8, .L107
	.loc 1 464 0
	l32i.n	a10, a2, 0
	l32i.n	a8, a2, 12
	add.n	a10, a10, a8
	addi	a10, a10, 28
	add.n	a10, a3, a10
	s32i.n	a10, a3, 24
	.loc 1 465 0
	l32i.n	a8, a2, 20
	s32i.n	a8, a3, 20
	.loc 1 467 0
	l32i.n	a12, a2, 20
	l32i.n	a11, a2, 24
	call8	memcpy
.LVL175:
	.loc 1 470 0
	mov.n	a2, a3
.LVL176:
	retw.n
.LVL177:
.L105:
	.loc 1 437 0
	movi.n	a2, 0
.LVL178:
	retw.n
.LVL179:
.L106:
	.loc 1 443 0
	movi.n	a2, 0
.LVL180:
	retw.n
.LVL181:
.L107:
	.loc 1 470 0
	mov.n	a2, a3
.LVL182:
	.loc 1 471 0
	retw.n
.LFE52:
	.size	coap_clone_uri, .-coap_clone_uri
	.section	.text.coap_hash_path,"ax",@progbits
	.literal_position
	.literal .LC24, hash_segment
	.align	4
	.global	coap_hash_path
	.type	coap_hash_path, @function
coap_hash_path:
.LFB54:
	.loc 1 483 0
.LVL183:
	entry	sp, 32
.LCFI11:
	.loc 1 484 0
	beqz.n	a2, .L110
	.loc 1 487 0
	movi.n	a8, 0
	s8i	a8, a4, 0
	s8i	a8, a4, 1
	s8i	a8, a4, 2
	s8i	a8, a4, 3
	.loc 1 489 0
	mov.n	a13, a4
	l32r	a12, .LC24
	mov.n	a11, a3
	mov.n	a10, a2
	call8	coap_split_path_impl
.LVL184:
	.loc 1 491 0
	movi.n	a2, 1
.LVL185:
	retw.n
.LVL186:
.L110:
	.loc 1 485 0
	movi.n	a2, 0
.LVL187:
	.loc 1 492 0
	retw.n
.LFE54:
	.size	coap_hash_path, .-coap_hash_path
	.section	.rodata.__func__$6521,"a",@progbits
	.align	4
	.type	__func__$6521, @object
	.size	__func__$6521, 20
__func__$6521:
	.string	"make_decoded_option"
	.section	.rodata.__func__$6551,"a",@progbits
	.align	4
	.type	__func__$6551, @object
	.size	__func__$6551, 13
__func__$6551:
	.string	"write_option"
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
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI0-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI1-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI2-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI3-.LFB45
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI4-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI5-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI6-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI7-.LFB49
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI8-.LFB50
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI9-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI10-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI11-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/debug.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/str.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/uri.h"
	.file 6 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/option.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/hashkey.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xae3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xc
	.4byte	.LASF74
	.4byte	.LASF75
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0x6
	.byte	0xd8
	.4byte	0x30
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x92
	.uleb128 0x7
	.4byte	0x85
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	0x8c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0x2
	.byte	0x1d
	.4byte	0xf2
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30
	.byte	0x3
	.byte	0x1a
	.4byte	0x12f
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xf
	.4byte	0x14e
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x4
	.byte	0x10
	.4byte	0x25
	.byte	0
	.uleb128 0xc
	.string	"s"
	.byte	0x4
	.byte	0x11
	.4byte	0x7f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"str"
	.byte	0x4
	.byte	0x12
	.4byte	0x12f
	.uleb128 0xa
	.byte	0x1c
	.byte	0x5
	.byte	0x14
	.4byte	0x192
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x15
	.4byte	0x14e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x16
	.4byte	0x37
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x17
	.4byte	0x14e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x19
	.4byte	0x14e
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x5
	.byte	0x1a
	.4byte	0x159
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x132
	.4byte	0x1a9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1af
	.uleb128 0xf
	.4byte	0x1c4
	.uleb128 0x10
	.4byte	0x7f
	.uleb128 0x10
	.4byte	0x25
	.uleb128 0x10
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0xc
	.byte	0x1
	.2byte	0x164
	.4byte	0x1ea
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.2byte	0x165
	.4byte	0x14e
	.byte	0
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.2byte	0x166
	.4byte	0x3e
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x138
	.4byte	0x3e
	.byte	0x3
	.4byte	0x212
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.2byte	0x138
	.4byte	0x7f
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.2byte	0x138
	.4byte	0x25
	.byte	0
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x1
	.byte	0x25
	.4byte	0x7f
	.byte	0x3
	.4byte	0x240
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0x25
	.4byte	0x7f
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x25
	.4byte	0x25
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.byte	0x25
	.4byte	0x4c
	.byte	0
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x2
	.byte	0x46
	.4byte	0x76
	.byte	0x3
	.4byte	0x25c
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x2
	.byte	0x46
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x2
	.byte	0x4d
	.byte	0x3
	.4byte	0x274
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x2
	.byte	0x4d
	.4byte	0x76
	.byte	0
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.byte	0xcd
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b7
	.uleb128 0x1a
	.string	"seg"
	.byte	0x1
	.byte	0xcd
	.4byte	0x2b7
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0xcd
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0xcd
	.4byte	0x7f
	.4byte	.LLST2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2bd
	.uleb128 0x7
	.4byte	0x4c
	.uleb128 0x1c
	.4byte	.LASF44
	.byte	0x1
	.byte	0xe3
	.4byte	0x3e
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x305
	.uleb128 0x1a
	.string	"s"
	.byte	0x1
	.byte	0xe3
	.4byte	0x2b7
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x1
	.byte	0xe3
	.4byte	0x25
	.4byte	.LLST4
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.byte	0xe5
	.4byte	0x25
	.4byte	.LLST5
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x148
	.4byte	0x25
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x40e
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.2byte	0x148
	.4byte	0x2b7
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x148
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x21
	.string	"h"
	.byte	0x1
	.2byte	0x149
	.4byte	0x19d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x149
	.4byte	0x76
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x2b7
	.4byte	.LLST8
	.uleb128 0x23
	.string	"q"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x2b7
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	0x1ea
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.2byte	0x151
	.4byte	0x39a
	.uleb128 0x25
	.4byte	0x205
	.4byte	.LLST10
	.uleb128 0x25
	.4byte	0x1fb
	.4byte	.LLST11
	.byte	0
	.uleb128 0x24
	.4byte	0x212
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.2byte	0x14e
	.4byte	0x3ca
	.uleb128 0x25
	.4byte	0x236
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	0x22b
	.4byte	.LLST13
	.uleb128 0x25
	.4byte	0x222
	.4byte	.LLST14
	.byte	0
	.uleb128 0x24
	.4byte	0x1ea
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.2byte	0x15d
	.4byte	0x3f1
	.uleb128 0x25
	.4byte	0x205
	.4byte	.LLST15
	.uleb128 0x25
	.4byte	0x1fb
	.4byte	.LLST16
	.byte	0
	.uleb128 0x26
	.4byte	.LVL29
	.4byte	0x401
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL44
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x10a
	.4byte	0x3e
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54f
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x2b7
	.4byte	.LLST17
	.uleb128 0x22
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x10a
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x7f
	.4byte	.LLST18
	.uleb128 0x20
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x10b
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x29
	.string	"res"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2a
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x10d
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x2b
	.4byte	.LASF53
	.4byte	0x55f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6521
	.uleb128 0x2c
	.4byte	.LVL47
	.4byte	0xa91
	.4byte	0x4ad
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL50
	.4byte	0x2c2
	.4byte	0x4c7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL52
	.4byte	0xa9c
	.4byte	0x4ec
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL54
	.4byte	0xaa8
	.4byte	0x51c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x11b
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6521
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL57
	.4byte	0xa91
	.4byte	0x538
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL60
	.4byte	0x274
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x85
	.4byte	0x55f
	.uleb128 0x2f
	.4byte	0x6f
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x54f
	.uleb128 0x30
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x16a
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x616
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x16a
	.4byte	0x76
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x16b
	.4byte	0x616
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x23
	.string	"res"
	.byte	0x1
	.2byte	0x16c
	.4byte	0x3e
	.4byte	.LLST21
	.uleb128 0x2b
	.4byte	.LASF53
	.4byte	0x62c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6551
	.uleb128 0x2c
	.4byte	.LVL68
	.4byte	0xaa8
	.4byte	0x5ff
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x16d
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6551
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL69
	.4byte	0x40e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c4
	.uleb128 0x2e
	.4byte	0x85
	.4byte	0x62c
	.uleb128 0x2f
	.4byte	0x6f
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x61c
	.uleb128 0x30
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1de
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68c
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.2byte	0x1de
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.2byte	0x1de
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1de
	.4byte	0x76
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LVL72
	.4byte	0xab3
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF58
	.byte	0x1
	.byte	0x30
	.4byte	0x3e
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x756
	.uleb128 0x1b
	.4byte	.LASF55
	.byte	0x1
	.byte	0x30
	.4byte	0x2b7
	.4byte	.LLST22
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x30
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x33
	.string	"uri"
	.byte	0x1
	.byte	0x30
	.4byte	0x756
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.string	"p"
	.byte	0x1
	.byte	0x31
	.4byte	0x2b7
	.4byte	.LLST24
	.uleb128 0x1d
	.string	"q"
	.byte	0x1
	.byte	0x31
	.4byte	0x2b7
	.4byte	.LLST25
	.uleb128 0x34
	.4byte	.LASF56
	.byte	0x1
	.byte	0x32
	.4byte	0x3e
	.4byte	.LLST26
	.uleb128 0x35
	.string	"res"
	.byte	0x1
	.byte	0x32
	.4byte	0x3e
	.byte	0
	.uleb128 0x36
	.4byte	.LASF35
	.byte	0x1
	.byte	0x94
	.4byte	.L53
	.uleb128 0x37
	.4byte	.LASF78
	.byte	0x1
	.byte	0xb3
	.uleb128 0x38
	.string	"end"
	.byte	0x1
	.byte	0xb0
	.4byte	.L73
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0
	.4byte	0x73b
	.uleb128 0x34
	.4byte	.LASF57
	.byte	0x1
	.byte	0x85
	.4byte	0x3e
	.4byte	.LLST27
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL75
	.4byte	0xabe
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x192
	.uleb128 0x3a
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x178
	.4byte	0x3e
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e3
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.2byte	0x178
	.4byte	0x2b7
	.4byte	.LLST28
	.uleb128 0x22
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x178
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.2byte	0x179
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x179
	.4byte	0x7e3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LVL145
	.4byte	0x305
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	write_option
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x3a
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x184
	.4byte	0x3e
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87f
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.2byte	0x184
	.4byte	0x2b7
	.4byte	.LLST29
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x184
	.4byte	0x25
	.4byte	.LLST30
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.2byte	0x185
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x185
	.4byte	0x7e3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.2byte	0x186
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.2byte	0x187
	.4byte	0x2b7
	.4byte	.LLST31
	.uleb128 0x2c
	.4byte	.LVL150
	.4byte	0x564
	.4byte	0x86e
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL154
	.4byte	0x564
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x19e
	.4byte	0x756
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x967
	.uleb128 0x1f
	.string	"uri"
	.byte	0x1
	.2byte	0x19e
	.4byte	0x2b7
	.4byte	.LLST32
	.uleb128 0x22
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x19e
	.4byte	0x30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3b
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x19f
	.4byte	0x7f
	.uleb128 0x24
	.4byte	0x240
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x8f6
	.uleb128 0x25
	.4byte	0x250
	.4byte	.LLST33
	.uleb128 0x2d
	.4byte	.LVL160
	.4byte	0xac7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 29
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x25c
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.2byte	0x1aa
	.4byte	0x929
	.uleb128 0x25
	.4byte	0x268
	.4byte	.LLST34
	.uleb128 0x2d
	.4byte	.LVL165
	.4byte	0xad2
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL162
	.4byte	0xadd
	.4byte	0x94a
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL163
	.4byte	0x68c
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x756
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0f
	.uleb128 0x1f
	.string	"uri"
	.byte	0x1
	.2byte	0x1b1
	.4byte	0xa0f
	.4byte	.LLST35
	.uleb128 0x3b
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x756
	.uleb128 0x24
	.4byte	0x240
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x9ca
	.uleb128 0x25
	.4byte	0x250
	.4byte	.LLST36
	.uleb128 0x2d
	.4byte	.LVL171
	.4byte	0xac7
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL172
	.4byte	0xabe
	.4byte	0x9e8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x4c
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL173
	.4byte	0xadd
	.4byte	0x9fc
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 28
	.byte	0
	.uleb128 0x3c
	.4byte	.LVL174
	.4byte	0xadd
	.uleb128 0x3c
	.4byte	.LVL175
	.4byte	0xadd
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa15
	.uleb128 0x7
	.4byte	0x192
	.uleb128 0x3a
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x3e
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa86
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x2b7
	.4byte	.LLST37
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"key"
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LVL184
	.4byte	0x305
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	hash_segment
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF79
	.byte	0xa
	.byte	0x2d
	.4byte	0x9e
	.uleb128 0x3e
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x3
	.byte	0x37
	.uleb128 0x3f
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x14b
	.uleb128 0x3e
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x8
	.byte	0x29
	.uleb128 0x3e
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x9
	.byte	0x20
	.uleb128 0x40
	.4byte	.LASF71
	.4byte	.LASF71
	.uleb128 0x3e
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x2
	.byte	0x37
	.uleb128 0x3e
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x2
	.byte	0x41
	.uleb128 0x40
	.4byte	.LASF72
	.4byte	.LASF72
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
	.uleb128 0xd
	.uleb128 0x16
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
	.uleb128 0xe
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL43
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL42
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL46
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL57-1
	.4byte	.LVL59
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL60-1
	.4byte	.LVL62
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL53
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL64
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LVL126
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL73
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL76
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL120
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0xc
	.byte	0x79
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x73
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL147
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL147
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LVL150-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL151
	.4byte	.LVL154-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL157
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL161
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL162-1
	.4byte	.LVL166
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x3
	.byte	0x73
	.sleb128 29
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL160-1
	.4byte	.LFE51
	.2byte	0x3
	.byte	0x73
	.sleb128 29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL168
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x3
	.byte	0x7b
	.sleb128 29
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL171-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"result"
.LASF19:
	.string	"COAP_PDU"
.LASF66:
	.string	"coap_opt_setheader"
.LASF46:
	.string	"data"
.LASF12:
	.string	"COAP_STRING"
.LASF52:
	.string	"state"
.LASF38:
	.string	"segment_handler_t"
.LASF4:
	.string	"short int"
.LASF32:
	.string	"size_t"
.LASF77:
	.string	"coap_free"
.LASF8:
	.string	"sizetype"
.LASF60:
	.string	"coap_split_query"
.LASF79:
	.string	"__ctype_ptr__"
.LASF43:
	.string	"object"
.LASF49:
	.string	"written"
.LASF72:
	.string	"memcpy"
.LASF39:
	.string	"dots"
.LASF64:
	.string	"coap_hash_path"
.LASF23:
	.string	"LOG_EMERG"
.LASF61:
	.string	"coap_new_uri"
.LASF47:
	.string	"make_decoded_option"
.LASF48:
	.string	"buflen"
.LASF20:
	.string	"COAP_PDU_BUF"
.LASF31:
	.string	"length"
.LASF33:
	.string	"host"
.LASF44:
	.string	"check_segment"
.LASF5:
	.string	"long long int"
.LASF71:
	.string	"memset"
.LASF7:
	.string	"long int"
.LASF17:
	.string	"COAP_CONTEXT"
.LASF57:
	.string	"uri_port"
.LASF51:
	.string	"write_option"
.LASF30:
	.string	"LOG_DEBUG"
.LASF26:
	.string	"LOG_ERR"
.LASF3:
	.string	"unsigned char"
.LASF41:
	.string	"coap_malloc"
.LASF53:
	.string	"__func__"
.LASF2:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF58:
	.string	"coap_split_uri"
.LASF70:
	.string	"coap_free_type"
.LASF22:
	.string	"COAP_RESOURCEATTR"
.LASF1:
	.string	"short unsigned int"
.LASF25:
	.string	"LOG_CRIT"
.LASF27:
	.string	"LOG_WARNING"
.LASF10:
	.string	"char"
.LASF11:
	.string	"_Bool"
.LASF37:
	.string	"coap_uri_t"
.LASF28:
	.string	"LOG_NOTICE"
.LASF16:
	.string	"COAP_NODE"
.LASF76:
	.string	"cnt_str"
.LASF36:
	.string	"query"
.LASF24:
	.string	"LOG_ALERT"
.LASF14:
	.string	"COAP_ATTRIBUTE_VALUE"
.LASF75:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\coap"
.LASF34:
	.string	"port"
.LASF54:
	.string	"hash_segment"
.LASF65:
	.string	"coap_log_impl"
.LASF9:
	.string	"long unsigned int"
.LASF13:
	.string	"COAP_ATTRIBUTE_NAME"
.LASF42:
	.string	"size"
.LASF18:
	.string	"COAP_ENDPOINT"
.LASF35:
	.string	"path"
.LASF40:
	.string	"strnchr"
.LASF50:
	.string	"decode_segment"
.LASF74:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/uri.c"
.LASF29:
	.string	"LOG_INFO"
.LASF59:
	.string	"coap_split_path"
.LASF78:
	.string	"error"
.LASF56:
	.string	"secure"
.LASF55:
	.string	"str_var"
.LASF67:
	.string	"__assert_func"
.LASF68:
	.string	"coap_hash_impl"
.LASF63:
	.string	"coap_clone_uri"
.LASF73:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF45:
	.string	"coap_split_path_impl"
.LASF21:
	.string	"COAP_RESOURCE"
.LASF15:
	.string	"COAP_PACKET"
.LASF69:
	.string	"coap_malloc_type"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
