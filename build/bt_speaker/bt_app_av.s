	.file	"bt_app_av.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC5:
	.string	"BT_AV"
	.align	4
.LC7:
	.string	"\033[0;32mI (%d) %s: A2DP connection state: %s, [%02x:%02x:%02x:%02x:%02x:%02x]\033[0m\n"
	.align	4
.LC10:
	.string	"\033[0;32mI (%d) %s: A2DP audio state: %s\033[0m\n"
	.align	4
.LC12:
	.string	"\033[0;32mI (%d) %s: A2DP audio stream configuration, codec type %d\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;32mI (%d) %s: Configure audio player %x-%x-%x-%x\033[0m\n"
	.align	4
.LC16:
	.string	"\033[0;32mI (%d) %s: Audio player configured, sample rate=%d\033[0m\n"
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: %s unhandled evt %d\033[0m\n"
	.section	.text.bt_av_hdl_a2d_evt,"ax",@progbits
	.literal_position
	.literal .LC0, 32000
	.literal .LC1, 44100
	.literal .LC2, 16000
	.literal .LC3, 48000
	.literal .LC4, m_a2d_conn_state_str
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.literal .LC9, m_a2d_audio_state_str
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC18, __func__$6664
	.literal .LC20, .LC19
	.align	4
	.type	bt_av_hdl_a2d_evt, @function
bt_av_hdl_a2d_evt:
.LFB27:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/bt_speaker/bt_app_av.c"
	.loc 1 93 0
.LVL0:
	entry	sp, 64
.LCFI0:
	extui	a2, a2, 0, 16
.LVL1:
	.loc 1 96 0
	beqi	a2, 1, .L3
	beqz.n	a2, .L4
	beqi	a2, 2, .L5
	j	.L12
.L4:
.LVL2:
.LBB2:
	.loc 1 100 0
	call8	esp_log_timestamp
.LVL3:
	l32i.n	a2, a3, 0
.LVL4:
	l8ui	a8, a3, 4
	l8ui	a9, a3, 5
	l8ui	a12, a3, 6
	l8ui	a13, a3, 7
	l8ui	a14, a3, 8
	l8ui	a15, a3, 9
	l32r	a11, .LC4
	addx4	a2, a2, a11
	l32r	a11, .LC6
	s32i.n	a15, sp, 20
	s32i.n	a14, sp, 16
	s32i.n	a13, sp, 12
	s32i.n	a12, sp, 8
	s32i.n	a9, sp, 4
	s32i.n	a8, sp, 0
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 3
	call8	esp_log_write
.LVL5:
	.loc 1 102 0
	l32i.n	a2, a3, 0
	bnez.n	a2, .L6
	.loc 1 103 0
	movi.n	a10, 2
	call8	esp_bt_gap_set_scan_mode
.LVL6:
	retw.n
.L6:
	.loc 1 104 0
	bnei	a2, 2, .L1
	.loc 1 105 0
	movi.n	a10, 0
	call8	esp_bt_gap_set_scan_mode
.LVL7:
	retw.n
.LVL8:
.L3:
.LBE2:
	.loc 1 111 0
	call8	esp_log_timestamp
.LVL9:
	l32i.n	a2, a3, 0
	l32r	a3, .LC9
.LVL10:
	addx4	a2, a2, a3
	l32r	a11, .LC6
	l32i.n	a15, a2, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 3
	call8	esp_log_write
.LVL11:
	retw.n
.LVL12:
.L5:
	.loc 1 120 0
	call8	esp_log_timestamp
.LVL13:
	l32r	a11, .LC6
	l8ui	a15, a3, 6
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 3
	call8	esp_log_write
.LVL14:
	.loc 1 122 0
	l8ui	a2, a3, 6
	bnez.n	a2, .L1
.LVL15:
.LBB3:
	.loc 1 124 0
	l8ui	a2, a3, 7
.LVL16:
	.loc 1 125 0
	bbsi	a2, 6, .L9
	.loc 1 127 0
	bbsi	a2, 5, .L10
	.loc 1 129 0
	bbsi	a2, 4, .L11
	.loc 1 123 0
	l32r	a4, .LC2
	j	.L8
.L9:
	.loc 1 126 0
	l32r	a4, .LC0
	j	.L8
.L10:
	.loc 1 128 0
	l32r	a4, .LC1
	j	.L8
.L11:
	.loc 1 130 0
	l32r	a4, .LC3
.L8:
.LVL17:
	.loc 1 132 0
	movi.n	a13, 2
	movi.n	a12, 0x10
	mov.n	a11, a4
	movi.n	a10, 0
	call8	i2s_set_clk
.LVL18:
	.loc 1 134 0
	call8	esp_log_timestamp
.LVL19:
	l8ui	a15, a3, 7
	l8ui	a8, a3, 8
	l8ui	a9, a3, 9
	l8ui	a3, a3, 10
.LVL20:
	l32r	a2, .LC6
.LVL21:
	s32i.n	a3, sp, 8
	s32i.n	a9, sp, 4
	s32i.n	a8, sp, 0
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC15
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL22:
	.loc 1 139 0
	call8	esp_log_timestamp
.LVL23:
	mov.n	a15, a4
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC17
	mov.n	a11, a2
	movi.n	a10, 3
	call8	esp_log_write
.LVL24:
	retw.n
.LVL25:
.L12:
.LBE3:
	.loc 1 144 0 discriminator 2
	call8	esp_log_timestamp
.LVL26:
	l32r	a11, .LC6
	s32i.n	a2, sp, 0
	l32r	a15, .LC18
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
.L1:
	retw.n
.LFE27:
	.size	bt_av_hdl_a2d_evt, .-bt_av_hdl_a2d_evt
	.section	.text.bt_av_new_track,"ax",@progbits
	.align	4
	.type	bt_av_new_track, @function
bt_av_new_track:
.LFB28:
	.loc 1 150 0
	entry	sp, 32
.LCFI1:
	.loc 1 152 0
	movi.n	a11, 0x27
	movi.n	a10, 0
	call8	esp_avrc_ct_send_metadata_cmd
.LVL28:
	.loc 1 153 0
	movi.n	a12, 0
	movi.n	a11, 2
	movi.n	a10, 1
	call8	esp_avrc_ct_send_register_notification_cmd
.LVL29:
	retw.n
.LFE28:
	.size	bt_av_new_track, .-bt_av_new_track
	.section	.rodata.str1.4
	.align	4
.LC23:
	.string	"\033[0;31mE (%d) %s: Invalid A2DP event: %d\033[0m\n"
	.section	.text.bt_app_a2d_cb,"ax",@progbits
	.literal_position
	.literal .LC21, bt_av_hdl_a2d_evt
	.literal .LC22, .LC5
	.literal .LC24, .LC23
	.align	4
	.global	bt_app_a2d_cb
	.type	bt_app_a2d_cb, @function
bt_app_a2d_cb:
.LFB23:
	.loc 1 40 0
.LVL30:
	entry	sp, 32
.LCFI2:
	.loc 1 41 0
	bgeui	a2, 3, .L15
	.loc 1 45 0
	movi.n	a14, 0
	movi.n	a13, 0x10
	mov.n	a12, a3
	extui	a11, a2, 0, 16
	l32r	a10, .LC21
	call8	bt_app_work_dispatch
.LVL31:
	.loc 1 46 0
	retw.n
.L15:
	.loc 1 49 0 discriminator 2
	call8	esp_log_timestamp
.LVL32:
	l32r	a11, .LC22
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC24
	movi.n	a10, 1
	call8	esp_log_write
.LVL33:
	retw.n
.LFE23:
	.size	bt_app_a2d_cb, .-bt_app_a2d_cb
	.section	.text.bt_app_a2d_data_cb,"ax",@progbits
	.align	4
	.global	bt_app_a2d_data_cb
	.type	bt_app_a2d_data_cb, @function
bt_app_a2d_data_cb:
.LFB24:
	.loc 1 55 0
.LVL34:
	entry	sp, 48
.LCFI3:
	.loc 1 57 0
	movi.n	a14, -1
	mov.n	a13, sp
	mov.n	a12, a3
	mov.n	a11, a2
	movi.n	a10, 0
	call8	i2s_write
.LVL35:
	retw.n
.LFE24:
	.size	bt_app_a2d_data_cb, .-bt_app_a2d_data_cb
	.section	.text.bt_app_alloc_meta_buffer,"ax",@progbits
	.align	4
	.global	bt_app_alloc_meta_buffer
	.type	bt_app_alloc_meta_buffer, @function
bt_app_alloc_meta_buffer:
.LFB25:
	.loc 1 65 0
.LVL36:
	entry	sp, 32
.LCFI4:
.LVL37:
	.loc 1 67 0
	l32i.n	a4, a2, 8
	addi.n	a10, a4, 1
	call8	malloc
.LVL38:
	mov.n	a3, a10
.LVL39:
	.loc 1 68 0
	mov.n	a12, a4
	l32i.n	a11, a2, 4
	call8	memcpy
.LVL40:
	.loc 1 69 0
	l32i.n	a8, a2, 8
	add.n	a8, a3, a8
	movi.n	a4, 0
	s8i	a4, a8, 0
	.loc 1 71 0
	s32i.n	a3, a2, 4
	retw.n
.LFE25:
	.size	bt_app_alloc_meta_buffer, .-bt_app_alloc_meta_buffer
	.section	.rodata.str1.4
	.align	4
.LC28:
	.string	"\033[0;31mE (%d) %s: Invalid AVRC event: %d\033[0m\n"
	.section	.text.bt_app_rc_ct_cb,"ax",@progbits
	.literal_position
	.literal .LC25, .L23
	.literal .LC26, bt_av_hdl_avrc_evt
	.literal .LC27, .LC5
	.literal .LC29, .LC28
	.align	4
	.global	bt_app_rc_ct_cb
	.type	bt_app_rc_ct_cb, @function
bt_app_rc_ct_cb:
.LFB26:
	.loc 1 75 0
.LVL41:
	entry	sp, 32
.LCFI5:
	.loc 1 76 0
	bgeui	a2, 6, .L21
	l32r	a8, .LC25
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.bt_app_rc_ct_cb,"a",@progbits
	.align	4
	.align	4
.L23:
	.word	.L22
	.word	.L22
	.word	.L24
	.word	.L21
	.word	.L22
	.word	.L22
	.section	.text.bt_app_rc_ct_cb
.L24:
	.loc 1 78 0
	mov.n	a10, a3
	call8	bt_app_alloc_meta_buffer
.LVL42:
.L22:
	.loc 1 83 0
	movi.n	a14, 0
	movi.n	a13, 0xc
	mov.n	a12, a3
	extui	a11, a2, 0, 16
	l32r	a10, .LC26
	call8	bt_app_work_dispatch
.LVL43:
	.loc 1 84 0
	retw.n
.L21:
	.loc 1 87 0 discriminator 2
	call8	esp_log_timestamp
.LVL44:
	l32r	a11, .LC27
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC29
	movi.n	a10, 1
	call8	esp_log_write
.LVL45:
	retw.n
.LFE26:
	.size	bt_app_rc_ct_cb, .-bt_app_rc_ct_cb
	.section	.text.bt_av_notify_evt_handler,"ax",@progbits
	.align	4
	.global	bt_av_notify_evt_handler
	.type	bt_av_notify_evt_handler, @function
bt_av_notify_evt_handler:
.LFB29:
	.loc 1 157 0
.LVL46:
	entry	sp, 32
.LCFI6:
	extui	a2, a2, 0, 8
	.loc 1 158 0
	bnei	a2, 2, .L26
	.loc 1 160 0
	call8	bt_av_new_track
.LVL47:
.L26:
	retw.n
.LFE29:
	.size	bt_av_notify_evt_handler, .-bt_av_notify_evt_handler
	.section	.rodata.str1.4
	.align	4
.LC32:
	.string	"\033[0;32mI (%d) %s: AVRC conn_state evt: state %d, [%02x:%02x:%02x:%02x:%02x:%02x]\033[0m\n"
	.align	4
.LC34:
	.string	"\033[0;32mI (%d) %s: AVRC passthrough rsp: key_code 0x%x, key_state %d\033[0m\n"
	.align	4
.LC36:
	.string	"\033[0;32mI (%d) %s: AVRC metadata rsp: attribute id 0x%x, %s\033[0m\n"
	.align	4
.LC38:
	.string	"\033[0;32mI (%d) %s: AVRC event notification: %d, param: %d\033[0m\n"
	.align	4
.LC40:
	.string	"\033[0;32mI (%d) %s: AVRC remote features %x\033[0m\n"
	.section	.text.bt_av_hdl_avrc_evt,"ax",@progbits
	.literal_position
	.literal .LC30, .L32
	.literal .LC31, .LC5
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC39, .LC38
	.literal .LC41, .LC40
	.literal .LC42, __func__$6686
	.literal .LC43, .LC19
	.align	4
	.type	bt_av_hdl_avrc_evt, @function
bt_av_hdl_avrc_evt:
.LFB30:
	.loc 1 166 0
.LVL48:
	entry	sp, 64
.LCFI7:
	extui	a2, a2, 0, 16
.LVL49:
	.loc 1 169 0
	bgeui	a2, 6, .L30
	l32r	a8, .LC30
	addx4	a8, a2, a8
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.bt_av_hdl_avrc_evt,"a",@progbits
	.align	4
	.align	4
.L32:
	.word	.L31
	.word	.L33
	.word	.L34
	.word	.L30
	.word	.L35
	.word	.L36
	.section	.text.bt_av_hdl_avrc_evt
.L31:
.LVL50:
.LBB4:
	.loc 1 172 0
	call8	esp_log_timestamp
.LVL51:
	l8ui	a15, a3, 0
	l8ui	a2, a3, 1
.LVL52:
	l8ui	a8, a3, 2
	l8ui	a9, a3, 3
	l8ui	a12, a3, 4
	l8ui	a13, a3, 5
	l8ui	a14, a3, 6
	l32r	a11, .LC31
	s32i.n	a14, sp, 20
	s32i.n	a13, sp, 16
	s32i.n	a12, sp, 12
	s32i.n	a9, sp, 8
	s32i.n	a8, sp, 4
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC33
	movi.n	a10, 3
	call8	esp_log_write
.LVL53:
	.loc 1 175 0
	l8ui	a2, a3, 0
	beqz.n	a2, .L29
	.loc 1 176 0
	call8	bt_av_new_track
.LVL54:
	retw.n
.LVL55:
.L33:
.LBE4:
	.loc 1 181 0 discriminator 9
	call8	esp_log_timestamp
.LVL56:
	l8ui	a15, a3, 1
	l8ui	a2, a3, 2
	l32r	a11, .LC31
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC35
	movi.n	a10, 3
	call8	esp_log_write
.LVL57:
	.loc 1 182 0 discriminator 9
	retw.n
.L34:
	.loc 1 189 0 discriminator 9
	call8	esp_log_timestamp
.LVL58:
	l8ui	a15, a3, 0
	l32r	a11, .LC31
	l32i.n	a2, a3, 4
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	movi.n	a10, 3
	call8	esp_log_write
.LVL59:
	.loc 1 190 0 discriminator 9
	l32i.n	a10, a3, 4
	call8	free
.LVL60:
	.loc 1 191 0 discriminator 9
	retw.n
.L35:
	.loc 1 194 0 discriminator 9
	call8	esp_log_timestamp
.LVL61:
	l8ui	a15, a3, 0
	l32r	a11, .LC31
	l32i.n	a2, a3, 4
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC39
	movi.n	a10, 3
	call8	esp_log_write
.LVL62:
	.loc 1 195 0 discriminator 9
	l32i.n	a11, a3, 4
	l8ui	a10, a3, 0
	call8	bt_av_notify_evt_handler
.LVL63:
	.loc 1 196 0 discriminator 9
	retw.n
.L36:
	.loc 1 199 0 discriminator 9
	call8	esp_log_timestamp
.LVL64:
	l32r	a11, .LC31
	l32i.n	a15, a3, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 3
	call8	esp_log_write
.LVL65:
	.loc 1 200 0 discriminator 9
	retw.n
.L30:
	.loc 1 203 0 discriminator 2
	call8	esp_log_timestamp
.LVL66:
	l32r	a11, .LC31
	s32i.n	a2, sp, 0
	l32r	a15, .LC42
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 1
	call8	esp_log_write
.LVL67:
.L29:
	retw.n
.LFE30:
	.size	bt_av_hdl_avrc_evt, .-bt_av_hdl_avrc_evt
	.section	.rodata.__func__$6686,"a",@progbits
	.align	4
	.type	__func__$6686, @object
	.size	__func__$6686, 19
__func__$6686:
	.string	"bt_av_hdl_avrc_evt"
	.section	.rodata.__func__$6664,"a",@progbits
	.align	4
	.type	__func__$6664, @object
	.size	__func__$6664, 18
__func__$6664:
	.string	"bt_av_hdl_a2d_evt"
	.section	.rodata.str1.4
	.align	4
.LC44:
	.string	"Suspended"
	.align	4
.LC45:
	.string	"Stopped"
	.align	4
.LC46:
	.string	"Started"
	.section	.rodata.m_a2d_audio_state_str,"a",@progbits
	.align	4
	.type	m_a2d_audio_state_str, @object
	.size	m_a2d_audio_state_str, 12
m_a2d_audio_state_str:
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.section	.rodata.str1.4
	.align	4
.LC47:
	.string	"Disconnected"
	.align	4
.LC48:
	.string	"Connecting"
	.align	4
.LC49:
	.string	"Connected"
	.align	4
.LC50:
	.string	"Disconnecting"
	.section	.rodata.m_a2d_conn_state_str,"a",@progbits
	.align	4
	.type	m_a2d_conn_state_str, @object
	.size	m_a2d_conn_state_str, 16
m_a2d_conn_state_str:
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
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
	.uleb128 0x40
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI1-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
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
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI4-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI5-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI6-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI7-.LFB30
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE14:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_defs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_a2dp_api.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_avrc_api.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_gap_bt_api.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/i2s.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/bt_speaker/bt_app_core.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd88
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xc
	.4byte	.LASF146
	.4byte	.LASF147
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x1a
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.4byte	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x1f
	.4byte	0x104
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x69
	.4byte	0x10f
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x11f
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x20
	.4byte	0x7e
	.uleb128 0xc
	.byte	0x7
	.byte	0x6
	.byte	0x29
	.4byte	0x15f
	.uleb128 0xd
	.string	"sbc"
	.byte	0x6
	.byte	0x2a
	.4byte	0x15f
	.uleb128 0xd
	.string	"m12"
	.byte	0x6
	.byte	0x2b
	.4byte	0x15f
	.uleb128 0xd
	.string	"m24"
	.byte	0x6
	.byte	0x2c
	.4byte	0x10f
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2d
	.4byte	0x16f
	.byte	0
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x16f
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x7e
	.4byte	0x17f
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.byte	0x6
	.byte	0x23
	.4byte	0x1a0
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x6
	.byte	0x24
	.4byte	0x11f
	.byte	0
	.uleb128 0x11
	.string	"cie"
	.byte	0x6
	.byte	0x2e
	.4byte	0x12a
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x2f
	.4byte	0x17f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x32
	.4byte	0x1d0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0x37
	.4byte	0x1ab
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x3a
	.4byte	0x1f4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3d
	.4byte	0x1db
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x40
	.4byte	0x21e
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x44
	.4byte	0x1ff
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x47
	.4byte	0x248
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4b
	.4byte	0x229
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x4e
	.4byte	0x27e
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x6
	.byte	0x54
	.4byte	0x253
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x57
	.4byte	0x2ae
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x6
	.byte	0x5c
	.4byte	0x289
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x10
	.byte	0x6
	.byte	0x63
	.4byte	0x2ea
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x6
	.byte	0x64
	.4byte	0x1d0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x6
	.byte	0x65
	.4byte	0x104
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF58
	.byte	0x6
	.byte	0x66
	.4byte	0x1f4
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0xc
	.byte	0x6
	.byte	0x6c
	.4byte	0x30f
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x6
	.byte	0x6d
	.4byte	0x21e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x6
	.byte	0x6e
	.4byte	0x104
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0xe
	.byte	0x6
	.byte	0x74
	.4byte	0x334
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x6
	.byte	0x75
	.4byte	0x104
	.byte	0
	.uleb128 0x11
	.string	"mcc"
	.byte	0x6
	.byte	0x76
	.4byte	0x1a0
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x8
	.byte	0x6
	.byte	0x7c
	.4byte	0x359
	.uleb128 0x11
	.string	"cmd"
	.byte	0x6
	.byte	0x7d
	.4byte	0x27e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x6
	.byte	0x7e
	.4byte	0x248
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x10
	.byte	0x6
	.byte	0x5f
	.4byte	0x38e
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x6
	.byte	0x67
	.4byte	0x2b9
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x6
	.byte	0x6f
	.4byte	0x2ea
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x6
	.byte	0x77
	.4byte	0x30f
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x6
	.byte	0x7f
	.4byte	0x334
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x6
	.byte	0x80
	.4byte	0x359
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3a5
	.uleb128 0x7
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x8
	.byte	0x37
	.4byte	0x3e1
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x8
	.byte	0x3e
	.4byte	0x3b0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x8
	.byte	0x41
	.4byte	0x423
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x40
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x8
	.byte	0x4c
	.4byte	0x466
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x7
	.byte	0x8
	.byte	0x82
	.4byte	0x48b
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x8
	.byte	0x83
	.4byte	0x48b
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x8
	.byte	0x84
	.4byte	0x104
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF94
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x3
	.byte	0x8
	.byte	0x8a
	.4byte	0x4c2
	.uleb128 0x11
	.string	"tl"
	.byte	0x8
	.byte	0x8b
	.4byte	0x7e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x8
	.byte	0x8c
	.4byte	0x7e
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x8
	.byte	0x8d
	.4byte	0x7e
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0xc
	.byte	0x8
	.byte	0x93
	.4byte	0x4f3
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x8
	.byte	0x94
	.4byte	0x7e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x8
	.byte	0x95
	.4byte	0x3aa
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x8
	.byte	0x96
	.4byte	0x57
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x8
	.byte	0x8
	.byte	0x9c
	.4byte	0x518
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x8
	.byte	0x9d
	.4byte	0x7e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x8
	.byte	0x9e
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0xc
	.byte	0x8
	.byte	0xa4
	.4byte	0x53d
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x8
	.byte	0xa5
	.4byte	0x94
	.byte	0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x8
	.byte	0xa6
	.4byte	0x104
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0xc
	.byte	0x8
	.byte	0x7e
	.4byte	0x57d
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x8
	.byte	0x85
	.4byte	0x466
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x8
	.byte	0x8e
	.4byte	0x492
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x8
	.byte	0x97
	.4byte	0x4c2
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x8
	.byte	0x9f
	.4byte	0x4f3
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x8
	.byte	0xa7
	.4byte	0x518
	.byte	0
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x8
	.byte	0xa9
	.4byte	0x53d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x57d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x9
	.byte	0x31
	.4byte	0x5ad
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xa
	.byte	0x76
	.4byte	0x94
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x1
	.byte	0x5c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f9
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x1
	.byte	0x5c
	.4byte	0x89
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x1
	.byte	0x5c
	.4byte	0xb8
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF130
	.4byte	0x809
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6664
	.uleb128 0x16
	.string	"a2d"
	.byte	0x1
	.byte	0x5f
	.4byte	0x399
	.4byte	.LLST2
	.uleb128 0x17
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x686
	.uleb128 0x16
	.string	"bda"
	.byte	0x1
	.byte	0x63
	.4byte	0x3aa
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LVL3
	.4byte	0xd10
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0xd1b
	.4byte	0x663
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0xd26
	.4byte	0x676
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL7
	.4byte	0xd26
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x740
	.uleb128 0x1c
	.4byte	.LASF118
	.byte	0x1
	.byte	0x7b
	.4byte	0x57
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0x7c
	.4byte	0xc1
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LVL18
	.4byte	0xd32
	.4byte	0x6d4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.4byte	.LVL19
	.4byte	0xd10
	.uleb128 0x19
	.4byte	.LVL22
	.4byte	0xd1b
	.4byte	0x70c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL23
	.4byte	0xd10
	.uleb128 0x1b
	.4byte	.LVL24
	.4byte	0xd1b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL9
	.4byte	0xd10
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0xd1b
	.4byte	0x77e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0xd10
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0xd1b
	.4byte	0x7b5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x18
	.4byte	.LVL26
	.4byte	0xd10
	.uleb128 0x1b
	.4byte	.LVL27
	.4byte	0xd1b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6664
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xc1
	.4byte	0x809
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x7f9
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x1
	.byte	0x95
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x856
	.uleb128 0x19
	.4byte	.LVL28
	.4byte	0xd3e
	.4byte	0x83c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x27
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL29
	.4byte	0xd4a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF121
	.byte	0x1
	.byte	0x27
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f0
	.uleb128 0x1f
	.4byte	.LASF116
	.byte	0x1
	.byte	0x27
	.4byte	0x2ae
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.byte	0x27
	.4byte	0x399
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL31
	.4byte	0xd55
	.4byte	0x8b6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_av_hdl_a2d_evt
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL32
	.4byte	0xd10
	.uleb128 0x1b
	.4byte	.LVL33
	.4byte	0xd1b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC23
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF122
	.byte	0x1
	.byte	0x36
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x955
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x1
	.byte	0x36
	.4byte	0x39f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.byte	0x36
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x1
	.byte	0x38
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LVL35
	.4byte	0xd60
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF125
	.byte	0x1
	.byte	0x40
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bb
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.byte	0x40
	.4byte	0x588
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.string	"rc"
	.byte	0x1
	.byte	0x42
	.4byte	0x588
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF100
	.byte	0x1
	.byte	0x43
	.4byte	0x3aa
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL38
	.4byte	0xd6c
	.4byte	0x9a4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 1
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL40
	.4byte	0xd77
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0x1
	.byte	0x4a
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa69
	.uleb128 0x1f
	.4byte	.LASF116
	.byte	0x1
	.byte	0x4a
	.4byte	0x3e1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.byte	0x4a
	.4byte	0x588
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL42
	.4byte	0x955
	.4byte	0x9fe
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL43
	.4byte	0xd55
	.4byte	0xa2f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bt_av_hdl_avrc_evt
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL44
	.4byte	0xd10
	.uleb128 0x1b
	.4byte	.LVL45
	.4byte	0xd1b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x9c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa2
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0x9c
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x1
	.byte	0x9c
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.4byte	.LVL47
	.4byte	0x80e
	.byte	0
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x1
	.byte	0xa5
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc99
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x1
	.byte	0xa5
	.4byte	0x89
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LASF117
	.byte	0x1
	.byte	0xa5
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LASF130
	.4byte	0xca9
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6686
	.uleb128 0x22
	.string	"rc"
	.byte	0x1
	.byte	0xa8
	.4byte	0x588
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xb52
	.uleb128 0x16
	.string	"bda"
	.byte	0x1
	.byte	0xab
	.4byte	0x3aa
	.4byte	.LLST7
	.uleb128 0x18
	.4byte	.LVL51
	.4byte	0xd10
	.uleb128 0x19
	.4byte	.LVL53
	.4byte	0xd1b
	.4byte	0xb48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL54
	.4byte	0x80e
	.byte	0
	.uleb128 0x18
	.4byte	.LVL56
	.4byte	0xd10
	.uleb128 0x19
	.4byte	.LVL57
	.4byte	0xd1b
	.4byte	0xb90
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL58
	.4byte	0xd10
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0xd1b
	.4byte	0xbce
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL60
	.4byte	0xd80
	.uleb128 0x18
	.4byte	.LVL61
	.4byte	0xd10
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0xd1b
	.4byte	0xc15
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL63
	.4byte	0xa69
	.uleb128 0x18
	.4byte	.LVL64
	.4byte	0xd10
	.uleb128 0x19
	.4byte	.LVL65
	.4byte	0xd1b
	.4byte	0xc55
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x18
	.4byte	.LVL66
	.4byte	0xd10
	.uleb128 0x1b
	.4byte	.LVL67
	.4byte	0xd1b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6686
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xc1
	.4byte	0xca9
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.4byte	0xc99
	.uleb128 0x23
	.4byte	.LASF131
	.byte	0x1
	.byte	0x21
	.4byte	0x94
	.uleb128 0x23
	.4byte	.LASF132
	.byte	0x1
	.byte	0x22
	.4byte	0x21e
	.uleb128 0xa
	.4byte	0xc8
	.4byte	0xcd4
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0x23
	.4byte	0xce5
	.uleb128 0x5
	.byte	0x3
	.4byte	m_a2d_conn_state_str
	.uleb128 0x7
	.4byte	0xcc4
	.uleb128 0xa
	.4byte	0xc8
	.4byte	0xcfa
	.uleb128 0xb
	.4byte	0xb1
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.byte	0x24
	.4byte	0xd0b
	.uleb128 0x5
	.byte	0x3
	.4byte	m_a2d_audio_state_str
	.uleb128 0x7
	.4byte	0xcea
	.uleb128 0x24
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x7
	.byte	0x57
	.uleb128 0x24
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x7
	.byte	0x6b
	.uleb128 0x25
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x132
	.uleb128 0x25
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x1dc
	.uleb128 0x25
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x8
	.2byte	0x108
	.uleb128 0x24
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x8
	.byte	0xf9
	.uleb128 0x24
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xc
	.byte	0x29
	.uleb128 0x25
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xb
	.2byte	0x129
	.uleb128 0x24
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xd
	.byte	0x65
	.uleb128 0x26
	.4byte	.LASF149
	.4byte	.LASF149
	.uleb128 0x24
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xd
	.byte	0x5a
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xa
	.2byte	0x3e80
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x2
	.byte	0x73
	.sleb128 7
	.4byte	.LVL18-1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF129:
	.string	"bt_av_hdl_avrc_evt"
.LASF143:
	.string	"malloc"
.LASF47:
	.string	"ESP_A2D_MEDIA_CTRL_START"
.LASF13:
	.string	"size_t"
.LASF75:
	.string	"esp_avrc_ct_cb_event_t"
.LASF126:
	.string	"bt_app_rc_ct_cb"
.LASF85:
	.string	"ESP_AVRC_RN_TRACK_REACHED_END"
.LASF3:
	.string	"__uint8_t"
.LASF37:
	.string	"ESP_A2D_AUDIO_STATE_REMOTE_SUSPEND"
.LASF127:
	.string	"bt_av_notify_evt_handler"
.LASF27:
	.string	"type"
.LASF95:
	.string	"avrc_ct_psth_rsp_param"
.LASF105:
	.string	"avrc_ct_rmt_feats_param"
.LASF67:
	.string	"media_ctrl_stat"
.LASF9:
	.string	"long long unsigned int"
.LASF136:
	.string	"esp_log_write"
.LASF108:
	.string	"meta_rsp"
.LASF107:
	.string	"psth_rsp"
.LASF131:
	.string	"m_pkt_cnt"
.LASF31:
	.string	"ESP_A2D_CONNECTION_STATE_CONNECTED"
.LASF144:
	.string	"free"
.LASF68:
	.string	"esp_a2d_cb_param_t"
.LASF22:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF63:
	.string	"status"
.LASF57:
	.string	"remote_bda"
.LASF72:
	.string	"ESP_AVRC_CT_PLAY_STATUS_RSP_EVT"
.LASF61:
	.string	"a2d_audio_cfg_param"
.LASF103:
	.string	"event_id"
.LASF56:
	.string	"state"
.LASF14:
	.string	"long int"
.LASF88:
	.string	"ESP_AVRC_RN_BATTERY_STATUS_CHANGE"
.LASF52:
	.string	"ESP_A2D_AUDIO_STATE_EVT"
.LASF93:
	.string	"connected"
.LASF43:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_BUSY"
.LASF38:
	.string	"ESP_A2D_AUDIO_STATE_STOPPED"
.LASF40:
	.string	"esp_a2d_audio_state_t"
.LASF149:
	.string	"memcpy"
.LASF50:
	.string	"esp_a2d_media_ctrl_t"
.LASF74:
	.string	"ESP_AVRC_CT_REMOTE_FEATURES_EVT"
.LASF128:
	.string	"bt_av_hdl_a2d_evt"
.LASF77:
	.string	"ESP_AVRC_MD_ATTR_ARTIST"
.LASF54:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_EVT"
.LASF121:
	.string	"bt_app_a2d_cb"
.LASF33:
	.string	"esp_a2d_connection_state_t"
.LASF89:
	.string	"ESP_AVRC_RN_SYSTEM_STATUS_CHANGE"
.LASF4:
	.string	"__uint16_t"
.LASF42:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_FAILURE"
.LASF73:
	.string	"ESP_AVRC_CT_CHANGE_NOTIFY_EVT"
.LASF125:
	.string	"bt_app_alloc_meta_buffer"
.LASF35:
	.string	"ESP_A2D_DISC_RSN_ABNORMAL"
.LASF110:
	.string	"rmt_feats"
.LASF76:
	.string	"ESP_AVRC_MD_ATTR_TITLE"
.LASF117:
	.string	"p_param"
.LASF79:
	.string	"ESP_AVRC_MD_ATTR_TRACK_NUM"
.LASF65:
	.string	"audio_stat"
.LASF7:
	.string	"unsigned int"
.LASF34:
	.string	"ESP_A2D_DISC_RSN_NORMAL"
.LASF11:
	.string	"uint16_t"
.LASF51:
	.string	"ESP_A2D_CONNECTION_STATE_EVT"
.LASF16:
	.string	"long unsigned int"
.LASF49:
	.string	"ESP_A2D_MEDIA_CTRL_SUSPEND"
.LASF101:
	.string	"attr_length"
.LASF116:
	.string	"event"
.LASF5:
	.string	"short unsigned int"
.LASF141:
	.string	"bt_app_work_dispatch"
.LASF90:
	.string	"ESP_AVRC_RN_APP_SETTING_CHANGE"
.LASF32:
	.string	"ESP_A2D_CONNECTION_STATE_DISCONNECTING"
.LASF122:
	.string	"bt_app_a2d_data_cb"
.LASF146:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/bt_speaker/bt_app_av.c"
.LASF140:
	.string	"esp_avrc_ct_send_register_notification_cmd"
.LASF118:
	.string	"sample_rate"
.LASF59:
	.string	"a2d_conn_stat_param"
.LASF81:
	.string	"ESP_AVRC_MD_ATTR_GENRE"
.LASF2:
	.string	"short int"
.LASF96:
	.string	"key_code"
.LASF39:
	.string	"ESP_A2D_AUDIO_STATE_STARTED"
.LASF46:
	.string	"ESP_A2D_MEDIA_CTRL_CHECK_SRC_RDY"
.LASF78:
	.string	"ESP_AVRC_MD_ATTR_ALBUM"
.LASF21:
	.string	"ESP_LOG_INFO"
.LASF91:
	.string	"ESP_AVRC_RN_MAX_EVT"
.LASF113:
	.string	"ESP_BT_SCAN_MODE_CONNECTABLE"
.LASF15:
	.string	"sizetype"
.LASF133:
	.string	"m_a2d_conn_state_str"
.LASF109:
	.string	"change_ntf"
.LASF83:
	.string	"ESP_AVRC_RN_PLAY_STATUS_CHANGE"
.LASF115:
	.string	"TickType_t"
.LASF120:
	.string	"param"
.LASF80:
	.string	"ESP_AVRC_MD_ATTR_NUM_TRACKS"
.LASF111:
	.string	"esp_avrc_ct_cb_param_t"
.LASF102:
	.string	"avrc_ct_change_notify_param"
.LASF53:
	.string	"ESP_A2D_AUDIO_CFG_EVT"
.LASF112:
	.string	"ESP_BT_SCAN_MODE_NONE"
.LASF148:
	.string	"bt_av_new_track"
.LASF66:
	.string	"audio_cfg"
.LASF44:
	.string	"esp_a2d_media_ctrl_ack_t"
.LASF29:
	.string	"ESP_A2D_CONNECTION_STATE_DISCONNECTED"
.LASF1:
	.string	"unsigned char"
.LASF145:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF55:
	.string	"esp_a2d_cb_event_t"
.LASF135:
	.string	"esp_log_timestamp"
.LASF19:
	.string	"ESP_LOG_ERROR"
.LASF132:
	.string	"m_audio_state"
.LASF147:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt_speaker"
.LASF130:
	.string	"__func__"
.LASF25:
	.string	"esp_a2d_mct_t"
.LASF58:
	.string	"disc_rsn"
.LASF48:
	.string	"ESP_A2D_MEDIA_CTRL_STOP"
.LASF97:
	.string	"key_state"
.LASF12:
	.string	"uint32_t"
.LASF138:
	.string	"i2s_set_clk"
.LASF94:
	.string	"_Bool"
.LASF17:
	.string	"char"
.LASF23:
	.string	"ESP_LOG_VERBOSE"
.LASF137:
	.string	"esp_bt_gap_set_scan_mode"
.LASF28:
	.string	"esp_a2d_mcc_t"
.LASF99:
	.string	"attr_id"
.LASF106:
	.string	"feat_mask"
.LASF18:
	.string	"ESP_LOG_NONE"
.LASF41:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_SUCCESS"
.LASF6:
	.string	"__uint32_t"
.LASF24:
	.string	"esp_bd_addr_t"
.LASF86:
	.string	"ESP_AVRC_RN_TRACK_REACHED_START"
.LASF98:
	.string	"avrc_ct_meta_rsp_param"
.LASF123:
	.string	"data"
.LASF100:
	.string	"attr_text"
.LASF64:
	.string	"conn_stat"
.LASF92:
	.string	"avrc_ct_conn_stat_param"
.LASF134:
	.string	"m_a2d_audio_state_str"
.LASF114:
	.string	"ESP_BT_SCAN_MODE_CONNECTABLE_DISCOVERABLE"
.LASF60:
	.string	"a2d_audio_stat_param"
.LASF124:
	.string	"bytes_written"
.LASF30:
	.string	"ESP_A2D_CONNECTION_STATE_CONNECTING"
.LASF20:
	.string	"ESP_LOG_WARN"
.LASF139:
	.string	"esp_avrc_ct_send_metadata_cmd"
.LASF87:
	.string	"ESP_AVRC_RN_PLAY_POS_CHANGED"
.LASF104:
	.string	"event_parameter"
.LASF71:
	.string	"ESP_AVRC_CT_METADATA_RSP_EVT"
.LASF70:
	.string	"ESP_AVRC_CT_PASSTHROUGH_RSP_EVT"
.LASF10:
	.string	"uint8_t"
.LASF62:
	.string	"media_ctrl_stat_param"
.LASF84:
	.string	"ESP_AVRC_RN_TRACK_CHANGE"
.LASF142:
	.string	"i2s_write"
.LASF82:
	.string	"ESP_AVRC_MD_ATTR_PLAYING_TIME"
.LASF69:
	.string	"ESP_AVRC_CT_CONNECTION_STATE_EVT"
.LASF45:
	.string	"ESP_A2D_MEDIA_CTRL_NONE"
.LASF36:
	.string	"esp_a2d_disc_rsn_t"
.LASF119:
	.string	"oct0"
.LASF26:
	.string	"atrac"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
