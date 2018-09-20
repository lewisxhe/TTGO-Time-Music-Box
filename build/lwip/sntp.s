	.file	"sntp.c"
	.text
.Ltext0:
	.section	.text.sntp_retry,"ax",@progbits
	.literal_position
	.literal .LC0, sntp_request
	.literal .LC1, sntp_retry_timeout
	.literal .LC2, 30000
	.align	4
	.type	sntp_retry, @function
sntp_retry:
.LFB17:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/apps/sntp/sntp.c"
	.loc 1 262 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 269 0
	l32r	a2, .LC1
.LVL1:
	movi.n	a12, 0
	l32r	a11, .LC0
	l32i.n	a10, a2, 0
	call8	sys_timeout
.LVL2:
.LBB2:
	.loc 1 275 0
	l32i.n	a8, a2, 0
	slli	a2, a8, 1
.LVL3:
	.loc 1 277 0
	l32r	a9, .LC2
	bltu	a9, a2, .L1
	.loc 1 277 0 is_stmt 0 discriminator 1
	bgeu	a8, a2, .L1
	.loc 1 279 0 is_stmt 1
	l32r	a8, .LC1
	s32i.n	a2, a8, 0
.L1:
	retw.n
.LBE2:
.LFE17:
	.size	sntp_retry, .-sntp_retry
	.section	.text.sntp_process,"ax",@progbits
	.literal_position
	.literal .LC3, 2085978496
	.literal .LC4, 1023992203
	.align	4
	.type	sntp_process, @function
sntp_process:
.LFB15:
	.loc 1 206 0
.LVL4:
	entry	sp, 48
.LCFI1:
	.loc 1 210 0
	l32i.n	a10, a2, 0
	call8	lwip_ntohl
.LVL5:
	.loc 1 212 0
	l32r	a3, .LC3
	add.n	a3, a10, a3
.LVL6:
	.loc 1 216 0
	l32i.n	a10, a2, 4
.LVL7:
	call8	lwip_ntohl
.LVL8:
	l32r	a8, .LC4
	muluh	a10, a10, a8
	srli	a10, a10, 10
.LVL9:
.LBB3:
	.loc 1 217 0
	s32i.n	a3, sp, 0
	s32i.n	a10, sp, 4
	movi.n	a11, 0
	mov.n	a10, sp
.LVL10:
	call8	settimeofday
.LVL11:
	retw.n
.LBE3:
.LFE15:
	.size	sntp_process, .-sntp_process
	.section	.text.sntp_recv,"ax",@progbits
	.literal_position
	.literal .LC5, sntp_retry
	.literal .LC6, sntp_request
	.literal .LC7, sntp_opmode
	.literal .LC8, sntp_retry_timeout
	.literal .LC9, 3000
	.literal .LC10, 3600000
	.align	4
	.type	sntp_recv, @function
sntp_recv:
.LFB18:
	.loc 1 332 0
.LVL12:
	entry	sp, 48
.LCFI2:
	.loc 1 342 0
	movi.n	a11, 0
	l32r	a10, .LC5
	call8	sys_untimeout
.LVL13:
	.loc 1 343 0
	movi.n	a11, 0
	l32r	a10, .LC6
	call8	sys_untimeout
.LVL14:
	.loc 1 356 0
	l16ui	a8, a4, 8
	movi.n	a2, 0x30
.LVL15:
	bne	a8, a2, .L11
	.loc 1 357 0
	movi.n	a13, 0
	movi.n	a12, 1
	mov.n	a11, sp
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL16:
	.loc 1 358 0
	l8ui	a2, sp, 0
	extui	a2, a2, 0, 3
	s8i	a2, sp, 0
	.loc 1 360 0
	l32r	a8, .LC7
	l8ui	a8, a8, 0
	bnez.n	a8, .L6
	.loc 1 360 0 is_stmt 0 discriminator 1
	beqi	a2, 4, .L7
.L6:
	.loc 1 360 0 discriminator 3
	bnei	a8, 1, .L12
	.loc 1 361 0 is_stmt 1
	bnei	a2, 5, .L13
.L7:
	.loc 1 362 0
	movi.n	a13, 1
	mov.n	a12, a13
	add.n	a11, sp, a13
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL17:
	.loc 1 363 0
	l8ui	a2, sp, 1
	beqz.n	a2, .L14
.LVL18:
	.loc 1 382 0
	movi.n	a13, 0x28
	movi.n	a12, 8
	addi.n	a11, sp, 4
	mov.n	a10, a4
	call8	pbuf_copy_partial
.LVL19:
	.loc 1 381 0
	movi.n	a2, 0
	j	.L5
.LVL20:
.L11:
	.loc 1 345 0
	movi	a2, 0xf1
	j	.L5
.L12:
	.loc 1 388 0
	movi	a2, 0xfd
	j	.L5
.L13:
	movi	a2, 0xfd
	j	.L5
.L14:
	.loc 1 365 0
	movi.n	a2, 1
.LVL21:
.L5:
	.loc 1 400 0
	mov.n	a10, a4
	call8	pbuf_free
.LVL22:
	.loc 1 401 0
	bnez.n	a2, .L8
	.loc 1 402 0
	addi.n	a10, sp, 4
	call8	sntp_process
.LVL23:
	.loc 1 405 0
	l32r	a2, .LC7
.LVL24:
	l8ui	a2, a2, 0
	bnez.n	a2, .L4
	.loc 1 407 0
	l32r	a4, .LC9
.LVL25:
	l32r	a2, .LC8
	s32i.n	a4, a2, 0
	.loc 1 409 0
	movi.n	a12, 0
	l32r	a11, .LC6
	l32r	a10, .LC10
	call8	sys_timeout
.LVL26:
	retw.n
.LVL27:
.L8:
	.loc 1 413 0
	sext	a4, a2, 7
.LVL28:
	movi.n	a8, -3
	beq	a4, a8, .L4
	.loc 1 415 0
	l32r	a4, .LC7
	l8ui	a4, a4, 0
	bnez.n	a4, .L4
	.loc 1 416 0
	sext	a2, a2, 7
.LVL29:
	bnei	a2, 1, .L10
	.loc 1 418 0
	movi.n	a10, 0
	call8	sntp_retry
.LVL30:
	retw.n
.L10:
	.loc 1 421 0
	movi.n	a10, 0
	call8	sntp_retry
.LVL31:
.L4:
	retw.n
.LFE18:
	.size	sntp_recv, .-sntp_recv
	.section	.text.sntp_initialize_request,"ax",@progbits
	.align	4
	.type	sntp_initialize_request, @function
sntp_initialize_request:
.LFB16:
	.loc 1 237 0
.LVL32:
	entry	sp, 32
.LCFI3:
	.loc 1 238 0
	movi.n	a12, 0x30
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL33:
	.loc 1 239 0
	movi.n	a8, 0x23
	s8i	a8, a2, 0
	retw.n
.LFE16:
	.size	sntp_initialize_request, .-sntp_initialize_request
	.section	.text.sntp_send_request,"ax",@progbits
	.literal_position
	.literal .LC11, sntp_pcb
	.literal .LC12, sntp_retry
	.literal .LC13, 3000
	.literal .LC14, sntp_request
	.align	4
	.type	sntp_send_request, @function
sntp_send_request:
.LFB19:
	.loc 1 433 0
.LVL34:
	entry	sp, 32
.LCFI4:
	.loc 1 435 0
	movi.n	a12, 0
	movi.n	a11, 0x30
	mov.n	a10, a12
	call8	pbuf_alloc
.LVL35:
	mov.n	a3, a10
.LVL36:
	.loc 1 436 0
	beqz.n	a10, .L17
.LVL37:
.LBB4:
	.loc 1 440 0
	l32i.n	a10, a10, 4
	call8	sntp_initialize_request
.LVL38:
	.loc 1 442 0
	movi	a13, 0x7b
	mov.n	a12, a2
	mov.n	a11, a3
	l32r	a2, .LC11
.LVL39:
	l32i.n	a10, a2, 0
	call8	udp_sendto
.LVL40:
	.loc 1 444 0
	mov.n	a10, a3
	call8	pbuf_free
.LVL41:
	.loc 1 446 0
	movi.n	a12, 0
	l32r	a11, .LC12
	l32r	a10, .LC13
	call8	sys_timeout
.LVL42:
.LBE4:
	retw.n
.LVL43:
.L17:
	.loc 1 455 0
	movi.n	a12, 0
	l32r	a11, .LC14
	l32r	a10, .LC13
	call8	sys_timeout
.LVL44:
	retw.n
.LFE19:
	.size	sntp_send_request, .-sntp_send_request
	.section	.text.sntp_request,"ax",@progbits
	.literal_position
	.literal .LC15, sntp_servers
	.literal .LC16, sntp_dns_found
	.literal .LC17, sntp_retry
	.literal .LC18, 3000
	.align	4
	.type	sntp_request, @function
sntp_request:
.LFB21:
	.loc 1 488 0
.LVL45:
	entry	sp, 64
.LCFI5:
	.loc 1 496 0
	l32r	a2, .LC15
.LVL46:
	l32i.n	a10, a2, 0
	beqz.n	a10, .L20
	.loc 1 498 0
	movi.n	a13, 0
	s32i.n	a13, a2, 4
	s32i.n	a13, a2, 8
	s32i.n	a13, a2, 12
	s32i.n	a13, a2, 16
	.loc 1 498 0
	s8i	a13, a2, 20
	.loc 1 499 0
	l32r	a12, .LC16
	mov.n	a11, sp
	call8	dns_gethostbyname
.LVL47:
	extui	a2, a10, 0, 8
.LVL48:
	.loc 1 501 0
	sext	a9, a2, 7
	movi.n	a8, -5
	beq	a9, a8, .L19
	.loc 1 505 0
	bnez.n	a2, .L22
	.loc 1 506 0
	movi.n	a12, 0x14
	mov.n	a11, sp
	l32r	a10, .LC15
.LVL49:
	addi.n	a10, a10, 4
	call8	memcpy
.LVL50:
	j	.L22
.LVL51:
.L20:
	.loc 1 511 0
	movi.n	a12, 0x14
	l32r	a11, .LC15
	addi.n	a11, a11, 4
	mov.n	a10, sp
	call8	memcpy
.LVL52:
	.loc 1 512 0
	l8ui	a2, sp, 16
	bnei	a2, 6, .L23
	.loc 1 512 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 0
	bnez.n	a2, .L29
	.loc 1 512 0 discriminator 3
	l32i.n	a2, sp, 4
	bnez.n	a2, .L30
	.loc 1 512 0 discriminator 5
	l32i.n	a2, sp, 8
	bnez.n	a2, .L31
	.loc 1 512 0 discriminator 7
	l32i.n	a2, sp, 12
	beqz.n	a2, .L32
	.loc 1 512 0
	movi.n	a2, 0
	j	.L25
.L29:
	movi.n	a2, 0
	j	.L25
.L30:
	movi.n	a2, 0
	j	.L25
.L31:
	movi.n	a2, 0
	j	.L25
.L32:
	movi.n	a2, 1
	j	.L25
.L23:
	.loc 1 512 0 discriminator 2
	movi.n	a2, 0
	movi.n	a9, 1
	l32i.n	a8, sp, 0
	moveqz	a2, a9, a8
	extui	a2, a2, 0, 8
.L25:
	.loc 1 512 0 discriminator 14
	beqz.n	a2, .L33
	.loc 1 512 0
	movi	a2, 0xf1
	j	.L22
.L33:
	movi.n	a2, 0
.L22:
.LVL53:
	.loc 1 515 0 is_stmt 1
	bnez.n	a2, .L26
	.loc 1 518 0
	mov.n	a10, sp
	call8	sntp_send_request
.LVL54:
	retw.n
.L26:
	.loc 1 522 0
	movi.n	a12, 0
	l32r	a11, .LC17
	l32r	a10, .LC18
	call8	sys_timeout
.LVL55:
.L19:
	retw.n
.LFE21:
	.size	sntp_request, .-sntp_request
	.section	.text.sntp_dns_found,"ax",@progbits
	.align	4
	.type	sntp_dns_found, @function
sntp_dns_found:
.LFB20:
	.loc 1 465 0
.LVL56:
	entry	sp, 32
.LCFI6:
	.loc 1 469 0
	beqz.n	a3, .L35
	.loc 1 472 0
	mov.n	a10, a3
	call8	sntp_send_request
.LVL57:
	retw.n
.L35:
	.loc 1 476 0
	movi.n	a10, 0
	call8	sntp_retry
.LVL58:
	retw.n
.LFE20:
	.size	sntp_dns_found, .-sntp_dns_found
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC20:
	.string	"Failed to allocate udp pcb for sntp client"
	.align	4
.LC23:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/apps/sntp/sntp.c"
	.section	.text.sntp_init,"ax",@progbits
	.literal_position
	.literal .LC19, sntp_pcb
	.literal .LC21, .LC20
	.literal .LC22, __func__$6548
	.literal .LC24, .LC23
	.literal .LC25, sntp_recv
	.literal .LC26, sntp_opmode
	.literal .LC27, sntp_retry_timeout
	.literal .LC28, 3000
	.literal .LC29, ip_addr_any_type
	.align	4
	.global	sntp_init
	.type	sntp_init, @function
sntp_init:
.LFB22:
	.loc 1 532 0
	entry	sp, 32
.LCFI7:
	.loc 1 541 0
	l32r	a8, .LC19
	l32i.n	a8, a8, 0
	bnez.n	a8, .L37
	.loc 1 542 0
	movi.n	a10, 0x2e
	call8	udp_new_ip_type
.LVL59:
	l32r	a8, .LC19
	s32i.n	a10, a8, 0
	.loc 1 543 0
	bnez.n	a10, .L39
	.loc 1 543 0 discriminator 1
	l32r	a13, .LC21
	l32r	a12, .LC22
	movi	a11, 0x21f
	l32r	a10, .LC24
	call8	__assert_func
.LVL60:
.L39:
	.loc 1 544 0
	beqz.n	a10, .L37
	.loc 1 545 0
	movi.n	a12, 0
	l32r	a11, .LC25
	call8	udp_recv
.LVL61:
	.loc 1 547 0
	l32r	a8, .LC26
	l8ui	a8, a8, 0
	bnez.n	a8, .L40
	.loc 1 548 0
	l32r	a9, .LC28
	l32r	a8, .LC27
	s32i.n	a9, a8, 0
	.loc 1 552 0
	movi.n	a10, 0
	call8	sntp_request
.LVL62:
	retw.n
.L40:
	.loc 1 554 0
	bnei	a8, 1, .L37
	.loc 1 555 0
	l32r	a8, .LC19
	l32i.n	a10, a8, 0
	l8ui	a9, a10, 40
	movi.n	a8, 0x20
	or	a8, a9, a8
	s8i	a8, a10, 40
	.loc 1 556 0
	movi	a12, 0x7b
	l32r	a11, .LC29
	call8	udp_bind
.LVL63:
.L37:
	retw.n
.LFE22:
	.size	sntp_init, .-sntp_init
	.section	.text.sntp_stop,"ax",@progbits
	.literal_position
	.literal .LC30, sntp_pcb
	.literal .LC31, sntp_request
	.align	4
	.global	sntp_stop
	.type	sntp_stop, @function
sntp_stop:
.LFB23:
	.loc 1 567 0
	entry	sp, 32
.LCFI8:
	.loc 1 568 0
	l32r	a2, .LC30
	l32i.n	a2, a2, 0
	beqz.n	a2, .L41
	.loc 1 569 0
	movi.n	a11, 0
	l32r	a10, .LC31
	call8	sys_untimeout
.LVL64:
	.loc 1 570 0
	l32r	a2, .LC30
	l32i.n	a10, a2, 0
	call8	udp_remove
.LVL65:
	.loc 1 571 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
.L41:
	retw.n
.LFE23:
	.size	sntp_stop, .-sntp_stop
	.section	.text.sntp_enabled,"ax",@progbits
	.literal_position
	.literal .LC32, sntp_pcb
	.align	4
	.global	sntp_enabled
	.type	sntp_enabled, @function
sntp_enabled:
.LFB24:
	.loc 1 579 0
	entry	sp, 32
.LCFI9:
	.loc 1 580 0
	l32r	a2, .LC32
	l32i.n	a8, a2, 0
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
	.loc 1 581 0
	retw.n
.LFE24:
	.size	sntp_enabled, .-sntp_enabled
	.section	.rodata.str1.4
	.align	4
.LC33:
	.string	"Invalid operating mode"
	.align	4
.LC38:
	.string	"Operating mode must not be set while SNTP client is running"
	.section	.text.sntp_setoperatingmode,"ax",@progbits
	.literal_position
	.literal .LC34, .LC33
	.literal .LC35, __func__$6558
	.literal .LC36, .LC23
	.literal .LC37, sntp_pcb
	.literal .LC39, .LC38
	.literal .LC40, sntp_opmode
	.align	4
	.global	sntp_setoperatingmode
	.type	sntp_setoperatingmode, @function
sntp_setoperatingmode:
.LFB25:
	.loc 1 589 0
.LVL66:
	entry	sp, 32
.LCFI10:
	extui	a2, a2, 0, 8
	.loc 1 590 0
	bltui	a2, 2, .L45
	.loc 1 590 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC35
	movi	a11, 0x24e
	l32r	a10, .LC36
	call8	__assert_func
.LVL67:
.L45:
	.loc 1 591 0 is_stmt 1
	l32r	a8, .LC37
	l32i.n	a8, a8, 0
	beqz.n	a8, .L46
	.loc 1 591 0 discriminator 1
	l32r	a13, .LC39
	l32r	a12, .LC35
	movi	a11, 0x24f
	l32r	a10, .LC36
	call8	__assert_func
.LVL68:
.L46:
	.loc 1 592 0
	l32r	a8, .LC40
	s8i	a2, a8, 0
	retw.n
.LFE25:
	.size	sntp_setoperatingmode, .-sntp_setoperatingmode
	.section	.text.sntp_getoperatingmode,"ax",@progbits
	.literal_position
	.literal .LC41, sntp_opmode
	.align	4
	.global	sntp_getoperatingmode
	.type	sntp_getoperatingmode, @function
sntp_getoperatingmode:
.LFB26:
	.loc 1 600 0
	entry	sp, 32
.LCFI11:
	.loc 1 602 0
	l32r	a8, .LC41
	l8ui	a2, a8, 0
	retw.n
.LFE26:
	.size	sntp_getoperatingmode, .-sntp_getoperatingmode
	.section	.text.sntp_setserver,"ax",@progbits
	.literal_position
	.literal .LC42, sntp_servers
	.align	4
	.global	sntp_setserver
	.type	sntp_setserver, @function
sntp_setserver:
.LFB27:
	.loc 1 627 0
.LVL69:
	entry	sp, 32
.LCFI12:
	extui	a2, a2, 0, 8
	.loc 1 628 0
	bnez.n	a2, .L48
	.loc 1 629 0
	beqz.n	a3, .L50
	.loc 1 630 0
	addx2	a9, a2, a2
	slli	a8, a9, 3
	l32r	a10, .LC42
	add.n	a10, a10, a8
	movi.n	a12, 0x14
	mov.n	a11, a3
	addi.n	a10, a10, 4
	call8	memcpy
.LVL70:
	j	.L51
.L50:
	.loc 1 632 0
	l32r	a10, .LC42
	slli	a9, a2, 1
	add.n	a8, a9, a2
	slli	a3, a8, 3
.LVL71:
	add.n	a3, a10, a3
	movi.n	a8, 0
	s32i.n	a8, a3, 4
	s32i.n	a8, a3, 8
	s32i.n	a8, a3, 12
	s32i.n	a8, a3, 16
	.loc 1 632 0
	add.n	a3, a9, a2
	slli	a9, a3, 3
	mov.n	a3, a9
	add.n	a9, a10, a9
	s8i	a8, a9, 20
.L51:
	.loc 1 635 0
	addx2	a2, a2, a2
.LVL72:
	slli	a8, a2, 3
	l32r	a2, .LC42
	add.n	a8, a2, a8
	movi.n	a2, 0
	s32i.n	a2, a8, 0
.L48:
	retw.n
.LFE27:
	.size	sntp_setserver, .-sntp_setserver
	.section	.text.sntp_getserver,"ax",@progbits
	.literal_position
	.literal .LC43, sntp_servers
	.literal .LC44, ip_addr_any
	.align	4
	.global	sntp_getserver
	.type	sntp_getserver, @function
sntp_getserver:
.LFB28:
	.loc 1 676 0
.LVL73:
	entry	sp, 32
.LCFI13:
	extui	a3, a3, 0, 8
	.loc 1 677 0
	bnez.n	a3, .L53
	.loc 1 678 0
	addx2	a3, a3, a3
.LVL74:
	slli	a8, a3, 3
	mov.n	a3, a8
	l32r	a11, .LC43
	add.n	a11, a11, a8
	movi.n	a12, 0x14
	addi.n	a11, a11, 4
	mov.n	a10, a2
	call8	memcpy
.LVL75:
	retw.n
.L53:
	.loc 1 680 0
	movi.n	a12, 0x14
	l32r	a11, .LC44
	mov.n	a10, a2
	call8	memcpy
.LVL76:
	.loc 1 681 0
	retw.n
.LFE28:
	.size	sntp_getserver, .-sntp_getserver
	.section	.text.sntp_setservername,"ax",@progbits
	.literal_position
	.literal .LC45, sntp_servers
	.align	4
	.global	sntp_setservername
	.type	sntp_setservername, @function
sntp_setservername:
.LFB29:
	.loc 1 692 0
.LVL77:
	entry	sp, 32
.LCFI14:
	extui	a2, a2, 0, 8
	.loc 1 693 0
	bnez.n	a2, .L55
	.loc 1 694 0
	addx2	a2, a2, a2
.LVL78:
	slli	a8, a2, 3
	l32r	a2, .LC45
	add.n	a8, a2, a8
	s32i.n	a3, a8, 0
.L55:
	retw.n
.LFE29:
	.size	sntp_setservername, .-sntp_setservername
	.section	.text.sntp_getservername,"ax",@progbits
	.literal_position
	.literal .LC46, sntp_servers
	.align	4
	.global	sntp_getservername
	.type	sntp_getservername, @function
sntp_getservername:
.LFB30:
	.loc 1 707 0
.LVL79:
	entry	sp, 32
.LCFI15:
	extui	a2, a2, 0, 8
	.loc 1 708 0
	bnez.n	a2, .L59
	.loc 1 709 0
	addx2	a2, a2, a2
.LVL80:
	slli	a8, a2, 3
	l32r	a2, .LC46
	add.n	a8, a2, a8
	l32i.n	a2, a8, 0
	retw.n
.L59:
	.loc 1 711 0
	movi.n	a2, 0
	.loc 1 712 0
	retw.n
.LFE30:
	.size	sntp_getservername, .-sntp_getservername
	.section	.rodata.__func__$6558,"a",@progbits
	.align	4
	.type	__func__$6558, @object
	.size	__func__$6558, 22
__func__$6558:
	.string	"sntp_setoperatingmode"
	.section	.rodata.__func__$6548,"a",@progbits
	.align	4
	.type	__func__$6548, @object
	.size	__func__$6548, 10
__func__$6548:
	.string	"sntp_init"
	.section	.bss.sntp_retry_timeout,"aw",@nobits
	.align	4
	.type	sntp_retry_timeout, @object
	.size	sntp_retry_timeout, 4
sntp_retry_timeout:
	.zero	4
	.section	.bss.sntp_servers,"aw",@nobits
	.align	4
	.type	sntp_servers, @object
	.size	sntp_servers, 24
sntp_servers:
	.zero	24
	.section	.bss.sntp_pcb,"aw",@nobits
	.align	4
	.type	sntp_pcb, @object
	.size	sntp_pcb, 4
sntp_pcb:
	.zero	4
	.section	.bss.sntp_opmode,"aw",@nobits
	.type	sntp_opmode, @object
	.size	sntp_opmode, 1
sntp_opmode:
	.zero	1
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI4-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI5-.LFB21
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI6-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI7-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI8-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI9-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI10-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI11-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI12-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI13-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI14-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI15-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/pbuf.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/netif.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/memp.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/dhcp.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/udp.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/timers.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/def.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/dns.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13e3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF221
	.byte	0xc
	.4byte	.LASF222
	.4byte	.LASF223
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x15
	.4byte	0x69
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc5
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7a
	.4byte	0x94
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x11d
	.4byte	0x94
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x8
	.byte	0x4
	.byte	0x11
	.4byte	0x106
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x12
	.4byte	0xca
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x13
	.4byte	0xd5
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x21
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14a
	.uleb128 0xc
	.4byte	0x155
	.uleb128 0xd
	.4byte	0xa2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2e
	.4byte	0x111
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x6
	.byte	0x2f
	.4byte	0x106
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0x30
	.4byte	0x127
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x6
	.byte	0x31
	.4byte	0x11c
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x6
	.byte	0x32
	.4byte	0x132
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x7
	.byte	0x2e
	.4byte	0x1a5
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x2f
	.4byte	0x181
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x7
	.byte	0x38
	.4byte	0x1be
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x7
	.byte	0x39
	.4byte	0x181
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x7
	.byte	0x42
	.4byte	0x18c
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x7
	.byte	0x43
	.4byte	0x1a5
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x10
	.byte	0x8
	.byte	0x39
	.4byte	0x1ed
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x8
	.byte	0x3a
	.4byte	0x1ed
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x181
	.4byte	0x1fd
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x8
	.byte	0x4b
	.4byte	0x1d4
	.uleb128 0x10
	.byte	0x10
	.byte	0x9
	.byte	0x39
	.4byte	0x227
	.uleb128 0x11
	.string	"ip6"
	.byte	0x9
	.byte	0x3a
	.4byte	0x1fd
	.uleb128 0x11
	.string	"ip4"
	.byte	0x9
	.byte	0x3b
	.4byte	0x1be
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x14
	.byte	0x9
	.byte	0x38
	.4byte	0x24c
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x9
	.byte	0x3c
	.4byte	0x208
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x9
	.byte	0x3d
	.4byte	0x155
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x9
	.byte	0x3e
	.4byte	0x227
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0xa
	.byte	0x2f
	.4byte	0x160
	.uleb128 0x12
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x3f
	.4byte	0x28d
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x47
	.4byte	0x2b2
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x18
	.byte	0xb
	.byte	0x6c
	.4byte	0x32b
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xb
	.byte	0x6e
	.4byte	0x32b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xb
	.byte	0x71
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xb
	.byte	0x7a
	.4byte	0x16b
	.byte	0x8
	.uleb128 0x14
	.string	"len"
	.byte	0xb
	.byte	0x7d
	.4byte	0x16b
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0xb
	.byte	0x80
	.4byte	0x155
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xb
	.byte	0x83
	.4byte	0x155
	.byte	0xd
	.uleb128 0x14
	.string	"ref"
	.byte	0xb
	.byte	0x8a
	.4byte	0x16b
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0xb
	.byte	0x8d
	.4byte	0x4c1
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0xb
	.byte	0x8e
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b2
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xe8
	.byte	0xc
	.byte	0xbd
	.4byte	0x4c1
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xc
	.byte	0xbf
	.4byte	0x4c1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xc
	.byte	0xc3
	.4byte	0x24c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0xc
	.byte	0xc4
	.4byte	0x24c
	.byte	0x18
	.uleb128 0x14
	.string	"gw"
	.byte	0xc
	.byte	0xc5
	.4byte	0x24c
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0xc
	.byte	0xc9
	.4byte	0x66a
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xc
	.byte	0xcc
	.4byte	0x67a
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xc
	.byte	0xce
	.4byte	0x69a
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xc
	.byte	0xd4
	.4byte	0x546
	.byte	0x84
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xc
	.byte	0xd9
	.4byte	0x56b
	.byte	0x88
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xc
	.byte	0xde
	.4byte	0x5d5
	.byte	0x8c
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0xc
	.byte	0xe3
	.4byte	0x5a0
	.byte	0x90
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0xc
	.byte	0xf5
	.4byte	0xa2
	.byte	0x94
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xc
	.byte	0xf8
	.4byte	0x7cc
	.byte	0x98
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0xc
	.byte	0xfb
	.4byte	0x87b
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0xc
	.byte	0xfc
	.4byte	0x65f
	.byte	0xa0
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0xc
	.2byte	0x108
	.4byte	0x155
	.byte	0xa4
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0xc
	.2byte	0x10d
	.4byte	0x155
	.byte	0xa5
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0xc
	.2byte	0x117
	.4byte	0xbf
	.byte	0xa8
	.uleb128 0x16
	.string	"mtu"
	.byte	0xc
	.2byte	0x11f
	.4byte	0x16b
	.byte	0xac
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0xc
	.2byte	0x121
	.4byte	0x155
	.byte	0xae
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0xc
	.2byte	0x123
	.4byte	0x881
	.byte	0xaf
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0xc
	.2byte	0x125
	.4byte	0x155
	.byte	0xb5
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0xc
	.2byte	0x127
	.4byte	0x891
	.byte	0xb6
	.uleb128 0x16
	.string	"num"
	.byte	0xc
	.2byte	0x129
	.4byte	0x155
	.byte	0xb8
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0xc
	.2byte	0x139
	.4byte	0x60b
	.byte	0xbc
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0xc
	.2byte	0x13f
	.4byte	0x635
	.byte	0xc0
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0xc
	.2byte	0x147
	.4byte	0x32b
	.byte	0xc4
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0xc
	.2byte	0x148
	.4byte	0x32b
	.byte	0xc8
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0xc
	.2byte	0x14a
	.4byte	0x16b
	.byte	0xcc
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0xc
	.2byte	0x14f
	.4byte	0x144
	.byte	0xd0
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0xc
	.2byte	0x150
	.4byte	0x24c
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x331
	.uleb128 0x12
	.byte	0x4
	.4byte	0x25
	.byte	0xd
	.byte	0x2d
	.4byte	0x546
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x7
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x9
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0xa
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0xb
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0xd
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0xe
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0xf
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x11
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0xc
	.byte	0x83
	.4byte	0x551
	.uleb128 0x6
	.byte	0x4
	.4byte	0x557
	.uleb128 0x17
	.4byte	0x257
	.4byte	0x56b
	.uleb128 0xd
	.4byte	0x32b
	.uleb128 0xd
	.4byte	0x4c1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0xc
	.byte	0x8e
	.4byte	0x576
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x17
	.4byte	0x257
	.4byte	0x595
	.uleb128 0xd
	.4byte	0x4c1
	.uleb128 0xd
	.4byte	0x32b
	.uleb128 0xd
	.4byte	0x595
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x59b
	.uleb128 0x8
	.4byte	0x1be
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0xc
	.byte	0x9b
	.4byte	0x5ab
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5b1
	.uleb128 0x17
	.4byte	0x257
	.4byte	0x5ca
	.uleb128 0xd
	.4byte	0x4c1
	.uleb128 0xd
	.4byte	0x32b
	.uleb128 0xd
	.4byte	0x5ca
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d0
	.uleb128 0x8
	.4byte	0x1fd
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0xc
	.byte	0xa5
	.4byte	0x5e0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e6
	.uleb128 0x17
	.4byte	0x257
	.4byte	0x5fa
	.uleb128 0xd
	.4byte	0x4c1
	.uleb128 0xd
	.4byte	0x32b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x600
	.uleb128 0xc
	.4byte	0x60b
	.uleb128 0xd
	.4byte	0x4c1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0xc
	.byte	0xaa
	.4byte	0x616
	.uleb128 0x6
	.byte	0x4
	.4byte	0x61c
	.uleb128 0x17
	.4byte	0x257
	.4byte	0x635
	.uleb128 0xd
	.4byte	0x4c1
	.uleb128 0xd
	.4byte	0x595
	.uleb128 0xd
	.4byte	0x155
	.byte	0
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0xc
	.byte	0xaf
	.4byte	0x640
	.uleb128 0x6
	.byte	0x4
	.4byte	0x646
	.uleb128 0x17
	.4byte	0x257
	.4byte	0x65f
	.uleb128 0xd
	.4byte	0x4c1
	.uleb128 0xd
	.4byte	0x5ca
	.uleb128 0xd
	.4byte	0x155
	.byte	0
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0xc
	.byte	0xb6
	.4byte	0xab
	.uleb128 0xe
	.4byte	0x24c
	.4byte	0x67a
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0x155
	.4byte	0x68a
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0x69a
	.uleb128 0xd
	.4byte	0x4c1
	.uleb128 0xd
	.4byte	0x155
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x68a
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x60
	.byte	0xe
	.byte	0x3a
	.4byte	0x7cc
	.uleb128 0x14
	.string	"xid"
	.byte	0xe
	.byte	0x3d
	.4byte	0x181
	.byte	0
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0xe
	.byte	0x3f
	.4byte	0x9a9
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0xe
	.byte	0x41
	.4byte	0x155
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0xe
	.byte	0x43
	.4byte	0x155
	.byte	0x9
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0xe
	.byte	0x45
	.4byte	0x155
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0xe
	.byte	0x49
	.4byte	0x155
	.byte	0xb
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0xe
	.byte	0x4b
	.4byte	0x32b
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0xe
	.byte	0x4c
	.4byte	0x9a9
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0xe
	.byte	0x4d
	.4byte	0x16b
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0xe
	.byte	0x4e
	.4byte	0x16b
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xe
	.byte	0x4f
	.4byte	0x181
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xe
	.byte	0x50
	.4byte	0x181
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xe
	.byte	0x51
	.4byte	0x181
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xe
	.byte	0x52
	.4byte	0x181
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xe
	.byte	0x53
	.4byte	0x181
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xe
	.byte	0x54
	.4byte	0x181
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0xe
	.byte	0x55
	.4byte	0x24c
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0xe
	.byte	0x56
	.4byte	0x1be
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0xe
	.byte	0x57
	.4byte	0x1be
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0xe
	.byte	0x58
	.4byte	0x1be
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xe
	.byte	0x5a
	.4byte	0x181
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xe
	.byte	0x5b
	.4byte	0x181
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xe
	.byte	0x5c
	.4byte	0x181
	.byte	0x58
	.uleb128 0x14
	.string	"cb"
	.byte	0xe
	.byte	0x64
	.4byte	0x5fa
	.byte	0x5c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6a0
	.uleb128 0xa
	.4byte	.LASF133
	.byte	0x58
	.byte	0xf
	.byte	0x5b
	.4byte	0x87b
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xf
	.byte	0x5d
	.4byte	0x24c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0xf
	.byte	0x5d
	.4byte	0x24c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xf
	.byte	0x5d
	.4byte	0x155
	.byte	0x28
	.uleb128 0x14
	.string	"tos"
	.byte	0xf
	.byte	0x5d
	.4byte	0x155
	.byte	0x29
	.uleb128 0x14
	.string	"ttl"
	.byte	0xf
	.byte	0x5d
	.4byte	0x155
	.byte	0x2a
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xf
	.byte	0x61
	.4byte	0x87b
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xf
	.byte	0x63
	.4byte	0x155
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xf
	.byte	0x65
	.4byte	0x16b
	.byte	0x32
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xf
	.byte	0x65
	.4byte	0x16b
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xf
	.byte	0x69
	.4byte	0x24c
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xf
	.byte	0x6b
	.4byte	0x155
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xf
	.byte	0x74
	.4byte	0x8a1
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xf
	.byte	0x76
	.4byte	0xa2
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7d2
	.uleb128 0xe
	.4byte	0x155
	.4byte	0x891
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	0xb8
	.4byte	0x8a1
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0xf
	.byte	0x58
	.4byte	0x8ac
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8b2
	.uleb128 0xc
	.4byte	0x8d1
	.uleb128 0xd
	.4byte	0xa2
	.uleb128 0xd
	.4byte	0x87b
	.uleb128 0xd
	.4byte	0x32b
	.uleb128 0xd
	.4byte	0x8d1
	.uleb128 0xd
	.4byte	0x16b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8d7
	.uleb128 0x8
	.4byte	0x24c
	.uleb128 0x18
	.4byte	.LASF144
	.2byte	0x134
	.byte	0xe
	.byte	0x71
	.4byte	0x9a9
	.uleb128 0x14
	.string	"op"
	.byte	0xe
	.byte	0x73
	.4byte	0x155
	.byte	0
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xe
	.byte	0x74
	.4byte	0x155
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xe
	.byte	0x75
	.4byte	0x155
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xe
	.byte	0x76
	.4byte	0x155
	.byte	0x3
	.uleb128 0x14
	.string	"xid"
	.byte	0xe
	.byte	0x77
	.4byte	0x181
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xe
	.byte	0x78
	.4byte	0x16b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0xe
	.byte	0x79
	.4byte	0x16b
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0xe
	.byte	0x7a
	.4byte	0x1c9
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0xe
	.byte	0x7b
	.4byte	0x1c9
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xe
	.byte	0x7c
	.4byte	0x1c9
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xe
	.byte	0x7d
	.4byte	0x1c9
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xe
	.byte	0x7e
	.4byte	0x9af
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xe
	.byte	0x7f
	.4byte	0x9bf
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xe
	.byte	0x80
	.4byte	0x9cf
	.byte	0x6c
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xe
	.byte	0x81
	.4byte	0x181
	.byte	0xec
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xe
	.byte	0x8c
	.4byte	0x9df
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8dc
	.uleb128 0xe
	.4byte	0x155
	.4byte	0x9bf
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	0x155
	.4byte	0x9cf
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x3f
	.byte	0
	.uleb128 0xe
	.4byte	0x155
	.4byte	0x9df
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x7f
	.byte	0
	.uleb128 0xe
	.4byte	0x155
	.4byte	0x9ef
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x43
	.byte	0
	.uleb128 0xa
	.4byte	.LASF158
	.byte	0x30
	.byte	0x1
	.byte	0x88
	.4byte	0xa80
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0x1
	.byte	0x89
	.4byte	0x155
	.byte	0
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0x1
	.byte	0x8a
	.4byte	0x155
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0x1
	.byte	0x8b
	.4byte	0x155
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0x1
	.byte	0x8c
	.4byte	0x155
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x1
	.byte	0x8d
	.4byte	0x181
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0x1
	.byte	0x8e
	.4byte	0x181
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0x1
	.byte	0x8f
	.4byte	0x181
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x1
	.byte	0x90
	.4byte	0xa80
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0x1
	.byte	0x91
	.4byte	0xa80
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x1
	.byte	0x92
	.4byte	0xa80
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0x1
	.byte	0x93
	.4byte	0xa80
	.byte	0x28
	.byte	0
	.uleb128 0xe
	.4byte	0x181
	.4byte	0xa90
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF170
	.byte	0x18
	.byte	0x1
	.byte	0xa3
	.4byte	0xab5
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x1
	.byte	0xa5
	.4byte	0xb2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa7
	.4byte	0x24c
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x105
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb10
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.2byte	0x105
	.4byte	0xa2
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xaf7
	.uleb128 0x1c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x111
	.4byte	0x181
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL2
	.4byte	0x133a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_request
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF172
	.byte	0x1
	.byte	0xcd
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbb
	.uleb128 0x20
	.4byte	.LASF168
	.byte	0x1
	.byte	0xcd
	.4byte	0xbbb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF174
	.byte	0x1
	.byte	0xd2
	.4byte	0x181
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.LASF175
	.byte	0x1
	.byte	0xd3
	.4byte	0x33
	.4byte	.LLST2
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.byte	0xd4
	.4byte	0x181
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.string	"tim"
	.byte	0x1
	.byte	0xd5
	.4byte	0xca
	.4byte	.LLST3
	.uleb128 0x23
	.string	"us"
	.byte	0x1
	.byte	0xd8
	.4byte	0x181
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xba8
	.uleb128 0x22
	.string	"tv"
	.byte	0x1
	.byte	0xd9
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL11
	.4byte	0x1345
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL5
	.4byte	0x1350
	.uleb128 0x24
	.4byte	.LVL8
	.4byte	0x1350
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x181
	.uleb128 0x19
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x14b
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd71
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.2byte	0x14b
	.4byte	0xa2
	.4byte	.LLST5
	.uleb128 0x25
	.string	"pcb"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x87b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.string	"p"
	.byte	0x1
	.2byte	0x14b
	.4byte	0x32b
	.4byte	.LLST6
	.uleb128 0x26
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x14b
	.4byte	0x8d1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x26
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x14b
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x14d
	.4byte	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x14e
	.4byte	0x155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x1c
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x14f
	.4byte	0xa80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"err"
	.byte	0x1
	.2byte	0x150
	.4byte	0x257
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	.LVL13
	.4byte	0x135b
	.4byte	0xc78
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_retry
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL14
	.4byte	0x135b
	.4byte	0xc94
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_request
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL16
	.4byte	0x1366
	.4byte	0xcb8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL17
	.4byte	0x1366
	.4byte	0xcdc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -47
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.4byte	.LVL19
	.4byte	0x1366
	.4byte	0xd01
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x28
	.4byte	.LVL22
	.4byte	0x1371
	.4byte	0xd15
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL23
	.4byte	0xb10
	.4byte	0xd29
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x28
	.4byte	.LVL26
	.4byte	0x133a
	.4byte	0xd4e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0xc
	.4byte	0x36ee80
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_request
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL30
	.4byte	0xab5
	.4byte	0xd61
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL31
	.4byte	0xab5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF179
	.byte	0x1
	.byte	0xec
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdaf
	.uleb128 0x29
	.string	"req"
	.byte	0x1
	.byte	0xec
	.4byte	0xdaf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LVL33
	.4byte	0x137c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9ef
	.uleb128 0x19
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x1b0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea0
	.uleb128 0x2a
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x8d1
	.4byte	.LLST8
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x32b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xe62
	.uleb128 0x2c
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xdaf
	.4byte	.LLST9
	.uleb128 0x24
	.4byte	.LVL38
	.4byte	0xd71
	.uleb128 0x28
	.4byte	.LVL40
	.4byte	0x1385
	.4byte	0xe2e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.uleb128 0x28
	.4byte	.LVL41
	.4byte	0x1371
	.4byte	0xe42
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL42
	.4byte	0x133a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbb8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_retry
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL35
	.4byte	0x1390
	.4byte	0xe80
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL44
	.4byte	0x133a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbb8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_request
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1e7
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7c
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.2byte	0x1e7
	.4byte	0xa2
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x24c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"err"
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x257
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	.LVL47
	.4byte	0x139b
	.4byte	0xf07
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_dns_found
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL50
	.4byte	0x13a6
	.4byte	0xf29
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_servers+4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x28
	.4byte	.LVL52
	.4byte	0x13a6
	.4byte	0xf48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x28
	.4byte	.LVL54
	.4byte	0xdb5
	.4byte	0xf5c
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL55
	.4byte	0x133a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0xbb8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_retry
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x1d0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe0
	.uleb128 0x26
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xbf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x8d1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.string	"arg"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LVL57
	.4byte	0xdb5
	.4byte	0xfd0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL58
	.4byte	0xab5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x213
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1089
	.uleb128 0x2e
	.4byte	.LASF191
	.4byte	0x1099
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6548
	.uleb128 0x28
	.4byte	.LVL59
	.4byte	0x13af
	.4byte	0x1019
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.uleb128 0x28
	.4byte	.LVL60
	.4byte	0x13ba
	.4byte	0x1049
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x21f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6548
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL61
	.4byte	0x13c5
	.4byte	0x1065
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_recv
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL62
	.4byte	0xea0
	.4byte	0x1078
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL63
	.4byte	0x13d0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb8
	.4byte	0x1099
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.4byte	0x1089
	.uleb128 0x2d
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x236
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10da
	.uleb128 0x28
	.4byte	.LVL64
	.4byte	0x135b
	.4byte	0x10d0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_request
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL65
	.4byte	0x13db
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x242
	.4byte	0x155
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x24c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1180
	.uleb128 0x26
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x24c
	.4byte	0x155
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LASF191
	.4byte	0x1190
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6558
	.uleb128 0x28
	.4byte	.LVL67
	.4byte	0x13ba
	.4byte	0x1153
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x24e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6558
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL68
	.4byte	0x13ba
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x24f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6558
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xb8
	.4byte	0x1190
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.4byte	0x1180
	.uleb128 0x2f
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x257
	.4byte	0x155
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x272
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x120a
	.uleb128 0x1a
	.string	"idx"
	.byte	0x1
	.2byte	0x272
	.4byte	0x155
	.4byte	.LLST12
	.uleb128 0x2a
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x272
	.4byte	0x8d1
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LVL70
	.4byte	0x13a6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xf
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	sntp_servers+4
	.byte	0x22
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x24c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x126f
	.uleb128 0x1a
	.string	"idx"
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x155
	.4byte	.LLST14
	.uleb128 0x28
	.4byte	.LVL75
	.4byte	0x13a6
	.4byte	0x1259
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	sntp_servers+4
	.byte	0x22
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL76
	.4byte	0x13a6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x2b3
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a4
	.uleb128 0x1a
	.string	"idx"
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x155
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x2b3
	.4byte	0xb2
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x30
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x2c2
	.4byte	0xb2
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12cf
	.uleb128 0x1a
	.string	"idx"
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x155
	.4byte	.LLST16
	.byte	0
	.uleb128 0x31
	.4byte	.LASF199
	.byte	0x1
	.byte	0x9e
	.4byte	0x155
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_opmode
	.uleb128 0x31
	.4byte	.LASF200
	.byte	0x1
	.byte	0xa1
	.4byte	0x87b
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_pcb
	.uleb128 0xe
	.4byte	0xa90
	.4byte	0x1301
	.uleb128 0xf
	.4byte	0x9b
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF201
	.byte	0x1
	.byte	0xa9
	.4byte	0x12f1
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_servers
	.uleb128 0x31
	.4byte	.LASF202
	.byte	0x1
	.byte	0xb8
	.4byte	0x181
	.uleb128 0x5
	.byte	0x3
	.4byte	sntp_retry_timeout
	.uleb128 0x32
	.4byte	.LASF203
	.byte	0x9
	.byte	0x40
	.4byte	0x8d7
	.uleb128 0x33
	.4byte	.LASF204
	.byte	0x9
	.2byte	0x110
	.4byte	0x8d7
	.uleb128 0x34
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x10
	.byte	0x53
	.uleb128 0x34
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x4
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x11
	.byte	0x6f
	.uleb128 0x34
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x10
	.byte	0x56
	.uleb128 0x34
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0xb
	.byte	0xd1
	.uleb128 0x34
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0xb
	.byte	0xcb
	.uleb128 0x35
	.4byte	.LASF214
	.4byte	.LASF214
	.uleb128 0x34
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0xf
	.byte	0x8d
	.uleb128 0x34
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0xb
	.byte	0xc1
	.uleb128 0x34
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x12
	.byte	0x65
	.uleb128 0x35
	.4byte	.LASF215
	.4byte	.LASF215
	.uleb128 0x34
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0xf
	.byte	0x7e
	.uleb128 0x34
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x13
	.byte	0x29
	.uleb128 0x34
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xf
	.byte	0x85
	.uleb128 0x34
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0xf
	.byte	0x80
	.uleb128 0x34
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0xf
	.byte	0x7f
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE15
	.2byte	0x7
	.byte	0x73
	.sleb128 -2085978496
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x8
	.byte	0x7a
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE15
	.2byte	0xc
	.byte	0x73
	.sleb128 -2085978496
	.byte	0x30
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x9
	.byte	0xf1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x9
	.byte	0xf1
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL40-1
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF185:
	.string	"sntp_dns_found"
.LASF109:
	.string	"netif_igmp_mac_filter_fn"
.LASF97:
	.string	"MEMP_SYS_TIMEOUT"
.LASF68:
	.string	"output_ip6"
.LASF53:
	.string	"pbuf"
.LASF74:
	.string	"rs_count"
.LASF37:
	.string	"ip6_addr"
.LASF89:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF219:
	.string	"udp_bind"
.LASF98:
	.string	"MEMP_NETDB"
.LASF146:
	.string	"hlen"
.LASF179:
	.string	"sntp_initialize_request"
.LASF4:
	.string	"__uint8_t"
.LASF113:
	.string	"pcb_allocated"
.LASF124:
	.string	"lease_used"
.LASF160:
	.string	"stratum"
.LASF41:
	.string	"type"
.LASF76:
	.string	"hwaddr_len"
.LASF39:
	.string	"_ip_addr"
.LASF11:
	.string	"long long unsigned int"
.LASF71:
	.string	"dhcps_pcb"
.LASF211:
	.string	"udp_sendto"
.LASF33:
	.string	"addr"
.LASF63:
	.string	"ip6_addr_state"
.LASF145:
	.string	"htype"
.LASF148:
	.string	"secs"
.LASF3:
	.string	"__int8_t"
.LASF82:
	.string	"loop_last"
.LASF54:
	.string	"next"
.LASF222:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/apps/sntp/sntp.c"
.LASF95:
	.string	"MEMP_ARP_QUEUE"
.LASF22:
	.string	"int16_t"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF72:
	.string	"dhcp_event"
.LASF137:
	.string	"local_port"
.LASF129:
	.string	"offered_gw_addr"
.LASF77:
	.string	"hwaddr"
.LASF132:
	.string	"offered_t2_rebind"
.LASF56:
	.string	"tot_len"
.LASF100:
	.string	"MEMP_IP6_REASSDATA"
.LASF69:
	.string	"state"
.LASF75:
	.string	"hostname"
.LASF12:
	.string	"long int"
.LASF45:
	.string	"PBUF_IP"
.LASF52:
	.string	"PBUF_POOL"
.LASF86:
	.string	"MEMP_RAW_PCB"
.LASF32:
	.string	"ip4_addr"
.LASF65:
	.string	"input"
.LASF51:
	.string	"PBUF_REF"
.LASF111:
	.string	"dhcp_event_fn"
.LASF192:
	.string	"sntp_enabled"
.LASF131:
	.string	"offered_t1_renew"
.LASF23:
	.string	"uint16_t"
.LASF176:
	.string	"sntp_recv"
.LASF87:
	.string	"MEMP_UDP_PCB"
.LASF175:
	.string	"is_1900_based"
.LASF62:
	.string	"netmask"
.LASF130:
	.string	"offered_t0_lease"
.LASF108:
	.string	"netif_linkoutput_fn"
.LASF199:
	.string	"sntp_opmode"
.LASF96:
	.string	"MEMP_IGMP_GROUP"
.LASF9:
	.string	"__uint32_t"
.LASF159:
	.string	"li_vn_mode"
.LASF173:
	.string	"new_retry_timeout"
.LASF6:
	.string	"__int16_t"
.LASF121:
	.string	"t2_timeout"
.LASF17:
	.string	"suseconds_t"
.LASF122:
	.string	"t1_renew_time"
.LASF187:
	.string	"sntp_init"
.LASF182:
	.string	"sntpmsg"
.LASF183:
	.string	"sntp_request"
.LASF143:
	.string	"udp_recv_fn"
.LASF85:
	.string	"last_ip_addr"
.LASF107:
	.string	"netif_output_ip6_fn"
.LASF102:
	.string	"MEMP_PBUF"
.LASF196:
	.string	"sntp_setservername"
.LASF166:
	.string	"reference_timestamp"
.LASF66:
	.string	"output"
.LASF115:
	.string	"subnet_mask_given"
.LASF141:
	.string	"recv"
.LASF209:
	.string	"pbuf_copy_partial"
.LASF78:
	.string	"name"
.LASF59:
	.string	"l2_buf"
.LASF88:
	.string	"MEMP_TCP_PCB"
.LASF55:
	.string	"payload"
.LASF204:
	.string	"ip_addr_any"
.LASF1:
	.string	"short unsigned int"
.LASF36:
	.string	"ip4_addr_p_t"
.LASF35:
	.string	"ip4_addr_t"
.LASF99:
	.string	"MEMP_ND6_QUEUE"
.LASF210:
	.string	"pbuf_free"
.LASF177:
	.string	"port"
.LASF208:
	.string	"sys_untimeout"
.LASF106:
	.string	"netif_output_fn"
.LASF119:
	.string	"request_timeout"
.LASF207:
	.string	"lwip_ntohl"
.LASF205:
	.string	"sys_timeout"
.LASF142:
	.string	"recv_arg"
.LASF140:
	.string	"mcast_ttl"
.LASF34:
	.string	"ip4_addr_packed"
.LASF64:
	.string	"ipv6_addr_cb"
.LASF31:
	.string	"timeval"
.LASF118:
	.string	"options_out_len"
.LASF112:
	.string	"msg_in"
.LASF90:
	.string	"MEMP_TCP_SEG"
.LASF180:
	.string	"sntp_send_request"
.LASF223:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF170:
	.string	"sntp_server"
.LASF104:
	.string	"MEMP_MAX"
.LASF152:
	.string	"giaddr"
.LASF42:
	.string	"ip_addr_t"
.LASF43:
	.string	"err_t"
.LASF161:
	.string	"poll"
.LASF13:
	.string	"sizetype"
.LASF194:
	.string	"sntp_setserver"
.LASF125:
	.string	"t0_timeout"
.LASF60:
	.string	"netif"
.LASF220:
	.string	"udp_remove"
.LASF153:
	.string	"chaddr"
.LASF101:
	.string	"MEMP_MLD6_GROUP"
.LASF79:
	.string	"igmp_mac_filter"
.LASF158:
	.string	"sntp_msg"
.LASF61:
	.string	"ip_addr"
.LASF50:
	.string	"PBUF_ROM"
.LASF193:
	.string	"sntp_getoperatingmode"
.LASF14:
	.string	"long unsigned int"
.LASF184:
	.string	"sntp_server_address"
.LASF165:
	.string	"reference_identifier"
.LASF83:
	.string	"loop_cnt_current"
.LASF16:
	.string	"time_t"
.LASF218:
	.string	"udp_recv"
.LASF105:
	.string	"netif_input_fn"
.LASF46:
	.string	"PBUF_LINK"
.LASF201:
	.string	"sntp_servers"
.LASF29:
	.string	"s16_t"
.LASF18:
	.string	"tv_sec"
.LASF58:
	.string	"l2_owner"
.LASF190:
	.string	"operating_mode"
.LASF151:
	.string	"siaddr"
.LASF80:
	.string	"mld_mac_filter"
.LASF164:
	.string	"root_dispersion"
.LASF139:
	.string	"multicast_ip"
.LASF25:
	.string	"_Bool"
.LASF217:
	.string	"__assert_func"
.LASF5:
	.string	"unsigned char"
.LASF114:
	.string	"tries"
.LASF134:
	.string	"local_ip"
.LASF120:
	.string	"t1_timeout"
.LASF221:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF7:
	.string	"short int"
.LASF155:
	.string	"file"
.LASF171:
	.string	"sntp_retry"
.LASF30:
	.string	"u32_t"
.LASF191:
	.string	"__func__"
.LASF195:
	.string	"server"
.LASF197:
	.string	"sntp_getserver"
.LASF202:
	.string	"sntp_retry_timeout"
.LASF110:
	.string	"netif_mld_mac_filter_fn"
.LASF27:
	.string	"s8_t"
.LASF48:
	.string	"PBUF_RAW"
.LASF47:
	.string	"PBUF_RAW_TX"
.LASF189:
	.string	"sntp_setoperatingmode"
.LASF127:
	.string	"offered_ip_addr"
.LASF19:
	.string	"tv_usec"
.LASF24:
	.string	"uint32_t"
.LASF49:
	.string	"PBUF_RAM"
.LASF138:
	.string	"remote_port"
.LASF156:
	.string	"cookie"
.LASF93:
	.string	"MEMP_TCPIP_MSG_API"
.LASF15:
	.string	"char"
.LASF178:
	.string	"mode"
.LASF174:
	.string	"rx_secs"
.LASF0:
	.string	"unsigned int"
.LASF117:
	.string	"msg_out"
.LASF91:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"__uint16_t"
.LASF162:
	.string	"precision"
.LASF92:
	.string	"MEMP_NETCONN"
.LASF44:
	.string	"PBUF_TRANSPORT"
.LASF103:
	.string	"MEMP_PBUF_POOL"
.LASF144:
	.string	"dhcp_msg"
.LASF149:
	.string	"ciaddr"
.LASF198:
	.string	"sntp_getservername"
.LASF163:
	.string	"root_delay"
.LASF123:
	.string	"t2_rebind_time"
.LASF172:
	.string	"sntp_process"
.LASF128:
	.string	"offered_sn_mask"
.LASF81:
	.string	"loop_first"
.LASF215:
	.string	"memcpy"
.LASF40:
	.string	"u_addr"
.LASF216:
	.string	"udp_new_ip_type"
.LASF136:
	.string	"so_options"
.LASF20:
	.string	"int8_t"
.LASF167:
	.string	"originate_timestamp"
.LASF28:
	.string	"u16_t"
.LASF38:
	.string	"ip6_addr_t"
.LASF214:
	.string	"memset"
.LASF203:
	.string	"ip_addr_any_type"
.LASF200:
	.string	"sntp_pcb"
.LASF168:
	.string	"receive_timestamp"
.LASF186:
	.string	"ipaddr"
.LASF213:
	.string	"dns_gethostbyname"
.LASF21:
	.string	"uint8_t"
.LASF206:
	.string	"settimeofday"
.LASF126:
	.string	"server_ip_addr"
.LASF70:
	.string	"dhcp"
.LASF57:
	.string	"flags"
.LASF169:
	.string	"transmit_timestamp"
.LASF147:
	.string	"hops"
.LASF133:
	.string	"udp_pcb"
.LASF154:
	.string	"sname"
.LASF157:
	.string	"options"
.LASF84:
	.string	"l2_buffer_free_notify"
.LASF73:
	.string	"ip6_autoconfig_enabled"
.LASF116:
	.string	"p_out"
.LASF150:
	.string	"yiaddr"
.LASF67:
	.string	"linkoutput"
.LASF181:
	.string	"server_addr"
.LASF135:
	.string	"remote_ip"
.LASF212:
	.string	"pbuf_alloc"
.LASF188:
	.string	"sntp_stop"
.LASF26:
	.string	"u8_t"
.LASF94:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
