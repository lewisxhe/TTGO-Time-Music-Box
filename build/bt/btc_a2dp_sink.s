	.file	"btc_a2dp_sink.c"
	.text
.Ltext0:
	.section	.text.btc_a2dp_sink_get_track_frequency,"ax",@progbits
	.literal_position
	.literal .LC0, 48000
	.literal .LC1, 16000
	.literal .LC2, 32000
	.literal .LC3, 44100
	.align	4
	.type	btc_a2dp_sink_get_track_frequency, @function
btc_a2dp_sink_get_track_frequency:
.LFB46:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_a2dp_sink.c"
	.loc 1 660 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 662 0
	beqi	a2, 64, .L3
	beqi	a2, 128, .L6
	beqi	a2, 32, .L5
	.loc 1 661 0
	l32r	a2, .LC0
.LVL2:
	retw.n
.LVL3:
.L3:
	.loc 1 667 0
	l32r	a2, .LC2
.LVL4:
	.loc 1 668 0
	retw.n
.LVL5:
.L5:
	.loc 1 670 0
	l32r	a2, .LC3
.LVL6:
	.loc 1 671 0
	retw.n
.LVL7:
.L6:
	.loc 1 664 0
	l32r	a2, .LC1
.LVL8:
	.loc 1 677 0
	retw.n
.LFE46:
	.size	btc_a2dp_sink_get_track_frequency, .-btc_a2dp_sink_get_track_frequency
	.section	.text.btc_a2dp_sink_get_track_channel_count,"ax",@progbits
	.align	4
	.type	btc_a2dp_sink_get_track_channel_count, @function
btc_a2dp_sink_get_track_channel_count:
.LFB47:
	.loc 1 680 0
.LVL9:
	entry	sp, 32
.LCFI1:
.LVL10:
	.loc 1 682 0
	beqz.n	a2, .L8
	bltui	a2, 3, .L10
	beqi	a2, 4, .L10
.L8:
	.loc 1 681 0
	movi.n	a2, 1
.LVL11:
	retw.n
.LVL12:
.L10:
	.loc 1 689 0
	movi.n	a2, 2
.LVL13:
	.loc 1 693 0
	retw.n
.LFE47:
	.size	btc_a2dp_sink_get_track_channel_count, .-btc_a2dp_sink_get_track_channel_count
	.section	.text.btc_a2dp_sink_flush_q,"ax",@progbits
	.align	4
	.type	btc_a2dp_sink_flush_q, @function
btc_a2dp_sink_flush_q:
.LFB50:
	.loc 1 753 0
.LVL14:
	entry	sp, 32
.LCFI2:
	.loc 1 754 0
	j	.L12
.L13:
	.loc 1 755 0
	mov.n	a10, a2
	call8	fixed_queue_try_dequeue
.LVL15:
	call8	free
.LVL16:
.L12:
	.loc 1 754 0
	mov.n	a10, a2
	call8	fixed_queue_is_empty
.LVL17:
	beqz.n	a10, .L13
	.loc 1 757 0
	retw.n
.LFE50:
	.size	btc_a2dp_sink_flush_q, .-btc_a2dp_sink_flush_q
	.section	.text.btc_a2dp_sink_rx_flush,"ax",@progbits
	.literal_position
	.literal .LC4, btc_aa_snk_cb
	.align	4
	.type	btc_a2dp_sink_rx_flush, @function
btc_a2dp_sink_rx_flush:
.LFB45:
	.loc 1 652 0
	entry	sp, 32
.LCFI3:
	.loc 1 656 0
	l32r	a8, .LC4
	l32i.n	a10, a8, 4
	call8	btc_a2dp_sink_flush_q
.LVL18:
	retw.n
.LFE45:
	.size	btc_a2dp_sink_rx_flush, .-btc_a2dp_sink_rx_flush
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC10:
	.string	"BT_APPL"
	.align	4
.LC12:
	.string	"\033[0;31mE (%d) %s: Decoding failure: %d\n\033[0m\n"
	.section	.text.btc_a2dp_sink_handle_inc_media,"ax",@progbits
	.literal_position
	.literal .LC5, pcmData
	.literal .LC6, 15360
	.literal .LC7, btc_aa_snk_cb
	.literal .LC8, context
	.literal .LC9, appl_trace_level
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC14, bt_aa_snk_data_cb
	.align	4
	.type	btc_a2dp_sink_handle_inc_media, @function
btc_a2dp_sink_handle_inc_media:
.LFB43:
	.loc 1 581 0
.LVL19:
	entry	sp, 48
.LCFI4:
	.loc 1 582 0
	l16ui	a3, a2, 4
	addi.n	a3, a3, 9
	add.n	a3, a2, a3
	s32i.n	a3, sp, 0
.LVL20:
	.loc 1 587 0
	l16ui	a6, a2, 0
.LVL21:
	.loc 1 588 0
	l16ui	a3, a2, 2
	addi.n	a3, a3, -1
	s32i.n	a3, sp, 8
.LVL22:
	.loc 1 592 0
	call8	btc_av_get_peer_sep
.LVL23:
	beqi	a10, 1, .L15
	.loc 1 592 0 is_stmt 0 discriminator 1
	l32r	a3, .LC7
	l8ui	a3, a3, 0
	bnez.n	a3, .L15
	.loc 1 598 0 is_stmt 1
	call8	btc_a2dp_control_get_datachnl_stat
.LVL24:
	bnez.n	a10, .L24
	retw.n
.LVL25:
.L21:
	.loc 1 605 0
	s32i.n	a3, sp, 4
	.loc 1 606 0
	addi.n	a14, sp, 4
	mov.n	a13, a5
	addi.n	a12, sp, 8
	mov.n	a11, sp
	l32r	a10, .LC8
	call8	OI_CODEC_SBC_DecodeFrame
.LVL26:
	mov.n	a7, a10
.LVL27:
	.loc 1 610 0
	beqz.n	a10, .L18
	.loc 1 611 0
	l32r	a2, .LC9
.LVL28:
	l8ui	a2, a2, 0
	beqz.n	a2, .L19
	.loc 1 611 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL29:
	l32r	a11, .LC11
	mov.n	a15, a7
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 1
	call8	esp_log_write
.LVL30:
	j	.L19
.LVL31:
.L18:
	.loc 1 614 0 is_stmt 1 discriminator 2
	l32i.n	a8, sp, 4
	sub	a3, a3, a8
.LVL32:
	.loc 1 615 0 discriminator 2
	srli	a8, a8, 1
	addx2	a5, a8, a5
.LVL33:
	.loc 1 616 0 discriminator 2
	l16ui	a8, a2, 2
	l16ui	a10, sp, 8
	sub	a8, a8, a10
	l16ui	a9, a2, 4
	add.n	a8, a8, a9
	addi.n	a8, a8, -1
	s16i	a8, a2, 4
	.loc 1 617 0 discriminator 2
	addi.n	a10, a10, 1
	s16i	a10, a2, 2
	.loc 1 604 0 discriminator 2
	addi.n	a4, a4, 1
.LVL34:
	j	.L17
.LVL35:
.L24:
	l32r	a5, .LC5
	l32r	a3, .LC6
	movi.n	a4, 0
.LVL36:
.L17:
	.loc 1 604 0 is_stmt 0 discriminator 1
	movi.n	a10, 1
	blt	a4, a6, .L20
	movi.n	a10, 0
.L20:
	movi.n	a8, 0
	movi.n	a11, 1
	l32i.n	a9, sp, 8
	movnez	a8, a11, a9
	bany	a8, a10, .L21
.LVL37:
.L19:
	.loc 1 620 0 is_stmt 1 discriminator 1
	l32r	a11, .LC6
	sub	a11, a11, a3
.LVL38:
.LBB4:
.LBB5:
	.loc 1 141 0 discriminator 1
	l32r	a2, .LC14
	l32i.n	a2, a2, 0
	beqz.n	a2, .L15
	.loc 1 142 0
	l32r	a10, .LC5
	callx8	a2
.LVL39:
.L15:
	retw.n
.LBE5:
.LBE4:
.LFE43:
	.size	btc_a2dp_sink_handle_inc_media, .-btc_a2dp_sink_handle_inc_media
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: Insufficient data in que \033[0m\n"
	.section	.text.btc_a2dp_sink_data_ready,"ax",@progbits
	.literal_position
	.literal .LC15, btc_aa_snk_cb
	.literal .LC16, btc_a2dp_sink_state
	.literal .LC17, appl_trace_level
	.literal .LC18, .LC10
	.literal .LC20, .LC19
	.align	4
	.type	btc_a2dp_sink_data_ready, @function
btc_a2dp_sink_data_ready:
.LFB41:
	.loc 1 409 0
.LVL40:
	entry	sp, 32
.LCFI5:
	.loc 1 412 0
	l32r	a8, .LC15
	l32i.n	a10, a8, 4
	call8	fixed_queue_is_empty
.LVL41:
	bnez.n	a10, .L25
	.loc 1 415 0
	l32r	a8, .LC15
	l8ui	a8, a8, 0
	beqz.n	a8, .L27
	.loc 1 416 0
	l32r	a8, .LC15
	l32i.n	a10, a8, 4
	call8	btc_a2dp_sink_flush_q
.LVL42:
	.loc 1 417 0
	retw.n
.LVL43:
.L29:
	.loc 1 421 0
	l32r	a8, .LC16
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L25
	.loc 1 424 0
	call8	btc_a2dp_sink_handle_inc_media
.LVL44:
	.loc 1 425 0
	l32r	a8, .LC15
	l32i.n	a10, a8, 4
	call8	fixed_queue_try_dequeue
.LVL45:
	.loc 1 426 0
	bnez.n	a10, .L28
	.loc 1 427 0
	l32r	a8, .LC17
	l8ui	a8, a8, 0
	beqz.n	a8, .L25
	.loc 1 427 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL47:
	retw.n
.LVL48:
.L28:
	.loc 1 430 0 is_stmt 1
	call8	free
.LVL49:
.L27:
	.loc 1 420 0
	l32r	a8, .LC15
	l32i.n	a10, a8, 4
	call8	fixed_queue_try_peek_first
.LVL50:
	bnez.n	a10, .L29
.LVL51:
.L25:
	retw.n
.LFE41:
	.size	btc_a2dp_sink_data_ready, .-btc_a2dp_sink_data_ready
	.section	.text.btc_a2dp_sink_thread_init,"ax",@progbits
	.literal_position
	.literal .LC21, btc_aa_snk_cb
	.literal .LC22, btc_a2dp_sink_state
	.align	4
	.type	btc_a2dp_sink_thread_init, @function
btc_a2dp_sink_thread_init:
.LFB51:
	.loc 1 760 0
.LVL52:
	entry	sp, 32
.LCFI6:
	.loc 1 762 0
	l32r	a2, .LC21
.LVL53:
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 8
	.loc 1 764 0
	movi.n	a9, 1
	l32r	a8, .LC22
	s32i.n	a9, a8, 0
	.loc 1 766 0
	movi	a10, 0xfe
	call8	fixed_queue_new
.LVL54:
	s32i.n	a10, a2, 4
	.loc 1 768 0
	call8	btc_a2dp_control_init
.LVL55:
	retw.n
.LFE51:
	.size	btc_a2dp_sink_thread_init, .-btc_a2dp_sink_thread_init
	.section	.text.btc_a2dp_sink_thread_cleanup,"ax",@progbits
	.literal_position
	.literal .LC23, btc_a2dp_sink_state
	.literal .LC24, osi_free_func
	.literal .LC25, btc_aa_snk_cb
	.literal .LC26, btc_a2dp_sink_future
	.align	4
	.type	btc_a2dp_sink_thread_cleanup, @function
btc_a2dp_sink_thread_cleanup:
.LFB52:
	.loc 1 772 0
.LVL56:
	entry	sp, 32
.LCFI7:
	.loc 1 773 0
	movi.n	a10, 0
	call8	btc_a2dp_control_set_datachnl_stat
.LVL57:
	.loc 1 775 0
	movi.n	a2, 0
.LVL58:
	l32r	a8, .LC23
	s32i.n	a2, a8, 0
	.loc 1 777 0
	call8	btc_a2dp_control_cleanup
.LVL59:
	.loc 1 779 0
	l32r	a11, .LC24
	l32r	a8, .LC25
	l32i.n	a10, a8, 4
	call8	fixed_queue_free
.LVL60:
	.loc 1 781 0
	mov.n	a11, a2
	l32r	a2, .LC26
	l32i.n	a10, a2, 0
	call8	future_ready
.LVL61:
	retw.n
.LFE52:
	.size	btc_a2dp_sink_thread_cleanup, .-btc_a2dp_sink_thread_cleanup
	.section	.rodata.str1.4
	.align	4
.LC29:
	.string	"\033[0;31mE (%d) %s: ERROR dump_codec_info A2D_ParsSbcInfo fail:%d\n\033[0m\n"
	.align	4
.LC34:
	.string	"\033[0;31mE (%d) %s: OI_CODEC_SBC_DecoderReset failed with error code %d\n\033[0m\n"
	.section	.text.btc_a2dp_sink_handle_decoder_reset,"ax",@progbits
	.literal_position
	.literal .LC27, appl_trace_level
	.literal .LC28, .LC10
	.literal .LC30, .LC29
	.literal .LC31, btc_aa_snk_cb
	.literal .LC32, contextData
	.literal .LC33, context
	.literal .LC35, .LC34
	.align	4
	.type	btc_a2dp_sink_handle_decoder_reset, @function
btc_a2dp_sink_handle_decoder_reset:
.LFB42:
	.loc 1 446 0
.LVL62:
	entry	sp, 48
.LCFI8:
.LVL63:
	.loc 1 459 0
	movi.n	a12, 0
	addi.n	a11, a2, 8
	mov.n	a10, sp
	call8	A2D_ParsSbcInfo
.LVL64:
	mov.n	a2, a10
.LVL65:
	.loc 1 460 0
	beqz.n	a10, .L33
	.loc 1 461 0
	l32r	a8, .LC27
	l8ui	a8, a8, 0
	beqz.n	a8, .L32
	.loc 1 461 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL66:
	l32r	a11, .LC28
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC30
	movi.n	a10, 1
	call8	esp_log_write
.LVL67:
	retw.n
.L33:
	.loc 1 465 0 is_stmt 1
	l8ui	a10, sp, 0
	call8	btc_a2dp_sink_get_track_frequency
.LVL68:
	l32r	a2, .LC31
.LVL69:
	s32i.n	a10, a2, 8
	.loc 1 466 0
	l8ui	a10, sp, 1
	call8	btc_a2dp_sink_get_track_channel_count
.LVL70:
	s8i	a10, a2, 1
	.loc 1 468 0
	movi.n	a8, 0
	s8i	a8, a2, 0
	.loc 1 470 0
	movi.n	a15, 0
	movi.n	a14, 2
	mov.n	a13, a14
	movi	a12, 0x760
	l32r	a11, .LC32
	l32r	a10, .LC33
	call8	OI_CODEC_SBC_DecoderReset
.LVL71:
	mov.n	a2, a10
.LVL72:
	.loc 1 471 0
	beqz.n	a10, .L35
	.loc 1 472 0
	l32r	a8, .LC27
	l8ui	a8, a8, 0
	beqz.n	a8, .L35
	.loc 1 472 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL73:
	l32r	a11, .LC28
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC35
	movi.n	a10, 1
	call8	esp_log_write
.LVL74:
.L35:
	.loc 1 475 0 is_stmt 1
	movi.n	a10, 1
	call8	btc_a2dp_control_set_datachnl_stat
.LVL75:
.L32:
	retw.n
.LFE42:
	.size	btc_a2dp_sink_handle_decoder_reset, .-btc_a2dp_sink_handle_decoder_reset
	.section	.rodata.str1.4
	.align	4
.LC39:
	.string	"\033[0;33mW (%d) %s: media task unhandled evt: 0x%x\n\033[0m\n"
	.section	.text.btc_a2dp_sink_ctrl_handler,"ax",@progbits
	.literal_position
	.literal .LC36, .L41
	.literal .LC37, appl_trace_level
	.literal .LC38, .LC10
	.literal .LC40, .LC39
	.align	4
	.type	btc_a2dp_sink_ctrl_handler, @function
btc_a2dp_sink_ctrl_handler:
.LFB30:
	.loc 1 181 0
.LVL76:
	entry	sp, 32
.LCFI9:
	.loc 1 182 0
	beqz.n	a2, .L37
	.loc 1 185 0
	l32i.n	a8, a2, 0
	bgeui	a8, 5, .L39
	l32r	a9, .LC36
	addx4	a8, a8, a9
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.btc_a2dp_sink_ctrl_handler,"a",@progbits
	.align	4
	.align	4
.L41:
	.word	.L40
	.word	.L42
	.word	.L43
	.word	.L44
	.word	.L45
	.section	.text.btc_a2dp_sink_ctrl_handler
.L40:
	.loc 1 187 0
	movi.n	a10, 0
	call8	btc_a2dp_sink_thread_init
.LVL77:
	.loc 1 188 0
	j	.L45
.L42:
	.loc 1 190 0
	movi.n	a10, 0
	call8	btc_a2dp_sink_thread_cleanup
.LVL78:
	.loc 1 191 0
	j	.L45
.L44:
	.loc 1 193 0
	l32i.n	a10, a2, 4
	call8	btc_a2dp_sink_handle_decoder_reset
.LVL79:
	.loc 1 194 0
	j	.L45
.L43:
	.loc 1 199 0
	call8	btc_a2dp_sink_rx_flush
.LVL80:
	.loc 1 200 0
	j	.L45
.L39:
	.loc 1 202 0
	l32r	a8, .LC37
	l8ui	a8, a8, 0
	bltui	a8, 2, .L45
	.loc 1 202 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL81:
	l32r	a11, .LC38
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC40
	movi.n	a10, 2
	call8	esp_log_write
.LVL82:
.L45:
	.loc 1 204 0 is_stmt 1
	l32i.n	a10, a2, 4
	beqz.n	a10, .L37
	.loc 1 205 0
	call8	free
.LVL83:
.L37:
	retw.n
.LFE30:
	.size	btc_a2dp_sink_ctrl_handler, .-btc_a2dp_sink_ctrl_handler
	.section	.text.btc_a2dp_sink_task_handler,"ax",@progbits
	.literal_position
	.literal .LC41, btc_aa_snk_queue_set
	.literal .LC42, btc_aa_snk_data_queue
	.literal .LC43, btc_aa_snk_ctrl_queue
	.align	4
	.type	btc_a2dp_sink_task_handler, @function
btc_a2dp_sink_task_handler:
.LFB31:
	.loc 1 210 0
.LVL84:
	entry	sp, 48
.LCFI10:
	.loc 1 212 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
.L47:
	.loc 1 214 0
	movi.n	a11, -1
	l32r	a8, .LC41
	l32i.n	a10, a8, 0
	call8	xQueueSelectFromSet
.LVL85:
	.loc 1 215 0
	l32r	a8, .LC42
	l32i.n	a8, a8, 0
	bne	a10, a8, .L48
.LBB6:
	.loc 1 217 0
	movi.n	a13, 0
	mov.n	a12, a13
	addi.n	a11, sp, 4
	call8	xQueueGenericReceive
.LVL86:
	.loc 1 218 0
	l32i.n	a8, sp, 4
	bnez.n	a8, .L47
	.loc 1 219 0
	movi.n	a10, 0
	call8	btc_a2dp_sink_data_ready
.LVL87:
	j	.L47
.LVL88:
.L48:
.LBE6:
	.loc 1 221 0
	l32r	a8, .LC43
	l32i.n	a8, a8, 0
	bne	a10, a8, .L47
	.loc 1 222 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, sp
	call8	xQueueGenericReceive
.LVL89:
	.loc 1 223 0
	l32i.n	a10, sp, 0
	call8	btc_a2dp_sink_ctrl_handler
.LVL90:
	.loc 1 224 0
	l32i.n	a10, sp, 0
	call8	free
.LVL91:
	j	.L47
.LFE31:
	.size	btc_a2dp_sink_task_handler, .-btc_a2dp_sink_task_handler
	.section	.rodata.str1.4
	.align	4
.LC47:
	.string	"\033[0;33mW (%d) %s: btc_aa_snk_ctrl_queue failed, sig 0x%x\n\033[0m\n"
	.section	.text.btc_a2dp_sink_ctrl_post,"ax",@progbits
	.literal_position
	.literal .LC44, btc_aa_snk_ctrl_queue
	.literal .LC45, appl_trace_level
	.literal .LC46, .LC10
	.literal .LC48, .LC47
	.align	4
	.type	btc_a2dp_sink_ctrl_post, @function
btc_a2dp_sink_ctrl_post:
.LFB29:
	.loc 1 166 0
.LVL92:
	entry	sp, 48
.LCFI11:
	.loc 1 167 0
	movi.n	a10, 0x10
	call8	malloc
.LVL93:
	s32i.n	a10, sp, 0
	.loc 1 168 0
	beqz.n	a10, .L51
	.loc 1 172 0
	s32i.n	a2, a10, 0
	.loc 1 173 0
	l32i.n	a8, sp, 0
	s32i.n	a3, a8, 4
	.loc 1 175 0
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, sp
	l32r	a3, .LC44
.LVL94:
	l32i.n	a10, a3, 0
	call8	xQueueGenericSend
.LVL95:
	beqi	a10, 1, .L51
	.loc 1 176 0
	l32r	a3, .LC45
	l8ui	a3, a3, 0
	bltui	a3, 2, .L51
	.loc 1 176 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL96:
	l32r	a11, .LC46
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC48
	movi.n	a10, 2
	call8	esp_log_write
.LVL97:
.L51:
	retw.n
.LFE29:
	.size	btc_a2dp_sink_ctrl_post, .-btc_a2dp_sink_ctrl_post
	.section	.text.btc_a2dp_sink_clear_track,"ax",@progbits
	.align	4
	.type	btc_a2dp_sink_clear_track, @function
btc_a2dp_sink_clear_track:
.LFB38:
	.loc 1 369 0 is_stmt 1
	entry	sp, 32
.LCFI12:
	.loc 1 370 0
	movi.n	a11, 0
	movi.n	a10, 4
	call8	btc_a2dp_sink_ctrl_post
.LVL98:
	.loc 1 372 0
	movi.n	a2, 1
	retw.n
.LFE38:
	.size	btc_a2dp_sink_clear_track, .-btc_a2dp_sink_clear_track
	.section	.text.btc_a2dp_sink_data_post,"ax",@progbits
	.literal_position
	.literal .LC49, btc_aa_snk_data_queue
	.align	4
	.type	btc_a2dp_sink_data_post, @function
btc_a2dp_sink_data_post:
.LFB37:
	.loc 1 353 0
.LVL99:
	entry	sp, 48
.LCFI13:
	s32i.n	a2, sp, 0
	.loc 1 354 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, sp
	l32r	a8, .LC49
	l32i.n	a10, a8, 0
	call8	xQueueGenericSend
.LVL100:
	retw.n
.LFE37:
	.size	btc_a2dp_sink_data_post, .-btc_a2dp_sink_data_post
	.section	.text.btc_a2dp_sink_reg_data_cb,"ax",@progbits
	.literal_position
	.literal .LC50, bt_aa_snk_data_cb
	.align	4
	.global	btc_a2dp_sink_reg_data_cb
	.type	btc_a2dp_sink_reg_data_cb, @function
btc_a2dp_sink_reg_data_cb:
.LFB26:
	.loc 1 133 0
.LVL101:
	entry	sp, 32
.LCFI14:
	.loc 1 135 0
	l32r	a8, .LC50
	s32i.n	a2, a8, 0
	retw.n
.LFE26:
	.size	btc_a2dp_sink_reg_data_cb, .-btc_a2dp_sink_reg_data_cb
	.section	.rodata.str1.4
	.align	4
.LC54:
	.string	"\033[0;31mE (%d) %s: warning : media task already running\033[0m\n"
	.align	4
.LC58:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_a2dp_sink.c"
	.align	4
.LC60:
	.string	"%s:%d (%s)- assert failed!\n"
	.align	4
.LC66:
	.string	"BtA2dSinkT"
	.align	4
.LC70:
	.string	"\033[0;31mE (%d) %s: %s unable to start up media thread\n\033[0m\n"
	.section	.text.btc_a2dp_sink_startup,"ax",@progbits
	.literal_position
	.literal .LC51, btc_a2dp_sink_state
	.literal .LC52, appl_trace_level
	.literal .LC53, .LC10
	.literal .LC55, .LC54
	.literal .LC56, btc_aa_snk_queue_set
	.literal .LC57, __FUNCTION__$10900
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.literal .LC62, btc_aa_snk_data_queue
	.literal .LC63, btc_aa_snk_ctrl_queue
	.literal .LC64, btc_aa_snk_task_hdl
	.literal .LC65, 2560
	.literal .LC67, .LC66
	.literal .LC68, btc_a2dp_sink_task_handler
	.literal .LC69, __func__$10902
	.literal .LC71, .LC70
	.align	4
	.global	btc_a2dp_sink_startup
	.type	btc_a2dp_sink_startup, @function
btc_a2dp_sink_startup:
.LFB32:
	.loc 1 230 0
	entry	sp, 48
.LCFI15:
	.loc 1 231 0
	l32r	a2, .LC51
	l32i.n	a2, a2, 0
	beqz.n	a2, .L59
	.loc 1 232 0
	l32r	a2, .LC52
	l8ui	a2, a2, 0
	beqz.n	a2, .L69
	.loc 1 232 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL102:
	l32r	a11, .LC53
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC55
	movi.n	a10, 1
	call8	esp_log_write
.LVL103:
	.loc 1 233 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.L59:
	.loc 1 238 0
	movi.n	a10, 8
	call8	xQueueCreateSet
.LVL104:
	l32r	a2, .LC56
	s32i.n	a10, a2, 0
	.loc 1 239 0
	bnez.n	a10, .L61
	.loc 1 239 0 is_stmt 0 discriminator 1
	l32r	a13, .LC57
	movi	a12, 0xef
	l32r	a11, .LC59
	l32r	a10, .LC61
	call8	ets_printf
.LVL105:
	call8	abort
.LVL106:
.L61:
	.loc 1 240 0 is_stmt 1
	movi.n	a12, 0
	movi.n	a11, 4
	movi.n	a10, 3
	call8	xQueueGenericCreate
.LVL107:
	l32r	a2, .LC62
	s32i.n	a10, a2, 0
	.loc 1 241 0
	bnez.n	a10, .L62
	.loc 1 241 0 is_stmt 0 discriminator 1
	l32r	a13, .LC57
	movi	a12, 0xf1
	l32r	a11, .LC59
	l32r	a10, .LC61
	call8	ets_printf
.LVL108:
	call8	abort
.LVL109:
.L62:
	.loc 1 242 0 is_stmt 1
	l32r	a2, .LC56
	l32i.n	a11, a2, 0
	call8	xQueueAddToSet
.LVL110:
	.loc 1 244 0
	movi.n	a12, 0
	movi.n	a11, 4
	movi.n	a10, 5
	call8	xQueueGenericCreate
.LVL111:
	l32r	a2, .LC63
	s32i.n	a10, a2, 0
	.loc 1 245 0
	bnez.n	a10, .L63
	.loc 1 245 0 is_stmt 0 discriminator 1
	l32r	a13, .LC57
	movi	a12, 0xf5
	l32r	a11, .LC59
	l32r	a10, .LC61
	call8	ets_printf
.LVL112:
	call8	abort
.LVL113:
.L63:
	.loc 1 246 0 is_stmt 1
	l32r	a2, .LC56
	l32i.n	a11, a2, 0
	call8	xQueueAddToSet
.LVL114:
	.loc 1 248 0
	l32r	a2, .LC62
	l32i.n	a2, a2, 0
	beqz.n	a2, .L64
	.loc 1 248 0 is_stmt 0 discriminator 1
	l32r	a2, .LC63
	l32i.n	a2, a2, 0
	beqz.n	a2, .L64
	.loc 1 248 0 discriminator 2
	l32r	a2, .LC56
	l32i.n	a2, a2, 0
	beqz.n	a2, .L64
	.loc 1 252 0 is_stmt 1
	l32r	a2, .LC64
	movi.n	a13, 0
	s32i.n	a13, sp, 0
	mov.n	a15, a2
	movi.n	a14, 0x16
	l32r	a12, .LC65
	l32r	a11, .LC67
	l32r	a10, .LC68
	call8	xTaskCreatePinnedToCore
.LVL115:
	.loc 1 253 0
	l32i.n	a2, a2, 0
	beqz.n	a2, .L64
	.loc 1 257 0
	movi.n	a11, 0
	mov.n	a10, a11
	call8	btc_a2dp_sink_ctrl_post
.LVL116:
	.loc 1 261 0
	movi.n	a2, 1
	retw.n
.L64:
	.loc 1 264 0
	l32r	a2, .LC52
	l8ui	a2, a2, 0
	beqz.n	a2, .L65
	.loc 1 264 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL117:
	l32r	a11, .LC53
	l32r	a15, .LC69
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC71
	movi.n	a10, 1
	call8	esp_log_write
.LVL118:
.L65:
	.loc 1 266 0 is_stmt 1
	l32r	a2, .LC64
	l32i.n	a10, a2, 0
	beqz.n	a10, .L66
	.loc 1 267 0
	call8	vTaskDelete
.LVL119:
	.loc 1 268 0
	movi.n	a8, 0
	l32r	a2, .LC64
	s32i.n	a8, a2, 0
.L66:
	.loc 1 271 0
	l32r	a2, .LC62
	l32i.n	a10, a2, 0
	beqz.n	a10, .L67
	.loc 1 272 0
	call8	vQueueDelete
.LVL120:
	.loc 1 273 0
	movi.n	a8, 0
	l32r	a2, .LC62
	s32i.n	a8, a2, 0
.L67:
	.loc 1 275 0
	l32r	a2, .LC63
	l32i.n	a10, a2, 0
	beqz.n	a10, .L68
	.loc 1 276 0
	call8	vQueueDelete
.LVL121:
	.loc 1 277 0
	movi.n	a8, 0
	l32r	a2, .LC63
	s32i.n	a8, a2, 0
.L68:
	.loc 1 279 0
	l32r	a2, .LC56
	l32i.n	a10, a2, 0
	beqz.n	a10, .L70
	.loc 1 280 0
	call8	vQueueDelete
.LVL122:
	.loc 1 281 0
	movi.n	a2, 0
	l32r	a8, .LC56
	s32i.n	a2, a8, 0
	retw.n
.L69:
	.loc 1 233 0
	movi.n	a2, 0
	retw.n
.L70:
	.loc 1 283 0
	movi.n	a2, 0
	.loc 1 284 0
	retw.n
.LFE32:
	.size	btc_a2dp_sink_startup, .-btc_a2dp_sink_startup
	.section	.rodata.str1.4
	.align	4
.LC74:
	.string	"btc_a2dp_sink_future"
	.section	.text.btc_a2dp_sink_shutdown,"ax",@progbits
	.literal_position
	.literal .LC72, btc_a2dp_sink_state
	.literal .LC73, btc_a2dp_sink_future
	.literal .LC75, .LC74
	.literal .LC76, __func__$10906
	.literal .LC77, .LC58
	.literal .LC78, btc_aa_snk_task_hdl
	.literal .LC79, btc_aa_snk_data_queue
	.literal .LC80, btc_aa_snk_ctrl_queue
	.literal .LC81, btc_aa_snk_queue_set
	.align	4
	.global	btc_a2dp_sink_shutdown
	.type	btc_a2dp_sink_shutdown, @function
btc_a2dp_sink_shutdown:
.LFB33:
	.loc 1 287 0
	entry	sp, 32
.LCFI16:
	.loc 1 291 0
	movi.n	a3, 2
	l32r	a2, .LC72
	s32i.n	a3, a2, 0
	.loc 1 292 0
	call8	future_new
.LVL123:
	l32r	a2, .LC73
	s32i.n	a10, a2, 0
	.loc 1 293 0
	bnez.n	a10, .L72
	.loc 1 293 0 is_stmt 0 discriminator 1
	l32r	a13, .LC75
	l32r	a12, .LC76
	movi	a11, 0x125
	l32r	a10, .LC77
	call8	__assert_func
.LVL124:
.L72:
	.loc 1 294 0 is_stmt 1
	movi.n	a11, 0
	movi.n	a10, 1
	call8	btc_a2dp_sink_ctrl_post
.LVL125:
	.loc 1 295 0
	l32r	a3, .LC73
	l32i.n	a10, a3, 0
	call8	future_await
.LVL126:
	.loc 1 296 0
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	.loc 1 298 0
	l32r	a3, .LC78
	l32i.n	a10, a3, 0
	call8	vTaskDelete
.LVL127:
	.loc 1 299 0
	s32i.n	a2, a3, 0
	.loc 1 301 0
	l32r	a3, .LC79
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL128:
	.loc 1 302 0
	s32i.n	a2, a3, 0
	.loc 1 304 0
	l32r	a3, .LC80
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL129:
	.loc 1 305 0
	s32i.n	a2, a3, 0
	.loc 1 307 0
	l32r	a3, .LC81
	l32i.n	a10, a3, 0
	call8	vQueueDelete
.LVL130:
	.loc 1 308 0
	s32i.n	a2, a3, 0
	retw.n
.LFE33:
	.size	btc_a2dp_sink_shutdown, .-btc_a2dp_sink_shutdown
	.section	.text.btc_a2dp_sink_set_rx_flush,"ax",@progbits
	.literal_position
	.literal .LC82, btc_aa_snk_cb
	.align	4
	.global	btc_a2dp_sink_set_rx_flush
	.type	btc_a2dp_sink_set_rx_flush, @function
btc_a2dp_sink_set_rx_flush:
.LFB39:
	.loc 1 376 0
.LVL131:
	entry	sp, 32
.LCFI17:
	.loc 1 378 0
	l32r	a8, .LC82
	s8i	a2, a8, 0
	retw.n
.LFE39:
	.size	btc_a2dp_sink_set_rx_flush, .-btc_a2dp_sink_set_rx_flush
	.section	.rodata.str1.4
	.align	4
.LC85:
	.string	"\033[0;31mE (%d) %s: btc reset decoder No Buffer \033[0m\n"
	.section	.text.btc_a2dp_sink_reset_decoder,"ax",@progbits
	.literal_position
	.literal .LC83, appl_trace_level
	.literal .LC84, .LC10
	.literal .LC86, .LC85
	.align	4
	.global	btc_a2dp_sink_reset_decoder
	.type	btc_a2dp_sink_reset_decoder, @function
btc_a2dp_sink_reset_decoder:
.LFB40:
	.loc 1 392 0
.LVL132:
	entry	sp, 32
.LCFI18:
	.loc 1 399 0
	movi.n	a10, 0x12
	call8	malloc
.LVL133:
	mov.n	a3, a10
.LVL134:
	bnez.n	a10, .L75
	.loc 1 400 0
	l32r	a2, .LC83
.LVL135:
	l8ui	a2, a2, 0
	beqz.n	a2, .L74
	.loc 1 400 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL136:
	l32r	a11, .LC84
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC86
	movi.n	a10, 1
	call8	esp_log_write
.LVL137:
	retw.n
.LVL138:
.L75:
	.loc 1 404 0 is_stmt 1
	movi.n	a12, 0xa
	mov.n	a11, a2
	addi.n	a10, a10, 8
	call8	memcpy
.LVL139:
	.loc 1 405 0
	mov.n	a11, a3
	movi.n	a10, 3
	call8	btc_a2dp_sink_ctrl_post
.LVL140:
.L74:
	retw.n
.LFE40:
	.size	btc_a2dp_sink_reset_decoder, .-btc_a2dp_sink_reset_decoder
	.section	.text.btc_a2dp_sink_rx_flush_req,"ax",@progbits
	.literal_position
	.literal .LC87, btc_aa_snk_cb
	.align	4
	.global	btc_a2dp_sink_rx_flush_req
	.type	btc_a2dp_sink_rx_flush_req, @function
btc_a2dp_sink_rx_flush_req:
.LFB44:
	.loc 1 633 0
	entry	sp, 32
.LCFI19:
	.loc 1 634 0
	l32r	a8, .LC87
	l32i.n	a10, a8, 4
	call8	fixed_queue_is_empty
.LVL141:
	bnez.n	a10, .L78
	.loc 1 638 0
	movi.n	a11, 0
	movi.n	a10, 2
	call8	btc_a2dp_sink_ctrl_post
.LVL142:
.L78:
	.loc 1 640 0
	movi.n	a2, 1
	retw.n
.LFE44:
	.size	btc_a2dp_sink_rx_flush_req, .-btc_a2dp_sink_rx_flush_req
	.section	.text.btc_a2dp_sink_on_idle,"ax",@progbits
	.literal_position
	.literal .LC88, btc_aa_snk_cb
	.align	4
	.global	btc_a2dp_sink_on_idle
	.type	btc_a2dp_sink_on_idle, @function
btc_a2dp_sink_on_idle:
.LFB34:
	.loc 1 318 0
	entry	sp, 32
.LCFI20:
	.loc 1 319 0
	movi.n	a9, 1
	l32r	a8, .LC88
	s8i	a9, a8, 0
	.loc 1 320 0
	call8	btc_a2dp_sink_rx_flush_req
.LVL143:
	.loc 1 321 0
	call8	btc_a2dp_sink_clear_track
.LVL144:
	retw.n
.LFE34:
	.size	btc_a2dp_sink_on_idle, .-btc_a2dp_sink_on_idle
	.section	.text.btc_a2dp_sink_on_stopped,"ax",@progbits
	.literal_position
	.literal .LC89, btc_aa_snk_cb
	.align	4
	.global	btc_a2dp_sink_on_stopped
	.type	btc_a2dp_sink_on_stopped, @function
btc_a2dp_sink_on_stopped:
.LFB35:
	.loc 1 333 0
.LVL145:
	entry	sp, 32
.LCFI21:
	.loc 1 334 0
	movi.n	a9, 1
	l32r	a8, .LC89
	s8i	a9, a8, 0
	.loc 1 335 0
	call8	btc_a2dp_sink_rx_flush_req
.LVL146:
	.loc 1 336 0
	movi.n	a10, 0
	call8	btc_a2dp_control_set_datachnl_stat
.LVL147:
	retw.n
.LFE35:
	.size	btc_a2dp_sink_on_stopped, .-btc_a2dp_sink_on_stopped
	.section	.text.btc_a2dp_sink_on_suspended,"ax",@progbits
	.literal_position
	.literal .LC90, btc_aa_snk_cb
	.align	4
	.global	btc_a2dp_sink_on_suspended
	.type	btc_a2dp_sink_on_suspended, @function
btc_a2dp_sink_on_suspended:
.LFB36:
	.loc 1 346 0
.LVL148:
	entry	sp, 32
.LCFI22:
	.loc 1 347 0
	movi.n	a9, 1
	l32r	a8, .LC90
	s8i	a9, a8, 0
	.loc 1 348 0
	call8	btc_a2dp_sink_rx_flush_req
.LVL149:
	retw.n
.LFE36:
	.size	btc_a2dp_sink_on_suspended, .-btc_a2dp_sink_on_suspended
	.section	.rodata.str1.4
	.align	4
.LC95:
	.string	"\033[0;33mW (%d) %s: Pkt dropped\n\033[0m\n"
	.align	4
.LC97:
	.string	"\033[0;33mW (%d) %s: btc_a2dp_sink_enque_buf No Buffer left - \033[0m\n"
	.section	.text.btc_a2dp_sink_enque_buf,"ax",@progbits
	.literal_position
	.literal .LC91, btc_a2dp_sink_state
	.literal .LC92, btc_aa_snk_cb
	.literal .LC93, appl_trace_level
	.literal .LC94, .LC10
	.literal .LC96, .LC95
	.literal .LC98, .LC97
	.align	4
	.global	btc_a2dp_sink_enque_buf
	.type	btc_a2dp_sink_enque_buf, @function
btc_a2dp_sink_enque_buf:
.LFB48:
	.loc 1 705 0
.LVL150:
	entry	sp, 32
.LCFI23:
	.loc 1 708 0
	l32r	a8, .LC91
	l32i.n	a8, a8, 0
	bnei	a8, 1, .L89
	.loc 1 712 0
	l32r	a8, .LC92
	l8ui	a8, a8, 0
	beqz.n	a8, .L84
	.loc 1 713 0
	l32r	a2, .LC92
.LVL151:
	l32i.n	a10, a2, 4
	call8	fixed_queue_length
.LVL152:
	extui	a2, a10, 0, 8
	retw.n
.LVL153:
.L84:
	.loc 1 716 0
	l32r	a8, .LC92
	l32i.n	a10, a8, 4
	call8	fixed_queue_length
.LVL154:
	movi.n	a8, 0x11
	bgeu	a8, a10, .L85
	.loc 1 717 0
	l32r	a2, .LC93
.LVL155:
	l8ui	a2, a2, 0
	bltui	a2, 2, .L86
	.loc 1 717 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL156:
	l32r	a11, .LC94
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC96
	movi.n	a10, 2
	call8	esp_log_write
.LVL157:
.L86:
	.loc 1 718 0 is_stmt 1
	l32r	a2, .LC92
	l32i.n	a10, a2, 4
	call8	fixed_queue_length
.LVL158:
	extui	a2, a10, 0, 8
	retw.n
.LVL159:
.L85:
	.loc 1 724 0
	l16ui	a4, a2, 4
	l16ui	a3, a2, 2
	add.n	a3, a4, a3
	addi.n	a3, a3, 8
	mov.n	a10, a3
	call8	malloc
.LVL160:
	mov.n	a4, a10
.LVL161:
	beqz.n	a10, .L87
	.loc 1 726 0
	mov.n	a12, a3
	mov.n	a11, a2
	call8	memcpy
.LVL162:
	.loc 1 727 0
	l16ui	a2, a4, 4
.LVL163:
	addi.n	a2, a2, 8
	add.n	a2, a4, a2
	l8ui	a2, a2, 0
	extui	a2, a2, 0, 4
	s16i	a2, a4, 0
	.loc 1 729 0
	mov.n	a11, a4
	l32r	a2, .LC92
	l32i.n	a10, a2, 4
	call8	fixed_queue_enqueue
.LVL164:
	.loc 1 730 0
	movi.n	a10, 0
	call8	btc_a2dp_sink_data_post
.LVL165:
	j	.L88
.LVL166:
.L87:
	.loc 1 733 0
	l32r	a2, .LC93
.LVL167:
	l8ui	a2, a2, 0
	bltui	a2, 2, .L88
	.loc 1 733 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL168:
	l32r	a11, .LC94
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC98
	movi.n	a10, 2
	call8	esp_log_write
.LVL169:
.L88:
	.loc 1 735 0 is_stmt 1
	l32r	a2, .LC92
	l32i.n	a10, a2, 4
	call8	fixed_queue_length
.LVL170:
	extui	a2, a10, 0, 8
	retw.n
.LVL171:
.L89:
	.loc 1 709 0
	movi.n	a2, 0
.LVL172:
	.loc 1 736 0
	retw.n
.LFE48:
	.size	btc_a2dp_sink_enque_buf, .-btc_a2dp_sink_enque_buf
	.section	.rodata.__func__$10906,"a",@progbits
	.align	4
	.type	__func__$10906, @object
	.size	__func__$10906, 23
__func__$10906:
	.string	"btc_a2dp_sink_shutdown"
	.section	.rodata.__func__$10902,"a",@progbits
	.align	4
	.type	__func__$10902, @object
	.size	__func__$10902, 22
__func__$10902:
	.string	"btc_a2dp_sink_startup"
	.section	.rodata.__FUNCTION__$10900,"a",@progbits
	.align	4
	.type	__FUNCTION__$10900, @object
	.size	__FUNCTION__$10900, 22
__FUNCTION__$10900:
	.string	"btc_a2dp_sink_startup"
	.comm	pcmData,7680,4
	.comm	contextData,1888,4
	.comm	context,84,4
	.section	.bss.bt_aa_snk_data_cb,"aw",@nobits
	.align	4
	.type	bt_aa_snk_data_cb, @object
	.size	bt_aa_snk_data_cb, 4
bt_aa_snk_data_cb:
	.zero	4
	.section	.bss.btc_aa_snk_queue_set,"aw",@nobits
	.align	4
	.type	btc_aa_snk_queue_set, @object
	.size	btc_aa_snk_queue_set, 4
btc_aa_snk_queue_set:
	.zero	4
	.section	.bss.btc_aa_snk_ctrl_queue,"aw",@nobits
	.align	4
	.type	btc_aa_snk_ctrl_queue, @object
	.size	btc_aa_snk_ctrl_queue, 4
btc_aa_snk_ctrl_queue:
	.zero	4
	.section	.bss.btc_aa_snk_data_queue,"aw",@nobits
	.align	4
	.type	btc_aa_snk_data_queue, @object
	.size	btc_aa_snk_data_queue, 4
btc_aa_snk_data_queue:
	.zero	4
	.section	.bss.btc_aa_snk_task_hdl,"aw",@nobits
	.align	4
	.type	btc_aa_snk_task_hdl, @object
	.size	btc_aa_snk_task_hdl, 4
btc_aa_snk_task_hdl:
	.zero	4
	.section	.bss.btc_a2dp_sink_future,"aw",@nobits
	.align	4
	.type	btc_a2dp_sink_future, @object
	.size	btc_a2dp_sink_future, 4
btc_a2dp_sink_future:
	.zero	4
	.section	.bss.btc_a2dp_sink_state,"aw",@nobits
	.align	4
	.type	btc_a2dp_sink_state, @object
	.size	btc_a2dp_sink_state, 4
btc_a2dp_sink_state:
	.zero	4
	.section	.bss.btc_aa_snk_cb,"aw",@nobits
	.align	4
	.type	btc_aa_snk_cb, @object
	.size	btc_aa_snk_cb, 12
btc_aa_snk_cb:
	.zero	12
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
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI0-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI1-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI2-.LFB50
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
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI4-.LFB43
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI5-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI6-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI7-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI8-.LFB42
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI10-.LFB31
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI12-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI13-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI14-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI15-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI16-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI17-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI18-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI19-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI20-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI21-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI22-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI23-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/thread.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/fixed_queue.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/a2d_api.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/a2d_sbc.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_api.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_a2dp_api.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_sink.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_cpu_dep.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_stddefs.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_status.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/external/sbc/decoder/include/oi_codec_sbc.h"
	.file 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/semaphore.h"
	.file 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/future.h"
	.file 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
	.file 25 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_av.h"
	.file 27 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_control.h"
	.file 28 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/ets_sys.h"
	.file 29 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2628
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF748
	.byte	0xc
	.4byte	.LASF749
	.4byte	.LASF750
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x22
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x23
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x29
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x12d
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0xc7
	.4byte	0x94
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0x94
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0xc9
	.4byte	0x94
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0xca
	.4byte	0x94
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0xcb
	.4byte	0x12d
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x13c
	.uleb128 0x9
	.4byte	0x13c
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xcc
	.4byte	0xe8
	.uleb128 0x8
	.4byte	0xb5
	.4byte	0x15e
	.uleb128 0xa
	.4byte	0x13c
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF27
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0xd
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x1f
	.4byte	0x1ac
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x5
	.byte	0x6f
	.4byte	0x62
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x5
	.byte	0x76
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0x6b
	.4byte	0x16b
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x58
	.4byte	0x16b
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x5f
	.4byte	0x16b
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0x66
	.4byte	0x16b
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4f
	.4byte	0x1cd
	.uleb128 0xf
	.4byte	.LASF629
	.byte	0x10
	.byte	0x9
	.byte	0x1c
	.4byte	0x235
	.uleb128 0x7
	.string	"sig"
	.byte	0x9
	.byte	0x1d
	.4byte	0xaa
	.byte	0
	.uleb128 0x7
	.string	"par"
	.byte	0x9
	.byte	0x1e
	.4byte	0x16b
	.byte	0x4
	.uleb128 0x7
	.string	"cb"
	.byte	0x9
	.byte	0x1f
	.4byte	0x16b
	.byte	0x8
	.uleb128 0x7
	.string	"arg"
	.byte	0x9
	.byte	0x20
	.4byte	0x16b
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x9
	.byte	0x22
	.4byte	0x1f9
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xa
	.byte	0x1f
	.4byte	0x24b
	.uleb128 0x10
	.4byte	.LASF43
	.uleb128 0xb
	.byte	0x4
	.4byte	0x240
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xb
	.byte	0x58
	.4byte	0xb5
	.uleb128 0x5
	.byte	0x7
	.byte	0xc
	.byte	0x4d
	.4byte	0x2be
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0xc
	.byte	0x4e
	.4byte	0xb5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0xc
	.byte	0x4f
	.4byte	0xb5
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0xc
	.byte	0x50
	.4byte	0xb5
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0xc
	.byte	0x51
	.4byte	0xb5
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0xc
	.byte	0x52
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0xc
	.byte	0x53
	.4byte	0xb5
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0xc
	.byte	0x54
	.4byte	0xb5
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xc
	.byte	0x55
	.4byte	0x261
	.uleb128 0xb
	.byte	0x4
	.4byte	0x143
	.uleb128 0x8
	.4byte	0xb5
	.4byte	0x2df
	.uleb128 0xa
	.4byte	0x13c
	.byte	0x9
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.2byte	0x1c0
	.4byte	0x407
	.uleb128 0xe
	.4byte	.LASF53
	.byte	0
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x13
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x15
	.uleb128 0xe
	.4byte	.LASF75
	.byte	0x16
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x17
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x19
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0x1a
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x1b
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x1d
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x1e
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x1f
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x21
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x22
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x23
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x24
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x25
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x26
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x27
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x28
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x29
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x2a
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x2b
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x2c
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x2d
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x2e
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x74
	.byte	0xe
	.2byte	0x6ea
	.4byte	0x43f
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xf
	.byte	0x36
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xf
	.byte	0x4f
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xf
	.byte	0x53
	.4byte	0xb5
	.uleb128 0x12
	.byte	0x4
	.byte	0xf
	.2byte	0x158
	.4byte	0x49e
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0xf
	.2byte	0x159
	.4byte	0x44a
	.byte	0
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0xf
	.2byte	0x15a
	.4byte	0x455
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0xf
	.2byte	0x15b
	.4byte	0xd6
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0xf
	.2byte	0x15c
	.4byte	0x43f
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0xf
	.2byte	0x15d
	.4byte	0x460
	.uleb128 0x8
	.4byte	0x164
	.4byte	0x4ba
	.uleb128 0xa
	.4byte	0x13c
	.byte	0x22
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x10
	.byte	0x91
	.4byte	0x4c5
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4cb
	.uleb128 0x15
	.4byte	0x4db
	.uleb128 0x16
	.4byte	0x4db
	.uleb128 0x16
	.4byte	0xaa
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4e1
	.uleb128 0x17
	.4byte	0x89
	.uleb128 0x5
	.byte	0x12
	.byte	0x11
	.byte	0x22
	.4byte	0x507
	.uleb128 0x7
	.string	"hdr"
	.byte	0x11
	.byte	0x23
	.4byte	0x143
	.byte	0
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0x11
	.byte	0x24
	.4byte	0x2cf
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x11
	.byte	0x25
	.4byte	0x4e6
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x12
	.byte	0x67
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x12
	.byte	0x68
	.4byte	0x37
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x12
	.2byte	0x135
	.4byte	0x25
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x12
	.2byte	0x136
	.4byte	0x3e
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x12
	.2byte	0x137
	.4byte	0x16d
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x12
	.2byte	0x138
	.4byte	0x37
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x12
	.2byte	0x139
	.4byte	0x50
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x12
	.2byte	0x13a
	.4byte	0x174
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x13
	.byte	0x85
	.4byte	0x164
	.uleb128 0xd
	.byte	0x4
	.4byte	0x74
	.byte	0x14
	.byte	0x2a
	.4byte	0x1201
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0
	.uleb128 0xe
	.4byte	.LASF128
	.byte	0
	.uleb128 0xe
	.4byte	.LASF129
	.byte	0x65
	.uleb128 0xe
	.4byte	.LASF130
	.byte	0x66
	.uleb128 0xe
	.4byte	.LASF131
	.byte	0x67
	.uleb128 0xe
	.4byte	.LASF132
	.byte	0x68
	.uleb128 0xe
	.4byte	.LASF133
	.byte	0x69
	.uleb128 0xe
	.4byte	.LASF134
	.byte	0x6a
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0x6b
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0x6c
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0x6d
	.uleb128 0xe
	.4byte	.LASF138
	.byte	0x6e
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x6f
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0x70
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0x71
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0x72
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x73
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0x74
	.uleb128 0xe
	.4byte	.LASF145
	.byte	0x75
	.uleb128 0xe
	.4byte	.LASF146
	.byte	0x76
	.uleb128 0xe
	.4byte	.LASF147
	.byte	0x77
	.uleb128 0xe
	.4byte	.LASF148
	.byte	0x78
	.uleb128 0xe
	.4byte	.LASF149
	.byte	0x79
	.uleb128 0xe
	.4byte	.LASF150
	.byte	0x7a
	.uleb128 0xe
	.4byte	.LASF151
	.byte	0x7b
	.uleb128 0xe
	.4byte	.LASF152
	.byte	0x7c
	.uleb128 0xe
	.4byte	.LASF153
	.byte	0x7d
	.uleb128 0xe
	.4byte	.LASF154
	.byte	0x7e
	.uleb128 0xe
	.4byte	.LASF155
	.byte	0x7f
	.uleb128 0xe
	.4byte	.LASF156
	.byte	0x80
	.uleb128 0xe
	.4byte	.LASF157
	.byte	0x81
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0x82
	.uleb128 0xe
	.4byte	.LASF159
	.byte	0x83
	.uleb128 0xe
	.4byte	.LASF160
	.byte	0x84
	.uleb128 0xe
	.4byte	.LASF161
	.byte	0x85
	.uleb128 0xe
	.4byte	.LASF162
	.byte	0x86
	.uleb128 0xe
	.4byte	.LASF163
	.byte	0x87
	.uleb128 0xe
	.4byte	.LASF164
	.byte	0x88
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0x89
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0x8a
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0x8b
	.uleb128 0xe
	.4byte	.LASF168
	.byte	0x8c
	.uleb128 0xe
	.4byte	.LASF169
	.byte	0x8d
	.uleb128 0xe
	.4byte	.LASF170
	.byte	0x8e
	.uleb128 0xe
	.4byte	.LASF171
	.byte	0x8f
	.uleb128 0xe
	.4byte	.LASF172
	.byte	0x90
	.uleb128 0xe
	.4byte	.LASF173
	.byte	0x91
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0x92
	.uleb128 0x18
	.4byte	.LASF175
	.2byte	0x192
	.uleb128 0x18
	.4byte	.LASF176
	.2byte	0x193
	.uleb128 0x18
	.4byte	.LASF177
	.2byte	0x194
	.uleb128 0x18
	.4byte	.LASF178
	.2byte	0x196
	.uleb128 0x18
	.4byte	.LASF179
	.2byte	0x197
	.uleb128 0x18
	.4byte	.LASF180
	.2byte	0x198
	.uleb128 0x18
	.4byte	.LASF181
	.2byte	0x19a
	.uleb128 0x18
	.4byte	.LASF182
	.2byte	0x19b
	.uleb128 0x18
	.4byte	.LASF183
	.2byte	0x19c
	.uleb128 0x18
	.4byte	.LASF184
	.2byte	0x19e
	.uleb128 0x18
	.4byte	.LASF185
	.2byte	0x1a2
	.uleb128 0x18
	.4byte	.LASF186
	.2byte	0x1a7
	.uleb128 0x18
	.4byte	.LASF187
	.2byte	0x1a9
	.uleb128 0x18
	.4byte	.LASF188
	.2byte	0x1aa
	.uleb128 0x18
	.4byte	.LASF189
	.2byte	0x1ab
	.uleb128 0x18
	.4byte	.LASF190
	.2byte	0x1ac
	.uleb128 0x18
	.4byte	.LASF191
	.2byte	0x1ad
	.uleb128 0x18
	.4byte	.LASF192
	.2byte	0x1ae
	.uleb128 0x18
	.4byte	.LASF193
	.2byte	0x1af
	.uleb128 0x18
	.4byte	.LASF194
	.2byte	0x1b1
	.uleb128 0x18
	.4byte	.LASF195
	.2byte	0x1b2
	.uleb128 0x18
	.4byte	.LASF196
	.2byte	0x1b3
	.uleb128 0x18
	.4byte	.LASF197
	.2byte	0x1b4
	.uleb128 0x18
	.4byte	.LASF198
	.2byte	0x1b5
	.uleb128 0x18
	.4byte	.LASF199
	.2byte	0x1b7
	.uleb128 0x18
	.4byte	.LASF200
	.2byte	0x1b8
	.uleb128 0x18
	.4byte	.LASF201
	.2byte	0x1b9
	.uleb128 0x18
	.4byte	.LASF202
	.2byte	0x1bc
	.uleb128 0x18
	.4byte	.LASF203
	.2byte	0x1bd
	.uleb128 0x18
	.4byte	.LASF204
	.2byte	0x1c2
	.uleb128 0x18
	.4byte	.LASF205
	.2byte	0x1c3
	.uleb128 0x18
	.4byte	.LASF206
	.2byte	0x1c4
	.uleb128 0x18
	.4byte	.LASF207
	.2byte	0x1c5
	.uleb128 0x18
	.4byte	.LASF208
	.2byte	0x1c6
	.uleb128 0x18
	.4byte	.LASF209
	.2byte	0x1cc
	.uleb128 0x18
	.4byte	.LASF210
	.2byte	0x1cd
	.uleb128 0x18
	.4byte	.LASF211
	.2byte	0x1ce
	.uleb128 0x18
	.4byte	.LASF212
	.2byte	0x1cf
	.uleb128 0x18
	.4byte	.LASF213
	.2byte	0x1d6
	.uleb128 0x18
	.4byte	.LASF214
	.2byte	0x1d7
	.uleb128 0x18
	.4byte	.LASF215
	.2byte	0x1d8
	.uleb128 0x18
	.4byte	.LASF216
	.2byte	0x1e2
	.uleb128 0x18
	.4byte	.LASF217
	.2byte	0x1e3
	.uleb128 0x18
	.4byte	.LASF218
	.2byte	0x1e4
	.uleb128 0x18
	.4byte	.LASF219
	.2byte	0x259
	.uleb128 0x18
	.4byte	.LASF220
	.2byte	0x25b
	.uleb128 0x18
	.4byte	.LASF221
	.2byte	0x25d
	.uleb128 0x18
	.4byte	.LASF222
	.2byte	0x25f
	.uleb128 0x18
	.4byte	.LASF223
	.2byte	0x260
	.uleb128 0x18
	.4byte	.LASF224
	.2byte	0x263
	.uleb128 0x18
	.4byte	.LASF225
	.2byte	0x264
	.uleb128 0x18
	.4byte	.LASF226
	.2byte	0x265
	.uleb128 0x18
	.4byte	.LASF227
	.2byte	0x266
	.uleb128 0x18
	.4byte	.LASF228
	.2byte	0x267
	.uleb128 0x18
	.4byte	.LASF229
	.2byte	0x268
	.uleb128 0x18
	.4byte	.LASF230
	.2byte	0x26b
	.uleb128 0x18
	.4byte	.LASF231
	.2byte	0x26c
	.uleb128 0x18
	.4byte	.LASF232
	.2byte	0x26d
	.uleb128 0x18
	.4byte	.LASF233
	.2byte	0x26e
	.uleb128 0x18
	.4byte	.LASF234
	.2byte	0x26f
	.uleb128 0x18
	.4byte	.LASF235
	.2byte	0x270
	.uleb128 0x18
	.4byte	.LASF236
	.2byte	0x271
	.uleb128 0x18
	.4byte	.LASF237
	.2byte	0x272
	.uleb128 0x18
	.4byte	.LASF238
	.2byte	0x273
	.uleb128 0x18
	.4byte	.LASF239
	.2byte	0x274
	.uleb128 0x18
	.4byte	.LASF240
	.2byte	0x275
	.uleb128 0x18
	.4byte	.LASF241
	.2byte	0x276
	.uleb128 0x18
	.4byte	.LASF242
	.2byte	0x277
	.uleb128 0x18
	.4byte	.LASF243
	.2byte	0x278
	.uleb128 0x18
	.4byte	.LASF244
	.2byte	0x279
	.uleb128 0x18
	.4byte	.LASF245
	.2byte	0x2bd
	.uleb128 0x18
	.4byte	.LASF246
	.2byte	0x2bd
	.uleb128 0x18
	.4byte	.LASF247
	.2byte	0x2be
	.uleb128 0x18
	.4byte	.LASF248
	.2byte	0x2bf
	.uleb128 0x18
	.4byte	.LASF249
	.2byte	0x2c0
	.uleb128 0x18
	.4byte	.LASF250
	.2byte	0x2c1
	.uleb128 0x18
	.4byte	.LASF251
	.2byte	0x2c2
	.uleb128 0x18
	.4byte	.LASF252
	.2byte	0x2c3
	.uleb128 0x18
	.4byte	.LASF253
	.2byte	0x2c4
	.uleb128 0x18
	.4byte	.LASF254
	.2byte	0x2c5
	.uleb128 0x18
	.4byte	.LASF255
	.2byte	0x2c6
	.uleb128 0x18
	.4byte	.LASF256
	.2byte	0x2c7
	.uleb128 0x18
	.4byte	.LASF257
	.2byte	0x2c8
	.uleb128 0x18
	.4byte	.LASF258
	.2byte	0x2c9
	.uleb128 0x18
	.4byte	.LASF259
	.2byte	0x2ca
	.uleb128 0x18
	.4byte	.LASF260
	.2byte	0x2cb
	.uleb128 0x18
	.4byte	.LASF261
	.2byte	0x2cc
	.uleb128 0x18
	.4byte	.LASF262
	.2byte	0x2cd
	.uleb128 0x18
	.4byte	.LASF263
	.2byte	0x2ce
	.uleb128 0x18
	.4byte	.LASF264
	.2byte	0x2cf
	.uleb128 0x18
	.4byte	.LASF265
	.2byte	0x2d0
	.uleb128 0x18
	.4byte	.LASF266
	.2byte	0x2d1
	.uleb128 0x18
	.4byte	.LASF267
	.2byte	0x2d2
	.uleb128 0x18
	.4byte	.LASF268
	.2byte	0x2d3
	.uleb128 0x18
	.4byte	.LASF269
	.2byte	0x2d4
	.uleb128 0x18
	.4byte	.LASF270
	.2byte	0x2d5
	.uleb128 0x18
	.4byte	.LASF271
	.2byte	0x2d6
	.uleb128 0x18
	.4byte	.LASF272
	.2byte	0x2d7
	.uleb128 0x18
	.4byte	.LASF273
	.2byte	0x2d8
	.uleb128 0x18
	.4byte	.LASF274
	.2byte	0x2d9
	.uleb128 0x18
	.4byte	.LASF275
	.2byte	0x2da
	.uleb128 0x18
	.4byte	.LASF276
	.2byte	0x2db
	.uleb128 0x18
	.4byte	.LASF277
	.2byte	0x2dc
	.uleb128 0x18
	.4byte	.LASF278
	.2byte	0x2dd
	.uleb128 0x18
	.4byte	.LASF279
	.2byte	0x2de
	.uleb128 0x18
	.4byte	.LASF280
	.2byte	0x2df
	.uleb128 0x18
	.4byte	.LASF281
	.2byte	0x2e0
	.uleb128 0x18
	.4byte	.LASF282
	.2byte	0x2e1
	.uleb128 0x18
	.4byte	.LASF283
	.2byte	0x2e2
	.uleb128 0x18
	.4byte	.LASF284
	.2byte	0x2e3
	.uleb128 0x18
	.4byte	.LASF285
	.2byte	0x2e4
	.uleb128 0x18
	.4byte	.LASF286
	.2byte	0x2e5
	.uleb128 0x18
	.4byte	.LASF287
	.2byte	0x2e6
	.uleb128 0x18
	.4byte	.LASF288
	.2byte	0x2e7
	.uleb128 0x18
	.4byte	.LASF289
	.2byte	0x2e8
	.uleb128 0x18
	.4byte	.LASF290
	.2byte	0x2e9
	.uleb128 0x18
	.4byte	.LASF291
	.2byte	0x2ea
	.uleb128 0x18
	.4byte	.LASF292
	.2byte	0x2eb
	.uleb128 0x18
	.4byte	.LASF293
	.2byte	0x2ec
	.uleb128 0x18
	.4byte	.LASF294
	.2byte	0x2ed
	.uleb128 0x18
	.4byte	.LASF295
	.2byte	0x2ee
	.uleb128 0x18
	.4byte	.LASF296
	.2byte	0x2ef
	.uleb128 0x18
	.4byte	.LASF297
	.2byte	0x2f0
	.uleb128 0x18
	.4byte	.LASF298
	.2byte	0x2f1
	.uleb128 0x18
	.4byte	.LASF299
	.2byte	0x2f2
	.uleb128 0x18
	.4byte	.LASF300
	.2byte	0x2f3
	.uleb128 0x18
	.4byte	.LASF301
	.2byte	0x2f4
	.uleb128 0x18
	.4byte	.LASF302
	.2byte	0x2f5
	.uleb128 0x18
	.4byte	.LASF303
	.2byte	0x2f5
	.uleb128 0x18
	.4byte	.LASF304
	.2byte	0x320
	.uleb128 0x18
	.4byte	.LASF305
	.2byte	0x322
	.uleb128 0x18
	.4byte	.LASF306
	.2byte	0x323
	.uleb128 0x18
	.4byte	.LASF307
	.2byte	0x324
	.uleb128 0x18
	.4byte	.LASF308
	.2byte	0x325
	.uleb128 0x18
	.4byte	.LASF309
	.2byte	0x326
	.uleb128 0x18
	.4byte	.LASF310
	.2byte	0x327
	.uleb128 0x18
	.4byte	.LASF311
	.2byte	0x328
	.uleb128 0x18
	.4byte	.LASF312
	.2byte	0x32a
	.uleb128 0x18
	.4byte	.LASF313
	.2byte	0x32b
	.uleb128 0x18
	.4byte	.LASF314
	.2byte	0x32c
	.uleb128 0x18
	.4byte	.LASF315
	.2byte	0x32d
	.uleb128 0x18
	.4byte	.LASF316
	.2byte	0x32f
	.uleb128 0x18
	.4byte	.LASF317
	.2byte	0x330
	.uleb128 0x18
	.4byte	.LASF318
	.2byte	0x331
	.uleb128 0x18
	.4byte	.LASF319
	.2byte	0x333
	.uleb128 0x18
	.4byte	.LASF320
	.2byte	0x335
	.uleb128 0x18
	.4byte	.LASF321
	.2byte	0x337
	.uleb128 0x18
	.4byte	.LASF322
	.2byte	0x338
	.uleb128 0x18
	.4byte	.LASF323
	.2byte	0x339
	.uleb128 0x18
	.4byte	.LASF324
	.2byte	0x33a
	.uleb128 0x18
	.4byte	.LASF325
	.2byte	0x33b
	.uleb128 0x18
	.4byte	.LASF326
	.2byte	0x33d
	.uleb128 0x18
	.4byte	.LASF327
	.2byte	0x33e
	.uleb128 0x18
	.4byte	.LASF328
	.2byte	0x33f
	.uleb128 0x18
	.4byte	.LASF329
	.2byte	0x340
	.uleb128 0x18
	.4byte	.LASF330
	.2byte	0x341
	.uleb128 0x18
	.4byte	.LASF331
	.2byte	0x342
	.uleb128 0x18
	.4byte	.LASF332
	.2byte	0x343
	.uleb128 0x18
	.4byte	.LASF333
	.2byte	0x344
	.uleb128 0x18
	.4byte	.LASF334
	.2byte	0x345
	.uleb128 0x18
	.4byte	.LASF335
	.2byte	0x346
	.uleb128 0x18
	.4byte	.LASF336
	.2byte	0x347
	.uleb128 0x18
	.4byte	.LASF337
	.2byte	0x348
	.uleb128 0x18
	.4byte	.LASF338
	.2byte	0x349
	.uleb128 0x18
	.4byte	.LASF339
	.2byte	0x34a
	.uleb128 0x18
	.4byte	.LASF340
	.2byte	0x34b
	.uleb128 0x18
	.4byte	.LASF341
	.2byte	0x385
	.uleb128 0x18
	.4byte	.LASF342
	.2byte	0x387
	.uleb128 0x18
	.4byte	.LASF343
	.2byte	0x388
	.uleb128 0x18
	.4byte	.LASF344
	.2byte	0x389
	.uleb128 0x18
	.4byte	.LASF345
	.2byte	0x38a
	.uleb128 0x18
	.4byte	.LASF346
	.2byte	0x38b
	.uleb128 0x18
	.4byte	.LASF347
	.2byte	0x38c
	.uleb128 0x18
	.4byte	.LASF348
	.2byte	0x38d
	.uleb128 0x18
	.4byte	.LASF349
	.2byte	0x38e
	.uleb128 0x18
	.4byte	.LASF350
	.2byte	0x38f
	.uleb128 0x18
	.4byte	.LASF351
	.2byte	0x390
	.uleb128 0x18
	.4byte	.LASF352
	.2byte	0x391
	.uleb128 0x18
	.4byte	.LASF353
	.2byte	0x393
	.uleb128 0x18
	.4byte	.LASF354
	.2byte	0x394
	.uleb128 0x18
	.4byte	.LASF355
	.2byte	0x395
	.uleb128 0x18
	.4byte	.LASF356
	.2byte	0x396
	.uleb128 0x18
	.4byte	.LASF357
	.2byte	0x398
	.uleb128 0x18
	.4byte	.LASF358
	.2byte	0x399
	.uleb128 0x18
	.4byte	.LASF359
	.2byte	0x39a
	.uleb128 0x18
	.4byte	.LASF360
	.2byte	0x39b
	.uleb128 0x18
	.4byte	.LASF361
	.2byte	0x39c
	.uleb128 0x18
	.4byte	.LASF362
	.2byte	0x39d
	.uleb128 0x18
	.4byte	.LASF363
	.2byte	0x39e
	.uleb128 0x18
	.4byte	.LASF364
	.2byte	0x39f
	.uleb128 0x18
	.4byte	.LASF365
	.2byte	0x3a0
	.uleb128 0x18
	.4byte	.LASF366
	.2byte	0x3e9
	.uleb128 0x18
	.4byte	.LASF367
	.2byte	0x3ea
	.uleb128 0x18
	.4byte	.LASF368
	.2byte	0x44d
	.uleb128 0x18
	.4byte	.LASF369
	.2byte	0x44e
	.uleb128 0x18
	.4byte	.LASF370
	.2byte	0x4b1
	.uleb128 0x18
	.4byte	.LASF371
	.2byte	0x4b3
	.uleb128 0x18
	.4byte	.LASF372
	.2byte	0x4b4
	.uleb128 0x18
	.4byte	.LASF373
	.2byte	0x4b5
	.uleb128 0x18
	.4byte	.LASF374
	.2byte	0x4b6
	.uleb128 0x18
	.4byte	.LASF375
	.2byte	0x4b7
	.uleb128 0x18
	.4byte	.LASF376
	.2byte	0x4b9
	.uleb128 0x18
	.4byte	.LASF377
	.2byte	0x4ba
	.uleb128 0x18
	.4byte	.LASF378
	.2byte	0x4bb
	.uleb128 0x18
	.4byte	.LASF379
	.2byte	0x4bc
	.uleb128 0x18
	.4byte	.LASF380
	.2byte	0x4be
	.uleb128 0x18
	.4byte	.LASF381
	.2byte	0x4bf
	.uleb128 0x18
	.4byte	.LASF382
	.2byte	0x4c0
	.uleb128 0x18
	.4byte	.LASF383
	.2byte	0x515
	.uleb128 0x18
	.4byte	.LASF384
	.2byte	0x519
	.uleb128 0x18
	.4byte	.LASF385
	.2byte	0x51b
	.uleb128 0x18
	.4byte	.LASF386
	.2byte	0x51d
	.uleb128 0x18
	.4byte	.LASF387
	.2byte	0x51e
	.uleb128 0x18
	.4byte	.LASF388
	.2byte	0x51f
	.uleb128 0x18
	.4byte	.LASF389
	.2byte	0x520
	.uleb128 0x18
	.4byte	.LASF390
	.2byte	0x521
	.uleb128 0x18
	.4byte	.LASF391
	.2byte	0x522
	.uleb128 0x18
	.4byte	.LASF392
	.2byte	0x524
	.uleb128 0x18
	.4byte	.LASF393
	.2byte	0x525
	.uleb128 0x18
	.4byte	.LASF394
	.2byte	0x526
	.uleb128 0x18
	.4byte	.LASF395
	.2byte	0x527
	.uleb128 0x18
	.4byte	.LASF396
	.2byte	0x528
	.uleb128 0x18
	.4byte	.LASF397
	.2byte	0x529
	.uleb128 0x18
	.4byte	.LASF398
	.2byte	0x52a
	.uleb128 0x18
	.4byte	.LASF399
	.2byte	0x52b
	.uleb128 0x18
	.4byte	.LASF400
	.2byte	0x52c
	.uleb128 0x18
	.4byte	.LASF401
	.2byte	0x52d
	.uleb128 0x18
	.4byte	.LASF402
	.2byte	0x52e
	.uleb128 0x18
	.4byte	.LASF403
	.2byte	0x52f
	.uleb128 0x18
	.4byte	.LASF404
	.2byte	0x530
	.uleb128 0x18
	.4byte	.LASF405
	.2byte	0x531
	.uleb128 0x18
	.4byte	.LASF406
	.2byte	0x532
	.uleb128 0x18
	.4byte	.LASF407
	.2byte	0x533
	.uleb128 0x18
	.4byte	.LASF408
	.2byte	0x534
	.uleb128 0x18
	.4byte	.LASF409
	.2byte	0x535
	.uleb128 0x18
	.4byte	.LASF410
	.2byte	0x536
	.uleb128 0x18
	.4byte	.LASF411
	.2byte	0x537
	.uleb128 0x18
	.4byte	.LASF412
	.2byte	0x538
	.uleb128 0x18
	.4byte	.LASF413
	.2byte	0x539
	.uleb128 0x18
	.4byte	.LASF414
	.2byte	0x53a
	.uleb128 0x18
	.4byte	.LASF415
	.2byte	0x53b
	.uleb128 0x18
	.4byte	.LASF416
	.2byte	0x53c
	.uleb128 0x18
	.4byte	.LASF417
	.2byte	0x53d
	.uleb128 0x18
	.4byte	.LASF418
	.2byte	0x579
	.uleb128 0x18
	.4byte	.LASF419
	.2byte	0x57a
	.uleb128 0x18
	.4byte	.LASF420
	.2byte	0x57b
	.uleb128 0x18
	.4byte	.LASF421
	.2byte	0x57c
	.uleb128 0x18
	.4byte	.LASF422
	.2byte	0x57d
	.uleb128 0x18
	.4byte	.LASF423
	.2byte	0x57f
	.uleb128 0x18
	.4byte	.LASF424
	.2byte	0x580
	.uleb128 0x18
	.4byte	.LASF425
	.2byte	0x581
	.uleb128 0x18
	.4byte	.LASF426
	.2byte	0x582
	.uleb128 0x18
	.4byte	.LASF427
	.2byte	0x583
	.uleb128 0x18
	.4byte	.LASF428
	.2byte	0x584
	.uleb128 0x18
	.4byte	.LASF429
	.2byte	0x585
	.uleb128 0x18
	.4byte	.LASF430
	.2byte	0x586
	.uleb128 0x18
	.4byte	.LASF431
	.2byte	0x587
	.uleb128 0x18
	.4byte	.LASF432
	.2byte	0x588
	.uleb128 0x18
	.4byte	.LASF433
	.2byte	0x589
	.uleb128 0x18
	.4byte	.LASF434
	.2byte	0x58a
	.uleb128 0x18
	.4byte	.LASF435
	.2byte	0x58b
	.uleb128 0x18
	.4byte	.LASF436
	.2byte	0x58c
	.uleb128 0x18
	.4byte	.LASF437
	.2byte	0x58d
	.uleb128 0x18
	.4byte	.LASF438
	.2byte	0x58e
	.uleb128 0x18
	.4byte	.LASF439
	.2byte	0x58f
	.uleb128 0x18
	.4byte	.LASF440
	.2byte	0x642
	.uleb128 0x18
	.4byte	.LASF441
	.2byte	0x643
	.uleb128 0x18
	.4byte	.LASF442
	.2byte	0x644
	.uleb128 0x18
	.4byte	.LASF443
	.2byte	0x645
	.uleb128 0x18
	.4byte	.LASF444
	.2byte	0x6a5
	.uleb128 0x18
	.4byte	.LASF445
	.2byte	0x6a6
	.uleb128 0x18
	.4byte	.LASF446
	.2byte	0x6a7
	.uleb128 0x18
	.4byte	.LASF447
	.2byte	0x6a8
	.uleb128 0x18
	.4byte	.LASF448
	.2byte	0x6a9
	.uleb128 0x18
	.4byte	.LASF449
	.2byte	0x6aa
	.uleb128 0x18
	.4byte	.LASF450
	.2byte	0x6ab
	.uleb128 0x18
	.4byte	.LASF451
	.2byte	0x6ac
	.uleb128 0x18
	.4byte	.LASF452
	.2byte	0x6ad
	.uleb128 0x18
	.4byte	.LASF453
	.2byte	0x6ae
	.uleb128 0x18
	.4byte	.LASF454
	.2byte	0x6af
	.uleb128 0x18
	.4byte	.LASF455
	.2byte	0x6b0
	.uleb128 0x18
	.4byte	.LASF456
	.2byte	0x6b1
	.uleb128 0x18
	.4byte	.LASF457
	.2byte	0x6b2
	.uleb128 0x18
	.4byte	.LASF458
	.2byte	0x6b3
	.uleb128 0x18
	.4byte	.LASF459
	.2byte	0x6b4
	.uleb128 0x18
	.4byte	.LASF460
	.2byte	0x6b5
	.uleb128 0x18
	.4byte	.LASF461
	.2byte	0x6b6
	.uleb128 0x18
	.4byte	.LASF462
	.2byte	0x6b7
	.uleb128 0x18
	.4byte	.LASF463
	.2byte	0x6b8
	.uleb128 0x18
	.4byte	.LASF464
	.2byte	0x6b9
	.uleb128 0x18
	.4byte	.LASF465
	.2byte	0x6bb
	.uleb128 0x18
	.4byte	.LASF466
	.2byte	0x6bc
	.uleb128 0x18
	.4byte	.LASF467
	.2byte	0x6c7
	.uleb128 0x18
	.4byte	.LASF468
	.2byte	0x6c8
	.uleb128 0x18
	.4byte	.LASF469
	.2byte	0x6c9
	.uleb128 0x18
	.4byte	.LASF470
	.2byte	0x6ca
	.uleb128 0x18
	.4byte	.LASF471
	.2byte	0x6cb
	.uleb128 0x18
	.4byte	.LASF472
	.2byte	0x6cc
	.uleb128 0x18
	.4byte	.LASF473
	.2byte	0x6cd
	.uleb128 0x18
	.4byte	.LASF474
	.2byte	0x6ce
	.uleb128 0x18
	.4byte	.LASF475
	.2byte	0x6cf
	.uleb128 0x18
	.4byte	.LASF476
	.2byte	0x6d0
	.uleb128 0x18
	.4byte	.LASF477
	.2byte	0x6d1
	.uleb128 0x18
	.4byte	.LASF478
	.2byte	0x6d2
	.uleb128 0x18
	.4byte	.LASF479
	.2byte	0x6d3
	.uleb128 0x18
	.4byte	.LASF480
	.2byte	0x6d4
	.uleb128 0x18
	.4byte	.LASF481
	.2byte	0x6d5
	.uleb128 0x18
	.4byte	.LASF482
	.2byte	0x6d6
	.uleb128 0x18
	.4byte	.LASF483
	.2byte	0x6d7
	.uleb128 0x18
	.4byte	.LASF484
	.2byte	0x6d8
	.uleb128 0x18
	.4byte	.LASF485
	.2byte	0x6d9
	.uleb128 0x18
	.4byte	.LASF486
	.2byte	0x6da
	.uleb128 0x18
	.4byte	.LASF487
	.2byte	0x6db
	.uleb128 0x18
	.4byte	.LASF488
	.2byte	0x6dc
	.uleb128 0x18
	.4byte	.LASF489
	.2byte	0x6dd
	.uleb128 0x18
	.4byte	.LASF490
	.2byte	0x709
	.uleb128 0x18
	.4byte	.LASF491
	.2byte	0x70a
	.uleb128 0x18
	.4byte	.LASF492
	.2byte	0x70b
	.uleb128 0x18
	.4byte	.LASF493
	.2byte	0x70c
	.uleb128 0x18
	.4byte	.LASF494
	.2byte	0x70d
	.uleb128 0x18
	.4byte	.LASF495
	.2byte	0x70e
	.uleb128 0x18
	.4byte	.LASF496
	.2byte	0x70f
	.uleb128 0x18
	.4byte	.LASF497
	.2byte	0x710
	.uleb128 0x18
	.4byte	.LASF498
	.2byte	0x76d
	.uleb128 0x18
	.4byte	.LASF499
	.2byte	0x76e
	.uleb128 0x18
	.4byte	.LASF500
	.2byte	0x76f
	.uleb128 0x18
	.4byte	.LASF501
	.2byte	0x7d1
	.uleb128 0x18
	.4byte	.LASF502
	.2byte	0x7d2
	.uleb128 0x18
	.4byte	.LASF503
	.2byte	0x7d3
	.uleb128 0x18
	.4byte	.LASF504
	.2byte	0x7d4
	.uleb128 0x18
	.4byte	.LASF505
	.2byte	0x7d5
	.uleb128 0x18
	.4byte	.LASF506
	.2byte	0x7d6
	.uleb128 0x18
	.4byte	.LASF507
	.2byte	0x7d7
	.uleb128 0x18
	.4byte	.LASF508
	.2byte	0x7d8
	.uleb128 0x18
	.4byte	.LASF509
	.2byte	0x7d9
	.uleb128 0x18
	.4byte	.LASF510
	.2byte	0x7da
	.uleb128 0x18
	.4byte	.LASF511
	.2byte	0x7db
	.uleb128 0x18
	.4byte	.LASF512
	.2byte	0x7dc
	.uleb128 0x18
	.4byte	.LASF513
	.2byte	0x7dd
	.uleb128 0x18
	.4byte	.LASF514
	.2byte	0x7de
	.uleb128 0x18
	.4byte	.LASF515
	.2byte	0x7e4
	.uleb128 0x18
	.4byte	.LASF516
	.2byte	0x7e5
	.uleb128 0x18
	.4byte	.LASF517
	.2byte	0x7e6
	.uleb128 0x18
	.4byte	.LASF518
	.2byte	0x7e7
	.uleb128 0x18
	.4byte	.LASF519
	.2byte	0x7e8
	.uleb128 0x18
	.4byte	.LASF520
	.2byte	0x7ee
	.uleb128 0x18
	.4byte	.LASF521
	.2byte	0x7ef
	.uleb128 0x18
	.4byte	.LASF522
	.2byte	0x7f0
	.uleb128 0x18
	.4byte	.LASF523
	.2byte	0x7f1
	.uleb128 0x18
	.4byte	.LASF524
	.2byte	0x7f2
	.uleb128 0x18
	.4byte	.LASF525
	.2byte	0x7f8
	.uleb128 0x18
	.4byte	.LASF526
	.2byte	0x7f9
	.uleb128 0x18
	.4byte	.LASF527
	.2byte	0x835
	.uleb128 0x18
	.4byte	.LASF528
	.2byte	0x836
	.uleb128 0x18
	.4byte	.LASF529
	.2byte	0x837
	.uleb128 0x18
	.4byte	.LASF530
	.2byte	0x838
	.uleb128 0x18
	.4byte	.LASF531
	.2byte	0x839
	.uleb128 0x18
	.4byte	.LASF532
	.2byte	0x83a
	.uleb128 0x18
	.4byte	.LASF533
	.2byte	0x899
	.uleb128 0x18
	.4byte	.LASF534
	.2byte	0x89a
	.uleb128 0x18
	.4byte	.LASF535
	.2byte	0x89b
	.uleb128 0x18
	.4byte	.LASF536
	.2byte	0x89c
	.uleb128 0x18
	.4byte	.LASF537
	.2byte	0x89d
	.uleb128 0x18
	.4byte	.LASF538
	.2byte	0x89e
	.uleb128 0x18
	.4byte	.LASF539
	.2byte	0x89f
	.uleb128 0x18
	.4byte	.LASF540
	.2byte	0x8fd
	.uleb128 0x18
	.4byte	.LASF541
	.2byte	0x8fe
	.uleb128 0x18
	.4byte	.LASF542
	.2byte	0x8ff
	.uleb128 0x18
	.4byte	.LASF543
	.2byte	0x900
	.uleb128 0x18
	.4byte	.LASF544
	.2byte	0x901
	.uleb128 0x18
	.4byte	.LASF545
	.2byte	0x902
	.uleb128 0x18
	.4byte	.LASF546
	.2byte	0x961
	.uleb128 0x18
	.4byte	.LASF547
	.2byte	0x962
	.uleb128 0x18
	.4byte	.LASF548
	.2byte	0x963
	.uleb128 0x18
	.4byte	.LASF549
	.2byte	0x964
	.uleb128 0x18
	.4byte	.LASF550
	.2byte	0x965
	.uleb128 0x18
	.4byte	.LASF551
	.2byte	0x966
	.uleb128 0x18
	.4byte	.LASF552
	.2byte	0xa29
	.uleb128 0x18
	.4byte	.LASF553
	.2byte	0xa2a
	.uleb128 0x18
	.4byte	.LASF554
	.2byte	0xa8d
	.uleb128 0x18
	.4byte	.LASF555
	.2byte	0xa8e
	.uleb128 0x18
	.4byte	.LASF556
	.2byte	0xa8f
	.uleb128 0x18
	.4byte	.LASF557
	.2byte	0xa90
	.uleb128 0x18
	.4byte	.LASF558
	.2byte	0xa91
	.uleb128 0x18
	.4byte	.LASF559
	.2byte	0xa92
	.uleb128 0x18
	.4byte	.LASF560
	.2byte	0xa93
	.uleb128 0x18
	.4byte	.LASF561
	.2byte	0xa94
	.uleb128 0x18
	.4byte	.LASF562
	.2byte	0xaf1
	.uleb128 0x18
	.4byte	.LASF563
	.2byte	0xaf2
	.uleb128 0x18
	.4byte	.LASF564
	.2byte	0xaf3
	.uleb128 0x18
	.4byte	.LASF565
	.2byte	0xaf4
	.uleb128 0x18
	.4byte	.LASF566
	.2byte	0xb55
	.uleb128 0x18
	.4byte	.LASF567
	.2byte	0xb56
	.uleb128 0x18
	.4byte	.LASF568
	.2byte	0xbb9
	.uleb128 0x18
	.4byte	.LASF569
	.2byte	0xbba
	.uleb128 0x18
	.4byte	.LASF570
	.2byte	0xc1d
	.uleb128 0x18
	.4byte	.LASF571
	.2byte	0xc1e
	.uleb128 0x18
	.4byte	.LASF572
	.2byte	0xc80
	.uleb128 0x18
	.4byte	.LASF573
	.2byte	0xc81
	.uleb128 0x18
	.4byte	.LASF574
	.2byte	0xc82
	.uleb128 0x18
	.4byte	.LASF575
	.2byte	0xce4
	.uleb128 0x18
	.4byte	.LASF576
	.2byte	0xce5
	.uleb128 0x18
	.4byte	.LASF577
	.2byte	0xce6
	.uleb128 0x18
	.4byte	.LASF578
	.2byte	0xce7
	.uleb128 0x18
	.4byte	.LASF579
	.2byte	0xce8
	.uleb128 0x18
	.4byte	.LASF580
	.2byte	0xce9
	.uleb128 0x18
	.4byte	.LASF581
	.2byte	0xcea
	.uleb128 0x18
	.4byte	.LASF582
	.2byte	0xceb
	.uleb128 0x18
	.4byte	.LASF583
	.2byte	0xcec
	.uleb128 0x18
	.4byte	.LASF584
	.2byte	0xced
	.uleb128 0x18
	.4byte	.LASF585
	.2byte	0x2328
	.uleb128 0x18
	.4byte	.LASF586
	.2byte	0x23f0
	.uleb128 0x18
	.4byte	.LASF587
	.2byte	0x24b8
	.uleb128 0x18
	.4byte	.LASF588
	.2byte	0x2710
	.uleb128 0x18
	.4byte	.LASF589
	.2byte	0xffff
	.byte	0
	.uleb128 0x14
	.4byte	.LASF590
	.byte	0x14
	.2byte	0x22e
	.4byte	0x57b
	.uleb128 0x3
	.4byte	.LASF591
	.byte	0x15
	.byte	0x7b
	.4byte	0x534
	.uleb128 0x5
	.byte	0x10
	.byte	0x15
	.byte	0x7f
	.4byte	0x12d5
	.uleb128 0x6
	.4byte	.LASF592
	.byte	0x15
	.byte	0x80
	.4byte	0x558
	.byte	0
	.uleb128 0x6
	.4byte	.LASF593
	.byte	0x15
	.byte	0x81
	.4byte	0x54c
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF594
	.byte	0x15
	.byte	0x83
	.4byte	0x54c
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF595
	.byte	0x15
	.byte	0x84
	.4byte	0x54c
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF596
	.byte	0x15
	.byte	0x87
	.4byte	0x54c
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF597
	.byte	0x15
	.byte	0x88
	.4byte	0x54c
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF598
	.byte	0x15
	.byte	0x8a
	.4byte	0x54c
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF599
	.byte	0x15
	.byte	0x8b
	.4byte	0x54c
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF600
	.byte	0x15
	.byte	0x8d
	.4byte	0x54c
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF601
	.byte	0x15
	.byte	0x8e
	.4byte	0x54c
	.byte	0xa
	.uleb128 0x7
	.string	"crc"
	.byte	0x15
	.byte	0x8f
	.4byte	0x54c
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF602
	.byte	0x15
	.byte	0x90
	.4byte	0x54c
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x15
	.byte	0x91
	.4byte	0x54c
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x15
	.byte	0x92
	.4byte	0x54c
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF604
	.byte	0x15
	.byte	0x96
	.4byte	0x54c
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF605
	.byte	0x15
	.byte	0x97
	.4byte	0x1218
	.uleb128 0x19
	.byte	0x10
	.byte	0x15
	.byte	0xa5
	.4byte	0x12ff
	.uleb128 0x1a
	.4byte	.LASF606
	.byte	0x15
	.byte	0xa6
	.4byte	0x12ff
	.uleb128 0x1a
	.4byte	.LASF607
	.byte	0x15
	.byte	0xa7
	.4byte	0x130f
	.byte	0
	.uleb128 0x8
	.4byte	0x54c
	.4byte	0x130f
	.uleb128 0xa
	.4byte	0x13c
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x564
	.4byte	0x131f
	.uleb128 0xa
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x50
	.byte	0x15
	.byte	0x9a
	.4byte	0x13c4
	.uleb128 0x6
	.4byte	.LASF608
	.byte	0x15
	.byte	0x9b
	.4byte	0x13c4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF609
	.byte	0x15
	.byte	0x9c
	.4byte	0x12d5
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF610
	.byte	0x15
	.byte	0x9d
	.4byte	0x13cf
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF611
	.byte	0x15
	.byte	0x9e
	.4byte	0x564
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF612
	.byte	0x15
	.byte	0x9f
	.4byte	0x13df
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF613
	.byte	0x15
	.byte	0xa1
	.4byte	0x13e5
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF614
	.byte	0x15
	.byte	0xa2
	.4byte	0x540
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF615
	.byte	0x15
	.byte	0xa3
	.4byte	0x512
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF616
	.byte	0x15
	.byte	0xa8
	.4byte	0x12e0
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF617
	.byte	0x15
	.byte	0xa9
	.4byte	0x54c
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF618
	.byte	0x15
	.byte	0xaa
	.4byte	0x51d
	.byte	0x4d
	.uleb128 0x6
	.4byte	.LASF619
	.byte	0x15
	.byte	0xab
	.4byte	0x54c
	.byte	0x4e
	.uleb128 0x6
	.4byte	.LASF620
	.byte	0x15
	.byte	0xac
	.4byte	0x54c
	.byte	0x4f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x13ca
	.uleb128 0x17
	.4byte	0x570
	.uleb128 0x8
	.4byte	0x528
	.4byte	0x13df
	.uleb128 0xa
	.4byte	0x13c
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x540
	.uleb128 0x8
	.4byte	0x13f5
	.4byte	0x13f5
	.uleb128 0xa
	.4byte	0x13c
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x120d
	.uleb128 0x3
	.4byte	.LASF621
	.byte	0x15
	.byte	0xad
	.4byte	0x131f
	.uleb128 0x5
	.byte	0x54
	.byte	0x15
	.byte	0xc4
	.4byte	0x144b
	.uleb128 0x6
	.4byte	.LASF622
	.byte	0x15
	.byte	0xc5
	.4byte	0x13fb
	.byte	0
	.uleb128 0x6
	.4byte	.LASF623
	.byte	0x15
	.byte	0xc6
	.4byte	0x54c
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF624
	.byte	0x15
	.byte	0xc7
	.4byte	0x54c
	.byte	0x51
	.uleb128 0x6
	.4byte	.LASF625
	.byte	0x15
	.byte	0xc8
	.4byte	0x54c
	.byte	0x52
	.uleb128 0x6
	.4byte	.LASF626
	.byte	0x15
	.byte	0xc9
	.4byte	0x54c
	.byte	0x53
	.byte	0
	.uleb128 0x3
	.4byte	.LASF627
	.byte	0x15
	.byte	0xca
	.4byte	0x1406
	.uleb128 0x8
	.4byte	0x564
	.4byte	0x1467
	.uleb128 0x1b
	.4byte	0x13c
	.2byte	0x1d7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF628
	.byte	0x16
	.byte	0x1d
	.4byte	0x1ee
	.uleb128 0xf
	.4byte	.LASF630
	.byte	0xc
	.byte	0x17
	.byte	0x18
	.4byte	0x14a3
	.uleb128 0x6
	.4byte	.LASF631
	.byte	0x17
	.byte	0x19
	.4byte	0xe1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF632
	.byte	0x17
	.byte	0x1a
	.4byte	0x1467
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF633
	.byte	0x17
	.byte	0x1b
	.4byte	0x16b
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF634
	.byte	0x17
	.byte	0x1d
	.4byte	0x1472
	.uleb128 0xd
	.byte	0x4
	.4byte	0x74
	.byte	0x1
	.byte	0x35
	.4byte	0x14d9
	.uleb128 0xe
	.4byte	.LASF635
	.byte	0
	.uleb128 0xe
	.4byte	.LASF636
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF637
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF638
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF639
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x74
	.byte	0x1
	.byte	0x3d
	.4byte	0x14f8
	.uleb128 0xe
	.4byte	.LASF640
	.byte	0
	.uleb128 0xe
	.4byte	.LASF641
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF642
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x74
	.byte	0x1
	.byte	0x43
	.4byte	0x150b
	.uleb128 0xe
	.4byte	.LASF643
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x1
	.byte	0x5d
	.4byte	0x1544
	.uleb128 0x6
	.4byte	.LASF644
	.byte	0x1
	.byte	0x5e
	.4byte	0xc0
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x5f
	.4byte	0xc0
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x60
	.4byte	0xc0
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x61
	.4byte	0xc0
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF645
	.byte	0x1
	.byte	0x62
	.4byte	0x150b
	.uleb128 0x5
	.byte	0xc
	.byte	0x1
	.byte	0x64
	.4byte	0x1588
	.uleb128 0x6
	.4byte	.LASF646
	.byte	0x1
	.byte	0x65
	.4byte	0xd6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF647
	.byte	0x1
	.byte	0x66
	.4byte	0xb5
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF648
	.byte	0x1
	.byte	0x67
	.4byte	0x250
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF649
	.byte	0x1
	.byte	0x68
	.4byte	0xcb
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF650
	.byte	0x1
	.byte	0x69
	.4byte	0x154f
	.uleb128 0x1c
	.4byte	.LASF751
	.byte	0x1
	.byte	0x8a
	.byte	0x3
	.4byte	0x15b6
	.uleb128 0x1d
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8a
	.4byte	0x4db
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0x8a
	.4byte	0xaa
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF651
	.byte	0x1
	.2byte	0x293
	.4byte	0x62
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15f1
	.uleb128 0x20
	.4byte	.LASF592
	.byte	0x1
	.2byte	0x293
	.4byte	0xb5
	.4byte	.LLST0
	.uleb128 0x21
	.4byte	.LASF654
	.byte	0x1
	.2byte	0x295
	.4byte	0x62
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF652
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x62
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x162c
	.uleb128 0x20
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x2a7
	.4byte	0xb5
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x62
	.4byte	.LLST3
	.byte	0
	.uleb128 0x22
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x2f0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x167e
	.uleb128 0x23
	.string	"p_q"
	.byte	0x1
	.2byte	0x2f0
	.4byte	0x250
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL15
	.4byte	0x24a2
	.4byte	0x1664
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL16
	.4byte	0x24ad
	.uleb128 0x27
	.4byte	.LVL17
	.4byte	0x24b8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x28b
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x169e
	.uleb128 0x26
	.4byte	.LVL18
	.4byte	0x162c
	.byte	0
	.uleb128 0x22
	.4byte	.LASF658
	.byte	0x1
	.2byte	0x244
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17fd
	.uleb128 0x20
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x244
	.4byte	0x17fd
	.4byte	.LLST4
	.uleb128 0x28
	.4byte	.LASF660
	.byte	0x1
	.2byte	0x246
	.4byte	0x15e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x247
	.4byte	0x62
	.4byte	.LLST5
	.uleb128 0x28
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x248
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x248
	.4byte	0xcb
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF663
	.byte	0x1
	.2byte	0x249
	.4byte	0x1803
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x24a
	.4byte	0x1201
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	.LASF664
	.byte	0x1
	.2byte	0x24b
	.4byte	0x62
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x28
	.4byte	.LASF665
	.byte	0x1
	.2byte	0x24c
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.4byte	0x1593
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x26c
	.4byte	0x1782
	.uleb128 0x2a
	.4byte	0x15aa
	.4byte	.LLST9
	.uleb128 0x2a
	.4byte	0x159f
	.4byte	.LLST10
	.uleb128 0x2b
	.4byte	.LVL39
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	pcmData
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0xa
	.2byte	0x3c00
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL23
	.4byte	0x24c3
	.uleb128 0x26
	.4byte	.LVL24
	.4byte	0x24ce
	.uleb128 0x24
	.4byte	.LVL26
	.4byte	0x24d9
	.4byte	0x17c3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	context
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x26
	.4byte	.LVL29
	.4byte	0x24e5
	.uleb128 0x27
	.4byte	.LVL30
	.4byte	0x24f0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1544
	.uleb128 0xb
	.byte	0x4
	.4byte	0x534
	.uleb128 0x22
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x198
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18ab
	.uleb128 0x2c
	.4byte	.LASF667
	.byte	0x1
	.2byte	0x198
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x19a
	.4byte	0x17fd
	.4byte	.LLST11
	.uleb128 0x26
	.4byte	.LVL41
	.4byte	0x24b8
	.uleb128 0x26
	.4byte	.LVL42
	.4byte	0x162c
	.uleb128 0x26
	.4byte	.LVL44
	.4byte	0x169e
	.uleb128 0x26
	.4byte	.LVL45
	.4byte	0x24a2
	.uleb128 0x26
	.4byte	.LVL46
	.4byte	0x24e5
	.uleb128 0x24
	.4byte	.LVL47
	.4byte	0x24f0
	.4byte	0x1898
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x26
	.4byte	.LVL49
	.4byte	0x24ad
	.uleb128 0x26
	.4byte	.LVL50
	.4byte	0x24fb
	.byte	0
	.uleb128 0x22
	.4byte	.LASF668
	.byte	0x1
	.2byte	0x2f7
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18f8
	.uleb128 0x20
	.4byte	.LASF667
	.byte	0x1
	.2byte	0x2f7
	.4byte	0x16b
	.4byte	.LLST12
	.uleb128 0x2d
	.4byte	.LASF676
	.4byte	0x1908
	.uleb128 0x24
	.4byte	.LVL54
	.4byte	0x2506
	.4byte	0x18ee
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0xfe
	.byte	0
	.uleb128 0x26
	.4byte	.LVL55
	.4byte	0x2511
	.byte	0
	.uleb128 0x8
	.4byte	0x164
	.4byte	0x1908
	.uleb128 0xa
	.4byte	0x13c
	.byte	0x19
	.byte	0
	.uleb128 0x17
	.4byte	0x18f8
	.uleb128 0x22
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x303
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1968
	.uleb128 0x20
	.4byte	.LASF667
	.byte	0x1
	.2byte	0x303
	.4byte	0x16b
	.4byte	.LLST13
	.uleb128 0x24
	.4byte	.LVL57
	.4byte	0x251c
	.4byte	0x1946
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL59
	.4byte	0x2527
	.uleb128 0x26
	.4byte	.LVL60
	.4byte	0x2532
	.uleb128 0x27
	.4byte	.LVL61
	.4byte	0x253d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF670
	.byte	0x1
	.2byte	0x1bd
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b03
	.uleb128 0x20
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x1b03
	.4byte	.LLST14
	.uleb128 0x21
	.4byte	.LASF671
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x1b03
	.4byte	.LLST15
	.uleb128 0x21
	.4byte	.LASF672
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x256
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	.LASF673
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x2be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x1201
	.4byte	.LLST17
	.uleb128 0x21
	.4byte	.LASF674
	.byte	0x1
	.2byte	0x1c3
	.4byte	0xcb
	.4byte	.LLST18
	.uleb128 0x21
	.4byte	.LASF675
	.byte	0x1
	.2byte	0x1c4
	.4byte	0xcb
	.4byte	.LLST19
	.uleb128 0x21
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xcb
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	.LASF677
	.4byte	0x1b09
	.uleb128 0x2e
	.4byte	.LASF687
	.byte	0x1
	.2byte	0x237
	.4byte	0x62
	.uleb128 0x24
	.4byte	.LVL64
	.4byte	0x2548
	.4byte	0x1a31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL66
	.4byte	0x24e5
	.uleb128 0x24
	.4byte	.LVL67
	.4byte	0x24f0
	.4byte	0x1a6e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL68
	.4byte	0x15b6
	.uleb128 0x26
	.4byte	.LVL70
	.4byte	0x15f1
	.uleb128 0x24
	.4byte	.LVL71
	.4byte	0x2553
	.4byte	0x1ab6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	context
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	contextData
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x760
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL73
	.4byte	0x24e5
	.uleb128 0x24
	.4byte	.LVL74
	.4byte	0x24f0
	.4byte	0x1af3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL75
	.4byte	0x251c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x507
	.uleb128 0x17
	.4byte	0x4aa
	.uleb128 0x2f
	.4byte	.LASF678
	.byte	0x1
	.byte	0xb4
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ba7
	.uleb128 0x30
	.string	"e"
	.byte	0x1
	.byte	0xb4
	.4byte	0x1ba7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL77
	.4byte	0x18ab
	.4byte	0x1b41
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL78
	.4byte	0x190d
	.4byte	0x1b54
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL79
	.4byte	0x1968
	.uleb128 0x26
	.4byte	.LVL80
	.4byte	0x167e
	.uleb128 0x26
	.4byte	.LVL81
	.4byte	0x24e5
	.uleb128 0x24
	.4byte	.LVL82
	.4byte	0x24f0
	.4byte	0x1b9d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x26
	.4byte	.LVL83
	.4byte	0x24ad
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x235
	.uleb128 0x31
	.4byte	.LASF679
	.byte	0x1
	.byte	0xd1
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c78
	.uleb128 0x30
	.string	"arg"
	.byte	0x1
	.byte	0xd1
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LASF680
	.byte	0x1
	.byte	0xd3
	.4byte	0x1e3
	.4byte	.LLST21
	.uleb128 0x33
	.string	"e"
	.byte	0x1
	.byte	0xd4
	.4byte	0x1ba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x1c33
	.uleb128 0x35
	.4byte	.LASF681
	.byte	0x1
	.byte	0xd8
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.4byte	.LVL86
	.4byte	0x255e
	.4byte	0x1c23
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL87
	.4byte	0x1809
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL85
	.4byte	0x256a
	.4byte	0x1c47
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x24
	.4byte	.LVL89
	.4byte	0x255e
	.4byte	0x1c65
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL90
	.4byte	0x1b0e
	.uleb128 0x26
	.4byte	.LVL91
	.4byte	0x24ad
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF682
	.byte	0x1
	.byte	0xa5
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d23
	.uleb128 0x30
	.string	"sig"
	.byte	0x1
	.byte	0xa5
	.4byte	0xaa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.string	"par"
	.byte	0x1
	.byte	0xa5
	.4byte	0x16b
	.4byte	.LLST22
	.uleb128 0x33
	.string	"evt"
	.byte	0x1
	.byte	0xa7
	.4byte	0x1ba7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LVL93
	.4byte	0x2576
	.4byte	0x1cca
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x24
	.4byte	.LVL95
	.4byte	0x2581
	.4byte	0x1ce9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL96
	.4byte	0x24e5
	.uleb128 0x27
	.4byte	.LVL97
	.4byte	0x24f0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC47
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF683
	.byte	0x1
	.2byte	0x170
	.4byte	0xd6
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d52
	.uleb128 0x27
	.4byte	.LVL98
	.4byte	0x1c78
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF684
	.byte	0x1
	.2byte	0x160
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d91
	.uleb128 0x2c
	.4byte	.LASF685
	.byte	0x1
	.2byte	0x160
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LVL100
	.4byte	0x2581
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF688
	.byte	0x1
	.byte	0x84
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1db4
	.uleb128 0x38
	.4byte	.LASF686
	.byte	0x1
	.byte	0x84
	.4byte	0x4ba
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x39
	.4byte	.LASF694
	.byte	0x1
	.byte	0xe5
	.4byte	0xe1
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fef
	.uleb128 0x3a
	.4byte	.LASF677
	.4byte	0x1fff
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10900
	.uleb128 0x3b
	.4byte	.LASF752
	.byte	0x1
	.2byte	0x107
	.4byte	.L64
	.uleb128 0x3a
	.4byte	.LASF676
	.4byte	0x2004
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10902
	.uleb128 0x26
	.4byte	.LVL102
	.4byte	0x24e5
	.uleb128 0x24
	.4byte	.LVL103
	.4byte	0x24f0
	.4byte	0x1e2e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC54
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x24
	.4byte	.LVL104
	.4byte	0x258d
	.4byte	0x1e41
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.4byte	.LVL105
	.4byte	0x2599
	.4byte	0x1e70
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xef
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10900
	.byte	0
	.uleb128 0x26
	.4byte	.LVL106
	.4byte	0x25a4
	.uleb128 0x24
	.4byte	.LVL107
	.4byte	0x25af
	.4byte	0x1e96
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL108
	.4byte	0x2599
	.4byte	0x1ec5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xf1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10900
	.byte	0
	.uleb128 0x26
	.4byte	.LVL109
	.4byte	0x25a4
	.uleb128 0x26
	.4byte	.LVL110
	.4byte	0x25bb
	.uleb128 0x24
	.4byte	.LVL111
	.4byte	0x25af
	.4byte	0x1ef4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL112
	.4byte	0x2599
	.4byte	0x1f23
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xf5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10900
	.byte	0
	.uleb128 0x26
	.4byte	.LVL113
	.4byte	0x25a4
	.uleb128 0x26
	.4byte	.LVL114
	.4byte	0x25bb
	.uleb128 0x24
	.4byte	.LVL115
	.4byte	0x25c7
	.4byte	0x1f72
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_a2dp_sink_task_handler
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC66
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0xa00
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL116
	.4byte	0x1c78
	.4byte	0x1f8a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL117
	.4byte	0x24e5
	.uleb128 0x24
	.4byte	.LVL118
	.4byte	0x24f0
	.4byte	0x1fca
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10902
	.byte	0
	.uleb128 0x26
	.4byte	.LVL119
	.4byte	0x25d3
	.uleb128 0x26
	.4byte	.LVL120
	.4byte	0x25df
	.uleb128 0x26
	.4byte	.LVL121
	.4byte	0x25df
	.uleb128 0x26
	.4byte	.LVL122
	.4byte	0x25df
	.byte	0
	.uleb128 0x8
	.4byte	0x164
	.4byte	0x1fff
	.uleb128 0xa
	.4byte	0x13c
	.byte	0x15
	.byte	0
	.uleb128 0x17
	.4byte	0x1fef
	.uleb128 0x17
	.4byte	0x1fef
	.uleb128 0x3c
	.4byte	.LASF689
	.byte	0x1
	.2byte	0x11e
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20ad
	.uleb128 0x3a
	.4byte	.LASF676
	.4byte	0x20bd
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10906
	.uleb128 0x26
	.4byte	.LVL123
	.4byte	0x25eb
	.uleb128 0x24
	.4byte	.LVL124
	.4byte	0x25f6
	.4byte	0x2067
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x125
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10906
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.byte	0
	.uleb128 0x24
	.4byte	.LVL125
	.4byte	0x1c78
	.4byte	0x207f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL126
	.4byte	0x2601
	.uleb128 0x26
	.4byte	.LVL127
	.4byte	0x25d3
	.uleb128 0x26
	.4byte	.LVL128
	.4byte	0x25df
	.uleb128 0x26
	.4byte	.LVL129
	.4byte	0x25df
	.uleb128 0x26
	.4byte	.LVL130
	.4byte	0x25df
	.byte	0
	.uleb128 0x8
	.4byte	0x164
	.4byte	0x20bd
	.uleb128 0xa
	.4byte	0x13c
	.byte	0x16
	.byte	0
	.uleb128 0x17
	.4byte	0x20ad
	.uleb128 0x3c
	.4byte	.LASF690
	.byte	0x1
	.2byte	0x177
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20e7
	.uleb128 0x2c
	.4byte	.LASF691
	.byte	0x1
	.2byte	0x177
	.4byte	0xd6
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF692
	.byte	0x1
	.2byte	0x187
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x219a
	.uleb128 0x20
	.4byte	.LASF693
	.byte	0x1
	.2byte	0x187
	.4byte	0x15e
	.4byte	.LLST23
	.uleb128 0x28
	.4byte	.LASF671
	.byte	0x1
	.2byte	0x18e
	.4byte	0x1b03
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LVL133
	.4byte	0x2576
	.4byte	0x212e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x26
	.4byte	.LVL136
	.4byte	0x24e5
	.uleb128 0x24
	.4byte	.LVL137
	.4byte	0x24f0
	.4byte	0x2165
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC85
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x24
	.4byte	.LVL139
	.4byte	0x260c
	.4byte	0x2184
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x27
	.4byte	.LVL140
	.4byte	0x1c78
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF695
	.byte	0x1
	.2byte	0x278
	.4byte	0xd6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21d2
	.uleb128 0x26
	.4byte	.LVL141
	.4byte	0x24b8
	.uleb128 0x27
	.4byte	.LVL142
	.4byte	0x1c78
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF696
	.byte	0x1
	.2byte	0x13d
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21fb
	.uleb128 0x26
	.4byte	.LVL143
	.4byte	0x219a
	.uleb128 0x26
	.4byte	.LVL144
	.4byte	0x1d23
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF697
	.byte	0x1
	.2byte	0x14c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2238
	.uleb128 0x2c
	.4byte	.LASF693
	.byte	0x1
	.2byte	0x14c
	.4byte	0x2238
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LVL146
	.4byte	0x219a
	.uleb128 0x27
	.4byte	.LVL147
	.4byte	0x251c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x49e
	.uleb128 0x3c
	.4byte	.LASF698
	.byte	0x1
	.2byte	0x159
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x226c
	.uleb128 0x2c
	.4byte	.LASF693
	.byte	0x1
	.2byte	0x159
	.4byte	0x2238
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LVL149
	.4byte	0x219a
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF699
	.byte	0x1
	.2byte	0x2c0
	.4byte	0xb5
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2394
	.uleb128 0x20
	.4byte	.LASF700
	.byte	0x1
	.2byte	0x2c0
	.4byte	0x2c9
	.4byte	.LLST24
	.uleb128 0x21
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x17fd
	.4byte	.LLST25
	.uleb128 0x26
	.4byte	.LVL152
	.4byte	0x2615
	.uleb128 0x26
	.4byte	.LVL154
	.4byte	0x2615
	.uleb128 0x26
	.4byte	.LVL156
	.4byte	0x24e5
	.uleb128 0x24
	.4byte	.LVL157
	.4byte	0x24f0
	.4byte	0x22ef
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC95
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x26
	.4byte	.LVL158
	.4byte	0x2615
	.uleb128 0x24
	.4byte	.LVL160
	.4byte	0x2576
	.4byte	0x230c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL162
	.4byte	0x260c
	.4byte	0x232c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL164
	.4byte	0x2620
	.4byte	0x2340
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL165
	.4byte	0x1d52
	.4byte	0x2353
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL168
	.4byte	0x24e5
	.uleb128 0x24
	.4byte	.LVL169
	.4byte	0x24f0
	.4byte	0x238a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC97
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x26
	.4byte	.LVL170
	.4byte	0x2615
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF701
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x23a7
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x17
	.4byte	0x14e
	.uleb128 0x3e
	.4byte	.LASF702
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x23bf
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0x14e
	.uleb128 0x35
	.4byte	.LASF703
	.byte	0x1
	.byte	0x7a
	.4byte	0x1588
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_snk_cb
	.uleb128 0x35
	.4byte	.LASF704
	.byte	0x1
	.byte	0x7b
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_a2dp_sink_state
	.uleb128 0x35
	.4byte	.LASF705
	.byte	0x1
	.byte	0x7c
	.4byte	0x23f7
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_a2dp_sink_future
	.uleb128 0xb
	.byte	0x4
	.4byte	0x14a3
	.uleb128 0x35
	.4byte	.LASF706
	.byte	0x1
	.byte	0x7d
	.4byte	0x1c2
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_snk_task_hdl
	.uleb128 0x35
	.4byte	.LASF707
	.byte	0x1
	.byte	0x7e
	.4byte	0x1cd
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_snk_data_queue
	.uleb128 0x35
	.4byte	.LASF708
	.byte	0x1
	.byte	0x7f
	.4byte	0x1cd
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_snk_ctrl_queue
	.uleb128 0x35
	.4byte	.LASF709
	.byte	0x1
	.byte	0x80
	.4byte	0x1d8
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_snk_queue_set
	.uleb128 0x35
	.4byte	.LASF710
	.byte	0x1
	.byte	0x82
	.4byte	0x4ba
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_aa_snk_data_cb
	.uleb128 0x3f
	.4byte	.LASF711
	.byte	0x18
	.2byte	0x2ea
	.4byte	0xb5
	.uleb128 0x40
	.4byte	.LASF667
	.byte	0x1
	.byte	0x92
	.4byte	0x144b
	.uleb128 0x5
	.byte	0x3
	.4byte	context
	.uleb128 0x40
	.4byte	.LASF712
	.byte	0x1
	.byte	0x93
	.4byte	0x1456
	.uleb128 0x5
	.byte	0x3
	.4byte	contextData
	.uleb128 0x8
	.4byte	0x534
	.4byte	0x2491
	.uleb128 0x1b
	.4byte	0x13c
	.2byte	0xeff
	.byte	0
	.uleb128 0x40
	.4byte	.LASF713
	.byte	0x1
	.byte	0x94
	.4byte	0x2480
	.uleb128 0x5
	.byte	0x3
	.4byte	pcmData
	.uleb128 0x41
	.4byte	.LASF714
	.4byte	.LASF714
	.byte	0xa
	.byte	0x4f
	.uleb128 0x41
	.4byte	.LASF715
	.4byte	.LASF715
	.byte	0x19
	.byte	0x5a
	.uleb128 0x41
	.4byte	.LASF716
	.4byte	.LASF716
	.byte	0xa
	.byte	0x31
	.uleb128 0x41
	.4byte	.LASF717
	.4byte	.LASF717
	.byte	0x1a
	.byte	0xb3
	.uleb128 0x41
	.4byte	.LASF718
	.4byte	.LASF718
	.byte	0x1b
	.byte	0x4b
	.uleb128 0x42
	.4byte	.LASF719
	.4byte	.LASF719
	.byte	0x15
	.2byte	0x165
	.uleb128 0x41
	.4byte	.LASF720
	.4byte	.LASF720
	.byte	0xd
	.byte	0x57
	.uleb128 0x41
	.4byte	.LASF721
	.4byte	.LASF721
	.byte	0xd
	.byte	0x6b
	.uleb128 0x41
	.4byte	.LASF722
	.4byte	.LASF722
	.byte	0xa
	.byte	0x54
	.uleb128 0x41
	.4byte	.LASF723
	.4byte	.LASF723
	.byte	0xa
	.byte	0x29
	.uleb128 0x41
	.4byte	.LASF724
	.4byte	.LASF724
	.byte	0x1b
	.byte	0x60
	.uleb128 0x41
	.4byte	.LASF725
	.4byte	.LASF725
	.byte	0x1b
	.byte	0x55
	.uleb128 0x41
	.4byte	.LASF726
	.4byte	.LASF726
	.byte	0x1b
	.byte	0x6a
	.uleb128 0x41
	.4byte	.LASF727
	.4byte	.LASF727
	.byte	0xa
	.byte	0x2d
	.uleb128 0x41
	.4byte	.LASF728
	.4byte	.LASF728
	.byte	0x17
	.byte	0x2d
	.uleb128 0x41
	.4byte	.LASF729
	.4byte	.LASF729
	.byte	0xc
	.byte	0x9a
	.uleb128 0x41
	.4byte	.LASF730
	.4byte	.LASF730
	.byte	0x15
	.byte	0xe9
	.uleb128 0x42
	.4byte	.LASF731
	.4byte	.LASF731
	.byte	0x7
	.2byte	0x38a
	.uleb128 0x42
	.4byte	.LASF732
	.4byte	.LASF732
	.byte	0x7
	.2byte	0x65b
	.uleb128 0x41
	.4byte	.LASF733
	.4byte	.LASF733
	.byte	0x19
	.byte	0x65
	.uleb128 0x42
	.4byte	.LASF734
	.4byte	.LASF734
	.byte	0x7
	.2byte	0x265
	.uleb128 0x42
	.4byte	.LASF735
	.4byte	.LASF735
	.byte	0x7
	.2byte	0x60c
	.uleb128 0x41
	.4byte	.LASF736
	.4byte	.LASF736
	.byte	0x1c
	.byte	0xde
	.uleb128 0x41
	.4byte	.LASF737
	.4byte	.LASF737
	.byte	0x19
	.byte	0x47
	.uleb128 0x42
	.4byte	.LASF738
	.4byte	.LASF738
	.byte	0x7
	.2byte	0x5d0
	.uleb128 0x42
	.4byte	.LASF739
	.4byte	.LASF739
	.byte	0x7
	.2byte	0x624
	.uleb128 0x42
	.4byte	.LASF740
	.4byte	.LASF740
	.byte	0x6
	.2byte	0x14d
	.uleb128 0x42
	.4byte	.LASF741
	.4byte	.LASF741
	.byte	0x6
	.2byte	0x2fe
	.uleb128 0x42
	.4byte	.LASF742
	.4byte	.LASF742
	.byte	0x7
	.2byte	0x3ac
	.uleb128 0x41
	.4byte	.LASF743
	.4byte	.LASF743
	.byte	0x17
	.byte	0x23
	.uleb128 0x41
	.4byte	.LASF744
	.4byte	.LASF744
	.byte	0x1d
	.byte	0x29
	.uleb128 0x41
	.4byte	.LASF745
	.4byte	.LASF745
	.byte	0x17
	.byte	0x31
	.uleb128 0x43
	.4byte	.LASF753
	.4byte	.LASF753
	.uleb128 0x41
	.4byte	.LASF746
	.4byte	.LASF746
	.byte	0xa
	.byte	0x35
	.uleb128 0x41
	.4byte	.LASF747
	.4byte	.LASF747
	.byte	0xa
	.byte	0x3e
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x22
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xa
	.2byte	0xbb80
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xa
	.2byte	0x7d00
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xa
	.2byte	0xac44
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xa
	.2byte	0xbb80
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c00
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c00
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x3
	.4byte	pcmData
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x3
	.4byte	pcmData
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39-1
	.4byte	.LVL39
	.2byte	0x7
	.byte	0xa
	.2byte	0x3c00
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x6
	.byte	0x3
	.4byte	pcmData
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL65
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL63
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xa
	.2byte	0x3c0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL63
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL63
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x2
	.byte	0x78
	.sleb128 4
	.4byte	.LVL95-1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL132
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL155
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
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
	.4byte	.LVL171
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL172
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL161
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xd4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF231:
	.string	"OI_HCI_EVENT_TABLE_ERROR"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF50:
	.string	"max_bitpool"
.LASF307:
	.string	"OI_SDP_INVALID_PDU_SIZE"
.LASF209:
	.string	"OI_L2CAP_CONFIG_BASE"
.LASF618:
	.string	"formatByte"
.LASF646:
	.string	"rx_flush"
.LASF658:
	.string	"btc_a2dp_sink_handle_inc_media"
.LASF24:
	.string	"sizetype"
.LASF327:
	.string	"OI_SDP_TRANSACTION_ID_MISMATCH"
.LASF550:
	.string	"OI_FIFOQ_NOT_ALLOCATED"
.LASF295:
	.string	"OI_HCIERR_ROLE_SWITCH_PENDING"
.LASF320:
	.string	"OI_SDP_SERVER_TOO_MANY_CONNECTIONS"
.LASF492:
	.string	"OI_HANDSFREE_SERVICE_NOT_STARTED"
.LASF350:
	.string	"OI_RFCOMM_DLCI_EXISTS"
.LASF693:
	.string	"p_av"
.LASF499:
	.string	"OI_HEADSET_AG_SERVICE_NOT_STARTED"
.LASF483:
	.string	"OI_OBEX_METHOD_NOT_ALLOWED"
.LASF585:
	.string	"OI_STATUS_RESERVED_FOR_BCOT"
.LASF258:
	.string	"OI_HCIERR_HOST_REJECTED_RESOURCES"
.LASF51:
	.string	"min_bitpool"
.LASF586:
	.string	"OI_STATUS_RESERVED_FOR_BHAPI"
.LASF179:
	.string	"OI_STATUS_PSM_NOT_FOUND"
.LASF249:
	.string	"OI_HCIERR_PAGE_TIMEOUT"
.LASF111:
	.string	"hndl"
.LASF562:
	.string	"OI_BLST_CHARACTER_TIMEOUT"
.LASF13:
	.string	"int32_t"
.LASF427:
	.string	"OI_SECMGR_UNKNOWN_ENCRYPT_VALUE"
.LASF400:
	.string	"OI_DEVMGR_UNKNOWN_LINK_TYPE"
.LASF638:
	.string	"BTC_MEDIA_AUDIO_SINK_CFG_UPDATE"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF134:
	.string	"OI_STATUS_OUT_OF_MEMORY"
.LASF107:
	.string	"tBTA_AV_STATUS"
.LASF190:
	.string	"OI_STATUS_BUFFER_TOO_SMALL"
.LASF421:
	.string	"OI_SECMGR_BUSY"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF474:
	.string	"OI_OBEX_UNAUTHORIZED"
.LASF430:
	.string	"OI_SECMGR_ENCRYPTION_FAILED"
.LASF304:
	.string	"OI_SDP_SPEC_ERROR"
.LASF129:
	.string	"OI_STATUS_INVALID_PARAMETERS"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF708:
	.string	"btc_aa_snk_ctrl_queue"
.LASF676:
	.string	"__func__"
.LASF536:
	.string	"OI_PAN_INVALID_ROLE"
.LASF119:
	.string	"OI_BYTE"
.LASF35:
	.string	"BaseType_t"
.LASF688:
	.string	"btc_a2dp_sink_reg_data_cb"
.LASF228:
	.string	"OI_HCI_CMD_TABLE_ERROR"
.LASF261:
	.string	"OI_HCIERR_HOST_TIMEOUT"
.LASF469:
	.string	"OI_OBEX_PACKET_OVERFLOW"
.LASF664:
	.string	"num_sbc_frames"
.LASF372:
	.string	"OI_HCITRANS_NULL_DEVICE_HANDLE"
.LASF287:
	.string	"OI_HCIERR_DIFFERENT_TRANS_COLLISION"
.LASF260:
	.string	"OI_HCIERR_HOST_REJECTED_PERSONAL_DEVICE"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF683:
	.string	"btc_a2dp_sink_clear_track"
.LASF312:
	.string	"OI_SDP_SERVER_NOT_CONNECTED"
.LASF168:
	.string	"OI_STATUS_ALREADY_INITIALIZED"
.LASF247:
	.string	"OI_HCIERR_NO_CONNECTION"
.LASF692:
	.string	"btc_a2dp_sink_reset_decoder"
.LASF174:
	.string	"OI_STATUS_SPEC_VIOLATION"
.LASF214:
	.string	"OI_L2CAP_GET_INFO_NOT_SUPPORTED"
.LASF254:
	.string	"OI_HCIERR_MAX_NUM_OF_CONNECTIONS"
.LASF739:
	.string	"xQueueAddToSet"
.LASF629:
	.string	"bt_task_evt"
.LASF710:
	.string	"bt_aa_snk_data_cb"
.LASF343:
	.string	"OI_RFCOMM_INVALID_DATABIT"
.LASF382:
	.string	"OI_HCITRANS_INITIALIZING"
.LASF319:
	.string	"OI_SDP_SERVER_CONNECT_FAILED"
.LASF356:
	.string	"OI_RFCOMM_FRAMESIZE_EXCEEDED"
.LASF403:
	.string	"OI_DEVMGR_SCO_ALREADY_REGISTERED"
.LASF167:
	.string	"OI_STATUS_READ_IN_PROGRESS"
.LASF283:
	.string	"OI_HCIERR_UNIT_KEY_USED"
.LASF114:
	.string	"tBTA_AV_SUSPEND"
.LASF26:
	.string	"char"
.LASF545:
	.string	"OI_CODEC_SBC_PARTIAL_DECODE"
.LASF340:
	.string	"OI_SDP_DATA_ELEMENT_TRUNCATED"
.LASF574:
	.string	"OI_UNICODE_DESTINATION_EXHAUSTED"
.LASF686:
	.string	"callback"
.LASF668:
	.string	"btc_a2dp_sink_thread_init"
.LASF181:
	.string	"OI_STATUS_WRITE_IN_PROGRESS"
.LASF580:
	.string	"OI_AVRCP_RESPONSE_INVALID_PDU"
.LASF184:
	.string	"OI_STATUS_INVALID_HANDLE"
.LASF331:
	.string	"OI_SDP_CONNECTION_TIMEOUT"
.LASF597:
	.string	"subbands"
.LASF386:
	.string	"OI_DEVMGR_CONNECTION_LIST_FULL"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF513:
	.string	"OI_BNEP_CONNECT_FAILED_INVALID_UUID_SIZE"
.LASF393:
	.string	"OI_DEVMGR_EVENT_CALLBACK_LIST_FULL"
.LASF203:
	.string	"OI_L2CAP_CMD_REJECT_RCVD"
.LASF705:
	.string	"btc_a2dp_sink_future"
.LASF525:
	.string	"OI_BNEP_LOCAL_DEVICE_MUST_BE_MASTER"
.LASF262:
	.string	"OI_HCIERR_UNSUPPORTED"
.LASF3:
	.string	"__uint8_t"
.LASF194:
	.string	"OI_L2CAP_GROUP_ADD_CONNECT_FAIL"
.LASF665:
	.string	"sbc_frame_len"
.LASF253:
	.string	"OI_HCIERR_CONNECTION_TIMEOUT"
.LASF431:
	.string	"OI_SECMGR_UNIT_KEY_UNSUPPORTED"
.LASF313:
	.string	"OI_SDP_ACCESS_DENIED"
.LASF505:
	.string	"OI_BNEP_RESPONSE_TIMEOUT"
.LASF633:
	.string	"result"
.LASF479:
	.string	"OI_OBEX_DATABASE_LOCKED"
.LASF196:
	.string	"OI_L2CAP_DATA_WRITE_ERROR_LINK_TERM"
.LASF346:
	.string	"OI_RFCOMM_INVALID_PARITYTYPE"
.LASF594:
	.string	"nrof_blocks"
.LASF579:
	.string	"OI_AVRCP_RESPONSE_PACKET_OVERFLOW"
.LASF490:
	.string	"OI_HANDSFREE_EVENT_REPORTING_DISABLED"
.LASF614:
	.string	"filterBufferLen"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF27:
	.string	"long int"
.LASF355:
	.string	"OI_RFCOMM_INVALID_PACKET"
.LASF348:
	.string	"OI_RFCOMM_SESSION_EXISTS"
.LASF166:
	.string	"OI_STATUS_NEGOTIATION_FAILURE"
.LASF127:
	.string	"OI_STATUS_SUCCESS"
.LASF741:
	.string	"vTaskDelete"
.LASF680:
	.string	"xActivatedMember"
.LASF566:
	.string	"OI_AVDTP_CONNECTION_SEQ_ERROR"
.LASF225:
	.string	"OI_HCI_SHORT_EVENT"
.LASF185:
	.string	"OI_STATUS_GROUP_FULL"
.LASF235:
	.string	"OI_HCI_FLOW_CONTROL_DISABLED"
.LASF541:
	.string	"OI_CODEC_SBC_NOT_ENOUGH_HEADER_DATA"
.LASF637:
	.string	"BTC_MEDIA_FLUSH_AA_RX"
.LASF301:
	.string	"OI_HCIERR_HOST_BUSY_PAIRING"
.LASF195:
	.string	"OI_L2CAP_GROUP_REMOVE_FAILURE"
.LASF480:
	.string	"OI_OBEX_INTERNAL_SERVER_ERROR"
.LASF723:
	.string	"fixed_queue_new"
.LASF576:
	.string	"OI_AVRCP_NOT_IMPLEMENTED"
.LASF666:
	.string	"btc_a2dp_sink_data_ready"
.LASF537:
	.string	"OI_PAN_CONNECTION_IN_PROGRESS"
.LASF622:
	.string	"common"
.LASF243:
	.string	"OI_HCI_TRANSPORT_RESET"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF152:
	.string	"OI_STATUS_MBUF_OVERFLOW"
.LASF109:
	.string	"tBTA_AV_HNDL"
.LASF380:
	.string	"OI_HCITRANS_INTERNAL_ERROR"
.LASF551:
	.string	"OI_FIFOQ_INVALID_DATA_PTR"
.LASF280:
	.string	"OI_HCIERR_LMP_ERROR_TRANS_COLLISION"
.LASF647:
	.string	"channel_count"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF223:
	.string	"OI_HCI_BAD_EVENT_PARM_LEN"
.LASF518:
	.string	"OI_BNEP_FILTER_NET_FAILED_MAX_LIMIT_REACHED"
.LASF473:
	.string	"OI_OBEX_PRECONDITION_FAILED"
.LASF552:
	.string	"OI_HID_HOST_SERVICE_NOT_STARTED"
.LASF43:
	.string	"fixed_queue_t"
.LASF532:
	.string	"OI_NETIFC_PACKET_TOO_BIG"
.LASF237:
	.string	"OI_HCI_TX_ERROR"
.LASF653:
	.string	"channeltype"
.LASF656:
	.string	"btc_a2dp_sink_flush_q"
.LASF678:
	.string	"btc_a2dp_sink_ctrl_handler"
.LASF278:
	.string	"OI_HCIERR_ROLE_CHANGE_NOT_ALLOWED"
.LASF176:
	.string	"OI_STATUS_INVALID_CID"
.LASF298:
	.string	"OI_HCIERR_ROLE_SWITCH_FAILED"
.LASF511:
	.string	"OI_BNEP_CONNECT_FAILED_INVALID_DEST_UUID"
.LASF38:
	.string	"QueueHandle_t"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"uint8_t"
.LASF131:
	.string	"OI_STATUS_NOT_INITIALIZED"
.LASF276:
	.string	"OI_HCIERR_UNSPECIFIED_ERROR"
.LASF141:
	.string	"OI_OS_ERROR"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF737:
	.string	"abort"
.LASF543:
	.string	"OI_CODEC_SBC_NOT_ENOUGH_AUDIO_DATA"
.LASF374:
	.string	"OI_HCITRANS_DEVICE_NOT_READY"
.LASF270:
	.string	"OI_HCIERR_UNKNOWN_LMP_PDU"
.LASF667:
	.string	"context"
.LASF462:
	.string	"OI_OBEX_CLIENT_ABORTED_COMMAND"
.LASF117:
	.string	"tBTC_MEDIA_SINK_CFG_UPDATE"
.LASF233:
	.string	"OI_HCI_NO_CMD_DESC_FOR_OPCODE"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF485:
	.string	"OI_OBEX_FOLDER_BROWSING_NOT_ALLOWED"
.LASF489:
	.string	"OI_OBEX_USERID_TOO_LONG"
.LASF556:
	.string	"OI_AT_BUSY"
.LASF1:
	.string	"unsigned char"
.LASF711:
	.string	"appl_trace_level"
.LASF675:
	.string	"num_blocks"
.LASF333:
	.string	"OI_SDP_TOO_MANY_ATTRIBUTE_BYTES"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF172:
	.string	"OI_STATUS_PIN_CODE_TOO_LONG"
.LASF673:
	.string	"sbc_cie"
.LASF560:
	.string	"OI_AT_CME_ERROR"
.LASF624:
	.string	"restrictSubbands"
.LASF406:
	.string	"OI_DEVMGR_NO_SUPPORT"
.LASF510:
	.string	"OI_BNEP_CONNECT_BASE"
.LASF523:
	.string	"OI_BNEP_FILTER_MULTI_FAILED_MAX_LIMIT_REACHED"
.LASF284:
	.string	"OI_HCIERR_QOS_NOT_SUPPORTED"
.LASF297:
	.string	"OI_HCIERR_RESERVED_SLOT_VIOLATION"
.LASF291:
	.string	"OI_HCIERR_CHANNEL_CLASSIFICATION_NS"
.LASF118:
	.string	"OI_UINT"
.LASF159:
	.string	"OI_STATUS_DATA_ERROR"
.LASF677:
	.string	"__FUNCTION__"
.LASF738:
	.string	"xQueueGenericCreate"
.LASF178:
	.string	"OI_STATUS_CHANNEL_NOT_FOUND"
.LASF702:
	.string	"bd_addr_null"
.LASF420:
	.string	"OI_SECMGR_ORPHANED_CALLBACK"
.LASF582:
	.string	"OI_AVRCP_RESPONSE_PARAMETER_NOT_FOUND"
.LASF19:
	.string	"_Bool"
.LASF561:
	.string	"OI_AT_CMS_ERROR"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF376:
	.string	"OI_HCITRANS_ACCESS_DENIED"
.LASF681:
	.string	"data_evt"
.LASF626:
	.string	"bufferedBlocks"
.LASF286:
	.string	"OI_HCIERR_UNIT_KEY_PAIRING_UNSUPPORTED"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF742:
	.string	"vQueueDelete"
.LASF740:
	.string	"xTaskCreatePinnedToCore"
.LASF47:
	.string	"block_len"
.LASF207:
	.string	"OI_L2CAP_CONNECT_REFUSED_SECURITY"
.LASF447:
	.string	"OI_OBEX_CONNECT_FAILED"
.LASF160:
	.string	"OI_STATUS_INVALID_ROLE"
.LASF52:
	.string	"tA2D_SBC_CIE"
.LASF503:
	.string	"OI_BNEP_SERVICE_NOT_REGISTERED"
.LASF186:
	.string	"OI_STATUS_DEVICE_ALREADY_IN_GROUP"
.LASF41:
	.string	"SemaphoreHandle_t"
.LASF4:
	.string	"__uint16_t"
.LASF368:
	.string	"OI_TEST_UNKNOWN_TEST"
.LASF623:
	.string	"limitFrameFormat"
.LASF621:
	.string	"OI_CODEC_SBC_COMMON_CONTEXT"
.LASF357:
	.string	"OI_RFCOMM_INVALID_DLCI"
.LASF703:
	.string	"btc_aa_snk_cb"
.LASF362:
	.string	"OI_RFCOMM_SESSION_SHUTDOWN"
.LASF257:
	.string	"OI_HCIERR_COMMAND_DISALLOWED"
.LASF22:
	.string	"layer_specific"
.LASF568:
	.string	"OI_PBAP_REPOSITORY_NOT_SET"
.LASF318:
	.string	"OI_SDP_REQUEST_PENDING"
.LASF154:
	.string	"OI_STATUS_CONNECTION_EXISTS"
.LASF712:
	.string	"contextData"
.LASF631:
	.string	"ready_can_be_called"
.LASF299:
	.string	"OI_HCIERR_EIR_TOO_LARGE"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF18:
	.string	"BOOLEAN"
.LASF728:
	.string	"future_ready"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF202:
	.string	"OI_L2CAP_INVALID_ADDRESS"
.LASF619:
	.string	"pcmStride"
.LASF216:
	.string	"OI_L2CAP_INVALID_PSM"
.LASF736:
	.string	"ets_printf"
.LASF30:
	.string	"ESP_LOG_ERROR"
.LASF481:
	.string	"OI_OBEX_UNSUPPORTED_MEDIA_TYPE"
.LASF408:
	.string	"OI_DEVMGR_NOT_IN_MASTER_MODE"
.LASF165:
	.string	"OI_STATUS_WRITE_ERROR"
.LASF347:
	.string	"OI_RFCOMM_INVALID_FLOWCONTROL"
.LASF277:
	.string	"OI_HCIERR_UNSUPPORTED_LMP_PARAMETERS"
.LASF611:
	.string	"frameCount"
.LASF213:
	.string	"OI_L2CAP_GET_INFO_BASE"
.LASF310:
	.string	"OI_SDP_ERROR"
.LASF504:
	.string	"OI_BNEP_INVALID_HANDLE"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF425:
	.string	"OI_SECMGR_ACCESS_PENDING"
.LASF436:
	.string	"OI_SECMGR_INVALID_KEY_TYPE"
.LASF610:
	.string	"scale_factor"
.LASF353:
	.string	"OI_RFCOMM_TEST_IN_PROGRESS"
.LASF375:
	.string	"OI_HCITRANS_FUNCTION_NOT_SUPPORTED"
.LASF581:
	.string	"OI_AVRCP_RESPONSE_INVALID_PARAMETER"
.LASF466:
	.string	"OI_OBEX_NOT_FOUND"
.LASF718:
	.string	"btc_a2dp_control_get_datachnl_stat"
.LASF700:
	.string	"p_pkt"
.LASF471:
	.string	"OI_OBEX_NAME_REQUIRED"
.LASF264:
	.string	"OI_HCIERR_OTHER_END_USER_DISCONNECT"
.LASF413:
	.string	"OI_DEVMGR_BAD_INTERVAL"
.LASF749:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_a2dp_sink.c"
.LASF182:
	.string	"OI_STATUS_INVALID_PACKET"
.LASF527:
	.string	"OI_NETIFC_UP_FAILED"
.LASF639:
	.string	"BTC_MEDIA_AUDIO_SINK_CLEAR_TRACK"
.LASF279:
	.string	"OI_HCIERR_LMP_RESPONSE_TIMEOUT"
.LASF635:
	.string	"BTC_MEDIA_TASK_SINK_INIT"
.LASF714:
	.string	"fixed_queue_try_dequeue"
.LASF292:
	.string	"OI_HCIERR_INSUFFICIENT_SECURITY"
.LASF120:
	.string	"OI_INT8"
.LASF135:
	.string	"OI_ILLEGAL_REENTRANT_CALL"
.LASF605:
	.string	"OI_CODEC_SBC_FRAME_INFO"
.LASF112:
	.string	"initiator"
.LASF491:
	.string	"OI_HANDSFREE_NOT_CONNECTED"
.LASF342:
	.string	"OI_RFCOMM_INVALID_BAUDRATE"
.LASF334:
	.string	"OI_SDP_TOO_MANY_SERVICE_RECORDS"
.LASF397:
	.string	"OI_DEVMGR_ENUM_UNEXPECTED_INQ_RESULT"
.LASF323:
	.string	"OI_SDP_ILLEGAL_ARGUMENT"
.LASF232:
	.string	"OI_HCI_EXPECTED_EVENT_TIMOUT"
.LASF157:
	.string	"OI_STATUS_RESET_IN_PROGRESS"
.LASF328:
	.string	"OI_SDP_UNEXPECTED_RESPONSE_PDU_ID"
.LASF607:
	.string	"uint32"
.LASF332:
	.string	"OI_SDP_RESPONSE_DATA_ERROR"
.LASF16:
	.string	"UINT16"
.LASF743:
	.string	"future_new"
.LASF290:
	.string	"OI_HCIERR_QOS_REJECTED"
.LASF744:
	.string	"__assert_func"
.LASF707:
	.string	"btc_aa_snk_data_queue"
.LASF725:
	.string	"btc_a2dp_control_set_datachnl_stat"
.LASF263:
	.string	"OI_HCIERR_INVALID_PARAMETERS"
.LASF465:
	.string	"OI_OBEX_OBJECT_OVERFLOW"
.LASF329:
	.string	"OI_SDP_REQUEST_TIMEOUT"
.LASF23:
	.string	"data"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF734:
	.string	"xQueueGenericSend"
.LASF571:
	.string	"OI_AADP_BAD_STATE"
.LASF601:
	.string	"bitpool"
.LASF746:
	.string	"fixed_queue_length"
.LASF115:
	.string	"esp_a2d_sink_data_cb_t"
.LASF641:
	.string	"BTC_A2DP_SINK_STATE_ON"
.LASF130:
	.string	"OI_STATUS_NOT_IMPLEMENTED"
.LASF439:
	.string	"OI_SECMGR_NOT_BONDABLE"
.LASF572:
	.string	"OI_UNICODE_INVALID_SOURCE"
.LASF684:
	.string	"btc_a2dp_sink_data_post"
.LASF608:
	.string	"codecInfo"
.LASF706:
	.string	"btc_aa_snk_task_hdl"
.LASF558:
	.string	"OI_AT_DELAYED"
.LASF28:
	.string	"long unsigned int"
.LASF240:
	.string	"OI_HCI_PASSTHROUGH_ERROR"
.LASF364:
	.string	"OI_RFCOMM_REMOTE_DEVICE_DISCONNECTED"
.LASF463:
	.string	"OI_OBEX_BAD_PACKET"
.LASF477:
	.string	"OI_OBEX_INVALID_OPERATION"
.LASF145:
	.string	"OI_STATUS_INVALID_COMMAND"
.LASF271:
	.string	"OI_HCIERR_UNSUPPORTED_REMOTE_FEATURE"
.LASF113:
	.string	"status"
.LASF514:
	.string	"OI_BNEP_CONNECT_FAILED_NOT_ALLOWED"
.LASF506:
	.string	"OI_BNEP_INVALID_CONNECTION"
.LASF116:
	.string	"codec_info"
.LASF745:
	.string	"future_await"
.LASF236:
	.string	"OI_HCI_TX_COMPLETE"
.LASF521:
	.string	"OI_BNEP_FILTER_MULTI_UNSUPPORTED_REQUEST"
.LASF42:
	.string	"BtTaskEvt_t"
.LASF173:
	.string	"OI_STATUS_STILL_REGISTERED"
.LASF396:
	.string	"OI_DEVMGR_ENUM_UNEXPECTED_INQ_COMPLETE"
.LASF197:
	.string	"OI_L2CAP_DISCONNECT_LOCAL_REQUEST"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF549:
	.string	"OI_FIFOQ_FULL"
.LASF256:
	.string	"OI_HCIERR_ACL_CONNECTION_ALREADY_EXISTS"
.LASF143:
	.string	"OI_STRING_FORMAT_ERROR"
.LASF303:
	.string	"OI_HCIERR_LAST_ERROR_VALUE"
.LASF359:
	.string	"OI_RFCOMM_CREDIT_ERROR"
.LASF205:
	.string	"OI_L2CAP_CONNECT_PENDING"
.LASF454:
	.string	"OI_OBEX_OPERATION_IN_PROGRESS"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF224:
	.string	"OI_HCI_CMD_QUEUE_FULL"
.LASF187:
	.string	"OI_STATUS_DUPLICATE_GROUP"
.LASF542:
	.string	"OI_CODEC_SBC_NOT_ENOUGH_BODY_DATA"
.LASF689:
	.string	"btc_a2dp_sink_shutdown"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF189:
	.string	"OI_STATUS_PACKET_NOT_FOUND"
.LASF352:
	.string	"OI_RFCOMM_REMOTE_REJECT"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF422:
	.string	"OI_SECMGR_DEVICE_NOT_TRUSTED"
.LASF449:
	.string	"OI_OBEX_ERROR"
.LASF363:
	.string	"OI_RFCOMM_LOCAL_DEVICE_DISCONNECTED"
.LASF440:
	.string	"OI_TCS_INVALID_ELEMENT_TYPE"
.LASF453:
	.string	"OI_OBEX_NO_MORE_CONNECTIONS"
.LASF604:
	.string	"cachedInfo"
.LASF547:
	.string	"OI_FIFOQ_INVALID_Q"
.LASF293:
	.string	"OI_HCIERR_PARM_OUT_OF_MANDATORY_RANGE"
.LASF417:
	.string	"OI_DEVMGR_EIR_RESPONSE_2_LARGE"
.LASF669:
	.string	"btc_a2dp_sink_thread_cleanup"
.LASF226:
	.string	"OI_HCI_TRANSMIT_NOT_READY"
.LASF713:
	.string	"pcmData"
.LASF599:
	.string	"nrof_channels"
.LASF657:
	.string	"btc_a2dp_sink_rx_flush"
.LASF239:
	.string	"OI_HCI_UNSUPPORTED_COMMAND"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF602:
	.string	"join"
.LASF208:
	.string	"OI_L2CAP_CONNECT_REFUSED_NO_RESOURCES"
.LASF528:
	.string	"OI_NETIFC_COULD_NOT_CREATE_THREAD"
.LASF496:
	.string	"OI_HANDSFREE_AUDIO_NOT_CONNECTED"
.LASF458:
	.string	"OI_OBEX_SERVICE_UNAVAILABLE"
.LASF441:
	.string	"OI_TCS_INVALID_PACKET"
.LASF212:
	.string	"OI_L2CAP_CONFIG_FAIL_UNKNOWN_OPTIONS"
.LASF110:
	.string	"chnl"
.LASF613:
	.string	"filterBuffer"
.LASF171:
	.string	"OI_STATUS_LINK_TERMINATED"
.LASF367:
	.string	"OI_DISPATCH_TABLE_OVERFLOW"
.LASF288:
	.string	"OI_HCIERR_RESERVED_2B"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF101:
	.string	"BTM_PM_STS_HOLD"
.LASF7:
	.string	"__uint32_t"
.LASF9:
	.string	"long long int"
.LASF392:
	.string	"OI_DEVMGR_DUPLICATE_EVENT_CALLBACK"
.LASF410:
	.string	"OI_DEVMGR_BUSY_TIMEOUT"
.LASF123:
	.string	"OI_UINT8"
.LASF546:
	.string	"OI_FIFOQ_QUEUE_NOT_ALIGNED"
.LASF285:
	.string	"OI_HCIERR_INSTANT_PASSED"
.LASF324:
	.string	"OI_SDP_ATTRIBUTE_NOT_FOUND"
.LASF691:
	.string	"enable"
.LASF390:
	.string	"OI_DEVMGR_NO_INQUIRIES_ACTIVE"
.LASF750:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF747:
	.string	"fixed_queue_enqueue"
.LASF751:
	.string	"btc_a2d_data_cb_to_app"
.LASF354:
	.string	"OI_RFCOMM_SESSION_NOT_FOUND"
.LASF40:
	.string	"QueueSetMemberHandle_t"
.LASF294:
	.string	"OI_HCIERR_RESERVED_31"
.LASF296:
	.string	"OI_HCIERR_RESERVED_33"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF45:
	.string	"samp_freq"
.LASF126:
	.string	"OI_CHAR"
.LASF636:
	.string	"BTC_MEDIA_TASK_SINK_CLEAN_UP"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF498:
	.string	"OI_HEADSET_SERVICE_NOT_STARTED"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF272:
	.string	"OI_HCIERR_SCO_OFFSET_REJECTED"
.LASF161:
	.string	"OI_STATUS_ALREADY_CONNECTED"
.LASF442:
	.string	"OI_TCS_CALL_IN_PROGRESS"
.LASF358:
	.string	"OI_RFCOMM_SERVER_NOT_REGISTERED"
.LASF148:
	.string	"OI_STATUS_NOT_FOUND"
.LASF567:
	.string	"OI_AVDTP_OUT_OF_RESOURCES"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF219:
	.string	"OI_HCI_NO_SUCH_CONNECTION"
.LASF306:
	.string	"OI_SDP_INVALID_REQUEST_SYNTAX"
.LASF302:
	.string	"OI_HCIERR_UNKNOWN_ERROR"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF570:
	.string	"OI_AADP_BAD_ENDPOINT"
.LASF645:
	.string	"tBT_SBC_HDR"
.LASF553:
	.string	"OI_HID_DEVICE_SERVICE_NOT_STARTED"
.LASF419:
	.string	"OI_SECMGR_INTERNAL_ERROR"
.LASF138:
	.string	"OI_STATUS_NO_SCO_SUPPORT"
.LASF748:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF344:
	.string	"OI_RFCOMM_INVALID_STOPBIT"
.LASF592:
	.string	"frequency"
.LASF435:
	.string	"OI_SECMGR_INSUFFICIENT_LINK_KEY"
.LASF337:
	.string	"OI_SDP_BADLY_FORMED_ATTRIBUTE_VALUE"
.LASF200:
	.string	"OI_L2CAP_PING_TIMEOUT"
.LASF573:
	.string	"OI_UNICODE_SOURCE_EXHAUSTED"
.LASF732:
	.string	"xQueueSelectFromSet"
.LASF437:
	.string	"OI_SECMGR_SSP_NOT_ENCRYPTED"
.LASF274:
	.string	"OI_HCIERR_SCO_AIR_MODE_REJECTED"
.LASF655:
	.string	"count"
.LASF20:
	.string	"event"
.LASF600:
	.string	"alloc"
.LASF39:
	.string	"QueueSetHandle_t"
.LASF415:
	.string	"OI_DEVMGR_CONNECTION_OVERLAP"
.LASF515:
	.string	"OI_BNEP_FILTER_NET_BASE"
.LASF650:
	.string	"tBTC_A2DP_SINK_CB"
.LASF162:
	.string	"OI_STATUS_PARSE_ERROR"
.LASF495:
	.string	"OI_HANDSFREE_AUDIO_ALREADY_CONNECTED"
.LASF221:
	.string	"OI_HCI_EVENT_UNDERRUN"
.LASF8:
	.string	"unsigned int"
.LASF674:
	.string	"freq_multiple"
.LASF259:
	.string	"OI_HCIERR_HOST_REJECTED_SECURITY"
.LASF269:
	.string	"OI_HCIERR_PAIRING_NOT_ALLOWED"
.LASF44:
	.string	"tA2D_STATUS"
.LASF384:
	.string	"OI_DEVMGR_HARDWARE_ERROR"
.LASF391:
	.string	"OI_DEVMGR_DUPLICATE_CONNECTION"
.LASF484:
	.string	"OI_OBEXSRV_INCOMPLETE_GET"
.LASF487:
	.string	"OI_OBEX_OFS_ERROR"
.LASF699:
	.string	"btc_a2dp_sink_enque_buf"
.LASF265:
	.string	"OI_HCIERR_OTHER_END_LOW_RESOURCES"
.LASF220:
	.string	"OI_HCI_CB_LIST_FULL"
.LASF124:
	.string	"OI_UINT16"
.LASF371:
	.string	"OI_HCITRANS_BUFFER_TOO_SMALL"
.LASF227:
	.string	"OI_HCI_ORPHAN_SENT_EVENT"
.LASF722:
	.string	"fixed_queue_try_peek_first"
.LASF640:
	.string	"BTC_A2DP_SINK_STATE_OFF"
.LASF222:
	.string	"OI_HCI_UNKNOWN_EVENT_CODE"
.LASF438:
	.string	"OI_SECMGR_ORPHAN_EVENT"
.LASF472:
	.string	"OI_OBEX_PASSWORD_TOO_LONG"
.LASF616:
	.string	"bits"
.LASF31:
	.string	"ESP_LOG_WARN"
.LASF248:
	.string	"OI_HCIERR_HARDWARE_FAILURE"
.LASF316:
	.string	"OI_SDP_NO_MORE_DATA"
.LASF37:
	.string	"TaskHandle_t"
.LASF575:
	.string	"OI_AVRCP_TOO_MANY_CONNECTIONS"
.LASF540:
	.string	"OI_CODEC_SBC_NO_SYNCWORD"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF322:
	.string	"OI_SDP_PARTIAL_RESPONSE"
.LASF569:
	.string	"OI_PBAP_PHONEBOOK_NOT_SET"
.LASF634:
	.string	"future_t"
.LASF501:
	.string	"OI_BNEP_INVALID_MTU"
.LASF21:
	.string	"offset"
.LASF448:
	.string	"OI_OBEX_DISCONNECT_FAILED"
.LASF724:
	.string	"btc_a2dp_control_init"
.LASF577:
	.string	"OI_AVRCP_REJECTED"
.LASF548:
	.string	"OI_FIFOQ_BUF_TOO_LARGE"
.LASF625:
	.string	"enhancedEnabled"
.LASF679:
	.string	"btc_a2dp_sink_task_handler"
.LASF250:
	.string	"OI_HCIERR_AUTHENTICATION_FAILURE"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF267:
	.string	"OI_HCIERR_CONNECTION_TERMINATED_LOCALLY"
.LASF252:
	.string	"OI_HCIERR_MEMORY_FULL"
.LASF188:
	.string	"OI_STATUS_EMPTY_GROUP"
.LASF121:
	.string	"OI_INT16"
.LASF434:
	.string	"OI_SECMGR_INVALID_SEC_LEVEL"
.LASF452:
	.string	"OI_OBEX_NOT_CONNECTED"
.LASF509:
	.string	"OI_BNEP_NOT_INITIALIZED"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF325:
	.string	"OI_SDP_DATABASE_OUT_OF_RESOURCES"
.LASF544:
	.string	"OI_CODEC_SBC_CHECKSUM_MISMATCH"
.LASF660:
	.string	"sbc_start_frame"
.LASF488:
	.string	"OI_OBEX_FILEOP_ERROR"
.LASF409:
	.string	"OI_DEVMGR_POLICY_VIOLATION"
.LASF191:
	.string	"OI_STATUS_IDENTIFIER_NOT_FOUND"
.LASF34:
	.string	"ESP_LOG_VERBOSE"
.LASF727:
	.string	"fixed_queue_free"
.LASF628:
	.string	"osi_sem_t"
.LASF125:
	.string	"OI_UINT32"
.LASF456:
	.string	"OI_OBEX_GET_RESPONSE_ERROR"
.LASF402:
	.string	"OI_DEVMGR_UNKNOWN_IAC_LAP"
.LASF423:
	.string	"OI_SECMGR_DEVICE_ENCRYPT_FAIL"
.LASF659:
	.string	"p_msg"
.LASF17:
	.string	"UINT32"
.LASF559:
	.string	"OI_AT_BLACKLISTED"
.LASF475:
	.string	"OI_OBEX_NOT_IMPLEMENTED"
.LASF643:
	.string	"BTC_A2DP_SINK_DATA_EVT"
.LASF512:
	.string	"OI_BNEP_CONNECT_FAILED_INVALID_SOURCE_UUID"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF49:
	.string	"alloc_mthd"
.LASF478:
	.string	"OI_OBEX_DATABASE_FULL"
.LASF399:
	.string	"OI_DEVMGR_ENUM_INQUIRIES_OVERLAP"
.LASF418:
	.string	"OI_SECMGR_NO_POLICY"
.LASF609:
	.string	"frameInfo"
.LASF411:
	.string	"OI_DEVMGR_REENCRYPT_FAILED"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF630:
	.string	"future"
.LASF493:
	.string	"OI_HANDSFREE_AG_SERVICE_NOT_STARTED"
.LASF716:
	.string	"fixed_queue_is_empty"
.LASF255:
	.string	"OI_HCIERR_MAX_NUM_OF_SCO_CONNECTIONS"
.LASF726:
	.string	"btc_a2dp_control_cleanup"
.LASF450:
	.string	"OI_OBEX_INCOMPLETE_PACKET"
.LASF497:
	.string	"OI_HANDSFREE_FEATURE_NOT_SUPPORTED"
.LASF156:
	.string	"OI_LOWER_STACK_ERROR"
.LASF395:
	.string	"OI_DEVMGR_BUSY"
.LASF720:
	.string	"esp_log_timestamp"
.LASF587:
	.string	"OI_STATUS_RESERVED_FOR_SOUNDABOUT"
.LASF729:
	.string	"A2D_ParsSbcInfo"
.LASF122:
	.string	"OI_INT32"
.LASF416:
	.string	"OI_DEVMGR_ORPHAN_SUBRATE_COMPLETE"
.LASF211:
	.string	"OI_L2CAP_CONFIG_FAIL_NO_REASON"
.LASF588:
	.string	"OI_STATUS_RESERVED_FOR_APPS"
.LASF10:
	.string	"long long unsigned int"
.LASF555:
	.string	"OI_AT_NO_CARRIER"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF164:
	.string	"OI_STATUS_READ_ERROR"
.LASF517:
	.string	"OI_BNEP_FILTER_NET_FAILED_INVALID_PROTOCOL_TYPE"
.LASF102:
	.string	"BTM_PM_STS_SNIFF"
.LASF100:
	.string	"BTM_PM_STS_ACTIVE"
.LASF151:
	.string	"OI_CALLBACK_FUNCTION_REQUIRED"
.LASF591:
	.string	"SBC_BUFFER_T"
.LASF238:
	.string	"OI_HCI_DEVICE_NOT_INITIALIZED"
.LASF12:
	.string	"uint16_t"
.LASF387:
	.string	"OI_DEVMGR_NO_SUCH_CONNECTION"
.LASF349:
	.string	"OI_RFCOMM_INVALID_CHANNEL"
.LASF137:
	.string	"OI_STATUS_INITIALIZATION_PENDING"
.LASF526:
	.string	"OI_BNEP_PACKET_FILTERED_OUT"
.LASF662:
	.string	"availPcmBytes"
.LASF701:
	.string	"bd_addr_any"
.LASF698:
	.string	"btc_a2dp_sink_on_suspended"
.LASF670:
	.string	"btc_a2dp_sink_handle_decoder_reset"
.LASF245:
	.string	"OI_HCIERR_FIRST_ERROR_VALUE"
.LASF229:
	.string	"OI_HCI_UNKNOWN_CMD_ID"
.LASF538:
	.string	"OI_PAN_USER_ALREADY_CONNECTED"
.LASF388:
	.string	"OI_DEVMGR_INQUIRY_IN_PROGRESS"
.LASF530:
	.string	"OI_NETIFC_INTERFACE_ALREADY_UP"
.LASF170:
	.string	"OI_STATUS_MTU_EXCEEDED"
.LASF539:
	.string	"OI_PAN_DEVICE_CONNECTED"
.LASF730:
	.string	"OI_CODEC_SBC_DecoderReset"
.LASF311:
	.string	"OI_SDP_CORRUPT_DATA_ELEMENT"
.LASF632:
	.string	"semaphore"
.LASF461:
	.string	"OI_OBEX_UNSUPPORTED_VERSION"
.LASF596:
	.string	"nrof_subbands"
.LASF29:
	.string	"ESP_LOG_NONE"
.LASF36:
	.string	"TickType_t"
.LASF426:
	.string	"OI_SECMGR_PIN_CODE_TOO_SHORT"
.LASF696:
	.string	"btc_a2dp_sink_on_idle"
.LASF468:
	.string	"OI_OBEX_VALUE_NOT_ACCEPTABLE"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF529:
	.string	"OI_NETIFC_INITIALIZATION_FAILED"
.LASF752:
	.string	"error_exit"
.LASF520:
	.string	"OI_BNEP_FILTER_MULTI_BASE"
.LASF494:
	.string	"OI_HANDSFREE_COMMAND_IN_PROGRESS"
.LASF32:
	.string	"ESP_LOG_INFO"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF217:
	.string	"OI_L2CAP_INVALID_MTU"
.LASF378:
	.string	"OI_HCITRANS_SCO_DATA_ERROR"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF155:
	.string	"OI_STATUS_NOT_CONFIGURED"
.LASF620:
	.string	"maxChannels"
.LASF508:
	.string	"OI_BNEP_CONNECTION_EXISTS"
.LASF210:
	.string	"OI_L2CAP_CONFIG_FAIL_INVALID_PARAMETERS"
.LASF201:
	.string	"OI_L2CAP_GET_INFO_TIMEOUT"
.LASF326:
	.string	"OI_SDP_SHORT_PDU"
.LASF330:
	.string	"OI_SDP_INVALID_RESPONSE_SYNTAX"
.LASF289:
	.string	"OI_HCIERR_QOS_UNACCEPTABLE_PARAMETER"
.LASF273:
	.string	"OI_HCIERR_SCO_INTERVAL_REJECTED"
.LASF522:
	.string	"OI_BNEP_FILTER_MULTI_FAILED_INVALID_ADDRESS"
.LASF733:
	.string	"malloc"
.LASF246:
	.string	"OI_HCIERR_UNKNOWN_HCI_COMMAND"
.LASF690:
	.string	"btc_a2dp_sink_set_rx_flush"
.LASF661:
	.string	"pcmBytes"
.LASF175:
	.string	"OI_STATUS_PSM_ALREADY_REGISTERED"
.LASF321:
	.string	"OI_SDP_NO_MATCHING_SERVICE_RECORD"
.LASF308:
	.string	"OI_SDP_INVALID_CONTINUATION_STATE"
.LASF108:
	.string	"tBTA_AV_CHNL"
.LASF15:
	.string	"UINT8"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF451:
	.string	"OI_OBEX_LENGTH_REQUIRED"
.LASF6:
	.string	"__int32_t"
.LASF379:
	.string	"OI_HCITRANS_EVENT_DATA_ERROR"
.LASF338:
	.string	"OI_SDP_NO_ATTRIBUTE_LIST_TO_REMOVE"
.LASF361:
	.string	"OI_RFCOMM_QUERY_IN_PROGRESS"
.LASF370:
	.string	"OI_HCITRANS_CANNOT_CONNECT_TO_DEVICE"
.LASF486:
	.string	"OI_OBEX_SERVER_FORCED_DISCONNECT"
.LASF140:
	.string	"OI_TIMEOUT"
.LASF519:
	.string	"OI_BNEP_FILTER_NET_FAILED_SECURITY"
.LASF373:
	.string	"OI_HCITRANS_IO_ERROR"
.LASF603:
	.string	"enhanced"
.LASF193:
	.string	"OI_L2CAP_DISCONNECT_REMOTE_REQUEST"
.LASF241:
	.string	"OI_HCI_PASSTHROUGH_ALREADY_SET"
.LASF534:
	.string	"OI_PAN_ROLE_NOT_ALLOWED"
.LASF266:
	.string	"OI_HCIERR_OTHER_END_POWERING_OFF"
.LASF150:
	.string	"OI_STATUS_NOT_CONNECTED"
.LASF606:
	.string	"uint8"
.LASF365:
	.string	"OI_RFCOMM_OUT_OF_SERVER_CHANNELS"
.LASF651:
	.string	"btc_a2dp_sink_get_track_frequency"
.LASF275:
	.string	"OI_HCIERR_INVALID_LMP_PARMS"
.LASF507:
	.string	"OI_BNEP_INVALID_FILTER"
.LASF133:
	.string	"OI_STATUS_INTERNAL_ERROR"
.LASF244:
	.string	"OI_HCIERR_HCIIFC_INIT_FAILURE"
.LASF444:
	.string	"OI_OBEX_CONTINUE"
.LASF735:
	.string	"xQueueCreateSet"
.LASF180:
	.string	"OI_STATUS_INVALID_STATE"
.LASF445:
	.string	"OI_OBEX_COMMAND_ERROR"
.LASF335:
	.string	"OI_SDP_INVALID_CONNECTION_ID"
.LASF105:
	.string	"BTM_PM_STS_PENDING"
.LASF2:
	.string	"short int"
.LASF345:
	.string	"OI_RFCOMM_INVALID_PARITY"
.LASF457:
	.string	"OI_OBEX_REQUIRED_HEADER_NOT_FOUND"
.LASF598:
	.string	"mode"
.LASF414:
	.string	"OI_DEVMGR_INVALID_SCO_HANDLE"
.LASF531:
	.string	"OI_NETIFC_INTERFACE_NOT_UP"
.LASF615:
	.string	"filterBufferOffset"
.LASF204:
	.string	"OI_L2CAP_CONNECT_BASE"
.LASF230:
	.string	"OI_HCI_UNEXPECTED_EVENT"
.LASF516:
	.string	"OI_BNEP_FILTER_NET_UNSUPPORTED_REQUEST"
.LASF589:
	.string	"OI_STATUS_NONE"
.LASF147:
	.string	"OI_STATUS_ALREADY_REGISTERED"
.LASF199:
	.string	"OI_L2CAP_DISCONNECT_TIMEOUT"
.LASF627:
	.string	"OI_CODEC_SBC_DECODER_CONTEXT"
.LASF554:
	.string	"OI_AT_ERROR"
.LASF163:
	.string	"OI_STATUS_END_OF_FILE"
.LASF183:
	.string	"OI_STATUS_SEND_COMPLETE"
.LASF139:
	.string	"OI_STATUS_OUT_OF_STATIC_MEMORY"
.LASF136:
	.string	"OI_STATUS_INITIALIZATION_FAILED"
.LASF446:
	.string	"OI_OBEX_CONNECTION_TIMEOUT"
.LASF48:
	.string	"num_subbands"
.LASF46:
	.string	"ch_mode"
.LASF671:
	.string	"p_buf"
.LASF315:
	.string	"OI_SDP_DEVICE_DOES_NOT_SUPPORT_SDP"
.LASF704:
	.string	"btc_a2dp_sink_state"
.LASF652:
	.string	"btc_a2dp_sink_get_track_channel_count"
.LASF564:
	.string	"OI_BLST_TX_NOT_READY"
.LASF251:
	.string	"OI_HCIERR_KEY_MISSING"
.LASF25:
	.string	"BT_HDR"
.LASF149:
	.string	"OI_STATUS_NOT_REGISTERED"
.LASF377:
	.string	"OI_HCITRANS_ACL_DATA_ERROR"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF685:
	.string	"data_type"
.LASF158:
	.string	"OI_STATUS_ACCESS_DENIED"
.LASF351:
	.string	"OI_RFCOMM_LINK_NOT_FOUND"
.LASF242:
	.string	"OI_HCI_RESET_FAILURE"
.LASF198:
	.string	"OI_L2CAP_CONNECT_TIMEOUT"
.LASF104:
	.string	"BTM_PM_STS_SSR"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF502:
	.string	"OI_BNEP_SETUP_TIMEOUT"
.LASF366:
	.string	"OI_DISPATCH_INVALID_CB_HANDLE"
.LASF443:
	.string	"OI_TCS_NO_CALL_IN_PROGRESS"
.LASF33:
	.string	"ESP_LOG_DEBUG"
.LASF300:
	.string	"OI_HCIERR_SSP_NOT_SUPPORTED_BY_HOST"
.LASF153:
	.string	"OI_STATUS_MBUF_UNDERFLOW"
.LASF663:
	.string	"pcmDataPointer"
.LASF524:
	.string	"OI_BNEP_FILTER_MULTI_FAILED_SECURITY"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF215:
	.string	"OI_L2CAP_MTU_EXCEEDED"
.LASF401:
	.string	"OI_DEVMGR_PARAM_IO_ACTIVE"
.LASF369:
	.string	"OI_TEST_FAIL"
.LASF649:
	.string	"sample_rate"
.LASF672:
	.string	"a2d_status"
.LASF753:
	.string	"memcpy"
.LASF234:
	.string	"OI_HCI_INVALID_OPCODE_ERROR"
.LASF142:
	.string	"OI_FAIL"
.LASF687:
	.string	"frames_to_process"
.LASF467:
	.string	"OI_OBEX_ACCESS_DENIED"
.LASF682:
	.string	"btc_a2dp_sink_ctrl_post"
.LASF719:
	.string	"OI_CODEC_SBC_DecodeFrame"
.LASF433:
	.string	"OI_SECMGR_ILLEGAL_WRITE_SSP_MODE"
.LASF595:
	.string	"blocks"
.LASF398:
	.string	"OI_DEVMGR_ENUM_DATABASE_FULL"
.LASF383:
	.string	"OI_DEVMGR_NO_CONNECTION"
.LASF177:
	.string	"OI_STATUS_CID_NOT_FOUND"
.LASF697:
	.string	"btc_a2dp_sink_on_stopped"
.LASF336:
	.string	"OI_SDP_CANNOT_SET_ATTRIBUTE"
.LASF695:
	.string	"btc_a2dp_sink_rx_flush_req"
.LASF14:
	.string	"uint32_t"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF314:
	.string	"OI_SDP_ATTRIBUTES_OUT_OF_ORDER"
.LASF694:
	.string	"btc_a2dp_sink_startup"
.LASF99:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF103:
	.string	"BTM_PM_STS_PARK"
.LASF317:
	.string	"OI_SDP_REQUEST_PARAMS_TOO_LONG"
.LASF709:
	.string	"btc_aa_snk_queue_set"
.LASF404:
	.string	"OI_DEVMGR_SCO_NOT_REGISTERED"
.LASF459:
	.string	"OI_OBEX_TOO_MANY_HEADER_BYTES"
.LASF612:
	.string	"subdata"
.LASF464:
	.string	"OI_OBEX_BAD_REQUEST"
.LASF305:
	.string	"OI_SDP_INVALID_SERVICE_RECORD_HANDLE"
.LASF385:
	.string	"OI_DEVMGR_PENDING_CONNECT_LIST_FULL"
.LASF407:
	.string	"OI_DEVMGR_WRITE_POLICY_FAILED"
.LASF715:
	.string	"free"
.LASF282:
	.string	"OI_HCIERR_ENCRYPTION_MODE_NOT_ACCEPTABLE"
.LASF500:
	.string	"OI_HEADSET_COMMAND_IN_PROGRESS"
.LASF563:
	.string	"OI_BLST_ACKNOWLDGE_TIMEOUT"
.LASF429:
	.string	"OI_SECMGR_AUTHORIZATION_FAILED"
.LASF360:
	.string	"OI_RFCOMM_NO_CHANNEL_NUMBER"
.LASF132:
	.string	"OI_STATUS_NO_RESOURCES"
.LASF654:
	.string	"freq"
.LASF5:
	.string	"short unsigned int"
.LASF341:
	.string	"OI_RFCOMM_WRITE_IN_PROGRESS"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF405:
	.string	"OI_DEVMGR_SCO_WITHOUT_ACL"
.LASF642:
	.string	"BTC_A2DP_SINK_STATE_SHUTTING_DOWN"
.LASF146:
	.string	"OI_BUSY_FAIL"
.LASF412:
	.string	"OI_DEVMGR_ROLE_POLICY_CONFLICT"
.LASF460:
	.string	"OI_OBEX_UNKNOWN_COMMAND"
.LASF648:
	.string	"RxSbcQ"
.LASF424:
	.string	"OI_SECMGR_DISCONNECTED_FAIL"
.LASF731:
	.string	"xQueueGenericReceive"
.LASF590:
	.string	"OI_STATUS"
.LASF476:
	.string	"OI_OBEX_INVALID_AUTH_DIGEST"
.LASF565:
	.string	"OI_BLST_TX_BUSY"
.LASF617:
	.string	"maxBitneed"
.LASF535:
	.string	"OI_PAN_INCOMPATIBLE_ROLES"
.LASF381:
	.string	"OI_HCITRANS_LINK_NOT_ACTIVE"
.LASF584:
	.string	"OI_MAX_BM3_STATUS_VAL"
.LASF593:
	.string	"freqIndex"
.LASF192:
	.string	"OI_L2CAP_DISCONNECT_LOWER_LAYER"
.LASF268:
	.string	"OI_HCIERR_REPEATED_ATTEMPTS"
.LASF218:
	.string	"OI_L2CAP_INVALID_FLUSHTO"
.LASF206:
	.string	"OI_L2CAP_CONNECT_REFUSED_INVALID_PSM"
.LASF482:
	.string	"OI_OBEX_PARTIAL_CONTENT"
.LASF432:
	.string	"OI_SECMGR_NOT_REGISTERED"
.LASF717:
	.string	"btc_av_get_peer_sep"
.LASF169:
	.string	"OI_STATUS_STILL_CONNECTED"
.LASF470:
	.string	"OI_OBEX_NO_SUCH_FOLDER"
.LASF557:
	.string	"OI_AT_NO_ANSWER"
.LASF389:
	.string	"OI_DEVMGR_PERIODIC_INQUIRY_ACTIVE"
.LASF144:
	.string	"OI_STATUS_PENDING"
.LASF721:
	.string	"esp_log_write"
.LASF578:
	.string	"OI_AVRCP_INVALID_RESPONSE"
.LASF644:
	.string	"num_frames_to_be_processed"
.LASF339:
	.string	"OI_SDP_ATTRIBUTE_LIST_ALREADY_ADDED"
.LASF309:
	.string	"OI_SDP_INSUFFICIENT_RESOURCES"
.LASF128:
	.string	"OI_OK"
.LASF394:
	.string	"OI_DEVMGR_EVENT_CALLBACK_NOT_FOUND"
.LASF533:
	.string	"OI_PAN_ROLE_ALREADY_REGISTERED"
.LASF281:
	.string	"OI_HCIERR_LMP_PDU_NOT_ALLOWED"
.LASF583:
	.string	"OI_AVRCP_RESPONSE_INTERNAL_ERROR"
.LASF455:
	.string	"OI_OBEX_PUT_RESPONSE_ERROR"
.LASF428:
	.string	"OI_SECMGR_INVALID_POLICY"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF106:
	.string	"BTM_PM_STS_ERROR"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
