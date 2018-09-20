	.file	"bta_sys_main.c"
	.text
.Ltext0:
	.section	.text.bta_sys_sm_execute,"ax",@progbits
	.literal_position
	.literal .LC0, bta_sys_cb
	.literal .LC1, bta_sys_st_tbl
	.literal .LC2, bta_sys_action
	.align	4
	.global	bta_sys_sm_execute
	.type	bta_sys_sm_execute, @function
bta_sys_sm_execute:
.LFB28:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/sys/bta_sys_main.c"
	.loc 1 211 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 220 0
	l32r	a8, .LC0
	l8ui	a3, a8, 230
	l32r	a4, .LC1
	addx4	a3, a3, a4
	l32i.n	a4, a3, 0
.LVL2:
	.loc 1 222 0
	l8ui	a3, a2, 0
	addx2	a3, a3, a3
	add.n	a3, a4, a3
	l8ui	a3, a3, 2
	s8i	a3, a8, 230
.LVL3:
	.loc 1 225 0
	movi.n	a3, 0
	j	.L2
.LVL4:
.L4:
	.loc 1 226 0
	l8ui	a8, a2, 0
	addx2	a8, a8, a8
	add.n	a8, a4, a8
	add.n	a8, a8, a3
	l8ui	a8, a8, 0
.LVL5:
	beqi	a8, 6, .L3
	.loc 1 227 0 discriminator 2
	l32r	a9, .LC2
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	mov.n	a10, a2
	callx8	a8
.LVL6:
	.loc 1 225 0 discriminator 2
	addi.n	a3, a3, 1
.LVL7:
.L2:
	.loc 1 225 0 is_stmt 0 discriminator 1
	blti	a3, 2, .L4
.L3:
	.loc 1 234 0 is_stmt 1
	movi.n	a2, 1
.LVL8:
	retw.n
.LFE28:
	.size	bta_sys_sm_execute, .-bta_sys_sm_execute
	.section	.text.bta_sys_hw_error,"ax",@progbits
	.literal_position
	.literal .LC3, bta_sys_cb
	.align	4
	.global	bta_sys_hw_error
	.type	bta_sys_hw_error, @function
bta_sys_hw_error:
.LFB32:
	.loc 1 298 0
.LVL9:
	entry	sp, 32
.LCFI1:
.LVL10:
	.loc 1 304 0
	movi.n	a2, 0
.LVL11:
	j	.L6
.LVL12:
.L9:
	.loc 1 305 0
	l32r	a8, .LC3
	l32i	a9, a8, 240
	bbc	a9, a2, .L7
	.loc 1 306 0
	bnez.n	a2, .L7
	.loc 1 309 0
	addi	a8, a2, 56
	l32r	a9, .LC3
	addx4	a8, a8, a9
	l32i.n	a8, a8, 8
	beqz.n	a8, .L7
	.loc 1 310 0
	movi.n	a10, 4
	callx8	a8
.LVL13:
.L7:
	.loc 1 304 0 discriminator 2
	addi.n	a2, a2, 1
.LVL14:
	extui	a2, a2, 0, 8
.LVL15:
.L6:
	.loc 1 304 0 is_stmt 0 discriminator 1
	bltui	a2, 2, .L9
	.loc 1 319 0 is_stmt 1
	retw.n
.LFE32:
	.size	bta_sys_hw_error, .-bta_sys_hw_error
	.section	.text.bta_sys_hw_evt_disabled,"ax",@progbits
	.literal_position
	.literal .LC4, bta_sys_cb
	.align	4
	.global	bta_sys_hw_evt_disabled
	.type	bta_sys_hw_evt_disabled, @function
bta_sys_hw_evt_disabled:
.LFB36:
	.loc 1 435 0
.LVL16:
	entry	sp, 32
.LCFI2:
.LVL17:
	.loc 1 440 0
	movi.n	a2, 0
.LVL18:
	j	.L11
.LVL19:
.L13:
	.loc 1 441 0
	addi	a8, a2, 56
	l32r	a9, .LC4
	addx4	a8, a8, a9
	l32i.n	a8, a8, 8
	beqz.n	a8, .L12
	.loc 1 442 0
	movi.n	a10, 0
	callx8	a8
.LVL20:
.L12:
	.loc 1 440 0 discriminator 2
	addi.n	a2, a2, 1
.LVL21:
	extui	a2, a2, 0, 8
.LVL22:
.L11:
	.loc 1 440 0 is_stmt 0 discriminator 1
	bltui	a2, 2, .L13
	.loc 1 445 0 is_stmt 1
	retw.n
.LFE36:
	.size	bta_sys_hw_evt_disabled, .-bta_sys_hw_evt_disabled
	.section	.text.bta_sys_hw_evt_stack_enabled,"ax",@progbits
	.literal_position
	.literal .LC5, bta_sys_cb
	.align	4
	.global	bta_sys_hw_evt_stack_enabled
	.type	bta_sys_hw_evt_stack_enabled, @function
bta_sys_hw_evt_stack_enabled:
.LFB37:
	.loc 1 458 0
.LVL23:
	entry	sp, 32
.LCFI3:
.LVL24:
	.loc 1 464 0
	movi.n	a2, 0
.LVL25:
	j	.L15
.LVL26:
.L17:
	.loc 1 465 0
	addi	a8, a2, 56
	l32r	a9, .LC5
	addx4	a8, a8, a9
	l32i.n	a8, a8, 8
	beqz.n	a8, .L16
	.loc 1 466 0
	movi.n	a10, 1
	callx8	a8
.LVL27:
.L16:
	.loc 1 464 0 discriminator 2
	addi.n	a2, a2, 1
.LVL28:
	extui	a2, a2, 0, 8
.LVL29:
.L15:
	.loc 1 464 0 is_stmt 0 discriminator 1
	bltui	a2, 2, .L17
	.loc 1 469 0 is_stmt 1
	retw.n
.LFE37:
	.size	bta_sys_hw_evt_stack_enabled, .-bta_sys_hw_evt_stack_enabled
	.section	.text.bta_sys_hw_evt_enabled,"ax",@progbits
	.align	4
	.global	bta_sys_hw_evt_enabled
	.type	bta_sys_hw_evt_enabled, @function
bta_sys_hw_evt_enabled:
.LFB35:
	.loc 1 418 0
.LVL30:
	entry	sp, 32
.LCFI4:
	.loc 1 420 0
	movi.n	a10, 0
	call8	BTM_DeviceReset
.LVL31:
	retw.n
.LFE35:
	.size	bta_sys_hw_evt_enabled, .-bta_sys_hw_evt_enabled
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC6:
	.string	"data != NULL"
	.align	4
.LC9:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/sys/bta_sys_main.c"
	.section	.text.bta_alarm_cb,"ax",@progbits
	.literal_position
	.literal .LC7, .LC6
	.literal .LC8, __func__$10186
	.literal .LC10, .LC9
	.align	4
	.global	bta_alarm_cb
	.type	bta_alarm_cb, @function
bta_alarm_cb:
.LFB43:
	.loc 1 590 0
.LVL32:
	entry	sp, 32
.LCFI5:
	.loc 1 591 0
	bnez.n	a2, .L20
	.loc 1 591 0 is_stmt 0 discriminator 1
	l32r	a13, .LC7
	l32r	a12, .LC8
	movi	a11, 0x24f
	l32r	a10, .LC10
	call8	__assert_func
.LVL33:
.L20:
	.loc 1 594 0 is_stmt 1
	movi.n	a12, -1
	mov.n	a11, a2
	movi.n	a10, 3
	call8	btu_task_post
.LVL34:
	retw.n
.LFE43:
	.size	bta_alarm_cb, .-bta_alarm_cb
	.section	.text.hash_iter_ro_cb,"ax",@progbits
	.align	4
	.global	hash_iter_ro_cb
	.type	hash_iter_ro_cb, @function
hash_iter_ro_cb:
.LFB45:
	.loc 1 621 0
.LVL35:
	entry	sp, 32
.LCFI6:
.LVL36:
	.loc 1 624 0
	l32i.n	a10, a2, 4
	call8	osi_alarm_get_remaining_ms
.LVL37:
	l32i.n	a9, a3, 0
	l32i.n	a12, a3, 4
	add.n	a10, a9, a10
	movi.n	a8, 1
	bltu	a10, a9, .L22
	movi.n	a8, 0
.L22:
	add.n	a11, a12, a11
	add.n	a8, a8, a11
	s32i.n	a10, a3, 0
	s32i.n	a8, a3, 4
	.loc 1 626 0
	movi.n	a2, 1
.LVL38:
	retw.n
.LFE45:
	.size	hash_iter_ro_cb, .-hash_iter_ro_cb
	.section	.text.bta_sys_free,"ax",@progbits
	.literal_position
	.literal .LC11, bta_alarm_hash_map
	.literal .LC12, bta_alarm_lock
	.align	4
	.global	bta_sys_free
	.type	bta_sys_free, @function
bta_sys_free:
.LFB27:
	.loc 1 192 0
	entry	sp, 32
.LCFI7:
	.loc 1 193 0
	l32r	a8, .LC11
	l32i.n	a10, a8, 0
	call8	hash_map_free
.LVL39:
	.loc 1 194 0
	l32r	a10, .LC12
	call8	osi_mutex_free
.LVL40:
	retw.n
.LFE27:
	.size	bta_sys_free, .-bta_sys_free
	.section	.text.bta_sys_hw_register,"ax",@progbits
	.literal_position
	.literal .LC13, bta_sys_cb
	.align	4
	.global	bta_sys_hw_register
	.type	bta_sys_hw_register, @function
bta_sys_hw_register:
.LFB29:
	.loc 1 238 0
.LVL41:
	entry	sp, 32
.LCFI8:
	extui	a2, a2, 0, 16
	.loc 1 239 0
	addi	a2, a2, 56
.LVL42:
	l32r	a8, .LC13
	addx4	a2, a2, a8
.LVL43:
	s32i.n	a3, a2, 8
	retw.n
.LFE29:
	.size	bta_sys_hw_register, .-bta_sys_hw_register
	.section	.text.bta_sys_hw_unregister,"ax",@progbits
	.literal_position
	.literal .LC14, bta_sys_cb
	.align	4
	.global	bta_sys_hw_unregister
	.type	bta_sys_hw_unregister, @function
bta_sys_hw_unregister:
.LFB30:
	.loc 1 244 0
.LVL44:
	entry	sp, 32
.LCFI9:
	extui	a2, a2, 0, 16
	.loc 1 245 0
	addi	a2, a2, 56
.LVL45:
	l32r	a8, .LC14
	addx4	a2, a2, a8
.LVL46:
	movi.n	a8, 0
	s32i.n	a8, a2, 8
	retw.n
.LFE30:
	.size	bta_sys_hw_unregister, .-bta_sys_hw_unregister
	.section	.rodata.str1.4
	.align	4
.LC17:
	.string	"BT_APPL"
	.align	4
.LC19:
	.string	"\033[0;33mW (%d) %s: BTA got unregistered event id %d\n\033[0m\n"
	.section	.text.bta_sys_event,"ax",@progbits
	.literal_position
	.literal .LC15, bta_sys_cb
	.literal .LC16, appl_trace_level
	.literal .LC18, .LC17
	.literal .LC20, .LC19
	.align	4
	.global	bta_sys_event
	.type	bta_sys_event, @function
bta_sys_event:
.LFB38:
	.loc 1 485 0
.LVL47:
	entry	sp, 32
.LCFI10:
.LVL48:
	.loc 1 492 0
	l16ui	a3, a2, 0
	srli	a3, a3, 8
.LVL49:
	.loc 1 495 0
	movi.n	a8, 0x2d
	bltu	a8, a3, .L27
	.loc 1 495 0 is_stmt 0 discriminator 1
	l32r	a8, .LC15
	addx4	a8, a3, a8
	l32i.n	a8, a8, 0
	beqz.n	a8, .L27
	.loc 1 496 0 is_stmt 1
	l32i.n	a3, a8, 0
.LVL50:
	mov.n	a10, a2
	callx8	a3
.LVL51:
	j	.L28
.LVL52:
.L27:
	.loc 1 498 0
	l32r	a8, .LC16
	l8ui	a8, a8, 0
	bltui	a8, 2, .L30
	.loc 1 498 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL53:
	l32r	a11, .LC18
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 2
	call8	esp_log_write
.LVL54:
	.loc 1 487 0 is_stmt 1 discriminator 1
	movi.n	a10, 1
	j	.L28
.L30:
	.loc 1 487 0 is_stmt 0
	movi.n	a10, 1
.LVL55:
.L28:
	.loc 1 501 0 is_stmt 1
	beqz.n	a10, .L26
	.loc 1 502 0
	mov.n	a10, a2
.LVL56:
	call8	free
.LVL57:
.L26:
	retw.n
.LFE38:
	.size	bta_sys_event, .-bta_sys_event
	.section	.text.bta_sys_register,"ax",@progbits
	.literal_position
	.literal .LC21, bta_sys_cb
	.align	4
	.global	bta_sys_register
	.type	bta_sys_register, @function
bta_sys_register:
.LFB39:
	.loc 1 519 0
.LVL58:
	entry	sp, 32
.LCFI11:
	extui	a2, a2, 0, 8
	.loc 1 520 0
	l32r	a8, .LC21
	addx4	a9, a2, a8
	s32i.n	a3, a9, 0
	.loc 1 521 0
	add.n	a2, a8, a2
.LVL59:
	movi.n	a8, 1
	s8i	a8, a2, 184
	retw.n
.LFE39:
	.size	bta_sys_register, .-bta_sys_register
	.section	.text.bta_sys_init,"ax",@progbits
	.literal_position
	.literal .LC22, bta_sys_cb
	.literal .LC23, bta_alarm_lock
	.literal .LC24, osi_alarm_free
	.literal .LC25, hash_function_pointer
	.literal .LC26, bta_alarm_hash_map
	.literal .LC27, appl_trace_level
	.literal .LC28, bta_sys_hw_reg
	.literal .LC29, bta_sys_hw_btm_cback
	.align	4
	.global	bta_sys_init
	.type	bta_sys_init, @function
bta_sys_init:
.LFB26:
	.loc 1 169 0
	entry	sp, 32
.LCFI12:
	.loc 1 170 0
	movi	a12, 0x130
	movi.n	a11, 0
	l32r	a10, .LC22
	call8	memset
.LVL60:
	.loc 1 172 0
	l32r	a10, .LC23
	call8	osi_mutex_new
.LVL61:
	.loc 1 174 0
	movi.n	a14, 0
	l32r	a13, .LC24
	mov.n	a12, a14
	l32r	a11, .LC25
	movi.n	a10, 0x11
	call8	hash_map_new
.LVL62:
	l32r	a8, .LC26
	s32i.n	a10, a8, 0
	.loc 1 177 0
	movi.n	a9, 2
	l32r	a8, .LC27
	s8i	a9, a8, 0
	.loc 1 180 0
	l32r	a11, .LC28
	movi.n	a10, 0
	call8	bta_sys_register
.LVL63:
	.loc 1 183 0
	l32r	a10, .LC29
	call8	BTM_RegisterForDeviceStatusNotif
.LVL64:
	.loc 1 186 0
	call8	bta_ar_init
.LVL65:
	retw.n
.LFE26:
	.size	bta_sys_init, .-bta_sys_init
	.section	.text.bta_sys_deregister,"ax",@progbits
	.literal_position
	.literal .LC30, bta_sys_cb
	.align	4
	.global	bta_sys_deregister
	.type	bta_sys_deregister, @function
bta_sys_deregister:
.LFB40:
	.loc 1 536 0
.LVL66:
	entry	sp, 32
.LCFI13:
	extui	a2, a2, 0, 8
	.loc 1 537 0
	l32r	a8, .LC30
	add.n	a2, a8, a2
.LVL67:
	movi	a8, 0xb8
	add.n	a2, a2, a8
	movi.n	a8, 0
	s8i	a8, a2, 0
	retw.n
.LFE40:
	.size	bta_sys_deregister, .-bta_sys_deregister
	.section	.text.bta_sys_is_register,"ax",@progbits
	.literal_position
	.literal .LC31, bta_sys_cb
	.align	4
	.global	bta_sys_is_register
	.type	bta_sys_is_register, @function
bta_sys_is_register:
.LFB41:
	.loc 1 552 0
.LVL68:
	entry	sp, 32
.LCFI14:
	extui	a2, a2, 0, 8
	.loc 1 553 0
	l32r	a8, .LC31
	add.n	a2, a8, a2
.LVL69:
	.loc 1 554 0
	l8ui	a2, a2, 184
	retw.n
.LFE41:
	.size	bta_sys_is_register, .-bta_sys_is_register
	.section	.text.bta_sys_sendmsg,"ax",@progbits
	.align	4
	.global	bta_sys_sendmsg
	.type	bta_sys_sendmsg, @function
bta_sys_sendmsg:
.LFB42:
	.loc 1 569 0
.LVL70:
	entry	sp, 32
.LCFI15:
	.loc 1 574 0
	movi.n	a12, -1
	mov.n	a11, a2
	movi.n	a10, 2
	call8	btu_task_post
.LVL71:
	beqz.n	a10, .L35
	.loc 1 575 0
	mov.n	a10, a2
	call8	free
.LVL72:
.L35:
	retw.n
.LFE42:
	.size	bta_sys_sendmsg, .-bta_sys_sendmsg
	.section	.text.bta_sys_hw_btm_cback,"ax",@progbits
	.align	4
	.global	bta_sys_hw_btm_cback
	.type	bta_sys_hw_btm_cback, @function
bta_sys_hw_btm_cback:
.LFB31:
	.loc 1 259 0
.LVL73:
	entry	sp, 32
.LCFI16:
	extui	a2, a2, 0, 8
	.loc 1 266 0
	movi.n	a10, 0xa
	call8	malloc
.LVL74:
	beqz.n	a10, .L37
	.loc 1 267 0
	bnez.n	a2, .L39
	.loc 1 268 0
	movi.n	a2, 2
.LVL75:
	s16i	a2, a10, 0
	j	.L40
.L39:
	.loc 1 269 0
	bnei	a2, 1, .L41
	.loc 1 270 0
	movi.n	a2, 5
	s16i	a2, a10, 0
	j	.L40
.L41:
	.loc 1 273 0
	call8	free
.LVL76:
	.loc 1 274 0
	movi.n	a10, 0
.LVL77:
.L40:
	.loc 1 277 0
	beqz.n	a10, .L37
	.loc 1 278 0
	call8	bta_sys_sendmsg
.LVL78:
.L37:
	retw.n
.LFE31:
	.size	bta_sys_hw_btm_cback, .-bta_sys_hw_btm_cback
	.section	.text.bta_sys_hw_api_enable,"ax",@progbits
	.literal_position
	.literal .LC32, bta_sys_cb
	.align	4
	.global	bta_sys_hw_api_enable
	.type	bta_sys_hw_api_enable, @function
bta_sys_hw_api_enable:
.LFB33:
	.loc 1 335 0
.LVL79:
	entry	sp, 32
.LCFI17:
	.loc 1 336 0
	l32r	a8, .LC32
	l32i	a10, a8, 240
	bnez.n	a10, .L43
	.loc 1 336 0 is_stmt 0 discriminator 1
	l8ui	a8, a8, 230
	beqi	a8, 2, .L43
.LBB2:
	.loc 1 338 0 is_stmt 1
	l16ui	a9, a2, 8
	movi.n	a8, 1
	ssl	a9
	sll	a8, a8
	or	a8, a10, a8
	l32r	a9, .LC32
	s32i	a8, a9, 240
	.loc 1 341 0
	movi.n	a10, 0xa
	call8	malloc
.LVL80:
	beqz.n	a10, .L42
	.loc 1 342 0
	movi.n	a8, 1
	s16i	a8, a10, 0
	.loc 1 343 0
	l16ui	a2, a2, 8
.LVL81:
	s16i	a2, a10, 8
	.loc 1 345 0
	call8	bta_sys_sendmsg
.LVL82:
	retw.n
.LVL83:
.L43:
.LBE2:
	.loc 1 349 0
	l16ui	a8, a2, 8
	movi.n	a9, 1
	ssl	a8
	sll	a8, a9
	l32r	a11, .LC32
	or	a8, a10, a8
	s32i	a8, a11, 240
	.loc 1 352 0
	l16ui	a8, a2, 8
	addi	a9, a8, 56
	addx4	a9, a9, a11
	l32i.n	a2, a9, 8
.LVL84:
	beqz.n	a2, .L42
	.loc 1 353 0
	l32i.n	a2, a9, 8
	movi.n	a10, 1
	callx8	a2
.LVL85:
.L42:
	retw.n
.LFE33:
	.size	bta_sys_hw_api_enable, .-bta_sys_hw_api_enable
	.section	.rodata.str1.4
	.align	4
.LC33:
	.string	"p_tle != NULL"
	.align	4
.LC40:
	.string	"bta_sys"
	.align	4
.LC45:
	.string	"\033[0;31mE (%d) %s: %s unable to create alarm.\033[0m\n"
	.section	.text.bta_sys_start_timer,"ax",@progbits
	.literal_position
	.literal .LC34, .LC33
	.literal .LC35, __func__$10193
	.literal .LC36, .LC9
	.literal .LC37, bta_alarm_lock
	.literal .LC38, bta_alarm_hash_map
	.literal .LC39, bta_alarm_cb
	.literal .LC41, .LC40
	.literal .LC42, 0, 0
	.literal .LC43, appl_trace_level
	.literal .LC44, .LC17
	.literal .LC46, .LC45
	.align	4
	.global	bta_sys_start_timer
	.type	bta_sys_start_timer, @function
bta_sys_start_timer:
.LFB44:
	.loc 1 598 0
.LVL86:
	entry	sp, 32
.LCFI18:
	extui	a3, a3, 0, 16
	.loc 1 599 0
	bnez.n	a2, .L46
	.loc 1 599 0 is_stmt 0 discriminator 1
	l32r	a13, .LC34
	l32r	a12, .LC35
	movi	a11, 0x257
	l32r	a10, .LC36
	call8	__assert_func
.LVL87:
.L46:
	.loc 1 602 0 is_stmt 1
	movi.n	a11, -1
	l32r	a10, .LC37
	call8	osi_mutex_lock
.LVL88:
	.loc 1 603 0
	mov.n	a11, a2
	l32r	a8, .LC38
	l32i.n	a10, a8, 0
	call8	hash_map_has_key
.LVL89:
	bnez.n	a10, .L47
	.loc 1 604 0
	l32r	a5, .LC38
	l32i.n	a5, a5, 0
	l32r	a14, .LC42
	l32r	a15, .LC42+4
	mov.n	a12, a2
	l32r	a11, .LC39
	l32r	a10, .LC41
	call8	osi_alarm_new
.LVL90:
	mov.n	a12, a10
	mov.n	a11, a2
	mov.n	a10, a5
	call8	hash_map_set
.LVL91:
.L47:
	.loc 1 606 0
	l32r	a10, .LC37
	call8	osi_mutex_unlock
.LVL92:
	.loc 1 608 0
	mov.n	a11, a2
	l32r	a8, .LC38
	l32i.n	a10, a8, 0
	call8	hash_map_get
.LVL93:
	.loc 1 609 0
	bnez.n	a10, .L48
	.loc 1 610 0
	l32r	a2, .LC43
.LVL94:
	l8ui	a2, a2, 0
	beqz.n	a2, .L45
	.loc 1 610 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL95:
	l32r	a11, .LC44
	l32r	a15, .LC35
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC46
	movi.n	a10, 1
	call8	esp_log_write
.LVL96:
	retw.n
.LVL97:
.L48:
	.loc 1 614 0 is_stmt 1
	s16i	a3, a2, 28
	.loc 1 615 0
	s32i.n	a4, a2, 12
	.loc 1 617 0
	mov.n	a12, a4
	srai	a13, a4, 31
	call8	osi_alarm_set
.LVL98:
.L45:
	retw.n
.LFE44:
	.size	bta_sys_start_timer, .-bta_sys_start_timer
	.section	.text.bta_sys_get_remaining_ticks,"ax",@progbits
	.literal_position
	.literal .LC47, 0, 0
	.literal .LC48, bta_alarm_lock
	.literal .LC49, hash_iter_ro_cb
	.literal .LC50, bta_alarm_hash_map
	.align	4
	.global	bta_sys_get_remaining_ticks
	.type	bta_sys_get_remaining_ticks, @function
bta_sys_get_remaining_ticks:
.LFB46:
	.loc 1 629 0
.LVL99:
	entry	sp, 48
.LCFI19:
	.loc 1 630 0
	l32r	a8, .LC47
	l32r	a9, .LC47+4
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	.loc 1 631 0
	l32r	a2, .LC48
.LVL100:
	movi.n	a11, -1
	mov.n	a10, a2
	call8	osi_mutex_lock
.LVL101:
	.loc 1 633 0
	mov.n	a12, sp
	l32r	a11, .LC49
	l32r	a8, .LC50
	l32i.n	a10, a8, 0
	call8	hash_map_foreach
.LVL102:
	.loc 1 634 0
	mov.n	a10, a2
	call8	osi_mutex_unlock
.LVL103:
	.loc 1 636 0
	l32i.n	a2, sp, 0
	retw.n
.LFE46:
	.size	bta_sys_get_remaining_ticks, .-bta_sys_get_remaining_ticks
	.section	.text.bta_sys_stop_timer,"ax",@progbits
	.literal_position
	.literal .LC51, .LC33
	.literal .LC52, __func__$10208
	.literal .LC53, .LC9
	.literal .LC54, bta_alarm_hash_map
	.align	4
	.global	bta_sys_stop_timer
	.type	bta_sys_stop_timer, @function
bta_sys_stop_timer:
.LFB47:
	.loc 1 649 0
.LVL104:
	entry	sp, 32
.LCFI20:
	.loc 1 650 0
	bnez.n	a2, .L52
	.loc 1 650 0 is_stmt 0 discriminator 1
	l32r	a13, .LC51
	l32r	a12, .LC52
	movi	a11, 0x28a
	l32r	a10, .LC53
	call8	__assert_func
.LVL105:
.L52:
	.loc 1 652 0 is_stmt 1
	mov.n	a11, a2
	l32r	a8, .LC54
	l32i.n	a10, a8, 0
	call8	hash_map_get
.LVL106:
	.loc 1 653 0
	beqz.n	a10, .L51
	.loc 1 657 0
	call8	osi_alarm_cancel
.LVL107:
.L51:
	retw.n
.LFE47:
	.size	bta_sys_stop_timer, .-bta_sys_stop_timer
	.section	.text.bta_sys_free_timer,"ax",@progbits
	.literal_position
	.literal .LC55, .LC33
	.literal .LC56, __func__$10213
	.literal .LC57, .LC9
	.literal .LC58, bta_alarm_hash_map
	.align	4
	.global	bta_sys_free_timer
	.type	bta_sys_free_timer, @function
bta_sys_free_timer:
.LFB48:
	.loc 1 670 0
.LVL108:
	entry	sp, 32
.LCFI21:
	.loc 1 671 0
	bnez.n	a2, .L55
	.loc 1 671 0 is_stmt 0 discriminator 1
	l32r	a13, .LC55
	l32r	a12, .LC56
	movi	a11, 0x29f
	l32r	a10, .LC57
	call8	__assert_func
.LVL109:
.L55:
	.loc 1 673 0 is_stmt 1
	mov.n	a11, a2
	l32r	a8, .LC58
	l32i.n	a10, a8, 0
	call8	hash_map_get
.LVL110:
	.loc 1 674 0
	beqz.n	a10, .L54
	.loc 1 678 0
	call8	osi_alarm_cancel
.LVL111:
	.loc 1 679 0
	mov.n	a11, a2
	l32r	a2, .LC58
.LVL112:
	l32i.n	a10, a2, 0
	call8	hash_map_erase
.LVL113:
.L54:
	retw.n
.LFE48:
	.size	bta_sys_free_timer, .-bta_sys_free_timer
	.section	.rodata.str1.4
	.align	4
.LC61:
	.string	"\033[0;33mW (%d) %s: bta_sys_disable: unkown module\033[0m\n"
	.section	.text.bta_sys_disable,"ax",@progbits
	.literal_position
	.literal .LC59, appl_trace_level
	.literal .LC60, .LC17
	.literal .LC62, .LC61
	.literal .LC63, bta_sys_cb
	.align	4
	.global	bta_sys_disable
	.type	bta_sys_disable, @function
bta_sys_disable:
.LFB49:
	.loc 1 692 0
.LVL114:
	entry	sp, 32
.LCFI22:
	extui	a2, a2, 0, 16
.LVL115:
	.loc 1 698 0
	beqz.n	a2, .L63
	.loc 1 704 0
	l32r	a2, .LC59
.LVL116:
	l8ui	a2, a2, 0
	bltui	a2, 2, .L57
	.loc 1 704 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL117:
	l32r	a11, .LC60
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC62
	movi.n	a10, 2
	call8	esp_log_write
.LVL118:
	retw.n
.LVL119:
.L62:
	.loc 1 709 0 is_stmt 1
	l32r	a8, .LC63
	addx4	a8, a2, a8
	l32i.n	a9, a8, 0
	beqz.n	a9, .L61
	.loc 1 710 0
	l32r	a8, .LC63
	add.n	a8, a8, a2
	l8ui	a8, a8, 184
	beqz.n	a8, .L61
	.loc 1 710 0 discriminator 1
	l32i.n	a8, a9, 4
	beqz.n	a8, .L61
	.loc 1 711 0
	callx8	a8
.LVL120:
.L61:
	.loc 1 708 0
	addi.n	a2, a2, 1
.LVL121:
	j	.L59
.LVL122:
.L63:
	.loc 1 698 0
	movi.n	a2, 1
.LVL123:
.L59:
	.loc 1 708 0 discriminator 1
	movi.n	a8, 0x22
	bge	a8, a2, .L62
.LVL124:
.L57:
	retw.n
.LFE49:
	.size	bta_sys_disable, .-bta_sys_disable
	.section	.text.bta_sys_hw_api_disable,"ax",@progbits
	.literal_position
	.literal .LC64, bta_sys_cb
	.align	4
	.global	bta_sys_hw_api_disable
	.type	bta_sys_hw_api_disable, @function
bta_sys_hw_api_disable:
.LFB34:
	.loc 1 373 0
.LVL125:
	entry	sp, 32
.LCFI23:
	.loc 1 378 0
	l16ui	a10, a2, 8
	call8	bta_sys_disable
.LVL126:
	.loc 1 382 0
	l16ui	a9, a2, 8
	movi.n	a8, 1
	ssl	a9
	sll	a8, a8
	movi.n	a9, -1
	xor	a8, a9, a8
	l32r	a10, .LC64
	l32i	a9, a10, 240
	and	a8, a8, a9
	s32i	a8, a10, 240
	.loc 1 386 0
	beqz.n	a8, .L65
	.loc 1 388 0
	l16ui	a2, a2, 8
.LVL127:
	addi	a8, a2, 56
	addx4	a8, a8, a10
	l32i.n	a8, a8, 8
	beqz.n	a8, .L64
	.loc 1 389 0
	addi	a2, a2, 56
	addx4	a2, a2, a10
	l32i.n	a2, a2, 8
	movi.n	a10, 0
	callx8	a2
.LVL128:
	retw.n
.LVL129:
.L65:
.LBB3:
	.loc 1 393 0
	movi.n	a9, 3
	l32r	a8, .LC64
	s8i	a9, a8, 230
	.loc 1 396 0
	movi.n	a10, 0xa
	call8	malloc
.LVL130:
	beqz.n	a10, .L64
	.loc 1 397 0
	movi.n	a8, 4
	s16i	a8, a10, 0
	.loc 1 398 0
	l16ui	a2, a2, 8
.LVL131:
	s16i	a2, a10, 8
	.loc 1 400 0
	call8	bta_sys_sendmsg
.LVL132:
.L64:
	retw.n
.LBE3:
.LFE34:
	.size	bta_sys_hw_api_disable, .-bta_sys_hw_api_disable
	.section	.text.bta_sys_set_trace_level,"ax",@progbits
	.literal_position
	.literal .LC65, appl_trace_level
	.align	4
	.global	bta_sys_set_trace_level
	.type	bta_sys_set_trace_level, @function
bta_sys_set_trace_level:
.LFB50:
	.loc 1 727 0
.LVL133:
	entry	sp, 32
.LCFI24:
	.loc 1 728 0
	l32r	a8, .LC65
	s8i	a2, a8, 0
	retw.n
.LFE50:
	.size	bta_sys_set_trace_level, .-bta_sys_set_trace_level
	.section	.text.bta_sys_get_sys_features,"ax",@progbits
	.literal_position
	.literal .LC66, bta_sys_cb
	.align	4
	.global	bta_sys_get_sys_features
	.type	bta_sys_get_sys_features, @function
bta_sys_get_sys_features:
.LFB51:
	.loc 1 741 0
	entry	sp, 32
.LCFI25:
	.loc 1 743 0
	l32r	a8, .LC66
	l16ui	a2, a8, 244
	retw.n
.LFE51:
	.size	bta_sys_get_sys_features, .-bta_sys_get_sys_features
	.section	.rodata.__func__$10213,"a",@progbits
	.align	4
	.type	__func__$10213, @object
	.size	__func__$10213, 19
__func__$10213:
	.string	"bta_sys_free_timer"
	.section	.rodata.__func__$10208,"a",@progbits
	.align	4
	.type	__func__$10208, @object
	.size	__func__$10208, 19
__func__$10208:
	.string	"bta_sys_stop_timer"
	.section	.rodata.__func__$10193,"a",@progbits
	.align	4
	.type	__func__$10193, @object
	.size	__func__$10193, 20
__func__$10193:
	.string	"bta_sys_start_timer"
	.section	.rodata.__func__$10186,"a",@progbits
	.align	4
	.type	__func__$10186, @object
	.size	__func__$10186, 13
__func__$10186:
	.string	"bta_alarm_cb"
	.global	bta_sys_st_tbl
	.section	.rodata.bta_sys_st_tbl,"a",@progbits
	.align	4
	.type	bta_sys_st_tbl, @object
	.size	bta_sys_st_tbl, 16
bta_sys_st_tbl:
	.word	bta_sys_hw_off
	.word	bta_sys_hw_starting
	.word	bta_sys_hw_on
	.word	bta_sys_hw_stopping
	.global	bta_sys_hw_stopping
	.section	.rodata.bta_sys_hw_stopping,"a",@progbits
	.align	4
	.type	bta_sys_hw_stopping, @object
	.size	bta_sys_hw_stopping, 18
bta_sys_hw_stopping:
	.byte	6
	.byte	6
	.byte	1
	.byte	1
	.byte	6
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.byte	6
	.byte	6
	.byte	3
	.byte	4
	.byte	6
	.byte	0
	.byte	3
	.byte	6
	.byte	3
	.global	bta_sys_hw_on
	.section	.rodata.bta_sys_hw_on,"a",@progbits
	.align	4
	.type	bta_sys_hw_on, @object
	.size	bta_sys_hw_on, 18
bta_sys_hw_on:
	.byte	0
	.byte	6
	.byte	2
	.byte	6
	.byte	6
	.byte	2
	.byte	6
	.byte	6
	.byte	2
	.byte	3
	.byte	6
	.byte	2
	.byte	5
	.byte	6
	.byte	2
	.byte	5
	.byte	6
	.byte	2
	.global	bta_sys_hw_starting
	.section	.rodata.bta_sys_hw_starting,"a",@progbits
	.align	4
	.type	bta_sys_hw_starting, @object
	.size	bta_sys_hw_starting, 18
bta_sys_hw_starting:
	.byte	6
	.byte	6
	.byte	1
	.byte	1
	.byte	6
	.byte	1
	.byte	2
	.byte	6
	.byte	2
	.byte	6
	.byte	6
	.byte	3
	.byte	4
	.byte	0
	.byte	1
	.byte	5
	.byte	6
	.byte	2
	.global	bta_sys_hw_off
	.section	.rodata.bta_sys_hw_off,"a",@progbits
	.align	4
	.type	bta_sys_hw_off, @object
	.size	bta_sys_hw_off, 18
bta_sys_hw_off:
	.byte	0
	.byte	6
	.byte	1
	.byte	6
	.byte	6
	.byte	1
	.byte	6
	.byte	6
	.byte	2
	.byte	4
	.byte	6
	.byte	0
	.byte	6
	.byte	6
	.byte	0
	.byte	6
	.byte	6
	.byte	0
	.global	bta_sys_action
	.section	.rodata.bta_sys_action,"a",@progbits
	.align	4
	.type	bta_sys_action, @object
	.size	bta_sys_action, 24
bta_sys_action:
	.word	bta_sys_hw_api_enable
	.word	bta_sys_hw_evt_enabled
	.word	bta_sys_hw_evt_stack_enabled
	.word	bta_sys_hw_api_disable
	.word	bta_sys_hw_evt_disabled
	.word	bta_sys_hw_error
	.section	.rodata.bta_sys_hw_reg,"a",@progbits
	.align	4
	.type	bta_sys_hw_reg, @object
	.size	bta_sys_hw_reg, 8
bta_sys_hw_reg:
	.word	bta_sys_sm_execute
	.word	0
	.global	btif_trace_level
	.section	.data.btif_trace_level,"aw",@progbits
	.type	btif_trace_level, @object
	.size	btif_trace_level, 1
btif_trace_level:
	.byte	2
	.global	appl_trace_level
	.section	.data.appl_trace_level,"aw",@progbits
	.type	appl_trace_level, @object
	.size	appl_trace_level, 1
appl_trace_level:
	.byte	2
	.section	.bss.bta_alarm_lock,"aw",@nobits
	.align	4
	.type	bta_alarm_lock, @object
	.size	bta_alarm_lock, 4
bta_alarm_lock:
	.zero	4
	.section	.bss.bta_alarm_hash_map,"aw",@nobits
	.align	4
	.type	bta_alarm_hash_map, @object
	.size	bta_alarm_hash_map, 4
bta_alarm_hash_map:
	.zero	4
	.comm	bta_sys_cb,304,4
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI0-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI1-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI3-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI4-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI5-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI6-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI7-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI8-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI9-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI10-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI11-.LFB39
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI13-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI14-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI15-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI16-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI17-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI18-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI19-.LFB46
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI20-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI21-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI22-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI23-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI24-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI25-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/alarm.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/thread.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/sys/include/bta_sys_int.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/hash_map.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/mutex.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_ar_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x15ee
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF276
	.byte	0xc
	.4byte	.LASF277
	.4byte	.LASF278
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1e
	.4byte	0x98
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x21
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x2c
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x39
	.4byte	0x8d
	.uleb128 0x7
	.byte	0x4
	.4byte	0xfb
	.uleb128 0x8
	.uleb128 0x7
	.byte	0x4
	.4byte	0x102
	.uleb128 0x9
	.4byte	0x10d
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x19
	.4byte	0x118
	.uleb128 0xb
	.4byte	.LASF172
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x1a
	.4byte	0xea
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x76
	.4byte	0xdf
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x58
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x21
	.4byte	0xbe
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x8
	.byte	0x22
	.4byte	0xc9
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x8
	.byte	0x23
	.4byte	0xdf
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x28
	.4byte	0xd4
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x29
	.4byte	0x128
	.uleb128 0xc
	.byte	0x8
	.byte	0x8
	.byte	0xc6
	.4byte	0x1c1
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x8
	.byte	0xc7
	.4byte	0xc9
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x8
	.byte	0xc8
	.4byte	0xc9
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x8
	.byte	0xc9
	.4byte	0xc9
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x8
	.byte	0xca
	.4byte	0xc9
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x8
	.byte	0xcb
	.4byte	0x1c1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0xbe
	.4byte	0x1d0
	.uleb128 0x10
	.4byte	0xa6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0xcc
	.4byte	0x17c
	.uleb128 0xf
	.4byte	0x145
	.4byte	0x1eb
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x145
	.uleb128 0xf
	.4byte	0x145
	.4byte	0x201
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1f
	.4byte	0x232
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x9
	.byte	0x20
	.4byte	0x102
	.uleb128 0x14
	.4byte	.LASF173
	.byte	0x20
	.byte	0x9
	.byte	0x21
	.4byte	0x2b6
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x9
	.byte	0x22
	.4byte	0x2b6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x9
	.byte	0x23
	.4byte	0x2b6
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x9
	.byte	0x24
	.4byte	0x2bc
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x9
	.byte	0x25
	.4byte	0x166
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x9
	.byte	0x26
	.4byte	0x166
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x9
	.byte	0x27
	.4byte	0x15b
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x9
	.byte	0x28
	.4byte	0x15b
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x9
	.byte	0x29
	.4byte	0x150
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x9
	.byte	0x2a
	.4byte	0x145
	.byte	0x1e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x23d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x232
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x9
	.byte	0x2b
	.4byte	0x23d
	.uleb128 0x12
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x31
	.4byte	0x30a
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF56
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0x6a
	.4byte	0x323
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x82
	.4byte	0x342
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0
	.uleb128 0x13
	.4byte	.LASF63
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF64
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xc
	.byte	0x88
	.4byte	0x145
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xc
	.byte	0x9d
	.4byte	0x358
	.uleb128 0x9
	.4byte	0x363
	.uleb128 0xa
	.4byte	0x342
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.2byte	0x1c0
	.4byte	0x48b
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x6
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x7
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x9
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0xa
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0xb
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0xd
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0xe
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0xf
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x11
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x12
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x13
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x15
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x16
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x17
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x19
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x1a
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x1b
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x1c
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1d
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x1e
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x1f
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x20
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x21
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x22
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x23
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x24
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x25
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x26
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x27
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x28
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x29
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x2a
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x2b
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x2c
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x2d
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x2e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1d0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.2byte	0x6ea
	.4byte	0x4c9
	.uleb128 0x13
	.4byte	.LASF114
	.byte	0
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	0x145
	.4byte	0x4d9
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xd
	.byte	0x23
	.4byte	0x4e4
	.uleb128 0x16
	.4byte	0x171
	.4byte	0x4f8
	.uleb128 0xa
	.4byte	0x150
	.uleb128 0xa
	.4byte	0xad
	.byte	0
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xd
	.byte	0x26
	.4byte	0x503
	.uleb128 0x16
	.4byte	0x171
	.4byte	0x512
	.uleb128 0xa
	.4byte	0x48b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xd
	.byte	0x29
	.4byte	0xb6
	.uleb128 0x12
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0x2d
	.4byte	0x53c
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0
	.uleb128 0x13
	.4byte	.LASF125
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF126
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0xd
	.byte	0x34
	.4byte	0x150
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xd
	.byte	0x81
	.4byte	0x145
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xd
	.byte	0x8b
	.4byte	0x55d
	.uleb128 0x9
	.4byte	0x577
	.uleb128 0xa
	.4byte	0x547
	.uleb128 0xa
	.4byte	0x145
	.uleb128 0xa
	.4byte	0x145
	.uleb128 0xa
	.4byte	0x1eb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xd
	.byte	0x92
	.4byte	0x582
	.uleb128 0x9
	.4byte	0x592
	.uleb128 0xa
	.4byte	0x150
	.uleb128 0xa
	.4byte	0x171
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0xd
	.byte	0x96
	.4byte	0x5b3
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0xd
	.byte	0x97
	.4byte	0x5b3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF132
	.byte	0xd
	.byte	0x98
	.4byte	0x5b9
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4f8
	.uleb128 0x7
	.byte	0x4
	.4byte	0x512
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xd
	.byte	0x99
	.4byte	0x592
	.uleb128 0xc
	.byte	0xa
	.byte	0xd
	.byte	0x9c
	.4byte	0x5eb
	.uleb128 0xe
	.string	"hdr"
	.byte	0xd
	.byte	0x9d
	.4byte	0x1d0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0xd
	.byte	0x9e
	.4byte	0x53c
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0xd
	.byte	0x9f
	.4byte	0x5ca
	.uleb128 0x12
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0xb4
	.4byte	0x62d
	.uleb128 0x13
	.4byte	.LASF136
	.byte	0
	.uleb128 0x13
	.4byte	.LASF137
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF139
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF140
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x37
	.byte	0xd
	.byte	0xc3
	.4byte	0x658
	.uleb128 0x13
	.4byte	.LASF143
	.byte	0
	.uleb128 0x13
	.4byte	.LASF144
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF145
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF146
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF147
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xd
	.byte	0xcb
	.4byte	0x145
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xd
	.byte	0xce
	.4byte	0x66e
	.uleb128 0x9
	.4byte	0x679
	.uleb128 0xa
	.4byte	0x658
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x37
	.byte	0xe
	.byte	0x24
	.4byte	0x69e
	.uleb128 0x13
	.4byte	.LASF150
	.byte	0
	.uleb128 0x13
	.4byte	.LASF151
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF152
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF153
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0xe
	.byte	0x2a
	.4byte	0x145
	.uleb128 0xc
	.byte	0x1c
	.byte	0xe
	.byte	0x2f
	.4byte	0x6c9
	.uleb128 0xe
	.string	"id"
	.byte	0xe
	.byte	0x30
	.4byte	0x4c9
	.byte	0
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0xe
	.byte	0x31
	.4byte	0x6c9
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0x6d9
	.4byte	0x6d9
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x552
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xe
	.byte	0x32
	.4byte	0x6a9
	.uleb128 0x17
	.2byte	0x130
	.byte	0xe
	.byte	0x35
	.4byte	0x7a2
	.uleb128 0xe
	.string	"reg"
	.byte	0xe
	.byte	0x36
	.4byte	0x7a2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0xe
	.byte	0x37
	.4byte	0x7b8
	.byte	0xb8
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0xe
	.byte	0x38
	.4byte	0x69e
	.byte	0xe6
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0xe
	.byte	0x39
	.4byte	0x7c8
	.byte	0xe8
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0xe
	.byte	0x3a
	.4byte	0x15b
	.byte	0xf0
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0xe
	.byte	0x3b
	.4byte	0x150
	.byte	0xf4
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0xe
	.byte	0x3d
	.4byte	0x6d9
	.byte	0xf8
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0xe
	.byte	0x3e
	.4byte	0x6d9
	.byte	0xfc
	.uleb128 0x18
	.4byte	.LASF164
	.byte	0xe
	.byte	0x3f
	.4byte	0x6d9
	.2byte	0x100
	.uleb128 0x18
	.4byte	.LASF165
	.byte	0xe
	.byte	0x40
	.4byte	0x6d9
	.2byte	0x104
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0xe
	.byte	0x41
	.4byte	0x6d9
	.2byte	0x108
	.uleb128 0x18
	.4byte	.LASF167
	.byte	0xe
	.byte	0x42
	.4byte	0x6df
	.2byte	0x10c
	.uleb128 0x18
	.4byte	.LASF168
	.byte	0xe
	.byte	0x44
	.4byte	0x7de
	.2byte	0x128
	.uleb128 0x18
	.4byte	.LASF169
	.byte	0xe
	.byte	0x4a
	.4byte	0x7e4
	.2byte	0x12c
	.byte	0
	.uleb128 0xf
	.4byte	0x7b2
	.4byte	0x7b2
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x2d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5bf
	.uleb128 0xf
	.4byte	0x171
	.4byte	0x7c8
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x2d
	.byte	0
	.uleb128 0xf
	.4byte	0x7d8
	.4byte	0x7d8
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x663
	.uleb128 0x7
	.byte	0x4
	.4byte	0x577
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4d9
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0xe
	.byte	0x4c
	.4byte	0x6ea
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xf
	.byte	0x1a
	.4byte	0x800
	.uleb128 0xb
	.4byte	.LASF171
	.uleb128 0x14
	.4byte	.LASF174
	.byte	0xc
	.byte	0xf
	.byte	0x1c
	.4byte	0x836
	.uleb128 0xe
	.string	"key"
	.byte	0xf
	.byte	0x1d
	.4byte	0xf5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0xf
	.byte	0x1e
	.4byte	0xad
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF175
	.byte	0xf
	.byte	0x1f
	.4byte	0x836
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x83c
	.uleb128 0x19
	.4byte	0x7f5
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0xf
	.byte	0x20
	.4byte	0x805
	.uleb128 0x7
	.byte	0x4
	.4byte	0x841
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0xf
	.byte	0x2b
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0x10
	.byte	0x4f
	.4byte	0x13a
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x11
	.byte	0x21
	.4byte	0x85d
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0x1
	.byte	0x4a
	.4byte	0x87e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x884
	.uleb128 0x9
	.4byte	0x88f
	.uleb128 0xa
	.4byte	0x88f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x5eb
	.uleb128 0x12
	.byte	0x4
	.4byte	0x37
	.byte	0x1
	.byte	0x58
	.4byte	0x8c6
	.uleb128 0x13
	.4byte	.LASF180
	.byte	0
	.uleb128 0x13
	.4byte	.LASF181
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF182
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF183
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF184
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF185
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0x1
	.byte	0x94
	.4byte	0x8d1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1f1
	.uleb128 0x1a
	.4byte	.LASF200
	.byte	0x1
	.byte	0xd2
	.4byte	0x171
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x941
	.uleb128 0x1b
	.4byte	.LASF190
	.byte	0x1
	.byte	0xd2
	.4byte	0x48b
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF187
	.byte	0x1
	.byte	0xd4
	.4byte	0x171
	.byte	0x1
	.uleb128 0x1d
	.4byte	.LASF188
	.byte	0x1
	.byte	0xd5
	.4byte	0x8c6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF189
	.byte	0x1
	.byte	0xd6
	.4byte	0x145
	.4byte	.LLST1
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xd7
	.4byte	0x25
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LVL6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x129
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98c
	.uleb128 0x23
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x129
	.4byte	0x88f
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x12b
	.4byte	0x145
	.4byte	.LLST4
	.uleb128 0x25
	.4byte	.LASF279
	.4byte	0x99c
	.uleb128 0x20
	.4byte	.LVL13
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xb7
	.4byte	0x99c
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.4byte	0x98c
	.uleb128 0x22
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x1b2
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e3
	.uleb128 0x23
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x88f
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x145
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LVL20
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x1c9
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa25
	.uleb128 0x23
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x88f
	.4byte	.LLST7
	.uleb128 0x24
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x145
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LVL27
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x1a1
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa59
	.uleb128 0x26
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x88f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LVL31
	.4byte	0x14de
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x24d
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae6
	.uleb128 0x26
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x24d
	.4byte	0xad
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	.LASF225
	.4byte	0xaf6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10186
	.uleb128 0x29
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x250
	.4byte	0xafb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LVL33
	.4byte	0x14ea
	.4byte	0xaca
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x24f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10186
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x27
	.4byte	.LVL34
	.4byte	0x14f5
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0xb7
	.4byte	0xaf6
	.uleb128 0x11
	.4byte	0xa6
	.byte	0xc
	.byte	0
	.uleb128 0x19
	.4byte	0xae6
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c2
	.uleb128 0x2b
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x26c
	.4byte	0x128
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb61
	.uleb128 0x23
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x26c
	.4byte	0x84c
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x26c
	.4byte	0xad
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x26e
	.4byte	0xb61
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x26f
	.4byte	0xb67
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LVL37
	.4byte	0x1500
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x10d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x11d
	.uleb128 0x2d
	.4byte	.LASF206
	.byte	0x1
	.byte	0xbf
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb9f
	.uleb128 0x2c
	.4byte	.LVL39
	.4byte	0x150b
	.uleb128 0x27
	.4byte	.LVL40
	.4byte	0x1516
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_lock
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF207
	.byte	0x1
	.byte	0xed
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd1
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0x1
	.byte	0xed
	.4byte	0x53c
	.4byte	.LLST11
	.uleb128 0x2e
	.4byte	.LASF209
	.byte	0x1
	.byte	0xed
	.4byte	0x7d8
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF210
	.byte	0x1
	.byte	0xf3
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf6
	.uleb128 0x1b
	.4byte	.LASF208
	.byte	0x1
	.byte	0xf3
	.4byte	0x53c
	.4byte	.LLST12
	.byte	0
	.uleb128 0x22
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x1e4
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9a
	.uleb128 0x26
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x48b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.string	"id"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x145
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x171
	.4byte	.LLST14
	.uleb128 0x30
	.4byte	.LVL51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0xc4c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL53
	.4byte	0x1521
	.uleb128 0x2a
	.4byte	.LVL54
	.4byte	0x152c
	.4byte	0xc89
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL57
	.4byte	0x1537
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x206
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcce
	.uleb128 0x31
	.string	"id"
	.byte	0x1
	.2byte	0x206
	.4byte	0x145
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x206
	.4byte	0xcce
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xcd4
	.uleb128 0x19
	.4byte	0x5bf
	.uleb128 0x2d
	.4byte	.LASF214
	.byte	0x1
	.byte	0xa8
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd82
	.uleb128 0x2a
	.4byte	.LVL60
	.4byte	0x1542
	.4byte	0xd11
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_cb
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x130
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL61
	.4byte	0x154b
	.4byte	0xd28
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_lock
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL62
	.4byte	0x1556
	.4byte	0xd45
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL63
	.4byte	0xc9a
	.4byte	0xd61
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_reg
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL64
	.4byte	0x1561
	.4byte	0xd78
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_btm_cback
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL65
	.4byte	0x156d
	.byte	0
	.uleb128 0x22
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x217
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda8
	.uleb128 0x31
	.string	"id"
	.byte	0x1
	.2byte	0x217
	.4byte	0x145
	.4byte	.LLST16
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x227
	.4byte	0x171
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd2
	.uleb128 0x31
	.string	"id"
	.byte	0x1
	.2byte	0x227
	.4byte	0x145
	.4byte	.LLST17
	.byte	0
	.uleb128 0x22
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x238
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe26
	.uleb128 0x26
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x238
	.4byte	0xad
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LVL71
	.4byte	0x14f5
	.4byte	0xe15
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x27
	.4byte	.LVL72
	.4byte	0x1537
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x102
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe82
	.uleb128 0x23
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x102
	.4byte	0x342
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x105
	.4byte	0x88f
	.4byte	.LLST19
	.uleb128 0x2a
	.4byte	.LVL74
	.4byte	0x1578
	.4byte	0xe6f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL76
	.4byte	0x1537
	.uleb128 0x2c
	.4byte	.LVL78
	.4byte	0xdd2
	.byte	0
	.uleb128 0x22
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x14e
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef1
	.uleb128 0x23
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x14e
	.4byte	0x88f
	.4byte	.LLST20
	.uleb128 0x32
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xee2
	.uleb128 0x24
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x154
	.4byte	0x88f
	.4byte	.LLST21
	.uleb128 0x2a
	.4byte	.LVL80
	.4byte	0x1578
	.4byte	0xed8
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL82
	.4byte	0xdd2
	.byte	0
	.uleb128 0x33
	.4byte	.LVL85
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x255
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1068
	.uleb128 0x23
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x255
	.4byte	0xafb
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x255
	.4byte	0x150
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x255
	.4byte	0x166
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.LASF225
	.4byte	0x1078
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10193
	.uleb128 0x24
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x260
	.4byte	0xb61
	.4byte	.LLST23
	.uleb128 0x2a
	.4byte	.LVL87
	.4byte	0x14ea
	.4byte	0xf82
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x257
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10193
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL88
	.4byte	0x1583
	.4byte	0xf9f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_lock
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL89
	.4byte	0x158e
	.4byte	0xfb3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL90
	.4byte	0x1599
	.4byte	0xfd9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_cb
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL91
	.4byte	0x15a4
	.4byte	0xff3
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL92
	.4byte	0x15af
	.4byte	0x100a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_lock
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL93
	.4byte	0x15ba
	.4byte	0x101e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL95
	.4byte	0x1521
	.uleb128 0x2a
	.4byte	.LVL96
	.4byte	0x152c
	.4byte	0x105e
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10193
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL98
	.4byte	0x15c5
	.byte	0
	.uleb128 0xf
	.4byte	0xb7
	.4byte	0x1078
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x13
	.byte	0
	.uleb128 0x19
	.4byte	0x1068
	.uleb128 0x2b
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x274
	.4byte	0x15b
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10fe
	.uleb128 0x23
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x274
	.4byte	0xafb
	.4byte	.LLST24
	.uleb128 0x29
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x276
	.4byte	0x11d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.4byte	.LVL101
	.4byte	0x1583
	.4byte	0x10d0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL102
	.4byte	0x15d0
	.4byte	0x10ed
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	hash_iter_ro_cb
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.4byte	.LVL103
	.4byte	0x15af
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x288
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x118f
	.uleb128 0x26
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x288
	.4byte	0xafb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	.LASF225
	.4byte	0x119f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10208
	.uleb128 0x24
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x28c
	.4byte	0xb61
	.4byte	.LLST25
	.uleb128 0x2a
	.4byte	.LVL105
	.4byte	0x14ea
	.4byte	0x1171
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x28a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10208
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL106
	.4byte	0x15ba
	.4byte	0x1185
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL107
	.4byte	0x15db
	.byte	0
	.uleb128 0xf
	.4byte	0xb7
	.4byte	0x119f
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x12
	.byte	0
	.uleb128 0x19
	.4byte	0x118f
	.uleb128 0x22
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x29d
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1248
	.uleb128 0x23
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x29d
	.4byte	0xafb
	.4byte	.LLST26
	.uleb128 0x28
	.4byte	.LASF225
	.4byte	0x1248
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10213
	.uleb128 0x24
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x2a1
	.4byte	0xb61
	.4byte	.LLST27
	.uleb128 0x2a
	.4byte	.LVL109
	.4byte	0x14ea
	.4byte	0x1219
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x29f
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10213
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL110
	.4byte	0x15ba
	.4byte	0x122d
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL111
	.4byte	0x15db
	.uleb128 0x27
	.4byte	.LVL113
	.4byte	0x15e6
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x118f
	.uleb128 0x34
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x2b3
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c4
	.uleb128 0x23
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x53c
	.4byte	.LLST28
	.uleb128 0x24
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x25
	.4byte	.LLST29
	.uleb128 0x35
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x25
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL117
	.4byte	0x1521
	.uleb128 0x27
	.4byte	.LVL118
	.4byte	0x152c
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC61
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x174
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x133c
	.uleb128 0x23
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x174
	.4byte	0x88f
	.4byte	.LLST30
	.uleb128 0x32
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x1324
	.uleb128 0x24
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x18b
	.4byte	0x88f
	.4byte	.LLST31
	.uleb128 0x2a
	.4byte	.LVL130
	.4byte	0x1578
	.4byte	0x131a
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL132
	.4byte	0xdd2
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL126
	.4byte	0x124d
	.uleb128 0x33
	.4byte	.LVL128
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x2d6
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1361
	.uleb128 0x26
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x145
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x36
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x150
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.4byte	.LASF237
	.byte	0x8
	.2byte	0x2cc
	.4byte	0x138a
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x19
	.4byte	0x1db
	.uleb128 0x37
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x2cd
	.4byte	0x13a2
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0x1db
	.uleb128 0x1d
	.4byte	.LASF239
	.byte	0x1
	.byte	0x37
	.4byte	0x13b8
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_hash_map
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7f5
	.uleb128 0x1c
	.4byte	.LASF240
	.byte	0x1
	.byte	0x38
	.4byte	0x13ca
	.byte	0x11
	.uleb128 0x19
	.4byte	0x2c
	.uleb128 0x1d
	.4byte	.LASF241
	.byte	0x1
	.byte	0x39
	.4byte	0x868
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_alarm_lock
	.uleb128 0x1d
	.4byte	.LASF242
	.byte	0x1
	.byte	0x43
	.4byte	0xcd4
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_reg
	.uleb128 0x38
	.4byte	.LASF243
	.byte	0x1
	.byte	0x3f
	.4byte	0x145
	.uleb128 0x5
	.byte	0x3
	.4byte	btif_trace_level
	.uleb128 0x38
	.4byte	.LASF244
	.byte	0x1
	.byte	0x3e
	.4byte	0x145
	.uleb128 0x5
	.byte	0x3
	.4byte	appl_trace_level
	.uleb128 0x38
	.4byte	.LASF245
	.byte	0x1
	.byte	0x32
	.4byte	0x7ea
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_cb
	.uleb128 0xf
	.4byte	0x873
	.4byte	0x1434
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x5
	.byte	0
	.uleb128 0x38
	.4byte	.LASF246
	.byte	0x1
	.byte	0x4d
	.4byte	0x1445
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_action
	.uleb128 0x19
	.4byte	0x1424
	.uleb128 0xf
	.4byte	0x145
	.4byte	0x1460
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x5
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x38
	.4byte	.LASF247
	.byte	0x1
	.byte	0x6c
	.4byte	0x1471
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_off
	.uleb128 0x19
	.4byte	0x144a
	.uleb128 0x38
	.4byte	.LASF248
	.byte	0x1
	.byte	0x76
	.4byte	0x1487
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_starting
	.uleb128 0x19
	.4byte	0x144a
	.uleb128 0x38
	.4byte	.LASF249
	.byte	0x1
	.byte	0x80
	.4byte	0x149d
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_on
	.uleb128 0x19
	.4byte	0x144a
	.uleb128 0x38
	.4byte	.LASF250
	.byte	0x1
	.byte	0x8a
	.4byte	0x14b3
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_hw_stopping
	.uleb128 0x19
	.4byte	0x144a
	.uleb128 0xf
	.4byte	0x8c6
	.4byte	0x14c8
	.uleb128 0x11
	.4byte	0xa6
	.byte	0x3
	.byte	0
	.uleb128 0x38
	.4byte	.LASF251
	.byte	0x1
	.byte	0x97
	.4byte	0x14d9
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_sys_st_tbl
	.uleb128 0x19
	.4byte	0x14b8
	.uleb128 0x39
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0xc
	.2byte	0x77a
	.uleb128 0x3a
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x12
	.byte	0x29
	.uleb128 0x3a
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0xb
	.byte	0x6f
	.uleb128 0x3a
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0x5
	.byte	0x49
	.uleb128 0x3a
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0xf
	.byte	0x3f
	.uleb128 0x3a
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0x11
	.byte	0x29
	.uleb128 0x3a
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0xa
	.byte	0x57
	.uleb128 0x3a
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0xa
	.byte	0x6b
	.uleb128 0x3a
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0x13
	.byte	0x5a
	.uleb128 0x3b
	.4byte	.LASF281
	.4byte	.LASF281
	.uleb128 0x3a
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0x11
	.byte	0x23
	.uleb128 0x3a
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0xf
	.byte	0x36
	.uleb128 0x39
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0xc
	.2byte	0x7e5
	.uleb128 0x3a
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x14
	.byte	0x36
	.uleb128 0x3a
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0x13
	.byte	0x65
	.uleb128 0x3a
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0x11
	.byte	0x25
	.uleb128 0x3a
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0xf
	.byte	0x50
	.uleb128 0x3a
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0x5
	.byte	0x2e
	.uleb128 0x3a
	.4byte	.LASF269
	.4byte	.LASF269
	.byte	0xf
	.byte	0x5b
	.uleb128 0x3a
	.4byte	.LASF270
	.4byte	.LASF270
	.byte	0x11
	.byte	0x27
	.uleb128 0x3a
	.4byte	.LASF271
	.4byte	.LASF271
	.byte	0xf
	.byte	0x54
	.uleb128 0x3a
	.4byte	.LASF272
	.4byte	.LASF272
	.byte	0x5
	.byte	0x3a
	.uleb128 0x3a
	.4byte	.LASF273
	.4byte	.LASF273
	.byte	0xf
	.byte	0x6c
	.uleb128 0x3a
	.4byte	.LASF274
	.4byte	.LASF274
	.byte	0x5
	.byte	0x43
	.uleb128 0x3a
	.4byte	.LASF275
	.4byte	.LASF275
	.byte	0xf
	.byte	0x61
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x26
	.byte	0
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
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
	.uleb128 0x35
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x17
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x72
	.sleb128 -56
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x72
	.sleb128 -56
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL74
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL79
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
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL80
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL86
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL93
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL98-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL108
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL113-1
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL130
	.4byte	.LVL132-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xe4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"long int"
.LASF117:
	.string	"BTM_PM_STS_PARK"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF261:
	.string	"osi_mutex_new"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF276:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF43:
	.string	"TIMER_CBACK"
.LASF114:
	.string	"BTM_PM_STS_ACTIVE"
.LASF221:
	.string	"bta_sys_hw_api_enable"
.LASF246:
	.string	"bta_sys_action"
.LASF279:
	.string	"__FUNCTION__"
.LASF216:
	.string	"bta_sys_is_register"
.LASF168:
	.string	"eir_cb"
.LASF36:
	.string	"BT_HDR"
.LASF153:
	.string	"BTA_SYS_HW_STOPPING"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF253:
	.string	"__assert_func"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF209:
	.string	"cback"
.LASF28:
	.string	"UINT16"
.LASF245:
	.string	"bta_sys_cb"
.LASF269:
	.string	"hash_map_set"
.LASF124:
	.string	"BTA_SYS_HW_BLUETOOTH"
.LASF250:
	.string	"bta_sys_hw_stopping"
.LASF224:
	.string	"timeout_ms"
.LASF8:
	.string	"__int32_t"
.LASF262:
	.string	"hash_map_new"
.LASF187:
	.string	"freebuf"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF231:
	.string	"bta_sys_disable"
.LASF258:
	.string	"esp_log_timestamp"
.LASF211:
	.string	"bta_sys_event"
.LASF236:
	.string	"level"
.LASF64:
	.string	"BTM_DEV_STATUS_CMD_TOUT"
.LASF243:
	.string	"btif_trace_level"
.LASF31:
	.string	"BOOLEAN"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF174:
	.string	"hash_map_entry_t"
.LASF122:
	.string	"tBTA_SYS_EVT_HDLR"
.LASF215:
	.string	"bta_sys_deregister"
.LASF184:
	.string	"BTA_SYS_HW_EVT_DISABLED"
.LASF59:
	.string	"SIG_BTU_NUM"
.LASF273:
	.string	"hash_map_foreach"
.LASF63:
	.string	"BTM_DEV_STATUS_DOWN"
.LASF217:
	.string	"bta_sys_sendmsg"
.LASF62:
	.string	"BTM_DEV_STATUS_UP"
.LASF248:
	.string	"bta_sys_hw_starting"
.LASF267:
	.string	"hash_map_has_key"
.LASF239:
	.string	"bta_alarm_hash_map"
.LASF56:
	.string	"SIG_BTU_GENERAL_ALARM"
.LASF29:
	.string	"UINT32"
.LASF20:
	.string	"uint32_t"
.LASF175:
	.string	"hash_map"
.LASF212:
	.string	"bta_sys_register"
.LASF146:
	.string	"BTA_SYS_HW_STOPPING_EVT"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF32:
	.string	"event"
.LASF265:
	.string	"malloc"
.LASF272:
	.string	"osi_alarm_set"
.LASF30:
	.string	"INT32"
.LASF12:
	.string	"long long unsigned int"
.LASF116:
	.string	"BTM_PM_STS_SNIFF"
.LASF233:
	.string	"bta_id_max"
.LASF160:
	.string	"sys_hw_module_active"
.LASF53:
	.string	"SIG_BTU_HCI_MSG"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF268:
	.string	"osi_alarm_new"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF237:
	.string	"bd_addr_any"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF7:
	.string	"__uint16_t"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF206:
	.string	"bta_sys_free"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF185:
	.string	"BTA_SYS_HW_ERROR"
.LASF39:
	.string	"ESP_LOG_WARN"
.LASF218:
	.string	"bta_sys_hw_btm_cback"
.LASF198:
	.string	"bta_alarm_cb"
.LASF235:
	.string	"bta_sys_set_trace_level"
.LASF118:
	.string	"BTM_PM_STS_SSR"
.LASF128:
	.string	"tBTA_SYS_CONN_STATUS"
.LASF52:
	.string	"SIG_BTU_START_UP"
.LASF58:
	.string	"SIG_BTU_L2CAP_ALARM"
.LASF270:
	.string	"osi_mutex_unlock"
.LASF136:
	.string	"BTA_SYS_API_ENABLE_EVT"
.LASF166:
	.string	"p_role_cb"
.LASF121:
	.string	"tBTA_SYS_VS_EVT_HDLR"
.LASF271:
	.string	"hash_map_get"
.LASF3:
	.string	"size_t"
.LASF254:
	.string	"btu_task_post"
.LASF241:
	.string	"bta_alarm_lock"
.LASF33:
	.string	"offset"
.LASF249:
	.string	"bta_sys_hw_on"
.LASF247:
	.string	"bta_sys_hw_off"
.LASF24:
	.string	"_Bool"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF135:
	.string	"tBTA_SYS_HW_MSG"
.LASF260:
	.string	"free"
.LASF11:
	.string	"__uint64_t"
.LASF129:
	.string	"tBTA_SYS_CONN_CBACK"
.LASF126:
	.string	"BTA_SYS_MAX_HW_MODULES"
.LASF156:
	.string	"tBTA_SYS_COLLISION"
.LASF37:
	.string	"ESP_LOG_NONE"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF230:
	.string	"bta_sys_free_timer"
.LASF145:
	.string	"BTA_SYS_HW_STARTING_EVT"
.LASF169:
	.string	"p_vs_evt_hdlr"
.LASF23:
	.string	"period_ms_t"
.LASF155:
	.string	"p_coll_cback"
.LASF143:
	.string	"BTA_SYS_HW_OFF_EVT"
.LASF60:
	.string	"TASK_POST_SUCCESS"
.LASF47:
	.string	"ticks"
.LASF195:
	.string	"hw_module_index"
.LASF55:
	.string	"SIG_BTU_BTA_ALARM"
.LASF16:
	.string	"char"
.LASF207:
	.string	"bta_sys_hw_register"
.LASF54:
	.string	"SIG_BTU_BTA_MSG"
.LASF61:
	.string	"TASK_POST_FAIL"
.LASF137:
	.string	"BTA_SYS_EVT_ENABLED_EVT"
.LASF202:
	.string	"hash_map_entry"
.LASF150:
	.string	"BTA_SYS_HW_OFF"
.LASF163:
	.string	"ppm_cb"
.LASF40:
	.string	"ESP_LOG_INFO"
.LASF278:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF201:
	.string	"hash_iter_ro_cb"
.LASF35:
	.string	"data"
.LASF228:
	.string	"remaining_ms"
.LASF26:
	.string	"QueueHandle_t"
.LASF182:
	.string	"BTA_SYS_HW_EVT_STACK_ENABLED"
.LASF51:
	.string	"TIMER_LIST_ENT"
.LASF148:
	.string	"tBTA_SYS_HW_EVT"
.LASF141:
	.string	"BTA_SYS_ERROR_EVT"
.LASF17:
	.string	"uint8_t"
.LASF219:
	.string	"status"
.LASF242:
	.string	"bta_sys_hw_reg"
.LASF139:
	.string	"BTA_SYS_API_DISABLE_EVT"
.LASF34:
	.string	"layer_specific"
.LASF255:
	.string	"osi_alarm_get_remaining_ms"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF280:
	.string	"bta_sys_get_sys_features"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF172:
	.string	"alarm_t"
.LASF10:
	.string	"long long int"
.LASF22:
	.string	"osi_alarm_t"
.LASF193:
	.string	"bta_sys_hw_error"
.LASF275:
	.string	"hash_map_erase"
.LASF161:
	.string	"sys_features"
.LASF165:
	.string	"p_sco_cb"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF222:
	.string	"bta_sys_start_timer"
.LASF204:
	.string	"alarm"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF46:
	.string	"p_cback"
.LASF167:
	.string	"colli_reg"
.LASF281:
	.string	"memset"
.LASF226:
	.string	"bta_sys_get_remaining_ticks"
.LASF138:
	.string	"BTA_SYS_EVT_STACK_ENABLED_EVT"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF142:
	.string	"BTA_SYS_MAX_EVT"
.LASF49:
	.string	"param"
.LASF173:
	.string	"_tle"
.LASF205:
	.string	"p_remaining_ms"
.LASF50:
	.string	"in_use"
.LASF259:
	.string	"esp_log_write"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF120:
	.string	"BTM_PM_STS_ERROR"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF203:
	.string	"context"
.LASF190:
	.string	"p_msg"
.LASF25:
	.string	"TickType_t"
.LASF134:
	.string	"hw_module"
.LASF240:
	.string	"BTA_ALARM_HASH_MAP_SIZE"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF147:
	.string	"BTA_SYS_HW_ERROR_EVT"
.LASF181:
	.string	"BTA_SYS_HW_EVT_ENABLED"
.LASF18:
	.string	"uint16_t"
.LASF66:
	.string	"tBTM_DEV_STATUS_CB"
.LASF180:
	.string	"BTA_SYS_HW_API_ENABLE"
.LASF115:
	.string	"BTM_PM_STS_HOLD"
.LASF210:
	.string	"bta_sys_hw_unregister"
.LASF238:
	.string	"bd_addr_null"
.LASF277:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/sys/bta_sys_main.c"
.LASF213:
	.string	"p_reg"
.LASF6:
	.string	"short int"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF140:
	.string	"BTA_SYS_EVT_DISABLED_EVT"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF214:
	.string	"bta_sys_init"
.LASF65:
	.string	"tBTM_DEV_STATUS"
.LASF144:
	.string	"BTA_SYS_HW_ON_EVT"
.LASF251:
	.string	"bta_sys_st_tbl"
.LASF44:
	.string	"p_next"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF164:
	.string	"p_policy_cb"
.LASF21:
	.string	"uint64_t"
.LASF189:
	.string	"action"
.LASF157:
	.string	"is_reg"
.LASF162:
	.string	"prm_cb"
.LASF123:
	.string	"tBTA_SYS_DISABLE"
.LASF197:
	.string	"bta_sys_hw_evt_enabled"
.LASF151:
	.string	"BTA_SYS_HW_STARTING"
.LASF57:
	.string	"SIG_BTU_ONESHOT_ALARM"
.LASF188:
	.string	"state_table"
.LASF257:
	.string	"osi_mutex_free"
.LASF208:
	.string	"module"
.LASF133:
	.string	"tBTA_SYS_REG"
.LASF4:
	.string	"__uint8_t"
.LASF229:
	.string	"bta_sys_stop_timer"
.LASF127:
	.string	"tBTA_SYS_HW_MODULE"
.LASF0:
	.string	"unsigned int"
.LASF132:
	.string	"disable"
.LASF171:
	.string	"hash_map_t"
.LASF186:
	.string	"tBTA_SYS_ST_TBL"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF192:
	.string	"module_index"
.LASF45:
	.string	"p_prev"
.LASF48:
	.string	"ticks_initial"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"long unsigned int"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF252:
	.string	"BTM_DeviceReset"
.LASF42:
	.string	"ESP_LOG_VERBOSE"
.LASF152:
	.string	"BTA_SYS_HW_ON"
.LASF19:
	.string	"int32_t"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF158:
	.string	"state"
.LASF159:
	.string	"sys_hw_cback"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF274:
	.string	"osi_alarm_cancel"
.LASF223:
	.string	"type"
.LASF178:
	.string	"osi_mutex_t"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF5:
	.string	"unsigned char"
.LASF9:
	.string	"__uint32_t"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF220:
	.string	"sys_event"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF131:
	.string	"evt_hdlr"
.LASF196:
	.string	"bta_sys_hw_evt_stack_enabled"
.LASF154:
	.string	"tBTA_SYS_HW_STATE"
.LASF264:
	.string	"bta_ar_init"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF234:
	.string	"bta_sys_hw_api_disable"
.LASF183:
	.string	"BTA_SYS_HW_API_DISABLE"
.LASF170:
	.string	"tBTA_SYS_CB"
.LASF179:
	.string	"tBTA_SYS_ACTION"
.LASF113:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF41:
	.string	"ESP_LOG_DEBUG"
.LASF266:
	.string	"osi_mutex_lock"
.LASF200:
	.string	"bta_sys_sm_execute"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF130:
	.string	"tBTA_SYS_EIR_CBACK"
.LASF244:
	.string	"appl_trace_level"
.LASF2:
	.string	"signed char"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF1:
	.string	"short unsigned int"
.LASF199:
	.string	"p_tle"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF191:
	.string	"p_sys_hw_msg"
.LASF225:
	.string	"__func__"
.LASF263:
	.string	"BTM_RegisterForDeviceStatusNotif"
.LASF256:
	.string	"hash_map_free"
.LASF194:
	.string	"bta_sys_hw_evt_disabled"
.LASF149:
	.string	"tBTA_SYS_HW_CBACK"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF227:
	.string	"p_target_tle"
.LASF27:
	.string	"UINT8"
.LASF176:
	.string	"data_free_fn"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF177:
	.string	"SemaphoreHandle_t"
.LASF119:
	.string	"BTM_PM_STS_PENDING"
.LASF38:
	.string	"ESP_LOG_ERROR"
.LASF232:
	.string	"bta_id"
.LASF125:
	.string	"BTA_SYS_HW_RT"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
