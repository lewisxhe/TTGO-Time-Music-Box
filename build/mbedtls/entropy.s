	.file	"entropy.c"
	.text
.Ltext0:
	.section	.text.mbedtls_entropy_source_self_test_check_bits,"ax",@progbits
	.align	4
	.type	mbedtls_entropy_source_self_test_check_bits, @function
mbedtls_entropy_source_self_test_check_bits:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/entropy.c"
	.loc 1 571 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 576 0
	movi.n	a8, 0
	.loc 1 573 0
	mov.n	a10, a8
	.loc 1 572 0
	movi	a11, 0xff
	.loc 1 576 0
	j	.L2
.LVL2:
.L3:
	.loc 1 578 0 discriminator 3
	add.n	a9, a2, a8
	l8ui	a9, a9, 0
	and	a11, a11, a9
.LVL3:
	.loc 1 579 0 discriminator 3
	or	a10, a10, a9
.LVL4:
	.loc 1 576 0 discriminator 3
	addi.n	a8, a8, 1
.LVL5:
.L2:
	.loc 1 576 0 is_stmt 0 discriminator 1
	bltu	a8, a3, .L3
	.loc 1 582 0 is_stmt 1
	movi	a2, -0xff
.LVL6:
	add.n	a11, a11, a2
.LVL7:
	movi.n	a8, 1
.LVL8:
	movi.n	a3, 0
.LVL9:
	mov.n	a2, a3
	moveqz	a2, a8, a11
	moveqz	a3, a8, a10
	.loc 1 583 0
	or	a2, a3, a2
	retw.n
.LFE12:
	.size	mbedtls_entropy_source_self_test_check_bits, .-mbedtls_entropy_source_self_test_check_bits
	.section	.text.entropy_dummy_source,"ax",@progbits
	.align	4
	.type	entropy_dummy_source, @function
entropy_dummy_source:
.LFB10:
	.loc 1 531 0
.LVL10:
	entry	sp, 32
.LCFI1:
	.loc 1 534 0
	mov.n	a12, a4
	movi.n	a11, 0x2a
	mov.n	a10, a3
	call8	memset
.LVL11:
	.loc 1 535 0
	s32i.n	a4, a5, 0
	.loc 1 538 0
	movi.n	a2, 0
.LVL12:
	retw.n
.LFE10:
	.size	entropy_dummy_source, .-entropy_dummy_source
	.section	.text.mbedtls_entropy_source_self_test_gather,"ax",@progbits
	.align	4
	.type	mbedtls_entropy_source_self_test_gather, @function
mbedtls_entropy_source_self_test_gather:
.LFB11:
	.loc 1 544 0
.LVL13:
	entry	sp, 48
.LCFI2:
.LVL14:
	.loc 1 547 0
	movi.n	a10, 0
	s32i.n	a10, sp, 0
.LVL15:
	.loc 1 548 0
	mov.n	a5, a3
	.loc 1 546 0
	mov.n	a4, a10
	.loc 1 550 0
	j	.L6
.LVL16:
.L9:
	.loc 1 552 0
	mov.n	a13, sp
	sub	a12, a3, a4
	add.n	a11, a2, a4
	movi.n	a10, 0
.LVL17:
	call8	mbedtls_hardware_poll
.LVL18:
	bnez.n	a10, .L7
	.loc 1 556 0
	l32i.n	a8, sp, 0
	add.n	a4, a4, a8
.LVL19:
	.loc 1 557 0
	addi.n	a5, a5, -1
.LVL20:
.L6:
	.loc 1 550 0
	movi.n	a9, 1
	movi.n	a8, 0
	movnez	a8, a9, a5
	extui	a8, a8, 0, 8
	bltu	a4, a3, .L8
	movi.n	a9, 0
.L8:
	bany	a8, a9, .L9
	.loc 1 560 0
	bgeu	a4, a3, .L7
	.loc 1 562 0
	movi.n	a10, 1
.LVL21:
.L7:
	.loc 1 566 0
	mov.n	a2, a10
.LVL22:
	retw.n
.LFE11:
	.size	mbedtls_entropy_source_self_test_gather, .-mbedtls_entropy_source_self_test_gather
	.section	.text.entropy_update,"ax",@progbits
	.align	4
	.type	entropy_update, @function
entropy_update:
.LFB3:
	.loc 1 182 0
.LVL23:
	entry	sp, 112
.LCFI3:
.LVL24:
	.loc 1 189 0
	movi.n	a6, 0x40
	bgeu	a6, a5, .L12
	.loc 1 192 0
	movi.n	a13, 0
	addi.n	a12, sp, 2
	mov.n	a11, a5
	mov.n	a10, a4
	call8	mbedtls_sha512_ret
.LVL25:
	mov.n	a6, a10
.LVL26:
	bnez.n	a10, .L13
	.loc 1 198 0
	addi.n	a4, sp, 2
.LVL27:
	.loc 1 199 0
	movi.n	a5, 0x40
.LVL28:
.L12:
	.loc 1 202 0
	s8i	a3, sp, 0
	.loc 1 203 0
	s8i	a5, sp, 1
	.loc 1 211 0
	l32i.n	a3, a2, 0
.LVL29:
	bnez.n	a3, .L14
	.loc 1 211 0 is_stmt 0 discriminator 1
	movi.n	a11, 0
	addi.n	a10, a2, 8
	call8	mbedtls_sha512_starts_ret
.LVL30:
	mov.n	a6, a10
.LVL31:
	bnez.n	a10, .L13
.LVL32:
.L14:
	.loc 1 215 0 is_stmt 1
	movi.n	a3, 1
	s32i.n	a3, a2, 0
	.loc 1 216 0
	addi.n	a3, a2, 8
	movi.n	a12, 2
	mov.n	a11, sp
	mov.n	a10, a3
	call8	mbedtls_sha512_update_ret
.LVL33:
	mov.n	a6, a10
.LVL34:
	bnez.n	a10, .L13
	.loc 1 218 0
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a3
	call8	mbedtls_sha512_update_ret
.LVL35:
	mov.n	a6, a10
.LVL36:
.L13:
	.loc 1 231 0
	movi.n	a11, 0x40
	addi.n	a10, sp, 2
	call8	mbedtls_platform_zeroize
.LVL37:
	.loc 1 234 0
	mov.n	a2, a6
.LVL38:
	retw.n
.LFE3:
	.size	entropy_update, .-entropy_update
	.section	.text.entropy_gather_internal,"ax",@progbits
	.align	4
	.type	entropy_gather_internal, @function
entropy_gather_internal:
.LFB5:
	.loc 1 260 0
.LVL39:
	entry	sp, 176
.LCFI4:
.LVL40:
	.loc 1 265 0
	l32i	a3, a2, 224
	beqz.n	a3, .L22
	movi.n	a4, 0
	mov.n	a3, a4
	j	.L17
.LVL41:
.L21:
	.loc 1 273 0
	addx4	a9, a3, a3
	slli	a8, a9, 2
	add.n	a8, a2, a8
	l32i	a5, a8, 244
.LVL42:
	bnei	a5, 1, .L18
	.loc 1 274 0
	movi.n	a4, 1
.LVL43:
.L18:
	.loc 1 276 0
	movi.n	a5, 0
	s32i	a5, sp, 128
	.loc 1 277 0
	slli	a9, a3, 2
	add.n	a9, a9, a3
	slli	a8, a9, 2
	add.n	a8, a2, a8
	l32i	a5, a8, 228
	movi	a12, 0x80
	add.n	a13, sp, a12
	mov.n	a11, sp
	l32i	a10, a8, 232
	callx8	a5
.LVL44:
	mov.n	a5, a10
.LVL45:
	bnez.n	a10, .L19
	.loc 1 286 0
	l32i	a13, sp, 128
	beqz.n	a13, .L20
	.loc 1 288 0
	mov.n	a12, sp
	extui	a11, a3, 0, 8
	mov.n	a10, a2
	call8	entropy_update
.LVL46:
	mov.n	a5, a10
.LVL47:
	bnez.n	a10, .L24
	.loc 1 291 0
	slli	a9, a3, 2
	add.n	a9, a9, a3
	slli	a8, a9, 2
	add.n	a9, a2, a8
	movi	a8, 0xec
	add.n	a8, a9, a8
	l32i.n	a10, a8, 0
	l32i	a9, sp, 128
	add.n	a9, a10, a9
	s32i.n	a9, a8, 0
.L20:
	.loc 1 271 0 discriminator 2
	addi.n	a3, a3, 1
.LVL48:
.L17:
	.loc 1 271 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 224
	blt	a3, a8, .L21
	.loc 1 295 0 is_stmt 1
	bnez.n	a4, .L19
	.loc 1 296 0
	movi	a5, -0x3d
.LVL49:
.L19:
	.loc 1 299 0
	movi	a11, 0x80
	mov.n	a10, sp
	call8	mbedtls_platform_zeroize
.LVL50:
	.loc 1 301 0
	mov.n	a2, a5
.LVL51:
	retw.n
.LVL52:
.L22:
	.loc 1 266 0
	movi	a2, -0x40
.LVL53:
	retw.n
.LVL54:
.L24:
	.loc 1 290 0
	mov.n	a2, a10
.LVL55:
	.loc 1 302 0
	retw.n
.LFE5:
	.size	entropy_gather_internal, .-entropy_gather_internal
	.section	.text.mbedtls_entropy_free,"ax",@progbits
	.align	4
	.global	mbedtls_entropy_free
	.type	mbedtls_entropy_free, @function
mbedtls_entropy_free:
.LFB1:
	.loc 1 123 0
.LVL56:
	entry	sp, 32
.LCFI5:
	.loc 1 131 0
	addi.n	a10, a2, 8
	call8	mbedtls_sha512_free
.LVL57:
	.loc 1 138 0
	movi.n	a3, 0
	s32i	a3, a2, 224
	.loc 1 139 0
	movi	a11, 0x190
	movi	a10, 0xe4
	add.n	a10, a2, a10
	call8	mbedtls_platform_zeroize
.LVL58:
	.loc 1 140 0
	s32i.n	a3, a2, 0
	retw.n
.LFE1:
	.size	mbedtls_entropy_free, .-mbedtls_entropy_free
	.section	.text.mbedtls_entropy_add_source,"ax",@progbits
	.align	4
	.global	mbedtls_entropy_add_source
	.type	mbedtls_entropy_add_source, @function
mbedtls_entropy_add_source:
.LFB2:
	.loc 1 146 0
.LVL59:
	entry	sp, 32
.LCFI6:
.LVL60:
	.loc 1 154 0
	l32i	a9, a2, 224
.LVL61:
	.loc 1 155 0
	movi.n	a8, 0x13
	blt	a8, a9, .L29
	.loc 1 161 0
	slli	a10, a9, 2
	add.n	a10, a10, a9
	slli	a8, a10, 2
	add.n	a8, a2, a8
	s32i	a3, a8, 228
	.loc 1 162 0
	s32i	a4, a8, 232
	.loc 1 163 0
	s32i	a5, a8, 240
	.loc 1 164 0
	s32i	a6, a8, 244
	.loc 1 166 0
	addi.n	a9, a9, 1
.LVL62:
	s32i	a9, a2, 224
	.loc 1 147 0
	movi.n	a2, 0
.LVL63:
	retw.n
.LVL64:
.L29:
	.loc 1 157 0
	movi	a2, -0x3e
.LVL65:
.L28:
	.loc 1 175 0
	retw.n
.LFE2:
	.size	mbedtls_entropy_add_source, .-mbedtls_entropy_add_source
	.section	.text.mbedtls_entropy_init,"ax",@progbits
	.literal_position
	.literal .LC0, mbedtls_hardware_poll
	.align	4
	.global	mbedtls_entropy_init
	.type	mbedtls_entropy_init, @function
mbedtls_entropy_init:
.LFB0:
	.loc 1 66 0
.LVL66:
	entry	sp, 32
.LCFI7:
	.loc 1 67 0
	movi.n	a3, 0
	s32i	a3, a2, 224
	.loc 1 68 0
	movi	a12, 0x190
	mov.n	a11, a3
	movi	a10, 0xe4
	add.n	a10, a2, a10
	call8	memset
.LVL67:
	.loc 1 74 0
	s32i.n	a3, a2, 0
	.loc 1 76 0
	addi.n	a10, a2, 8
	call8	mbedtls_sha512_init
.LVL68:
	.loc 1 109 0
	movi.n	a14, 1
	movi.n	a13, 0x20
	mov.n	a12, a3
	l32r	a11, .LC0
	mov.n	a10, a2
	call8	mbedtls_entropy_add_source
.LVL69:
	retw.n
.LFE0:
	.size	mbedtls_entropy_init, .-mbedtls_entropy_init
	.section	.text.mbedtls_entropy_update_manual,"ax",@progbits
	.align	4
	.global	mbedtls_entropy_update_manual
	.type	mbedtls_entropy_update_manual, @function
mbedtls_entropy_update_manual:
.LFB4:
	.loc 1 238 0
.LVL70:
	entry	sp, 32
.LCFI8:
	.loc 1 246 0
	mov.n	a13, a4
	mov.n	a12, a3
	movi.n	a11, 0x14
	mov.n	a10, a2
	call8	entropy_update
.LVL71:
	.loc 1 254 0
	mov.n	a2, a10
.LVL72:
	retw.n
.LFE4:
	.size	mbedtls_entropy_update_manual, .-mbedtls_entropy_update_manual
	.section	.text.mbedtls_entropy_gather,"ax",@progbits
	.align	4
	.global	mbedtls_entropy_gather
	.type	mbedtls_entropy_gather, @function
mbedtls_entropy_gather:
.LFB6:
	.loc 1 308 0
.LVL73:
	entry	sp, 32
.LCFI9:
	.loc 1 316 0
	mov.n	a10, a2
	call8	entropy_gather_internal
.LVL74:
	.loc 1 324 0
	mov.n	a2, a10
.LVL75:
	retw.n
.LFE6:
	.size	mbedtls_entropy_gather, .-mbedtls_entropy_gather
	.section	.text.mbedtls_entropy_func,"ax",@progbits
	.align	4
	.global	mbedtls_entropy_func
	.type	mbedtls_entropy_func, @function
mbedtls_entropy_func:
.LFB7:
	.loc 1 327 0
.LVL76:
	entry	sp, 96
.LCFI10:
.LVL77:
	.loc 1 332 0
	movi.n	a5, 0x40
	bltu	a5, a4, .L42
	movi.n	a8, 0
.LVL78:
.L39:
	.loc 1 357 0
	addi.n	a5, a8, 1
.LVL79:
	movi	a6, 0x100
	blt	a6, a8, .L43
	.loc 1 363 0
	mov.n	a10, a2
	call8	entropy_gather_internal
.LVL80:
	mov.n	a6, a10
.LVL81:
	bnez.n	a10, .L35
	movi.n	a11, 1
	movi.n	a9, 0
	j	.L36
.LVL82:
.L38:
	.loc 1 368 0
	slli	a10, a9, 2
	add.n	a10, a10, a9
	slli	a8, a10, 2
	add.n	a8, a2, a8
	l32i	a10, a8, 236
	l32i	a8, a8, 240
	bgeu	a10, a8, .L37
	.loc 1 369 0
	movi.n	a11, 0
.LVL83:
.L37:
	.loc 1 367 0 discriminator 2
	addi.n	a9, a9, 1
.LVL84:
.L36:
	.loc 1 367 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 224
	blt	a9, a8, .L38
	.loc 1 357 0 is_stmt 1
	mov.n	a8, a5
	.loc 1 371 0
	beqz.n	a11, .L39
	.loc 1 373 0
	movi.n	a12, 0x40
	movi.n	a11, 0
.LVL85:
	mov.n	a10, sp
	call8	memset
.LVL86:
	.loc 1 381 0
	addi.n	a5, a2, 8
.LVL87:
	mov.n	a11, sp
	mov.n	a10, a5
	call8	mbedtls_sha512_finish_ret
.LVL88:
	mov.n	a6, a10
.LVL89:
	bnez.n	a10, .L35
	.loc 1 387 0
	mov.n	a10, a5
	call8	mbedtls_sha512_free
.LVL90:
	.loc 1 388 0
	mov.n	a10, a5
	call8	mbedtls_sha512_init
.LVL91:
	.loc 1 389 0
	movi.n	a11, 0
	mov.n	a10, a5
	call8	mbedtls_sha512_starts_ret
.LVL92:
	mov.n	a6, a10
.LVL93:
	bnez.n	a10, .L35
	.loc 1 391 0
	movi.n	a12, 0x40
	mov.n	a11, sp
	mov.n	a10, a5
	call8	mbedtls_sha512_update_ret
.LVL94:
	mov.n	a6, a10
.LVL95:
	bnez.n	a10, .L35
	.loc 1 398 0
	movi.n	a13, 0
	mov.n	a12, sp
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	mbedtls_sha512_ret
.LVL96:
	mov.n	a6, a10
.LVL97:
	bnez.n	a10, .L35
	movi.n	a5, 0
	j	.L40
.LVL98:
.L41:
	.loc 1 425 0 discriminator 3
	addx4	a9, a5, a5
	slli	a8, a9, 2
	add.n	a8, a2, a8
	movi	a9, 0xec
	add.n	a8, a8, a9
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	.loc 1 424 0 discriminator 3
	addi.n	a5, a5, 1
.LVL99:
.L40:
	.loc 1 424 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 224
	blt	a5, a8, .L41
	.loc 1 427 0 is_stmt 1
	mov.n	a12, a4
	mov.n	a11, sp
	mov.n	a10, a3
	call8	memcpy
.LVL100:
	j	.L35
.LVL101:
.L43:
	.loc 1 359 0
	movi	a6, -0x3c
.LVL102:
.L35:
	.loc 1 432 0
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	mbedtls_platform_zeroize
.LVL103:
	.loc 1 439 0
	mov.n	a2, a6
.LVL104:
	retw.n
.LVL105:
.L42:
	.loc 1 333 0
	movi	a2, -0x3c
.LVL106:
	.loc 1 440 0
	retw.n
.LFE7:
	.size	mbedtls_entropy_func, .-mbedtls_entropy_func
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"wb"
	.section	.text.mbedtls_entropy_write_seed_file,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.align	4
	.global	mbedtls_entropy_write_seed_file
	.type	mbedtls_entropy_write_seed_file, @function
mbedtls_entropy_write_seed_file:
.LFB8:
	.loc 1 465 0
.LVL107:
	entry	sp, 96
.LCFI11:
.LVL108:
	.loc 1 470 0
	l32r	a11, .LC2
	mov.n	a10, a3
	call8	fopen
.LVL109:
	mov.n	a3, a10
.LVL110:
	beqz.n	a10, .L48
	.loc 1 473 0
	movi.n	a12, 0x40
	mov.n	a11, sp
	mov.n	a10, a2
	call8	mbedtls_entropy_func
.LVL111:
	mov.n	a2, a10
.LVL112:
	bnez.n	a10, .L47
	.loc 1 476 0
	mov.n	a13, a3
	movi.n	a12, 0x40
	movi.n	a11, 1
	mov.n	a10, sp
	call8	fwrite
.LVL113:
	beqi	a10, 64, .L47
	.loc 1 478 0
	movi	a2, -0x3f
.LVL114:
.L47:
	.loc 1 485 0
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	mbedtls_platform_zeroize
.LVL115:
	.loc 1 487 0
	mov.n	a10, a3
	call8	fclose
.LVL116:
	.loc 1 488 0
	retw.n
.LVL117:
.L48:
	.loc 1 471 0
	movi	a2, -0x3f
.LVL118:
	.loc 1 489 0
	retw.n
.LFE8:
	.size	mbedtls_entropy_write_seed_file, .-mbedtls_entropy_write_seed_file
	.section	.rodata.str1.4
	.align	4
.LC3:
	.string	"rb"
	.section	.text.mbedtls_entropy_update_seed_file,"ax",@progbits
	.literal_position
	.literal .LC4, .LC3
	.align	4
	.global	mbedtls_entropy_update_seed_file
	.type	mbedtls_entropy_update_seed_file, @function
mbedtls_entropy_update_seed_file:
.LFB9:
	.loc 1 492 0
.LVL119:
	entry	sp, 1056
.LCFI12:
.LVL120:
	.loc 1 498 0
	l32r	a11, .LC4
	mov.n	a10, a3
	call8	fopen
.LVL121:
	mov.n	a4, a10
.LVL122:
	beqz.n	a10, .L53
	.loc 1 501 0
	movi.n	a12, 2
	movi.n	a11, 0
	call8	fseek
.LVL123:
	.loc 1 502 0
	mov.n	a10, a4
	call8	ftell
.LVL124:
	mov.n	a5, a10
.LVL125:
	.loc 1 503 0
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a4
	call8	fseek
.LVL126:
	.loc 1 505 0
	movi	a8, 0x400
	bgeu	a8, a5, .L51
	.loc 1 506 0
	mov.n	a5, a8
.LVL127:
.L51:
	.loc 1 508 0
	mov.n	a13, a4
	mov.n	a12, a5
	movi.n	a11, 1
	mov.n	a10, sp
	call8	fread
.LVL128:
	bne	a5, a10, .L55
	.loc 1 511 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a2
	call8	mbedtls_entropy_update_manual
.LVL129:
	mov.n	a5, a10
.LVL130:
	j	.L52
.LVL131:
.L55:
	.loc 1 509 0
	movi	a5, -0x3f
.LVL132:
.L52:
	.loc 1 513 0
	mov.n	a10, a4
	call8	fclose
.LVL133:
	.loc 1 515 0
	movi	a11, 0x400
	mov.n	a10, sp
	call8	mbedtls_platform_zeroize
.LVL134:
	.loc 1 517 0
	bnez.n	a5, .L56
	.loc 1 520 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_entropy_write_seed_file
.LVL135:
	mov.n	a2, a10
.LVL136:
	retw.n
.LVL137:
.L53:
	.loc 1 499 0
	movi	a2, -0x3f
.LVL138:
	retw.n
.LVL139:
.L56:
	.loc 1 518 0
	mov.n	a2, a5
.LVL140:
	.loc 1 521 0
	retw.n
.LFE9:
	.size	mbedtls_entropy_update_seed_file, .-mbedtls_entropy_update_seed_file
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"  ENTROPY_BIAS test: "
	.align	4
.LC7:
	.string	"failed"
	.align	4
.LC9:
	.string	"passed"
	.section	.text.mbedtls_entropy_source_self_test,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC10, .LC9
	.align	4
	.global	mbedtls_entropy_source_self_test
	.type	mbedtls_entropy_source_self_test, @function
mbedtls_entropy_source_self_test:
.LFB13:
	.loc 1 597 0
.LVL141:
	entry	sp, 64
.LCFI13:
.LVL142:
	.loc 1 602 0
	beqz.n	a2, .L58
	.loc 1 603 0
	l32r	a10, .LC6
	call8	printf
.LVL143:
.L58:
	.loc 1 605 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	.loc 1 606 0
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	.loc 1 608 0
	movi.n	a11, 0x10
	mov.n	a10, sp
	call8	mbedtls_entropy_source_self_test_gather
.LVL144:
	mov.n	a3, a10
.LVL145:
	bnez.n	a10, .L59
	.loc 1 610 0
	movi.n	a11, 0x10
	add.n	a10, sp, a11
	call8	mbedtls_entropy_source_self_test_gather
.LVL146:
	mov.n	a3, a10
.LVL147:
	bnez.n	a10, .L59
	.loc 1 614 0
	movi.n	a11, 0x10
	mov.n	a10, sp
	call8	mbedtls_entropy_source_self_test_check_bits
.LVL148:
	mov.n	a3, a10
.LVL149:
	bnez.n	a10, .L59
	.loc 1 616 0
	movi.n	a11, 0x10
	add.n	a10, sp, a11
	call8	mbedtls_entropy_source_self_test_check_bits
.LVL150:
	mov.n	a3, a10
.LVL151:
	bnez.n	a10, .L59
	.loc 1 621 0
	movi.n	a12, 0x10
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	memcmp
.LVL152:
	movi.n	a8, 1
	moveqz	a3, a8, a10
.LVL153:
	extui	a3, a3, 0, 8
.LVL154:
.L59:
	.loc 1 624 0
	beqz.n	a2, .L60
	.loc 1 626 0
	beqz.n	a3, .L61
	.loc 1 627 0
	l32r	a10, .LC8
	call8	puts
.LVL155:
	j	.L62
.L61:
	.loc 1 629 0
	l32r	a10, .LC10
	call8	puts
.LVL156:
.L62:
	.loc 1 631 0
	movi.n	a10, 0xa
	call8	putchar
.LVL157:
.L60:
	.loc 1 634 0
	movi.n	a2, 0
.LVL158:
	movi.n	a8, 1
	movnez	a2, a8, a3
	.loc 1 635 0
	retw.n
.LFE13:
	.size	mbedtls_entropy_source_self_test, .-mbedtls_entropy_source_self_test
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"  ENTROPY test: "
	.section	.text.mbedtls_entropy_self_test,"ax",@progbits
	.literal_position
	.literal .LC12, .LC11
	.literal .LC13, entropy_dummy_source
	.literal .LC14, .LC7
	.literal .LC15, .LC9
	.align	4
	.global	mbedtls_entropy_self_test
	.type	mbedtls_entropy_self_test, @function
mbedtls_entropy_self_test:
.LFB14:
	.loc 1 645 0
.LVL159:
	entry	sp, 800
.LCFI14:
.LVL160:
	.loc 1 649 0
	movi.n	a3, 0x40
	mov.n	a12, a3
	movi.n	a11, 0
	addmi	a4, sp, 0x200
	addi	a10, a4, 120
	call8	memset
.LVL161:
	.loc 1 650 0
	mov.n	a12, a3
	movi.n	a11, 0
	movi	a10, 0xb8
	addmi	a5, sp, 0x200
	add.n	a10, a5, a10
	call8	memset
.LVL162:
	.loc 1 654 0
	beqz.n	a2, .L64
	.loc 1 655 0
	l32r	a10, .LC12
	call8	printf
.LVL163:
.L64:
	.loc 1 658 0
	mov.n	a10, sp
	call8	mbedtls_entropy_init
.LVL164:
	.loc 1 661 0
	mov.n	a10, sp
	call8	mbedtls_entropy_gather
.LVL165:
	mov.n	a4, a10
.LVL166:
	bnez.n	a10, .L65
	.loc 1 664 0
	movi.n	a14, 0
	movi.n	a13, 0x10
	mov.n	a12, a14
	l32r	a11, .LC13
	mov.n	a10, sp
	call8	mbedtls_entropy_add_source
.LVL167:
	mov.n	a4, a10
.LVL168:
	.loc 1 666 0
	bnez.n	a10, .L65
	.loc 1 669 0
	movi.n	a12, 0x40
	movi	a11, 0x278
	add.n	a11, sp, a11
	mov.n	a10, sp
	call8	mbedtls_entropy_update_manual
.LVL169:
	mov.n	a4, a10
.LVL170:
	bnez.n	a10, .L65
	movi.n	a3, 0
	j	.L66
.LVL171:
.L69:
	.loc 1 682 0
	movi.n	a12, 0x40
	movi	a11, 0x278
	add.n	a11, sp, a11
	mov.n	a10, sp
	call8	mbedtls_entropy_func
.LVL172:
	mov.n	a4, a10
.LVL173:
	bnez.n	a10, .L65
	movi.n	a10, 0
	j	.L67
.LVL174:
.L68:
	.loc 1 686 0 discriminator 3
	addmi	a4, sp, 0x200
	add.n	a9, a4, a10
	l8ui	a11, a9, 120
	movi	a8, 0xb8
	add.n	a8, a9, a8
	l8ui	a9, a8, 0
	or	a9, a11, a9
	s8i	a9, a8, 0
	.loc 1 685 0 discriminator 3
	addi.n	a10, a10, 1
.LVL175:
.L67:
	.loc 1 685 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x3f
	bgeu	a8, a10, .L68
	.loc 1 680 0 is_stmt 1 discriminator 2
	addi.n	a3, a3, 1
.LVL176:
.L66:
	.loc 1 680 0 is_stmt 0 discriminator 1
	bltui	a3, 8, .L69
	movi.n	a4, 0
	j	.L70
.LVL177:
.L71:
	.loc 1 691 0 is_stmt 1
	addmi	a5, sp, 0x200
	add.n	a3, a5, a4
	l8ui	a3, a3, 184
	beqz.n	a3, .L75
	.loc 1 689 0 discriminator 2
	addi.n	a4, a4, 1
.LVL178:
.L70:
	.loc 1 689 0 is_stmt 0 discriminator 1
	movi.n	a3, 0x3f
	bgeu	a3, a4, .L71
	.loc 1 699 0 is_stmt 1
	movi.n	a10, 0
	call8	mbedtls_entropy_source_self_test
.LVL179:
	mov.n	a4, a10
.LVL180:
	j	.L65
.LVL181:
.L75:
	.loc 1 693 0
	movi.n	a4, 1
.LVL182:
.L65:
	.loc 1 704 0
	mov.n	a10, sp
	call8	mbedtls_entropy_free
.LVL183:
	.loc 1 707 0
	beqz.n	a2, .L72
	.loc 1 709 0
	beqz.n	a4, .L73
	.loc 1 710 0
	l32r	a10, .LC14
	call8	puts
.LVL184:
	j	.L74
.L73:
	.loc 1 712 0
	l32r	a10, .LC15
	call8	puts
.LVL185:
.L74:
	.loc 1 714 0
	movi.n	a10, 0xa
	call8	putchar
.LVL186:
.L72:
	.loc 1 717 0
	movi.n	a2, 0
.LVL187:
	movi.n	a3, 1
	movnez	a2, a3, a4
	.loc 1 718 0
	retw.n
.LFE14:
	.size	mbedtls_entropy_self_test, .-mbedtls_entropy_self_test
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI1-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI2-.LFB11
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x70
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0xb0
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI5-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI6-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI7-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI8-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI9-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI10-.LFB7
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI11-.LFB8
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI12-.LFB9
	.byte	0xe
	.uleb128 0x420
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI13-.LFB13
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI14-.LFB14
	.byte	0xe
	.uleb128 0x320
	.align	4
.LEFDE28:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/entropy_poll.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
	.file 14 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1791
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF193
	.byte	0xc
	.4byte	.LASF194
	.4byte	.LASF195
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1e
	.4byte	0x6c
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x39
	.4byte	0x61
	.uleb128 0x5
	.byte	0xd8
	.byte	0x5
	.byte	0x37
	.4byte	0xb7
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x5
	.byte	0x39
	.4byte	0xb7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x5
	.byte	0x3a
	.4byte	0xce
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x5
	.byte	0x3b
	.4byte	0xde
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.byte	0x3c
	.4byte	0x25
	.byte	0xd0
	.byte	0
	.uleb128 0x7
	.4byte	0x73
	.4byte	0xc7
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	0x73
	.4byte	0xde
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	0x4c
	.4byte	0xee
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x3f
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x68
	.4byte	0x104
	.uleb128 0x9
	.byte	0x4
	.4byte	0x10a
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x128
	.uleb128 0xb
	.4byte	0x128
	.uleb128 0xb
	.4byte	0x12a
	.uleb128 0xb
	.4byte	0x2c
	.uleb128 0xb
	.4byte	0x130
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x5
	.byte	0x14
	.byte	0x6
	.byte	0x6e
	.4byte	0x17b
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x6
	.byte	0x70
	.4byte	0xf9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x6
	.byte	0x71
	.4byte	0x128
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x6
	.byte	0x72
	.4byte	0x2c
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x6
	.byte	0x73
	.4byte	0x2c
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x6
	.byte	0x74
	.4byte	0x25
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x76
	.4byte	0x136
	.uleb128 0xd
	.2byte	0x278
	.byte	0x6
	.byte	0x7b
	.4byte	0x1c0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x6
	.byte	0x7d
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x6
	.byte	0x7f
	.4byte	0xee
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x6
	.byte	0x83
	.4byte	0x25
	.byte	0xe0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x6
	.byte	0x84
	.4byte	0x1c0
	.byte	0xe4
	.byte	0
	.uleb128 0x7
	.4byte	0x17b
	.4byte	0x1d0
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x8f
	.4byte	0x186
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0xb
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0xc
	.4byte	0x1db
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x10
	.4byte	0x1fc
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF31
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x27
	.4byte	0x1fc
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x165
	.4byte	0x37
	.uleb128 0xf
	.byte	0x4
	.byte	0x8
	.byte	0x4a
	.4byte	0x239
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x8
	.byte	0x4c
	.4byte	0x20e
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x8
	.byte	0x4d
	.4byte	0x239
	.byte	0
	.uleb128 0x7
	.4byte	0x4c
	.4byte	0x249
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x8
	.byte	0x47
	.4byte	0x26a
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x8
	.byte	0x49
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x8
	.byte	0x4e
	.4byte	0x21a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x8
	.byte	0x4f
	.4byte	0x249
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0x53
	.4byte	0x1e6
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x9
	.byte	0x16
	.4byte	0x28b
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF41
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x18
	.byte	0x9
	.byte	0x2d
	.4byte	0x2e5
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x9
	.byte	0x2f
	.4byte	0x2e5
	.byte	0
	.uleb128 0x12
	.string	"_k"
	.byte	0x9
	.byte	0x30
	.4byte	0x25
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x9
	.byte	0x30
	.4byte	0x25
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x9
	.byte	0x30
	.4byte	0x25
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x9
	.byte	0x30
	.4byte	0x25
	.byte	0x10
	.uleb128 0x12
	.string	"_x"
	.byte	0x9
	.byte	0x31
	.4byte	0x2eb
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x292
	.uleb128 0x7
	.4byte	0x280
	.4byte	0x2fb
	.uleb128 0x8
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x24
	.byte	0x9
	.byte	0x35
	.4byte	0x374
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x9
	.byte	0x37
	.4byte	0x25
	.byte	0
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x9
	.byte	0x38
	.4byte	0x25
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x9
	.byte	0x39
	.4byte	0x25
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x9
	.byte	0x3a
	.4byte	0x25
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x9
	.byte	0x3b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x9
	.byte	0x3c
	.4byte	0x25
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x9
	.byte	0x3d
	.4byte	0x25
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x9
	.byte	0x3e
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x9
	.byte	0x3f
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF57
	.2byte	0x108
	.byte	0x9
	.byte	0x48
	.4byte	0x3b4
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x9
	.byte	0x49
	.4byte	0x3b4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x9
	.byte	0x4a
	.4byte	0x3b4
	.byte	0x80
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x9
	.byte	0x4c
	.4byte	0x280
	.2byte	0x100
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x9
	.byte	0x4f
	.4byte	0x280
	.2byte	0x104
	.byte	0
	.uleb128 0x7
	.4byte	0x128
	.4byte	0x3c4
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x8c
	.byte	0x9
	.byte	0x53
	.4byte	0x401
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x9
	.byte	0x54
	.4byte	0x401
	.byte	0
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x9
	.byte	0x55
	.4byte	0x25
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x9
	.byte	0x56
	.4byte	0x407
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x9
	.byte	0x57
	.4byte	0x41e
	.byte	0x88
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3c4
	.uleb128 0x7
	.4byte	0x417
	.4byte	0x417
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x41d
	.uleb128 0x15
	.uleb128 0x9
	.byte	0x4
	.4byte	0x374
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x8
	.byte	0x9
	.byte	0x73
	.4byte	0x449
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x9
	.byte	0x74
	.4byte	0x12a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x9
	.byte	0x75
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0xf0
	.byte	0x9
	.2byte	0x172
	.4byte	0x58f
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x9
	.2byte	0x176
	.4byte	0x25
	.byte	0
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x9
	.2byte	0x17b
	.4byte	0x7c4
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x9
	.2byte	0x17b
	.4byte	0x7c4
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x17b
	.4byte	0x7c4
	.byte	0xc
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x9
	.2byte	0x17d
	.4byte	0x25
	.byte	0x10
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x9
	.2byte	0x17f
	.4byte	0x6dd
	.byte	0x14
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0x9
	.2byte	0x181
	.4byte	0x25
	.byte	0x18
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x9
	.2byte	0x183
	.4byte	0x25
	.byte	0x1c
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x9
	.2byte	0x184
	.4byte	0x70e
	.byte	0x20
	.uleb128 0x18
	.string	"_mp"
	.byte	0x9
	.2byte	0x186
	.4byte	0x911
	.byte	0x24
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x188
	.4byte	0x922
	.byte	0x28
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x18a
	.4byte	0x25
	.byte	0x2c
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x18d
	.4byte	0x25
	.byte	0x30
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x18e
	.4byte	0x6dd
	.byte	0x34
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x9
	.2byte	0x190
	.4byte	0x928
	.byte	0x38
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x9
	.2byte	0x191
	.4byte	0x92e
	.byte	0x3c
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x9
	.2byte	0x192
	.4byte	0x6dd
	.byte	0x40
	.uleb128 0x17
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x195
	.4byte	0x93f
	.byte	0x44
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x9
	.2byte	0x199
	.4byte	0x401
	.byte	0x48
	.uleb128 0x17
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x19a
	.4byte	0x3c4
	.byte	0x4c
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0x9
	.2byte	0x19d
	.4byte	0x789
	.byte	0xd8
	.uleb128 0x17
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x19e
	.4byte	0x7c4
	.byte	0xe4
	.uleb128 0x17
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x19f
	.4byte	0x94b
	.byte	0xe8
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x1a0
	.4byte	0x6dd
	.byte	0xec
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x449
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x68
	.byte	0x9
	.byte	0xb3
	.4byte	0x6bf
	.uleb128 0x12
	.string	"_p"
	.byte	0x9
	.byte	0xb4
	.4byte	0x12a
	.byte	0
	.uleb128 0x12
	.string	"_r"
	.byte	0x9
	.byte	0xb5
	.4byte	0x25
	.byte	0x4
	.uleb128 0x12
	.string	"_w"
	.byte	0x9
	.byte	0xb6
	.4byte	0x25
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x9
	.byte	0xb7
	.4byte	0x53
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x9
	.byte	0xb8
	.4byte	0x53
	.byte	0xe
	.uleb128 0x12
	.string	"_bf"
	.byte	0x9
	.byte	0xb9
	.4byte	0x424
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0x9
	.byte	0xba
	.4byte	0x25
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0x9
	.byte	0xbd
	.4byte	0x58f
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0x9
	.byte	0xc1
	.4byte	0x128
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0x9
	.byte	0xc3
	.4byte	0x6ea
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x9
	.byte	0xc5
	.4byte	0x719
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0x9
	.byte	0xc8
	.4byte	0x73d
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x9
	.byte	0xc9
	.4byte	0x757
	.byte	0x30
	.uleb128 0x12
	.string	"_ub"
	.byte	0x9
	.byte	0xcc
	.4byte	0x424
	.byte	0x34
	.uleb128 0x12
	.string	"_up"
	.byte	0x9
	.byte	0xcd
	.4byte	0x12a
	.byte	0x3c
	.uleb128 0x12
	.string	"_ur"
	.byte	0x9
	.byte	0xce
	.4byte	0x25
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x9
	.byte	0xd1
	.4byte	0x75d
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x9
	.byte	0xd2
	.4byte	0x76d
	.byte	0x47
	.uleb128 0x12
	.string	"_lb"
	.byte	0x9
	.byte	0xd5
	.4byte	0x424
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x9
	.byte	0xd8
	.4byte	0x25
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x9
	.byte	0xd9
	.4byte	0x1f1
	.byte	0x54
	.uleb128 0x6
	.4byte	.LASF106
	.byte	0x9
	.byte	0xe0
	.4byte	0x275
	.byte	0x58
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0x9
	.byte	0xe2
	.4byte	0x26a
	.byte	0x5c
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0x9
	.byte	0xe3
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x6dd
	.uleb128 0xb
	.4byte	0x58f
	.uleb128 0xb
	.4byte	0x128
	.uleb128 0xb
	.4byte	0x6dd
	.uleb128 0xb
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6e3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF109
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6bf
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x70e
	.uleb128 0xb
	.4byte	0x58f
	.uleb128 0xb
	.4byte	0x128
	.uleb128 0xb
	.4byte	0x70e
	.uleb128 0xb
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x714
	.uleb128 0x19
	.4byte	0x6e3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6f0
	.uleb128 0xa
	.4byte	0x203
	.4byte	0x73d
	.uleb128 0xb
	.4byte	0x58f
	.uleb128 0xb
	.4byte	0x128
	.uleb128 0xb
	.4byte	0x203
	.uleb128 0xb
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x71f
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x757
	.uleb128 0xb
	.4byte	0x58f
	.uleb128 0xb
	.4byte	0x128
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x743
	.uleb128 0x7
	.4byte	0x4c
	.4byte	0x76d
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0x4c
	.4byte	0x77d
	.uleb128 0x8
	.4byte	0xc7
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x11d
	.4byte	0x595
	.uleb128 0x16
	.4byte	.LASF111
	.byte	0xc
	.byte	0x9
	.2byte	0x121
	.4byte	0x7be
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x9
	.2byte	0x123
	.4byte	0x7be
	.byte	0
	.uleb128 0x17
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x124
	.4byte	0x25
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x125
	.4byte	0x7c4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x789
	.uleb128 0x9
	.byte	0x4
	.4byte	0x77d
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x18
	.byte	0x9
	.2byte	0x13d
	.4byte	0x80c
	.uleb128 0x17
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x13e
	.4byte	0x80c
	.byte	0
	.uleb128 0x17
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x13f
	.4byte	0x80c
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x140
	.4byte	0x3e
	.byte	0xc
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x143
	.4byte	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.4byte	0x3e
	.4byte	0x81c
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.4byte	.LASF119
	.byte	0x10
	.byte	0x9
	.2byte	0x156
	.4byte	0x85e
	.uleb128 0x17
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x159
	.4byte	0x2e5
	.byte	0
	.uleb128 0x17
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x15a
	.4byte	0x25
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x15b
	.4byte	0x2e5
	.byte	0x8
	.uleb128 0x17
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x15c
	.4byte	0x85e
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2e5
	.uleb128 0x16
	.4byte	.LASF124
	.byte	0x50
	.byte	0x9
	.2byte	0x160
	.4byte	0x901
	.uleb128 0x17
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x163
	.4byte	0x6dd
	.byte	0
	.uleb128 0x17
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x164
	.4byte	0x26a
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x165
	.4byte	0x26a
	.byte	0xc
	.uleb128 0x17
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x166
	.4byte	0x26a
	.byte	0x14
	.uleb128 0x17
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x167
	.4byte	0x901
	.byte	0x1c
	.uleb128 0x17
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x168
	.4byte	0x25
	.byte	0x24
	.uleb128 0x17
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x169
	.4byte	0x26a
	.byte	0x28
	.uleb128 0x17
	.4byte	.LASF132
	.byte	0x9
	.2byte	0x16a
	.4byte	0x26a
	.byte	0x30
	.uleb128 0x17
	.4byte	.LASF133
	.byte	0x9
	.2byte	0x16b
	.4byte	0x26a
	.byte	0x38
	.uleb128 0x17
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x16c
	.4byte	0x26a
	.byte	0x40
	.uleb128 0x17
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x16d
	.4byte	0x26a
	.byte	0x48
	.byte	0
	.uleb128 0x7
	.4byte	0x6e3
	.4byte	0x911
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x81c
	.uleb128 0x1a
	.4byte	0x922
	.uleb128 0xb
	.4byte	0x58f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x917
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7ca
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2fb
	.uleb128 0x1a
	.4byte	0x93f
	.uleb128 0xb
	.4byte	0x25
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x945
	.uleb128 0x9
	.byte	0x4
	.4byte	0x934
	.uleb128 0x9
	.byte	0x4
	.4byte	0x864
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0xa
	.byte	0x34
	.4byte	0x77d
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x239
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c5
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.2byte	0x239
	.4byte	0x9c5
	.4byte	.LLST0
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x23a
	.4byte	0x2c
	.4byte	.LLST1
	.uleb128 0x1e
	.string	"set"
	.byte	0x1
	.2byte	0x23c
	.4byte	0x4c
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x23d
	.4byte	0x4c
	.4byte	.LLST3
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.2byte	0x23e
	.4byte	0x2c
	.4byte	.LLST4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x9cb
	.uleb128 0x19
	.4byte	0x4c
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x211
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa41
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x211
	.4byte	0x128
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x211
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.2byte	0x212
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x212
	.4byte	0x130
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x22
	.4byte	.LVL11
	.4byte	0x16a9
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x2a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x21f
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae0
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.2byte	0x21f
	.4byte	0x12a
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x21f
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x221
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x222
	.4byte	0x2c
	.4byte	.LLST8
	.uleb128 0x24
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x223
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x224
	.4byte	0x2c
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	.LVL18
	.4byte	0x16b4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF147
	.byte	0x1
	.byte	0xb4
	.4byte	0x25
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1e
	.uleb128 0x26
	.string	"ctx"
	.byte	0x1
	.byte	0xb4
	.4byte	0xc1e
	.4byte	.LLST10
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x1
	.byte	0xb4
	.4byte	0x4c
	.4byte	.LLST11
	.uleb128 0x27
	.4byte	.LASF141
	.byte	0x1
	.byte	0xb5
	.4byte	0x9c5
	.4byte	.LLST12
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.byte	0xb5
	.4byte	0x2c
	.4byte	.LLST13
	.uleb128 0x28
	.4byte	.LASF149
	.byte	0x1
	.byte	0xb7
	.4byte	0xc24
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.byte	0xb8
	.4byte	0xc34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x28
	.4byte	.LASF150
	.byte	0x1
	.byte	0xb9
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.byte	0xba
	.4byte	0x9c5
	.4byte	.LLST14
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.byte	0xbb
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x2b
	.4byte	.LASF153
	.byte	0x1
	.byte	0xe6
	.4byte	.L13
	.uleb128 0x2c
	.4byte	.LVL25
	.4byte	0x16bf
	.4byte	0xbad
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL30
	.4byte	0x16ca
	.4byte	0xbc6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL33
	.4byte	0x16d5
	.4byte	0xbe6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL35
	.4byte	0x16d5
	.4byte	0xc06
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL37
	.4byte	0x16e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x1d0
	.uleb128 0x7
	.4byte	0x4c
	.4byte	0xc34
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x4c
	.4byte	0xc44
	.uleb128 0x8
	.4byte	0xc7
	.byte	0x3f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x103
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd23
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.2byte	0x103
	.4byte	0xc1e
	.4byte	.LLST16
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x105
	.4byte	0x25
	.4byte	.LLST17
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.2byte	0x105
	.4byte	0x25
	.4byte	.LLST18
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x105
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.2byte	0x106
	.4byte	0xde
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x107
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x12a
	.4byte	.L19
	.uleb128 0x2f
	.4byte	.LVL44
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.4byte	0xce7
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL46
	.4byte	0xae0
	.4byte	0xd0b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x22
	.4byte	.LVL50
	.4byte	0x16e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF155
	.byte	0x1
	.byte	0x7a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd72
	.uleb128 0x31
	.string	"ctx"
	.byte	0x1
	.byte	0x7a
	.4byte	0xc1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	.LVL57
	.4byte	0x16eb
	.4byte	0xd59
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.uleb128 0x22
	.4byte	.LVL58
	.4byte	0x16e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 228
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x190
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF157
	.byte	0x1
	.byte	0x8f
	.4byte	0x25
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf8
	.uleb128 0x26
	.string	"ctx"
	.byte	0x1
	.byte	0x8f
	.4byte	0xc1e
	.4byte	.LLST20
	.uleb128 0x33
	.4byte	.LASF17
	.byte	0x1
	.byte	0x90
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x33
	.4byte	.LASF18
	.byte	0x1
	.byte	0x90
	.4byte	0x128
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x33
	.4byte	.LASF20
	.byte	0x1
	.byte	0x91
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x33
	.4byte	.LASF21
	.byte	0x1
	.byte	0x91
	.4byte	0x25
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x2a
	.string	"idx"
	.byte	0x1
	.byte	0x93
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.byte	0x93
	.4byte	0x25
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.LASF154
	.byte	0x1
	.byte	0xa8
	.4byte	.L28
	.byte	0
	.uleb128 0x30
	.4byte	.LASF156
	.byte	0x1
	.byte	0x41
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe72
	.uleb128 0x31
	.string	"ctx"
	.byte	0x1
	.byte	0x41
	.4byte	0xc1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2c
	.4byte	.LVL67
	.4byte	0x16f6
	.4byte	0xe3c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 228
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x190
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL68
	.4byte	0x16ff
	.4byte	0xe50
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.byte	0
	.uleb128 0x22
	.4byte	.LVL69
	.4byte	0xd72
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF158
	.byte	0x1
	.byte	0xec
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee3
	.uleb128 0x26
	.string	"ctx"
	.byte	0x1
	.byte	0xec
	.4byte	0xc1e
	.4byte	.LLST23
	.uleb128 0x33
	.4byte	.LASF141
	.byte	0x1
	.byte	0xed
	.4byte	0x9c5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.byte	0xed
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.byte	0xef
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LVL71
	.4byte	0xae0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x133
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2c
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.2byte	0x133
	.4byte	0xc1e
	.4byte	.LLST24
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.2byte	0x135
	.4byte	0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LVL74
	.4byte	0xc44
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x146
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ed
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x146
	.4byte	0x128
	.4byte	.LLST25
	.uleb128 0x20
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x146
	.4byte	0x12a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.string	"len"
	.byte	0x1
	.2byte	0x146
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x148
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x1f
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x148
	.4byte	0x25
	.4byte	.LLST27
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.2byte	0x148
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x1f
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x148
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x1e
	.string	"ctx"
	.byte	0x1
	.2byte	0x149
	.4byte	0xc1e
	.4byte	.LLST30
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.2byte	0x14a
	.4byte	0xc34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x1af
	.4byte	.L35
	.uleb128 0x2c
	.4byte	.LVL80
	.4byte	0xc44
	.4byte	0xff0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL86
	.4byte	0x16f6
	.4byte	0x1010
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL88
	.4byte	0x170a
	.4byte	0x102b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL90
	.4byte	0x16eb
	.4byte	0x103f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL91
	.4byte	0x16ff
	.4byte	0x1053
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL92
	.4byte	0x16ca
	.4byte	0x106c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL94
	.4byte	0x16d5
	.4byte	0x108d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL96
	.4byte	0x16bf
	.4byte	0x10b4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL100
	.4byte	0x1715
	.4byte	0x10d5
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL103
	.4byte	0x16e0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ef
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xc1e
	.4byte	.LLST31
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x70e
	.4byte	.LLST32
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x11ef
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xc34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x1e4
	.4byte	.L47
	.uleb128 0x2c
	.4byte	.LVL109
	.4byte	0x171e
	.4byte	0x117c
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL111
	.4byte	0xf2c
	.4byte	0x119d
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL113
	.4byte	0x1729
	.4byte	0x11c3
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL115
	.4byte	0x16e0
	.4byte	0x11de
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x22
	.4byte	.LVL116
	.4byte	0x1734
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x951
	.uleb128 0x34
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1362
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.2byte	0x1eb
	.4byte	0xc1e
	.4byte	.LLST34
	.uleb128 0x20
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x70e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x25
	.4byte	.LLST35
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x11ef
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"n"
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x2c
	.4byte	.LLST36
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x1362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x2c
	.4byte	.LVL121
	.4byte	0x171e
	.4byte	0x1284
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL123
	.4byte	0x173f
	.4byte	0x12a2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL124
	.4byte	0x174a
	.4byte	0x12b6
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL126
	.4byte	0x173f
	.4byte	0x12d4
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL128
	.4byte	0x1755
	.4byte	0x12fa
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL129
	.4byte	0xe72
	.4byte	0x131b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL133
	.4byte	0x1734
	.4byte	0x132f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL134
	.4byte	0x16e0
	.4byte	0x134b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x400
	.byte	0
	.uleb128 0x22
	.4byte	.LVL135
	.4byte	0x10ed
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x4c
	.4byte	0x1373
	.uleb128 0x35
	.4byte	0xc7
	.2byte	0x3ff
	.byte	0
	.uleb128 0x34
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x254
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14af
	.uleb128 0x1d
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x254
	.4byte	0x25
	.4byte	.LLST37
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x256
	.4byte	0x25
	.4byte	.LLST38
	.uleb128 0x24
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x257
	.4byte	0x14af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x258
	.4byte	0x14af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x26f
	.4byte	.L59
	.uleb128 0x2c
	.4byte	.LVL143
	.4byte	0x1760
	.4byte	0x13ee
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL144
	.4byte	0xa41
	.4byte	0x1407
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL146
	.4byte	0xa41
	.4byte	0x1420
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL148
	.4byte	0x95c
	.4byte	0x1439
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL150
	.4byte	0x95c
	.4byte	0x1452
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL152
	.4byte	0x176b
	.4byte	0x1471
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL155
	.4byte	0x1776
	.4byte	0x1488
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL156
	.4byte	0x1776
	.4byte	0x149f
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x22
	.4byte	.LVL157
	.4byte	0x1785
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x4c
	.4byte	0x14bf
	.uleb128 0x8
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x34
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x284
	.4byte	0x25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a9
	.uleb128 0x1d
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x284
	.4byte	0x25
	.4byte	.LLST39
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x286
	.4byte	0x25
	.4byte	.LLST40
	.uleb128 0x2d
	.string	"ctx"
	.byte	0x1
	.2byte	0x288
	.4byte	0x1d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.2byte	0x289
	.4byte	0xc34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.string	"acc"
	.byte	0x1
	.2byte	0x28a
	.4byte	0xc34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.2byte	0x28b
	.4byte	0x2c
	.4byte	.LLST41
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.2byte	0x28b
	.4byte	0x2c
	.4byte	.LLST42
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x2bf
	.4byte	.L65
	.uleb128 0x2c
	.4byte	.LVL161
	.4byte	0x16f6
	.4byte	0x1571
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 120
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL162
	.4byte	0x16f6
	.4byte	0x1591
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 184
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL163
	.4byte	0x1760
	.4byte	0x15a8
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL164
	.4byte	0xdf8
	.4byte	0x15bd
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL165
	.4byte	0xee3
	.4byte	0x15d2
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL167
	.4byte	0xd72
	.4byte	0x15ff
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	entropy_dummy_source
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL169
	.4byte	0xe72
	.4byte	0x1621
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL172
	.4byte	0xf2c
	.4byte	0x1643
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL179
	.4byte	0x1373
	.4byte	0x1656
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL183
	.4byte	0xd23
	.4byte	0x166b
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL184
	.4byte	0x1776
	.4byte	0x1682
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL185
	.4byte	0x1776
	.4byte	0x1699
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.uleb128 0x22
	.4byte	.LVL186
	.4byte	0x1785
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xb
	.byte	0x19
	.uleb128 0x36
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xc
	.byte	0x5c
	.uleb128 0x36
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x5
	.byte	0xde
	.uleb128 0x36
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x5
	.byte	0x66
	.uleb128 0x36
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x5
	.byte	0x72
	.uleb128 0x36
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xd
	.byte	0x38
	.uleb128 0x36
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x5
	.byte	0x51
	.uleb128 0x37
	.4byte	.LASF171
	.4byte	.LASF171
	.uleb128 0x36
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x5
	.byte	0x4a
	.uleb128 0x36
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x5
	.byte	0x80
	.uleb128 0x37
	.4byte	.LASF180
	.4byte	.LASF180
	.uleb128 0x36
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xa
	.byte	0xdd
	.uleb128 0x36
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0xa
	.byte	0xca
	.uleb128 0x36
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xa
	.byte	0xa9
	.uleb128 0x36
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0xa
	.byte	0xd0
	.uleb128 0x36
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0xa
	.byte	0xd6
	.uleb128 0x36
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0xa
	.byte	0xc9
	.uleb128 0x36
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0xa
	.byte	0xb2
	.uleb128 0x36
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0xb
	.byte	0x16
	.uleb128 0x38
	.4byte	.LASF189
	.4byte	.LASF191
	.byte	0xe
	.byte	0
	.4byte	.LASF189
	.uleb128 0x38
	.4byte	.LASF190
	.4byte	.LASF192
	.byte	0xe
	.byte	0
	.4byte	.LASF190
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x10
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE12
	.2byte	0x4
	.byte	0x7b
	.sleb128 255
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
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
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -112
	.4byte	.LVL30-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL28
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL41
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL59
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
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL76
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL81
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL79
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL105
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL82
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL77
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL107
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x9
	.byte	0xc1
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE8
	.2byte	0x3
	.byte	0x9
	.byte	0xc1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL119
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
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
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL120
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL125
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL141
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL142
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL154
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL159
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL187
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL160
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL182
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL171
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF148:
	.string	"source_id"
.LASF193:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF28:
	.string	"_lock_t"
.LASF142:
	.string	"output"
.LASF57:
	.string	"_on_exit_args"
.LASF99:
	.string	"_write"
.LASF127:
	.string	"_wctomb_state"
.LASF12:
	.string	"buffer"
.LASF165:
	.string	"mbedtls_entropy_update_seed_file"
.LASF91:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF179:
	.string	"mbedtls_sha512_finish_ret"
.LASF95:
	.string	"_lbfsize"
.LASF93:
	.string	"_flags"
.LASF70:
	.string	"_errno"
.LASF29:
	.string	"_LOCK_RECURSIVE_T"
.LASF98:
	.string	"_read"
.LASF83:
	.string	"_r48"
.LASF131:
	.string	"_mbrlen_state"
.LASF190:
	.string	"putchar"
.LASF72:
	.string	"_stdout"
.LASF32:
	.string	"_fpos_t"
.LASF64:
	.string	"_fns"
.LASF97:
	.string	"_cookie"
.LASF139:
	.string	"mbedtls_entropy_source_self_test_check_bits"
.LASF46:
	.string	"_Bigint"
.LASF143:
	.string	"olen"
.LASF107:
	.string	"_mbstate"
.LASF54:
	.string	"__tm_wday"
.LASF120:
	.string	"_result"
.LASF50:
	.string	"__tm_hour"
.LASF160:
	.string	"mbedtls_entropy_func"
.LASF152:
	.string	"have_one_strong"
.LASF36:
	.string	"__count"
.LASF49:
	.string	"__tm_min"
.LASF161:
	.string	"count"
.LASF89:
	.string	"__sf"
.LASF158:
	.string	"mbedtls_entropy_update_manual"
.LASF175:
	.string	"mbedtls_sha512_update_ret"
.LASF114:
	.string	"_rand48"
.LASF121:
	.string	"_result_k"
.LASF8:
	.string	"long long unsigned int"
.LASF85:
	.string	"_asctime_buf"
.LASF92:
	.string	"__sFILE"
.LASF45:
	.string	"_wds"
.LASF153:
	.string	"cleanup"
.LASF168:
	.string	"buf0"
.LASF169:
	.string	"buf1"
.LASF178:
	.string	"mbedtls_sha512_init"
.LASF110:
	.string	"__FILE"
.LASF105:
	.string	"_offset"
.LASF159:
	.string	"mbedtls_entropy_gather"
.LASF75:
	.string	"_emergency"
.LASF173:
	.string	"mbedtls_sha512_ret"
.LASF189:
	.string	"puts"
.LASF6:
	.string	"size_t"
.LASF18:
	.string	"p_source"
.LASF188:
	.string	"memcmp"
.LASF48:
	.string	"__tm_sec"
.LASF55:
	.string	"__tm_yday"
.LASF74:
	.string	"_inc"
.LASF63:
	.string	"_ind"
.LASF144:
	.string	"mbedtls_entropy_source_self_test_gather"
.LASF42:
	.string	"_next"
.LASF133:
	.string	"_mbsrtowcs_state"
.LASF7:
	.string	"__uint64_t"
.LASF164:
	.string	"path"
.LASF37:
	.string	"__value"
.LASF122:
	.string	"_p5s"
.LASF146:
	.string	"attempts"
.LASF27:
	.string	"mbedtls_entropy_context"
.LASF135:
	.string	"_wcsrtombs_state"
.LASF126:
	.string	"_mblen_state"
.LASF174:
	.string	"mbedtls_sha512_starts_ret"
.LASF109:
	.string	"char"
.LASF51:
	.string	"__tm_mday"
.LASF86:
	.string	"_sig_func"
.LASF132:
	.string	"_mbrtowc_state"
.LASF155:
	.string	"mbedtls_entropy_free"
.LASF154:
	.string	"exit"
.LASF39:
	.string	"_flock_t"
.LASF34:
	.string	"__wch"
.LASF113:
	.string	"_iobs"
.LASF191:
	.string	"__builtin_puts"
.LASF65:
	.string	"_on_exit_args_ptr"
.LASF101:
	.string	"_close"
.LASF76:
	.string	"__sdidinit"
.LASF71:
	.string	"_stdin"
.LASF80:
	.string	"_gamma_signgam"
.LASF5:
	.string	"long long int"
.LASF187:
	.string	"printf"
.LASF67:
	.string	"_base"
.LASF123:
	.string	"_freelist"
.LASF194:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/entropy.c"
.LASF40:
	.string	"__ULong"
.LASF134:
	.string	"_wcrtomb_state"
.LASF94:
	.string	"_file"
.LASF184:
	.string	"fseek"
.LASF171:
	.string	"memset"
.LASF16:
	.string	"mbedtls_entropy_f_source_ptr"
.LASF79:
	.string	"__cleanup"
.LASF38:
	.string	"_mbstate_t"
.LASF119:
	.string	"_mprec"
.LASF19:
	.string	"size"
.LASF150:
	.string	"use_len"
.LASF56:
	.string	"__tm_isdst"
.LASF170:
	.string	"mbedtls_entropy_self_test"
.LASF151:
	.string	"entropy_gather_internal"
.LASF185:
	.string	"ftell"
.LASF149:
	.string	"header"
.LASF192:
	.string	"__builtin_putchar"
.LASF181:
	.string	"fopen"
.LASF162:
	.string	"done"
.LASF141:
	.string	"data"
.LASF52:
	.string	"__tm_mon"
.LASF66:
	.string	"__sbuf"
.LASF87:
	.string	"_atexit0"
.LASF62:
	.string	"_atexit"
.LASF13:
	.string	"is384"
.LASF140:
	.string	"entropy_dummy_source"
.LASF4:
	.string	"short int"
.LASF17:
	.string	"f_source"
.LASF31:
	.string	"long int"
.LASF186:
	.string	"fread"
.LASF172:
	.string	"mbedtls_hardware_poll"
.LASF44:
	.string	"_sign"
.LASF78:
	.string	"_current_locale"
.LASF157:
	.string	"mbedtls_entropy_add_source"
.LASF96:
	.string	"_data"
.LASF35:
	.string	"__wchb"
.LASF9:
	.string	"uint64_t"
.LASF183:
	.string	"fclose"
.LASF22:
	.string	"mbedtls_entropy_source_state"
.LASF53:
	.string	"__tm_year"
.LASF163:
	.string	"mbedtls_entropy_write_seed_file"
.LASF124:
	.string	"_misc_reent"
.LASF195:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\mbedtls"
.LASF84:
	.string	"_localtime_buf"
.LASF24:
	.string	"accumulator"
.LASF26:
	.string	"source"
.LASF81:
	.string	"_cvtlen"
.LASF43:
	.string	"_maxwds"
.LASF129:
	.string	"_l64a_buf"
.LASF77:
	.string	"_current_category"
.LASF90:
	.string	"_misc"
.LASF137:
	.string	"buf_len"
.LASF104:
	.string	"_blksize"
.LASF47:
	.string	"__tm"
.LASF106:
	.string	"_lock"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"mbedtls_sha512_context"
.LASF41:
	.string	"long unsigned int"
.LASF112:
	.string	"_niobs"
.LASF33:
	.string	"wint_t"
.LASF25:
	.string	"source_count"
.LASF21:
	.string	"strong"
.LASF59:
	.string	"_dso_handle"
.LASF82:
	.string	"_cvtbuf"
.LASF3:
	.string	"unsigned char"
.LASF166:
	.string	"mbedtls_entropy_source_self_test"
.LASF147:
	.string	"entropy_update"
.LASF156:
	.string	"mbedtls_entropy_init"
.LASF130:
	.string	"_getdate_err"
.LASF177:
	.string	"mbedtls_sha512_free"
.LASF116:
	.string	"_mult"
.LASF23:
	.string	"accumulator_started"
.LASF117:
	.string	"_add"
.LASF11:
	.string	"state"
.LASF111:
	.string	"_glue"
.LASF138:
	.string	"unset"
.LASF20:
	.string	"threshold"
.LASF88:
	.string	"__sglue"
.LASF182:
	.string	"fwrite"
.LASF125:
	.string	"_strtok_last"
.LASF128:
	.string	"_mbtowc_state"
.LASF167:
	.string	"verbose"
.LASF58:
	.string	"_fnargs"
.LASF2:
	.string	"signed char"
.LASF69:
	.string	"_reent"
.LASF1:
	.string	"short unsigned int"
.LASF180:
	.string	"memcpy"
.LASF10:
	.string	"total"
.LASF60:
	.string	"_fntypes"
.LASF68:
	.string	"_size"
.LASF30:
	.string	"_off_t"
.LASF103:
	.string	"_nbuf"
.LASF145:
	.string	"entropy_len"
.LASF136:
	.string	"FILE"
.LASF108:
	.string	"_flags2"
.LASF61:
	.string	"_is_cxa"
.LASF115:
	.string	"_seed"
.LASF118:
	.string	"_rand_next"
.LASF176:
	.string	"mbedtls_platform_zeroize"
.LASF100:
	.string	"_seek"
.LASF73:
	.string	"_stderr"
.LASF102:
	.string	"_ubuf"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
