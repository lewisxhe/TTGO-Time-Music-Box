	.file	"tcpip.c"
	.text
.Ltext0:
	.section	.text.mem_free_local,"ax",@progbits
	.align	4
	.type	mem_free_local, @function
mem_free_local:
.LFB27:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/api/tcpip.c"
	.loc 1 545 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 546 0
	mov.n	a10, a2
	call8	free
.LVL1:
	retw.n
.LFE27:
	.size	mem_free_local, .-mem_free_local
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"tcpip_thread: invalid message"
	.align	4
.LC6:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/api/tcpip.c"
	.section	.text.tcpip_thread,"ax",@progbits
	.literal_position
	.literal .LC0, tcpip_init_done
	.literal .LC1, tcpip_init_done_arg
	.literal .LC2, mbox
	.literal .LC4, .LC3
	.literal .LC5, __func__$6520
	.literal .LC7, .LC6
	.literal .LC8, .L8
	.align	4
	.type	tcpip_thread, @function
tcpip_thread:
.LFB15:
	.loc 1 82 0
.LVL2:
	entry	sp, 48
.LCFI1:
	.loc 1 88 0
	l32r	a2, .LC0
.LVL3:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L4
	.loc 1 89 0
	l32r	a8, .LC1
	l32i.n	a10, a8, 0
	callx8	a2
.LVL4:
.L4:
	.loc 1 102 0
	mov.n	a11, sp
	l32r	a10, .LC2
	call8	sys_timeouts_mbox_fetch
.LVL5:
	.loc 1 107 0
	l32i.n	a8, sp, 0
	bnez.n	a8, .L5
	.loc 1 109 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi	a11, 0x6d
	l32r	a10, .LC7
	call8	__assert_func
.LVL6:
.L5:
	.loc 1 117 0
	l32i.n	a9, a8, 0
	bgeui	a9, 5, .L6
	l32r	a10, .LC8
	addx4	a9, a9, a10
	l32i.n	a9, a9, 0
	jx	a9
	.section	.rodata.tcpip_thread,"a",@progbits
	.align	4
	.align	4
.L8:
	.word	.L7
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.section	.text.tcpip_thread
.L7:
	.loc 1 122 0
	l32i.n	a2, a8, 4
	l32i.n	a10, a8, 8
	callx8	a2
.LVL7:
	.loc 1 123 0
	j	.L4
.L9:
	.loc 1 127 0
	l32i.n	a2, a8, 4
	l32i.n	a8, a2, 0
	mov.n	a10, a2
	callx8	a8
.LVL8:
	s8i	a10, a2, 8
	.loc 1 129 0
	l32i.n	a2, sp, 0
	l32i.n	a2, a2, 4
	l32i.n	a10, a2, 4
	call8	sys_sem_signal
.LVL9:
	.loc 1 133 0
	j	.L4
.L10:
	.loc 1 141 0
	l32i.n	a10, a8, 4
	beqz.n	a10, .L14
	.loc 1 141 0 discriminator 1
	l32i.n	a11, a8, 8
	beqz.n	a11, .L14
	.loc 1 143 0
	l32i.n	a2, a8, 12
	callx8	a2
.LVL10:
.L14:
	.loc 1 148 0
	l32i.n	a10, sp, 0
	call8	free
.LVL11:
	.loc 1 150 0
	j	.L4
.L11:
	.loc 1 171 0
	l32i.n	a2, a8, 4
	l32i.n	a10, a8, 8
	callx8	a2
.LVL12:
	.loc 1 172 0
	l32i.n	a10, sp, 0
	call8	free
.LVL13:
	.loc 1 173 0
	j	.L4
.L12:
	.loc 1 178 0
	l32i.n	a2, a8, 4
	l32i.n	a10, a8, 8
	callx8	a2
.LVL14:
	.loc 1 179 0
	j	.L4
.L6:
	.loc 1 184 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi	a11, 0xb8
	l32r	a10, .LC7
	call8	__assert_func
.LVL15:
.LFE15:
	.size	tcpip_thread, .-tcpip_thread
	.section	.text.pbuf_free_int,"ax",@progbits
	.align	4
	.type	pbuf_free_int, @function
pbuf_free_int:
.LFB25:
	.loc 1 518 0
.LVL16:
	entry	sp, 32
.LCFI2:
.LVL17:
	.loc 1 520 0
	mov.n	a10, a2
	call8	pbuf_free
.LVL18:
	retw.n
.LFE25:
	.size	pbuf_free_int, .-pbuf_free_int
	.section	.text.tcpip_inpkt,"ax",@progbits
	.literal_position
	.literal .LC9, mbox
	.literal .LC10, memp_pools
	.align	4
	.global	tcpip_inpkt
	.type	tcpip_inpkt, @function
tcpip_inpkt:
.LFB16:
	.loc 1 200 0
.LVL19:
	entry	sp, 32
.LCFI3:
	.loc 1 211 0
	l32r	a5, .LC9
	l32i.n	a5, a5, 0
	beqz.n	a5, .L18
	.loc 1 214 0
	l32r	a5, .LC10
	l32i.n	a5, a5, 32
	l16ui	a10, a5, 0
	call8	malloc
.LVL20:
	mov.n	a5, a10
.LVL21:
	.loc 1 215 0
	beqz.n	a10, .L19
	.loc 1 219 0
	movi.n	a8, 2
	s32i.n	a8, a10, 0
	.loc 1 220 0
	s32i.n	a2, a10, 4
	.loc 1 221 0
	s32i.n	a3, a10, 8
	.loc 1 222 0
	s32i.n	a4, a10, 12
	.loc 1 229 0
	mov.n	a11, a10
	l32r	a10, .LC9
	call8	sys_mbox_trypost
.LVL22:
	extui	a2, a10, 0, 8
.LVL23:
	beqz.n	a2, .L17
	.loc 1 231 0
	mov.n	a10, a5
	call8	free
.LVL24:
	.loc 1 232 0
	movi	a2, 0xff
	retw.n
.LVL25:
.L18:
	.loc 1 212 0
	movi	a2, 0xfa
.LVL26:
	retw.n
.LVL27:
.L19:
	.loc 1 216 0
	movi	a2, 0xff
.LVL28:
.L17:
	.loc 1 236 0
	retw.n
.LFE16:
	.size	tcpip_inpkt, .-tcpip_inpkt
	.section	.text.tcpip_input,"ax",@progbits
	.literal_position
	.literal .LC11, ethernet_input
	.literal .LC12, ip_input
	.align	4
	.global	tcpip_input
	.type	tcpip_input, @function
tcpip_input:
.LFB17:
	.loc 1 249 0
.LVL29:
	entry	sp, 32
.LCFI4:
	mov.n	a11, a3
	.loc 1 251 0
	l8ui	a9, a3, 181
	movi.n	a8, 0x18
	bnone	a9, a8, .L21
	.loc 1 252 0
	l32r	a12, .LC11
	mov.n	a10, a2
	call8	tcpip_inpkt
.LVL30:
	extui	a2, a10, 0, 8
.LVL31:
	retw.n
.LVL32:
.L21:
	.loc 1 255 0
	l32r	a12, .LC12
	mov.n	a10, a2
	call8	tcpip_inpkt
.LVL33:
	extui	a2, a10, 0, 8
.LVL34:
	.loc 1 256 0
	retw.n
.LFE17:
	.size	tcpip_input, .-tcpip_input
	.section	.text.tcpip_callback_with_block,"ax",@progbits
	.literal_position
	.literal .LC13, mbox
	.literal .LC14, memp_pools
	.align	4
	.global	tcpip_callback_with_block
	.type	tcpip_callback_with_block, @function
tcpip_callback_with_block:
.LFB18:
	.loc 1 271 0
.LVL35:
	entry	sp, 32
.LCFI5:
	extui	a4, a4, 0, 8
	.loc 1 274 0
	l32r	a5, .LC13
	l32i.n	a5, a5, 0
	beqz.n	a5, .L26
	.loc 1 275 0
	l32r	a5, .LC14
	l32i.n	a5, a5, 28
	l16ui	a10, a5, 0
	call8	malloc
.LVL36:
	mov.n	a5, a10
.LVL37:
	.loc 1 276 0
	beqz.n	a10, .L27
	.loc 1 280 0
	movi.n	a8, 3
	s32i.n	a8, a10, 0
	.loc 1 281 0
	s32i.n	a2, a10, 4
	.loc 1 282 0
	s32i.n	a3, a10, 8
	.loc 1 283 0
	beqz.n	a4, .L25
	.loc 1 284 0
	mov.n	a11, a10
	l32r	a10, .LC13
	call8	sys_mbox_post
.LVL38:
	.loc 1 292 0
	movi.n	a2, 0
.LVL39:
	retw.n
.LVL40:
.L25:
	.loc 1 286 0
	mov.n	a11, a10
	l32r	a10, .LC13
	call8	sys_mbox_trypost
.LVL41:
	extui	a2, a10, 0, 8
.LVL42:
	beqz.n	a2, .L24
	.loc 1 288 0
	mov.n	a10, a5
	call8	free
.LVL43:
	.loc 1 289 0
	movi	a2, 0xff
	retw.n
.LVL44:
.L26:
	.loc 1 294 0
	movi	a2, 0xfa
.LVL45:
	retw.n
.LVL46:
.L27:
	.loc 1 277 0
	movi	a2, 0xff
.LVL47:
.L24:
	.loc 1 295 0
	retw.n
.LFE18:
	.size	tcpip_callback_with_block, .-tcpip_callback_with_block
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"semaphore not initialized"
	.section	.text.tcpip_send_api_msg,"ax",@progbits
	.literal_position
	.literal .LC16, .LC15
	.literal .LC17, __func__$6557
	.literal .LC18, .LC6
	.literal .LC19, mbox
	.align	4
	.global	tcpip_send_api_msg
	.type	tcpip_send_api_msg, @function
tcpip_send_api_msg:
.LFB19:
	.loc 1 368 0
.LVL48:
	entry	sp, 48
.LCFI6:
	.loc 1 369 0
	l32i.n	a5, a4, 0
	bnez.n	a5, .L29
	.loc 1 369 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0x171
	l32r	a10, .LC18
	call8	__assert_func
.LVL49:
.L29:
	.loc 1 371 0
	l32r	a5, .LC19
	l32i.n	a5, a5, 0
	beqz.n	a5, .L31
.LBB2:
	.loc 1 375 0
	movi.n	a5, 0
	s32i.n	a5, sp, 0
	.loc 1 376 0
	s32i.n	a2, sp, 4
	.loc 1 377 0
	s32i.n	a3, sp, 8
	.loc 1 378 0
	mov.n	a11, sp
	l32r	a10, .LC19
	call8	sys_mbox_post
.LVL50:
	.loc 1 379 0
	mov.n	a11, a5
	mov.n	a10, a4
	call8	sys_arch_sem_wait
.LVL51:
	.loc 1 382 0
	mov.n	a2, a5
.LVL52:
	retw.n
.LVL53:
.L31:
.LBE2:
	.loc 1 384 0
	movi	a2, 0xfa
.LVL54:
	.loc 1 385 0
	retw.n
.LFE19:
	.size	tcpip_send_api_msg, .-tcpip_send_api_msg
	.section	.text.tcpip_api_call,"ax",@progbits
	.literal_position
	.literal .LC20, mbox
	.align	4
	.global	tcpip_api_call
	.type	tcpip_api_call, @function
tcpip_api_call:
.LFB20:
	.loc 1 389 0
.LVL55:
	entry	sp, 48
.LCFI7:
	.loc 1 397 0
	l32r	a8, .LC20
	l32i.n	a8, a8, 0
	beqz.n	a8, .L34
.LBB3:
	.loc 1 402 0
	call8	sys_thread_sem_get
.LVL56:
	s32i.n	a10, a3, 4
	.loc 1 411 0
	movi.n	a8, 1
	s32i.n	a8, sp, 0
	.loc 1 412 0
	s32i.n	a3, sp, 4
	.loc 1 413 0
	s32i.n	a2, a3, 0
	.loc 1 414 0
	mov.n	a11, sp
	l32r	a10, .LC20
	call8	sys_mbox_post
.LVL57:
	.loc 1 416 0
	movi.n	a11, 0
	l32i.n	a10, a3, 4
	call8	sys_arch_sem_wait
.LVL58:
	.loc 1 422 0
	movi.n	a2, 0
.LVL59:
	retw.n
.LVL60:
.L34:
.LBE3:
	.loc 1 424 0
	movi	a2, 0xfa
.LVL61:
	.loc 1 426 0
	retw.n
.LFE20:
	.size	tcpip_api_call, .-tcpip_api_call
	.section	.text.tcpip_callbackmsg_new,"ax",@progbits
	.literal_position
	.literal .LC21, memp_pools
	.align	4
	.global	tcpip_callbackmsg_new
	.type	tcpip_callbackmsg_new, @function
tcpip_callbackmsg_new:
.LFB21:
	.loc 1 438 0
.LVL62:
	entry	sp, 32
.LCFI8:
	.loc 1 439 0
	l32r	a8, .LC21
	l32i.n	a8, a8, 28
	l16ui	a10, a8, 0
	call8	malloc
.LVL63:
	.loc 1 440 0
	beqz.n	a10, .L37
	.loc 1 443 0
	movi.n	a8, 4
	s32i.n	a8, a10, 0
	.loc 1 444 0
	s32i.n	a2, a10, 4
	.loc 1 445 0
	s32i.n	a3, a10, 8
	.loc 1 446 0
	mov.n	a2, a10
.LVL64:
	retw.n
.LVL65:
.L37:
	.loc 1 441 0
	movi.n	a2, 0
.LVL66:
	.loc 1 447 0
	retw.n
.LFE21:
	.size	tcpip_callbackmsg_new, .-tcpip_callbackmsg_new
	.section	.text.tcpip_callbackmsg_delete,"ax",@progbits
	.align	4
	.global	tcpip_callbackmsg_delete
	.type	tcpip_callbackmsg_delete, @function
tcpip_callbackmsg_delete:
.LFB22:
	.loc 1 456 0
.LVL67:
	entry	sp, 32
.LCFI9:
	.loc 1 457 0
	mov.n	a10, a2
	call8	free
.LVL68:
	retw.n
.LFE22:
	.size	tcpip_callbackmsg_delete, .-tcpip_callbackmsg_delete
	.section	.text.tcpip_trycallback,"ax",@progbits
	.literal_position
	.literal .LC22, mbox
	.align	4
	.global	tcpip_trycallback
	.type	tcpip_trycallback, @function
tcpip_trycallback:
.LFB23:
	.loc 1 469 0
.LVL69:
	entry	sp, 32
.LCFI10:
	.loc 1 470 0
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	beqz.n	a8, .L41
	.loc 1 473 0
	mov.n	a11, a2
	l32r	a10, .LC22
	call8	sys_mbox_trypost
.LVL70:
	extui	a2, a10, 0, 8
.LVL71:
	retw.n
.LVL72:
.L41:
	.loc 1 471 0
	movi	a2, 0xfa
.LVL73:
	.loc 1 474 0
	retw.n
.LFE23:
	.size	tcpip_trycallback, .-tcpip_trycallback
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"failed to create tcpip_thread mbox"
	.align	4
.LC32:
	.string	"tiT"
	.section	.text.tcpip_init,"ax",@progbits
	.literal_position
	.literal .LC23, tcpip_init_done
	.literal .LC24, tcpip_init_done_arg
	.literal .LC25, mbox
	.literal .LC27, .LC26
	.literal .LC28, __func__$6580
	.literal .LC29, .LC6
	.literal .LC30, 2560
	.literal .LC31, tcpip_thread
	.literal .LC33, .LC32
	.literal .LC34, g_lwip_task
	.align	4
	.global	tcpip_init
	.type	tcpip_init, @function
tcpip_init:
.LFB24:
	.loc 1 486 0
.LVL74:
	entry	sp, 32
.LCFI11:
	.loc 1 488 0
	call8	lwip_init
.LVL75:
	.loc 1 490 0
	l32r	a8, .LC23
	s32i.n	a2, a8, 0
	.loc 1 491 0
	l32r	a8, .LC24
	s32i.n	a3, a8, 0
	.loc 1 492 0
	movi.n	a11, 0x20
	l32r	a10, .LC25
	call8	sys_mbox_new
.LVL76:
	extui	a10, a10, 0, 8
	beqz.n	a10, .L43
	.loc 1 493 0 discriminator 1
	l32r	a13, .LC27
	l32r	a12, .LC28
	movi	a11, 0x1ed
	l32r	a10, .LC29
	call8	__assert_func
.LVL77:
.L43:
	.loc 1 502 0
	movi.n	a14, 0x12
	l32r	a13, .LC30
	movi.n	a12, 0
	l32r	a11, .LC31
	l32r	a10, .LC33
	call8	sys_thread_new
.LVL78:
	l32r	a2, .LC34
.LVL79:
	s32i.n	a10, a2, 0
	retw.n
.LFE24:
	.size	tcpip_init, .-tcpip_init
	.section	.text.pbuf_free_callback,"ax",@progbits
	.literal_position
	.literal .LC35, pbuf_free_int
	.align	4
	.global	pbuf_free_callback
	.type	pbuf_free_callback, @function
pbuf_free_callback:
.LFB26:
	.loc 1 531 0
.LVL80:
	entry	sp, 32
.LCFI12:
	.loc 1 532 0
	movi.n	a12, 0
	mov.n	a11, a2
	l32r	a10, .LC35
	call8	tcpip_callback_with_block
.LVL81:
	.loc 1 533 0
	extui	a2, a10, 0, 8
.LVL82:
	retw.n
.LFE26:
	.size	pbuf_free_callback, .-pbuf_free_callback
	.section	.text.mem_free_callback,"ax",@progbits
	.literal_position
	.literal .LC36, mem_free_local
	.align	4
	.global	mem_free_callback
	.type	mem_free_callback, @function
mem_free_callback:
.LFB28:
	.loc 1 549 0
.LVL83:
	entry	sp, 32
.LCFI13:
	.loc 1 550 0
	movi.n	a12, 0
	mov.n	a11, a2
	l32r	a10, .LC36
	call8	tcpip_callback_with_block
.LVL84:
	.loc 1 558 0
	extui	a2, a10, 0, 8
.LVL85:
	retw.n
.LFE28:
	.size	mem_free_callback, .-mem_free_callback
	.section	.rodata.__func__$6520,"a",@progbits
	.align	4
	.type	__func__$6520, @object
	.size	__func__$6520, 13
__func__$6520:
	.string	"tcpip_thread"
	.section	.rodata.__func__$6580,"a",@progbits
	.align	4
	.type	__func__$6580, @object
	.size	__func__$6580, 11
__func__$6580:
	.string	"tcpip_init"
	.section	.rodata.__func__$6557,"a",@progbits
	.align	4
	.type	__func__$6557, @object
	.size	__func__$6557, 19
__func__$6557:
	.string	"tcpip_send_api_msg"
	.global	g_lwip_task
	.section	.bss.g_lwip_task,"aw",@nobits
	.align	4
	.type	g_lwip_task, @object
	.size	g_lwip_task, 4
g_lwip_task:
	.zero	4
	.section	.bss.mbox,"aw",@nobits
	.align	4
	.type	mbox, @object
	.size	mbox, 4
mbox:
	.zero	4
	.section	.bss.tcpip_init_done_arg,"aw",@nobits
	.align	4
	.type	tcpip_init_done_arg, @object
	.size	tcpip_init_done_arg, 4
tcpip_init_done_arg:
	.zero	4
	.section	.bss.tcpip_init_done,"aw",@nobits
	.align	4
	.type	tcpip_init_done, @object
	.size	tcpip_init_done, 4
tcpip_init_done:
	.zero	4
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI0-.LFB27
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
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI2-.LFB25
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI6-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI7-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI8-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI9-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI10-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI11-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI12-.LFB26
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/sys_arch.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/pbuf.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/netif.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/priv/memp_priv.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/tcpip.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/priv/tcpip_priv.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/memp.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/timers.h"
	.file 22 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 23 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/sys.h"
	.file 24 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/init.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xff9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0xc
	.4byte	.LASF161
	.4byte	.LASF162
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x20
	.4byte	0x5e
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x21
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x4
	.4byte	0x108
	.uleb128 0x9
	.4byte	0x113
	.uleb128 0xa
	.4byte	0xa2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6f
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x6b
	.4byte	0xa2
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x58
	.4byte	0xa2
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0x4f
	.4byte	0x129
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x8
	.byte	0x2f
	.4byte	0x134
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x8
	.byte	0x30
	.4byte	0x134
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x8
	.byte	0x31
	.4byte	0x11e
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0xc
	.byte	0x8
	.byte	0x33
	.4byte	0x191
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.byte	0x34
	.4byte	0x129
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x8
	.byte	0x35
	.4byte	0x14a
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x8
	.byte	0x36
	.4byte	0xcf
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x8
	.byte	0x37
	.4byte	0x19c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x160
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x9
	.byte	0x2e
	.4byte	0xcf
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x9
	.byte	0x2f
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x9
	.byte	0x30
	.4byte	0xe5
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x9
	.byte	0x31
	.4byte	0xda
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x9
	.byte	0x32
	.4byte	0xf0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0xa
	.byte	0x2f
	.4byte	0x1ad
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x4
	.byte	0xb
	.byte	0x2e
	.4byte	0x1fd
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0xb
	.byte	0x2f
	.4byte	0x1ce
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0xb
	.byte	0x42
	.4byte	0x1e4
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x10
	.byte	0xc
	.byte	0x39
	.4byte	0x221
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0xc
	.byte	0x3a
	.4byte	0x221
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x1ce
	.4byte	0x231
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0xc
	.byte	0x4b
	.4byte	0x208
	.uleb128 0xf
	.byte	0x10
	.byte	0xd
	.byte	0x39
	.4byte	0x25b
	.uleb128 0x10
	.string	"ip6"
	.byte	0xd
	.byte	0x3a
	.4byte	0x231
	.uleb128 0x10
	.string	"ip4"
	.byte	0xd
	.byte	0x3b
	.4byte	0x1fd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x14
	.byte	0xd
	.byte	0x38
	.4byte	0x280
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0xd
	.byte	0x3c
	.4byte	0x23c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0xd
	.byte	0x3d
	.4byte	0x1a2
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0xd
	.byte	0x3e
	.4byte	0x25b
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x18
	.byte	0xe
	.byte	0x6c
	.4byte	0x304
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0xe
	.byte	0x6e
	.4byte	0x304
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0xe
	.byte	0x71
	.4byte	0xa2
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0xe
	.byte	0x7a
	.4byte	0x1b8
	.byte	0x8
	.uleb128 0x11
	.string	"len"
	.byte	0xe
	.byte	0x7d
	.4byte	0x1b8
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0xe
	.byte	0x80
	.4byte	0x1a2
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0xe
	.byte	0x83
	.4byte	0x1a2
	.byte	0xd
	.uleb128 0x11
	.string	"ref"
	.byte	0xe
	.byte	0x8a
	.4byte	0x1b8
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0xe
	.byte	0x8d
	.4byte	0x49a
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0xe
	.byte	0x8e
	.4byte	0xa2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x28b
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xe8
	.byte	0xf
	.byte	0xbd
	.4byte	0x49a
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0xf
	.byte	0xbf
	.4byte	0x49a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0xf
	.byte	0xc3
	.4byte	0x280
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0xf
	.byte	0xc4
	.4byte	0x280
	.byte	0x18
	.uleb128 0x11
	.string	"gw"
	.byte	0xf
	.byte	0xc5
	.4byte	0x280
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0xf
	.byte	0xc9
	.4byte	0x64b
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0xf
	.byte	0xcc
	.4byte	0x65b
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0xf
	.byte	0xce
	.4byte	0x67b
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0xf
	.byte	0xd4
	.4byte	0x538
	.byte	0x84
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0xf
	.byte	0xd9
	.4byte	0x55d
	.byte	0x88
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0xf
	.byte	0xde
	.4byte	0x5c7
	.byte	0x8c
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0xf
	.byte	0xe3
	.4byte	0x592
	.byte	0x90
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0xf
	.byte	0xf5
	.4byte	0xa2
	.byte	0x94
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0xf
	.byte	0xf8
	.4byte	0x686
	.byte	0x98
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0xf
	.byte	0xfb
	.4byte	0x691
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0xf
	.byte	0xfc
	.4byte	0x640
	.byte	0xa0
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0xf
	.2byte	0x108
	.4byte	0x1a2
	.byte	0xa4
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0xf
	.2byte	0x10d
	.4byte	0x1a2
	.byte	0xa5
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0xf
	.2byte	0x117
	.4byte	0xb9
	.byte	0xa8
	.uleb128 0x13
	.string	"mtu"
	.byte	0xf
	.2byte	0x11f
	.4byte	0x1b8
	.byte	0xac
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0xf
	.2byte	0x121
	.4byte	0x1a2
	.byte	0xae
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0xf
	.2byte	0x123
	.4byte	0x697
	.byte	0xaf
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0xf
	.2byte	0x125
	.4byte	0x1a2
	.byte	0xb5
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0xf
	.2byte	0x127
	.4byte	0x6a7
	.byte	0xb6
	.uleb128 0x13
	.string	"num"
	.byte	0xf
	.2byte	0x129
	.4byte	0x1a2
	.byte	0xb8
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0xf
	.2byte	0x139
	.4byte	0x5ec
	.byte	0xbc
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0xf
	.2byte	0x13f
	.4byte	0x616
	.byte	0xc0
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0xf
	.2byte	0x147
	.4byte	0x304
	.byte	0xc4
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0xf
	.2byte	0x148
	.4byte	0x304
	.byte	0xc8
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0xf
	.2byte	0x14a
	.4byte	0x1b8
	.byte	0xcc
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0xf
	.2byte	0x14f
	.4byte	0x102
	.byte	0xd0
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0xf
	.2byte	0x150
	.4byte	0x280
	.byte	0xd4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30a
	.uleb128 0x14
	.byte	0x4
	.4byte	0x25
	.byte	0x13
	.byte	0x2d
	.4byte	0x51f
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x6
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0xb
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0xd
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0xe
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0xf
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x11
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x12
	.byte	0
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x2
	.byte	0x10
	.byte	0x7a
	.4byte	0x538
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x10
	.byte	0x7c
	.4byte	0x1b8
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0xf
	.byte	0x83
	.4byte	0x543
	.uleb128 0x6
	.byte	0x4
	.4byte	0x549
	.uleb128 0x16
	.4byte	0x1d9
	.4byte	0x55d
	.uleb128 0xa
	.4byte	0x304
	.uleb128 0xa
	.4byte	0x49a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0xf
	.byte	0x8e
	.4byte	0x568
	.uleb128 0x6
	.byte	0x4
	.4byte	0x56e
	.uleb128 0x16
	.4byte	0x1d9
	.4byte	0x587
	.uleb128 0xa
	.4byte	0x49a
	.uleb128 0xa
	.4byte	0x304
	.uleb128 0xa
	.4byte	0x587
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x58d
	.uleb128 0x8
	.4byte	0x1fd
	.uleb128 0x4
	.4byte	.LASF105
	.byte	0xf
	.byte	0x9b
	.4byte	0x59d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a3
	.uleb128 0x16
	.4byte	0x1d9
	.4byte	0x5bc
	.uleb128 0xa
	.4byte	0x49a
	.uleb128 0xa
	.4byte	0x304
	.uleb128 0xa
	.4byte	0x5bc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c2
	.uleb128 0x8
	.4byte	0x231
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0xf
	.byte	0xa5
	.4byte	0x5d2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5d8
	.uleb128 0x16
	.4byte	0x1d9
	.4byte	0x5ec
	.uleb128 0xa
	.4byte	0x49a
	.uleb128 0xa
	.4byte	0x304
	.byte	0
	.uleb128 0x4
	.4byte	.LASF107
	.byte	0xf
	.byte	0xaa
	.4byte	0x5f7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5fd
	.uleb128 0x16
	.4byte	0x1d9
	.4byte	0x616
	.uleb128 0xa
	.4byte	0x49a
	.uleb128 0xa
	.4byte	0x587
	.uleb128 0xa
	.4byte	0x1a2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0xf
	.byte	0xaf
	.4byte	0x621
	.uleb128 0x6
	.byte	0x4
	.4byte	0x627
	.uleb128 0x16
	.4byte	0x1d9
	.4byte	0x640
	.uleb128 0xa
	.4byte	0x49a
	.uleb128 0xa
	.4byte	0x5bc
	.uleb128 0xa
	.4byte	0x1a2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0xf
	.byte	0xb6
	.4byte	0xab
	.uleb128 0xd
	.4byte	0x280
	.4byte	0x65b
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	0x1a2
	.4byte	0x66b
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x67b
	.uleb128 0xa
	.4byte	0x49a
	.uleb128 0xa
	.4byte	0x1a2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66b
	.uleb128 0x17
	.4byte	.LASF66
	.uleb128 0x6
	.byte	0x4
	.4byte	0x681
	.uleb128 0x17
	.4byte	.LASF110
	.uleb128 0x6
	.byte	0x4
	.4byte	0x68c
	.uleb128 0xd
	.4byte	0x1a2
	.4byte	0x6a7
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.4byte	0xb2
	.4byte	0x6b7
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0x11
	.byte	0x33
	.4byte	0x102
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0x11
	.byte	0x35
	.4byte	0x102
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x12
	.byte	0x67
	.4byte	0x6d8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6de
	.uleb128 0x16
	.4byte	0x1d9
	.4byte	0x6ed
	.uleb128 0xa
	.4byte	0x6ed
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6f3
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0xc
	.byte	0x12
	.byte	0x68
	.4byte	0x724
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x12
	.byte	0x6a
	.4byte	0x6cd
	.byte	0
	.uleb128 0x11
	.string	"sem"
	.byte	0x12
	.byte	0x6d
	.4byte	0x724
	.byte	0x4
	.uleb128 0x11
	.string	"err"
	.byte	0x12
	.byte	0x71
	.4byte	0x1d9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13f
	.uleb128 0x18
	.4byte	.LASF163
	.byte	0x4
	.4byte	0x25
	.byte	0x12
	.byte	0x76
	.4byte	0x759
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0
	.uleb128 0x15
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x2
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x3
	.uleb128 0x15
	.4byte	.LASF120
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.byte	0x8
	.byte	0x12
	.byte	0x85
	.4byte	0x77a
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x12
	.byte	0x86
	.4byte	0x6c2
	.byte	0
	.uleb128 0x11
	.string	"msg"
	.byte	0x12
	.byte	0x87
	.4byte	0xa2
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.byte	0xc
	.byte	0x12
	.byte	0x8a
	.4byte	0x7a5
	.uleb128 0x11
	.string	"p"
	.byte	0x12
	.byte	0x8b
	.4byte	0x304
	.byte	0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x12
	.byte	0x8c
	.4byte	0x49a
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x12
	.byte	0x8d
	.4byte	0x538
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.byte	0x8
	.byte	0x12
	.byte	0x8f
	.4byte	0x7c6
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x12
	.byte	0x90
	.4byte	0x6c2
	.byte	0
	.uleb128 0x11
	.string	"ctx"
	.byte	0x12
	.byte	0x91
	.4byte	0xa2
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0xc
	.byte	0x12
	.byte	0x84
	.4byte	0x7fa
	.uleb128 0x10
	.string	"api"
	.byte	0x12
	.byte	0x88
	.4byte	0x759
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0x12
	.byte	0x89
	.4byte	0x6ed
	.uleb128 0x10
	.string	"inp"
	.byte	0x12
	.byte	0x8e
	.4byte	0x77a
	.uleb128 0x10
	.string	"cb"
	.byte	0x12
	.byte	0x92
	.4byte	0x7a5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x10
	.byte	0x12
	.byte	0x82
	.4byte	0x81f
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x12
	.byte	0x83
	.4byte	0x72a
	.byte	0
	.uleb128 0x11
	.string	"msg"
	.byte	0x12
	.byte	0x9a
	.4byte	0x7c6
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x220
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x854
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.2byte	0x220
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LVL1
	.4byte	0xf6d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF164
	.byte	0x1
	.byte	0x51
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x960
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.byte	0x51
	.4byte	0xa2
	.4byte	.LLST0
	.uleb128 0x21
	.string	"msg"
	.byte	0x1
	.byte	0x55
	.4byte	0x960
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.4byte	.LASF132
	.4byte	0x976
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6520
	.uleb128 0x23
	.4byte	.LVL4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x24
	.4byte	.LVL5
	.4byte	0xf78
	.4byte	0x8ba
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mbox
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL6
	.4byte	0xf83
	.4byte	0x8e9
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x6d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6520
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x23
	.4byte	.LVL7
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.4byte	.LVL8
	.4byte	0x901
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0xf8e
	.uleb128 0x23
	.4byte	.LVL10
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL11
	.4byte	0xf6d
	.uleb128 0x23
	.4byte	.LVL12
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x26
	.4byte	.LVL13
	.4byte	0xf6d
	.uleb128 0x23
	.4byte	.LVL14
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0xf83
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xb8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6520
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7fa
	.uleb128 0xd
	.4byte	0xb2
	.4byte	0x976
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x966
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x205
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ba
	.uleb128 0x1c
	.string	"p"
	.byte	0x1
	.2byte	0x205
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.string	"q"
	.byte	0x1
	.2byte	0x207
	.4byte	0x304
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LVL18
	.4byte	0xf99
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF126
	.byte	0x1
	.byte	0xc7
	.4byte	0x1d9
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa40
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0xc7
	.4byte	0x304
	.4byte	.LLST1
	.uleb128 0x29
	.string	"inp"
	.byte	0x1
	.byte	0xc7
	.4byte	0x49a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	.LASF121
	.byte	0x1
	.byte	0xc7
	.4byte	0x538
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.byte	0xd1
	.4byte	0x960
	.4byte	.LLST2
	.uleb128 0x26
	.4byte	.LVL20
	.4byte	0xfa4
	.uleb128 0x24
	.4byte	.LVL22
	.4byte	0xfaf
	.4byte	0xa2f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mbox
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0xf6d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF127
	.byte	0x1
	.byte	0xf8
	.4byte	0x1d9
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9e
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.byte	0xf8
	.4byte	0x304
	.4byte	.LLST3
	.uleb128 0x29
	.string	"inp"
	.byte	0x1
	.byte	0xf8
	.4byte	0x49a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LVL30
	.4byte	0x9ba
	.4byte	0xa8d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL33
	.4byte	0x9ba
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x10e
	.4byte	0x1d9
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb48
	.uleb128 0x2d
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x10e
	.4byte	0x6c2
	.4byte	.LLST4
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.2byte	0x10e
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x10e
	.4byte	0x1a2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.string	"msg"
	.byte	0x1
	.2byte	0x110
	.4byte	0x960
	.4byte	.LLST5
	.uleb128 0x26
	.4byte	.LVL36
	.4byte	0xfa4
	.uleb128 0x24
	.4byte	.LVL38
	.4byte	0xfba
	.4byte	0xb1a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mbox
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL41
	.4byte	0xfaf
	.4byte	0xb37
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mbox
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL43
	.4byte	0xf6d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x16f
	.4byte	0x1d9
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc19
	.uleb128 0x30
	.string	"fn"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x6c2
	.4byte	.LLST6
	.uleb128 0x2e
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x16f
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"sem"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x724
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF132
	.4byte	0xc29
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6557
	.uleb128 0x31
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xbec
	.uleb128 0x27
	.string	"msg"
	.byte	0x1
	.2byte	0x174
	.4byte	0x7fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LVL50
	.4byte	0xfba
	.4byte	0xbd5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mbox
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL51
	.4byte	0xfc5
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL49
	.4byte	0xf83
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x171
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6557
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xb2
	.4byte	0xc29
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x12
	.byte	0
	.uleb128 0x8
	.4byte	0xc19
	.uleb128 0x2c
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x184
	.4byte	0x1d9
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcc0
	.uleb128 0x30
	.string	"fn"
	.byte	0x1
	.2byte	0x184
	.4byte	0x6cd
	.4byte	.LLST7
	.uleb128 0x2e
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x184
	.4byte	0x6ed
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x27
	.string	"msg"
	.byte	0x1
	.2byte	0x18e
	.4byte	0x7fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.string	"err"
	.byte	0x1
	.2byte	0x18f
	.4byte	0x1d9
	.uleb128 0x26
	.4byte	.LVL56
	.4byte	0xfd0
	.uleb128 0x24
	.4byte	.LVL57
	.4byte	0xfba
	.4byte	0xcaf
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mbox
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL58
	.4byte	0xfc5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF134
	.uleb128 0x2c
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xd15
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd15
	.uleb128 0x2d
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x6c2
	.4byte	.LLST8
	.uleb128 0x1c
	.string	"ctx"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.string	"msg"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x960
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x26
	.4byte	.LVL63
	.4byte	0xfa4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xcc0
	.uleb128 0x34
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x1c7
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd50
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.2byte	0x1c7
	.4byte	0xd15
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LVL68
	.4byte	0xf6d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x1d9
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd94
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xd15
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	.LVL70
	.4byte	0xfaf
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mbox
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1e5
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe5b
	.uleb128 0x2d
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x6b7
	.4byte	.LLST10
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.2byte	0x1e5
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF132
	.4byte	0xe6b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6580
	.uleb128 0x26
	.4byte	.LVL75
	.4byte	0xfdb
	.uleb128 0x24
	.4byte	.LVL76
	.4byte	0xfe6
	.4byte	0xdfd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mbox
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x24
	.4byte	.LVL77
	.4byte	0xf83
	.4byte	0xe2d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ed
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6580
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL78
	.4byte	0xff1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_thread
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa00
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xb2
	.4byte	0xe6b
	.uleb128 0xe
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.4byte	0xe5b
	.uleb128 0x2c
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x212
	.4byte	0x1d9
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb7
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.2byte	0x212
	.4byte	0x304
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LVL81
	.4byte	0xa9e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pbuf_free_int
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x224
	.4byte	0x1d9
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xefe
	.uleb128 0x30
	.string	"m"
	.byte	0x1
	.2byte	0x224
	.4byte	0xa2
	.4byte	.LLST12
	.uleb128 0x1d
	.4byte	.LVL84
	.4byte	0xa9e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	mem_free_local
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF142
	.byte	0x1
	.byte	0x3b
	.4byte	0x6b7
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_init_done
	.uleb128 0x35
	.4byte	.LASF143
	.byte	0x1
	.byte	0x3c
	.4byte	0xa2
	.uleb128 0x5
	.byte	0x3
	.4byte	tcpip_init_done_arg
	.uleb128 0x35
	.4byte	.LASF144
	.byte	0x1
	.byte	0x3d
	.4byte	0x191
	.uleb128 0x5
	.byte	0x3
	.4byte	mbox
	.uleb128 0xd
	.4byte	0xf41
	.4byte	0xf41
	.uleb128 0xe
	.4byte	0x9b
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf47
	.uleb128 0x8
	.4byte	0x51f
	.uleb128 0x36
	.4byte	.LASF145
	.byte	0x13
	.byte	0x41
	.4byte	0xf57
	.uleb128 0x8
	.4byte	0xf31
	.uleb128 0x37
	.4byte	.LASF146
	.byte	0x1
	.byte	0x3e
	.4byte	0x155
	.uleb128 0x5
	.byte	0x3
	.4byte	g_lwip_task
	.uleb128 0x38
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x14
	.byte	0x5a
	.uleb128 0x38
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x15
	.byte	0x5c
	.uleb128 0x38
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x16
	.byte	0x29
	.uleb128 0x38
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x17
	.byte	0x96
	.uleb128 0x38
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xe
	.byte	0xcb
	.uleb128 0x38
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x14
	.byte	0x65
	.uleb128 0x38
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x17
	.byte	0xcb
	.uleb128 0x38
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x17
	.byte	0xc7
	.uleb128 0x38
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x17
	.byte	0xa0
	.uleb128 0x38
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x8
	.byte	0x4a
	.uleb128 0x38
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x18
	.byte	0x42
	.uleb128 0x38
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x17
	.byte	0xc2
	.uleb128 0x38
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x17
	.byte	0xfd
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x87
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL27
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL46
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL74
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"s16_t"
.LASF152:
	.string	"malloc"
.LASF107:
	.string	"netif_igmp_mac_filter_fn"
.LASF93:
	.string	"MEMP_SYS_TIMEOUT"
.LASF64:
	.string	"output_ip6"
.LASF49:
	.string	"pbuf"
.LASF70:
	.string	"rs_count"
.LASF50:
	.string	"next"
.LASF45:
	.string	"_ip_addr"
.LASF126:
	.string	"tcpip_inpkt"
.LASF94:
	.string	"MEMP_NETDB"
.LASF100:
	.string	"MEMP_MAX"
.LASF4:
	.string	"__uint8_t"
.LASF47:
	.string	"type"
.LASF27:
	.string	"sys_mutex_t"
.LASF92:
	.string	"MEMP_IGMP_GROUP"
.LASF119:
	.string	"TCPIP_MSG_CALLBACK"
.LASF67:
	.string	"dhcps_pcb"
.LASF39:
	.string	"sys_mbox_s"
.LASF32:
	.string	"sys_mbox_t"
.LASF59:
	.string	"ip6_addr_state"
.LASF86:
	.string	"MEMP_TCP_SEG"
.LASF24:
	.string	"QueueHandle_t"
.LASF147:
	.string	"free"
.LASF142:
	.string	"tcpip_init_done"
.LASF121:
	.string	"input_fn"
.LASF137:
	.string	"tcpip_callbackmsg_delete"
.LASF91:
	.string	"MEMP_ARP_QUEUE"
.LASF26:
	.string	"sys_sem_t"
.LASF10:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF68:
	.string	"dhcp_event"
.LASF14:
	.string	"long unsigned int"
.LASF115:
	.string	"function"
.LASF11:
	.string	"long long unsigned int"
.LASF73:
	.string	"hwaddr"
.LASF3:
	.string	"__int8_t"
.LASF145:
	.string	"memp_pools"
.LASF52:
	.string	"tot_len"
.LASF96:
	.string	"MEMP_IP6_REASSDATA"
.LASF65:
	.string	"state"
.LASF71:
	.string	"hostname"
.LASF12:
	.string	"long int"
.LASF82:
	.string	"MEMP_RAW_PCB"
.LASF40:
	.string	"ip4_addr"
.LASF23:
	.string	"TaskHandle_t"
.LASF111:
	.string	"tcpip_init_done_fn"
.LASF130:
	.string	"tcpip_send_api_msg"
.LASF109:
	.string	"dhcp_event_fn"
.LASF148:
	.string	"sys_timeouts_mbox_fetch"
.LASF134:
	.string	"tcpip_callback_msg"
.LASF72:
	.string	"hwaddr_len"
.LASF22:
	.string	"BaseType_t"
.LASF83:
	.string	"MEMP_UDP_PCB"
.LASF58:
	.string	"netmask"
.LASF106:
	.string	"netif_linkoutput_fn"
.LASF155:
	.string	"sys_arch_sem_wait"
.LASF31:
	.string	"alive"
.LASF120:
	.string	"TCPIP_MSG_CALLBACK_STATIC"
.LASF9:
	.string	"__uint32_t"
.LASF122:
	.string	"api_call"
.LASF6:
	.string	"__int16_t"
.LASF114:
	.string	"tcpip_api_call"
.LASF124:
	.string	"mem_free_local"
.LASF129:
	.string	"block"
.LASF118:
	.string	"TCPIP_MSG_INPKT"
.LASF33:
	.string	"u8_t"
.LASF81:
	.string	"last_ip_addr"
.LASF159:
	.string	"sys_thread_new"
.LASF105:
	.string	"netif_output_ip6_fn"
.LASF62:
	.string	"output"
.LASF127:
	.string	"tcpip_input"
.LASF37:
	.string	"u32_t"
.LASF135:
	.string	"tcpip_callbackmsg_new"
.LASF128:
	.string	"tcpip_callback_with_block"
.LASF55:
	.string	"l2_buf"
.LASF84:
	.string	"MEMP_TCP_PCB"
.LASF74:
	.string	"name"
.LASF102:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF162:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF42:
	.string	"ip4_addr_t"
.LASF95:
	.string	"MEMP_ND6_QUEUE"
.LASF151:
	.string	"pbuf_free"
.LASF158:
	.string	"sys_mbox_new"
.LASF140:
	.string	"pbuf_free_callback"
.LASF19:
	.string	"uint16_t"
.LASF161:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/api/tcpip.c"
.LASF138:
	.string	"tcpip_init"
.LASF60:
	.string	"ipv6_addr_cb"
.LASF131:
	.string	"apimsg"
.LASF133:
	.string	"call"
.LASF101:
	.string	"memp_desc"
.LASF153:
	.string	"sys_mbox_trypost"
.LASF164:
	.string	"tcpip_thread"
.LASF48:
	.string	"ip_addr_t"
.LASF38:
	.string	"err_t"
.LASF13:
	.string	"sizetype"
.LASF113:
	.string	"tcpip_api_call_fn"
.LASF56:
	.string	"netif"
.LASF97:
	.string	"MEMP_MLD6_GROUP"
.LASF75:
	.string	"igmp_mac_filter"
.LASF51:
	.string	"payload"
.LASF146:
	.string	"g_lwip_task"
.LASF57:
	.string	"ip_addr"
.LASF123:
	.string	"tcpip_msg"
.LASF136:
	.string	"tcpip_trycallback"
.LASF163:
	.string	"tcpip_msg_type"
.LASF116:
	.string	"TCPIP_MSG_API"
.LASF103:
	.string	"netif_input_fn"
.LASF144:
	.string	"mbox"
.LASF54:
	.string	"l2_owner"
.LASF79:
	.string	"loop_cnt_current"
.LASF112:
	.string	"tcpip_callback_fn"
.LASF41:
	.string	"addr"
.LASF21:
	.string	"_Bool"
.LASF139:
	.string	"initfunc"
.LASF5:
	.string	"unsigned char"
.LASF160:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF7:
	.string	"short int"
.LASF104:
	.string	"netif_output_fn"
.LASF132:
	.string	"__func__"
.LASF61:
	.string	"input"
.LASF108:
	.string	"netif_mld_mac_filter_fn"
.LASF34:
	.string	"s8_t"
.LASF28:
	.string	"sys_thread_t"
.LASF150:
	.string	"sys_sem_signal"
.LASF154:
	.string	"sys_mbox_post"
.LASF156:
	.string	"sys_thread_sem_get"
.LASF43:
	.string	"ip6_addr"
.LASF89:
	.string	"MEMP_TCPIP_MSG_API"
.LASF25:
	.string	"SemaphoreHandle_t"
.LASF15:
	.string	"char"
.LASF141:
	.string	"mem_free_callback"
.LASF0:
	.string	"unsigned int"
.LASF87:
	.string	"MEMP_NETBUF"
.LASF8:
	.string	"__uint16_t"
.LASF85:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF88:
	.string	"MEMP_NETCONN"
.LASF99:
	.string	"MEMP_PBUF_POOL"
.LASF78:
	.string	"loop_last"
.LASF77:
	.string	"loop_first"
.LASF117:
	.string	"TCPIP_MSG_API_CALL"
.LASF16:
	.string	"int8_t"
.LASF143:
	.string	"tcpip_init_done_arg"
.LASF35:
	.string	"u16_t"
.LASF20:
	.string	"uint32_t"
.LASF44:
	.string	"ip6_addr_t"
.LASF46:
	.string	"u_addr"
.LASF76:
	.string	"mld_mac_filter"
.LASF17:
	.string	"uint8_t"
.LASF125:
	.string	"pbuf_free_int"
.LASF66:
	.string	"dhcp"
.LASF53:
	.string	"flags"
.LASF29:
	.string	"os_mbox"
.LASF110:
	.string	"udp_pcb"
.LASF149:
	.string	"__assert_func"
.LASF80:
	.string	"l2_buffer_free_notify"
.LASF69:
	.string	"ip6_autoconfig_enabled"
.LASF157:
	.string	"lwip_init"
.LASF63:
	.string	"linkoutput"
.LASF30:
	.string	"lock"
.LASF18:
	.string	"int16_t"
.LASF98:
	.string	"MEMP_PBUF"
.LASF90:
	.string	"MEMP_TCPIP_MSG_INPKT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
