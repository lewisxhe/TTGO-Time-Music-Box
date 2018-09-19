	.file	"btc_a2dp_source.c"
	.text
.Ltext0:
	.section	.text.time_now_us,"ax",@progbits
	.literal_position
	.literal .LC2, 1000000
	.align	4
	.type	time_now_us, @function
time_now_us:
.LFB40:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_a2dp_source.c"
	.loc 1 458 0
	entry	sp, 48
.LCFI0:
	.loc 1 465 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	gettimeofday
.LVL0:
	.loc 1 466 0
	l32i.n	a3, sp, 0
	srai	a2, a3, 31
	l32r	a8, .LC2
	mull	a2, a2, a8
	mull	a10, a3, a8
	muluh	a8, a3, a8
	add.n	a8, a2, a8
	l32i.n	a2, sp, 4
	srai	a9, a2, 31
	add.n	a2, a10, a2
	movi.n	a3, 1
	bltu	a2, a10, .L2
	movi.n	a3, 0
.L2:
	add.n	a8, a8, a9
	add.n	a3, a3, a8
	.loc 1 468 0
	retw.n
.LFE40:
	.size	time_now_us, .-time_now_us
	.section	.text.log_tstamps_us,"ax",@progbits
	.align	4
	.type	log_tstamps_us, @function
log_tstamps_us:
.LFB41:
	.loc 1 471 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 473 0
	call8	time_now_us
.LVL2:
	retw.n
.LFE41:
	.size	log_tstamps_us, .-log_tstamps_us
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"BT_APPL"
	.align	4
.LC12:
	.string	"\033[0;33mW (%d) %s: %s() - Limiting frames to be sent from %d to %d\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;31mE (%d) %s: ERROR btc_get_num_aa_frame Unsupported transcoding format 0x%x\033[0m\n"
	.section	.text.btc_get_num_aa_frame,"ax",@progbits
	.literal_position
	.literal .LC3, 30000
	.literal .LC4, btc_aa_src_cb
	.literal .LC5, last_frame_us
	.literal .LC6, 500654080
	.literal .LC7, 1172812403
	.literal .LC8, appl_trace_level
	.literal .LC9, __FUNCTION__$10929
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.type	btc_get_num_aa_frame, @function
btc_get_num_aa_frame:
.LFB59:
	.loc 1 1103 0
	entry	sp, 48
.LCFI2:
.LVL3:
	.loc 1 1106 0
	l32r	a2, .LC4
	l8ui	a2, a2, 0
	bnei	a2, 1, .L17
.LBB8:
	.loc 1 1108 0
	l32r	a2, .LC4
	l16si	a3, a2, 52
	.loc 1 1109 0
	l16si	a8, a2, 56
	.loc 1 1108 0
	mull	a8, a3, a8
	.loc 1 1110 0
	l16ui	a3, a2, 44
	.loc 1 1109 0
	mull	a8, a3, a8
	.loc 1 1111 0
	l8ui	a2, a2, 46
	.loc 1 1110 0
	mull	a8, a2, a8
	.loc 1 1111 0
	addi.n	a3, a8, 7
	movgez	a3, a8, a8
	srai	a3, a3, 3
.LVL4:
	.loc 1 1114 0
	call8	time_now_us
.LVL5:
	.loc 1 1115 0
	l32r	a4, .LC5
	l32i.n	a2, a4, 0
	l32i.n	a8, a4, 4
	or	a4, a2, a8
	beqz.n	a4, .L13
	.loc 1 1120 0
	bltu	a8, a11, .L16
	bne	a11, a8, .L9
	bgeu	a2, a10, .L9
.L16:
	.loc 1 1120 0 is_stmt 0 discriminator 1
	sub	a2, a10, a2
	j	.L7
.L9:
	.loc 1 1120 0 discriminator 2
	sub	a2, a10, a2
	l32r	a4, .LC6
	add.n	a2, a2, a4
	j	.L7
.L13:
	.loc 1 1113 0 is_stmt 1
	l32r	a2, .LC3
.L7:
.LVL6:
	.loc 1 1124 0
	l32r	a8, .LC5
	s32i.n	a10, a8, 0
	s32i.n	a11, a8, 4
	.loc 1 1127 0
	l32r	a8, .LC4
	l32i.n	a4, a8, 36
	mull	a4, a2, a4
	.loc 1 1128 0
	l32r	a2, .LC7
.LVL7:
	muluh	a2, a4, a2
	srli	a2, a2, 13
	.loc 1 1126 0
	l32i.n	a4, a8, 32
	add.n	a2, a2, a4
	s32i.n	a2, a8, 32
	.loc 1 1131 0
	quou	a4, a2, a3
	extui	a2, a4, 0, 8
.LVL8:
	.loc 1 1132 0
	movi.n	a8, 0x15
	bgeu	a8, a2, .L11
	.loc 1 1133 0
	l32r	a2, .LC8
	l8ui	a2, a2, 0
	bltui	a2, 2, .L14
	.loc 1 1133 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL9:
	l32r	a11, .LC11
	movi.n	a2, 0x15
	s32i.n	a2, sp, 4
	extui	a4, a4, 0, 8
.LVL10:
	s32i.n	a4, sp, 0
	l32r	a15, .LC9
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 2
	call8	esp_log_write
.LVL11:
	j	.L11
.LVL12:
.L14:
	.loc 1 1135 0 is_stmt 1
	movi.n	a2, 0x15
.LVL13:
.L11:
	.loc 1 1137 0
	mull	a3, a2, a3
.LVL14:
	l32r	a8, .LC4
	l32i.n	a4, a8, 32
	sub	a3, a4, a3
	s32i.n	a3, a8, 32
.LBE8:
	.loc 1 1141 0
	retw.n
.LVL15:
.L17:
	.loc 1 1144 0
	l32r	a2, .LC8
	l8ui	a2, a2, 0
	beqz.n	a2, .L15
	.loc 1 1144 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC11
	l32r	a2, .LC4
	l8ui	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	.loc 1 1146 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.L15:
	.loc 1 1146 0 is_stmt 0
	movi.n	a2, 0
.LVL18:
	.loc 1 1151 0 is_stmt 1
	retw.n
.LFE59:
	.size	btc_get_num_aa_frame, .-btc_get_num_aa_frame
	.section	.text.btc_a2dp_source_feeding_state_reset,"ax",@progbits
	.literal_position
	.literal .LC16, btc_aa_src_cb+20
	.literal .LC17, btc_aa_src_cb
	.literal .LC18, 274877907
	.align	4
	.type	btc_a2dp_source_feeding_state_reset, @function
btc_a2dp_source_feeding_state_reset:
.LFB66:
	.loc 1 1500 0
	entry	sp, 32
.LCFI3:
	.loc 1 1502 0
	l32r	a8, .LC16
	movi.n	a9, 0
	s32i.n	a9, a8, 0
	s32i.n	a9, a8, 4
	s32i.n	a9, a8, 8
	s32i.n	a9, a8, 12
	s32i.n	a9, a8, 16
	.loc 1 1504 0
	l32r	a8, .LC17
	l8ui	a8, a8, 0
	bnei	a8, 1, .L18
	.loc 1 1506 0
	l32r	a11, .LC17
	l16ui	a9, a11, 42
	.loc 1 1507 0
	l8ui	a8, a11, 46
	.loc 1 1506 0
	mull	a9, a9, a8
	.loc 1 1507 0
	addi.n	a8, a9, 7
	movgez	a8, a9, a9
	srai	a8, a8, 3
	.loc 1 1508 0
	l16ui	a9, a11, 44
	.loc 1 1507 0
	mull	a8, a9, a8
	.loc 1 1508 0
	slli	a9, a8, 4
	sub	a8, a9, a8
	slli	a10, a8, 1
	.loc 1 1509 0
	l32r	a9, .LC18
	mulsh	a9, a10, a9
	srai	a9, a9, 6
	srai	a8, a10, 31
	sub	a8, a9, a8
	.loc 1 1505 0
	s32i.n	a8, a11, 36
.L18:
	retw.n
.LFE66:
	.size	btc_a2dp_source_feeding_state_reset, .-btc_a2dp_source_feeding_state_reset
	.section	.text.btc_a2dp_source_flush_q,"ax",@progbits
	.align	4
	.type	btc_a2dp_source_flush_q, @function
btc_a2dp_source_flush_q:
.LFB69:
	.loc 1 1606 0
.LVL19:
	entry	sp, 32
.LCFI4:
	.loc 1 1607 0
	j	.L21
.L22:
	.loc 1 1608 0
	mov.n	a10, a2
	call8	fixed_queue_try_dequeue
.LVL20:
	call8	free
.LVL21:
.L21:
	.loc 1 1607 0
	mov.n	a10, a2
	call8	fixed_queue_is_empty
.LVL22:
	beqz.n	a10, .L22
	.loc 1 1610 0
	retw.n
.LFE69:
	.size	btc_a2dp_source_flush_q, .-btc_a2dp_source_flush_q
	.section	.text.btc_a2dp_source_aa_tx_flush,"ax",@progbits
	.literal_position
	.literal .LC19, btc_aa_src_cb
	.literal .LC20, btc_aa_src_data_cb
	.align	4
	.type	btc_a2dp_source_aa_tx_flush, @function
btc_a2dp_source_aa_tx_flush:
.LFB58:
	.loc 1 1081 0
	entry	sp, 32
.LCFI5:
	.loc 1 1085 0
	l32r	a8, .LC19
	movi.n	a9, 0
	s32i.n	a9, a8, 32
	.loc 1 1086 0
	s32i.n	a9, a8, 28
	.loc 1 1088 0
	l32i.n	a10, a8, 12
	call8	btc_a2dp_source_flush_q
.LVL23:
.LBB9:
.LBB10:
	.loc 1 199 0
	l32r	a8, .LC20
	l32i.n	a8, a8, 0
	beqz.n	a8, .L23
	.loc 1 200 0
	movi.n	a11, -1
	movi.n	a10, 0
	callx8	a8
.LVL24:
.L23:
	retw.n
.LBE10:
.LBE9:
.LFE58:
	.size	btc_a2dp_source_aa_tx_flush, .-btc_a2dp_source_aa_tx_flush
	.section	.text.btc_a2dp_source_thread_init,"ax",@progbits
	.literal_position
	.literal .LC21, btc_aa_src_cb
	.literal .LC22, btc_a2dp_source_state
	.align	4
	.type	btc_a2dp_source_thread_init, @function
btc_a2dp_source_thread_init:
.LFB70:
	.loc 1 1613 0
.LVL25:
	entry	sp, 32
.LCFI6:
	.loc 1 1615 0
	l32r	a2, .LC21
.LVL26:
	movi	a12, 0x6c8
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL27:
	.loc 1 1617 0
	movi.n	a9, 1
	l32r	a8, .LC22
	s32i.n	a9, a8, 0
	.loc 1 1619 0
	movi	a10, 0xfe
	call8	fixed_queue_new
.LVL28:
	s32i.n	a10, a2, 12
	.loc 1 1621 0
	call8	btc_a2dp_control_init
.LVL29:
	retw.n
.LFE70:
	.size	btc_a2dp_source_thread_init, .-btc_a2dp_source_thread_init
	.section	.text.btc_a2dp_source_thread_cleanup,"ax",@progbits
	.literal_position
	.literal .LC23, btc_a2dp_source_state
	.literal .LC24, osi_free_func
	.literal .LC25, btc_aa_src_cb
	.literal .LC26, btc_a2dp_source_future
	.align	4
	.type	btc_a2dp_source_thread_cleanup, @function
btc_a2dp_source_thread_cleanup:
.LFB71:
	.loc 1 1625 0
.LVL30:
	entry	sp, 32
.LCFI7:
	.loc 1 1626 0
	movi.n	a10, 0
	call8	btc_a2dp_control_set_datachnl_stat
.LVL31:
	.loc 1 1628 0
	movi.n	a2, 0
.LVL32:
	l32r	a8, .LC23
	s32i.n	a2, a8, 0
	.loc 1 1630 0
	call8	btc_a2dp_control_cleanup
.LVL33:
	.loc 1 1632 0
	l32r	a11, .LC24
	l32r	a8, .LC25
	l32i.n	a10, a8, 12
	call8	fixed_queue_free
.LVL34:
	.loc 1 1634 0
	mov.n	a11, a2
	l32r	a2, .LC26
	l32i.n	a10, a2, 0
	call8	future_ready
.LVL35:
	retw.n
.LFE71:
	.size	btc_a2dp_source_thread_cleanup, .-btc_a2dp_source_thread_cleanup
	.section	.rodata.str1.4
	.align	4
.LC30:
	.string	"btc_aa_src_cb.media_alarm == NULL"
	.align	4
.LC33:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_a2dp_source.c"
	.align	4
.LC36:
	.string	"aaTx"
	.align	4
.LC39:
	.string	"BT_BTC"
	.align	4
.LC41:
	.string	"\033[0;31mE (%d) %s: %s unable to allocate media alarm.\033[0m\n"
	.section	.text.btc_a2dp_source_aa_start_tx,"ax",@progbits
	.literal_position
	.literal .LC27, btc_aa_src_cb
	.literal .LC28, last_frame_us
	.literal .LC29, 0, 0
	.literal .LC31, .LC30
	.literal .LC32, __func__$10994
	.literal .LC34, .LC33
	.literal .LC35, btc_a2dp_source_alarm_cb
	.literal .LC37, .LC36
	.literal .LC38, 30, 0
	.literal .LC40, .LC39
	.literal .LC42, .LC41
	.align	4
	.type	btc_a2dp_source_aa_start_tx, @function
btc_a2dp_source_aa_start_tx:
.LFB67:
	.loc 1 1526 0
	entry	sp, 32
.LCFI8:
	.loc 1 1530 0
	l32r	a2, .LC27
	movi.n	a8, 1
	s8i	a8, a2, 2
	.loc 1 1531 0
	l32r	a10, .LC29
	l32r	a11, .LC29+4
	l32r	a8, .LC28
	s32i.n	a10, a8, 0
	s32i.n	a11, a8, 4
	.loc 1 1534 0
	call8	btc_a2dp_source_feeding_state_reset
.LVL36:
	.loc 1 1538 0
	addmi	a2, a2, 0x600
	l32i	a2, a2, 196
	.loc 1 1538 0
	beqz.n	a2, .L28
	.loc 1 1538 0 is_stmt 0 discriminator 1
	l32r	a13, .LC31
	l32r	a12, .LC32
	movi	a11, 0x602
	l32r	a10, .LC34
	call8	__assert_func
.LVL37:
.L28:
	.loc 1 1540 0 is_stmt 1
	l32r	a14, .LC38
	l32r	a15, .LC38+4
	movi.n	a12, 0
	l32r	a11, .LC35
	l32r	a10, .LC37
	call8	osi_alarm_new
.LVL38:
	l32r	a2, .LC27
	addmi	a2, a2, 0x600
	s32i	a10, a2, 196
	.loc 1 1542 0
	bnez.n	a10, .L29
	.loc 1 1543 0 discriminator 1
	call8	esp_log_timestamp
.LVL39:
	l32r	a11, .LC40
	l32r	a15, .LC32
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC42
	movi.n	a10, 1
	call8	esp_log_write
.LVL40:
	.loc 1 1544 0 discriminator 1
	retw.n
.L29:
	.loc 1 1547 0
	l32r	a12, .LC38
	l32r	a13, .LC38+4
	call8	osi_alarm_set_periodic
.LVL41:
	retw.n
.LFE67:
	.size	btc_a2dp_source_aa_start_tx, .-btc_a2dp_source_aa_start_tx
	.section	.text.btc_a2dp_source_data_post,"ax",@progbits
	.literal_position
	.literal .LC43, btc_aa_src_data_queue
	.align	4
	.type	btc_a2dp_source_data_post, @function
btc_a2dp_source_data_post:
.LFB39:
	.loc 1 451 0
.LVL42:
	entry	sp, 48
.LCFI9:
	s32i.n	a2, sp, 0
	.loc 1 452 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, sp
	l32r	a8, .LC43
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL43:
	retw.n
.LFE39:
	.size	btc_a2dp_source_data_post, .-btc_a2dp_source_data_post
	.section	.text.btc_a2dp_source_alarm_cb,"ax",@progbits
	.align	4
	.type	btc_a2dp_source_alarm_cb, @function
btc_a2dp_source_alarm_cb:
.LFB65:
	.loc 1 1486 0
.LVL44:
	entry	sp, 32
.LCFI10:
	.loc 1 1487 0
	movi.n	a10, 1
	call8	btc_a2dp_source_data_post
.LVL45:
	retw.n
.LFE65:
	.size	btc_a2dp_source_alarm_cb, .-btc_a2dp_source_alarm_cb
	.section	.rodata.str1.4
	.align	4
.LC47:
	.string	"\033[0;33mW (%d) %s: btc_aa_src_ctrl_queue failed, sig 0x%x\n\033[0m\n"
	.section	.text.btc_a2dp_source_ctrl_post,"ax",@progbits
	.literal_position
	.literal .LC44, btc_aa_src_ctrl_queue
	.literal .LC45, appl_trace_level
	.literal .LC46, .LC10
	.literal .LC48, .LC47
	.align	4
	.type	btc_a2dp_source_ctrl_post, @function
btc_a2dp_source_ctrl_post:
.LFB31:
	.loc 1 232 0
.LVL46:
	entry	sp, 48
.LCFI11:
	.loc 1 233 0
	movi.n	a10, 0x10
	call8	malloc
.LVL47:
	s32i.n	a10, sp, 0
	.loc 1 234 0
	beqz.n	a10, .L33
	.loc 1 238 0
	s32i.n	a2, a10, 0
	.loc 1 239 0
	l32i.n	a8, sp, 0
	s32i.n	a3, a8, 4
	.loc 1 241 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
	l32r	a3, .LC44
.LVL48:
	l32i.n	a10, a3, 0
	call8	xQueueGenericSend
.LVL49:
	beqi	a10, 1, .L33
	.loc 1 242 0
	l32r	a3, .LC45
	l8ui	a3, a3, 0
	bltui	a3, 2, .L33
	.loc 1 242 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL50:
	l32r	a11, .LC46
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC48
	movi.n	a10, 2
	call8	esp_log_write
.LVL51:
.L33:
	retw.n
.LFE31:
	.size	btc_a2dp_source_ctrl_post, .-btc_a2dp_source_ctrl_post
	.section	.text.btc_a2dp_source_aa_stop_tx,"ax",@progbits
	.literal_position
	.literal .LC49, btc_aa_src_cb
	.literal .LC50, last_frame_us
	.literal .LC51, 0, 0
	.align	4
	.type	btc_a2dp_source_aa_stop_tx, @function
btc_a2dp_source_aa_stop_tx:
.LFB68:
	.loc 1 1560 0 is_stmt 1
	entry	sp, 32
.LCFI12:
	.loc 1 1563 0
	l32r	a8, .LC49
	l8ui	a2, a8, 2
.LVL52:
	.loc 1 1566 0
	addmi	a8, a8, 0x600
	l32i	a10, a8, 196
	beqz.n	a10, .L38
	.loc 1 1567 0
	call8	osi_alarm_cancel
.LVL53:
	.loc 1 1568 0
	l32r	a8, .LC49
	addmi	a8, a8, 0x600
	l32i	a10, a8, 196
	call8	osi_alarm_free
.LVL54:
.L38:
	.loc 1 1570 0
	l32r	a8, .LC49
	addmi	a10, a8, 0x600
	movi.n	a9, 0
	s32i	a9, a10, 196
	.loc 1 1571 0
	s8i	a9, a8, 2
	.loc 1 1584 0
	beq	a2, a9, .L39
	.loc 1 1585 0
	mov.n	a10, a9
	call8	btc_a2dp_control_command_ack
.LVL55:
.L39:
	.loc 1 1589 0
	movi.n	a8, 0
	l32r	a2, .LC49
.LVL56:
	s8i	a8, a2, 1
	.loc 1 1590 0
	l32r	a8, .LC51
	l32r	a9, .LC51+4
	l32r	a2, .LC50
	s32i.n	a8, a2, 0
	s32i.n	a9, a2, 4
	.loc 1 1593 0
	call8	btc_a2dp_source_feeding_state_reset
.LVL57:
	retw.n
.LFE68:
	.size	btc_a2dp_source_aa_stop_tx, .-btc_a2dp_source_aa_stop_tx
	.section	.text.btc_a2dp_source_pcm2sbc_init,"ax",@progbits
	.literal_position
	.literal .LC52, 22050
	.literal .LC53, 11025
	.literal .LC54, 8000
	.literal .LC55, 12000
	.literal .LC56, 16000
	.literal .LC57, 32000
	.literal .LC58, 24000
	.literal .LC59, 44100
	.literal .LC60, 48000
	.literal .LC61, btc_aa_src_cb
	.literal .LC62, btc_aa_src_cb+48
	.align	4
	.type	btc_a2dp_source_pcm2sbc_init, @function
btc_a2dp_source_pcm2sbc_init:
.LFB56:
	.loc 1 977 0
.LVL58:
	entry	sp, 32
.LCFI13:
.LVL59:
	.loc 1 986 0
	l16ui	a8, a2, 12
	l32r	a9, .LC52
	beq	a8, a9, .L42
	bltu	a9, a8, .L43
	l32r	a9, .LC53
	beq	a8, a9, .L42
	bltu	a9, a8, .L44
	l32r	a9, .LC54
	bne	a8, a9, .L49
	j	.L45
.L44:
	l32r	a9, .LC55
	beq	a8, a9, .L45
	l32r	a9, .LC56
	bne	a8, a9, .L49
	j	.L45
.L43:
	l32r	a9, .LC57
	beq	a8, a9, .L45
	bltu	a9, a8, .L46
	l32r	a9, .LC58
	bne	a8, a9, .L49
	j	.L45
.L46:
	l32r	a9, .LC59
	beq	a8, a9, .L42
	l32r	a9, .LC60
	bne	a8, a9, .L49
.L45:
	.loc 1 994 0
	l32r	a8, .LC61
	l16si	a8, a8, 48
	beqi	a8, 3, .L50
	.loc 1 997 0
	movi.n	a9, 3
	l32r	a8, .LC61
	s16i	a9, a8, 48
.LVL60:
	.loc 1 998 0
	movi.n	a8, 1
	j	.L41
.LVL61:
.L42:
	.loc 1 1006 0
	l32r	a8, .LC61
	l16si	a8, a8, 48
	beqi	a8, 2, .L51
	.loc 1 1009 0
	movi.n	a9, 2
	l32r	a8, .LC61
	s16i	a9, a8, 48
.LVL62:
	.loc 1 1010 0
	movi.n	a8, 1
	j	.L41
.LVL63:
.L49:
	.loc 1 978 0
	movi.n	a8, 0
	j	.L41
.L50:
	movi.n	a8, 0
	j	.L41
.L51:
	movi.n	a8, 0
.LVL64:
.L41:
	.loc 1 1019 0
	l32r	a9, .LC61
	l16si	a9, a9, 50
	bnez.n	a9, .L47
	.loc 1 1021 0
	movi.n	a9, 3
	l32r	a8, .LC61
.LVL65:
	s16i	a9, a8, 50
.LVL66:
	.loc 1 1022 0
	movi.n	a8, 1
.LVL67:
.L47:
	.loc 1 1025 0
	beqz.n	a8, .L40
	.loc 1 1033 0
	l32r	a10, .LC62
	call8	SBC_Encoder_Init
.LVL68:
.L40:
	retw.n
.LFE56:
	.size	btc_a2dp_source_pcm2sbc_init, .-btc_a2dp_source_pcm2sbc_init
	.section	.rodata.str1.4
	.align	4
.LC66:
	.string	"\033[0;31mE (%d) %s: unknown feeding format %d\033[0m\n"
	.section	.text.btc_a2dp_source_audio_feeding_init,"ax",@progbits
	.literal_position
	.literal .LC63, btc_aa_src_cb
	.literal .LC64, appl_trace_level
	.literal .LC65, .LC10
	.literal .LC67, .LC66
	.align	4
	.type	btc_a2dp_source_audio_feeding_init, @function
btc_a2dp_source_audio_feeding_init:
.LFB57:
	.loc 1 1049 0
.LVL69:
	entry	sp, 32
.LCFI14:
.LVL70:
	.loc 1 1055 0
	l8ui	a8, a2, 8
	l32r	a10, .LC63
	s8i	a8, a10, 16
	.loc 1 1056 0
	addi	a8, a10, 40
	l16ui	a12, a2, 10
	l16ui	a11, a2, 12
	s16i	a12, a10, 40
	l16ui	a10, a2, 14
	s16i	a11, a8, 2
	l16ui	a9, a2, 16
	s16i	a10, a8, 4
	s16i	a9, a8, 6
	.loc 1 1059 0
	l8ui	a8, a2, 10
	bnei	a8, 5, .L56
	.loc 1 1061 0
	movi.n	a9, 1
	l32r	a8, .LC63
	s8i	a9, a8, 0
	.loc 1 1062 0
	mov.n	a10, a2
	call8	btc_a2dp_source_pcm2sbc_init
.LVL71:
	.loc 1 1063 0
	retw.n
.L56:
	.loc 1 1066 0
	l32r	a8, .LC64
	l8ui	a8, a8, 0
	beqz.n	a8, .L52
	.loc 1 1066 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL72:
	l32r	a11, .LC65
	l8ui	a15, a2, 10
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC67
	movi.n	a10, 1
	call8	esp_log_write
.LVL73:
.L52:
	retw.n
.LFE57:
	.size	btc_a2dp_source_audio_feeding_init, .-btc_a2dp_source_audio_feeding_init
	.section	.text.btc_a2dp_source_get_sbc_rate,"ax",@progbits
	.align	4
	.type	btc_a2dp_source_get_sbc_rate, @function
btc_a2dp_source_get_sbc_rate:
.LFB51:
	.loc 1 684 0 is_stmt 1
	entry	sp, 32
.LCFI15:
.LVL74:
	.loc 1 688 0
	call8	btc_av_is_peer_edr
.LVL75:
	beqz.n	a10, .L59
	.loc 1 685 0
	movi	a2, 0x148
	retw.n
.L59:
	.loc 1 689 0
	movi	a2, 0xe5
.LVL76:
	.loc 1 693 0
	retw.n
.LFE51:
	.size	btc_a2dp_source_get_sbc_rate, .-btc_a2dp_source_get_sbc_rate
	.section	.text.btc_a2dp_source_enc_init,"ax",@progbits
	.literal_position
	.literal .LC68, btc_aa_src_cb
	.literal .LC69, 4080
	.literal .LC70, btc_aa_src_cb+48
	.align	4
	.type	btc_a2dp_source_enc_init, @function
btc_a2dp_source_enc_init:
.LFB54:
	.loc 1 789 0
.LVL77:
	entry	sp, 32
.LCFI16:
.LVL78:
	.loc 1 794 0
	l32r	a3, .LC68
	movi.n	a8, 0
	s32i.n	a8, a3, 8
	.loc 1 797 0
	l8ui	a8, a2, 10
	s16i	a8, a3, 50
	.loc 1 798 0
	l8ui	a8, a2, 11
	s16i	a8, a3, 52
	.loc 1 799 0
	l8ui	a8, a2, 12
	s16i	a8, a3, 56
	.loc 1 800 0
	l8ui	a8, a2, 13
	s16i	a8, a3, 58
	.loc 1 801 0
	l16ui	a8, a2, 8
	s16i	a8, a3, 48
	.loc 1 803 0
	call8	btc_a2dp_source_get_sbc_rate
.LVL79:
	s16i	a10, a3, 62
	.loc 1 806 0
	movi.n	a8, 1
	s8i	a8, a3, 0
	.loc 1 809 0
	l16ui	a8, a2, 14
	.loc 1 807 0
	l32r	a2, .LC69
.LVL80:
	minu	a2, a8, a2
	s16i	a2, a3, 4
	.loc 1 820 0
	l32r	a10, .LC70
	call8	SBC_Encoder_Init
.LVL81:
	retw.n
.LFE54:
	.size	btc_a2dp_source_enc_init, .-btc_a2dp_source_enc_init
	.section	.rodata.str1.4
	.align	4
.LC80:
	.string	"\033[0;31mE (%d) %s: %s - Avoiding division by zero...\033[0m\n"
	.align	4
.LC82:
	.string	"\033[0;31mE (%d) %s: %s - block=%d, subBands=%d, channels=%d\033[0m\n"
	.align	4
.LC84:
	.string	"\033[0;33mW (%d) %s: %s computed bitpool too small (%d)\033[0m\n"
	.align	4
.LC86:
	.string	"\033[0;31mE (%d) %s: %s could not find bitpool in range\033[0m\n"
	.section	.text.btc_a2dp_source_enc_update,"ax",@progbits
	.literal_position
	.literal .LC71, 16000
	.literal .LC72, 32000
	.literal .LC73, 44100
	.literal .LC74, 48000
	.literal .LC75, btc_aa_src_cb
	.literal .LC76, 4080
	.literal .LC77, appl_trace_level
	.literal .LC78, __FUNCTION__$10889
	.literal .LC79, .LC10
	.literal .LC81, .LC80
	.literal .LC83, .LC82
	.literal .LC85, .LC84
	.literal .LC87, .LC86
	.literal .LC88, btc_aa_src_cb+48
	.align	4
	.type	btc_a2dp_source_enc_update, @function
btc_a2dp_source_enc_update:
.LFB55:
	.loc 1 836 0
.LVL82:
	entry	sp, 48
.LCFI17:
.LVL83:
	.loc 1 854 0
	l16ui	a5, a2, 8
	.loc 1 851 0
	l32r	a3, .LC75
	l32r	a4, .LC76
	minu	a4, a5, a4
	s16i	a4, a3, 4
	.loc 1 857 0
	call8	btc_a2dp_source_get_sbc_rate
.LVL84:
	s16i	a10, a3, 62
	.loc 1 859 0
	l16si	a3, a3, 48
	beqz.n	a3, .L76
	.loc 1 861 0
	beqi	a3, 1, .L77
	.loc 1 863 0
	bnei	a3, 2, .L78
	.loc 1 864 0
	l32r	a5, .LC73
	j	.L62
.L76:
	.loc 1 860 0
	l32r	a5, .LC71
	j	.L62
.L77:
	.loc 1 862 0
	l32r	a5, .LC72
	j	.L62
.L78:
	.loc 1 866 0
	l32r	a5, .LC74
.L62:
	movi.n	a4, 0
	mov.n	a3, a4
.LVL85:
.L75:
	.loc 1 870 0
	l32r	a8, .LC75
	l16si	a10, a8, 56
	beqz.n	a10, .L63
	.loc 1 870 0 is_stmt 0 discriminator 1
	l16si	a8, a8, 52
	beqz.n	a8, .L63
	.loc 1 871 0 is_stmt 1
	l32r	a9, .LC75
	l16si	a14, a9, 54
	bnez.n	a14, .L64
.L63:
	.loc 1 872 0
	l32r	a2, .LC77
.LVL86:
	l8ui	a2, a2, 0
	beqz.n	a2, .L65
	.loc 1 872 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL87:
	l32r	a11, .LC79
	l32r	a15, .LC78
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC81
	movi.n	a10, 1
	call8	esp_log_write
.LVL88:
.L65:
	.loc 1 873 0 is_stmt 1
	l32r	a2, .LC77
	l8ui	a2, a2, 0
	beqz.n	a2, .L66
	.loc 1 873 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL89:
	l32r	a2, .LC75
	l16si	a4, a2, 56
.LVL90:
	l16si	a5, a2, 52
.LVL91:
	l16si	a2, a2, 54
	l32r	a11, .LC79
	s32i.n	a2, sp, 8
	s32i.n	a5, sp, 4
	s32i.n	a4, sp, 0
	l32r	a15, .LC78
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC83
	movi.n	a10, 1
	call8	esp_log_write
.LVL92:
	j	.L66
.LVL93:
.L64:
	.loc 1 879 0 is_stmt 1
	l32r	a3, .LC75
.LVL94:
	l16ui	a9, a3, 50
	sext	a12, a9, 15
	addi	a9, a9, -2
	extui	a9, a9, 0, 16
	bgeui	a9, 2, .L67
	.loc 1 881 0
	l16ui	a13, a3, 62
	mull	a6, a13, a8
	.loc 1 882 0
	slli	a3, a6, 5
	sub	a3, a3, a6
	addx4	a3, a3, a6
	slli	a11, a3, 3
	quos	a11, a11, a5
	.loc 1 883 0
	slli	a3, a8, 2
	mull	a3, a14, a3
	addi	a6, a3, 32
	.loc 1 885 0
	addi	a12, a12, -2
	mull	a15, a8, a12
	add.n	a6, a6, a15
	.loc 1 887 0
	quos	a6, a6, a10
	.loc 1 881 0
	sub	a11, a11, a6
	extui	a11, a11, 0, 16
	sext	a12, a11, 15
.LVL95:
	.loc 1 890 0
	addi.n	a9, a3, 7
	movgez	a9, a3, a3
	srai	a14, a9, 3
	.loc 1 893 0
	mull	a3, a12, a10
	add.n	a15, a15, a3
	mov.n	a9, a15
	addi.n	a3, a15, 7
	movltz	a9, a3, a15
	srai	a9, a9, 3
	.loc 1 889 0
	add.n	a9, a14, a9
	addi.n	a9, a9, 4
	sext	a9, a9, 15
.LVL96:
	.loc 1 895 0
	slli	a9, a9, 3
.LVL97:
	mull	a9, a5, a9
	.loc 1 896 0
	mull	a3, a8, a10
.LVL98:
	.loc 1 897 0
	slli	a14, a3, 5
.LVL99:
	sub	a14, a14, a3
	addx4	a3, a14, a3
	slli	a6, a3, 3
	.loc 1 896 0
	quos	a9, a9, a6
	.loc 1 895 0
	sext	a9, a9, 15
.LVL100:
	.loc 1 899 0
	bge	a13, a9, .L68
	.loc 1 900 0
	addi.n	a3, a11, -1
	sext	a12, a3, 15
.LVL101:
.L68:
	.loc 1 903 0
	bnei	a8, 8, .L69
	.loc 1 904 0
	movi	a3, 0xff
	min	a3, a12, a3
.LVL102:
	j	.L70
.LVL103:
.L69:
	.loc 1 906 0
	movi	a3, 0x80
	min	a3, a12, a3
.LVL104:
	j	.L70
.LVL105:
.L67:
	.loc 1 910 0
	l32r	a12, .LC75
	l16ui	a3, a12, 62
	.loc 1 909 0
	mull	a9, a3, a8
	.loc 1 910 0
	slli	a3, a9, 5
	sub	a3, a3, a9
	addx4	a3, a3, a9
	slli	a11, a3, 3
	.loc 1 911 0
	mull	a3, a5, a14
	quos	a11, a11, a3
	.loc 1 912 0
	movi.n	a9, 0x20
	quos	a9, a9, a14
	addx4	a9, a8, a9
	.loc 1 914 0
	quos	a3, a9, a10
	.loc 1 909 0
	sub	a3, a11, a3
	sext	a3, a3, 15
.LVL106:
	.loc 1 918 0
	slli	a8, a8, 4
	min	a8, a3, a8
	.loc 1 916 0
	s16i	a8, a12, 60
.LVL107:
.L70:
	.loc 1 921 0
	bgez	a3, .L71
	.loc 1 922 0
	movi.n	a3, 0
.LVL108:
.L71:
	.loc 1 928 0
	mov.n	a6, a3
	l8ui	a8, a2, 10
	bge	a8, a3, .L72
	.loc 1 931 0
	l32r	a6, .LC75
	l16ui	a8, a6, 62
	addi	a8, a8, -5
	s16i	a8, a6, 62
	.loc 1 933 0
	movi.n	a8, 1
	or	a4, a4, a8
.LVL109:
	extui	a4, a4, 0, 8
.LVL110:
	j	.L73
.L72:
	.loc 1 934 0
	l8ui	a8, a2, 11
	bge	a3, a8, .L66
.LBB11:
	.loc 1 935 0
	l32r	a8, .LC77
	l8ui	a8, a8, 0
	bltui	a8, 2, .L74
	.loc 1 935 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL111:
	l32r	a11, .LC79
	s32i.n	a3, sp, 0
	l32r	a15, .LC78
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC85
	movi.n	a10, 2
	call8	esp_log_write
.LVL112:
.L74:
	.loc 1 938 0 is_stmt 1
	l32r	a8, .LC75
	l16ui	a6, a8, 62
.LVL113:
	.loc 1 939 0
	addi.n	a9, a6, 5
	extui	a9, a9, 0, 16
	s16i	a9, a8, 62
.LVL114:
	.loc 1 941 0
	movi.n	a8, 2
	or	a8, a4, a8
	extui	a8, a8, 0, 8
.LVL115:
	.loc 1 943 0
	bgeu	a9, a6, .L80
	.loc 1 944 0
	movi.n	a6, 3
.LVL116:
	or	a4, a4, a6
	extui	a4, a4, 0, 8
.LVL117:
	j	.L73
.LVL118:
.L80:
	.loc 1 941 0
	mov.n	a4, a8
.LVL119:
.L73:
.LBE11:
	.loc 1 950 0
	bnei	a4, 3, .L75
	.loc 1 951 0
	l32r	a2, .LC77
.LVL120:
	l8ui	a2, a2, 0
	beqz.n	a2, .L66
	.loc 1 951 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL121:
	l32r	a11, .LC79
	l32r	a15, .LC78
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC87
	movi.n	a10, 1
	call8	esp_log_write
.LVL122:
.L66:
	.loc 1 957 0 is_stmt 1
	l32r	a2, .LC75
	s16i	a3, a2, 60
	.loc 1 963 0
	l32r	a10, .LC88
.LVL123:
	call8	SBC_Encoder_Init
.LVL124:
	retw.n
.LFE55:
	.size	btc_a2dp_source_enc_update, .-btc_a2dp_source_enc_update
	.section	.rodata.str1.4
	.align	4
.LC92:
	.string	"\033[0;33mW (%d) %s: media task unhandled evt: 0x%x\n\033[0m\n"
	.section	.text.btc_a2dp_source_ctrl_handler,"ax",@progbits
	.literal_position
	.literal .LC89, .L85
	.literal .LC90, appl_trace_level
	.literal .LC91, .LC10
	.literal .LC93, .LC92
	.align	4
	.type	btc_a2dp_source_ctrl_handler, @function
btc_a2dp_source_ctrl_handler:
.LFB32:
	.loc 1 247 0
.LVL125:
	entry	sp, 32
.LCFI18:
	.loc 1 248 0
	beqz.n	a2, .L81
	.loc 1 251 0
	l32i.n	a8, a2, 0
	bgeui	a8, 8, .L83
	l32r	a9, .LC89
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.btc_a2dp_source_ctrl_handler,"a",@progbits
	.align	4
	.align	4
.L85:
	.word	.L84
	.word	.L86
	.word	.L87
	.word	.L88
	.word	.L89
	.word	.L90
	.word	.L91
	.word	.L92
	.section	.text.btc_a2dp_source_ctrl_handler
.L84:
	.loc 1 253 0
	movi.n	a10, 0
	call8	btc_a2dp_source_thread_init
.LVL126:
	.loc 1 254 0
	j	.L93
.L86:
	.loc 1 256 0
	movi.n	a10, 0
	call8	btc_a2dp_source_thread_cleanup
.LVL127:
	.loc 1 257 0
	j	.L93
.L87:
	.loc 1 259 0
	call8	btc_a2dp_source_aa_start_tx
.LVL128:
	.loc 1 260 0
	j	.L93
.L88:
	.loc 1 262 0
	call8	btc_a2dp_source_aa_stop_tx
.LVL129:
	.loc 1 263 0
	j	.L93
.L89:
	.loc 1 265 0
	l32i.n	a10, a2, 4
	call8	btc_a2dp_source_enc_init
.LVL130:
	.loc 1 266 0
	j	.L93
.L90:
	.loc 1 268 0
	l32i.n	a10, a2, 4
	call8	btc_a2dp_source_enc_update
.LVL131:
	.loc 1 269 0
	j	.L93
.L92:
	.loc 1 271 0
	l32i.n	a10, a2, 4
	call8	btc_a2dp_source_audio_feeding_init
.LVL132:
	.loc 1 272 0
	j	.L93
.L91:
	.loc 1 274 0
	call8	btc_a2dp_source_aa_tx_flush
.LVL133:
	.loc 1 275 0
	j	.L93
.L83:
	.loc 1 277 0
	l32r	a8, .LC90
	l8ui	a8, a8, 0
	bltui	a8, 2, .L93
	.loc 1 277 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL134:
	l32r	a11, .LC91
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC93
	movi.n	a10, 2
	call8	esp_log_write
.LVL135:
.L93:
	.loc 1 279 0 is_stmt 1
	l32i.n	a10, a2, 4
	beqz.n	a10, .L81
	.loc 1 280 0
	call8	free
.LVL136:
.L81:
	retw.n
.LFE32:
	.size	btc_a2dp_source_ctrl_handler, .-btc_a2dp_source_ctrl_handler
	.section	.text.btc_a2dp_src_reg_data_cb,"ax",@progbits
	.literal_position
	.literal .LC94, btc_aa_src_data_cb
	.align	4
	.global	btc_a2dp_src_reg_data_cb
	.type	btc_a2dp_src_reg_data_cb, @function
btc_a2dp_src_reg_data_cb:
.LFB26:
	.loc 1 191 0
.LVL137:
	entry	sp, 32
.LCFI19:
	.loc 1 193 0
	l32r	a8, .LC94
	s32i.n	a2, a8, 0
	retw.n
.LFE26:
	.size	btc_a2dp_src_reg_data_cb, .-btc_a2dp_src_reg_data_cb
	.section	.text.btc_a2dp_source_is_streaming,"ax",@progbits
	.literal_position
	.literal .LC95, btc_aa_src_cb
	.align	4
	.global	btc_a2dp_source_is_streaming
	.type	btc_a2dp_source_is_streaming, @function
btc_a2dp_source_is_streaming:
.LFB29:
	.loc 1 222 0
	entry	sp, 32
.LCFI20:
	.loc 1 224 0
	l32r	a8, .LC95
	l8ui	a2, a8, 2
	retw.n
.LFE29:
	.size	btc_a2dp_source_is_streaming, .-btc_a2dp_source_is_streaming
	.section	.text.btc_a2dp_source_is_task_shutting_down,"ax",@progbits
	.literal_position
	.literal .LC96, btc_a2dp_source_state
	.align	4
	.global	btc_a2dp_source_is_task_shutting_down
	.type	btc_a2dp_source_is_task_shutting_down, @function
btc_a2dp_source_is_task_shutting_down:
.LFB30:
	.loc 1 227 0
	entry	sp, 32
.LCFI21:
	.loc 1 228 0
	l32r	a2, .LC96
	l32i.n	a2, a2, 0
	addi	a8, a2, -2
	movi.n	a2, 0
	movi.n	a9, 1
	moveqz	a2, a9, a8
	.loc 1 229 0
	retw.n
.LFE30:
	.size	btc_a2dp_source_is_task_shutting_down, .-btc_a2dp_source_is_task_shutting_down
	.section	.rodata.str1.4
	.align	4
.LC100:
	.string	"\033[0;31mE (%d) %s: warning : media task already running\033[0m\n"
	.align	4
.LC105:
	.string	"%s:%d (%s)- assert failed!\n"
	.align	4
.LC111:
	.string	"BtA2dSourceT"
	.align	4
.LC115:
	.string	"\033[0;31mE (%d) %s: %s unable to start up media thread\n\033[0m\n"
	.section	.text.btc_a2dp_source_startup,"ax",@progbits
	.literal_position
	.literal .LC97, btc_a2dp_source_state
	.literal .LC98, appl_trace_level
	.literal .LC99, .LC10
	.literal .LC101, .LC100
	.literal .LC102, btc_aa_src_queue_set
	.literal .LC103, __FUNCTION__$10792
	.literal .LC104, .LC33
	.literal .LC106, .LC105
	.literal .LC107, btc_aa_src_data_queue
	.literal .LC108, btc_aa_src_ctrl_queue
	.literal .LC109, btc_aa_src_task_hdl
	.literal .LC110, 2560
	.literal .LC112, .LC111
	.literal .LC113, btc_a2dp_source_task_handler
	.literal .LC114, __func__$10794
	.literal .LC116, .LC115
	.align	4
	.global	btc_a2dp_source_startup
	.type	btc_a2dp_source_startup, @function
btc_a2dp_source_startup:
.LFB34:
	.loc 1 305 0
	entry	sp, 48
.LCFI22:
	.loc 1 306 0
	l32r	a2, .LC97
	l32i.n	a2, a2, 0
	beqz.n	a2, .L98
	.loc 1 307 0
	l32r	a2, .LC98
	l8ui	a2, a2, 0
	beqz.n	a2, .L108
	.loc 1 307 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL138:
	l32r	a11, .LC99
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC101
	movi.n	a10, 1
	call8	esp_log_write
.LVL139:
	.loc 1 308 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.L98:
	.loc 1 313 0
	movi.n	a10, 8
	call8	xQueueCreateSet
.LVL140:
	l32r	a2, .LC102
	s32i.n	a10, a2, 0
	.loc 1 314 0
	bnez.n	a10, .L100
	.loc 1 314 0 is_stmt 0 discriminator 1
	l32r	a13, .LC103
	movi	a12, 0x13a
	l32r	a11, .LC104
	l32r	a10, .LC106
	call8	ets_printf
.LVL141:
	call8	abort
.LVL142:
.L100:
	.loc 1 315 0 is_stmt 1
	movi.n	a12, 0
	movi.n	a11, 4
	movi.n	a10, 3
	call8	xQueueGenericCreate
.LVL143:
	l32r	a2, .LC107
	s32i.n	a10, a2, 0
	.loc 1 316 0
	bnez.n	a10, .L101
	.loc 1 316 0 is_stmt 0 discriminator 1
	l32r	a13, .LC103
	movi	a12, 0x13c
	l32r	a11, .LC104
	l32r	a10, .LC106
	call8	ets_printf
.LVL144:
	call8	abort
.LVL145:
.L101:
	.loc 1 317 0 is_stmt 1
	l32r	a2, .LC102
	l32i.n	a11, a2, 0
	call8	xQueueAddToSet
.LVL146:
	.loc 1 319 0
	movi.n	a12, 0
	movi.n	a11, 4
	movi.n	a10, 5
	call8	xQueueGenericCreate
.LVL147:
	l32r	a2, .LC108
	s32i.n	a10, a2, 0
	.loc 1 320 0
	bnez.n	a10, .L102
	.loc 1 320 0 is_stmt 0 discriminator 1
	l32r	a13, .LC103
	movi	a12, 0x140
	l32r	a11, .LC104
	l32r	a10, .LC106
	call8	ets_printf
.LVL148:
	call8	abort
.LVL149:
.L102:
	.loc 1 321 0 is_stmt 1
	l32r	a2, .LC102
	l32i.n	a11, a2, 0
	call8	xQueueAddToSet
.LVL150:
	.loc 1 323 0
	l32r	a2, .LC107
	l32i.n	a2, a2, 0
	beqz.n	a2, .L103
	.loc 1 323 0 is_stmt 0 discriminator 1
	l32r	a2, .LC108
	l32i.n	a2, a2, 0
	beqz.n	a2, .L103
	.loc 1 323 0 discriminator 2
	l32r	a2, .LC102
	l32i.n	a2, a2, 0
	beqz.n	a2, .L103
	.loc 1 327 0 is_stmt 1
	l32r	a2, .LC109
	movi.n	a13, 0
	s32i.n	a13, sp, 0
	mov.n	a15, a2
	movi.n	a14, 0x16
	l32r	a12, .LC110
	l32r	a11, .LC112
	l32r	a10, .LC113
	call8	xTaskCreatePinnedToCore
.LVL151:
	.loc 1 328 0
	l32i.n	a2, a2, 0
	beqz.n	a2, .L103
	.loc 1 332 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	btc_a2dp_source_ctrl_post
.LVL152:
	.loc 1 336 0
	movi.n	a2, 1
	retw.n
.L103:
	.loc 1 339 0
	l32r	a2, .LC98
	l8ui	a2, a2, 0
	beqz.n	a2, .L104
	.loc 1 339 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL153:
	l32r	a11, .LC99
	l32r	a15, .LC114
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC116
	movi.n	a10, 1
	call8	esp_log_write
.LVL154:
.L104:
	.loc 1 341 0 is_stmt 1
	l32r	a2, .LC109
	l32i.n	a10, a2, 0
	beqz.n	a10, .L105
	.loc 1 342 0
	call8	vTaskDelete
.LVL155:
	.loc 1 343 0
	movi.n	a8, 0
	l32r	a2, .LC109
	s32i.n	a8, a2, 0
.L105:
	.loc 1 346 0
	l32r	a2, .LC107
	l32i.n	a10, a2, 0
	beqz.n	a10, .L106
	.loc 1 347 0
	call8	vQueueDelete
.LVL156:
	.loc 1 348 0
	movi.n	a8, 0
	l32r	a2, .LC107
	s32i.n	a8, a2, 0
.L106:
	.loc 1 350 0
	l32r	a2, .LC108
	l32i.n	a10, a2, 0
	beqz.n	a10, .L107
	.loc 1 351 0
	call8	vQueueDelete
.LVL157:
	.loc 1 352 0
	movi.n	a8, 0
	l32r	a2, .LC108
	s32i.n	a8, a2, 0
.L107:
	.loc 1 354 0
	l32r	a2, .LC102
	l32i.n	a10, a2, 0
	beqz.n	a10, .L109
	.loc 1 355 0
	call8	vQueueDelete
.LVL158:
	.loc 1 356 0
	movi.n	a2, 0
	l32r	a8, .LC102
	s32i.n	a2, a8, 0
	retw.n
.L108:
	.loc 1 308 0
	movi.n	a2, 0
	retw.n
.L109:
	.loc 1 358 0
	movi.n	a2, 0
	.loc 1 359 0
	retw.n
.LFE34:
	.size	btc_a2dp_source_startup, .-btc_a2dp_source_startup
	.section	.rodata.str1.4
	.align	4
.LC119:
	.string	"btc_a2dp_source_future"
	.section	.text.btc_a2dp_source_shutdown,"ax",@progbits
	.literal_position
	.literal .LC117, btc_a2dp_source_state
	.literal .LC118, btc_a2dp_source_future
	.literal .LC120, .LC119
	.literal .LC121, __func__$10798
	.literal .LC122, .LC33
	.literal .LC123, btc_aa_src_task_hdl
	.literal .LC124, btc_aa_src_data_queue
	.literal .LC125, btc_aa_src_ctrl_queue
	.literal .LC126, btc_aa_src_queue_set
	.align	4
	.global	btc_a2dp_source_shutdown
	.type	btc_a2dp_source_shutdown, @function
btc_a2dp_source_shutdown:
.LFB35:
	.loc 1 362 0
	entry	sp, 32
.LCFI23:
	.loc 1 366 0
	movi.n	a3, 2
	l32r	a2, .LC117
	s32i.n	a3, a2, 0
	.loc 1 367 0
	call8	future_new
.LVL159:
	l32r	a2, .LC118
	s32i.n	a10, a2, 0
	.loc 1 368 0
	bnez.n	a10, .L111
	.loc 1 368 0 is_stmt 0 discriminator 1
	l32r	a13, .LC120
	l32r	a12, .LC121
	movi	a11, 0x170
	l32r	a10, .LC122
	call8	__assert_func
.LVL160:
.L111:
	.loc 1 369 0 is_stmt 1
	movi.n	a11, 0
	movi.n	a10, 1
	call8	btc_a2dp_source_ctrl_post
.LVL161:
	.loc 1 370 0
	l32r	a3, .LC118
	l32i.n	a10, a3, 0
	call8	future_await
.LVL162:
	.loc 1 371 0
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	.loc 1 373 0
	l32r	a3, .LC123
	l32i.n	a10, a3, 0
	call8	vTaskDelete
.LVL163:
	.loc 1 374 0
	s32i.n	a2, a3, 0
	.loc 1 376 0
	l32r	a3, .LC124
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL164:
	.loc 1 377 0
	s32i.n	a2, a3, 0
	.loc 1 379 0
	l32r	a3, .LC125
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL165:
	.loc 1 380 0
	s32i.n	a2, a3, 0
	.loc 1 382 0
	l32r	a3, .LC126
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL166:
	.loc 1 383 0
	s32i.n	a2, a3, 0
	retw.n
.LFE35:
	.size	btc_a2dp_source_shutdown, .-btc_a2dp_source_shutdown
	.section	.text.btc_a2dp_source_set_tx_flush,"ax",@progbits
	.literal_position
	.literal .LC127, btc_aa_src_cb
	.align	4
	.global	btc_a2dp_source_set_tx_flush
	.type	btc_a2dp_source_set_tx_flush, @function
btc_a2dp_source_set_tx_flush:
.LFB42:
	.loc 1 481 0
.LVL167:
	entry	sp, 32
.LCFI24:
	.loc 1 483 0
	l32r	a8, .LC127
	s8i	a2, a8, 1
	retw.n
.LFE42:
	.size	btc_a2dp_source_set_tx_flush, .-btc_a2dp_source_set_tx_flush
	.section	.text.btc_a2dp_source_audio_readbuf,"ax",@progbits
	.literal_position
	.literal .LC128, btc_a2dp_source_state
	.literal .LC129, btc_aa_src_cb
	.align	4
	.global	btc_a2dp_source_audio_readbuf
	.type	btc_a2dp_source_audio_readbuf, @function
btc_a2dp_source_audio_readbuf:
.LFB44:
	.loc 1 538 0
	entry	sp, 32
.LCFI25:
	.loc 1 539 0
	l32r	a8, .LC128
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L115
	.loc 1 542 0
	l32r	a2, .LC129
	l32i.n	a10, a2, 12
	call8	fixed_queue_try_dequeue
.LVL168:
	mov.n	a2, a10
	retw.n
.L115:
	.loc 1 540 0
	movi.n	a2, 0
	.loc 1 543 0
	retw.n
.LFE44:
	.size	btc_a2dp_source_audio_readbuf, .-btc_a2dp_source_audio_readbuf
	.section	.text.btc_a2dp_source_start_audio_req,"ax",@progbits
	.align	4
	.global	btc_a2dp_source_start_audio_req
	.type	btc_a2dp_source_start_audio_req, @function
btc_a2dp_source_start_audio_req:
.LFB45:
	.loc 1 555 0
	entry	sp, 32
.LCFI26:
	.loc 1 556 0
	movi.n	a11, 0
	movi.n	a10, 2
	call8	btc_a2dp_source_ctrl_post
.LVL169:
	.loc 1 558 0
	movi.n	a2, 1
	retw.n
.LFE45:
	.size	btc_a2dp_source_start_audio_req, .-btc_a2dp_source_start_audio_req
	.section	.text.btc_a2dp_source_stop_audio_req,"ax",@progbits
	.literal_position
	.literal .LC130, btc_aa_src_ctrl_queue
	.align	4
	.global	btc_a2dp_source_stop_audio_req
	.type	btc_a2dp_source_stop_audio_req, @function
btc_a2dp_source_stop_audio_req:
.LFB46:
	.loc 1 570 0
	entry	sp, 32
.LCFI27:
	.loc 1 581 0
	l32r	a8, .LC130
	l32i.n	a8, a8, 0
	beqz.n	a8, .L118
	.loc 1 582 0
	movi.n	a11, 0
	movi.n	a10, 3
	call8	btc_a2dp_source_ctrl_post
.LVL170:
.L118:
	.loc 1 585 0
	movi.n	a2, 1
	retw.n
.LFE46:
	.size	btc_a2dp_source_stop_audio_req, .-btc_a2dp_source_stop_audio_req
	.section	.text.btc_a2dp_source_on_idle,"ax",@progbits
	.align	4
	.global	btc_a2dp_source_on_idle
	.type	btc_a2dp_source_on_idle, @function
btc_a2dp_source_on_idle:
.LFB36:
	.loc 1 392 0
	entry	sp, 32
.LCFI28:
	.loc 1 394 0
	call8	btc_a2dp_source_stop_audio_req
.LVL171:
	retw.n
.LFE36:
	.size	btc_a2dp_source_on_idle, .-btc_a2dp_source_on_idle
	.section	.text.btc_a2dp_source_on_suspended,"ax",@progbits
	.literal_position
	.literal .LC131, btc_aa_src_cb
	.align	4
	.global	btc_a2dp_source_on_suspended
	.type	btc_a2dp_source_on_suspended, @function
btc_a2dp_source_on_suspended:
.LFB38:
	.loc 1 433 0
.LVL172:
	entry	sp, 32
.LCFI29:
	.loc 1 435 0
	l8ui	a8, a2, 3
	beqz.n	a8, .L121
	.loc 1 436 0
	l8ui	a2, a2, 2
.LVL173:
	beqz.n	a2, .L121
	.loc 1 437 0
	movi.n	a10, 1
	call8	btc_a2dp_control_command_ack
.LVL174:
.L121:
	.loc 1 444 0
	movi.n	a8, 1
	l32r	a2, .LC131
	s8i	a8, a2, 1
	.loc 1 447 0
	call8	btc_a2dp_source_stop_audio_req
.LVL175:
	retw.n
.LFE38:
	.size	btc_a2dp_source_on_suspended, .-btc_a2dp_source_on_suspended
	.section	.text.btc_a2dp_source_enc_init_req,"ax",@progbits
	.align	4
	.global	btc_a2dp_source_enc_init_req
	.type	btc_a2dp_source_enc_init_req, @function
btc_a2dp_source_enc_init_req:
.LFB47:
	.loc 1 597 0
.LVL176:
	entry	sp, 32
.LCFI30:
	.loc 1 599 0
	movi.n	a10, 0x10
	call8	malloc
.LVL177:
	mov.n	a3, a10
.LVL178:
	beqz.n	a10, .L124
	.loc 1 603 0
	movi.n	a12, 0x10
	mov.n	a11, a2
	call8	memcpy
.LVL179:
	.loc 1 605 0
	mov.n	a11, a3
	movi.n	a10, 4
	call8	btc_a2dp_source_ctrl_post
.LVL180:
	.loc 1 607 0
	movi.n	a2, 1
.LVL181:
	retw.n
.LVL182:
.L124:
	.loc 1 600 0
	movi.n	a2, 0
.LVL183:
	.loc 1 608 0
	retw.n
.LFE47:
	.size	btc_a2dp_source_enc_init_req, .-btc_a2dp_source_enc_init_req
	.section	.rodata
	.align	4
.LC0:
	.short	3
	.short	2
	.short	1
	.short	0
	.short	0
	.align	4
.LC1:
	.short	16
	.short	12
	.short	8
	.short	0
	.short	4
	.section	.text.btc_a2dp_source_encoder_init,"ax",@progbits
	.literal_position
	.literal .LC132, .LC0
	.literal .LC133, .LC1
	.align	4
	.type	btc_a2dp_source_encoder_init, @function
btc_a2dp_source_encoder_init:
.LFB52:
	.loc 1 696 0
	entry	sp, 96
.LCFI31:
	.loc 1 702 0
	l32r	a3, .LC132
	movi.n	a2, 0xa
	mov.n	a12, a2
	mov.n	a11, a3
	addi	a10, sp, 26
	call8	memcpy
.LVL184:
	.loc 1 705 0
	mov.n	a12, a2
	l32r	a11, .LC133
	addi	a10, sp, 36
	call8	memcpy
.LVL185:
	.loc 1 708 0
	mov.n	a12, a2
	mov.n	a11, a3
	addi	a10, sp, 46
	call8	memcpy
.LVL186:
	.loc 1 713 0
	mov.n	a11, sp
	addi	a10, sp, 18
	call8	bta_av_co_audio_get_sbc_config
.LVL187:
	.loc 1 714 0
	l8ui	a2, sp, 21
	bnei	a2, 8, .L127
	movi.n	a2, 4
	j	.L126
.L127:
	movi.n	a2, 8
.L126:
	.loc 1 714 0 is_stmt 0 discriminator 4
	s8i	a2, sp, 13
	.loc 1 715 0 is_stmt 1 discriminator 4
	l8ui	a8, sp, 20
	srli	a8, a8, 5
	addx2	a8, a8, sp
	l16ui	a2, a8, 36
	s8i	a2, sp, 14
	.loc 1 716 0 discriminator 4
	l8ui	a8, sp, 22
	addi.n	a9, a8, -1
	movi.n	a2, 0
	movi.n	a8, 1
	moveqz	a8, a2, a9
	s8i	a8, sp, 15
	.loc 1 717 0 discriminator 4
	l8ui	a8, sp, 19
	srli	a8, a8, 1
	addx2	a8, a8, sp
	l16ui	a2, a8, 26
	s8i	a2, sp, 12
	.loc 1 718 0 discriminator 4
	l8ui	a8, sp, 18
	srli	a8, a8, 5
	addx2	a8, a8, sp
	l16ui	a2, a8, 46
	s16i	a2, sp, 10
	.loc 1 719 0 discriminator 4
	l16ui	a2, sp, 0
	s16i	a2, sp, 16
	.loc 1 724 0 discriminator 4
	addi.n	a10, sp, 2
	call8	btc_a2dp_source_enc_init_req
.LVL188:
	retw.n
.LFE52:
	.size	btc_a2dp_source_encoder_init, .-btc_a2dp_source_encoder_init
	.section	.text.btc_a2dp_source_enc_update_req,"ax",@progbits
	.align	4
	.global	btc_a2dp_source_enc_update_req
	.type	btc_a2dp_source_enc_update_req, @function
btc_a2dp_source_enc_update_req:
.LFB48:
	.loc 1 620 0
.LVL189:
	entry	sp, 32
.LCFI32:
	.loc 1 622 0
	movi.n	a10, 0xc
	call8	malloc
.LVL190:
	mov.n	a3, a10
.LVL191:
	beqz.n	a10, .L130
	.loc 1 626 0
	movi.n	a12, 0xc
	mov.n	a11, a2
	call8	memcpy
.LVL192:
	.loc 1 627 0
	mov.n	a11, a3
	movi.n	a10, 5
	call8	btc_a2dp_source_ctrl_post
.LVL193:
	.loc 1 628 0
	movi.n	a2, 1
.LVL194:
	retw.n
.LVL195:
.L130:
	.loc 1 623 0
	movi.n	a2, 0
.LVL196:
	.loc 1 629 0
	retw.n
.LFE48:
	.size	btc_a2dp_source_enc_update_req, .-btc_a2dp_source_enc_update_req
	.section	.text.btc_a2dp_source_audio_feeding_init_req,"ax",@progbits
	.align	4
	.global	btc_a2dp_source_audio_feeding_init_req
	.type	btc_a2dp_source_audio_feeding_init_req, @function
btc_a2dp_source_audio_feeding_init_req:
.LFB49:
	.loc 1 641 0
.LVL197:
	entry	sp, 32
.LCFI33:
	.loc 1 643 0
	movi.n	a10, 0x12
	call8	malloc
.LVL198:
	mov.n	a3, a10
.LVL199:
	beqz.n	a10, .L133
	.loc 1 647 0
	movi.n	a12, 0x12
	mov.n	a11, a2
	call8	memcpy
.LVL200:
	.loc 1 648 0
	mov.n	a11, a3
	movi.n	a10, 7
	call8	btc_a2dp_source_ctrl_post
.LVL201:
	.loc 1 649 0
	movi.n	a2, 1
.LVL202:
	retw.n
.LVL203:
.L133:
	.loc 1 644 0
	movi.n	a2, 0
.LVL204:
	.loc 1 650 0
	retw.n
.LFE49:
	.size	btc_a2dp_source_audio_feeding_init_req, .-btc_a2dp_source_audio_feeding_init_req
	.section	.text.btc_a2dp_source_setup_codec,"ax",@progbits
	.literal_position
	.literal .LC134, -21436
	.align	4
	.global	btc_a2dp_source_setup_codec
	.type	btc_a2dp_source_setup_codec, @function
btc_a2dp_source_setup_codec:
.LFB43:
	.loc 1 497 0
	entry	sp, 64
.LCFI34:
	.loc 1 503 0
	call8	osi_mutex_global_lock
.LVL205:
	.loc 1 506 0
	l32r	a2, .LC134
	s16i	a2, sp, 2
	.loc 1 507 0
	movi.n	a8, 0x10
	s8i	a8, sp, 6
	.loc 1 508 0
	movi.n	a8, 2
	s16i	a8, sp, 4
	.loc 1 509 0
	movi.n	a8, 5
	s8i	a8, sp, 0
	.loc 1 511 0
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	bta_av_co_audio_set_codec
.LVL206:
	beqz.n	a10, .L135
.LBB12:
	.loc 1 515 0
	call8	btc_a2dp_source_encoder_init
.LVL207:
	.loc 1 518 0
	l16ui	a8, sp, 0
	s16i	a8, sp, 22
	l16ui	a8, sp, 2
	s16i	a8, sp, 24
	l16ui	a8, sp, 4
	s16i	a8, sp, 26
	l16ui	a8, sp, 6
	s16i	a8, sp, 28
	.loc 1 519 0
	movi.n	a8, 0
	s8i	a8, sp, 20
	.loc 1 521 0
	addi.n	a10, sp, 12
	call8	btc_a2dp_source_audio_feeding_init_req
.LVL208:
.L135:
.LBE12:
	.loc 1 524 0
	call8	osi_mutex_global_unlock
.LVL209:
	retw.n
.LFE43:
	.size	btc_a2dp_source_setup_codec, .-btc_a2dp_source_setup_codec
	.section	.text.btc_a2dp_source_tx_flush_req,"ax",@progbits
	.literal_position
	.literal .LC135, btc_aa_src_ctrl_queue
	.align	4
	.global	btc_a2dp_source_tx_flush_req
	.type	btc_a2dp_source_tx_flush_req, @function
btc_a2dp_source_tx_flush_req:
.LFB50:
	.loc 1 662 0
	entry	sp, 32
.LCFI35:
	.loc 1 673 0
	l32r	a8, .LC135
	l32i.n	a8, a8, 0
	beqz.n	a8, .L137
	.loc 1 674 0
	movi.n	a11, 0
	movi.n	a10, 6
	call8	btc_a2dp_source_ctrl_post
.LVL210:
.L137:
	.loc 1 678 0
	movi.n	a2, 1
	retw.n
.LFE50:
	.size	btc_a2dp_source_tx_flush_req, .-btc_a2dp_source_tx_flush_req
	.section	.text.btc_a2dp_source_on_stopped,"ax",@progbits
	.literal_position
	.literal .LC136, btc_aa_src_cb
	.align	4
	.global	btc_a2dp_source_on_stopped
	.type	btc_a2dp_source_on_stopped, @function
btc_a2dp_source_on_stopped:
.LFB37:
	.loc 1 403 0
.LVL211:
	entry	sp, 32
.LCFI36:
	.loc 1 405 0
	beqz.n	a2, .L139
	.loc 1 406 0
	l8ui	a8, a2, 3
	beqz.n	a8, .L139
	.loc 1 408 0
	l8ui	a2, a2, 2
.LVL212:
	beqz.n	a2, .L138
	.loc 1 409 0
	movi.n	a10, 1
	call8	btc_a2dp_control_command_ack
.LVL213:
	retw.n
.LVL214:
.L139:
	.loc 1 416 0
	movi.n	a8, 1
	l32r	a2, .LC136
.LVL215:
	s8i	a8, a2, 1
	.loc 1 419 0
	call8	btc_a2dp_source_tx_flush_req
.LVL216:
	.loc 1 420 0
	call8	btc_a2dp_source_stop_audio_req
.LVL217:
.L138:
	retw.n
.LFE37:
	.size	btc_a2dp_source_on_stopped, .-btc_a2dp_source_on_stopped
	.section	.rodata.str1.4
	.align	4
.LC140:
	.string	"\033[0;31mE (%d) %s: %s: ERROR min_bitpool > max_bitpool\033[0m\n"
	.section	.text.btc_a2dp_source_encoder_update,"ax",@progbits
	.literal_position
	.literal .LC137, appl_trace_level
	.literal .LC138, __FUNCTION__$10874
	.literal .LC139, .LC10
	.literal .LC141, .LC140
	.align	4
	.global	btc_a2dp_source_encoder_update
	.type	btc_a2dp_source_encoder_update, @function
btc_a2dp_source_encoder_update:
.LFB53:
	.loc 1 728 0
	entry	sp, 64
.LCFI37:
	.loc 1 738 0
	mov.n	a11, sp
	addi.n	a10, sp, 2
	call8	bta_av_co_audio_get_sbc_config
.LVL218:
	.loc 1 744 0
	l8ui	a8, sp, 8
	l8ui	a9, sp, 7
	bgeu	a9, a8, .L142
	.loc 1 745 0
	l32r	a8, .LC137
	l8ui	a8, a8, 0
	beqz.n	a8, .L142
	.loc 1 745 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL219:
	l32r	a11, .LC139
	l32r	a15, .LC138
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC141
	movi.n	a10, 1
	call8	esp_log_write
.LVL220:
.L142:
	.loc 1 749 0 is_stmt 1
	addi	a11, sp, 23
	addi	a10, sp, 22
	call8	bta_av_co_get_remote_bitpool_pref
.LVL221:
	beqz.n	a10, .L143
	.loc 1 753 0
	l8ui	a8, sp, 8
	l8ui	a9, sp, 22
	bgeu	a9, a8, .L144
	.loc 1 754 0
	s8i	a8, sp, 22
.L144:
	.loc 1 757 0
	l8ui	a8, sp, 7
	l8ui	a9, sp, 23
	bgeu	a8, a9, .L145
	.loc 1 758 0
	s8i	a8, sp, 23
.L145:
	.loc 1 761 0
	l8ui	a8, sp, 22
	s8i	a8, sp, 21
	.loc 1 762 0
	l8ui	a8, sp, 23
	s8i	a8, sp, 20
	j	.L146
.L143:
	.loc 1 769 0
	l8ui	a8, sp, 8
	s8i	a8, sp, 21
	.loc 1 770 0
	l8ui	a8, sp, 7
	s8i	a8, sp, 20
.L146:
	.loc 1 773 0
	l16ui	a8, sp, 0
	s16i	a8, sp, 18
	.loc 1 776 0
	addi.n	a10, sp, 10
	call8	btc_a2dp_source_enc_update_req
.LVL222:
	retw.n
.LFE53:
	.size	btc_a2dp_source_encoder_update, .-btc_a2dp_source_encoder_update
	.section	.rodata.str1.4
	.align	4
.LC151:
	.string	"\033[0;33mW (%d) %s: ### UNDERFLOW :: ONLY READ %d BYTES OUT OF %d ###\033[0m\n"
	.align	4
.LC155:
	.string	"\033[0;33mW (%d) %s: ### UNDERRUN :: ONLY READ %d BYTES OUT OF %d ###\033[0m\n"
	.section	.text.btc_media_aa_read_feeding,"ax",@progbits
	.literal_position
	.literal .LC142, 48000
	.literal .LC143, 16000
	.literal .LC144, 44100
	.literal .LC145, 32000
	.literal .LC146, btc_aa_src_cb
	.literal .LC147, btc_aa_src_cb+120
	.literal .LC148, btc_aa_src_data_cb
	.literal .LC149, appl_trace_level
	.literal .LC150, .LC10
	.literal .LC152, .LC151
	.literal .LC153, 8000
	.literal .LC154, read_buffer$10941
	.literal .LC156, .LC155
	.literal .LC157, up_sampled_buffer$10940
	.align	4
	.global	btc_media_aa_read_feeding
	.type	btc_media_aa_read_feeding, @function
btc_media_aa_read_feeding:
.LFB60:
	.loc 1 1164 0
	entry	sp, 64
.LCFI38:
	.loc 1 1165 0
	l32r	a10, .LC146
	l16ui	a8, a10, 52
	.loc 1 1166 0
	l16ui	a2, a10, 56
	.loc 1 1165 0
	mul16u	a8, a8, a2
	extui	a8, a8, 0, 16
.LVL223:
	.loc 1 1170 0
	l16si	a9, a10, 54
	mull	a9, a8, a9
	.loc 1 1171 0
	l8ui	a2, a10, 46
	.loc 1 1170 0
	mull	a9, a2, a9
	.loc 1 1171 0
	addi.n	a3, a9, 7
	movgez	a3, a9, a9
	srai	a3, a3, 3
.LVL224:
	.loc 1 1184 0
	l16si	a4, a10, 48
	beqi	a4, 1, .L149
	beqi	a4, 2, .L165
	beqz.n	a4, .L151
	.loc 1 1168 0
	l32r	a10, .LC142
	j	.L150
.L149:
.LVL225:
	.loc 1 1192 0
	l32r	a10, .LC145
	.loc 1 1193 0
	j	.L150
.LVL226:
.L151:
	.loc 1 1195 0
	l32r	a10, .LC143
	.loc 1 1196 0
	j	.L150
.LVL227:
.L165:
	.loc 1 1189 0
	l32r	a10, .LC144
.LVL228:
.L150:
	.loc 1 1199 0
	l32r	a4, .LC146
	l16ui	a9, a4, 42
	bne	a10, a9, .L152
	.loc 1 1200 0
	l32i.n	a10, a4, 28
.LVL229:
	extui	a3, a3, 0, 16
.LVL230:
	sub	a3, a3, a10
	mov.n	a4, a3
.LVL231:
	.loc 1 1201 0
	l32r	a2, .LC147
.LVL232:
	add.n	a10, a10, a2
.LVL233:
.LBB13:
.LBB14:
	.loc 1 199 0
	l32r	a2, .LC148
	l32i.n	a2, a2, 0
	beqz.n	a2, .L166
	.loc 1 200 0
	mov.n	a11, a3
	callx8	a2
.LVL234:
	mov.n	a2, a10
	j	.L153
.LVL235:
.L166:
	.loc 1 202 0
	movi.n	a2, 0
.LVL236:
.L153:
.LBE14:
.LBE13:
	.loc 1 1205 0
	bne	a4, a2, .L154
	.loc 1 1206 0
	movi.n	a3, 0
.LVL237:
	l32r	a2, .LC146
	s32i.n	a3, a2, 28
	.loc 1 1207 0
	movi.n	a2, 1
	retw.n
.LVL238:
.L154:
	.loc 1 1209 0
	l32r	a4, .LC149
	l8ui	a4, a4, 0
	bltui	a4, 2, .L156
	.loc 1 1209 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL239:
	l32r	a11, .LC150
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC152
	movi.n	a10, 2
	call8	esp_log_write
.LVL240:
.L156:
	.loc 1 1211 0 is_stmt 1
	l32r	a3, .LC146
.LVL241:
	l32i.n	a4, a3, 28
	add.n	a2, a4, a2
	s32i.n	a2, a3, 28
	.loc 1 1212 0
	movi.n	a2, 0
	retw.n
.LVL242:
.L152:
	.loc 1 1220 0
	l32r	a4, .LC143
	beq	a9, a4, .L158
	l32r	a4, .LC145
	beq	a9, a4, .L167
	l32r	a4, .LC153
	beq	a9, a4, .L167
	.loc 1 1219 0
	movi.n	a5, 0
	j	.L159
.L158:
.LVL243:
	.loc 1 1230 0
	movi.n	a11, 1
	.loc 1 1228 0
	mov.n	a5, a11
	.loc 1 1231 0
	j	.L159
.LVL244:
.L167:
	.loc 1 1225 0
	movi.n	a11, 0
	.loc 1 1223 0
	movi.n	a5, 1
.LVL245:
.L159:
	.loc 1 1236 0
	mull	a8, a9, a8
.LVL246:
	.loc 1 1237 0
	mov.n	a4, a10
	quou	a8, a8, a10
.LVL247:
	.loc 1 1240 0
	beqz.n	a5, .L160
.LVL248:
	.loc 1 1241 0
	l32r	a5, .LC146
.LVL249:
	l32i.n	a5, a5, 24
	blt	a11, a5, .L161
	.loc 1 1242 0
	addi.n	a8, a8, 1
.LVL250:
.L161:
	.loc 1 1246 0
	addi.n	a5, a5, 1
	l32r	a9, .LC146
	s32i.n	a5, a9, 24
	.loc 1 1247 0
	blti	a5, 3, .L160
	.loc 1 1248 0
	movi.n	a9, 0
	l32r	a5, .LC146
	s32i.n	a9, a5, 24
.L160:
.LVL251:
	.loc 1 1254 0
	l32r	a5, .LC146
	l16ui	a5, a5, 44
	mull	a8, a5, a8
.LVL252:
	.loc 1 1255 0
	srli	a2, a2, 3
	mull	a2, a2, a8
.LVL253:
.LBB15:
.LBB16:
	.loc 1 199 0
	l32r	a5, .LC148
	l32i.n	a5, a5, 0
	beqz.n	a5, .L168
	.loc 1 200 0
	mov.n	a11, a2
.LVL254:
	l32r	a10, .LC154
	callx8	a5
.LVL255:
	mov.n	a5, a10
	j	.L162
.LVL256:
.L168:
	.loc 1 202 0
	movi.n	a5, 0
.LVL257:
.L162:
.LBE16:
.LBE15:
	.loc 1 1262 0
	bgeu	a5, a2, .L163
	.loc 1 1263 0
	l32r	a8, .LC149
	l8ui	a8, a8, 0
	bltui	a8, 2, .L164
	.loc 1 1263 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL258:
	l32r	a11, .LC150
	s32i.n	a2, sp, 0
	mov.n	a15, a5
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC156
	movi.n	a10, 2
	call8	esp_log_write
.LVL259:
.L164:
	.loc 1 1266 0 is_stmt 1
	beqz.n	a5, .L169
	.loc 1 1270 0
	l32r	a8, .LC146
	l8ui	a8, a8, 16
	bnez.n	a8, .L163
	.loc 1 1272 0
	sub	a12, a2, a5
	movi.n	a11, 0
	l32r	a10, .LC154
	add.n	a10, a10, a5
	call8	memset
.LVL260:
	.loc 1 1273 0
	mov.n	a5, a2
.LVL261:
.L163:
	.loc 1 1278 0
	l32r	a2, .LC146
.LVL262:
	l16ui	a13, a2, 44
	l8ui	a12, a2, 46
	mov.n	a11, a4
	l16ui	a10, a2, 42
	call8	bta_av_sbc_init_up_sample
.LVL263:
	.loc 1 1285 0
	l32i.n	a4, a2, 28
.LVL264:
	.loc 1 1284 0
	addi	a14, sp, 16
	movi	a13, 0x400
	sub	a13, a13, a4
	mov.n	a12, a5
	l32r	a11, .LC157
	add.n	a11, a11, a4
	l32r	a10, .LC154
	call8	bta_av_sbc_up_sample
.LVL265:
	.loc 1 1291 0
	l32i.n	a4, a2, 28
	add.n	a4, a10, a4
	s32i.n	a4, a2, 28
	extui	a3, a3, 0, 16
.LVL266:
	.loc 1 1294 0
	blt	a4, a3, .L170
	.loc 1 1296 0
	mov.n	a12, a3
	l32r	a11, .LC157
	l32r	a10, .LC147
.LVL267:
	call8	memcpy
.LVL268:
	.loc 1 1300 0
	sub	a12, a4, a3
	l32r	a2, .LC146
	s32i.n	a12, a2, 28
	.loc 1 1302 0
	beqz.n	a12, .L171
	.loc 1 1304 0
	l32r	a10, .LC157
	.loc 1 1303 0
	add.n	a11, a10, a3
	call8	memcpy
.LVL269:
	.loc 1 1307 0
	movi.n	a2, 1
	retw.n
.LVL270:
.L169:
	.loc 1 1267 0
	movi.n	a2, 0
.LVL271:
	retw.n
.LVL272:
.L170:
	.loc 1 1310 0
	movi.n	a2, 0
	retw.n
.LVL273:
.L171:
	.loc 1 1307 0
	movi.n	a2, 1
	.loc 1 1311 0
	retw.n
.LFE60:
	.size	btc_media_aa_read_feeding, .-btc_media_aa_read_feeding
	.section	.rodata.str1.4
	.align	4
.LC162:
	.string	"\033[0;31mE (%d) %s: ERROR btc_media_aa_prep_sbc_2_send no buffer TxCnt %d \033[0m\n"
	.align	4
.LC166:
	.string	"\033[0;33mW (%d) %s: btc_media_aa_prep_sbc_2_send underflow %d, %d\033[0m\n"
	.section	.text.btc_media_aa_prep_sbc_2_send,"ax",@progbits
	.literal_position
	.literal .LC158, btc_aa_src_cb
	.literal .LC159, 4112
	.literal .LC160, appl_trace_level
	.literal .LC161, .LC10
	.literal .LC163, .LC162
	.literal .LC164, btc_aa_src_cb+120
	.literal .LC165, btc_aa_src_cb+48
	.literal .LC167, .LC166
	.align	4
	.type	btc_media_aa_prep_sbc_2_send, @function
btc_media_aa_prep_sbc_2_send:
.LFB61:
	.loc 1 1323 0
.LVL274:
	entry	sp, 48
.LCFI39:
	.loc 1 1325 0
	l32r	a3, .LC158
	l16ui	a4, a3, 52
	.loc 1 1326 0
	l16ui	a3, a3, 56
	.loc 1 1325 0
	mul16u	a4, a4, a3
	extui	a4, a4, 0, 16
.LVL275:
	.loc 1 1328 0
	j	.L173
.L185:
	.loc 1 1329 0
	l32r	a10, .LC159
	call8	malloc
.LVL276:
	mov.n	a3, a10
.LVL277:
	bnez.n	a10, .L174
	.loc 1 1330 0
	l32r	a2, .LC160
.LVL278:
	l8ui	a2, a2, 0
	beqz.n	a2, .L172
	.loc 1 1330 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL279:
	mov.n	a2, a10
	l32r	a3, .LC158
.LVL280:
	l32i.n	a10, a3, 12
	call8	fixed_queue_length
.LVL281:
	l32r	a11, .LC161
	mov.n	a15, a10
	mov.n	a14, a11
	mov.n	a13, a2
	l32r	a12, .LC163
	movi.n	a10, 1
	call8	esp_log_write
.LVL282:
	retw.n
.LVL283:
.L174:
	.loc 1 1336 0 is_stmt 1
	movi.n	a5, 0x18
	s16i	a5, a10, 4
	.loc 1 1337 0
	movi.n	a5, 0
	s16i	a5, a10, 2
	.loc 1 1338 0
	s16i	a5, a10, 6
.LVL284:
.L180:
	.loc 1 1342 0
	l16ui	a5, a3, 4
	l16ui	a6, a3, 2
	add.n	a5, a6, a5
	addi.n	a5, a5, 8
	add.n	a5, a3, a5
	l32r	a8, .LC158
	addmi	a6, a8, 0x600
	s32i	a5, a6, 184
	.loc 1 1345 0
	mov.n	a5, a4
	l16si	a12, a8, 54
	.loc 1 1344 0
	mull	a12, a12, a4
	movi.n	a11, 0
	l32r	a10, .LC164
	call8	memset
.LVL285:
	.loc 1 1348 0
	call8	btc_media_aa_read_feeding
.LVL286:
	beqz.n	a10, .L176
	.loc 1 1350 0
	l32r	a10, .LC165
	call8	SBC_Encoder
.LVL287:
	.loc 1 1351 0
	l32r	a6, .LC158
	addmi	a6, a6, 0x600
	l32i	a10, a6, 184
	call8	A2D_SbcChkFrInit
.LVL288:
	.loc 1 1352 0
	l16ui	a11, a6, 194
	l32i	a10, a6, 184
	call8	A2D_SbcDescramble
.LVL289:
	.loc 1 1354 0
	l16ui	a8, a6, 194
	l16ui	a6, a3, 2
	add.n	a6, a8, a6
	s16i	a6, a3, 2
	.loc 1 1355 0
	addi.n	a2, a2, -1
.LVL290:
	extui	a2, a2, 0, 8
.LVL291:
	.loc 1 1356 0
	l16ui	a6, a3, 6
	addi.n	a6, a6, 1
	s16i	a6, a3, 6
	j	.L177
.L176:
	.loc 1 1358 0
	l32r	a6, .LC160
	l8ui	a6, a6, 0
	bltui	a6, 2, .L178
	.loc 1 1358 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL292:
	l32r	a11, .LC161
	l32r	a6, .LC158
	l32i.n	a6, a6, 28
	s32i.n	a6, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC167
	movi.n	a10, 2
	call8	esp_log_write
.LVL293:
.L178:
	.loc 1 1361 0 is_stmt 1
	l32r	a9, .LC158
	l16si	a8, a9, 52
	.loc 1 1360 0
	mull	a2, a2, a8
.LVL294:
	.loc 1 1362 0
	l16si	a8, a9, 56
	.loc 1 1361 0
	mull	a2, a8, a2
	.loc 1 1363 0
	l16ui	a8, a9, 44
	.loc 1 1362 0
	mull	a8, a8, a2
	.loc 1 1364 0
	l8ui	a2, a9, 46
	.loc 1 1363 0
	mull	a8, a2, a8
	.loc 1 1364 0
	addi.n	a2, a8, 7
	movgez	a2, a8, a8
	srai	a2, a2, 3
	.loc 1 1360 0
	l32i.n	a6, a9, 32
	add.n	a2, a6, a2
	s32i.n	a2, a9, 32
.LVL295:
	.loc 1 1369 0
	l8ui	a2, a9, 2
	bnez.n	a2, .L186
	.loc 1 1370 0
	mov.n	a10, a3
	call8	free
.LVL296:
	.loc 1 1371 0
	retw.n
.L186:
	.loc 1 1366 0
	movi.n	a2, 0
.LVL297:
.L177:
	.loc 1 1375 0
	l16ui	a10, a3, 2
	l32r	a9, .LC158
	addmi	a6, a9, 0x600
	l16ui	a8, a6, 194
	add.n	a8, a10, a8
	l16ui	a6, a9, 4
	.loc 1 1376 0
	bge	a8, a6, .L179
	.loc 1 1376 0 is_stmt 0 discriminator 1
	l16ui	a6, a3, 6
	movi.n	a8, 0xe
	bltu	a8, a6, .L179
	.loc 1 1376 0 discriminator 2
	bnez.n	a2, .L180
.L179:
	.loc 1 1378 0 is_stmt 1
	beqz.n	a10, .L181
	.loc 1 1381 0
	l32r	a6, .LC158
	l32i.n	a8, a6, 8
	s32i.n	a8, a3, 8
	.loc 1 1383 0
	l16ui	a9, a3, 6
	mull	a5, a9, a5
	add.n	a5, a8, a5
	s32i.n	a5, a6, 8
	.loc 1 1385 0
	l8ui	a5, a6, 1
	beqz.n	a5, .L182
	.loc 1 1388 0
	mov.n	a2, a6
.LVL298:
	l32i.n	a10, a6, 12
	call8	fixed_queue_length
.LVL299:
	beqz.n	a10, .L183
	.loc 1 1389 0
	l32r	a2, .LC158
	l32i.n	a10, a2, 12
	call8	btc_a2dp_source_flush_q
.LVL300:
.L183:
	.loc 1 1392 0
	mov.n	a10, a3
	call8	free
.LVL301:
	.loc 1 1393 0
	retw.n
.LVL302:
.L182:
	.loc 1 1397 0
	mov.n	a11, a3
	l32r	a3, .LC158
.LVL303:
	l32i.n	a10, a3, 12
	call8	fixed_queue_enqueue
.LVL304:
	j	.L173
.LVL305:
.L181:
	.loc 1 1399 0
	mov.n	a10, a3
	call8	free
.LVL306:
.L173:
	.loc 1 1328 0
	bnez.n	a2, .L185
.LVL307:
.L172:
	retw.n
.LFE61:
	.size	btc_media_aa_prep_sbc_2_send, .-btc_media_aa_prep_sbc_2_send
	.section	.rodata.str1.4
	.align	4
.LC171:
	.string	"\033[0;33mW (%d) %s: TX Q overflow: %d/%d\033[0m\n"
	.align	4
.LC174:
	.string	"\033[0;31mE (%d) %s: %s unsupported transcoding format 0x%x\033[0m\n"
	.section	.text.btc_a2dp_source_prep_2_send,"ax",@progbits
	.literal_position
	.literal .LC168, btc_aa_src_cb
	.literal .LC169, appl_trace_level
	.literal .LC170, .LC10
	.literal .LC172, .LC171
	.literal .LC173, __func__$10976
	.literal .LC175, .LC174
	.align	4
	.type	btc_a2dp_source_prep_2_send, @function
btc_a2dp_source_prep_2_send:
.LFB62:
	.loc 1 1414 0
.LVL308:
	entry	sp, 48
.LCFI40:
	.loc 1 1416 0
	movi.n	a3, 0x1b
	bgeu	a3, a2, .L188
	.loc 1 1417 0
	mov.n	a2, a3
.LVL309:
.L188:
	.loc 1 1420 0
	l32r	a3, .LC168
	l32i.n	a10, a3, 12
	call8	fixed_queue_length
.LVL310:
	mov.n	a4, a2
	movi.n	a3, 0x1b
	sub	a2, a3, a2
.LVL311:
	mov.n	a3, a2
	bgeu	a2, a10, .L190
	.loc 1 1421 0
	l32r	a8, .LC169
	l8ui	a8, a8, 0
	bltui	a8, 2, .L190
	.loc 1 1421 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL312:
	mov.n	a5, a10
	l32r	a8, .LC168
	l32i.n	a10, a8, 12
	call8	fixed_queue_length
.LVL313:
	l32r	a11, .LC170
	s32i.n	a2, sp, 0
	mov.n	a15, a10
	mov.n	a14, a11
	mov.n	a13, a5
	l32r	a12, .LC172
	movi.n	a10, 2
	call8	esp_log_write
.LVL314:
	j	.L190
.L191:
	.loc 1 1426 0 is_stmt 1
	l32r	a8, .LC168
	l32i.n	a10, a8, 12
	call8	fixed_queue_try_dequeue
.LVL315:
	call8	free
.LVL316:
.L190:
	.loc 1 1425 0
	l32r	a8, .LC168
	l32i.n	a10, a8, 12
	call8	fixed_queue_length
.LVL317:
	bltu	a3, a10, .L191
	.loc 1 1431 0
	l32r	a2, .LC168
	l8ui	a2, a2, 0
	bnei	a2, 1, .L196
	.loc 1 1433 0
	mov.n	a10, a4
	call8	btc_media_aa_prep_sbc_2_send
.LVL318:
	.loc 1 1434 0
	retw.n
.L196:
	.loc 1 1437 0
	l32r	a2, .LC169
	l8ui	a2, a2, 0
	beqz.n	a2, .L187
	.loc 1 1437 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL319:
	l32r	a2, .LC168
	l8ui	a2, a2, 0
	l32r	a11, .LC170
	s32i.n	a2, sp, 0
	l32r	a15, .LC173
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC175
	movi.n	a10, 1
	call8	esp_log_write
.LVL320:
.L187:
	retw.n
.LFE62:
	.size	btc_a2dp_source_prep_2_send, .-btc_a2dp_source_prep_2_send
	.section	.text.btc_a2dp_source_send_aa_frame,"ax",@progbits
	.align	4
	.type	btc_a2dp_source_send_aa_frame, @function
btc_a2dp_source_send_aa_frame:
.LFB63:
	.loc 1 1452 0 is_stmt 1
	entry	sp, 32
.LCFI41:
	.loc 1 1456 0
	call8	btc_get_num_aa_frame
.LVL321:
	.loc 1 1458 0
	beqz.n	a10, .L198
	.loc 1 1460 0
	call8	btc_a2dp_source_prep_2_send
.LVL322:
.L198:
	.loc 1 1465 0
	movi.n	a10, 0x40
	call8	bta_av_ci_src_data_ready
.LVL323:
	retw.n
.LFE63:
	.size	btc_a2dp_source_send_aa_frame, .-btc_a2dp_source_send_aa_frame
	.section	.rodata.str1.4
	.align	4
.LC176:
	.string	"media task tx timer"
	.align	4
.LC182:
	.string	"\033[0;33mW (%d) %s: Media task Scheduled after Suspend\033[0m\n"
	.section	.text.btc_a2dp_source_handle_timer,"ax",@progbits
	.literal_position
	.literal .LC177, .LC176
	.literal .LC178, btc_a2dp_source_state
	.literal .LC179, btc_aa_src_cb
	.literal .LC180, appl_trace_level
	.literal .LC181, .LC10
	.literal .LC183, .LC182
	.align	4
	.type	btc_a2dp_source_handle_timer, @function
btc_a2dp_source_handle_timer:
.LFB64:
	.loc 1 1469 0
.LVL324:
	entry	sp, 32
.LCFI42:
	.loc 1 1470 0
	l32r	a10, .LC177
	call8	log_tstamps_us
.LVL325:
	.loc 1 1473 0
	l32r	a8, .LC178
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L199
	.loc 1 1477 0
	l32r	a8, .LC179
	l8ui	a8, a8, 2
	beqz.n	a8, .L201
	.loc 1 1478 0
	call8	btc_a2dp_source_send_aa_frame
.LVL326:
	retw.n
.L201:
	.loc 1 1480 0
	l32r	a8, .LC180
	l8ui	a8, a8, 0
	bltui	a8, 2, .L199
	.loc 1 1480 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL327:
	l32r	a11, .LC181
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC183
	movi.n	a10, 2
	call8	esp_log_write
.LVL328:
.L199:
	retw.n
.LFE64:
	.size	btc_a2dp_source_handle_timer, .-btc_a2dp_source_handle_timer
	.section	.text.btc_a2dp_source_task_handler,"ax",@progbits
	.literal_position
	.literal .LC184, btc_aa_src_queue_set
	.literal .LC185, btc_aa_src_data_queue
	.literal .LC186, btc_aa_src_ctrl_queue
	.align	4
	.type	btc_a2dp_source_task_handler, @function
btc_a2dp_source_task_handler:
.LFB33:
	.loc 1 285 0 is_stmt 1
.LVL329:
	entry	sp, 48
.LCFI43:
	.loc 1 287 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
.L203:
	.loc 1 289 0
	movi.n	a11, -1
	l32r	a8, .LC184
	l32i.n	a10, a8, 0
	call8	xQueueSelectFromSet
.LVL330:
	.loc 1 290 0
	l32r	a8, .LC185
	l32i.n	a8, a8, 0
	bne	a10, a8, .L204
.LBB17:
	.loc 1 292 0
	movi.n	a13, 0
	mov.n	a12, a13
	addi.n	a11, sp, 4
	call8	xQueueGenericReceive
.LVL331:
	.loc 1 293 0
	l32i.n	a8, sp, 4
	bnei	a8, 1, .L203
	.loc 1 294 0
	movi.n	a10, 0
	call8	btc_a2dp_source_handle_timer
.LVL332:
	j	.L203
.LVL333:
.L204:
.LBE17:
	.loc 1 296 0
	l32r	a8, .LC186
	l32i.n	a8, a8, 0
	bne	a10, a8, .L203
	.loc 1 297 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, sp
	call8	xQueueGenericReceive
.LVL334:
	.loc 1 298 0
	l32i.n	a10, sp, 0
	call8	btc_a2dp_source_ctrl_handler
.LVL335:
	.loc 1 299 0
	l32i.n	a10, sp, 0
	call8	free
.LVL336:
	j	.L203
.LFE33:
	.size	btc_a2dp_source_task_handler, .-btc_a2dp_source_task_handler
	.section	.bss.up_sampled_buffer$10940,"aw",@nobits
	.align	4
	.type	up_sampled_buffer$10940, @object
	.size	up_sampled_buffer$10940, 1024
up_sampled_buffer$10940:
	.zero	1024
	.section	.bss.read_buffer$10941,"aw",@nobits
	.align	4
	.type	read_buffer$10941, @object
	.size	read_buffer$10941, 512
read_buffer$10941:
	.zero	512
	.section	.rodata.__FUNCTION__$10874,"a",@progbits
	.align	4
	.type	__FUNCTION__$10874, @object
	.size	__FUNCTION__$10874, 31
__FUNCTION__$10874:
	.string	"btc_a2dp_source_encoder_update"
	.section	.rodata.__func__$10798,"a",@progbits
	.align	4
	.type	__func__$10798, @object
	.size	__func__$10798, 25
__func__$10798:
	.string	"btc_a2dp_source_shutdown"
	.section	.rodata.__FUNCTION__$10889,"a",@progbits
	.align	4
	.type	__FUNCTION__$10889, @object
	.size	__FUNCTION__$10889, 27
__FUNCTION__$10889:
	.string	"btc_a2dp_source_enc_update"
	.section	.rodata.__func__$10994,"a",@progbits
	.align	4
	.type	__func__$10994, @object
	.size	__func__$10994, 28
__func__$10994:
	.string	"btc_a2dp_source_aa_start_tx"
	.section	.rodata.__func__$10976,"a",@progbits
	.align	4
	.type	__func__$10976, @object
	.size	__func__$10976, 28
__func__$10976:
	.string	"btc_a2dp_source_prep_2_send"
	.section	.rodata.__FUNCTION__$10929,"a",@progbits
	.align	4
	.type	__FUNCTION__$10929, @object
	.size	__FUNCTION__$10929, 21
__FUNCTION__$10929:
	.string	"btc_get_num_aa_frame"
	.section	.rodata.__func__$10794,"a",@progbits
	.align	4
	.type	__func__$10794, @object
	.size	__func__$10794, 24
__func__$10794:
	.string	"btc_a2dp_source_startup"
	.section	.rodata.__FUNCTION__$10792,"a",@progbits
	.align	4
	.type	__FUNCTION__$10792, @object
	.size	__FUNCTION__$10792, 24
__FUNCTION__$10792:
	.string	"btc_a2dp_source_startup"
	.section	.bss.last_frame_us,"aw",@nobits
	.align	8
	.type	last_frame_us, @object
	.size	last_frame_us, 8
last_frame_us:
	.zero	8
	.section	.bss.btc_aa_src_data_cb,"aw",@nobits
	.align	4
	.type	btc_aa_src_data_cb, @object
	.size	btc_aa_src_data_cb, 4
btc_aa_src_data_cb:
	.zero	4
	.section	.bss.btc_aa_src_queue_set,"aw",@nobits
	.align	4
	.type	btc_aa_src_queue_set, @object
	.size	btc_aa_src_queue_set, 4
btc_aa_src_queue_set:
	.zero	4
	.section	.bss.btc_aa_src_ctrl_queue,"aw",@nobits
	.align	4
	.type	btc_aa_src_ctrl_queue, @object
	.size	btc_aa_src_ctrl_queue, 4
btc_aa_src_ctrl_queue:
	.zero	4
	.section	.bss.btc_aa_src_data_queue,"aw",@nobits
	.align	4
	.type	btc_aa_src_data_queue, @object
	.size	btc_aa_src_data_queue, 4
btc_aa_src_data_queue:
	.zero	4
	.section	.bss.btc_aa_src_task_hdl,"aw",@nobits
	.align	4
	.type	btc_aa_src_task_hdl, @object
	.size	btc_aa_src_task_hdl, 4
btc_aa_src_task_hdl:
	.zero	4
	.section	.bss.btc_a2dp_source_future,"aw",@nobits
	.align	4
	.type	btc_a2dp_source_future, @object
	.size	btc_a2dp_source_future, 4
btc_a2dp_source_future:
	.zero	4
	.section	.bss.btc_a2dp_source_state,"aw",@nobits
	.align	4
	.type	btc_a2dp_source_state, @object
	.size	btc_a2dp_source_state, 4
btc_a2dp_source_state:
	.zero	4
	.section	.bss.btc_aa_src_cb,"aw",@nobits
	.align	4
	.type	btc_aa_src_cb, @object
	.size	btc_aa_src_cb, 1736
btc_aa_src_cb:
	.zero	1736
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
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI0-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI1-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI2-.LFB59
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI3-.LFB66
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI4-.LFB69
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI5-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI6-.LFB70
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI7-.LFB71
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI8-.LFB67
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI9-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI10-.LFB65
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI11-.LFB31
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI12-.LFB68
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI13-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI14-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI15-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI16-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI17-.LFB55
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI18-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI19-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI20-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI21-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI22-.LFB34
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI23-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI24-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI25-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI26-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI27-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI28-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI29-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI30-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI31-.LFB52
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI32-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI33-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI34-.LFB43
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI35-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI36-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI37-.LFB53
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI38-.LFB60
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI39-.LFB61
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI40-.LFB62
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI41-.LFB63
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI42-.LFB64
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI43-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE86:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/alarm.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/thread.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/a2d_sbc.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_api.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_av_api.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_a2dp_api.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_source.h"
	.file 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/include/sbc_types.h"
	.file 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/encoder/include/sbc_encoder.h"
	.file 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/semaphore.h"
	.file 25 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/future.h"
	.file 26 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 27 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_control.h"
	.file 28 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 29 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_av.h"
	.file 30 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 31 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/include/btc_av_co.h"
	.file 32 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/mutex.h"
	.file 33 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_sbc.h"
	.file 34 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_ci.h"
	.file 35 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2776
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF369
	.byte	0xc
	.4byte	.LASF370
	.4byte	.LASF371
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1e
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x39
	.4byte	0x82
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x22
	.4byte	0x9f
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x23
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x24
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x28
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x29
	.4byte	0x10d
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x159
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x4
	.byte	0xc7
	.4byte	0x9f
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0x9f
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0xc9
	.4byte	0x9f
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x4
	.byte	0xca
	.4byte	0x9f
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0xcb
	.4byte	0x159
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x94
	.4byte	0x168
	.uleb128 0x9
	.4byte	0x168
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0xcc
	.4byte	0x114
	.uleb128 0x8
	.4byte	0xcb
	.4byte	0x18a
	.uleb128 0xa
	.4byte	0x168
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF30
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF31
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF32
	.uleb128 0xb
	.byte	0x4
	.4byte	0x190
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0x7a
	.4byte	0x199
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x11d
	.4byte	0x199
	.uleb128 0xe
	.byte	0x4
	.4byte	0x74
	.byte	0xf
	.byte	0x1f
	.4byte	0x1f5
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x11
	.4byte	0x21a
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x6
	.byte	0x12
	.4byte	0x1ad
	.byte	0
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x6
	.byte	0x13
	.4byte	0x1b8
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x7
	.byte	0x19
	.4byte	0x225
	.uleb128 0x11
	.4byte	.LASF55
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x8
	.byte	0x6f
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x8
	.byte	0x76
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x9
	.byte	0x58
	.4byte	0x197
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x9
	.byte	0x5f
	.4byte	0x197
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x66
	.4byte	0x197
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0xa
	.byte	0x6b
	.4byte	0x197
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x10
	.byte	0xb
	.byte	0x1c
	.4byte	0x2a8
	.uleb128 0x7
	.string	"sig"
	.byte	0xb
	.byte	0x1d
	.4byte	0xb5
	.byte	0
	.uleb128 0x7
	.string	"par"
	.byte	0xb
	.byte	0x1e
	.4byte	0x197
	.byte	0x4
	.uleb128 0x7
	.string	"cb"
	.byte	0xb
	.byte	0x1f
	.4byte	0x197
	.byte	0x8
	.uleb128 0x7
	.string	"arg"
	.byte	0xb
	.byte	0x20
	.4byte	0x197
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xb
	.byte	0x22
	.4byte	0x26c
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0xc
	.byte	0x4f
	.4byte	0x240
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0xd
	.byte	0x1f
	.4byte	0x2c9
	.uleb128 0x11
	.4byte	.LASF54
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2be
	.uleb128 0x5
	.byte	0x7
	.byte	0xe
	.byte	0x4d
	.4byte	0x331
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xe
	.byte	0x4e
	.4byte	0xcb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0xe
	.byte	0x4f
	.4byte	0xcb
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0xe
	.byte	0x50
	.4byte	0xcb
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0xe
	.byte	0x51
	.4byte	0xcb
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0xe
	.byte	0x52
	.4byte	0xcb
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0xe
	.byte	0x53
	.4byte	0xcb
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0xe
	.byte	0x54
	.4byte	0xcb
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xe
	.byte	0x55
	.4byte	0x2d4
	.uleb128 0xb
	.byte	0x4
	.4byte	0x16f
	.uleb128 0x12
	.byte	0x4
	.4byte	0x74
	.byte	0x10
	.2byte	0x1c0
	.4byte	0x46a
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x9
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0xb
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0xd
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0xe
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0xf
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x11
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x13
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x15
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0x17
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x19
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0x1a
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0x1b
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x1d
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x1e
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x1f
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0x21
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x22
	.uleb128 0xf
	.4byte	.LASF99
	.byte	0x23
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0x25
	.uleb128 0xf
	.4byte	.LASF102
	.byte	0x26
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0x27
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0x29
	.uleb128 0xf
	.4byte	.LASF106
	.byte	0x2a
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0x2b
	.uleb128 0xf
	.4byte	.LASF108
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0x2d
	.uleb128 0xf
	.4byte	.LASF110
	.byte	0x2e
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x74
	.byte	0x10
	.2byte	0x6ea
	.4byte	0x4a2
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF114
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF117
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x11
	.byte	0x36
	.4byte	0xcb
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x11
	.byte	0x4f
	.4byte	0xcb
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0x11
	.byte	0x53
	.4byte	0xcb
	.uleb128 0x13
	.byte	0x4
	.byte	0x11
	.2byte	0x158
	.4byte	0x507
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x11
	.2byte	0x159
	.4byte	0x4b3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x11
	.2byte	0x15a
	.4byte	0x4be
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x11
	.2byte	0x15b
	.4byte	0x102
	.byte	0x2
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x11
	.2byte	0x15c
	.4byte	0x4a8
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF125
	.byte	0x11
	.2byte	0x15d
	.4byte	0x4c9
	.uleb128 0x8
	.4byte	0x190
	.4byte	0x523
	.uleb128 0xa
	.4byte	0x168
	.byte	0x22
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x12
	.byte	0x2c
	.4byte	0xcb
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x12
	.byte	0x9f
	.4byte	0xcb
	.uleb128 0x5
	.byte	0x6
	.byte	0x12
	.byte	0xb3
	.4byte	0x566
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0x12
	.byte	0xb4
	.4byte	0xd6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x12
	.byte	0xb5
	.4byte	0xd6
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0x12
	.byte	0xb6
	.4byte	0xcb
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x12
	.byte	0xb7
	.4byte	0x539
	.uleb128 0x15
	.byte	0x6
	.byte	0x12
	.byte	0xb9
	.4byte	0x585
	.uleb128 0x16
	.string	"pcm"
	.byte	0x12
	.byte	0xba
	.4byte	0x566
	.byte	0
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x12
	.byte	0xbb
	.4byte	0x571
	.uleb128 0x5
	.byte	0x8
	.byte	0x12
	.byte	0xbd
	.4byte	0x5b1
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0x12
	.byte	0xbe
	.4byte	0x523
	.byte	0
	.uleb128 0x7
	.string	"cfg"
	.byte	0x12
	.byte	0xbf
	.4byte	0x585
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x12
	.byte	0xc0
	.4byte	0x590
	.uleb128 0xe
	.byte	0x4
	.4byte	0x74
	.byte	0x13
	.byte	0x47
	.4byte	0x5db
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x13
	.byte	0x9e
	.4byte	0x5e6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5ec
	.uleb128 0x17
	.4byte	0xaa
	.4byte	0x600
	.uleb128 0x18
	.4byte	0x4a2
	.uleb128 0x18
	.4byte	0xaa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x14
	.byte	0x38
	.4byte	0x62
	.uleb128 0x5
	.byte	0x10
	.byte	0x15
	.byte	0x24
	.4byte	0x668
	.uleb128 0x7
	.string	"hdr"
	.byte	0x15
	.byte	0x25
	.4byte	0x16f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF140
	.byte	0x15
	.byte	0x26
	.4byte	0xd6
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF141
	.byte	0x15
	.byte	0x27
	.4byte	0xcb
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF142
	.byte	0x15
	.byte	0x28
	.4byte	0xcb
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF143
	.byte	0x15
	.byte	0x29
	.4byte	0xcb
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF144
	.byte	0x15
	.byte	0x2a
	.4byte	0xcb
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF145
	.byte	0x15
	.byte	0x2b
	.4byte	0xd6
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x15
	.byte	0x2c
	.4byte	0x60b
	.uleb128 0x5
	.byte	0xc
	.byte	0x15
	.byte	0x2f
	.4byte	0x6ac
	.uleb128 0x7
	.string	"hdr"
	.byte	0x15
	.byte	0x30
	.4byte	0x16f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF147
	.byte	0x15
	.byte	0x31
	.4byte	0xd6
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF148
	.byte	0x15
	.byte	0x32
	.4byte	0xcb
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF149
	.byte	0x15
	.byte	0x33
	.4byte	0xcb
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0x15
	.byte	0x34
	.4byte	0x673
	.uleb128 0x5
	.byte	0x12
	.byte	0x15
	.byte	0x37
	.4byte	0x6e4
	.uleb128 0x7
	.string	"hdr"
	.byte	0x15
	.byte	0x38
	.4byte	0x16f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x15
	.byte	0x39
	.4byte	0x52e
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF152
	.byte	0x15
	.byte	0x3a
	.4byte	0x5b1
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0x15
	.byte	0x3b
	.4byte	0x6b7
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0x16
	.byte	0x24
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0x16
	.byte	0x25
	.4byte	0x199
	.uleb128 0x19
	.4byte	.LASF156
	.2byte	0x694
	.byte	0x17
	.byte	0x9a
	.4byte	0x816
	.uleb128 0x6
	.4byte	.LASF157
	.byte	0x17
	.byte	0x9b
	.4byte	0x6ef
	.byte	0
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0x17
	.byte	0x9c
	.4byte	0x6ef
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF159
	.byte	0x17
	.byte	0x9d
	.4byte	0x6ef
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF160
	.byte	0x17
	.byte	0x9e
	.4byte	0x6ef
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF161
	.byte	0x17
	.byte	0x9f
	.4byte	0x6ef
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF162
	.byte	0x17
	.byte	0xa0
	.4byte	0x6ef
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF163
	.byte	0x17
	.byte	0xa1
	.4byte	0x6ef
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF164
	.byte	0x17
	.byte	0xa3
	.4byte	0xd6
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF165
	.byte	0x17
	.byte	0xa4
	.4byte	0xcb
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF166
	.byte	0x17
	.byte	0xa6
	.4byte	0x816
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF167
	.byte	0x17
	.byte	0xa9
	.4byte	0x6ef
	.byte	0x22
	.uleb128 0x6
	.4byte	.LASF168
	.byte	0x17
	.byte	0xaa
	.4byte	0x826
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF169
	.byte	0x17
	.byte	0xac
	.4byte	0x836
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF170
	.byte	0x17
	.byte	0xb0
	.4byte	0x83c
	.byte	0x48
	.uleb128 0x1a
	.4byte	.LASF171
	.byte	0x17
	.byte	0xb3
	.4byte	0x826
	.2byte	0x248
	.uleb128 0x1a
	.4byte	.LASF172
	.byte	0x17
	.byte	0xb5
	.4byte	0x84c
	.2byte	0x268
	.uleb128 0x1a
	.4byte	.LASF173
	.byte	0x17
	.byte	0xb7
	.4byte	0x826
	.2byte	0x668
	.uleb128 0x1a
	.4byte	.LASF174
	.byte	0x17
	.byte	0xb9
	.4byte	0x18a
	.2byte	0x688
	.uleb128 0x1a
	.4byte	.LASF175
	.byte	0x17
	.byte	0xba
	.4byte	0x18a
	.2byte	0x68c
	.uleb128 0x1a
	.4byte	.LASF176
	.byte	0x17
	.byte	0xbb
	.4byte	0xd6
	.2byte	0x690
	.uleb128 0x1a
	.4byte	.LASF177
	.byte	0x17
	.byte	0xbc
	.4byte	0xd6
	.2byte	0x692
	.byte	0
	.uleb128 0x8
	.4byte	0x6ef
	.4byte	0x826
	.uleb128 0xa
	.4byte	0x168
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x6ef
	.4byte	0x836
	.uleb128 0xa
	.4byte	0x168
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6ef
	.uleb128 0x8
	.4byte	0x6ef
	.4byte	0x84c
	.uleb128 0xa
	.4byte	0x168
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	0x6fa
	.4byte	0x85c
	.uleb128 0xa
	.4byte	0x168
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0x17
	.byte	0xbe
	.4byte	0x705
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0x18
	.byte	0x1d
	.4byte	0x2b3
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0xc
	.byte	0x19
	.byte	0x18
	.4byte	0x8a3
	.uleb128 0x6
	.4byte	.LASF181
	.byte	0x19
	.byte	0x19
	.4byte	0x10d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0x19
	.byte	0x1a
	.4byte	0x867
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF183
	.byte	0x19
	.byte	0x1b
	.4byte	0x197
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF184
	.byte	0x19
	.byte	0x1d
	.4byte	0x872
	.uleb128 0xe
	.byte	0x4
	.4byte	0x74
	.byte	0x1
	.byte	0x3a
	.4byte	0x8eb
	.uleb128 0xf
	.4byte	.LASF185
	.byte	0
	.uleb128 0xf
	.4byte	.LASF186
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF187
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF188
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF189
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF191
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF192
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x74
	.byte	0x1
	.byte	0x45
	.4byte	0x90a
	.uleb128 0xf
	.4byte	.LASF193
	.byte	0
	.uleb128 0xf
	.4byte	.LASF194
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF195
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x74
	.byte	0x1
	.byte	0x4b
	.4byte	0x91d
	.uleb128 0xf
	.4byte	.LASF196
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x14
	.byte	0x1
	.byte	0x89
	.4byte	0x962
	.uleb128 0x6
	.4byte	.LASF197
	.byte	0x1
	.byte	0x8a
	.4byte	0xe1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF198
	.byte	0x1
	.byte	0x8b
	.4byte	0xf7
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF199
	.byte	0x1
	.byte	0x8c
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF200
	.byte	0x1
	.byte	0x8d
	.4byte	0xe1
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0x1
	.byte	0x8e
	.4byte	0xe1
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF202
	.byte	0x1
	.byte	0x8f
	.4byte	0x91d
	.uleb128 0x15
	.byte	0x14
	.byte	0x1
	.byte	0x91
	.4byte	0x981
	.uleb128 0x16
	.string	"pcm"
	.byte	0x1
	.byte	0x92
	.4byte	0x962
	.byte	0
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0x1
	.byte	0x93
	.4byte	0x96d
	.uleb128 0x1b
	.2byte	0x6c8
	.byte	0x1
	.byte	0x95
	.4byte	0xa1b
	.uleb128 0x6
	.4byte	.LASF204
	.byte	0x1
	.byte	0x96
	.4byte	0xcb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF205
	.byte	0x1
	.byte	0x97
	.4byte	0x102
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF206
	.byte	0x1
	.byte	0x98
	.4byte	0x102
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF207
	.byte	0x1
	.byte	0x99
	.4byte	0xd6
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF208
	.byte	0x1
	.byte	0x9a
	.4byte	0xe1
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF209
	.byte	0x1
	.byte	0x9b
	.4byte	0x2ce
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x1
	.byte	0x9c
	.4byte	0x52e
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF210
	.byte	0x1
	.byte	0x9d
	.4byte	0x981
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF211
	.byte	0x1
	.byte	0x9e
	.4byte	0x5b1
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF212
	.byte	0x1
	.byte	0x9f
	.4byte	0x85c
	.byte	0x30
	.uleb128 0x1a
	.4byte	.LASF213
	.byte	0x1
	.byte	0xa0
	.4byte	0xa1b
	.2byte	0x6c4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x21a
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x1
	.byte	0xa1
	.4byte	0x98c
	.uleb128 0x1c
	.4byte	.LASF372
	.byte	0x1
	.byte	0xc4
	.4byte	0xb5
	.byte	0x3
	.4byte	0xa53
	.uleb128 0x1d
	.4byte	.LASF27
	.byte	0x1
	.byte	0xc4
	.4byte	0x4a2
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0xc4
	.4byte	0xaa
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x1c9
	.4byte	0xec
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa92
	.uleb128 0x20
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x1f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LVL0
	.4byte	0x2559
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x1d6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad8
	.uleb128 0x24
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x1a7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x1d8
	.4byte	0xec
	.uleb128 0x25
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1d9
	.4byte	0xad8
	.uleb128 0x26
	.4byte	.LVL2
	.4byte	0xa53
	.byte	0
	.uleb128 0x27
	.4byte	0xec
	.uleb128 0x28
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x44e
	.4byte	0xcb
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbdb
	.uleb128 0x29
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x450
	.4byte	0xcb
	.4byte	.LLST0
	.uleb128 0x2a
	.4byte	.LASF220
	.4byte	0xbeb
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10929
	.uleb128 0x2b
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xba7
	.uleb128 0x29
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x454
	.4byte	0xe1
	.4byte	.LLST1
	.uleb128 0x29
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x459
	.4byte	0xe1
	.4byte	.LLST2
	.uleb128 0x29
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x45a
	.4byte	0xec
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LVL5
	.4byte	0xa53
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0x2564
	.uleb128 0x21
	.4byte	.LVL11
	.4byte	0x256f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10929
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL16
	.4byte	0x2564
	.uleb128 0x21
	.4byte	.LVL17
	.4byte	0x256f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x190
	.4byte	0xbeb
	.uleb128 0xa
	.4byte	0x168
	.byte	0x14
	.byte	0
	.uleb128 0x27
	.4byte	0xbdb
	.uleb128 0x2c
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x5db
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x645
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc54
	.uleb128 0x2d
	.string	"p_q"
	.byte	0x1
	.2byte	0x645
	.4byte	0x2ce
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LVL20
	.4byte	0x257a
	.4byte	0xc3a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL21
	.4byte	0x2585
	.uleb128 0x21
	.4byte	.LVL22
	.4byte	0x2590
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x438
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcaf
	.uleb128 0x2f
	.4byte	.LASF220
	.4byte	0xcbf
	.uleb128 0x30
	.4byte	0xa2c
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x1
	.2byte	0x442
	.4byte	0xca5
	.uleb128 0x31
	.4byte	0xa47
	.sleb128 -1
	.uleb128 0x32
	.4byte	0xa3c
	.byte	0
	.uleb128 0x33
	.4byte	.LVL24
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL23
	.4byte	0xc02
	.byte	0
	.uleb128 0x8
	.4byte	0x190
	.4byte	0xcbf
	.uleb128 0xa
	.4byte	0x168
	.byte	0x1b
	.byte	0
	.uleb128 0x27
	.4byte	0xcaf
	.uleb128 0x23
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x64c
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd31
	.uleb128 0x34
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x64c
	.4byte	0x197
	.4byte	.LLST4
	.uleb128 0x2f
	.4byte	.LASF228
	.4byte	0xd31
	.uleb128 0x2e
	.4byte	.LVL27
	.4byte	0x259b
	.4byte	0xd13
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x6c8
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL28
	.4byte	0x25a4
	.4byte	0xd27
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.uleb128 0x26
	.4byte	.LVL29
	.4byte	0x25af
	.byte	0
	.uleb128 0x27
	.4byte	0xcaf
	.uleb128 0x23
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x658
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd91
	.uleb128 0x34
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x658
	.4byte	0x197
	.4byte	.LLST5
	.uleb128 0x2e
	.4byte	.LVL31
	.4byte	0x25ba
	.4byte	0xd6f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL33
	.4byte	0x25c5
	.uleb128 0x26
	.4byte	.LVL34
	.4byte	0x25d0
	.uleb128 0x21
	.4byte	.LVL35
	.4byte	0x25db
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x5f5
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe5e
	.uleb128 0x2a
	.4byte	.LASF228
	.4byte	0xe5e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10994
	.uleb128 0x26
	.4byte	.LVL36
	.4byte	0xbf0
	.uleb128 0x2e
	.4byte	.LVL37
	.4byte	0x25e6
	.4byte	0xdef
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x602
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10994
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL38
	.4byte	0x25f1
	.4byte	0xe14
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_a2dp_source_alarm_cb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL39
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL40
	.4byte	0x256f
	.4byte	0xe54
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10994
	.byte	0
	.uleb128 0x26
	.4byte	.LVL41
	.4byte	0x25fc
	.byte	0
	.uleb128 0x27
	.4byte	0xcaf
	.uleb128 0x23
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x1c2
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea2
	.uleb128 0x24
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1c2
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LVL43
	.4byte	0x2607
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x5cd
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed6
	.uleb128 0x24
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x5cd
	.4byte	0x197
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LVL45
	.4byte	0xe63
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF234
	.byte	0x1
	.byte	0xe7
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf81
	.uleb128 0x36
	.string	"sig"
	.byte	0x1
	.byte	0xe7
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.string	"par"
	.byte	0x1
	.byte	0xe7
	.4byte	0x197
	.4byte	.LLST6
	.uleb128 0x38
	.string	"evt"
	.byte	0x1
	.byte	0xe9
	.4byte	0xf81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.4byte	.LVL47
	.4byte	0x2613
	.4byte	0xf28
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL49
	.4byte	0x2607
	.4byte	0xf47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL50
	.4byte	0x2564
	.uleb128 0x21
	.4byte	.LVL51
	.4byte	0x256f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2a8
	.uleb128 0x23
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x617
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe5
	.uleb128 0x2f
	.4byte	.LASF228
	.4byte	0xff5
	.uleb128 0x29
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x61b
	.4byte	0xffa
	.4byte	.LLST7
	.uleb128 0x26
	.4byte	.LVL53
	.4byte	0x261e
	.uleb128 0x26
	.4byte	.LVL54
	.4byte	0x2629
	.uleb128 0x2e
	.4byte	.LVL55
	.4byte	0x2634
	.4byte	0xfdb
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL57
	.4byte	0xbf0
	.byte	0
	.uleb128 0x8
	.4byte	0x190
	.4byte	0xff5
	.uleb128 0xa
	.4byte	0x168
	.byte	0x1a
	.byte	0
	.uleb128 0x27
	.4byte	0xfe5
	.uleb128 0x27
	.4byte	0x10d
	.uleb128 0x23
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x3d0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1050
	.uleb128 0x24
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x3d0
	.4byte	0x1050
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x3d2
	.4byte	0x102
	.4byte	.LLST8
	.uleb128 0x2f
	.4byte	.LASF220
	.4byte	0x1066
	.uleb128 0x21
	.4byte	.LVL68
	.4byte	0x263f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_cb+48
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6e4
	.uleb128 0x8
	.4byte	0x190
	.4byte	0x1066
	.uleb128 0xa
	.4byte	0x168
	.byte	0x1c
	.byte	0
	.uleb128 0x27
	.4byte	0x1056
	.uleb128 0x23
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x418
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ee
	.uleb128 0x24
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x418
	.4byte	0x33c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x41a
	.4byte	0x1050
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LASF220
	.4byte	0x10ee
	.uleb128 0x2e
	.4byte	.LVL71
	.4byte	0xfff
	.4byte	0x10ba
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL72
	.4byte	0x2564
	.uleb128 0x21
	.4byte	.LVL73
	.4byte	0x256f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x513
	.uleb128 0x28
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x2ab
	.4byte	0xd6
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1127
	.uleb128 0x29
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x2ad
	.4byte	0xd6
	.4byte	.LLST9
	.uleb128 0x26
	.4byte	.LVL75
	.4byte	0x264a
	.byte	0
	.uleb128 0x23
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x314
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x117a
	.uleb128 0x34
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x314
	.4byte	0x33c
	.4byte	.LLST10
	.uleb128 0x29
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x316
	.4byte	0x117a
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	.LVL79
	.4byte	0x10f3
	.uleb128 0x21
	.4byte	.LVL81
	.4byte	0x263f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_cb+48
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x668
	.uleb128 0x23
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x343
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1378
	.uleb128 0x34
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x343
	.4byte	0x33c
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x345
	.4byte	0x1378
	.4byte	.LLST13
	.uleb128 0x29
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x346
	.4byte	0x137e
	.4byte	.LLST14
	.uleb128 0x29
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x347
	.4byte	0xd6
	.4byte	.LLST15
	.uleb128 0x29
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x348
	.4byte	0x6ef
	.4byte	.LLST16
	.uleb128 0x29
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x349
	.4byte	0x6ef
	.4byte	.LLST17
	.uleb128 0x29
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x34a
	.4byte	0x6ef
	.4byte	.LLST18
	.uleb128 0x29
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x34b
	.4byte	0xcb
	.4byte	.LLST19
	.uleb128 0x2a
	.4byte	.LASF220
	.4byte	0x1384
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10889
	.uleb128 0x2b
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x1286
	.uleb128 0x29
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x3aa
	.4byte	0xd6
	.4byte	.LLST20
	.uleb128 0x26
	.4byte	.LVL111
	.4byte	0x2564
	.uleb128 0x21
	.4byte	.LVL112
	.4byte	0x256f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC84
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10889
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL84
	.4byte	0x10f3
	.uleb128 0x26
	.4byte	.LVL87
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL88
	.4byte	0x256f
	.4byte	0x12cf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC80
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10889
	.byte	0
	.uleb128 0x26
	.4byte	.LVL89
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL92
	.4byte	0x256f
	.4byte	0x1324
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC82
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10889
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL121
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL122
	.4byte	0x256f
	.4byte	0x1364
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC86
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10889
	.byte	0
	.uleb128 0x21
	.4byte	.LVL124
	.4byte	0x263f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_cb+48
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6ac
	.uleb128 0xb
	.byte	0x4
	.4byte	0x85c
	.uleb128 0x27
	.4byte	0xfe5
	.uleb128 0x35
	.4byte	.LASF254
	.byte	0x1
	.byte	0xf6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1446
	.uleb128 0x36
	.string	"e"
	.byte	0x1
	.byte	0xf6
	.4byte	0xf81
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LVL126
	.4byte	0xcc4
	.4byte	0x13bc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL127
	.4byte	0xd36
	.4byte	0x13cf
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL128
	.4byte	0xd91
	.uleb128 0x26
	.4byte	.LVL129
	.4byte	0xf87
	.uleb128 0x26
	.4byte	.LVL130
	.4byte	0x1127
	.uleb128 0x26
	.4byte	.LVL131
	.4byte	0x1180
	.uleb128 0x26
	.4byte	.LVL132
	.4byte	0x106b
	.uleb128 0x26
	.4byte	.LVL133
	.4byte	0xc54
	.uleb128 0x26
	.4byte	.LVL134
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL135
	.4byte	0x256f
	.4byte	0x143c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC92
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x26
	.4byte	.LVL136
	.4byte	0x2585
	.byte	0
	.uleb128 0x39
	.4byte	.LASF258
	.byte	0x1
	.byte	0xbe
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1469
	.uleb128 0x3a
	.4byte	.LASF255
	.byte	0x1
	.byte	0xbe
	.4byte	0x5db
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF256
	.byte	0x1
	.byte	0xdd
	.4byte	0x10d
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.4byte	.LASF257
	.byte	0x1
	.byte	0xe2
	.4byte	0x10d
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x130
	.4byte	0x10d
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16d2
	.uleb128 0x2a
	.4byte	.LASF220
	.4byte	0x16e2
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10792
	.uleb128 0x3d
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x152
	.4byte	.L103
	.uleb128 0x2a
	.4byte	.LASF228
	.4byte	0x16e7
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10794
	.uleb128 0x26
	.4byte	.LVL138
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL139
	.4byte	0x256f
	.4byte	0x150e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC100
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL140
	.4byte	0x2655
	.4byte	0x1521
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL141
	.4byte	0x2661
	.4byte	0x1551
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC105
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10792
	.byte	0
	.uleb128 0x26
	.4byte	.LVL142
	.4byte	0x266c
	.uleb128 0x2e
	.4byte	.LVL143
	.4byte	0x2677
	.4byte	0x1577
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL144
	.4byte	0x2661
	.4byte	0x15a7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC105
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10792
	.byte	0
	.uleb128 0x26
	.4byte	.LVL145
	.4byte	0x266c
	.uleb128 0x26
	.4byte	.LVL146
	.4byte	0x2683
	.uleb128 0x2e
	.4byte	.LVL147
	.4byte	0x2677
	.4byte	0x15d6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL148
	.4byte	0x2661
	.4byte	0x1606
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC105
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x140
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10792
	.byte	0
	.uleb128 0x26
	.4byte	.LVL149
	.4byte	0x266c
	.uleb128 0x26
	.4byte	.LVL150
	.4byte	0x2683
	.uleb128 0x2e
	.4byte	.LVL151
	.4byte	0x268f
	.4byte	0x1655
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_a2dp_source_task_handler
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC111
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa00
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL152
	.4byte	0xed6
	.4byte	0x166d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL153
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL154
	.4byte	0x256f
	.4byte	0x16ad
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC115
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10794
	.byte	0
	.uleb128 0x26
	.4byte	.LVL155
	.4byte	0x269b
	.uleb128 0x26
	.4byte	.LVL156
	.4byte	0x26a7
	.uleb128 0x26
	.4byte	.LVL157
	.4byte	0x26a7
	.uleb128 0x26
	.4byte	.LVL158
	.4byte	0x26a7
	.byte	0
	.uleb128 0x8
	.4byte	0x190
	.4byte	0x16e2
	.uleb128 0xa
	.4byte	0x168
	.byte	0x17
	.byte	0
	.uleb128 0x27
	.4byte	0x16d2
	.uleb128 0x27
	.4byte	0x16d2
	.uleb128 0x3e
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x169
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1790
	.uleb128 0x2a
	.4byte	.LASF228
	.4byte	0x17a0
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10798
	.uleb128 0x26
	.4byte	.LVL159
	.4byte	0x26b3
	.uleb128 0x2e
	.4byte	.LVL160
	.4byte	0x25e6
	.4byte	0x174a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x170
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10798
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC119
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL161
	.4byte	0xed6
	.4byte	0x1762
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL162
	.4byte	0x26be
	.uleb128 0x26
	.4byte	.LVL163
	.4byte	0x269b
	.uleb128 0x26
	.4byte	.LVL164
	.4byte	0x26a7
	.uleb128 0x26
	.4byte	.LVL165
	.4byte	0x26a7
	.uleb128 0x26
	.4byte	.LVL166
	.4byte	0x26a7
	.byte	0
	.uleb128 0x8
	.4byte	0x190
	.4byte	0x17a0
	.uleb128 0xa
	.4byte	0x168
	.byte	0x18
	.byte	0
	.uleb128 0x27
	.4byte	0x1790
	.uleb128 0x3e
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x1e0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17ca
	.uleb128 0x24
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x102
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x219
	.4byte	0x33c
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17ee
	.uleb128 0x26
	.4byte	.LVL168
	.4byte	0x257a
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x22a
	.4byte	0x102
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x181d
	.uleb128 0x21
	.4byte	.LVL169
	.4byte	0xed6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x239
	.4byte	0x102
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x184c
	.uleb128 0x21
	.4byte	.LVL170
	.4byte	0xed6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x187
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x186c
	.uleb128 0x26
	.4byte	.LVL171
	.4byte	0x181d
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1b0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18af
	.uleb128 0x34
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x18af
	.4byte	.LLST21
	.uleb128 0x2e
	.4byte	.LVL174
	.4byte	0x2634
	.4byte	0x18a5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.4byte	.LVL175
	.4byte	0x181d
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x507
	.uleb128 0x3c
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x254
	.4byte	0x102
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1935
	.uleb128 0x34
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x254
	.4byte	0x117a
	.4byte	.LLST22
	.uleb128 0x20
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x256
	.4byte	0x117a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LVL177
	.4byte	0x2613
	.4byte	0x1900
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL179
	.4byte	0x26c9
	.4byte	0x191f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x21
	.4byte	.LVL180
	.4byte	0xed6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x2b7
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a44
	.uleb128 0x20
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x2b9
	.4byte	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3f
	.string	"msg"
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x668
	.uleb128 0x3
	.byte	0x91
	.sleb128 -94
	.uleb128 0x20
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x2bb
	.4byte	0x331
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x20
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x2be
	.4byte	0x1a44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x20
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x1a44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x1a44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x2f
	.4byte	.LASF220
	.4byte	0x1a54
	.uleb128 0x2e
	.4byte	.LVL184
	.4byte	0x26c9
	.4byte	0x19d3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL185
	.4byte	0x26c9
	.4byte	0x19f6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL186
	.4byte	0x26c9
	.4byte	0x1a16
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL187
	.4byte	0x26d2
	.4byte	0x1a32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x21
	.4byte	.LVL188
	.4byte	0x18b5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -94
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd6
	.4byte	0x1a54
	.uleb128 0xa
	.4byte	0x168
	.byte	0x4
	.byte	0
	.uleb128 0x27
	.4byte	0x1056
	.uleb128 0x3c
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x26b
	.4byte	0x102
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ad9
	.uleb128 0x34
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x26b
	.4byte	0x1378
	.4byte	.LLST23
	.uleb128 0x20
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x26d
	.4byte	0x1378
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LVL190
	.4byte	0x2613
	.4byte	0x1aa4
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL192
	.4byte	0x26c9
	.4byte	0x1ac3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x21
	.4byte	.LVL193
	.4byte	0xed6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x280
	.4byte	0x102
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b59
	.uleb128 0x34
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x280
	.4byte	0x1050
	.4byte	.LLST24
	.uleb128 0x20
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x282
	.4byte	0x1050
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.4byte	.LVL198
	.4byte	0x2613
	.4byte	0x1b24
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL200
	.4byte	0x26c9
	.4byte	0x1b43
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x21
	.4byte	.LVL201
	.4byte	0xed6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x1f0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf0
	.uleb128 0x20
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x600
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x1bc3
	.uleb128 0x20
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x200
	.4byte	0x6e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.4byte	.LVL207
	.4byte	0x1935
	.uleb128 0x21
	.4byte	.LVL208
	.4byte	0x1ad9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL205
	.4byte	0x26dd
	.uleb128 0x2e
	.4byte	.LVL206
	.4byte	0x26e8
	.4byte	0x1be6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x26
	.4byte	.LVL209
	.4byte	0x26f3
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x295
	.4byte	0x102
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c1f
	.uleb128 0x21
	.4byte	.LVL210
	.4byte	0xed6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x192
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c6b
	.uleb128 0x34
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x192
	.4byte	0x18af
	.4byte	.LLST25
	.uleb128 0x2e
	.4byte	.LVL213
	.4byte	0x2634
	.4byte	0x1c58
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x26
	.4byte	.LVL216
	.4byte	0x1bf0
	.uleb128 0x26
	.4byte	.LVL217
	.4byte	0x181d
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x2d7
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d60
	.uleb128 0x20
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x2d9
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x2da
	.4byte	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x3f
	.string	"msg"
	.byte	0x1
	.2byte	0x2db
	.4byte	0x6ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x20
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x2dc
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x20
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x2dd
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x2a
	.4byte	.LASF220
	.4byte	0x1d70
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10874
	.uleb128 0x2e
	.4byte	.LVL218
	.4byte	0x26d2
	.4byte	0x1cf5
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x26
	.4byte	.LVL219
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL220
	.4byte	0x256f
	.4byte	0x1d35
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC140
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10874
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL221
	.4byte	0x26fe
	.4byte	0x1d4f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.byte	0
	.uleb128 0x21
	.4byte	.LVL222
	.4byte	0x1a59
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x190
	.4byte	0x1d70
	.uleb128 0xa
	.4byte	0x168
	.byte	0x1e
	.byte	0
	.uleb128 0x27
	.4byte	0x1d60
	.uleb128 0x3c
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x48b
	.4byte	0x102
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2026
	.uleb128 0x29
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x48d
	.4byte	0xd6
	.4byte	.LLST26
	.uleb128 0x29
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x48f
	.4byte	0xe1
	.4byte	.LLST27
	.uleb128 0x29
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x490
	.4byte	0xd6
	.4byte	.LLST28
	.uleb128 0x29
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x491
	.4byte	0xe1
	.4byte	.LLST29
	.uleb128 0x29
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x492
	.4byte	0xd6
	.4byte	.LLST30
	.uleb128 0x20
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x494
	.4byte	0x2026
	.uleb128 0x5
	.byte	0x3
	.4byte	up_sampled_buffer$10940
	.uleb128 0x20
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x496
	.4byte	0x2037
	.uleb128 0x5
	.byte	0x3
	.4byte	read_buffer$10941
	.uleb128 0x20
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x498
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x499
	.4byte	0xe1
	.4byte	.LLST31
	.uleb128 0x29
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x49a
	.4byte	0x102
	.4byte	.LLST32
	.uleb128 0x29
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x49b
	.4byte	0xf7
	.4byte	.LLST33
	.uleb128 0x29
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x49c
	.4byte	0xf7
	.4byte	.LLST34
	.uleb128 0x29
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x49d
	.4byte	0xe1
	.4byte	.LLST35
	.uleb128 0x30
	.4byte	0xa2c
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.2byte	0x4b1
	.4byte	0x1e98
	.uleb128 0x40
	.4byte	0xa47
	.4byte	.LLST36
	.uleb128 0x40
	.4byte	0xa3c
	.4byte	.LLST37
	.uleb128 0x41
	.4byte	.LVL234
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0xa2c
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0x1
	.2byte	0x4ea
	.4byte	0x1eda
	.uleb128 0x40
	.4byte	0xa47
	.4byte	.LLST38
	.uleb128 0x42
	.4byte	0xa3c
	.uleb128 0x6
	.byte	0x3
	.4byte	read_buffer$10941
	.byte	0x9f
	.uleb128 0x41
	.4byte	.LVL255
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	read_buffer$10941
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL239
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL240
	.4byte	0x256f
	.4byte	0x1f1e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC151
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL258
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL259
	.4byte	0x256f
	.4byte	0x1f62
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC155
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL260
	.4byte	0x259b
	.4byte	0x1f8a
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	read_buffer$10941
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL263
	.4byte	0x2709
	.4byte	0x1f9e
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL265
	.4byte	0x2714
	.4byte	0x1fd7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	read_buffer$10941
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	up_sampled_buffer$10940
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0xa
	.2byte	0x400
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL268
	.4byte	0x26c9
	.4byte	0x1ffd
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_cb+120
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	up_sampled_buffer$10940
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.4byte	.LVL269
	.4byte	0x26c9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	up_sampled_buffer$10940
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	up_sampled_buffer$10940
	.byte	0x22
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd6
	.4byte	0x2037
	.uleb128 0x43
	.4byte	0x168
	.2byte	0x1ff
	.byte	0
	.uleb128 0x8
	.4byte	0xd6
	.4byte	0x2047
	.uleb128 0xa
	.4byte	0x168
	.byte	0xff
	.byte	0
	.uleb128 0x23
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x52a
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21cc
	.uleb128 0x34
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x52a
	.4byte	0xcb
	.4byte	.LLST39
	.uleb128 0x29
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x52c
	.4byte	0x33c
	.4byte	.LLST40
	.uleb128 0x20
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x52d
	.4byte	0xd6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LVL276
	.4byte	0x2613
	.4byte	0x20a0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1010
	.byte	0
	.uleb128 0x26
	.4byte	.LVL279
	.4byte	0x2564
	.uleb128 0x26
	.4byte	.LVL281
	.4byte	0x271f
	.uleb128 0x2e
	.4byte	.LVL282
	.4byte	0x256f
	.4byte	0x20e6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC162
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL285
	.4byte	0x259b
	.4byte	0x2102
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_cb+120
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL286
	.4byte	0x1d75
	.uleb128 0x2e
	.4byte	.LVL287
	.4byte	0x272a
	.4byte	0x2122
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_cb+48
	.byte	0
	.uleb128 0x26
	.4byte	.LVL288
	.4byte	0x2735
	.uleb128 0x26
	.4byte	.LVL289
	.4byte	0x2740
	.uleb128 0x26
	.4byte	.LVL292
	.4byte	0x2564
	.uleb128 0x2e
	.4byte	.LVL293
	.4byte	0x256f
	.4byte	0x2178
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC166
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL296
	.4byte	0x2585
	.4byte	0x218c
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL299
	.4byte	0x271f
	.uleb128 0x26
	.4byte	.LVL300
	.4byte	0xc02
	.uleb128 0x2e
	.4byte	.LVL301
	.4byte	0x2585
	.4byte	0x21b2
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL304
	.4byte	0x274b
	.uleb128 0x21
	.4byte	.LVL306
	.4byte	0x2585
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x585
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22ca
	.uleb128 0x34
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x585
	.4byte	0xcb
	.4byte	.LLST41
	.uleb128 0x2a
	.4byte	.LASF228
	.4byte	0x22ca
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10976
	.uleb128 0x26
	.4byte	.LVL310
	.4byte	0x271f
	.uleb128 0x26
	.4byte	.LVL312
	.4byte	0x2564
	.uleb128 0x26
	.4byte	.LVL313
	.4byte	0x271f
	.uleb128 0x2e
	.4byte	.LVL314
	.4byte	0x256f
	.4byte	0x2257
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC171
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL315
	.4byte	0x257a
	.uleb128 0x26
	.4byte	.LVL316
	.4byte	0x2585
	.uleb128 0x26
	.4byte	.LVL317
	.4byte	0x271f
	.uleb128 0x2e
	.4byte	.LVL318
	.4byte	0x2047
	.4byte	0x2286
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL319
	.4byte	0x2564
	.uleb128 0x21
	.4byte	.LVL320
	.4byte	0x256f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC174
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10976
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0xcaf
	.uleb128 0x23
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x5ab
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2321
	.uleb128 0x29
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x5ad
	.4byte	0xcb
	.4byte	.LLST42
	.uleb128 0x2f
	.4byte	.LASF220
	.4byte	0x2331
	.uleb128 0x26
	.4byte	.LVL321
	.4byte	0xadd
	.uleb128 0x26
	.4byte	.LVL322
	.4byte	0x21cc
	.uleb128 0x21
	.4byte	.LVL323
	.4byte	0x2756
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x190
	.4byte	0x2331
	.uleb128 0xa
	.4byte	0x168
	.byte	0x1d
	.byte	0
	.uleb128 0x27
	.4byte	0x2321
	.uleb128 0x23
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x5bc
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23ae
	.uleb128 0x24
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x5bc
	.4byte	0x197
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LVL325
	.4byte	0xa92
	.4byte	0x2371
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC176
	.byte	0
	.uleb128 0x26
	.4byte	.LVL326
	.4byte	0x22cf
	.uleb128 0x26
	.4byte	.LVL327
	.4byte	0x2564
	.uleb128 0x21
	.4byte	.LVL328
	.4byte	0x256f
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC182
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x11c
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x247e
	.uleb128 0x2d
	.string	"arg"
	.byte	0x1
	.2byte	0x11c
	.4byte	0x197
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x29
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x11e
	.4byte	0x256
	.4byte	.LLST43
	.uleb128 0x3f
	.string	"e"
	.byte	0x1
	.2byte	0x11f
	.4byte	0xf81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x2439
	.uleb128 0x20
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x123
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.4byte	.LVL331
	.4byte	0x2761
	.4byte	0x2429
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x21
	.4byte	.LVL332
	.4byte	0x2336
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL330
	.4byte	0x276d
	.4byte	0x244d
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL334
	.4byte	0x2761
	.4byte	0x246b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL335
	.4byte	0x1389
	.uleb128 0x26
	.4byte	.LVL336
	.4byte	0x2585
	.byte	0
	.uleb128 0x45
	.4byte	.LASF309
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x2491
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x27
	.4byte	0x17a
	.uleb128 0x45
	.4byte	.LASF310
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x24a9
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	0x17a
	.uleb128 0x46
	.4byte	.LASF311
	.byte	0x1
	.byte	0xb3
	.4byte	0xa21
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_cb
	.uleb128 0x46
	.4byte	.LASF312
	.byte	0x1
	.byte	0xb4
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_a2dp_source_state
	.uleb128 0x46
	.4byte	.LASF313
	.byte	0x1
	.byte	0xb5
	.4byte	0x24e1
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_a2dp_source_future
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8a3
	.uleb128 0x46
	.4byte	.LASF314
	.byte	0x1
	.byte	0xb6
	.4byte	0x261
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_task_hdl
	.uleb128 0x46
	.4byte	.LASF315
	.byte	0x1
	.byte	0xb7
	.4byte	0x240
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_data_queue
	.uleb128 0x46
	.4byte	.LASF316
	.byte	0x1
	.byte	0xb8
	.4byte	0x240
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_ctrl_queue
	.uleb128 0x46
	.4byte	.LASF317
	.byte	0x1
	.byte	0xb9
	.4byte	0x24b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_queue_set
	.uleb128 0x46
	.4byte	.LASF318
	.byte	0x1
	.byte	0xbb
	.4byte	0x5db
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_src_data_cb
	.uleb128 0x46
	.4byte	.LASF319
	.byte	0x1
	.byte	0xbc
	.4byte	0xec
	.uleb128 0x5
	.byte	0x3
	.4byte	last_frame_us
	.uleb128 0x47
	.4byte	.LASF375
	.byte	0x23
	.2byte	0x2ea
	.4byte	0xcb
	.uleb128 0x48
	.4byte	.LASF320
	.4byte	.LASF320
	.byte	0x6
	.byte	0x4d
	.uleb128 0x48
	.4byte	.LASF321
	.4byte	.LASF321
	.byte	0xf
	.byte	0x57
	.uleb128 0x48
	.4byte	.LASF322
	.4byte	.LASF322
	.byte	0xf
	.byte	0x6b
	.uleb128 0x48
	.4byte	.LASF323
	.4byte	.LASF323
	.byte	0xd
	.byte	0x4f
	.uleb128 0x48
	.4byte	.LASF324
	.4byte	.LASF324
	.byte	0x1a
	.byte	0x5a
	.uleb128 0x48
	.4byte	.LASF325
	.4byte	.LASF325
	.byte	0xd
	.byte	0x31
	.uleb128 0x49
	.4byte	.LASF352
	.4byte	.LASF352
	.uleb128 0x48
	.4byte	.LASF326
	.4byte	.LASF326
	.byte	0xd
	.byte	0x29
	.uleb128 0x48
	.4byte	.LASF327
	.4byte	.LASF327
	.byte	0x1b
	.byte	0x60
	.uleb128 0x48
	.4byte	.LASF328
	.4byte	.LASF328
	.byte	0x1b
	.byte	0x55
	.uleb128 0x48
	.4byte	.LASF329
	.4byte	.LASF329
	.byte	0x1b
	.byte	0x6a
	.uleb128 0x48
	.4byte	.LASF330
	.4byte	.LASF330
	.byte	0xd
	.byte	0x2d
	.uleb128 0x48
	.4byte	.LASF331
	.4byte	.LASF331
	.byte	0x19
	.byte	0x2d
	.uleb128 0x48
	.4byte	.LASF332
	.4byte	.LASF332
	.byte	0x1c
	.byte	0x29
	.uleb128 0x48
	.4byte	.LASF333
	.4byte	.LASF333
	.byte	0x7
	.byte	0x2e
	.uleb128 0x48
	.4byte	.LASF334
	.4byte	.LASF334
	.byte	0x7
	.byte	0x3d
	.uleb128 0x4a
	.4byte	.LASF335
	.4byte	.LASF335
	.byte	0x9
	.2byte	0x265
	.uleb128 0x48
	.4byte	.LASF336
	.4byte	.LASF336
	.byte	0x1a
	.byte	0x65
	.uleb128 0x48
	.4byte	.LASF337
	.4byte	.LASF337
	.byte	0x7
	.byte	0x43
	.uleb128 0x48
	.4byte	.LASF338
	.4byte	.LASF338
	.byte	0x7
	.byte	0x33
	.uleb128 0x48
	.4byte	.LASF339
	.4byte	.LASF339
	.byte	0x1b
	.byte	0x3f
	.uleb128 0x48
	.4byte	.LASF340
	.4byte	.LASF340
	.byte	0x17
	.byte	0xc5
	.uleb128 0x48
	.4byte	.LASF341
	.4byte	.LASF341
	.byte	0x1d
	.byte	0xc2
	.uleb128 0x4a
	.4byte	.LASF342
	.4byte	.LASF342
	.byte	0x9
	.2byte	0x60c
	.uleb128 0x48
	.4byte	.LASF343
	.4byte	.LASF343
	.byte	0x1e
	.byte	0xde
	.uleb128 0x48
	.4byte	.LASF344
	.4byte	.LASF344
	.byte	0x1a
	.byte	0x47
	.uleb128 0x4a
	.4byte	.LASF345
	.4byte	.LASF345
	.byte	0x9
	.2byte	0x5d0
	.uleb128 0x4a
	.4byte	.LASF346
	.4byte	.LASF346
	.byte	0x9
	.2byte	0x624
	.uleb128 0x4a
	.4byte	.LASF347
	.4byte	.LASF347
	.byte	0xa
	.2byte	0x14d
	.uleb128 0x4a
	.4byte	.LASF348
	.4byte	.LASF348
	.byte	0xa
	.2byte	0x2fe
	.uleb128 0x4a
	.4byte	.LASF349
	.4byte	.LASF349
	.byte	0x9
	.2byte	0x3ac
	.uleb128 0x48
	.4byte	.LASF350
	.4byte	.LASF350
	.byte	0x19
	.byte	0x23
	.uleb128 0x48
	.4byte	.LASF351
	.4byte	.LASF351
	.byte	0x19
	.byte	0x31
	.uleb128 0x49
	.4byte	.LASF353
	.4byte	.LASF353
	.uleb128 0x48
	.4byte	.LASF354
	.4byte	.LASF354
	.byte	0x1f
	.byte	0x79
	.uleb128 0x48
	.4byte	.LASF355
	.4byte	.LASF355
	.byte	0x20
	.byte	0x30
	.uleb128 0x48
	.4byte	.LASF356
	.4byte	.LASF356
	.byte	0x1f
	.byte	0x6d
	.uleb128 0x48
	.4byte	.LASF357
	.4byte	.LASF357
	.byte	0x20
	.byte	0x32
	.uleb128 0x48
	.4byte	.LASF358
	.4byte	.LASF358
	.byte	0x1f
	.byte	0xa8
	.uleb128 0x48
	.4byte	.LASF359
	.4byte	.LASF359
	.byte	0x21
	.byte	0x33
	.uleb128 0x48
	.4byte	.LASF360
	.4byte	.LASF360
	.byte	0x21
	.byte	0x4f
	.uleb128 0x48
	.4byte	.LASF361
	.4byte	.LASF361
	.byte	0xd
	.byte	0x35
	.uleb128 0x48
	.4byte	.LASF362
	.4byte	.LASF362
	.byte	0x17
	.byte	0xc4
	.uleb128 0x48
	.4byte	.LASF363
	.4byte	.LASF363
	.byte	0xe
	.byte	0x67
	.uleb128 0x48
	.4byte	.LASF364
	.4byte	.LASF364
	.byte	0xe
	.byte	0x71
	.uleb128 0x48
	.4byte	.LASF365
	.4byte	.LASF365
	.byte	0xd
	.byte	0x3e
	.uleb128 0x48
	.4byte	.LASF366
	.4byte	.LASF366
	.byte	0x22
	.byte	0x33
	.uleb128 0x4a
	.4byte	.LASF367
	.4byte	.LASF367
	.byte	0x9
	.2byte	0x38a
	.uleb128 0x4a
	.4byte	.LASF368
	.4byte	.LASF368
	.byte	0x9
	.2byte	0x65b
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE59
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xa
	.2byte	0x7530
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL9-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x2
	.byte	0x78
	.sleb128 4
	.4byte	.LVL49-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x5
	.byte	0x3
	.4byte	btc_aa_src_cb+2
	.4byte	.LVL53-1
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xa
	.2byte	0x148
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL83
	.4byte	.LVL123
	.2byte	0x6
	.byte	0x3
	.4byte	btc_aa_src_cb+48
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124-1
	.4byte	.LFE55
	.2byte	0x6
	.byte	0x3
	.4byte	btc_aa_src_cb+48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL85
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL93
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LFE55
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x15
	.byte	0x73
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x26
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x15
	.byte	0x7f
	.sleb128 7
	.byte	0x7f
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x26
	.byte	0x7e
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL105
	.2byte	0x4e
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	btc_aa_src_cb+54
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
	.byte	0x7f
	.sleb128 7
	.byte	0x7f
	.sleb128 0
	.byte	0x7f
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
.LLST19:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL110
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x5
	.byte	0x3
	.4byte	btc_aa_src_cb+62
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL176
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL189
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL197
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LVL214
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL215
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL223
	.4byte	.LVL234-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL242
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL246
	.4byte	.LVL255-1
	.2byte	0x18
	.byte	0x3
	.4byte	btc_aa_src_cb+52
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	btc_aa_src_cb+56
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x18
	.byte	0x3
	.4byte	btc_aa_src_cb+52
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3
	.4byte	btc_aa_src_cb+56
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL231
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL238
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL251
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL253
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x4
	.byte	0xb
	.2byte	0xbb80
	.byte	0x9f
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x4
	.byte	0xa
	.2byte	0x7d00
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x4
	.byte	0xa
	.2byte	0x3e80
	.byte	0x9f
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xb
	.2byte	0xbb80
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL242
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL248
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL245
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL224
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL230
	.4byte	.LVL232
	.2byte	0x3f
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL234-1
	.2byte	0x57
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.4byte	btc_aa_src_cb+46
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.4byte	btc_aa_src_cb+46
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.4byte	btc_aa_src_cb+46
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x57
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.4byte	btc_aa_src_cb+46
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.4byte	btc_aa_src_cb+46
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x3
	.4byte	btc_aa_src_cb+54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.4byte	btc_aa_src_cb+46
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.sleb128 0
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x33
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL270
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL265
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL272
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL244
	.4byte	.LVL245
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LFE60
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL245
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL224
	.4byte	.LVL236
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL257
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL261
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL272
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL233
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL238
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL233
	.4byte	.LVL234-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL253
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL270
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL274
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL283
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL291
	.4byte	.LVL294
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL295
	.4byte	.LVL297
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL297
	.4byte	.LVL298
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL302
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL277
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL283
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL303
	.4byte	.LVL304-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL305
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL309
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL311
	.4byte	.LFE62
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL321
	.4byte	.LVL322-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL330
	.4byte	.LVL331-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL333
	.4byte	.LVL334-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x174
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"long int"
.LASF114:
	.string	"BTM_PM_STS_PARK"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF369:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF155:
	.string	"SINT32"
.LASF111:
	.string	"BTM_PM_STS_ACTIVE"
.LASF249:
	.string	"pstrEncParams"
.LASF215:
	.string	"time_now_us"
.LASF125:
	.string	"tBTA_AV_SUSPEND"
.LASF288:
	.string	"read_size"
.LASF338:
	.string	"osi_alarm_free"
.LASF133:
	.string	"format"
.LASF359:
	.string	"bta_av_sbc_init_up_sample"
.LASF220:
	.string	"__FUNCTION__"
.LASF144:
	.string	"AllocationMethod"
.LASF127:
	.string	"tBTC_AV_FEEDING_MODE"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF29:
	.string	"BT_HDR"
.LASF326:
	.string	"fixed_queue_new"
.LASF232:
	.string	"data_type"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF332:
	.string	"__assert_func"
.LASF358:
	.string	"bta_av_co_get_remote_bitpool_pref"
.LASF347:
	.string	"xTaskCreatePinnedToCore"
.LASF267:
	.string	"btc_a2dp_source_on_suspended"
.LASF148:
	.string	"MaxBitPool"
.LASF18:
	.string	"UINT16"
.LASF141:
	.string	"ChannelMode"
.LASF164:
	.string	"u16BitRate"
.LASF334:
	.string	"osi_alarm_set_periodic"
.LASF8:
	.string	"unsigned int"
.LASF278:
	.string	"btc_a2dp_source_audio_feeding_init_req"
.LASF59:
	.string	"num_subbands"
.LASF149:
	.string	"MinBitPool"
.LASF118:
	.string	"tBTA_AV_STATUS"
.LASF191:
	.string	"BTC_MEDIA_FLUSH_AA_TX"
.LASF57:
	.string	"ch_mode"
.LASF349:
	.string	"vQueueDelete"
.LASF6:
	.string	"__int32_t"
.LASF221:
	.string	"pcm_bytes_per_frame"
.LASF315:
	.string	"btc_aa_src_data_queue"
.LASF222:
	.string	"us_this_tick"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF142:
	.string	"NumOfSubBands"
.LASF229:
	.string	"btc_a2dp_source_thread_cleanup"
.LASF157:
	.string	"s16SamplingFreq"
.LASF177:
	.string	"u16PacketLength"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF339:
	.string	"btc_a2dp_control_command_ack"
.LASF192:
	.string	"BTC_MEDIA_AUDIO_FEEDING_INIT"
.LASF22:
	.string	"BOOLEAN"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF150:
	.string	"tBTC_MEDIA_UPDATE_AUDIO"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF291:
	.string	"bytes_needed"
.LASF238:
	.string	"p_feeding"
.LASF188:
	.string	"BTC_MEDIA_STOP_AA_TX"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF340:
	.string	"SBC_Encoder_Init"
.LASF269:
	.string	"btc_a2dp_source_enc_init_req"
.LASF146:
	.string	"tBTC_MEDIA_INIT_AUDIO"
.LASF236:
	.string	"send_ack"
.LASF266:
	.string	"btc_a2dp_source_on_idle"
.LASF284:
	.string	"pref_min"
.LASF321:
	.string	"esp_log_timestamp"
.LASF201:
	.string	"bytes_per_tick"
.LASF224:
	.string	"comment"
.LASF318:
	.string	"btc_aa_src_data_cb"
.LASF173:
	.string	"as16Bits"
.LASF119:
	.string	"tBTA_AV_CHNL"
.LASF138:
	.string	"esp_a2d_source_data_cb_t"
.LASF323:
	.string	"fixed_queue_try_dequeue"
.LASF159:
	.string	"s16NumOfSubBands"
.LASF283:
	.string	"btc_a2dp_source_encoder_update"
.LASF134:
	.string	"tBTC_AV_MEDIA_FEEDINGS"
.LASF217:
	.string	"prev_us"
.LASF19:
	.string	"UINT32"
.LASF15:
	.string	"uint32_t"
.LASF131:
	.string	"tBTC_AV_MEDIA_FEED_CFG_PCM"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF24:
	.string	"event"
.LASF311:
	.string	"btc_aa_src_cb"
.LASF21:
	.string	"INT32"
.LASF11:
	.string	"long long unsigned int"
.LASF113:
	.string	"BTM_PM_STS_SNIFF"
.LASF367:
	.string	"xQueueGenericReceive"
.LASF243:
	.string	"btc_a2dp_source_get_sbc_rate"
.LASF183:
	.string	"result"
.LASF257:
	.string	"btc_a2dp_source_is_task_shutting_down"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF333:
	.string	"osi_alarm_new"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF242:
	.string	"btc_get_num_aa_frame"
.LASF309:
	.string	"bd_addr_any"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF289:
	.string	"sbc_sampling"
.LASF186:
	.string	"BTC_MEDIA_TASK_CLEAN_UP"
.LASF277:
	.string	"btc_a2dp_source_enc_update_req"
.LASF4:
	.string	"__uint16_t"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF293:
	.string	"read_buffer"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF295:
	.string	"dst_size_used"
.LASF140:
	.string	"SamplingFreq"
.LASF351:
	.string	"future_await"
.LASF115:
	.string	"BTM_PM_STS_SSR"
.LASF261:
	.string	"enable"
.LASF307:
	.string	"xActivatedMember"
.LASF204:
	.string	"TxTranscoding"
.LASF230:
	.string	"btc_a2dp_source_aa_start_tx"
.LASF187:
	.string	"BTC_MEDIA_START_AA_TX"
.LASF50:
	.string	"timeval"
.LASF305:
	.string	"btc_a2dp_source_handle_timer"
.LASF344:
	.string	"abort"
.LASF212:
	.string	"encoder"
.LASF200:
	.string	"counter"
.LASF61:
	.string	"max_bitpool"
.LASF58:
	.string	"block_len"
.LASF5:
	.string	"short unsigned int"
.LASF25:
	.string	"offset"
.LASF317:
	.string	"btc_aa_src_queue_set"
.LASF272:
	.string	"minmtu"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF48:
	.string	"QueueSetMemberHandle_t"
.LASF47:
	.string	"QueueSetHandle_t"
.LASF23:
	.string	"_Bool"
.LASF194:
	.string	"BTC_A2DP_SOURCE_STATE_ON"
.LASF268:
	.string	"p_av"
.LASF364:
	.string	"A2D_SbcDescramble"
.LASF158:
	.string	"s16ChannelMode"
.LASF302:
	.string	"btc_a2dp_source_prep_2_send"
.LASF42:
	.string	"tv_usec"
.LASF324:
	.string	"free"
.LASF10:
	.string	"__uint64_t"
.LASF128:
	.string	"sampling_freq"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF270:
	.string	"p_buf"
.LASF151:
	.string	"feeding_mode"
.LASF335:
	.string	"xQueueGenericSend"
.LASF202:
	.string	"tBTC_AV_MEDIA_FEEDINGS_PCM_STATE"
.LASF350:
	.string	"future_new"
.LASF20:
	.string	"UINT64"
.LASF210:
	.string	"media_feeding_state"
.LASF233:
	.string	"btc_a2dp_source_alarm_cb"
.LASF231:
	.string	"btc_a2dp_source_data_post"
.LASF185:
	.string	"BTC_MEDIA_TASK_INIT"
.LASF197:
	.string	"aa_frame_counter"
.LASF161:
	.string	"s16NumOfBlocks"
.LASF373:
	.string	"btc_a2dp_source_feeding_state_reset"
.LASF30:
	.string	"char"
.LASF172:
	.string	"s32SbBuffer"
.LASF190:
	.string	"BTC_MEDIA_SBC_ENC_UPDATE"
.LASF244:
	.string	"rate"
.LASF179:
	.string	"osi_sem_t"
.LASF299:
	.string	"nb_byte_read"
.LASF216:
	.string	"log_tstamps_us"
.LASF371:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF132:
	.string	"tBTC_AV_MEDIA_FEED_CFG"
.LASF27:
	.string	"data"
.LASF166:
	.string	"as16Join"
.LASF46:
	.string	"QueueHandle_t"
.LASF237:
	.string	"btc_a2dp_source_pcm2sbc_init"
.LASF203:
	.string	"tBTC_AV_MEDIA_FEEDINGS_STATE"
.LASF301:
	.string	"nb_frame"
.LASF12:
	.string	"uint8_t"
.LASF254:
	.string	"btc_a2dp_source_ctrl_handler"
.LASF124:
	.string	"status"
.LASF33:
	.string	"time_t"
.LASF360:
	.string	"bta_av_sbc_up_sample"
.LASF271:
	.string	"btc_a2dp_source_encoder_init"
.LASF26:
	.string	"layer_specific"
.LASF176:
	.string	"FrameHeader"
.LASF345:
	.string	"xQueueGenericCreate"
.LASF276:
	.string	"freq_block_tbl"
.LASF218:
	.string	"now_us"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF262:
	.string	"btc_a2dp_source_startup"
.LASF126:
	.string	"tBTC_AV_CODEC_ID"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF282:
	.string	"btc_a2dp_source_on_stopped"
.LASF136:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_FAILURE"
.LASF55:
	.string	"alarm_t"
.LASF292:
	.string	"up_sampled_buffer"
.LASF167:
	.string	"s16MaxBitNeed"
.LASF9:
	.string	"long long int"
.LASF43:
	.string	"osi_alarm_t"
.LASF246:
	.string	"pInitAudio"
.LASF129:
	.string	"num_channel"
.LASF253:
	.string	"previous_u16BitRate"
.LASF137:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_BUSY"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF259:
	.string	"btc_a2dp_source_shutdown"
.LASF162:
	.string	"s16AllocationMethod"
.LASF227:
	.string	"context"
.LASF219:
	.string	"ts_now"
.LASF44:
	.string	"BaseType_t"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF145:
	.string	"MtuSize"
.LASF327:
	.string	"btc_a2dp_control_init"
.LASF135:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_SUCCESS"
.LASF52:
	.string	"BtTaskEvt_t"
.LASF56:
	.string	"samp_freq"
.LASF352:
	.string	"memset"
.LASF303:
	.string	"btc_a2dp_source_send_aa_frame"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF54:
	.string	"fixed_queue_t"
.LASF355:
	.string	"osi_mutex_global_lock"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF328:
	.string	"btc_a2dp_control_set_datachnl_stat"
.LASF342:
	.string	"xQueueCreateSet"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF287:
	.string	"blocm_x_subband"
.LASF38:
	.string	"ESP_LOG_INFO"
.LASF49:
	.string	"TaskHandle_t"
.LASF112:
	.string	"BTM_PM_STS_HOLD"
.LASF313:
	.string	"btc_a2dp_source_future"
.LASF294:
	.string	"src_size_used"
.LASF322:
	.string	"esp_log_write"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF196:
	.string	"BTC_A2DP_SOURCE_DATA_EVT"
.LASF300:
	.string	"btc_media_aa_prep_sbc_2_send"
.LASF207:
	.string	"TxAaMtuSize"
.LASF117:
	.string	"BTM_PM_STS_ERROR"
.LASF280:
	.string	"mfeed"
.LASF171:
	.string	"s16ScartchMemForBitAlloc"
.LASF260:
	.string	"btc_a2dp_source_set_tx_flush"
.LASF123:
	.string	"initiator"
.LASF147:
	.string	"MinMtuSize"
.LASF234:
	.string	"btc_a2dp_source_ctrl_post"
.LASF241:
	.string	"p_msg"
.LASF45:
	.string	"TickType_t"
.LASF35:
	.string	"ESP_LOG_NONE"
.LASF354:
	.string	"bta_av_co_audio_get_sbc_config"
.LASF250:
	.string	"s16BitRate"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF306:
	.string	"btc_a2dp_source_task_handler"
.LASF343:
	.string	"ets_printf"
.LASF180:
	.string	"future"
.LASF356:
	.string	"bta_av_co_audio_set_codec"
.LASF304:
	.string	"nb_frame_2_send"
.LASF13:
	.string	"uint16_t"
.LASF348:
	.string	"vTaskDelete"
.LASF248:
	.string	"pUpdateAudio"
.LASF160:
	.string	"s16NumOfChannels"
.LASF330:
	.string	"fixed_queue_free"
.LASF143:
	.string	"NumOfBlocks"
.LASF275:
	.string	"codec_block_tbl"
.LASF310:
	.string	"bd_addr_null"
.LASF319:
	.string	"last_frame_us"
.LASF34:
	.string	"suseconds_t"
.LASF2:
	.string	"short int"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF258:
	.string	"btc_a2dp_src_reg_data_cb"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF163:
	.string	"s16BitPool"
.LASF264:
	.string	"btc_a2dp_source_start_audio_req"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF329:
	.string	"btc_a2dp_control_cleanup"
.LASF198:
	.string	"aa_feed_counter"
.LASF314:
	.string	"btc_aa_src_task_hdl"
.LASF189:
	.string	"BTC_MEDIA_SBC_ENC_INIT"
.LASF331:
	.string	"future_ready"
.LASF273:
	.string	"sbc_config"
.LASF169:
	.string	"ps16NextPcmBuffer"
.LASF16:
	.string	"uint64_t"
.LASF370:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_a2dp_source.c"
.LASF139:
	.string	"tBTC_AV_STATUS"
.LASF235:
	.string	"btc_a2dp_source_aa_stop_tx"
.LASF121:
	.string	"chnl"
.LASF178:
	.string	"SBC_ENC_PARAMS"
.LASF296:
	.string	"fract_needed"
.LASF199:
	.string	"aa_feed_residue"
.LASF357:
	.string	"osi_mutex_global_unlock"
.LASF3:
	.string	"__uint8_t"
.LASF62:
	.string	"min_bitpool"
.LASF63:
	.string	"tA2D_SBC_CIE"
.LASF223:
	.string	"btc_a2dp_source_flush_q"
.LASF182:
	.string	"semaphore"
.LASF175:
	.string	"pu8NextPacket"
.LASF265:
	.string	"btc_a2dp_source_stop_audio_req"
.LASF205:
	.string	"tx_flush"
.LASF285:
	.string	"pref_max"
.LASF193:
	.string	"BTC_A2DP_SOURCE_STATE_OFF"
.LASF365:
	.string	"fixed_queue_enqueue"
.LASF316:
	.string	"btc_aa_src_ctrl_queue"
.LASF41:
	.string	"tv_sec"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF28:
	.string	"sizetype"
.LASF120:
	.string	"tBTA_AV_HNDL"
.LASF32:
	.string	"long unsigned int"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF226:
	.string	"btc_a2dp_source_thread_init"
.LASF40:
	.string	"ESP_LOG_VERBOSE"
.LASF153:
	.string	"tBTC_MEDIA_INIT_AUDIO_FEEDING"
.LASF14:
	.string	"int32_t"
.LASF174:
	.string	"pu8Packet"
.LASF368:
	.string	"xQueueSelectFromSet"
.LASF274:
	.string	"codec_mode_tbl"
.LASF206:
	.string	"is_tx_timer"
.LASF279:
	.string	"btc_a2dp_source_setup_codec"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF51:
	.string	"bt_task_evt"
.LASF341:
	.string	"btc_av_is_peer_edr"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF337:
	.string	"osi_alarm_cancel"
.LASF184:
	.string	"future_t"
.LASF252:
	.string	"protect"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF1:
	.string	"unsigned char"
.LASF37:
	.string	"ESP_LOG_WARN"
.LASF7:
	.string	"__uint32_t"
.LASF213:
	.string	"media_alarm"
.LASF263:
	.string	"btc_a2dp_source_audio_readbuf"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF361:
	.string	"fixed_queue_length"
.LASF156:
	.string	"SBC_ENC_PARAMS_TAG"
.LASF372:
	.string	"btc_aa_src_data_read"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF297:
	.string	"fract_max"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF122:
	.string	"hndl"
.LASF181:
	.string	"ready_can_be_called"
.LASF245:
	.string	"btc_a2dp_source_enc_init"
.LASF290:
	.string	"src_samples"
.LASF255:
	.string	"callback"
.LASF39:
	.string	"ESP_LOG_DEBUG"
.LASF325:
	.string	"fixed_queue_is_empty"
.LASF165:
	.string	"u8NumPacketToEncode"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF251:
	.string	"s16FrameLen"
.LASF336:
	.string	"malloc"
.LASF281:
	.string	"btc_a2dp_source_tx_flush_req"
.LASF208:
	.string	"timestamp"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF154:
	.string	"SINT16"
.LASF286:
	.string	"btc_media_aa_read_feeding"
.LASF240:
	.string	"btc_a2dp_source_audio_feeding_init"
.LASF209:
	.string	"TxAaQ"
.LASF375:
	.string	"appl_trace_level"
.LASF0:
	.string	"signed char"
.LASF362:
	.string	"SBC_Encoder"
.LASF363:
	.string	"A2D_SbcChkFrInit"
.LASF320:
	.string	"gettimeofday"
.LASF256:
	.string	"btc_a2dp_source_is_streaming"
.LASF353:
	.string	"memcpy"
.LASF298:
	.string	"fract_threshold"
.LASF366:
	.string	"bta_av_ci_src_data_ready"
.LASF228:
	.string	"__func__"
.LASF170:
	.string	"as16PcmBuffer"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF130:
	.string	"bit_per_sample"
.LASF374:
	.string	"error_exit"
.LASF17:
	.string	"UINT8"
.LASF346:
	.string	"xQueueAddToSet"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF60:
	.string	"alloc_mthd"
.LASF152:
	.string	"feeding"
.LASF312:
	.string	"btc_a2dp_source_state"
.LASF225:
	.string	"btc_a2dp_source_aa_tx_flush"
.LASF214:
	.string	"tBTC_A2DP_SOURCE_CB"
.LASF195:
	.string	"BTC_A2DP_SOURCE_STATE_SHUTTING_DOWN"
.LASF239:
	.string	"reconfig_needed"
.LASF53:
	.string	"SemaphoreHandle_t"
.LASF168:
	.string	"as16ScaleFactor"
.LASF116:
	.string	"BTM_PM_STS_PENDING"
.LASF308:
	.string	"data_evt"
.LASF211:
	.string	"media_feeding"
.LASF36:
	.string	"ESP_LOG_ERROR"
.LASF110:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF247:
	.string	"btc_a2dp_source_enc_update"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
