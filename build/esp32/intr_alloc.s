	.file	"intr_alloc.c"
	.text
.Ltext0:
	.section	.text.insert_vector_desc,"ax",@progbits
	.literal_position
	.literal .LC0, vector_desc_head
	.align	4
	.type	insert_vector_desc, @function
insert_vector_desc:
.LFB15:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/intr_alloc.c"
	.loc 1 188 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 189 0
	l32r	a8, .LC0
	l32i.n	a12, a8, 0
.LVL1:
	mov.n	a8, a12
	.loc 1 190 0
	movi.n	a11, 0
	.loc 1 191 0
	j	.L2
.LVL2:
.L5:
	.loc 1 192 0
	l32i.n	a9, a8, 0
	extui	a9, a9, 16, 1
	l32i.n	a10, a2, 0
	extui	a10, a10, 16, 1
	blt	a10, a9, .L3
	.loc 1 193 0
	l32i.n	a10, a8, 0
	l32i.n	a9, a2, 0
	xor	a9, a10, a9
	bbsi	a9, 16, .L4
	.loc 1 193 0 is_stmt 0 discriminator 1
	extui	a10, a10, 17, 5
	l32i.n	a9, a2, 0
	extui	a9, a9, 17, 5
	bge	a10, a9, .L3
.L4:
.LVL3:
	.loc 1 194 0 is_stmt 1
	mov.n	a11, a8
	.loc 1 195 0
	l32i.n	a8, a8, 8
.LVL4:
.L2:
	.loc 1 191 0
	bnez.n	a8, .L5
.L3:
	.loc 1 197 0
	beqz.n	a12, .L6
	.loc 1 197 0 discriminator 1
	bnez.n	a11, .L7
.L6:
	.loc 1 199 0
	s32i.n	a8, a2, 8
	.loc 1 200 0
	l32r	a8, .LC0
.LVL5:
	s32i.n	a2, a8, 0
	retw.n
.LVL6:
.L7:
	.loc 1 202 0
	s32i.n	a2, a11, 8
	.loc 1 203 0
	s32i.n	a8, a2, 8
	retw.n
.LFE15:
	.size	insert_vector_desc, .-insert_vector_desc
	.section	.text.find_desc_for_int,"ax",@progbits
	.literal_position
	.literal .LC2, vector_desc_head
	.align	4
	.type	find_desc_for_int, @function
find_desc_for_int:
.LFB16:
	.loc 1 209 0
.LVL7:
	entry	sp, 32
.LCFI1:
	.loc 1 210 0
	l32r	a8, .LC2
	l32i.n	a8, a8, 0
.LVL8:
	.loc 1 211 0
	j	.L10
.L13:
	.loc 1 212 0
	l32i.n	a9, a8, 0
	extui	a9, a9, 16, 1
	bne	a9, a3, .L11
	.loc 1 212 0 is_stmt 0 discriminator 1
	l32i.n	a9, a8, 0
	extui	a9, a9, 17, 5
	beq	a9, a2, .L12
.L11:
	.loc 1 213 0 is_stmt 1
	l32i.n	a8, a8, 8
.LVL9:
.L10:
	.loc 1 211 0
	bnez.n	a8, .L13
.L12:
	.loc 1 216 0
	mov.n	a2, a8
.LVL10:
	retw.n
.LFE16:
	.size	find_desc_for_int, .-find_desc_for_int
	.section	.text.int_has_handler,"ax",@progbits
	.literal_position
	.literal .LC3, _xt_interrupt_table
	.literal .LC4, xt_unhandled_interrupt
	.align	4
	.type	int_has_handler, @function
int_has_handler:
.LFB21:
	.loc 1 311 0
.LVL11:
	entry	sp, 32
.LCFI2:
	.loc 1 312 0
	addx2	a2, a2, a3
.LVL12:
	l32r	a3, .LC3
.LVL13:
	addx8	a2, a2, a3
	l32i.n	a2, a2, 0
	l32r	a8, .LC4
	sub	a8, a2, a8
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 313 0
	retw.n
.LFE21:
	.size	int_has_handler, .-int_has_handler
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC5, spinlock
	.align	4
	.type	shared_intr_isr, @function
shared_intr_isr:
.LFB24:
	.loc 1 493 0
.LVL14:
	entry	sp, 32
.LCFI3:
.LVL15:
	.loc 1 495 0
	l32i.n	a2, a2, 4
.LVL16:
	.loc 1 496 0
	l32r	a10, .LC5
	call8	vTaskEnterCritical
.LVL17:
	.loc 1 497 0
	j	.L16
.L19:
	.loc 1 498 0
	l32i.n	a8, a2, 0
	bbsi	a8, 0, .L17
	.loc 1 499 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L18
	.loc 1 499 0 discriminator 1
	memw
	l32i.n	a9, a8, 0
	l32i.n	a8, a2, 8
	bnone	a9, a8, .L17
.L18:
	.loc 1 503 0
	l32i.n	a8, a2, 12
	l32i.n	a10, a2, 16
	callx8	a8
.LVL18:
.L17:
	.loc 1 512 0
	l32i.n	a2, a2, 20
.LVL19:
.L16:
	.loc 1 497 0
	bnez.n	a2, .L19
	.loc 1 514 0
	l32r	a10, .LC5
	call8	vTaskExitCritical
.LVL20:
	retw.n
.LFE24:
	.size	shared_intr_isr, .-shared_intr_isr
	.section	.text.get_desc_for_int,"ax",@progbits
	.literal_position
	.literal .LC6, 2052
	.literal .LC7, -4063233
	.literal .LC8, -65537
	.align	4
	.type	get_desc_for_int, @function
get_desc_for_int:
.LFB17:
	.loc 1 222 0
.LVL21:
	entry	sp, 32
.LCFI4:
	.loc 1 223 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	find_desc_for_int
.LVL22:
	.loc 1 224 0
	bnez.n	a10, .L22
.LBB17:
	.loc 1 225 0
	l32r	a11, .LC6
	movi.n	a10, 0xc
.LVL23:
	call8	heap_caps_malloc
.LVL24:
	mov.n	a4, a10
.LVL25:
	.loc 1 226 0
	beqz.n	a10, .L23
	.loc 1 227 0
	movi.n	a8, 0
	s8i	a8, a10, 0
	s8i	a8, a10, 1
	s8i	a8, a10, 2
	s8i	a8, a10, 3
	s8i	a8, a10, 4
	s8i	a8, a10, 5
	s8i	a8, a10, 6
	s8i	a8, a10, 7
	s8i	a8, a10, 8
	s8i	a8, a10, 9
	s8i	a8, a10, 10
	s8i	a8, a10, 11
	.loc 1 228 0
	extui	a2, a2, 0, 5
.LVL26:
	slli	a2, a2, 17
	l32i.n	a9, a10, 0
	l32r	a8, .LC7
	and	a8, a9, a8
	or	a8, a8, a2
	.loc 1 229 0
	extui	a3, a3, 0, 1
.LVL27:
	slli	a2, a3, 16
	l32r	a3, .LC8
	and	a3, a8, a3
	or	a3, a3, a2
	s32i.n	a3, a10, 0
	.loc 1 230 0
	call8	insert_vector_desc
.LVL28:
	.loc 1 231 0
	mov.n	a2, a4
	retw.n
.LVL29:
.L22:
.LBE17:
	.loc 1 233 0
	mov.n	a2, a10
.LVL30:
	retw.n
.LVL31:
.L23:
.LBB18:
	.loc 1 226 0
	movi.n	a2, 0
.LVL32:
.LBE18:
	.loc 1 235 0
	retw.n
.LFE17:
	.size	get_desc_for_int, .-get_desc_for_int
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"svd != NULL"
	.align	4
.LC13:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/intr_alloc.c"
	.section	.text.find_desc_for_source,"ax",@progbits
	.literal_position
	.literal .LC9, vector_desc_head
	.literal .LC11, .LC10
	.literal .LC12, __func__$5289
	.literal .LC14, .LC13
	.align	4
	.type	find_desc_for_source, @function
find_desc_for_source:
.LFB18:
	.loc 1 239 0
.LVL33:
	entry	sp, 32
.LCFI5:
	.loc 1 240 0
	l32r	a8, .LC9
	l32i.n	a10, a8, 0
.LVL34:
	.loc 1 241 0
	j	.L25
.L32:
	.loc 1 242 0
	l16ui	a8, a10, 0
	bbsi	a8, 2, .L26
	.loc 1 243 0
	l32i.n	a8, a10, 0
	extui	a8, a8, 22, 8
	sext	a8, a8, 7
	bne	a2, a8, .L27
	.loc 1 243 0 is_stmt 0 discriminator 1
	l32i.n	a8, a10, 0
	extui	a8, a8, 16, 1
	bne	a3, a8, .L27
	j	.L28
.L26:
	.loc 1 244 0 is_stmt 1
	l32i.n	a8, a10, 0
	extui	a8, a8, 16, 1
	bne	a8, a3, .L27
.LVL35:
.LBB19:
	.loc 1 247 0
	l32i.n	a9, a10, 4
.LVL36:
	.loc 1 248 0
	bnez.n	a9, .L29
	.loc 1 248 0 is_stmt 0 discriminator 1
	l32r	a13, .LC11
	l32r	a12, .LC12
	movi	a11, 0xf8
	l32r	a10, .LC14
.LVL37:
	call8	__assert_func
.LVL38:
.L31:
	.loc 1 250 0 is_stmt 1
	l32i.n	a8, a9, 0
	extui	a8, a8, 1, 8
	sext	a8, a8, 7
	beq	a8, a2, .L33
	.loc 1 254 0
	l32i.n	a9, a9, 20
.LVL39:
.L29:
	.loc 1 249 0
	bnez.n	a9, .L31
	.loc 1 246 0
	movi.n	a8, 0
	j	.L30
.L33:
	.loc 1 251 0
	movi.n	a8, 1
.L30:
.LVL40:
	.loc 1 256 0
	bnez.n	a8, .L28
.LVL41:
.L27:
.LBE19:
	.loc 1 258 0
	l32i.n	a10, a10, 8
.LVL42:
.L25:
	.loc 1 241 0
	bnez.n	a10, .L32
.L28:
	.loc 1 261 0
	mov.n	a2, a10
.LVL43:
	retw.n
.LFE18:
	.size	find_desc_for_source, .-find_desc_for_source
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"!((vd->flags&VECDESC_FL_SHARED)&&(vd->flags&VECDESC_FL_NONSHARED))"
	.section	.text.is_vect_desc_usable,"ax",@progbits
	.literal_position
	.literal .LC15, int_desc
	.literal .LC17, .LC16
	.literal .LC18, __func__$5324
	.literal .LC19, .LC13
	.align	4
	.type	is_vect_desc_usable, @function
is_vect_desc_usable:
.LFB22:
	.loc 1 316 0
.LVL44:
	entry	sp, 32
.LCFI6:
	.loc 1 318 0
	l32i.n	a10, a2, 0
	extui	a10, a10, 17, 5
.LVL45:
	.loc 1 319 0
	addx4	a8, a10, a4
	l32r	a9, .LC15
	addx4	a8, a8, a9
	l32i.n	a8, a8, 8
	beqi	a8, 1, .L41
	.loc 1 323 0
	bnei	a8, 2, .L36
	.loc 1 323 0 is_stmt 0 discriminator 1
	beqi	a5, -1, .L42
.L36:
	.loc 1 328 0 is_stmt 1
	slli	a8, a10, 4
	l32r	a9, .LC15
	add.n	a8, a9, a8
	l32i.n	a8, a8, 0
	bbc	a3, a8, .L43
	.loc 1 333 0
	movi	a8, 0x200
	and	a8, a3, a8
	beqz.n	a8, .L37
	.loc 1 333 0 is_stmt 0 discriminator 1
	slli	a9, a10, 4
	l32r	a5, .LC15
.LVL46:
	add.n	a9, a5, a9
	l32i.n	a5, a9, 4
	beqz.n	a5, .L44
.L37:
	.loc 1 333 0 discriminator 3
	bnez.n	a8, .L38
	.loc 1 334 0 is_stmt 1
	slli	a5, a10, 4
	l32r	a8, .LC15
	add.n	a5, a8, a5
	l32i.n	a5, a5, 4
	beqi	a5, 1, .L45
.L38:
	.loc 1 339 0
	l16ui	a2, a2, 0
.LVL47:
	bbsi	a2, 0, .L46
	.loc 1 345 0
	movi.n	a5, 0xc
	and	a5, a2, a5
	bnei	a5, 12, .L39
	.loc 1 345 0 is_stmt 0 discriminator 1
	l32r	a13, .LC17
	l32r	a12, .LC18
	movi	a11, 0x159
	l32r	a10, .LC19
.LVL48:
	call8	__assert_func
.LVL49:
.L39:
	.loc 1 347 0 is_stmt 1
	bbsi	a2, 3, .L47
	movi.n	a5, 4
	and	a5, a2, a5
	.loc 1 352 0
	beqz.n	a5, .L40
	.loc 1 353 0
	bbci	a3, 8, .L48
.LBB20:
	.loc 1 354 0
	movi	a4, 0x400
.LVL50:
	and	a3, a3, a4
.LVL51:
	movi.n	a4, 0
	movi.n	a8, 1
	movnez	a4, a8, a3
	extui	a3, a4, 0, 8
.LVL52:
	.loc 1 355 0
	extui	a2, a2, 1, 1
.LVL53:
	.loc 1 357 0
	beqz.n	a5, .L49
	.loc 1 357 0 is_stmt 0 discriminator 1
	beq	a3, a2, .L50
	.loc 1 359 0 is_stmt 1
	movi.n	a2, 0
.LVL54:
	retw.n
.LVL55:
.L40:
.LBE20:
	.loc 1 366 0
	mov.n	a11, a4
	call8	int_has_handler
.LVL56:
	beqz.n	a10, .L51
	.loc 1 369 0
	movi.n	a2, 0
	retw.n
.LVL57:
.L41:
	.loc 1 321 0
	movi.n	a2, 0
.LVL58:
	retw.n
.LVL59:
.L42:
	.loc 1 325 0
	movi.n	a2, 0
.LVL60:
	retw.n
.LVL61:
.L43:
	.loc 1 330 0
	movi.n	a2, 0
.LVL62:
	retw.n
.LVL63:
.L44:
	.loc 1 336 0
	movi.n	a2, 0
.LVL64:
	retw.n
.LVL65:
.L45:
	movi.n	a2, 0
.LVL66:
	retw.n
.L46:
	.loc 1 341 0
	movi.n	a2, 0
	retw.n
.L47:
	.loc 1 349 0
	movi.n	a2, 0
	retw.n
.L48:
	.loc 1 364 0
	movi.n	a2, 0
	retw.n
.LVL67:
.L49:
	.loc 1 372 0
	movi.n	a2, 1
.LVL68:
	retw.n
.LVL69:
.L50:
	movi.n	a2, 1
.LVL70:
	retw.n
.LVL71:
.L51:
	movi.n	a2, 1
	.loc 1 373 0
	retw.n
.LFE22:
	.size	is_vect_desc_usable, .-is_vect_desc_usable
	.section	.text.get_available_int,"ax",@progbits
	.literal_position
	.literal .LC20, 2147483647
	.literal .LC21, -4063233
	.literal .LC22, int_desc
	.align	4
	.type	get_available_int, @function
get_available_int:
.LFB23:
	.loc 1 379 0
.LVL72:
	entry	sp, 64
.LCFI7:
.LVL73:
	.loc 1 386 0
	movi.n	a6, 0
	s32i.n	a6, sp, 0
	s32i.n	a6, sp, 4
	s32i.n	a6, sp, 8
	.loc 1 390 0
	movi	a6, 0xfe
	bany	a2, a6, .L53
	.loc 1 390 0 is_stmt 0 discriminator 1
	movi.n	a6, 0xe
	or	a2, a2, a6
.LVL74:
.L53:
	.loc 1 393 0 is_stmt 1
	mov.n	a11, a3
	mov.n	a10, a5
	call8	find_desc_for_source
.LVL75:
	mov.n	a5, a10
.LVL76:
	.loc 1 394 0
	beqz.n	a10, .L54
	.loc 1 397 0
	beqi	a4, -1, .L55
	.loc 1 397 0 is_stmt 0 discriminator 1
	l32i.n	a6, a10, 0
	extui	a6, a6, 17, 5
	bne	a4, a6, .L67
.L55:
	.loc 1 399 0 is_stmt 1
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, a5
	call8	is_vect_desc_usable
.LVL77:
	beqz.n	a10, .L68
	.loc 1 402 0
	l32i.n	a7, a5, 0
	extui	a7, a7, 17, 5
.LVL78:
	j	.L56
.LVL79:
.L54:
	.loc 1 406 0
	beqi	a4, -1, .L69
	.loc 1 409 0
	mov.n	a11, a3
	mov.n	a10, a4
	call8	find_desc_for_int
.LVL80:
	mov.n	a5, a10
.LVL81:
	.loc 1 410 0
	bnez.n	a10, .L58
	.loc 1 412 0
	extui	a5, a4, 0, 5
.LVL82:
	slli	a5, a5, 17
	l32r	a6, .LC21
	l32i.n	a7, sp, 0
	and	a6, a7, a6
	or	a5, a6, a5
	s32i.n	a5, sp, 0
.LVL83:
	.loc 1 413 0
	mov.n	a5, sp
.LVL84:
.L58:
	.loc 1 415 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, a5
	call8	is_vect_desc_usable
.LVL85:
	beqz.n	a10, .L70
	.loc 1 416 0
	l32i.n	a7, a5, 0
	extui	a7, a7, 17, 5
.LVL86:
	j	.L56
.LVL87:
.L66:
	.loc 1 427 0
	mov.n	a11, a3
	mov.n	a10, a5
	call8	find_desc_for_int
.LVL88:
	mov.n	a6, a10
.LVL89:
	.loc 1 428 0
	bnez.n	a10, .L59
	.loc 1 429 0
	extui	a6, a5, 0, 5
.LVL90:
	slli	a8, a6, 17
	l32r	a6, .LC21
	l32i.n	a9, sp, 0
	and	a6, a9, a6
	or	a6, a6, a8
	s32i.n	a6, sp, 0
.LVL91:
	.loc 1 430 0
	mov.n	a6, sp
.LVL92:
.L59:
	.loc 1 437 0
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	mov.n	a10, a6
	call8	is_vect_desc_usable
.LVL93:
	beqz.n	a10, .L60
	.loc 1 439 0
	bbci	a2, 8, .L61
	.loc 1 443 0
	l16ui	a8, a6, 0
	bbci	a8, 2, .L62
.LVL94:
.LBB21:
	.loc 1 447 0
	l32i.n	a6, a6, 4
.LVL95:
	.loc 1 446 0
	movi.n	a8, 0
	.loc 1 448 0
	j	.L63
.LVL96:
.L64:
	.loc 1 449 0
	addi.n	a8, a8, 1
.LVL97:
	.loc 1 450 0
	l32i.n	a6, a6, 20
.LVL98:
.L63:
	.loc 1 448 0
	bnez.n	a6, .L64
	.loc 1 452 0
	l32i.n	a6, sp, 20
.LVL99:
	blt	a8, a6, .L65
	.loc 1 452 0 is_stmt 0 discriminator 1
	slli	a6, a5, 4
	l32r	a9, .LC22
	add.n	a6, a9, a6
	l32i.n	a6, a6, 0
	l32i.n	a9, sp, 16
	bge	a6, a9, .L60
.L65:
.LVL100:
	.loc 1 456 0 is_stmt 1
	slli	a6, a5, 4
	l32r	a7, .LC22
	add.n	a6, a7, a6
	l32i.n	a6, a6, 0
	s32i.n	a6, sp, 16
.LVL101:
	.loc 1 455 0
	s32i.n	a8, sp, 20
	.loc 1 454 0
	mov.n	a7, a5
	j	.L60
.LVL102:
.L62:
.LBE21:
	.loc 1 462 0
	bnei	a7, -1, .L60
	.loc 1 466 0
	slli	a6, a5, 4
.LVL103:
	l32r	a8, .LC22
	add.n	a6, a8, a6
	l32i.n	a6, a6, 0
	l32i.n	a8, sp, 16
	blt	a6, a8, .L71
	j	.L60
.LVL104:
.L61:
	.loc 1 477 0
	slli	a6, a5, 4
.LVL105:
	l32r	a8, .LC22
	add.n	a6, a8, a6
	l32i.n	a6, a6, 0
	l32i.n	a9, sp, 16
	blt	a6, a9, .L72
	j	.L60
.L71:
	.loc 1 468 0
	s32i.n	a6, sp, 16
.LVL106:
	.loc 1 467 0
	mov.n	a7, a5
.LVL107:
	j	.L60
.LVL108:
.L72:
	.loc 1 479 0
	s32i.n	a6, sp, 16
.LVL109:
	.loc 1 478 0
	mov.n	a7, a5
.LVL110:
.L60:
	.loc 1 425 0 discriminator 2
	addi.n	a5, a5, 1
.LVL111:
	j	.L57
.LVL112:
.L69:
	l32r	a5, .LC20
.LVL113:
	s32i.n	a5, sp, 20
	movi.n	a6, 9
	s32i.n	a6, sp, 16
	movi.n	a7, -1
	movi.n	a5, 0
.LVL114:
.L57:
	.loc 1 425 0 is_stmt 0 discriminator 1
	movi.n	a6, 0x1f
	bge	a6, a5, .L66
	j	.L56
.LVL115:
.L67:
	.loc 1 381 0 is_stmt 1
	movi.n	a7, -1
	j	.L56
.L68:
	movi.n	a7, -1
	j	.L56
.L70:
	movi.n	a7, -1
.LVL116:
.L56:
	.loc 1 489 0
	mov.n	a2, a7
.LVL117:
	retw.n
.LFE23:
	.size	get_available_int, .-get_available_int
	.section	.text.esp_intr_mark_shared,"ax",@progbits
	.literal_position
	.literal .LC23, spinlock
	.align	4
	.global	esp_intr_mark_shared
	.type	esp_intr_mark_shared, @function
esp_intr_mark_shared:
.LFB19:
	.loc 1 264 0
.LVL118:
	entry	sp, 32
.LCFI8:
	extui	a4, a4, 0, 8
	.loc 1 265 0
	movi.n	a8, 0x1f
	blt	a8, a2, .L77
	.loc 1 266 0
	bgei	a3, 2, .L78
	.loc 1 268 0
	l32r	a10, .LC23
	call8	vTaskEnterCritical
.LVL119:
	.loc 1 269 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	get_desc_for_int
.LVL120:
	.loc 1 270 0
	bnez.n	a10, .L75
	.loc 1 271 0
	l32r	a10, .LC23
.LVL121:
	call8	vTaskExitCritical
.LVL122:
	.loc 1 272 0
	movi	a2, 0x101
.LVL123:
	retw.n
.LVL124:
.L75:
	.loc 1 274 0
	movi.n	a2, 4
.LVL125:
	s16i	a2, a10, 0
	.loc 1 275 0
	beqz.n	a4, .L76
	.loc 1 275 0 is_stmt 0 discriminator 1
	movi.n	a2, 6
	s16i	a2, a10, 0
.L76:
	.loc 1 276 0 is_stmt 1
	l32r	a10, .LC23
.LVL126:
	call8	vTaskExitCritical
.LVL127:
	.loc 1 278 0
	movi.n	a2, 0
	retw.n
.LVL128:
.L77:
	.loc 1 265 0
	movi	a2, 0x102
.LVL129:
	retw.n
.LVL130:
.L78:
	.loc 1 266 0
	movi	a2, 0x102
.LVL131:
	.loc 1 279 0
	retw.n
.LFE19:
	.size	esp_intr_mark_shared, .-esp_intr_mark_shared
	.section	.text.esp_intr_reserve,"ax",@progbits
	.literal_position
	.literal .LC24, spinlock
	.align	4
	.global	esp_intr_reserve
	.type	esp_intr_reserve, @function
esp_intr_reserve:
.LFB20:
	.loc 1 282 0
.LVL132:
	entry	sp, 32
.LCFI9:
	.loc 1 283 0
	movi.n	a8, 0x1f
	blt	a8, a2, .L82
	.loc 1 284 0
	bgei	a3, 2, .L83
	.loc 1 286 0
	l32r	a10, .LC24
	call8	vTaskEnterCritical
.LVL133:
	.loc 1 287 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	get_desc_for_int
.LVL134:
	.loc 1 288 0
	bnez.n	a10, .L81
	.loc 1 289 0
	l32r	a10, .LC24
.LVL135:
	call8	vTaskExitCritical
.LVL136:
	.loc 1 290 0
	movi	a2, 0x101
.LVL137:
	retw.n
.LVL138:
.L81:
	.loc 1 292 0
	movi.n	a2, 1
.LVL139:
	s16i	a2, a10, 0
	.loc 1 293 0
	l32r	a10, .LC24
.LVL140:
	call8	vTaskExitCritical
.LVL141:
	.loc 1 295 0
	movi.n	a2, 0
	retw.n
.LVL142:
.L82:
	.loc 1 283 0
	movi	a2, 0x102
.LVL143:
	retw.n
.LVL144:
.L83:
	.loc 1 284 0
	movi	a2, 0x102
.LVL145:
	.loc 1 296 0
	retw.n
.LFE20:
	.size	esp_intr_reserve, .-esp_intr_reserve
	.section	.iram1
	.literal_position
	.literal .LC25, spinlock
	.literal .LC26, non_iram_int_mask
	.align	4
	.global	esp_intr_set_in_iram
	.type	esp_intr_set_in_iram, @function
esp_intr_set_in_iram:
.LFB27:
	.loc 1 689 0
.LVL146:
	entry	sp, 32
.LCFI10:
	extui	a3, a3, 0, 8
	.loc 1 690 0
	beqz.n	a2, .L88
	.loc 1 691 0
	l32i.n	a2, a2, 0
.LVL147:
	.loc 1 692 0
	l16ui	a8, a2, 0
	bbsi	a8, 2, .L89
	.loc 1 695 0
	l32r	a10, .LC25
	call8	vTaskEnterCritical
.LVL148:
	.loc 1 696 0
	l32i.n	a8, a2, 0
	extui	a8, a8, 17, 5
	movi.n	a9, 1
	ssl	a8
	sll	a8, a9
.LVL149:
	.loc 1 697 0
	beqz.n	a3, .L86
	.loc 1 698 0
	l16ui	a9, a2, 0
	movi.n	a3, 2
.LVL150:
	or	a3, a9, a3
	s16i	a3, a2, 0
	.loc 1 699 0
	l32i.n	a2, a2, 0
.LVL151:
	extui	a2, a2, 16, 1
	movi.n	a3, -1
	xor	a8, a3, a8
.LVL152:
	l32r	a3, .LC26
	addx4	a2, a2, a3
	l32i.n	a3, a2, 0
	and	a3, a3, a8
	s32i.n	a3, a2, 0
	j	.L87
.LVL153:
.L86:
	.loc 1 701 0
	l16ui	a9, a2, 0
	movi.n	a3, -3
	and	a3, a9, a3
	s16i	a3, a2, 0
	.loc 1 702 0
	l32i.n	a2, a2, 0
.LVL154:
	extui	a2, a2, 16, 1
	l32r	a3, .LC26
	addx4	a2, a2, a3
	l32i.n	a3, a2, 0
	or	a8, a3, a8
.LVL155:
	s32i.n	a8, a2, 0
.L87:
	.loc 1 704 0
	l32r	a10, .LC25
	call8	vTaskExitCritical
.LVL156:
	.loc 1 705 0
	movi.n	a2, 0
	retw.n
.LVL157:
.L88:
	.loc 1 690 0
	movi	a2, 0x102
.LVL158:
	retw.n
.LVL159:
.L89:
	.loc 1 693 0
	movi	a2, 0x102
.LVL160:
	.loc 1 706 0
	retw.n
.LFE27:
	.size	esp_intr_set_in_iram, .-esp_intr_set_in_iram
	.section	.text.esp_intr_get_intno,"ax",@progbits
	.align	4
	.global	esp_intr_get_intno
	.type	esp_intr_get_intno, @function
esp_intr_get_intno:
.LFB29:
	.loc 1 766 0
.LVL161:
	entry	sp, 32
.LCFI11:
	.loc 1 767 0
	l32i.n	a2, a2, 0
.LVL162:
	l32i.n	a2, a2, 0
	.loc 1 768 0
	extui	a2, a2, 17, 5
	retw.n
.LFE29:
	.size	esp_intr_get_intno, .-esp_intr_get_intno
	.section	.text.esp_intr_get_cpu,"ax",@progbits
	.align	4
	.global	esp_intr_get_cpu
	.type	esp_intr_get_cpu, @function
esp_intr_get_cpu:
.LFB30:
	.loc 1 771 0
.LVL163:
	entry	sp, 32
.LCFI12:
	.loc 1 772 0
	l32i.n	a2, a2, 0
.LVL164:
	l32i.n	a2, a2, 0
	.loc 1 773 0
	extui	a2, a2, 16, 1
	retw.n
.LFE30:
	.size	esp_intr_get_cpu, .-esp_intr_get_cpu
	.section	.iram1
	.literal_position
	.literal .LC27, spinlock
	.align	4
	.global	esp_intr_enable
	.type	esp_intr_enable, @function
esp_intr_enable:
.LFB31:
	.loc 1 787 0
.LVL165:
	entry	sp, 32
.LCFI13:
	.loc 1 788 0
	beqz.n	a2, .L98
	.loc 1 789 0
	l32r	a10, .LC27
	call8	vTaskEnterCritical
.LVL166:
	.loc 1 791 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L94
	.loc 1 792 0
	l16ui	a10, a8, 0
	movi.n	a9, -2
	and	a9, a10, a9
	s16i	a9, a8, 0
	.loc 1 793 0
	l32i.n	a8, a2, 4
	l32i.n	a11, a8, 0
	extui	a11, a11, 1, 8
	sext	a11, a11, 7
.LVL167:
	j	.L95
.LVL168:
.L94:
	.loc 1 795 0
	l32i.n	a8, a2, 0
	l32i.n	a11, a8, 0
	extui	a11, a11, 22, 8
	sext	a11, a11, 7
.LVL169:
.L95:
	.loc 1 797 0
	bltz	a11, .L96
	.loc 1 799 0
	l32i.n	a2, a2, 0
.LVL170:
	l32i.n	a10, a2, 0
	extui	a12, a10, 17, 5
	extui	a10, a10, 16, 1
	call8	intr_matrix_set
.LVL171:
	j	.L97
.LVL172:
.L96:
	.loc 1 802 0
	l32i.n	a8, a2, 0
	l32i.n	a2, a8, 0
.LVL173:
	extui	a2, a2, 16, 1
.LBB22:
.LBB23:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h"
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a9
 extui a9,a9,13,1
# 0 "" 2
.LVL174:
#NO_APP
.LBE23:
.LBE22:
	.loc 1 802 0
	bne	a2, a9, .L99
	.loc 1 803 0
	l32i.n	a2, a8, 0
	extui	a2, a2, 17, 5
	movi.n	a10, 1
	ssl	a2
	sll	a10, a10
	call8	xt_ints_on
.LVL175:
.L97:
	.loc 1 805 0
	l32r	a10, .LC27
	call8	vTaskExitCritical
.LVL176:
	.loc 1 806 0
	movi.n	a2, 0
	retw.n
.LVL177:
.L98:
	.loc 1 788 0
	movi	a2, 0x102
.LVL178:
	retw.n
.LVL179:
.L99:
	.loc 1 802 0
	movi	a2, 0x102
	.loc 1 807 0
	retw.n
.LFE31:
	.size	esp_intr_enable, .-esp_intr_enable
	.literal_position
	.literal .LC28, spinlock
	.literal .LC29, .LC10
	.literal .LC30, __func__$5410
	.literal .LC31, .LC13
	.align	4
	.global	esp_intr_disable
	.type	esp_intr_disable, @function
esp_intr_disable:
.LFB32:
	.loc 1 810 0
.LVL180:
	entry	sp, 32
.LCFI14:
	.loc 1 811 0
	beqz.n	a2, .L110
	.loc 1 812 0
	l32r	a10, .LC28
	call8	vTaskEnterCritical
.LVL181:
	.loc 1 815 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L102
.LBB24:
	.loc 1 816 0
	l16ui	a10, a8, 0
	movi.n	a9, 1
	or	a9, a10, a9
	s16i	a9, a8, 0
	.loc 1 817 0
	l32i.n	a8, a2, 4
	l32i.n	a11, a8, 0
	extui	a11, a11, 1, 8
	sext	a11, a11, 7
.LVL182:
	.loc 1 819 0
	l32i.n	a8, a2, 0
	l32i.n	a9, a8, 4
.LVL183:
	.loc 1 820 0
	bnez.n	a9, .L103
	.loc 1 820 0 is_stmt 0 discriminator 1
	l32r	a13, .LC29
	l32r	a12, .LC30
	movi	a11, 0x334
.LVL184:
	l32r	a10, .LC31
	call8	__assert_func
.LVL185:
.L106:
	.loc 1 822 0 is_stmt 1
	l32i.n	a8, a9, 0
	extui	a8, a8, 1, 8
	sext	a8, a8, 7
	bne	a11, a8, .L104
	.loc 1 822 0 is_stmt 0 discriminator 1
	l32i.n	a8, a9, 0
	bbci	a8, 0, .L111
.L104:
	.loc 1 826 0 is_stmt 1
	l32i.n	a9, a9, 20
.LVL186:
.L103:
	.loc 1 821 0
	bnez.n	a9, .L106
.LBE24:
	.loc 1 814 0
	movi.n	a8, 1
	j	.L105
.LVL187:
.L102:
	.loc 1 829 0
	l32i.n	a8, a2, 0
	l32i.n	a11, a8, 0
	extui	a11, a11, 22, 8
	sext	a11, a11, 7
.LVL188:
	.loc 1 814 0
	movi.n	a8, 1
	j	.L105
.LVL189:
.L111:
.LBB25:
	.loc 1 823 0
	movi.n	a8, 0
.LVL190:
.L105:
.LBE25:
	.loc 1 832 0
	bltz	a11, .L107
	.loc 1 833 0
	beqz.n	a8, .L108
	.loc 1 835 0
	l32i.n	a2, a2, 0
.LVL191:
	l32i.n	a10, a2, 0
	movi.n	a12, 6
	extui	a10, a10, 16, 1
	call8	intr_matrix_set
.LVL192:
	j	.L108
.LVL193:
.L107:
	.loc 1 839 0
	l32i.n	a8, a2, 0
.LVL194:
	l32i.n	a2, a8, 0
.LVL195:
	extui	a2, a2, 16, 1
.LBB26:
.LBB27:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a9
 extui a9,a9,13,1
# 0 "" 2
.LVL196:
#NO_APP
.LBE27:
.LBE26:
	.loc 1 839 0
	beq	a2, a9, .L109
	.loc 1 840 0
	l32r	a10, .LC28
	call8	vTaskExitCritical
.LVL197:
	.loc 1 841 0
	movi	a2, 0x102
	retw.n
.LVL198:
.L109:
	.loc 1 843 0
	l32i.n	a2, a8, 0
	extui	a2, a2, 17, 5
	movi.n	a10, 1
	ssl	a2
	sll	a10, a10
	call8	xt_ints_off
.LVL199:
.L108:
	.loc 1 845 0
	l32r	a10, .LC28
	call8	vTaskExitCritical
.LVL200:
	.loc 1 846 0
	movi.n	a2, 0
	retw.n
.LVL201:
.L110:
	.loc 1 811 0
	movi	a2, 0x102
.LVL202:
	.loc 1 847 0
	retw.n
.LFE32:
	.size	esp_intr_disable, .-esp_intr_disable
	.section	.text.esp_intr_alloc_intrstatus,"ax",@progbits
	.literal_position
	.literal .LC32, -1074528256
	.literal .LC33, 267649023
	.literal .LC34, 2052
	.literal .LC35, spinlock
	.literal .LC36, shared_intr_isr
	.literal .LC37, -1069547521
	.literal .LC38, non_iram_int_mask
	.align	4
	.global	esp_intr_alloc_intrstatus
	.type	esp_intr_alloc_intrstatus, @function
esp_intr_alloc_intrstatus:
.LFB25:
	.loc 1 538 0
.LVL203:
	entry	sp, 64
.LCFI15:
.LVL204:
	.loc 1 543 0
	movi	a8, 0x300
	and	a9, a3, a8
	beq	a9, a8, .L137
	.loc 1 545 0
	movi	a8, 0xf0
	bnone	a3, a8, .L114
	.loc 1 545 0 is_stmt 0 discriminator 1
	bnez.n	a6, .L138
.L114:
	.loc 1 547 0 is_stmt 1
	movi	a8, 0x100
	and	a8, a3, a8
	beqz.n	a8, .L115
	.loc 1 547 0 is_stmt 0 discriminator 1
	movi.n	a10, 0
	movi.n	a9, 1
	moveqz	a10, a9, a6
	extui	a9, a2, 31, 1
	or	a9, a10, a9
	bnez.n	a9, .L139
.L115:
	.loc 1 549 0 is_stmt 1
	movi.n	a9, 1
	movi.n	a10, 0
	mov.n	a11, a10
	movnez	a11, a9, a4
	movnez	a9, a10, a5
	bany	a9, a11, .L140
	.loc 1 551 0
	bbci	a3, 10, .L116
	.loc 1 552 0
	l32r	a9, .LC32
	add.n	a9, a6, a9
	l32r	a10, .LC33
	bgeu	a10, a9, .L141
.L116:
	.loc 1 558 0
	movi	a9, 0xfe
	bany	a3, a9, .L117
	.loc 1 559 0
	beqz.n	a8, .L118
	.loc 1 560 0
	movi.n	a8, 2
	or	a3, a3, a8
.LVL205:
	j	.L117
.L118:
	.loc 1 562 0
	movi.n	a8, 0xe
	or	a3, a3, a8
.LVL206:
.L117:
	.loc 1 569 0
	beqi	a2, -1, .L142
	.loc 1 540 0
	movi.n	a8, -1
	s32i.n	a8, sp, 0
	j	.L119
.L142:
	.loc 1 569 0
	movi.n	a8, 6
	s32i.n	a8, sp, 0
.L119:
.LVL207:
	.loc 1 570 0
	movi.n	a8, -2
	bne	a2, a8, .L120
	movi.n	a8, 0xf
	s32i.n	a8, sp, 0
.LVL208:
.L120:
	.loc 1 571 0
	movi.n	a8, -3
	bne	a2, a8, .L121
	movi.n	a8, 0x10
	s32i.n	a8, sp, 0
.LVL209:
.L121:
	.loc 1 572 0
	movi.n	a8, -4
	bne	a2, a8, .L122
	movi.n	a8, 7
	s32i.n	a8, sp, 0
.LVL210:
.L122:
	.loc 1 573 0
	movi.n	a8, -5
	bne	a2, a8, .L123
	movi.n	a8, 0x1d
	s32i.n	a8, sp, 0
.LVL211:
.L123:
	.loc 1 574 0
	movi.n	a8, -6
	bne	a2, a8, .L124
	movi.n	a8, 0xb
	s32i.n	a8, sp, 0
.LVL212:
.L124:
	.loc 1 577 0
	l32r	a11, .LC34
	movi.n	a10, 8
	call8	heap_caps_malloc
.LVL213:
	s32i.n	a10, sp, 4
.LVL214:
	.loc 1 578 0
	beqz.n	a10, .L148
	.loc 1 580 0
	l32r	a10, .LC35
.LVL215:
	call8	vTaskEnterCritical
.LVL216:
.LBB28:
.LBB29:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
#NO_APP
	s32i.n	a8, sp, 12
.LVL217:
.LBE29:
.LBE28:
	.loc 1 583 0
	mov.n	a13, a2
	l32i.n	a12, sp, 0
	mov.n	a11, a8
	mov.n	a10, a3
	call8	get_available_int
.LVL218:
	s32i.n	a10, sp, 8
.LVL219:
	.loc 1 584 0
	bnei	a10, -1, .L125
	.loc 1 586 0
	l32r	a10, .LC35
.LVL220:
	call8	vTaskExitCritical
.LVL221:
	.loc 1 587 0
	l32i.n	a10, sp, 4
	call8	free
.LVL222:
	.loc 1 588 0
	movi	a2, 0x105
.LVL223:
	retw.n
.LVL224:
.L125:
	.loc 1 591 0
	l32i.n	a11, sp, 12
	l32i.n	a10, sp, 8
.LVL225:
	call8	get_desc_for_int
.LVL226:
	s32i.n	a10, sp, 0
.LVL227:
	.loc 1 592 0
	bnez.n	a10, .L126
	.loc 1 593 0
	l32r	a10, .LC35
.LVL228:
	call8	vTaskExitCritical
.LVL229:
	.loc 1 594 0
	l32i.n	a10, sp, 4
	call8	free
.LVL230:
	.loc 1 595 0
	movi	a2, 0x101
.LVL231:
	retw.n
.LVL232:
.L126:
	.loc 1 599 0
	bbci	a3, 8, .L127
.LBB30:
	.loc 1 601 0
	movi.n	a10, 0x18
.LVL233:
	call8	malloc
.LVL234:
	s32i.n	a10, sp, 16
.LVL235:
	.loc 1 602 0
	bnez.n	a10, .L128
	.loc 1 603 0
	l32r	a10, .LC35
.LVL236:
	call8	vTaskExitCritical
.LVL237:
	.loc 1 604 0
	l32i.n	a10, sp, 4
	call8	free
.LVL238:
	.loc 1 605 0
	movi	a2, 0x101
.LVL239:
	retw.n
.LVL240:
.L128:
	.loc 1 607 0
	movi.n	a12, 0x18
	movi.n	a11, 0
	l32i.n	a10, sp, 16
.LVL241:
	call8	memset
.LVL242:
	.loc 1 608 0
	l32i.n	a8, sp, 16
	s32i.n	a4, a8, 4
	.loc 1 609 0
	s32i.n	a5, a8, 8
	.loc 1 610 0
	s32i.n	a6, a8, 12
	.loc 1 611 0
	s32i.n	a7, a8, 16
	.loc 1 612 0
	l32i.n	a5, sp, 0
.LVL243:
	l32i.n	a4, a5, 4
.LVL244:
	s32i.n	a4, a8, 20
	.loc 1 613 0
	extui	a4, a2, 0, 8
	slli	a4, a4, 1
	l16ui	a6, a8, 0
.LVL245:
	movi	a5, -0x1ff
	and	a5, a6, a5
	or	a4, a5, a4
	.loc 1 614 0
	movi.n	a5, -2
	and	a4, a4, a5
	s16i	a4, a8, 0
.LVL246:
	.loc 1 615 0
	l32i.n	a6, sp, 0
	s32i.n	a8, a6, 4
.LVL247:
	.loc 1 616 0
	l16ui	a5, a6, 0
	movi.n	a4, 4
	or	a4, a5, a4
	s16i	a4, a6, 0
	.loc 1 618 0
	mov.n	a12, a6
	l32r	a11, .LC36
	l32i.n	a10, sp, 8
	call8	xt_set_interrupt_handler
.LVL248:
.LBE30:
	j	.L129
.LVL249:
.L127:
	.loc 1 621 0
	movi.n	a4, 8
.LVL250:
	l32i.n	a5, sp, 0
.LVL251:
	s16i	a4, a5, 0
	.loc 1 622 0
	beqz.n	a6, .L130
	.loc 1 635 0
	mov.n	a12, a7
	mov.n	a11, a6
	l32i.n	a10, sp, 8
.LVL252:
	call8	xt_set_interrupt_handler
.LVL253:
.L130:
	.loc 1 638 0
	bbci	a3, 9, .L131
	.loc 1 638 0 is_stmt 0 discriminator 1
	movi.n	a10, 1
	l32i.n	a6, sp, 8
.LVL254:
	ssl	a6
	sll	a10, a10
	call8	xthal_set_intclear
.LVL255:
.L131:
	.loc 1 639 0 is_stmt 1
	extui	a4, a2, 0, 8
	slli	a4, a4, 22
	l32i.n	a5, sp, 0
	l32i.n	a6, a5, 0
	l32r	a5, .LC37
	and	a5, a6, a5
	or	a4, a5, a4
	l32i.n	a6, sp, 0
	s32i.n	a4, a6, 0
.LVL256:
.L129:
	.loc 1 641 0
	bbci	a3, 10, .L132
	.loc 1 642 0
	l32i.n	a4, sp, 0
	l16ui	a5, a4, 0
	movi.n	a4, 2
	or	a4, a5, a4
	l32i.n	a5, sp, 0
	s16i	a4, a5, 0
	.loc 1 643 0
	movi.n	a4, 1
	l32i.n	a6, sp, 8
	ssl	a6
	sll	a4, a4
	movi.n	a5, -1
	xor	a4, a5, a4
	l32r	a5, .LC38
	l32i.n	a6, sp, 12
	addx4	a5, a6, a5
	l32i.n	a6, a5, 0
	and	a4, a6, a4
	s32i.n	a4, a5, 0
	j	.L133
.L132:
	.loc 1 645 0
	l32i.n	a4, sp, 0
	l16ui	a5, a4, 0
	movi.n	a4, -3
	and	a4, a5, a4
	l32i.n	a5, sp, 0
	s16i	a4, a5, 0
	.loc 1 646 0
	movi.n	a4, 1
	l32i.n	a6, sp, 8
	ssl	a6
	sll	a4, a4
	l32r	a5, .LC38
	l32i.n	a6, sp, 12
	addx4	a5, a6, a5
	l32i.n	a6, a5, 0
	or	a4, a6, a4
	s32i.n	a4, a5, 0
.L133:
	.loc 1 648 0
	bltz	a2, .L134
	.loc 1 649 0
	l32i.n	a12, sp, 8
	mov.n	a11, a2
	l32i.n	a10, sp, 12
	call8	intr_matrix_set
.LVL257:
.L134:
	.loc 1 653 0
	l32i.n	a4, sp, 0
	l32i.n	a2, sp, 4
.LVL258:
	s32i.n	a4, a2, 0
	.loc 1 654 0
	l32i.n	a2, a4, 4
	l32i.n	a5, sp, 4
	s32i.n	a2, a5, 4
	.loc 1 657 0
	movi.n	a10, 1
	l32i.n	a6, sp, 8
	ssl	a6
	sll	a10, a10
	call8	xt_ints_on
.LVL259:
	.loc 1 661 0
	bbci	a3, 11, .L135
	.loc 1 662 0
	l32i.n	a10, sp, 4
	call8	esp_intr_disable
.LVL260:
.L135:
	.loc 1 665 0
	l32r	a10, .LC35
	call8	vTaskExitCritical
.LVL261:
	.loc 1 668 0
	l32i	a8, sp, 64
	beqz.n	a8, .L136
	.loc 1 669 0
	l32i.n	a2, sp, 4
	s32i.n	a2, a8, 0
	.loc 1 675 0
	movi.n	a2, 0
	retw.n
.L136:
	.loc 1 671 0
	l32i.n	a10, sp, 4
	call8	free
.LVL262:
	.loc 1 675 0
	movi.n	a2, 0
	retw.n
.LVL263:
.L137:
	.loc 1 543 0
	movi	a2, 0x102
.LVL264:
	retw.n
.LVL265:
.L138:
	.loc 1 545 0
	movi	a2, 0x102
.LVL266:
	retw.n
.LVL267:
.L139:
	.loc 1 547 0
	movi	a2, 0x102
.LVL268:
	retw.n
.LVL269:
.L140:
	.loc 1 549 0
	movi	a2, 0x102
.LVL270:
	retw.n
.LVL271:
.L141:
	.loc 1 554 0
	movi	a2, 0x102
.LVL272:
	retw.n
.LVL273:
.L148:
	.loc 1 578 0
	movi	a2, 0x101
.LVL274:
	.loc 1 676 0
	retw.n
.LFE25:
	.size	esp_intr_alloc_intrstatus, .-esp_intr_alloc_intrstatus
	.section	.text.esp_intr_alloc,"ax",@progbits
	.align	4
	.global	esp_intr_alloc
	.type	esp_intr_alloc, @function
esp_intr_alloc:
.LFB26:
	.loc 1 679 0
.LVL275:
	entry	sp, 48
.LCFI16:
	.loc 1 685 0
	s32i.n	a6, sp, 0
	mov.n	a15, a5
	mov.n	a14, a4
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_intr_alloc_intrstatus
.LVL276:
	.loc 1 686 0
	mov.n	a2, a10
.LVL277:
	retw.n
.LFE26:
	.size	esp_intr_alloc, .-esp_intr_alloc
	.section	.rodata.str1.4
	.align	4
.LC41:
	.string	"svd"
	.section	.text.esp_intr_free,"ax",@progbits
	.literal_position
	.literal .LC40, spinlock
	.literal .LC42, .LC41
	.literal .LC43, __func__$5390
	.literal .LC44, .LC13
	.literal .LC45, xt_unhandled_interrupt
	.literal .LC46, non_iram_int_mask
	.align	4
	.global	esp_intr_free
	.type	esp_intr_free, @function
esp_intr_free:
.LFB28:
	.loc 1 709 0
.LVL278:
	entry	sp, 32
.LCFI17:
.LVL279:
	.loc 1 711 0
	beqz.n	a2, .L161
	.loc 1 713 0
	l32i.n	a8, a2, 0
	l32i.n	a8, a8, 0
	extui	a8, a8, 16, 1
.LBB31:
.LBB32:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a9
 extui a9,a9,13,1
# 0 "" 2
.LVL280:
#NO_APP
.LBE32:
.LBE31:
	.loc 1 713 0
	bne	a8, a9, .L162
	.loc 1 715 0
	l32r	a10, .LC40
	call8	vTaskEnterCritical
.LVL281:
	.loc 1 716 0
	mov.n	a10, a2
	call8	esp_intr_disable
.LVL282:
	.loc 1 717 0
	l32i.n	a11, a2, 0
	l16ui	a8, a11, 0
	bbci	a8, 2, .L163
.LBB33:
	.loc 1 719 0
	l32i.n	a10, a11, 4
.LVL283:
	.loc 1 721 0
	bnez.n	a10, .L164
	.loc 1 721 0 is_stmt 0 discriminator 1
	l32r	a13, .LC42
	l32r	a12, .LC43
	movi	a11, 0x2d1
	l32r	a10, .LC44
.LVL284:
	call8	__assert_func
.LVL285:
.L158:
	.loc 1 723 0 is_stmt 1
	l32i.n	a8, a2, 4
	bne	a10, a8, .L154
	.loc 1 725 0
	beqz.n	a9, .L155
	.loc 1 726 0
	l32i.n	a8, a10, 20
	s32i.n	a8, a9, 20
	j	.L156
.L155:
	.loc 1 728 0
	l32i.n	a8, a10, 20
	s32i.n	a8, a11, 4
.L156:
	.loc 1 730 0
	call8	free
.LVL286:
	.loc 1 731 0
	j	.L157
.LVL287:
.L154:
	.loc 1 733 0
	mov.n	a9, a10
	.loc 1 734 0
	l32i.n	a10, a10, 20
.LVL288:
	j	.L153
.LVL289:
.L164:
	movi.n	a9, 0
.LVL290:
.L153:
	.loc 1 722 0
	bnez.n	a10, .L158
.LVL291:
.L157:
	.loc 1 737 0
	l32i.n	a8, a2, 0
	l32i.n	a8, a8, 4
	beqz.n	a8, .L165
.LBE33:
	.loc 1 710 0
	movi.n	a10, 0
	j	.L152
.L163:
	movi.n	a10, 0
	j	.L152
.L165:
.LBB34:
	.loc 1 737 0
	movi.n	a10, 1
.L152:
.LVL292:
.LBE34:
	.loc 1 741 0
	l32i.n	a8, a2, 0
	l16ui	a9, a8, 0
	bbsi	a9, 3, .L159
	.loc 1 741 0 is_stmt 0 discriminator 1
	beqz.n	a10, .L160
.L159:
	.loc 1 752 0 is_stmt 1
	l32i.n	a10, a8, 0
.LVL293:
	extui	a10, a10, 17, 5
	mov.n	a12, a10
	l32r	a11, .LC45
	call8	xt_set_interrupt_handler
.LVL294:
	.loc 1 756 0
	l32i.n	a8, a2, 0
	movi.n	a9, 0
	s16i	a9, a8, 0
	.loc 1 758 0
	l32i.n	a8, a2, 0
	l32i.n	a8, a8, 0
	extui	a9, a8, 16, 1
	extui	a10, a8, 17, 5
	movi.n	a8, 1
	ssl	a10
	sll	a8, a8
	movi.n	a10, -1
	xor	a8, a10, a8
	l32r	a10, .LC46
	addx4	a9, a9, a10
	l32i.n	a10, a9, 0
	and	a8, a10, a8
	s32i.n	a8, a9, 0
.L160:
	.loc 1 760 0
	l32r	a10, .LC40
	call8	vTaskExitCritical
.LVL295:
	.loc 1 761 0
	mov.n	a10, a2
	call8	free
.LVL296:
	.loc 1 762 0
	movi.n	a2, 0
.LVL297:
	retw.n
.LVL298:
.L161:
	.loc 1 711 0
	movi	a2, 0x102
.LVL299:
	retw.n
.LVL300:
.L162:
	.loc 1 713 0
	movi	a2, 0x102
.LVL301:
	.loc 1 763 0
	retw.n
.LFE28:
	.size	esp_intr_free, .-esp_intr_free
	.section	.iram1
	.literal_position
	.literal .LC47, non_iram_int_mask
	.literal .LC48, non_iram_int_disabled_flag
	.literal .LC49, non_iram_int_disabled
	.align	4
	.global	esp_intr_noniram_disable
	.type	esp_intr_noniram_disable, @function
esp_intr_noniram_disable:
.LFB33:
	.loc 1 851 0
	entry	sp, 32
.LCFI18:
.LBB35:
.LBB36:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL302:
#NO_APP
.LBE36:
.LBE35:
	.loc 1 854 0
	l32r	a9, .LC47
	addx4	a9, a8, a9
	l32i.n	a9, a9, 0
	movi.n	a10, -1
	xor	a11, a10, a9
.LVL303:
	.loc 1 855 0
	l32r	a10, .LC48
	add.n	a10, a10, a8
	l8ui	a10, a10, 0
	beqz.n	a10, .L167
	.loc 1 855 0 is_stmt 0 discriminator 1
	call8	abort
.LVL304:
.L167:
	.loc 1 856 0 is_stmt 1
	l32r	a10, .LC48
	add.n	a10, a10, a8
	movi.n	a12, 1
	s8i	a12, a10, 0
	.loc 1 857 0
#APP
# 857 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/intr_alloc.c" 1
	movi a10,0
xsr a10,INTENABLE
rsync
and a3,a10,a11
wsr a3,INTENABLE
rsync

# 0 "" 2
.LVL305:
	.loc 1 866 0
#NO_APP
	and	a9, a10, a9
	l32r	a10, .LC49
.LVL306:
	addx4	a8, a8, a10
.LVL307:
	s32i.n	a9, a8, 0
	retw.n
.LFE33:
	.size	esp_intr_noniram_disable, .-esp_intr_noniram_disable
	.literal_position
	.literal .LC50, non_iram_int_disabled
	.literal .LC51, non_iram_int_disabled_flag
	.align	4
	.global	esp_intr_noniram_enable
	.type	esp_intr_noniram_enable, @function
esp_intr_noniram_enable:
.LFB34:
	.loc 1 870 0
	entry	sp, 32
.LCFI19:
.LBB37:
.LBB38:
	.loc 2 208 0
#APP
# 208 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portable.h" 1
	rsr.prid a8
 extui a8,a8,13,1
# 0 "" 2
.LVL308:
#NO_APP
.LBE38:
.LBE37:
	.loc 1 872 0
	l32r	a9, .LC50
	addx4	a9, a8, a9
	l32i.n	a10, a9, 0
.LVL309:
	.loc 1 873 0
	l32r	a9, .LC51
	add.n	a9, a9, a8
	l8ui	a9, a9, 0
	bnez.n	a9, .L169
	.loc 1 873 0 is_stmt 0 discriminator 1
	call8	abort
.LVL310:
.L169:
	.loc 1 874 0 is_stmt 1
	l32r	a9, .LC51
	add.n	a8, a9, a8
.LVL311:
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 875 0
#APP
# 875 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/intr_alloc.c" 1
	movi a3,0
xsr a3,INTENABLE
rsync
or a3,a3,a10
wsr a3,INTENABLE
rsync

# 0 "" 2
#NO_APP
	retw.n
.LFE34:
	.size	esp_intr_noniram_enable, .-esp_intr_noniram_enable
	.align	4
	.global	ets_isr_unmask
	.type	ets_isr_unmask, @function
ets_isr_unmask:
.LFB35:
	.loc 1 890 0
.LVL312:
	entry	sp, 32
.LCFI20:
	.loc 1 891 0
	mov.n	a10, a2
	call8	xt_ints_on
.LVL313:
	retw.n
.LFE35:
	.size	ets_isr_unmask, .-ets_isr_unmask
	.align	4
	.global	ets_isr_mask
	.type	ets_isr_mask, @function
ets_isr_mask:
.LFB36:
	.loc 1 894 0
.LVL314:
	entry	sp, 32
.LCFI21:
	.loc 1 895 0
	mov.n	a10, a2
	call8	xt_ints_off
.LVL315:
	retw.n
.LFE36:
	.size	ets_isr_mask, .-ets_isr_mask
	.section	.rodata.__func__$5410,"a",@progbits
	.align	4
	.type	__func__$5410, @object
	.size	__func__$5410, 17
__func__$5410:
	.string	"esp_intr_disable"
	.section	.rodata.__func__$5390,"a",@progbits
	.align	4
	.type	__func__$5390, @object
	.size	__func__$5390, 14
__func__$5390:
	.string	"esp_intr_free"
	.section	.rodata.__func__$5324,"a",@progbits
	.align	4
	.type	__func__$5324, @object
	.size	__func__$5324, 20
__func__$5324:
	.string	"is_vect_desc_usable"
	.section	.rodata.__func__$5289,"a",@progbits
	.align	4
	.type	__func__$5289, @object
	.size	__func__$5289, 21
__func__$5289:
	.string	"find_desc_for_source"
	.section	.data.spinlock,"aw",@progbits
	.align	4
	.type	spinlock, @object
	.size	spinlock, 8
spinlock:
	.word	-1287651329
	.word	0
	.section	.bss.non_iram_int_disabled_flag,"aw",@nobits
	.align	4
	.type	non_iram_int_disabled_flag, @object
	.size	non_iram_int_disabled_flag, 2
non_iram_int_disabled_flag:
	.zero	2
	.section	.bss.non_iram_int_disabled,"aw",@nobits
	.align	4
	.type	non_iram_int_disabled, @object
	.size	non_iram_int_disabled, 8
non_iram_int_disabled:
	.zero	8
	.section	.bss.non_iram_int_mask,"aw",@nobits
	.align	4
	.type	non_iram_int_mask, @object
	.size	non_iram_int_mask, 8
non_iram_int_mask:
	.zero	8
	.section	.bss.vector_desc_head,"aw",@nobits
	.align	4
	.type	vector_desc_head, @object
	.size	vector_desc_head, 4
vector_desc_head:
	.zero	4
	.section	.rodata.int_desc,"a",@progbits
	.align	4
	.type	int_desc, @object
	.size	int_desc, 512
int_desc:
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	2
	.word	1
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	0
	.word	3
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	7
	.word	0
	.word	1
	.word	1
	.word	3
	.word	2
	.word	2
	.word	2
	.word	5
	.word	2
	.word	2
	.word	2
	.word	1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	3
	.word	1
	.word	1
	.word	0
	.word	3
	.word	0
	.word	0
	.word	0
	.word	4
	.word	0
	.word	1
	.word	0
	.word	4
	.word	0
	.word	1
	.word	1
	.word	5
	.word	0
	.word	1
	.word	1
	.word	3
	.word	0
	.word	1
	.word	1
	.word	4
	.word	1
	.word	0
	.word	0
	.word	3
	.word	2
	.word	2
	.word	2
	.word	4
	.word	1
	.word	1
	.word	1
	.word	5
	.word	0
	.word	1
	.word	1
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI5-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI6-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI7-.LFB23
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI8-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI9-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI10-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI11-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI12-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI13-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI14-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI15-.LFB25
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI16-.LFB26
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI17-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI18-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI19-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI20-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI21-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_api.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/xtensa/hal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1448
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xc
	.4byte	.LASF123
	.4byte	.LASF124
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x95
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x94
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x18
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.byte	0x82
	.4byte	0x101
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x7
	.byte	0x8a
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x7
	.byte	0x8f
	.4byte	0x7e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x94
	.4byte	0xe0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x8
	.byte	0x53
	.4byte	0xbd
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x8
	.byte	0x56
	.4byte	0x122
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x8
	.byte	0x1
	.byte	0x9d
	.4byte	0x147
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x9e
	.4byte	0x314
	.byte	0
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x9f
	.4byte	0x30e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x57
	.4byte	0x152
	.uleb128 0x6
	.byte	0x4
	.4byte	0x117
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e
	.byte	0x9
	.byte	0x1f
	.4byte	0x189
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e
	.byte	0x1
	.byte	0x3a
	.4byte	0x1a8
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3e
	.4byte	0x189
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5e
	.byte	0x1
	.byte	0x40
	.4byte	0x1d2
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x1
	.byte	0x44
	.4byte	0x1b3
	.uleb128 0xa
	.byte	0x10
	.byte	0x1
	.byte	0x46
	.4byte	0x20a
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x47
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x48
	.4byte	0x1d2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x49
	.4byte	0x20a
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0x1a8
	.4byte	0x21a
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4a
	.4byte	0x1dd
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x1
	.byte	0x80
	.4byte	0x230
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x18
	.byte	0x1
	.byte	0x83
	.4byte	0x297
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x84
	.4byte	0x4c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x85
	.4byte	0x4c
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x1
	.byte	0x86
	.4byte	0x303
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x87
	.4byte	0x7e
	.byte	0x8
	.uleb128 0x12
	.string	"isr"
	.byte	0x1
	.byte	0x88
	.4byte	0x10c
	.byte	0xc
	.uleb128 0x12
	.string	"arg"
	.byte	0x1
	.byte	0x89
	.4byte	0x94
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x8a
	.4byte	0x30e
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x1
	.byte	0x81
	.4byte	0x2a2
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0xc
	.byte	0x1
	.byte	0x94
	.4byte	0x303
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.byte	0x95
	.4byte	0x4c
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.string	"cpu"
	.byte	0x1
	.byte	0x96
	.4byte	0x5e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF52
	.byte	0x1
	.byte	0x97
	.4byte	0x5e
	.byte	0x4
	.byte	0x5
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x98
	.4byte	0x4c
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0x99
	.4byte	0x30e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.byte	0x9a
	.4byte	0x314
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x309
	.uleb128 0x14
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x225
	.uleb128 0x6
	.byte	0x4
	.4byte	0x297
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x8
	.byte	0x1
	.2byte	0x12e
	.4byte	0x342
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x12f
	.4byte	0x94
	.byte	0
	.uleb128 0x17
	.string	"arg"
	.byte	0x1
	.2byte	0x130
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x131
	.4byte	0x31a
	.uleb128 0x19
	.4byte	.LASF125
	.byte	0x2
	.byte	0xce
	.4byte	0x7e
	.byte	0x3
	.4byte	0x369
	.uleb128 0x1a
	.string	"id"
	.byte	0x2
	.byte	0xcf
	.4byte	0x4c
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF61
	.byte	0x1
	.byte	0xbb
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a9
	.uleb128 0x1c
	.4byte	.LASF57
	.byte	0x1
	.byte	0xbb
	.4byte	0x314
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.string	"vd"
	.byte	0x1
	.byte	0xbd
	.4byte	0x314
	.4byte	.LLST0
	.uleb128 0x1e
	.4byte	.LASF56
	.byte	0x1
	.byte	0xbe
	.4byte	0x314
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.byte	0xd0
	.4byte	0x314
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3eb
	.uleb128 0x20
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd0
	.4byte	0x4c
	.4byte	.LLST2
	.uleb128 0x21
	.string	"cpu"
	.byte	0x1
	.byte	0xd0
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.string	"vd"
	.byte	0x1
	.byte	0xd2
	.4byte	0x314
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x23
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x136
	.4byte	0xd9
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x426
	.uleb128 0x24
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x136
	.4byte	0x4c
	.4byte	.LLST3
	.uleb128 0x25
	.string	"cpu"
	.byte	0x1
	.2byte	0x136
	.4byte	0x4c
	.4byte	.LLST4
	.byte	0
	.uleb128 0x26
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1ec
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x494
	.uleb128 0x25
	.string	"arg"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x94
	.4byte	.LLST5
	.uleb128 0x27
	.string	"vd"
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x314
	.4byte	.LLST6
	.uleb128 0x28
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x30e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LVL17
	.4byte	0x13ad
	.4byte	0x480
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL20
	.4byte	0x13b8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF64
	.byte	0x1
	.byte	0xdd
	.4byte	0x314
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x533
	.uleb128 0x20
	.4byte	.LASF52
	.byte	0x1
	.byte	0xdd
	.4byte	0x4c
	.4byte	.LLST7
	.uleb128 0x2c
	.string	"cpu"
	.byte	0x1
	.byte	0xdd
	.4byte	0x4c
	.4byte	.LLST8
	.uleb128 0x1d
	.string	"vd"
	.byte	0x1
	.byte	0xdf
	.4byte	0x314
	.4byte	.LLST9
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0
	.4byte	0x51c
	.uleb128 0x1e
	.4byte	.LASF65
	.byte	0x1
	.byte	0xe1
	.4byte	0x314
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LVL24
	.4byte	0x13c3
	.4byte	0x50b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL28
	.4byte	0x369
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL22
	.4byte	0x3a9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF66
	.byte	0x1
	.byte	0xee
	.4byte	0x314
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d9
	.uleb128 0x20
	.4byte	.LASF46
	.byte	0x1
	.byte	0xee
	.4byte	0x4c
	.4byte	.LLST11
	.uleb128 0x21
	.string	"cpu"
	.byte	0x1
	.byte	0xee
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.string	"vd"
	.byte	0x1
	.byte	0xf0
	.4byte	0x314
	.4byte	.LLST12
	.uleb128 0x2e
	.4byte	.LASF67
	.4byte	0x5e9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5289
	.uleb128 0x2f
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x1e
	.4byte	.LASF68
	.byte	0x1
	.byte	0xf6
	.4byte	0xd9
	.4byte	.LLST13
	.uleb128 0x1d
	.string	"svd"
	.byte	0x1
	.byte	0xf7
	.4byte	0x30e
	.4byte	.LLST14
	.uleb128 0x2b
	.4byte	.LVL38
	.4byte	0x13ce
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5289
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0x5e9
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x5d9
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x13b
	.4byte	0xd9
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d3
	.uleb128 0x25
	.string	"vd"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x314
	.4byte	.LLST15
	.uleb128 0x24
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x13b
	.4byte	0x4c
	.4byte	.LLST16
	.uleb128 0x25
	.string	"cpu"
	.byte	0x1
	.2byte	0x13b
	.4byte	0x4c
	.4byte	.LLST17
	.uleb128 0x24
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x13b
	.4byte	0x4c
	.4byte	.LLST18
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.2byte	0x13e
	.4byte	0x4c
	.4byte	.LLST19
	.uleb128 0x2e
	.4byte	.LASF67
	.4byte	0x6e3
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5324
	.uleb128 0x30
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x692
	.uleb128 0x31
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x162
	.4byte	0xd9
	.4byte	.LLST20
	.uleb128 0x31
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x163
	.4byte	0xd9
	.4byte	.LLST21
	.byte	0
	.uleb128 0x29
	.4byte	.LVL49
	.4byte	0x13ce
	.4byte	0x6c2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x159
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5324
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL56
	.4byte	0x3eb
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0x6e3
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0x6d3
	.uleb128 0x23
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x17a
	.4byte	0x4c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x884
	.uleb128 0x24
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x17a
	.4byte	0x4c
	.4byte	.LLST22
	.uleb128 0x32
	.string	"cpu"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x17a
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x17a
	.4byte	0x4c
	.4byte	.LLST23
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x4c
	.4byte	.LLST24
	.uleb128 0x31
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x17d
	.4byte	0x4c
	.4byte	.LLST25
	.uleb128 0x31
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x17e
	.4byte	0x4c
	.4byte	.LLST26
	.uleb128 0x31
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x17f
	.4byte	0x4c
	.4byte	.LLST27
	.uleb128 0x28
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x181
	.4byte	0x297
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"vd"
	.byte	0x1
	.2byte	0x189
	.4byte	0x314
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x7c7
	.uleb128 0x27
	.string	"no"
	.byte	0x1
	.2byte	0x1be
	.4byte	0x4c
	.4byte	.LLST29
	.uleb128 0x31
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x30e
	.4byte	.LLST30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL75
	.4byte	0x533
	.4byte	0x7e1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL77
	.4byte	0x5ee
	.4byte	0x807
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL80
	.4byte	0x3a9
	.4byte	0x821
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL85
	.4byte	0x5ee
	.4byte	0x847
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL88
	.4byte	0x3a9
	.4byte	0x861
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL93
	.4byte	0x5ee
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x107
	.4byte	0xce
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x935
	.uleb128 0x24
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x107
	.4byte	0x4c
	.4byte	.LLST31
	.uleb128 0x32
	.string	"cpu"
	.byte	0x1
	.2byte	0x107
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x107
	.4byte	0xd9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x27
	.string	"vd"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x314
	.4byte	.LLST32
	.uleb128 0x29
	.4byte	.LVL119
	.4byte	0x13ad
	.4byte	0x8f0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x29
	.4byte	.LVL120
	.4byte	0x494
	.4byte	0x90a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL122
	.4byte	0x13b8
	.4byte	0x921
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL127
	.4byte	0x13b8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x119
	.4byte	0xce
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d8
	.uleb128 0x24
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x119
	.4byte	0x4c
	.4byte	.LLST33
	.uleb128 0x32
	.string	"cpu"
	.byte	0x1
	.2byte	0x119
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"vd"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x314
	.4byte	.LLST34
	.uleb128 0x29
	.4byte	.LVL133
	.4byte	0x13ad
	.4byte	0x993
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x29
	.4byte	.LVL134
	.4byte	0x494
	.4byte	0x9ad
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL136
	.4byte	0x13b8
	.4byte	0x9c4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL141
	.4byte	0x13b8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x2b0
	.4byte	0xce
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5c
	.uleb128 0x24
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x2b0
	.4byte	0x147
	.4byte	.LLST35
	.uleb128 0x24
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x2b0
	.4byte	0xd9
	.4byte	.LLST36
	.uleb128 0x27
	.string	"vd"
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x314
	.4byte	.LLST37
	.uleb128 0x31
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x2b8
	.4byte	0x7e
	.4byte	.LLST38
	.uleb128 0x29
	.4byte	.LVL148
	.4byte	0x13ad
	.4byte	0xa48
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL156
	.4byte	0x13b8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x2fd
	.4byte	0x4c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa87
	.uleb128 0x24
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x2fd
	.4byte	0x147
	.4byte	.LLST39
	.byte	0
	.uleb128 0x34
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x302
	.4byte	0x4c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab2
	.uleb128 0x24
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x302
	.4byte	0x147
	.4byte	.LLST40
	.byte	0
	.uleb128 0x34
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x312
	.4byte	0xce
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5e
	.uleb128 0x24
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x312
	.4byte	0x147
	.4byte	.LLST41
	.uleb128 0x31
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x316
	.4byte	0x4c
	.4byte	.LLST42
	.uleb128 0x35
	.4byte	0x34e
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.2byte	0x322
	.4byte	0xb14
	.uleb128 0x2f
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x36
	.4byte	0x35e
	.4byte	.LLST43
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL166
	.4byte	0x13ad
	.4byte	0xb2b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x37
	.4byte	.LVL171
	.4byte	0x13d9
	.uleb128 0x29
	.4byte	.LVL175
	.4byte	0x13e5
	.4byte	0xb4a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL176
	.4byte	0x13b8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x329
	.4byte	0xce
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc90
	.uleb128 0x24
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x329
	.4byte	0x147
	.4byte	.LLST44
	.uleb128 0x31
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x32d
	.4byte	0x4c
	.4byte	.LLST45
	.uleb128 0x31
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x32e
	.4byte	0xd9
	.4byte	.LLST46
	.uleb128 0x2e
	.4byte	.LASF67
	.4byte	0xca0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5410
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xbfd
	.uleb128 0x27
	.string	"svd"
	.byte	0x1
	.2byte	0x333
	.4byte	0x30e
	.4byte	.LLST47
	.uleb128 0x2b
	.4byte	.LVL185
	.4byte	0x13ce
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x334
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5410
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x34e
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.2byte	0x347
	.4byte	0xc25
	.uleb128 0x2f
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.uleb128 0x36
	.4byte	0x35e
	.4byte	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL181
	.4byte	0x13ad
	.4byte	0xc3c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x29
	.4byte	.LVL192
	.4byte	0x13d9
	.4byte	0xc4f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x29
	.4byte	.LVL197
	.4byte	0x13b8
	.4byte	0xc66
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x29
	.4byte	.LVL199
	.4byte	0x13f0
	.4byte	0xc7c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x24
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL200
	.4byte	0x13b8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0xca0
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0xc90
	.uleb128 0x34
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x218
	.4byte	0xce
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb9
	.uleb128 0x24
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x218
	.4byte	0x4c
	.4byte	.LLST49
	.uleb128 0x24
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x218
	.4byte	0x4c
	.4byte	.LLST50
	.uleb128 0x24
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x218
	.4byte	0x7e
	.4byte	.LLST51
	.uleb128 0x24
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x218
	.4byte	0x7e
	.4byte	.LLST52
	.uleb128 0x24
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x218
	.4byte	0x10c
	.4byte	.LLST53
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.2byte	0x219
	.4byte	0x94
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x33
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x219
	.4byte	0xfb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x21b
	.4byte	0x152
	.4byte	.LLST54
	.uleb128 0x31
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x21c
	.4byte	0x4c
	.4byte	.LLST55
	.uleb128 0x27
	.string	"cpu"
	.byte	0x1
	.2byte	0x245
	.4byte	0x4c
	.4byte	.LLST56
	.uleb128 0x31
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x247
	.4byte	0x4c
	.4byte	.LLST57
	.uleb128 0x27
	.string	"vd"
	.byte	0x1
	.2byte	0x24f
	.4byte	0x314
	.4byte	.LLST58
	.uleb128 0x35
	.4byte	0x34e
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.2byte	0x245
	.4byte	0xda3
	.uleb128 0x2f
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.uleb128 0x36
	.4byte	0x35e
	.4byte	.LLST56
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0xe3f
	.uleb128 0x31
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x259
	.4byte	0x30e
	.4byte	.LLST60
	.uleb128 0x29
	.4byte	.LVL234
	.4byte	0x13fb
	.4byte	0xdd3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x29
	.4byte	.LVL237
	.4byte	0x13b8
	.4byte	0xdea
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x29
	.4byte	.LVL238
	.4byte	0x1406
	.4byte	0xdff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.4byte	.LVL242
	.4byte	0x1411
	.4byte	0xe1e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL248
	.4byte	0x141a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	shared_intr_isr
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL213
	.4byte	0x13c3
	.4byte	0xe59
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x804
	.byte	0
	.uleb128 0x29
	.4byte	.LVL216
	.4byte	0x13ad
	.4byte	0xe70
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x29
	.4byte	.LVL218
	.4byte	0x6e8
	.4byte	0xe98
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL221
	.4byte	0x13b8
	.4byte	0xeaf
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x29
	.4byte	.LVL222
	.4byte	0x1406
	.4byte	0xec4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.4byte	.LVL226
	.4byte	0x494
	.4byte	0xee0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.4byte	.LVL229
	.4byte	0x13b8
	.4byte	0xef7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x29
	.4byte	.LVL230
	.4byte	0x1406
	.4byte	0xf0c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.4byte	.LVL253
	.4byte	0x141a
	.4byte	0xf2d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL255
	.4byte	0x1425
	.4byte	0xf43
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x24
	.byte	0
	.uleb128 0x29
	.4byte	.LVL257
	.4byte	0x13d9
	.4byte	0xf65
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.4byte	.LVL259
	.4byte	0x13e5
	.4byte	0xf7b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x4
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x24
	.byte	0
	.uleb128 0x29
	.4byte	.LVL260
	.4byte	0xb5e
	.4byte	0xf90
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.4byte	.LVL261
	.4byte	0x13b8
	.4byte	0xfa7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL262
	.4byte	0x1406
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x147
	.uleb128 0x34
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x2a6
	.4byte	0xce
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1055
	.uleb128 0x24
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x4c
	.4byte	.LLST61
	.uleb128 0x33
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x10c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.string	"arg"
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x94
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x33
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x2a6
	.4byte	0xfb9
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2b
	.4byte	.LVL276
	.4byte	0xca5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x2c4
	.4byte	0xce
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1185
	.uleb128 0x24
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x147
	.4byte	.LLST62
	.uleb128 0x31
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x2c6
	.4byte	0xd9
	.4byte	.LLST63
	.uleb128 0x2e
	.4byte	.LASF67
	.4byte	0x1195
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5390
	.uleb128 0x35
	.4byte	0x34e
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x10c6
	.uleb128 0x2f
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.uleb128 0x36
	.4byte	0x35e
	.4byte	.LLST64
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x1129
	.uleb128 0x27
	.string	"svd"
	.byte	0x1
	.2byte	0x2cf
	.4byte	0x30e
	.4byte	.LLST65
	.uleb128 0x31
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x30e
	.4byte	.LLST66
	.uleb128 0x29
	.4byte	.LVL285
	.4byte	0x13ce
	.4byte	0x111f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2d1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5390
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x37
	.4byte	.LVL286
	.4byte	0x1406
	.byte	0
	.uleb128 0x29
	.4byte	.LVL281
	.4byte	0x13ad
	.4byte	0x1140
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x29
	.4byte	.LVL282
	.4byte	0xb5e
	.4byte	0x1154
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL294
	.4byte	0x141a
	.uleb128 0x29
	.4byte	.LVL295
	.4byte	0x13b8
	.4byte	0x1174
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL296
	.4byte	0x1406
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xab
	.4byte	0x1195
	.uleb128 0x10
	.4byte	0x9d
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x1185
	.uleb128 0x38
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x352
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1212
	.uleb128 0x31
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x354
	.4byte	0x4c
	.4byte	.LLST67
	.uleb128 0x27
	.string	"cpu"
	.byte	0x1
	.2byte	0x355
	.4byte	0x4c
	.4byte	.LLST68
	.uleb128 0x31
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x356
	.4byte	0x4c
	.4byte	.LLST69
	.uleb128 0x35
	.4byte	0x34e
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.2byte	0x355
	.4byte	0x1208
	.uleb128 0x2f
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.uleb128 0x36
	.4byte	0x35e
	.4byte	.LLST68
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL304
	.4byte	0x1431
	.byte	0
	.uleb128 0x38
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x365
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x127a
	.uleb128 0x27
	.string	"cpu"
	.byte	0x1
	.2byte	0x367
	.4byte	0x4c
	.4byte	.LLST71
	.uleb128 0x31
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x368
	.4byte	0x4c
	.4byte	.LLST72
	.uleb128 0x35
	.4byte	0x34e
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.2byte	0x367
	.4byte	0x1270
	.uleb128 0x2f
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.uleb128 0x36
	.4byte	0x35e
	.4byte	.LLST71
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LVL310
	.4byte	0x1431
	.byte	0
	.uleb128 0x39
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x37a
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12af
	.uleb128 0x33
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x37a
	.4byte	0x5e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LVL313
	.4byte	0x13e5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x37e
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e4
	.uleb128 0x33
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x37e
	.4byte	0x5e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LVL315
	.4byte	0x13f0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.string	"TAG"
	.byte	0x1
	.byte	0x23
	.4byte	0xb2
	.uleb128 0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+5180
	.sleb128 0
	.uleb128 0xf
	.4byte	0x21a
	.4byte	0x1306
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x1f
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF104
	.byte	0x1
	.byte	0x5d
	.4byte	0x1317
	.uleb128 0x5
	.byte	0x3
	.4byte	int_desc
	.uleb128 0x7
	.4byte	0x12f6
	.uleb128 0x3a
	.4byte	.LASF105
	.byte	0x1
	.byte	0xab
	.4byte	0x314
	.uleb128 0x5
	.byte	0x3
	.4byte	vector_desc_head
	.uleb128 0xf
	.4byte	0x7e
	.4byte	0x133d
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF106
	.byte	0x1
	.byte	0xae
	.4byte	0x132d
	.uleb128 0x5
	.byte	0x3
	.4byte	non_iram_int_mask
	.uleb128 0x3a
	.4byte	.LASF107
	.byte	0x1
	.byte	0xb0
	.4byte	0x132d
	.uleb128 0x5
	.byte	0x3
	.4byte	non_iram_int_disabled
	.uleb128 0xf
	.4byte	0xd9
	.4byte	0x136f
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x1
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF108
	.byte	0x1
	.byte	0xb1
	.4byte	0x135f
	.uleb128 0x5
	.byte	0x3
	.4byte	non_iram_int_disabled_flag
	.uleb128 0x3a
	.4byte	.LASF109
	.byte	0x1
	.byte	0xb7
	.4byte	0x101
	.uleb128 0x5
	.byte	0x3
	.4byte	spinlock
	.uleb128 0xf
	.4byte	0x342
	.4byte	0x13a1
	.uleb128 0x10
	.4byte	0x9d
	.byte	0x3f
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x132
	.4byte	0x1391
	.uleb128 0x3c
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x7
	.byte	0xda
	.uleb128 0x3c
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x7
	.byte	0xd9
	.uleb128 0x3c
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xa
	.byte	0x37
	.uleb128 0x3c
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xb
	.byte	0x29
	.uleb128 0x3d
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0xc
	.2byte	0x21b
	.uleb128 0x3c
	.4byte	.LASF115
	.4byte	.LASF115
	.byte	0xd
	.byte	0x54
	.uleb128 0x3c
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0xd
	.byte	0x5f
	.uleb128 0x3c
	.4byte	.LASF117
	.4byte	.LASF117
	.byte	0xe
	.byte	0x65
	.uleb128 0x3c
	.4byte	.LASF118
	.4byte	.LASF118
	.byte	0xe
	.byte	0x5a
	.uleb128 0x3e
	.4byte	.LASF127
	.4byte	.LASF127
	.uleb128 0x3c
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0xd
	.byte	0x49
	.uleb128 0x3d
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0xf
	.2byte	0x2bf
	.uleb128 0x3c
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0xe
	.byte	0x47
	.uleb128 0x3f
	.uleb128 0xd
	.byte	0x9e
	.uleb128 0xb
	.byte	0x69
	.byte	0x6e
	.byte	0x74
	.byte	0x72
	.byte	0x5f
	.byte	0x61
	.byte	0x6c
	.byte	0x6c
	.byte	0x6f
	.byte	0x63
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x17
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x78
	.sleb128 8
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	.LVL6
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
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
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL57
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
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL44
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL44
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL63
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x6
	.byte	0x9
	.byte	0xee
	.byte	0x24
	.byte	0x9
	.byte	0xff
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL76
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL87
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL73
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL79
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL73
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL73
	.4byte	.LVL87
	.2byte	0x6
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL102
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x6
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x6
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL76
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL118
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL132
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL146
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL147
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
	.4byte	.LFE27
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL149
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL165
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173
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
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL169
	.4byte	.LVL171-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL172
	.4byte	.LVL175-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL179
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL174
	.4byte	.LVL175-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL179
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL180
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL195
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL184
	.4byte	.LVL185-1
	.2byte	0xf
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x6
	.byte	0x9
	.byte	0xfb
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL188
	.4byte	.LVL192-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL193
	.4byte	.LVL197-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL198
	.4byte	.LVL199-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL181
	.4byte	.LVL190
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LVL192-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL183
	.4byte	.LVL185-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL196
	.4byte	.LVL197-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL198
	.4byte	.LVL199-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL203
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL240
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL258
	.4byte	.LVL263
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL267
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL268
	.4byte	.LVL269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL272
	.4byte	.LVL273
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL274
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL203
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL205
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL203
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL244
	.4byte	.LVL247
	.2byte	0x2
	.byte	0x78
	.sleb128 4
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL250
	.4byte	.LVL263
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL203
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL243
	.4byte	.LVL247
	.2byte	0x2
	.byte	0x78
	.sleb128 8
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL251
	.4byte	.LVL263
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL203
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL245
	.4byte	.LVL247
	.2byte	0x2
	.byte	0x78
	.sleb128 12
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL254
	.4byte	.LVL263
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL204
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL215
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL249
	.4byte	.LVL256
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL263
	.4byte	.LVL273
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL273
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL204
	.4byte	.LVL207
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL227
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL263
	.4byte	.LVL273
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL273
	.4byte	.LFE25
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL217
	.4byte	.LVL218-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL218-1
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	.LVL249
	.4byte	.LVL256
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL219
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL220
	.4byte	.LVL224
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL225
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL249
	.4byte	.LVL256
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL228
	.4byte	.LVL232
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL233
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL249
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL252
	.4byte	.LVL256
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL236
	.4byte	.LVL240
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL241
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL275
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL277
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL278
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL298
	.4byte	.LVL299
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL301
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL279
	.4byte	.LVL292
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL298
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL280
	.4byte	.LVL281-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL300
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL284
	.4byte	.LVL285-1
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL285
	.4byte	.LVL286-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x2
	.byte	0x7a
	.sleb128 20
	.4byte	.LVL288
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL283
	.4byte	.LVL285
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL285
	.4byte	.LVL286-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL305
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL302
	.4byte	.LVL304-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL304
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL303
	.4byte	.LVL304-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL304
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL308
	.4byte	.LVL310-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL309
	.4byte	.LVL310-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL310
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xc4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	0
	.4byte	0
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF105:
	.string	"vector_desc_head"
.LASF56:
	.string	"prev"
.LASF19:
	.string	"count"
.LASF92:
	.string	"intrstatusmask"
.LASF117:
	.string	"malloc"
.LASF76:
	.string	"bestSharedCt"
.LASF49:
	.string	"next"
.LASF47:
	.string	"statusreg"
.LASF75:
	.string	"bestLevel"
.LASF63:
	.string	"sh_vec"
.LASF52:
	.string	"intno"
.LASF41:
	.string	"type"
.LASF8:
	.string	"long long unsigned int"
.LASF101:
	.string	"esp_intr_noniram_enable"
.LASF80:
	.string	"esp_intr_mark_shared"
.LASF62:
	.string	"shared_intr_isr"
.LASF71:
	.string	"in_iram_flag"
.LASF42:
	.string	"cpuflags"
.LASF118:
	.string	"free"
.LASF120:
	.string	"xthal_set_intclear"
.LASF116:
	.string	"xt_ints_off"
.LASF108:
	.string	"non_iram_int_disabled_flag"
.LASF30:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF77:
	.string	"empty_vect_desc"
.LASF59:
	.string	"int_has_handler"
.LASF109:
	.string	"spinlock"
.LASF114:
	.string	"intr_matrix_set"
.LASF110:
	.string	"vTaskEnterCritical"
.LASF34:
	.string	"INTDESC_SPECIAL"
.LASF111:
	.string	"vTaskExitCritical"
.LASF12:
	.string	"long int"
.LASF100:
	.string	"esp_intr_noniram_disable"
.LASF78:
	.string	"svdesc"
.LASF124:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF20:
	.string	"portMUX_TYPE"
.LASF112:
	.string	"heap_caps_malloc"
.LASF65:
	.string	"newvd"
.LASF5:
	.string	"__uint32_t"
.LASF85:
	.string	"mask"
.LASF72:
	.string	"desc_in_iram_flag"
.LASF81:
	.string	"esp_intr_reserve"
.LASF6:
	.string	"unsigned int"
.LASF45:
	.string	"disabled"
.LASF33:
	.string	"INTDESC_RESVD"
.LASF35:
	.string	"int_desc_flag_t"
.LASF14:
	.string	"long unsigned int"
.LASF38:
	.string	"INTTP_NA"
.LASF86:
	.string	"esp_intr_get_intno"
.LASF25:
	.string	"intr_handle_t"
.LASF40:
	.string	"level"
.LASF54:
	.string	"xt_handler_table_entry"
.LASF79:
	.string	"is_int_ram"
.LASF90:
	.string	"esp_intr_alloc_intrstatus"
.LASF32:
	.string	"INTDESC_NORMAL"
.LASF21:
	.string	"intr_handler_t"
.LASF36:
	.string	"INTTP_LEVEL"
.LASF104:
	.string	"int_desc"
.LASF125:
	.string	"xPortGetCoreID"
.LASF11:
	.string	"ptrdiff_t"
.LASF55:
	.string	"handler"
.LASF29:
	.string	"ESP_LOG_INFO"
.LASF119:
	.string	"xt_set_interrupt_handler"
.LASF46:
	.string	"source"
.LASF13:
	.string	"sizetype"
.LASF126:
	.string	"_xt_interrupt_table"
.LASF69:
	.string	"is_vect_desc_usable"
.LASF60:
	.string	"intr"
.LASF95:
	.string	"esp_intr_free"
.LASF102:
	.string	"ets_isr_unmask"
.LASF37:
	.string	"INTTP_EDGE"
.LASF58:
	.string	"find_desc_for_int"
.LASF115:
	.string	"xt_ints_on"
.LASF84:
	.string	"is_in_iram"
.LASF53:
	.string	"shared_vec_info"
.LASF88:
	.string	"esp_intr_enable"
.LASF61:
	.string	"insert_vector_desc"
.LASF106:
	.string	"non_iram_int_mask"
.LASF107:
	.string	"non_iram_int_disabled"
.LASF17:
	.string	"_Bool"
.LASF9:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF43:
	.string	"int_desc_t"
.LASF39:
	.string	"int_type_t"
.LASF122:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF44:
	.string	"shared_vector_desc_t"
.LASF2:
	.string	"short int"
.LASF127:
	.string	"memset"
.LASF93:
	.string	"ret_handle"
.LASF22:
	.string	"intr_handle_data_t"
.LASF27:
	.string	"ESP_LOG_ERROR"
.LASF67:
	.string	"__func__"
.LASF91:
	.string	"intrstatusreg"
.LASF23:
	.string	"vector_desc"
.LASF103:
	.string	"ets_isr_mask"
.LASF50:
	.string	"vector_desc_t"
.LASF10:
	.string	"uint32_t"
.LASF18:
	.string	"owner"
.LASF64:
	.string	"get_desc_for_int"
.LASF26:
	.string	"ESP_LOG_NONE"
.LASF15:
	.string	"char"
.LASF31:
	.string	"ESP_LOG_VERBOSE"
.LASF123:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/intr_alloc.c"
.LASF97:
	.string	"prevsvd"
.LASF74:
	.string	"best"
.LASF121:
	.string	"abort"
.LASF4:
	.string	"__int32_t"
.LASF98:
	.string	"oldint"
.LASF57:
	.string	"to_insert"
.LASF99:
	.string	"intmask"
.LASF3:
	.string	"short unsigned int"
.LASF94:
	.string	"esp_intr_alloc"
.LASF68:
	.string	"found"
.LASF48:
	.string	"statusmask"
.LASF28:
	.string	"ESP_LOG_WARN"
.LASF73:
	.string	"get_available_int"
.LASF16:
	.string	"esp_err_t"
.LASF87:
	.string	"esp_intr_get_cpu"
.LASF51:
	.string	"flags"
.LASF89:
	.string	"esp_intr_disable"
.LASF82:
	.string	"esp_intr_set_in_iram"
.LASF113:
	.string	"__assert_func"
.LASF96:
	.string	"free_shared_vector"
.LASF83:
	.string	"handle"
.LASF70:
	.string	"force"
.LASF66:
	.string	"find_desc_for_source"
.LASF24:
	.string	"shared_vector_desc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
