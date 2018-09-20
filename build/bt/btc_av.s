	.file	"btc_av.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"BTA_AV_ENABLE_EVT"
	.align	4
.LC2:
	.string	"BTA_AV_REGISTER_EVT"
	.align	4
.LC4:
	.string	"BTA_AV_OPEN_EVT"
	.align	4
.LC6:
	.string	"BTA_AV_CLOSE_EVT"
	.align	4
.LC8:
	.string	"BTA_AV_START_EVT"
	.align	4
.LC10:
	.string	"BTA_AV_STOP_EVT"
	.align	4
.LC12:
	.string	"BTA_AV_PROTECT_REQ_EVT"
	.align	4
.LC14:
	.string	"BTA_AV_PROTECT_RSP_EVT"
	.align	4
.LC16:
	.string	"BTA_AV_RC_OPEN_EVT"
	.align	4
.LC18:
	.string	"BTA_AV_RC_CLOSE_EVT"
	.align	4
.LC20:
	.string	"BTA_AV_REMOTE_CMD_EVT"
	.align	4
.LC22:
	.string	"BTA_AV_REMOTE_RSP_EVT"
	.align	4
.LC24:
	.string	"BTA_AV_VENDOR_CMD_EVT"
	.align	4
.LC26:
	.string	"BTA_AV_VENDOR_RSP_EVT"
	.align	4
.LC28:
	.string	"BTA_AV_RECONFIG_EVT"
	.align	4
.LC30:
	.string	"BTA_AV_SUSPEND_EVT"
	.align	4
.LC32:
	.string	"BTA_AV_PENDING_EVT"
	.align	4
.LC34:
	.string	"BTA_AV_META_MSG_EVT"
	.align	4
.LC36:
	.string	"BTA_AV_REJECT_EVT"
	.align	4
.LC38:
	.string	"BTA_AV_RC_FEAT_EVT"
	.align	4
.LC40:
	.string	"BTC_SM_ENTER_EVT"
	.align	4
.LC42:
	.string	"BTC_SM_EXIT_EVT"
	.align	4
.LC44:
	.string	"BTC_AV_CONNECT_REQ_EVT"
	.align	4
.LC46:
	.string	"BTC_AV_DISCONNECT_REQ_EVT"
	.align	4
.LC48:
	.string	"BTC_AV_START_STREAM_REQ_EVT"
	.align	4
.LC50:
	.string	"BTC_AV_STOP_STREAM_REQ_EVT"
	.align	4
.LC52:
	.string	"BTC_AV_SUSPEND_STREAM_REQ_EVT"
	.align	4
.LC54:
	.string	"BTC_AV_SINK_CONFIG_REQ_EVT"
	.align	4
.LC56:
	.string	"UNKNOWN_EVENT"
	.section	.text.dump_av_sm_event_name,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC39, .LC38
	.literal .LC41, .LC40
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.literal .LC58, 65534
	.literal .LC59, 65535
	.align	4
	.type	dump_av_sm_event_name, @function
dump_av_sm_event_name:
.LFB28:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_av.c"
	.loc 1 175 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 176 0
	movi.n	a8, 0xd
	beq	a2, a8, .L3
	bltu	a8, a2, .L4
	beqi	a2, 6, .L5
	bgeui	a2, 7, .L6
	beqi	a2, 2, .L7
	bgeui	a2, 3, .L8
	beqz.n	a2, .L9
	beqi	a2, 1, .L38
	j	.L2
.L8:
	beqi	a2, 4, .L11
	bltui	a2, 5, .L39
	j	.L12
.L6:
	movi.n	a8, 9
	beq	a2, a8, .L14
	bltu	a8, a2, .L15
	beqi	a2, 7, .L16
	beqi	a2, 8, .L17
	j	.L2
.L15:
	movi.n	a8, 0xb
	beq	a2, a8, .L18
	bgeu	a8, a2, .L40
	j	.L19
.L4:
	movi.n	a8, 0x16
	beq	a2, a8, .L21
	bltu	a8, a2, .L22
	beqi	a2, 16, .L23
	movi.n	a8, 0x10
	bltu	a8, a2, .L24
	movi.n	a8, 0xe
	beq	a2, a8, .L25
	movi.n	a8, 0xf
	beq	a2, a8, .L26
	j	.L2
.L24:
	movi.n	a8, 0x12
	beq	a2, a8, .L27
	bltu	a2, a8, .L28
	movi.n	a8, 0x13
	beq	a2, a8, .L29
	j	.L2
.L22:
	movi.n	a8, 0x1a
	beq	a2, a8, .L30
	bltu	a8, a2, .L31
	movi.n	a8, 0x18
	beq	a2, a8, .L32
	bgeu	a8, a2, .L41
	j	.L33
.L31:
	l32r	a8, .LC58
	beq	a2, a8, .L35
	l32r	a8, .LC59
	beq	a2, a8, .L36
	movi.n	a8, 0x1b
	bne	a2, a8, .L2
	j	.L37
.L9:
	.loc 1 177 0
	l32r	a2, .LC1
.LVL1:
	retw.n
.LVL2:
.L7:
	.loc 1 179 0
	l32r	a2, .LC5
.LVL3:
	retw.n
.LVL4:
.L39:
	.loc 1 180 0
	l32r	a2, .LC7
.LVL5:
	retw.n
.LVL6:
.L11:
	.loc 1 181 0
	l32r	a2, .LC9
.LVL7:
	retw.n
.LVL8:
.L12:
	.loc 1 182 0
	l32r	a2, .LC11
.LVL9:
	retw.n
.LVL10:
.L5:
	.loc 1 183 0
	l32r	a2, .LC13
.LVL11:
	retw.n
.LVL12:
.L16:
	.loc 1 184 0
	l32r	a2, .LC15
.LVL13:
	retw.n
.LVL14:
.L17:
	.loc 1 185 0
	l32r	a2, .LC17
.LVL15:
	retw.n
.LVL16:
.L14:
	.loc 1 186 0
	l32r	a2, .LC19
.LVL17:
	retw.n
.LVL18:
.L40:
	.loc 1 187 0
	l32r	a2, .LC21
.LVL19:
	retw.n
.LVL20:
.L18:
	.loc 1 188 0
	l32r	a2, .LC23
.LVL21:
	retw.n
.LVL22:
.L19:
	.loc 1 189 0
	l32r	a2, .LC25
.LVL23:
	retw.n
.LVL24:
.L3:
	.loc 1 190 0
	l32r	a2, .LC27
.LVL25:
	retw.n
.LVL26:
.L25:
	.loc 1 191 0
	l32r	a2, .LC29
.LVL27:
	retw.n
.LVL28:
.L26:
	.loc 1 192 0
	l32r	a2, .LC31
.LVL29:
	retw.n
.LVL30:
.L23:
	.loc 1 193 0
	l32r	a2, .LC33
.LVL31:
	retw.n
.LVL32:
.L28:
	.loc 1 194 0
	l32r	a2, .LC35
.LVL33:
	retw.n
.LVL34:
.L27:
	.loc 1 195 0
	l32r	a2, .LC37
.LVL35:
	retw.n
.LVL36:
.L29:
	.loc 1 196 0
	l32r	a2, .LC39
.LVL37:
	retw.n
.LVL38:
.L36:
	.loc 1 197 0
	l32r	a2, .LC41
.LVL39:
	retw.n
.LVL40:
.L35:
	.loc 1 198 0
	l32r	a2, .LC43
.LVL41:
	retw.n
.LVL42:
.L21:
	.loc 1 199 0
	l32r	a2, .LC45
.LVL43:
	retw.n
.LVL44:
.L41:
	.loc 1 200 0
	l32r	a2, .LC47
.LVL45:
	retw.n
.LVL46:
.L32:
	.loc 1 201 0
	l32r	a2, .LC49
.LVL47:
	retw.n
.LVL48:
.L33:
	.loc 1 202 0
	l32r	a2, .LC51
.LVL49:
	retw.n
.LVL50:
.L30:
	.loc 1 203 0
	l32r	a2, .LC53
.LVL51:
	retw.n
.LVL52:
.L37:
	.loc 1 204 0
	l32r	a2, .LC55
.LVL53:
	retw.n
.LVL54:
.L2:
	.loc 1 205 0
	l32r	a2, .LC57
.LVL55:
	retw.n
.LVL56:
.L38:
	.loc 1 178 0
	l32r	a2, .LC3
.LVL57:
	.loc 1 207 0
	retw.n
.LFE28:
	.size	dump_av_sm_event_name, .-dump_av_sm_event_name
	.section	.rodata.str1.4
	.align	4
.LC60:
	.string	"av_dest->meta_msg.p_data"
	.align	4
.LC63:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_av.c"
	.align	4
.LC65:
	.string	"av_dest->meta_msg.p_msg"
	.align	4
.LC67:
	.string	"av_dest->meta_msg.p_msg->vendor.p_vendor_data"
	.section	.text.btc_av_event_deep_copy,"ax",@progbits
	.literal_position
	.literal .LC61, .LC60
	.literal .LC62, __func__$10561
	.literal .LC64, .LC63
	.literal .LC66, .LC65
	.literal .LC68, .LC67
	.align	4
	.global	btc_av_event_deep_copy
	.type	btc_av_event_deep_copy, @function
btc_av_event_deep_copy:
.LFB37:
	.loc 1 888 0
.LVL58:
	entry	sp, 32
.LCFI1:
.LVL59:
	.loc 1 893 0
	movi.n	a12, 0x14
	mov.n	a11, a4
	mov.n	a10, a3
	call8	memcpy
.LVL60:
	.loc 1 895 0
	l8ui	a9, a2, 3
	movi.n	a8, 0x11
	bne	a9, a8, .L42
	.loc 1 897 0
	l32i.n	a2, a4, 12
.LVL61:
	beqz.n	a2, .L45
	.loc 1 897 0 is_stmt 0 discriminator 1
	l16ui	a11, a4, 2
	beqz.n	a11, .L45
	.loc 1 898 0 is_stmt 1
	movi.n	a10, 1
	call8	calloc
.LVL62:
	s32i.n	a10, a3, 12
	.loc 1 899 0
	bnez.n	a10, .L46
	.loc 1 899 0 is_stmt 0 discriminator 1
	l32r	a13, .LC61
	l32r	a12, .LC62
	movi	a11, 0x383
	l32r	a10, .LC64
	call8	__assert_func
.LVL63:
.L46:
	.loc 1 900 0 is_stmt 1
	l16ui	a12, a4, 2
	l32i.n	a11, a4, 12
	call8	memcpy
.LVL64:
.L45:
	.loc 1 903 0
	l32i.n	a2, a4, 16
	beqz.n	a2, .L42
	.loc 1 904 0
	movi.n	a11, 0x10
	movi.n	a10, 1
	call8	calloc
.LVL65:
	s32i.n	a10, a3, 16
	.loc 1 905 0
	bnez.n	a10, .L47
	.loc 1 905 0 is_stmt 0 discriminator 1
	l32r	a13, .LC66
	l32r	a12, .LC62
	movi	a11, 0x389
	l32r	a10, .LC64
	call8	__assert_func
.LVL66:
.L47:
	.loc 1 906 0 is_stmt 1
	movi.n	a12, 0x10
	l32i.n	a11, a4, 16
	call8	memcpy
.LVL67:
	.loc 1 908 0
	l32i.n	a2, a4, 16
	l32i.n	a8, a2, 8
	beqz.n	a8, .L42
	.loc 1 909 0 discriminator 1
	l16ui	a11, a2, 12
	.loc 1 908 0 discriminator 1
	beqz.n	a11, .L42
	.loc 1 910 0
	l32i.n	a2, a3, 16
	movi.n	a10, 1
	call8	calloc
.LVL68:
	s32i.n	a10, a2, 8
	.loc 1 912 0
	l32i.n	a2, a3, 16
	l32i.n	a10, a2, 8
	bnez.n	a10, .L48
	.loc 1 912 0 is_stmt 0 discriminator 1
	l32r	a13, .LC68
	l32r	a12, .LC62
	movi	a11, 0x390
	l32r	a10, .LC64
	call8	__assert_func
.LVL69:
.L48:
	.loc 1 914 0 is_stmt 1
	l32i.n	a2, a4, 16
	.loc 1 913 0
	l16ui	a12, a2, 12
	l32i.n	a11, a2, 8
	call8	memcpy
.LVL70:
.L42:
	retw.n
.LFE37:
	.size	btc_av_event_deep_copy, .-btc_av_event_deep_copy
	.section	.rodata.str1.4
	.align	4
.LC70:
	.string	"BT_BTC"
	.align	4
.LC72:
	.string	"\033[0;31mE (%d) %s: ERROR dump_codec_info A2D_ParsSbcInfo fail:%d\n\033[0m\n"
	.section	.text.bte_av_media_callback,"ax",@progbits
	.literal_position
	.literal .LC69, btc_av_cb
	.literal .LC71, .LC70
	.literal .LC73, .LC72
	.align	4
	.type	bte_av_media_callback, @function
bte_av_media_callback:
.LFB47:
	.loc 1 1160 0
.LVL71:
	entry	sp, 64
.LCFI2:
	extui	a2, a2, 0, 8
	.loc 1 1166 0
	movi.n	a8, 0x15
	bne	a2, a8, .L50
	.loc 1 1167 0
	l32r	a8, .LC69
	l32i.n	a10, a8, 12
	call8	btc_sm_get_state
.LVL72:
	.loc 1 1168 0
	addi	a10, a10, -2
.LVL73:
	bgeui	a10, 2, .L49
	.loc 1 1170 0
	mov.n	a10, a3
.LVL74:
	call8	btc_a2dp_sink_enque_buf
.LVL75:
.L50:
	.loc 1 1177 0
	movi.n	a8, 0x14
	bne	a2, a8, .L49
	.loc 1 1179 0
	mov.n	a10, a3
	call8	btc_a2dp_sink_reset_decoder
.LVL76:
	.loc 1 1182 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, sp
	call8	A2D_ParsSbcInfo
.LVL77:
	mov.n	a2, a10
.LVL78:
	.loc 1 1183 0
	bnez.n	a10, .L53
.LBB12:
	.loc 1 1187 0
	movi.n	a2, 1
.LVL79:
	s8i	a2, sp, 16
	.loc 1 1188 0
	movi.n	a2, 0xc
	s8i	a2, sp, 18
	.loc 1 1189 0
	movi.n	a2, 0x1b
	s8i	a2, sp, 19
	.loc 1 1191 0
	movi.n	a13, 0
	s32i.n	a13, sp, 8
	s32i.n	a13, sp, 12
	.loc 1 1193 0
	addi.n	a2, a3, 3
	l8ui	a3, a3, 3
.LVL80:
	l8ui	a8, a2, 1
	s8i	a3, sp, 9
	l8ui	a3, a2, 2
	s8i	a8, sp, 10
	l8ui	a2, a2, 3
.LVL81:
	s8i	a3, sp, 11
	s8i	a2, sp, 12
	.loc 1 1194 0
	movi.n	a12, 8
	add.n	a11, sp, a12
	addi	a10, sp, 16
.LVL82:
	call8	btc_transfer_context
.LVL83:
.LBE12:
	retw.n
.LVL84:
.L53:
	.loc 1 1196 0 discriminator 1
	call8	esp_log_timestamp
.LVL85:
	l32r	a11, .LC71
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC73
	movi.n	a10, 1
	call8	esp_log_write
.LVL86:
.L49:
	retw.n
.LFE47:
	.size	bte_av_media_callback, .-bte_av_media_callback
	.section	.rodata.str1.4
	.align	4
.LC77:
	.string	"\033[0;31mE (%d) %s: %s transfer failed\n\033[0m\n"
	.section	.text.bte_av_callback,"ax",@progbits
	.literal_position
	.literal .LC74, btc_av_event_deep_copy
	.literal .LC75, __func__$10609
	.literal .LC76, .LC70
	.literal .LC78, .LC77
	.align	4
	.type	bte_av_callback, @function
bte_av_callback:
.LFB46:
	.loc 1 1144 0
.LVL87:
	entry	sp, 48
.LCFI3:
	.loc 1 1148 0
	movi.n	a8, 1
	s8i	a8, sp, 0
	.loc 1 1149 0
	movi.n	a8, 0xc
	s8i	a8, sp, 2
	.loc 1 1150 0
	s8i	a2, sp, 3
	.loc 1 1151 0
	l32r	a13, .LC74
	movi.n	a12, 0x14
	mov.n	a11, a3
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL88:
	.loc 1 1153 0
	beqz.n	a10, .L55
	.loc 1 1154 0 discriminator 1
	call8	esp_log_timestamp
.LVL89:
	l32r	a11, .LC76
	l32r	a15, .LC75
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC78
	movi.n	a10, 1
	call8	esp_log_write
.LVL90:
.L55:
	retw.n
.LFE46:
	.size	bte_av_callback, .-bte_av_callback
	.section	.text.connect_int,"ax",@progbits
	.literal_position
	.literal .LC79, btc_av_cb
	.align	4
	.type	connect_int, @function
connect_int:
.LFB40:
	.loc 1 1006 0
.LVL91:
	entry	sp, 48
.LCFI4:
	extui	a3, a3, 0, 16
	.loc 1 1008 0
	movi.n	a12, 6
	mov.n	a11, a2
	mov.n	a10, sp
	call8	memcpy
.LVL92:
	.loc 1 1009 0
	s16i	a3, sp, 6
	.loc 1 1012 0
	mov.n	a12, sp
	movi.n	a11, 0x16
	l32r	a8, .LC79
	l32i.n	a10, a8, 12
	call8	btc_sm_dispatch
.LVL93:
	.loc 1 1015 0
	movi.n	a2, 0
.LVL94:
	retw.n
.LFE40:
	.size	connect_int, .-connect_int
	.section	.text.btc_av_init,"ax",@progbits
	.literal_position
	.literal .LC80, btc_av_cb
	.literal .LC81, btc_av_state_handlers
	.align	4
	.type	btc_av_init, @function
btc_av_init:
.LFB39:
	.loc 1 959 0
.LVL95:
	entry	sp, 32
.LCFI5:
	.loc 1 960 0
	l32r	a8, .LC80
	l32i.n	a8, a8, 12
	bnez.n	a8, .L63
.LBB13:
	.loc 1 961 0
	l32r	a8, .LC80
	s32i.n	a2, a8, 0
.LVL96:
	.loc 1 963 0
	bnei	a2, 3, .L60
	.loc 1 965 0
	call8	btc_a2dp_source_startup
.LVL97:
	j	.L61
.LVL98:
.L60:
	.loc 1 967 0
	movi.n	a8, 0x12
	bne	a2, a8, .L64
	.loc 1 969 0
	call8	btc_a2dp_sink_startup
.LVL99:
	j	.L61
.LVL100:
.L64:
	.loc 1 962 0
	movi.n	a10, 0
.LVL101:
.L61:
	.loc 1 973 0
	beqz.n	a10, .L65
	.loc 1 979 0
	movi.n	a11, 0
	l32r	a10, .LC81
.LVL102:
	call8	btc_sm_init
.LVL103:
	.loc 1 978 0
	l32r	a8, .LC80
	s32i.n	a10, a8, 12
	.loc 1 981 0
	movi.n	a10, 3
	call8	btc_dm_enable_service
.LVL104:
	.loc 1 983 0
	movi.n	a8, 0x12
	bne	a2, a8, .L62
	.loc 1 984 0
	mov.n	a10, a8
	call8	btc_dm_enable_service
.LVL105:
.L62:
	.loc 1 987 0
	call8	btc_a2dp_on_init
.LVL106:
	.loc 1 989 0
	movi.n	a2, 0
.LVL107:
	retw.n
.LVL108:
.L63:
.LBE13:
	.loc 1 992 0
	movi.n	a2, 1
.LVL109:
	retw.n
.LVL110:
.L65:
.LBB14:
	.loc 1 974 0
	movi.n	a2, 1
.LVL111:
.LBE14:
	.loc 1 993 0
	retw.n
.LFE39:
	.size	btc_av_init, .-btc_av_init
	.section	.text.btc_a2d_sink_init,"ax",@progbits
	.align	4
	.type	btc_a2d_sink_init, @function
btc_a2d_sink_init:
.LFB57:
	.loc 1 1435 0
	entry	sp, 32
.LCFI6:
	.loc 1 1438 0
	movi.n	a10, 0x12
	call8	btc_av_init
.LVL112:
	.loc 1 1439 0
	mov.n	a2, a10
	retw.n
.LFE57:
	.size	btc_a2d_sink_init, .-btc_a2d_sink_init
	.section	.text.btc_a2d_src_init,"ax",@progbits
	.align	4
	.type	btc_a2d_src_init, @function
btc_a2d_src_init:
.LFB60:
	.loc 1 1468 0
	entry	sp, 32
.LCFI7:
	.loc 1 1471 0
	movi.n	a10, 3
	call8	btc_av_init
.LVL113:
	.loc 1 1472 0
	mov.n	a2, a10
	retw.n
.LFE60:
	.size	btc_a2d_src_init, .-btc_a2d_src_init
	.section	.text.btc_report_connection_state,"ax",@progbits
	.align	4
	.type	btc_report_connection_state, @function
btc_report_connection_state:
.LFB30:
	.loc 1 246 0
.LVL114:
	entry	sp, 48
.LCFI8:
	.loc 1 249 0
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	.loc 1 251 0
	s32i.n	a2, sp, 0
	.loc 1 252 0
	beq	a3, a8, .L69
	.loc 1 253 0
	movi.n	a12, 6
	mov.n	a11, a3
	addi.n	a10, sp, 4
	call8	memcpy
.LVL115:
.L69:
	.loc 1 255 0
	bnez.n	a2, .L70
	.loc 1 256 0
	movi.n	a3, 1
.LVL116:
	movnez	a2, a3, a4
.LVL117:
	mov.n	a4, a2
.LVL118:
	s32i.n	a2, sp, 12
.L70:
.LVL119:
.LBB15:
.LBB16:
	.loc 1 156 0
	movi.n	a10, 0xc
	call8	btc_profile_cb_get
.LVL120:
	mov.n	a2, a10
.LVL121:
	.loc 1 157 0
	beqz.n	a10, .L68
	.loc 1 158 0
	mov.n	a11, sp
.LVL122:
	movi.n	a10, 0
	callx8	a2
.LVL123:
.L68:
	retw.n
.LBE16:
.LBE15:
.LFE30:
	.size	btc_report_connection_state, .-btc_report_connection_state
	.section	.rodata.str1.4
	.align	4
.LC88:
	.string	"\033[0;33mW (%d) %s: %s : unhandled event:%s\n\033[0m\n"
	.section	.text.btc_av_state_closing_handler,"ax",@progbits
	.literal_position
	.literal .LC82, 65534
	.literal .LC83, 65535
	.literal .LC84, btc_av_cb
	.literal .LC85, btc_av_cb+5
	.literal .LC86, __FUNCTION__$10493
	.literal .LC87, .LC70
	.literal .LC89, .LC88
	.align	4
	.type	btc_av_state_closing_handler, @function
btc_av_state_closing_handler:
.LFB34:
	.loc 1 497 0
.LVL124:
	entry	sp, 48
.LCFI9:
	.loc 1 501 0
	movi.n	a8, 9
	beq	a2, a8, .L74
	bltu	a8, a2, .L75
	beqi	a2, 3, .L76
	beqi	a2, 5, .L77
	j	.L73
.L75:
	l32r	a3, .LC82
.LVL125:
	beq	a2, a3, .L83
	l32r	a3, .LC83
	beq	a2, a3, .L79
	movi.n	a3, 0x19
	bne	a2, a3, .L73
	j	.L77
.L79:
	.loc 1 504 0
	l32r	a2, .LC84
.LVL126:
	l8ui	a2, a2, 18
	bnei	a2, 1, .L80
	.loc 1 506 0
	movi.n	a10, 1
	call8	btc_a2dp_source_set_tx_flush
.LVL127:
.L80:
	.loc 1 511 0
	l32r	a2, .LC84
	l8ui	a2, a2, 18
	bnez.n	a2, .L84
	.loc 1 512 0
	movi.n	a10, 1
	call8	btc_a2dp_sink_set_rx_flush
.LVL128:
	.loc 1 556 0
	movi.n	a2, 1
	retw.n
.LVL129:
.L77:
	.loc 1 520 0
	l32r	a2, .LC84
.LVL130:
	l8ui	a2, a2, 18
	bnei	a2, 1, .L81
	.loc 1 522 0
	movi.n	a10, 1
	call8	btc_a2dp_source_set_tx_flush
.LVL131:
.L81:
	.loc 1 526 0
	l32r	a2, .LC84
	l8ui	a2, a2, 18
	bnez.n	a2, .L82
	.loc 1 527 0
	movi.n	a10, 1
	call8	btc_a2dp_sink_set_rx_flush
.LVL132:
.L82:
	.loc 1 530 0
	movi.n	a10, 0
	call8	btc_a2dp_on_stopped
.LVL133:
	.loc 1 556 0
	movi.n	a2, 1
	.loc 1 531 0
	retw.n
.LVL134:
.L76:
.LBB17:
	.loc 1 539 0
	l8ui	a12, a3, 2
	l32r	a11, .LC85
	movi.n	a10, 0
	call8	btc_report_connection_state
.LVL135:
	.loc 1 542 0
	movi.n	a11, 0
	l32r	a2, .LC84
.LVL136:
	l32i.n	a10, a2, 12
	call8	btc_sm_change_state
.LVL137:
.LBE17:
	.loc 1 556 0
	movi.n	a2, 1
.LBB18:
	.loc 1 543 0
	retw.n
.LVL138:
.L74:
.LBE18:
	.loc 1 548 0
	mov.n	a11, a3
	extui	a10, a2, 0, 8
	call8	btc_rc_handler
.LVL139:
	.loc 1 556 0
	movi.n	a2, 1
.LVL140:
	.loc 1 549 0
	retw.n
.LVL141:
.L73:
	.loc 1 552 0 discriminator 1
	call8	esp_log_timestamp
.LVL142:
	mov.n	a3, a10
	mov.n	a10, a2
	call8	dump_av_sm_event_name
.LVL143:
	l32r	a11, .LC87
	s32i.n	a10, sp, 0
	l32r	a15, .LC86
	mov.n	a14, a11
	mov.n	a13, a3
	l32r	a12, .LC89
	movi.n	a10, 2
	call8	esp_log_write
.LVL144:
	.loc 1 554 0 discriminator 1
	movi.n	a2, 0
.LVL145:
	retw.n
.LVL146:
.L83:
	.loc 1 556 0
	movi.n	a2, 1
.LVL147:
	retw.n
.L84:
	movi.n	a2, 1
	.loc 1 557 0
	retw.n
.LFE34:
	.size	btc_av_state_closing_handler, .-btc_av_state_closing_handler
	.section	.text.btc_report_audio_state,"ax",@progbits
	.align	4
	.type	btc_report_audio_state, @function
btc_report_audio_state:
.LFB31:
	.loc 1 263 0
.LVL148:
	entry	sp, 48
.LCFI10:
	.loc 1 266 0
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	.loc 1 268 0
	s32i.n	a2, sp, 0
	.loc 1 269 0
	beq	a3, a8, .L86
	.loc 1 270 0
	movi.n	a12, 6
	mov.n	a11, a3
	addi.n	a10, sp, 4
	call8	memcpy
.LVL149:
.L86:
.LBB19:
.LBB20:
	.loc 1 156 0
	movi.n	a10, 0xc
	call8	btc_profile_cb_get
.LVL150:
	mov.n	a3, a10
.LVL151:
	.loc 1 157 0
	beqz.n	a10, .L85
	.loc 1 158 0
	mov.n	a11, sp
.LVL152:
	movi.n	a10, 1
	callx8	a3
.LVL153:
.L85:
	retw.n
.LBE20:
.LBE19:
.LFE31:
	.size	btc_report_audio_state, .-btc_report_audio_state
	.section	.text.btc_av_state_started_handler,"ax",@progbits
	.literal_position
	.literal .LC90, 65534
	.literal .LC91, 65535
	.literal .LC92, btc_av_cb
	.literal .LC93, btc_av_cb+5
	.literal .LC94, __FUNCTION__$10533
	.literal .LC95, .LC70
	.literal .LC96, .LC88
	.align	4
	.type	btc_av_state_started_handler, @function
btc_av_state_started_handler:
.LFB36:
	.loc 1 725 0
.LVL154:
	entry	sp, 48
.LCFI11:
.LVL155:
	.loc 1 731 0
	movi.n	a8, 0x13
	beq	a2, a8, .L90
	bltu	a8, a2, .L91
	movi.n	a8, 0xc
	bltu	a8, a2, .L92
	bgeui	a2, 8, .L90
	beqi	a2, 3, .L93
	beqi	a2, 5, .L94
	j	.L89
.L92:
	movi.n	a8, 0xf
	beq	a2, a8, .L95
	movi.n	a8, 0x11
	beq	a2, a8, .L90
	j	.L89
.L91:
	movi.n	a3, 0x1a
.LVL156:
	bltu	a3, a2, .L96
	movi.n	a3, 0x19
	bgeu	a2, a3, .L97
	movi.n	a3, 0x17
	beq	a2, a3, .L98
	movi.n	a3, 0x18
	beq	a2, a3, .L99
	j	.L89
.L96:
	l32r	a3, .LC90
	beq	a2, a3, .L109
	l32r	a3, .LC91
	bne	a2, a3, .L89
	.loc 1 735 0
	l32r	a3, .LC92
	l8ui	a8, a3, 16
	movi.n	a2, -3
.LVL157:
	and	a2, a8, a2
	s8i	a2, a3, 16
	.loc 1 737 0
	l32r	a11, .LC93
	movi.n	a10, 2
	call8	btc_report_audio_state
.LVL158:
	.loc 1 880 0
	movi.n	a2, 1
	.loc 1 743 0
	retw.n
.LVL159:
.L99:
	.loc 1 754 0
	l32r	a2, .LC92
.LVL160:
	l8ui	a2, a2, 18
	bnei	a2, 1, .L110
	.loc 1 755 0
	movi.n	a11, 1
	movi.n	a10, 0
	call8	btc_a2dp_on_started
.LVL161:
	retw.n
.LVL162:
.L97:
	.loc 1 766 0
	l32r	a3, .LC92
	l8ui	a8, a3, 16
	movi.n	a2, 1
.LVL163:
	or	a2, a8, a2
	extui	a2, a2, 0, 8
	.loc 1 770 0
	movi.n	a8, -3
	and	a2, a2, a8
	s8i	a2, a3, 16
	.loc 1 772 0
	l8ui	a2, a3, 18
	bnei	a2, 1, .L102
	.loc 1 774 0
	movi.n	a10, 1
	call8	btc_a2dp_source_set_tx_flush
.LVL164:
.L102:
	.loc 1 778 0
	l32r	a2, .LC92
	l8ui	a2, a2, 18
	bnez.n	a2, .L103
	.loc 1 779 0
	movi.n	a10, 1
	call8	btc_a2dp_sink_set_rx_flush
.LVL165:
	.loc 1 780 0
	movi.n	a10, 0
	call8	btc_a2dp_on_stopped
.LVL166:
.L103:
	.loc 1 783 0
	movi.n	a10, 1
	call8	BTA_AvStop
.LVL167:
	.loc 1 880 0
	movi.n	a2, 1
	.loc 1 784 0
	retw.n
.LVL168:
.L98:
	.loc 1 789 0
	l32r	a2, .LC92
.LVL169:
	l8ui	a10, a2, 4
	call8	BTA_AvClose
.LVL170:
	.loc 1 790 0
	l8ui	a2, a2, 18
	bnez.n	a2, .L104
	.loc 1 791 0
	l32r	a2, .LC92
	l8ui	a10, a2, 4
	call8	BTA_AvCloseRc
.LVL171:
.L104:
	.loc 1 795 0
	movi.n	a12, 0
	l32r	a11, .LC93
	movi.n	a10, 3
	call8	btc_report_connection_state
.LVL172:
	.loc 1 798 0
	movi.n	a11, 4
	l32r	a2, .LC92
	l32i.n	a10, a2, 12
	call8	btc_sm_change_state
.LVL173:
	.loc 1 880 0
	movi.n	a2, 1
	.loc 1 799 0
	retw.n
.LVL174:
.L95:
	.loc 1 807 0
	mov.n	a10, a3
	call8	btc_a2dp_on_suspended
.LVL175:
	.loc 1 810 0
	l8ui	a2, a3, 3
.LVL176:
	beqz.n	a2, .L105
	.loc 1 811 0
	l32r	a2, .LC92
	l8ui	a8, a2, 16
	movi.n	a3, -2
.LVL177:
	and	a3, a8, a3
	s8i	a3, a2, 16
	.loc 1 813 0
	l8ui	a2, a2, 18
	bnei	a2, 1, .L111
	.loc 1 815 0
	movi.n	a10, 0
	call8	btc_a2dp_source_set_tx_flush
.LVL178:
	.loc 1 818 0
	movi.n	a2, 0
	retw.n
.LVL179:
.L105:
	.loc 1 821 0
	l8ui	a2, a3, 2
	bnez.n	a2, .L106
	.loc 1 827 0
	l32r	a2, .LC92
	l8ui	a2, a2, 16
	bbsi	a2, 0, .L107
	.loc 1 828 0
	movi.n	a3, 2
.LVL180:
	or	a2, a2, a3
	l32r	a3, .LC92
	s8i	a2, a3, 16
.L107:
	.loc 1 831 0
	l32r	a11, .LC93
	movi.n	a10, 0
	call8	btc_report_audio_state
.LVL181:
	j	.L108
.LVL182:
.L106:
	.loc 1 833 0
	l32r	a11, .LC93
	movi.n	a10, 1
	call8	btc_report_audio_state
.LVL183:
.L108:
	.loc 1 836 0
	l32r	a2, .LC92
	movi.n	a11, 2
	l32i.n	a10, a2, 12
	call8	btc_sm_change_state
.LVL184:
	.loc 1 839 0
	l8ui	a8, a2, 16
	movi.n	a3, -2
	and	a3, a8, a3
	s8i	a3, a2, 16
	.loc 1 880 0
	movi.n	a2, 1
	.loc 1 840 0
	retw.n
.LVL185:
.L94:
	.loc 1 844 0
	l32r	a8, .LC92
	l8ui	a9, a8, 16
	movi.n	a2, 8
.LVL186:
	or	a2, a9, a2
	s8i	a2, a8, 16
	.loc 1 845 0
	mov.n	a10, a3
	call8	btc_a2dp_on_stopped
.LVL187:
	.loc 1 847 0
	l32r	a11, .LC93
	movi.n	a10, 1
	call8	btc_report_audio_state
.LVL188:
	.loc 1 850 0
	l8ui	a2, a3, 3
	bnez.n	a2, .L112
	.loc 1 851 0
	movi.n	a11, 2
	l32r	a2, .LC92
	l32i.n	a10, a2, 12
	call8	btc_sm_change_state
.LVL189:
	.loc 1 880 0
	movi.n	a2, 1
	retw.n
.LVL190:
.L93:
.LBB21:
	.loc 1 858 0
	l32r	a2, .LC92
.LVL191:
	l8ui	a9, a2, 16
	movi.n	a8, 8
	or	a8, a9, a8
	s8i	a8, a2, 16
	.loc 1 861 0
	movi.n	a10, 0
	call8	btc_a2dp_on_stopped
.LVL192:
	.loc 1 865 0
	l8ui	a12, a3, 2
	l32r	a11, .LC93
	movi.n	a10, 0
	call8	btc_report_connection_state
.LVL193:
	.loc 1 868 0
	movi.n	a11, 0
	l32i.n	a10, a2, 12
	call8	btc_sm_change_state
.LVL194:
.LBE21:
	.loc 1 880 0
	movi.n	a2, 1
.LBB22:
	.loc 1 869 0
	retw.n
.LVL195:
.L90:
.LBE22:
	.loc 1 872 0
	mov.n	a11, a3
	extui	a10, a2, 0, 8
	call8	btc_rc_handler
.LVL196:
	.loc 1 880 0
	movi.n	a2, 1
.LVL197:
	.loc 1 872 0
	retw.n
.LVL198:
.L89:
	.loc 1 875 0 discriminator 1
	call8	esp_log_timestamp
.LVL199:
	mov.n	a3, a10
	mov.n	a10, a2
	call8	dump_av_sm_event_name
.LVL200:
	l32r	a11, .LC95
	s32i.n	a10, sp, 0
	l32r	a15, .LC94
	mov.n	a14, a11
	mov.n	a13, a3
	l32r	a12, .LC96
	movi.n	a10, 2
	call8	esp_log_write
.LVL201:
	.loc 1 877 0 discriminator 1
	movi.n	a2, 0
.LVL202:
	retw.n
.LVL203:
.L109:
	.loc 1 880 0
	movi.n	a2, 1
.LVL204:
	retw.n
.L110:
	movi.n	a2, 1
	retw.n
.L111:
	.loc 1 818 0
	movi.n	a2, 0
	retw.n
.LVL205:
.L112:
	.loc 1 880 0
	movi.n	a2, 1
	.loc 1 881 0
	retw.n
.LFE36:
	.size	btc_av_state_started_handler, .-btc_av_state_started_handler
	.section	.rodata.str1.4
	.align	4
.LC102:
	.string	"\033[0;33mW (%d) %s: BTA_AV_OPEN_EVT::FAILED status: %d\n\033[0m\n"
	.section	.text.btc_av_state_opening_handler,"ax",@progbits
	.literal_position
	.literal .LC97, 65534
	.literal .LC98, 65535
	.literal .LC99, btc_av_cb+5
	.literal .LC100, btc_av_cb
	.literal .LC101, .LC70
	.literal .LC103, .LC102
	.literal .LC104, __FUNCTION__$10467
	.literal .LC105, .LC88
	.align	4
	.type	btc_av_state_opening_handler, @function
btc_av_state_opening_handler:
.LFB33:
	.loc 1 382 0
.LVL206:
	entry	sp, 64
.LCFI12:
	.loc 1 386 0
	movi.n	a8, 0x12
	beq	a2, a8, .L115
	bltu	a8, a2, .L116
	movi.n	a8, 0xc
	bltu	a8, a2, .L117
	bgeui	a2, 8, .L118
	beqi	a2, 2, .L119
	j	.L114
.L117:
	beqi	a2, 16, .L120
	movi.n	a8, 0x11
	beq	a2, a8, .L118
	j	.L114
.L116:
	movi.n	a8, 0x1b
	beq	a2, a8, .L121
	bltu	a8, a2, .L122
	movi.n	a8, 0x13
	beq	a2, a8, .L118
	movi.n	a8, 0x16
	beq	a2, a8, .L123
	j	.L114
.L122:
	l32r	a3, .LC97
.LVL207:
	beq	a2, a3, .L131
	l32r	a3, .LC98
	bne	a2, a3, .L114
	.loc 1 389 0
	movi.n	a12, 0
	l32r	a11, .LC99
	movi.n	a10, 1
	call8	btc_report_connection_state
.LVL208:
	.loc 1 481 0
	movi.n	a2, 1
.LVL209:
	.loc 1 390 0
	retw.n
.LVL210:
.L115:
	.loc 1 397 0
	movi.n	a12, 0
	l32r	a11, .LC99
	mov.n	a10, a12
	call8	btc_report_connection_state
.LVL211:
	.loc 1 398 0
	movi.n	a11, 0
	l32r	a2, .LC100
.LVL212:
	l32i.n	a10, a2, 12
	call8	btc_sm_change_state
.LVL213:
	.loc 1 481 0
	movi.n	a2, 1
	.loc 1 399 0
	retw.n
.LVL214:
.L119:
.LBB23:
	.loc 1 408 0
	l8ui	a2, a3, 8
.LVL215:
	bnez.n	a2, .L126
.LVL216:
	.loc 1 411 0
	l8ui	a8, a3, 10
	l32r	a2, .LC100
	s8i	a8, a2, 17
	.loc 1 413 0
	l8ui	a3, a3, 11
.LVL217:
	s8i	a3, a2, 18
	.loc 1 409 0
	movi.n	a3, 2
	j	.L127
.LVL218:
.L126:
	.loc 1 415 0 discriminator 1
	call8	esp_log_timestamp
.LVL219:
	l32r	a11, .LC101
	l8ui	a15, a3, 8
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC103
	movi.n	a10, 2
	call8	esp_log_write
.LVL220:
	.loc 1 417 0 discriminator 1
	movi.n	a3, 0
.LVL221:
.L127:
	.loc 1 422 0
	movi.n	a12, 0
	l32r	a11, .LC99
	mov.n	a10, a3
	call8	btc_report_connection_state
.LVL222:
	.loc 1 424 0
	l32r	a2, .LC100
	mov.n	a11, a3
	l32i.n	a10, a2, 12
	call8	btc_sm_change_state
.LVL223:
	.loc 1 425 0
	l8ui	a2, a2, 18
	beqi	a2, 1, .L128
	.loc 1 431 0
	bnez.n	a2, .L128
	.loc 1 433 0
	l32r	a2, .LC100
	l8ui	a10, a2, 4
	call8	BTA_AvOpenRc
.LVL224:
.L128:
	.loc 1 435 0
	call8	btc_queue_advance
.LVL225:
.LBE23:
	.loc 1 481 0
	movi.n	a2, 1
	.loc 1 436 0
	retw.n
.LVL226:
.L121:
	.loc 1 439 0
	l32r	a2, .LC100
.LVL227:
	l8ui	a2, a2, 18
	bnez.n	a2, .L132
.LBB24:
	.loc 1 441 0
	movi.n	a12, 6
	l32r	a11, .LC100
	addi.n	a11, a11, 5
	addi	a10, sp, 16
	call8	memcpy
.LVL228:
	.loc 1 442 0
	movi.n	a12, 8
	mov.n	a11, a3
	addi	a10, sp, 22
	call8	memcpy
.LVL229:
.LBB25:
.LBB26:
	.loc 1 156 0
	movi.n	a10, 0xc
	call8	btc_profile_cb_get
.LVL230:
	mov.n	a2, a10
.LVL231:
	.loc 1 157 0
	beqz.n	a10, .L129
	.loc 1 158 0
	addi	a11, sp, 16
.LVL232:
	movi.n	a10, 2
	callx8	a2
.LVL233:
.L129:
.LBE26:
.LBE25:
.LBE24:
	.loc 1 481 0
	movi.n	a2, 1
.LVL234:
	retw.n
.LVL235:
.L123:
	.loc 1 449 0
	movi.n	a12, 6
	l32r	a11, .LC99
	mov.n	a10, a3
	call8	memcmp
.LVL236:
	bnez.n	a10, .L130
	.loc 1 452 0
	call8	btc_queue_advance
.LVL237:
	.loc 1 481 0
	movi.n	a2, 1
.LVL238:
	.loc 1 453 0
	retw.n
.LVL239:
.L130:
	.loc 1 456 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a12
	call8	btc_report_connection_state
.LVL240:
	.loc 1 457 0
	call8	btc_queue_advance
.LVL241:
	.loc 1 481 0
	movi.n	a2, 1
.LVL242:
	.loc 1 458 0
	retw.n
.LVL243:
.L120:
	.loc 1 463 0
	movi.n	a12, 6
	l32r	a11, .LC99
	mov.n	a10, a3
	call8	memcmp
.LVL244:
	beqz.n	a10, .L133
	.loc 1 469 0
	mov.n	a10, a3
	call8	BTA_AvDisconnect
.LVL245:
	.loc 1 481 0
	movi.n	a2, 1
.LVL246:
	.loc 1 470 0
	retw.n
.LVL247:
.L118:
	.loc 1 473 0
	mov.n	a11, a3
	extui	a10, a2, 0, 8
	call8	btc_rc_handler
.LVL248:
	.loc 1 481 0
	movi.n	a2, 1
.LVL249:
	.loc 1 473 0
	retw.n
.LVL250:
.L114:
	.loc 1 476 0 discriminator 1
	call8	esp_log_timestamp
.LVL251:
	mov.n	a3, a10
	mov.n	a10, a2
	call8	dump_av_sm_event_name
.LVL252:
	l32r	a11, .LC101
	s32i.n	a10, sp, 0
	l32r	a15, .LC104
	mov.n	a14, a11
	mov.n	a13, a3
	l32r	a12, .LC105
	movi.n	a10, 2
	call8	esp_log_write
.LVL253:
	.loc 1 478 0 discriminator 1
	movi.n	a2, 0
.LVL254:
	retw.n
.LVL255:
.L131:
	.loc 1 481 0
	movi.n	a2, 1
.LVL256:
	retw.n
.LVL257:
.L132:
	movi.n	a2, 1
	retw.n
.LVL258:
.L133:
	movi.n	a2, 1
.LVL259:
	.loc 1 482 0
	retw.n
.LFE33:
	.size	btc_av_state_opening_handler, .-btc_av_state_opening_handler
	.section	.rodata.str1.4
	.align	4
.LC112:
	.string	"AVconn"
	.section	.text.btc_av_state_idle_handler,"ax",@progbits
	.literal_position
	.literal .LC106, btc_av_cb+5
	.literal .LC107, 65534
	.literal .LC108, 65535
	.literal .LC109, btc_av_cb
	.literal .LC110, 4362
	.literal .LC111, btc_initiate_av_open_tmr_hdlr
	.literal .LC113, .LC112
	.literal .LC114, 2000, 0
	.literal .LC115, tle_av_open_on_rc
	.literal .LC116, __FUNCTION__$10447
	.literal .LC117, .LC70
	.literal .LC118, .LC88
	.align	4
	.type	btc_av_state_idle_handler, @function
btc_av_state_idle_handler:
.LFB32:
	.loc 1 286 0
.LVL260:
	entry	sp, 48
.LCFI13:
	.loc 1 290 0
	movi.n	a8, 0xc
	bltu	a8, a2, .L136
	bgeui	a2, 10, .L137
	beqi	a2, 1, .L138
	beqz.n	a2, .L150
	beqi	a2, 8, .L140
	movi.n	a8, 9
	beq	a2, a8, .L141
	j	.L135
.L136:
	movi.n	a8, 0x13
	beq	a2, a8, .L137
	bltu	a8, a2, .L142
	beqi	a2, 16, .L143
	movi.n	a8, 0x11
	beq	a2, a8, .L137
	j	.L135
.L142:
	l32r	a8, .LC107
	beq	a2, a8, .L150
	l32r	a8, .LC108
	beq	a2, a8, .L144
	movi.n	a8, 0x16
	bne	a2, a8, .L135
	j	.L143
.L144:
	.loc 1 293 0
	l32r	a3, .LC106
.LVL261:
	movi.n	a2, 0
.LVL262:
	s8i	a2, a3, 0
	s8i	a2, a3, 1
	s8i	a2, a3, 2
	s8i	a2, a3, 3
	s8i	a2, a3, 4
	s8i	a2, a3, 5
	.loc 1 294 0
	l32r	a3, .LC109
	s8i	a2, a3, 16
	.loc 1 295 0
	s8i	a2, a3, 17
	.loc 1 296 0
	call8	btc_a2dp_on_idle
.LVL263:
	.loc 1 368 0
	movi.n	a2, 1
	.loc 1 297 0
	retw.n
.LVL264:
.L138:
	.loc 1 306 0
	l8ui	a3, a3, 1
.LVL265:
	l32r	a2, .LC109
.LVL266:
	s8i	a3, a2, 4
	.loc 1 368 0
	movi.n	a2, 1
	.loc 1 307 0
	retw.n
.LVL267:
.L143:
	.loc 1 311 0
	movi.n	a8, 0x16
	bne	a2, a8, .L145
	.loc 1 312 0
	l32r	a4, .LC109
	addi.n	a2, a4, 5
.LVL268:
	movi.n	a12, 6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	memcpy
.LVL269:
	.loc 1 314 0
	l16ui	a14, a3, 6
	movi.n	a13, 0x12
	movi.n	a12, 1
	l8ui	a11, a4, 4
	mov.n	a10, a2
	call8	BTA_AvOpen
.LVL270:
	j	.L146
.LVL271:
.L145:
	.loc 1 316 0
	bnei	a2, 16, .L146
.LVL272:
.LBB27:
.LBB28:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.loc 2 737 0
	movi.n	a2, 6
.LVL273:
.LBE28:
.LBE27:
	.loc 1 317 0
	l32r	a8, .LC106
.LVL274:
	j	.L147
.LVL275:
.L148:
.LBB30:
.LBB29:
	.loc 2 738 0
	l8ui	a9, a3, 0
	s8i	a9, a8, 0
	.loc 2 737 0
	addi.n	a2, a2, -1
.LVL276:
	.loc 2 738 0
	addi.n	a3, a3, 1
.LVL277:
	addi.n	a8, a8, 1
.LVL278:
.L147:
	.loc 2 737 0
	bnez.n	a2, .L148
.LBE29:
.LBE30:
	.loc 1 318 0
	l32r	a14, .LC110
	movi.n	a13, 0x12
	movi.n	a12, 1
	l32r	a2, .LC109
.LVL279:
	l8ui	a11, a2, 4
	l32r	a10, .LC106
	call8	BTA_AvOpen
.LVL280:
.L146:
	.loc 1 321 0
	movi.n	a11, 1
	l32r	a2, .LC109
	l32i.n	a10, a2, 12
	call8	btc_sm_change_state
.LVL281:
	.loc 1 368 0
	movi.n	a2, 1
	.loc 1 322 0
	retw.n
.LVL282:
.L140:
	.loc 1 337 0
	l32r	a14, .LC114
	l32r	a15, .LC114+4
	movi.n	a12, 0
	l32r	a11, .LC111
	l32r	a10, .LC113
	call8	osi_alarm_new
.LVL283:
	l32r	a8, .LC115
	s32i.n	a10, a8, 0
	.loc 1 338 0
	l32r	a12, .LC114
	l32r	a13, .LC114+4
	call8	osi_alarm_set
.LVL284:
	.loc 1 340 0
	mov.n	a11, a3
	extui	a10, a2, 0, 8
	call8	btc_rc_handler
.LVL285:
	.loc 1 368 0
	movi.n	a2, 1
.LVL286:
	.loc 1 341 0
	retw.n
.LVL287:
.L137:
	.loc 1 348 0
	mov.n	a11, a3
	extui	a10, a2, 0, 8
	call8	btc_rc_handler
.LVL288:
	.loc 1 368 0
	movi.n	a2, 1
.LVL289:
	.loc 1 349 0
	retw.n
.LVL290:
.L141:
	.loc 1 353 0
	l32r	a8, .LC115
	l32i.n	a10, a8, 0
	beqz.n	a10, .L149
	.loc 1 354 0
	call8	osi_alarm_free
.LVL291:
	.loc 1 355 0
	movi.n	a9, 0
	l32r	a8, .LC115
	s32i.n	a9, a8, 0
.L149:
	.loc 1 358 0
	mov.n	a11, a3
	extui	a10, a2, 0, 8
	call8	btc_rc_handler
.LVL292:
	.loc 1 368 0
	movi.n	a2, 1
.LVL293:
	.loc 1 359 0
	retw.n
.LVL294:
.L135:
	.loc 1 362 0 discriminator 1
	call8	esp_log_timestamp
.LVL295:
	mov.n	a3, a10
.LVL296:
	mov.n	a10, a2
	call8	dump_av_sm_event_name
.LVL297:
	l32r	a11, .LC117
	s32i.n	a10, sp, 0
	l32r	a15, .LC116
	mov.n	a14, a11
	mov.n	a13, a3
	l32r	a12, .LC118
	movi.n	a10, 2
	call8	esp_log_write
.LVL298:
	.loc 1 364 0 discriminator 1
	movi.n	a2, 0
.LVL299:
	retw.n
.LVL300:
.L150:
	.loc 1 368 0
	movi.n	a2, 1
.LVL301:
	.loc 1 369 0
	retw.n
.LFE32:
	.size	btc_av_state_idle_handler, .-btc_av_state_idle_handler
	.section	.text.clean_up,"ax",@progbits
	.literal_position
	.literal .LC119, tle_av_open_on_rc
	.literal .LC120, btc_av_cb
	.align	4
	.type	clean_up, @function
clean_up:
.LFB41:
	.loc 1 1027 0
.LVL302:
	entry	sp, 32
.LCFI14:
	.loc 1 1030 0
	bnei	a2, 3, .L152
	.loc 1 1032 0
	call8	btc_a2dp_source_shutdown
.LVL303:
	.loc 1 1033 0
	l32r	a3, .LC119
	l32i.n	a10, a3, 0
	beqz.n	a10, .L152
	.loc 1 1034 0
	call8	osi_alarm_free
.LVL304:
	.loc 1 1035 0
	movi.n	a8, 0
	l32r	a3, .LC119
	s32i.n	a8, a3, 0
.L152:
	.loc 1 1040 0
	movi.n	a10, 3
	call8	btc_dm_disable_service
.LVL305:
	.loc 1 1042 0
	movi.n	a3, 0x12
	bne	a2, a3, .L153
	.loc 1 1043 0
	mov.n	a10, a3
	call8	btc_dm_disable_service
.LVL306:
.L153:
	.loc 1 1047 0
	l32r	a3, .LC120
	l32i.n	a10, a3, 12
	call8	btc_sm_shutdown
.LVL307:
	.loc 1 1048 0
	movi.n	a8, 0
	s32i.n	a8, a3, 12
	.loc 1 1050 0
	movi.n	a3, 0x12
	bne	a2, a3, .L151
	.loc 1 1052 0
	call8	btc_a2dp_sink_shutdown
.LVL308:
.L151:
	retw.n
.LFE41:
	.size	clean_up, .-clean_up
	.section	.text.btc_a2d_sink_deinit,"ax",@progbits
	.align	4
	.type	btc_a2d_sink_deinit, @function
btc_a2d_sink_deinit:
.LFB59:
	.loc 1 1450 0
	entry	sp, 32
.LCFI15:
	.loc 1 1451 0
	movi.n	a10, 0x12
	call8	clean_up
.LVL309:
	retw.n
.LFE59:
	.size	btc_a2d_sink_deinit, .-btc_a2d_sink_deinit
	.section	.text.btc_a2d_src_deinit,"ax",@progbits
	.align	4
	.type	btc_a2d_src_deinit, @function
btc_a2d_src_deinit:
.LFB61:
	.loc 1 1475 0
	entry	sp, 32
.LCFI16:
	.loc 1 1476 0
	movi.n	a10, 3
	call8	clean_up
.LVL310:
	retw.n
.LFE61:
	.size	btc_a2d_src_deinit, .-btc_a2d_src_deinit
	.section	.rodata.str1.4
	.align	4
.LC122:
	.string	"btc_av_cb.sm_handle != NULL"
	.section	.text.btc_a2d_sink_connect,"ax",@progbits
	.literal_position
	.literal .LC121, btc_av_cb
	.literal .LC123, .LC122
	.literal .LC124, __func__$10679
	.literal .LC125, .LC63
	.literal .LC126, connect_int
	.literal .LC127, 4363
	.align	4
	.type	btc_a2d_sink_connect, @function
btc_a2d_sink_connect:
.LFB58:
	.loc 1 1442 0
.LVL311:
	entry	sp, 32
.LCFI17:
	.loc 1 1444 0
	l32r	a8, .LC121
	l32i.n	a8, a8, 12
	.loc 1 1444 0
	bnez.n	a8, .L158
	.loc 1 1444 0 is_stmt 0 discriminator 1
	l32r	a13, .LC123
	l32r	a12, .LC124
	movi	a11, 0x5a4
	l32r	a10, .LC125
	call8	__assert_func
.LVL312:
.L158:
	.loc 1 1446 0 is_stmt 1
	l32r	a12, .LC126
	mov.n	a11, a2
	l32r	a10, .LC127
	call8	btc_queue_connect
.LVL313:
	.loc 1 1447 0
	mov.n	a2, a10
.LVL314:
	retw.n
.LFE58:
	.size	btc_a2d_sink_connect, .-btc_a2d_sink_connect
	.section	.text.btc_a2d_src_connect,"ax",@progbits
	.literal_position
	.literal .LC128, btc_av_cb
	.literal .LC129, .LC122
	.literal .LC130, __func__$10694
	.literal .LC131, .LC63
	.literal .LC132, connect_int
	.literal .LC133, 4362
	.align	4
	.type	btc_a2d_src_connect, @function
btc_a2d_src_connect:
.LFB62:
	.loc 1 1480 0
.LVL315:
	entry	sp, 32
.LCFI18:
	.loc 1 1482 0
	l32r	a8, .LC128
	l32i.n	a8, a8, 12
	.loc 1 1482 0
	bnez.n	a8, .L160
	.loc 1 1482 0 is_stmt 0 discriminator 1
	l32r	a13, .LC129
	l32r	a12, .LC130
	movi	a11, 0x5ca
	l32r	a10, .LC131
	call8	__assert_func
.LVL316:
.L160:
	.loc 1 1484 0 is_stmt 1
	l32r	a12, .LC132
	mov.n	a11, a2
	l32r	a10, .LC133
	call8	btc_queue_connect
.LVL317:
	.loc 1 1485 0
	mov.n	a2, a10
.LVL318:
	retw.n
.LFE62:
	.size	btc_a2d_src_connect, .-btc_a2d_src_connect
	.section	.text.btc_av_event_free_data,"ax",@progbits
	.align	4
	.type	btc_av_event_free_data, @function
btc_av_event_free_data:
.LFB38:
	.loc 1 926 0
.LVL319:
	entry	sp, 32
.LCFI19:
	.loc 1 927 0
	movi.n	a8, 0x11
	bne	a2, a8, .L161
.LVL320:
.LBB31:
	.loc 1 930 0
	l32i.n	a10, a3, 12
	beqz.n	a10, .L164
	.loc 1 931 0
	call8	free
.LVL321:
.L164:
	.loc 1 934 0
	l32i.n	a8, a3, 16
	beqz.n	a8, .L161
	.loc 1 935 0
	l32i.n	a10, a8, 8
	beqz.n	a10, .L165
	.loc 1 936 0
	call8	free
.LVL322:
.L165:
	.loc 1 938 0
	l32i.n	a10, a3, 16
	call8	free
.LVL323:
.L161:
	retw.n
.LBE31:
.LFE38:
	.size	btc_av_event_free_data, .-btc_av_event_free_data
	.section	.text.btc_av_get_sm_handle,"ax",@progbits
	.literal_position
	.literal .LC134, btc_av_cb
	.align	4
	.global	btc_av_get_sm_handle
	.type	btc_av_get_sm_handle, @function
btc_av_get_sm_handle:
.LFB42:
	.loc 1 1068 0
	entry	sp, 32
.LCFI20:
	.loc 1 1070 0
	l32r	a8, .LC134
	l32i.n	a2, a8, 12
	retw.n
.LFE42:
	.size	btc_av_get_sm_handle, .-btc_av_get_sm_handle
	.section	.text.btc_av_stream_ready,"ax",@progbits
	.literal_position
	.literal .LC135, btc_av_cb
	.align	4
	.global	btc_av_stream_ready
	.type	btc_av_stream_ready, @function
btc_av_stream_ready:
.LFB43:
	.loc 1 1083 0
	entry	sp, 32
.LCFI21:
	.loc 1 1084 0
	l32r	a2, .LC135
	l32i.n	a10, a2, 12
	call8	btc_sm_get_state
.LVL324:
	.loc 1 1090 0
	l8ui	a8, a2, 16
	movi.n	a2, 0xa
	bany	a8, a2, .L169
	.loc 1 1094 0
	addi	a10, a10, -2
.LVL325:
	movi.n	a2, 0
	movi.n	a8, 1
	moveqz	a2, a8, a10
	extui	a2, a2, 0, 8
	retw.n
.LVL326:
.L169:
	.loc 1 1091 0
	movi.n	a2, 0
	.loc 1 1095 0
	retw.n
.LFE43:
	.size	btc_av_stream_ready, .-btc_av_stream_ready
	.section	.text.btc_av_stream_started_ready,"ax",@progbits
	.literal_position
	.literal .LC136, btc_av_cb
	.align	4
	.global	btc_av_stream_started_ready
	.type	btc_av_stream_started_ready, @function
btc_av_stream_started_ready:
.LFB44:
	.loc 1 1108 0
	entry	sp, 32
.LCFI22:
	.loc 1 1109 0
	l32r	a2, .LC136
	l32i.n	a10, a2, 12
	call8	btc_sm_get_state
.LVL327:
	.loc 1 1115 0
	l8ui	a8, a2, 16
	movi.n	a2, 0xb
	bany	a8, a2, .L172
	.loc 1 1120 0
	addi	a10, a10, -3
.LVL328:
	movi.n	a2, 0
	movi.n	a8, 1
	moveqz	a2, a8, a10
	extui	a2, a2, 0, 8
	retw.n
.LVL329:
.L172:
	.loc 1 1117 0
	movi.n	a2, 0
	.loc 1 1121 0
	retw.n
.LFE44:
	.size	btc_av_stream_started_ready, .-btc_av_stream_started_ready
	.section	.text.btc_dispatch_sm_event,"ax",@progbits
	.align	4
	.global	btc_dispatch_sm_event
	.type	btc_dispatch_sm_event, @function
btc_dispatch_sm_event:
.LFB45:
	.loc 1 1135 0
.LVL330:
	entry	sp, 48
.LCFI23:
	.loc 1 1137 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 1138 0
	movi.n	a8, 0xc
	s8i	a8, sp, 2
	.loc 1 1139 0
	s8i	a2, sp, 3
	.loc 1 1140 0
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL331:
	retw.n
.LFE45:
	.size	btc_dispatch_sm_event, .-btc_dispatch_sm_event
	.section	.rodata.str1.4
	.align	4
.LC142:
	.string	"\033[0;33mW (%d) %s: reconfig done BTA_AVstart()\n\033[0m\n"
	.section	.text.btc_av_state_opened_handler,"ax",@progbits
	.literal_position
	.literal .LC137, btc_av_cb
	.literal .LC138, 65534
	.literal .LC139, 65535
	.literal .LC140, btc_av_cb+5
	.literal .LC141, .LC70
	.literal .LC143, .LC142
	.literal .LC144, __FUNCTION__$10508
	.literal .LC145, .LC88
	.align	4
	.type	btc_av_state_opened_handler, @function
btc_av_state_opened_handler:
.LFB35:
	.loc 1 571 0
.LVL332:
	entry	sp, 48
.LCFI24:
.LVL333:
	.loc 1 577 0
	bnei	a2, 10, .L175
	.loc 1 577 0 is_stmt 0 discriminator 1
	l32r	a8, .LC137
	l8ui	a8, a8, 16
	bbci	a8, 1, .L175
	.loc 1 578 0 is_stmt 1 discriminator 2
	l8ui	a10, a3, 1
	.loc 1 577 0 discriminator 2
	movi.n	a9, 0x44
	bne	a10, a9, .L175
	.loc 1 580 0
	movi.n	a9, -3
	and	a8, a8, a9
	l32r	a9, .LC137
	s8i	a8, a9, 16
.L175:
	.loc 1 583 0
	movi.n	a8, 0x11
	beq	a2, a8, .L177
	bltu	a8, a2, .L178
	movi.n	a8, 0xc
	bltu	a8, a2, .L179
	bgeui	a2, 8, .L177
	beqi	a2, 3, .L180
	beqi	a2, 4, .L181
	j	.L176
.L179:
	movi.n	a8, 0xe
	beq	a2, a8, .L182
	j	.L176
.L178:
	movi.n	a8, 0x17
	beq	a2, a8, .L183
	bltu	a8, a2, .L184
	movi.n	a8, 0x13
	beq	a2, a8, .L177
	movi.n	a8, 0x16
	beq	a2, a8, .L185
	j	.L176
.L184:
	l32r	a3, .LC138
.LVL334:
	beq	a2, a3, .L186
	l32r	a3, .LC139
	beq	a2, a3, .L187
	movi.n	a3, 0x18
	bne	a2, a3, .L176
	j	.L188
.L187:
	.loc 1 585 0
	l32r	a8, .LC137
	l8ui	a3, a8, 16
	movi.n	a2, -9
.LVL335:
	and	a2, a3, a2
	extui	a2, a2, 0, 8
	.loc 1 586 0
	movi.n	a3, -5
	and	a2, a2, a3
	s8i	a2, a8, 16
	.loc 1 711 0
	movi.n	a2, 1
	.loc 1 587 0
	retw.n
.LVL336:
.L186:
	.loc 1 590 0
	l32r	a3, .LC137
	l8ui	a8, a3, 16
	movi.n	a2, -5
.LVL337:
	and	a2, a8, a2
	s8i	a2, a3, 16
	.loc 1 711 0
	movi.n	a2, 1
	.loc 1 591 0
	retw.n
.LVL338:
.L188:
	.loc 1 595 0
	l32r	a2, .LC137
.LVL339:
	l8ui	a2, a2, 18
	beqz.n	a2, .L190
	.loc 1 596 0
	call8	btc_a2dp_source_setup_codec
.LVL340:
.L190:
	.loc 1 599 0
	call8	BTA_AvStart
.LVL341:
	.loc 1 600 0
	l32r	a3, .LC137
	l8ui	a8, a3, 16
	movi.n	a2, 4
	or	a2, a8, a2
	s8i	a2, a3, 16
	.loc 1 711 0
	movi.n	a2, 1
	.loc 1 601 0
	retw.n
.LVL342:
.L181:
	.loc 1 607 0
	l8ui	a2, a3, 2
.LVL343:
	bnez.n	a2, .L191
	.loc 1 607 0 is_stmt 0 discriminator 1
	l8ui	a2, a3, 4
	bnez.n	a2, .L189
.L191:
	.loc 1 615 0 is_stmt 1
	l32r	a2, .LC137
	l8ui	a2, a2, 16
	bbsi	a2, 2, .L192
	.loc 1 616 0
	l32r	a2, .LC137
	l8ui	a2, a2, 18
	bnei	a2, 1, .L192
	.loc 1 618 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 0x1a
	call8	btc_dispatch_sm_event
.LVL344:
.L192:
	.loc 1 622 0
	l32r	a2, .LC137
	l8ui	a2, a2, 18
	bnei	a2, 1, .L193
	.loc 1 624 0
	l32r	a2, .LC137
	l8ui	a11, a2, 16
	.loc 1 623 0
	extui	a11, a11, 2, 1
	mov.n	a10, a3
	call8	btc_a2dp_on_started
.LVL345:
	beqz.n	a10, .L193
	.loc 1 626 0
	l32r	a8, .LC137
	l8ui	a9, a8, 16
	movi.n	a2, -5
	and	a2, a9, a2
	s8i	a2, a8, 16
.L193:
	.loc 1 631 0
	l8ui	a2, a3, 2
	bnez.n	a2, .L200
	.loc 1 635 0
	l32r	a2, .LC137
	l8ui	a2, a2, 18
	bnez.n	a2, .L194
	.loc 1 636 0
	movi.n	a10, 0
	call8	btc_a2dp_sink_set_rx_flush
.LVL346:
.L194:
	.loc 1 641 0
	l32r	a2, .LC137
	l8ui	a2, a2, 16
	bbci	a2, 2, .L195
	.loc 1 642 0
	l32r	a2, .LC137
	l8ui	a2, a2, 18
	bnei	a2, 1, .L195
	.loc 1 643 0
	movi.n	a11, 1
	movi.n	a10, 0
	call8	btc_a2dp_on_started
.LVL347:
.L195:
	.loc 1 648 0
	movi.n	a11, 3
	l32r	a2, .LC137
	l32i.n	a10, a2, 12
	call8	btc_sm_change_state
.LVL348:
	.loc 1 711 0
	movi.n	a2, 1
	.loc 1 650 0
	retw.n
.LVL349:
.L183:
	.loc 1 653 0
	l32r	a2, .LC137
.LVL350:
	l8ui	a10, a2, 4
	call8	BTA_AvClose
.LVL351:
	.loc 1 654 0
	l8ui	a2, a2, 18
	bnez.n	a2, .L196
	.loc 1 655 0
	l32r	a2, .LC137
	l8ui	a10, a2, 4
	call8	BTA_AvCloseRc
.LVL352:
.L196:
	.loc 1 659 0
	movi.n	a12, 0
	l32r	a11, .LC140
	movi.n	a10, 3
	call8	btc_report_connection_state
.LVL353:
	.loc 1 711 0
	movi.n	a2, 1
	.loc 1 660 0
	retw.n
.LVL354:
.L180:
.LBB32:
	.loc 1 664 0
	movi.n	a10, 0
	call8	btc_a2dp_on_stopped
.LVL355:
	.loc 1 668 0
	l8ui	a12, a3, 2
	l32r	a11, .LC140
	movi.n	a10, 0
	call8	btc_report_connection_state
.LVL356:
	.loc 1 672 0
	l32r	a2, .LC137
.LVL357:
	l8ui	a2, a2, 16
	bbci	a2, 2, .L197
	.loc 1 673 0
	movi.n	a10, 1
	call8	btc_a2dp_control_command_ack
.LVL358:
.L197:
	.loc 1 676 0
	movi.n	a11, 0
	l32r	a2, .LC137
	l32i.n	a10, a2, 12
	call8	btc_sm_change_state
.LVL359:
.LBE32:
	.loc 1 711 0
	movi.n	a2, 1
.LBB33:
	.loc 1 677 0
	retw.n
.LVL360:
.L182:
.LBE33:
	.loc 1 681 0
	l32r	a2, .LC137
.LVL361:
	l8ui	a8, a2, 16
	movi.n	a2, 4
	and	a2, a8, a2
	beqz.n	a2, .L198
	.loc 1 682 0 discriminator 1
	l8ui	a3, a3, 2
.LVL362:
	.loc 1 681 0 discriminator 1
	bnez.n	a3, .L198
	.loc 1 683 0 discriminator 1
	call8	esp_log_timestamp
.LVL363:
	l32r	a11, .LC141
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC143
	movi.n	a10, 2
	call8	esp_log_write
.LVL364:
	.loc 1 684 0 discriminator 1
	call8	BTA_AvStart
.LVL365:
	.loc 1 711 0 discriminator 1
	movi.n	a2, 1
	.loc 1 684 0 discriminator 1
	retw.n
.L198:
	.loc 1 685 0
	beqz.n	a2, .L201
	.loc 1 686 0
	movi.n	a2, -5
	and	a8, a8, a2
	l32r	a2, .LC137
	s8i	a8, a2, 16
	.loc 1 687 0
	movi.n	a10, 1
	call8	btc_a2dp_control_command_ack
.LVL366:
	.loc 1 711 0
	movi.n	a2, 1
	retw.n
.LVL367:
.L185:
	.loc 1 692 0
	movi.n	a12, 6
	l32r	a11, .LC140
	mov.n	a10, a3
	call8	memcmp
.LVL368:
	beqz.n	a10, .L199
	.loc 1 697 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a12
	call8	btc_report_connection_state
.LVL369:
.L199:
	.loc 1 700 0
	call8	btc_queue_advance
.LVL370:
	.loc 1 711 0
	movi.n	a2, 1
.LVL371:
	.loc 1 701 0
	retw.n
.LVL372:
.L177:
	.loc 1 703 0
	mov.n	a11, a3
	extui	a10, a2, 0, 8
	call8	btc_rc_handler
.LVL373:
	.loc 1 711 0
	movi.n	a2, 1
.LVL374:
	.loc 1 703 0
	retw.n
.LVL375:
.L176:
	.loc 1 706 0 discriminator 1
	call8	esp_log_timestamp
.LVL376:
	mov.n	a3, a10
	mov.n	a10, a2
	call8	dump_av_sm_event_name
.LVL377:
	l32r	a11, .LC141
	s32i.n	a10, sp, 0
	l32r	a15, .LC144
	mov.n	a14, a11
	mov.n	a13, a3
	l32r	a12, .LC145
	movi.n	a10, 2
	call8	esp_log_write
.LVL378:
	.loc 1 708 0 discriminator 1
	movi.n	a2, 0
.LVL379:
	retw.n
.LVL380:
.L200:
	.loc 1 632 0
	movi.n	a2, 0
	retw.n
.LVL381:
.L201:
	.loc 1 711 0
	movi.n	a2, 1
.L189:
	.loc 1 712 0
	retw.n
.LFE35:
	.size	btc_av_state_opened_handler, .-btc_av_state_opened_handler
	.section	.rodata.str1.4
	.align	4
.LC149:
	.string	"\033[0;31mE (%d) %s: %s No connected RC peers\033[0m\n"
	.section	.text.btc_initiate_av_open_tmr_hdlr,"ax",@progbits
	.literal_position
	.literal .LC146, 4362
	.literal .LC147, __FUNCTION__$10431
	.literal .LC148, .LC70
	.literal .LC150, .LC149
	.align	4
	.type	btc_initiate_av_open_tmr_hdlr, @function
btc_initiate_av_open_tmr_hdlr:
.LFB29:
	.loc 1 225 0
.LVL382:
	entry	sp, 48
.LCFI25:
	.loc 1 230 0
	mov.n	a10, sp
	call8	btc_rc_get_connected_peer
.LVL383:
	beqz.n	a10, .L203
	.loc 1 233 0
	l16ui	a8, sp, 0
	s16i	a8, sp, 6
	l16ui	a8, sp, 2
	s16i	a8, sp, 8
	l16ui	a8, sp, 4
	s16i	a8, sp, 10
	.loc 1 234 0
	l32r	a2, .LC146
.LVL384:
	s16i	a2, sp, 12
	.loc 1 235 0
	movi.n	a12, 8
	addi.n	a11, sp, 6
	movi.n	a10, 0x16
	call8	btc_dispatch_sm_event
.LVL385:
	retw.n
.LVL386:
.L203:
	.loc 1 237 0 discriminator 1
	call8	esp_log_timestamp
.LVL387:
	l32r	a11, .LC148
	l32r	a15, .LC147
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC150
	movi.n	a10, 1
	call8	esp_log_write
.LVL388:
	retw.n
.LFE29:
	.size	btc_initiate_av_open_tmr_hdlr, .-btc_initiate_av_open_tmr_hdlr
	.section	.rodata.str1.4
	.align	4
.LC155:
	.string	"Advanced Audio"
	.section	.text.btc_av_execute_service,"ax",@progbits
	.literal_position
	.literal .LC151, bte_av_callback
	.literal .LC152, 33355
	.literal .LC153, bta_av_a2d_cos
	.literal .LC154, bte_av_media_callback
	.literal .LC156, .LC155
	.literal .LC157, btc_av_cb
	.align	4
	.global	btc_av_execute_service
	.type	btc_av_execute_service, @function
btc_av_execute_service:
.LFB48:
	.loc 1 1217 0
.LVL389:
	entry	sp, 32
.LCFI26:
	extui	a2, a2, 0, 8
	.loc 1 1218 0
	beqz.n	a2, .L206
	.loc 1 1226 0
	l32r	a12, .LC151
	l32r	a11, .LC152
	movi.n	a10, 0x12
	call8	BTA_AvEnable
.LVL390:
	.loc 1 1230 0
	l32r	a14, .LC153
	l32r	a13, .LC154
	movi.n	a12, 0
	l32r	a11, .LC156
	movi.n	a10, 0x40
	call8	BTA_AvRegister
.LVL391:
	j	.L207
.L206:
	.loc 1 1232 0
	l32r	a2, .LC157
.LVL392:
	l8ui	a10, a2, 4
	call8	BTA_AvDeregister
.LVL393:
	.loc 1 1233 0
	call8	BTA_AvDisable
.LVL394:
.L207:
	.loc 1 1236 0
	movi.n	a2, 0
	retw.n
.LFE48:
	.size	btc_av_execute_service, .-btc_av_execute_service
	.section	.text.btc_av_sink_execute_service,"ax",@progbits
	.align	4
	.global	btc_av_sink_execute_service
	.type	btc_av_sink_execute_service, @function
btc_av_sink_execute_service:
.LFB49:
	.loc 1 1248 0
.LVL395:
	entry	sp, 32
.LCFI27:
	.loc 1 1250 0
	extui	a10, a2, 0, 8
	call8	BTA_AvEnable_Sink
.LVL396:
	.loc 1 1253 0
	movi.n	a2, 0
.LVL397:
	retw.n
.LFE49:
	.size	btc_av_sink_execute_service, .-btc_av_sink_execute_service
	.section	.text.btc_av_is_connected,"ax",@progbits
	.literal_position
	.literal .LC158, btc_av_cb
	.align	4
	.global	btc_av_is_connected
	.type	btc_av_is_connected, @function
btc_av_is_connected:
.LFB50:
	.loc 1 1265 0
	entry	sp, 32
.LCFI28:
	.loc 1 1266 0
	l32r	a2, .LC158
	l32i.n	a10, a2, 12
	call8	btc_sm_get_state
.LVL398:
	.loc 1 1267 0
	addi	a10, a10, -2
.LVL399:
	movi.n	a2, 1
	bltui	a10, 2, .L210
	movi.n	a2, 0
.L210:
	.loc 1 1268 0
	extui	a2, a2, 0, 1
	retw.n
.LFE50:
	.size	btc_av_is_connected, .-btc_av_is_connected
	.section	.text.btc_av_get_service_id,"ax",@progbits
	.literal_position
	.literal .LC159, btc_av_cb
	.align	4
	.global	btc_av_get_service_id
	.type	btc_av_get_service_id, @function
btc_av_get_service_id:
.LFB51:
	.loc 1 1281 0
	entry	sp, 32
.LCFI29:
	.loc 1 1283 0
	l32r	a8, .LC159
	l8ui	a2, a8, 0
	retw.n
.LFE51:
	.size	btc_av_get_service_id, .-btc_av_get_service_id
	.section	.text.btc_av_get_peer_sep,"ax",@progbits
	.literal_position
	.literal .LC160, btc_av_cb
	.align	4
	.global	btc_av_get_peer_sep
	.type	btc_av_get_peer_sep, @function
btc_av_get_peer_sep:
.LFB52:
	.loc 1 1297 0
	entry	sp, 32
.LCFI30:
	.loc 1 1299 0
	l32r	a8, .LC160
	l8ui	a2, a8, 18
	retw.n
.LFE52:
	.size	btc_av_get_peer_sep, .-btc_av_get_peer_sep
	.section	.rodata.str1.4
	.align	4
.LC162:
	.string	"BT_LOG"
	.align	4
.LC164:
	.string	"\033[0;31mE (%d) %s: ### ASSERT : %s line %d %s (%d) ###\033[0m\n"
	.align	4
.LC166:
	.string	"No active a2dp connection\n"
	.section	.text.btc_av_is_peer_edr,"ax",@progbits
	.literal_position
	.literal .LC161, .LC63
	.literal .LC163, .LC162
	.literal .LC165, .LC164
	.literal .LC167, .LC166
	.literal .LC168, btc_av_cb
	.align	4
	.global	btc_av_is_peer_edr
	.type	btc_av_is_peer_edr, @function
btc_av_is_peer_edr:
.LFB53:
	.loc 1 1313 0
	entry	sp, 48
.LCFI31:
	.loc 1 1314 0
	call8	btc_av_is_connected
.LVL400:
	bnez.n	a10, .L214
	.loc 1 1314 0 is_stmt 0 discriminator 2
	call8	esp_log_timestamp
.LVL401:
	l32r	a11, .LC163
	movi.n	a2, 0
	s32i.n	a2, sp, 8
	l32r	a2, .LC167
	s32i.n	a2, sp, 4
	movi	a2, 0x522
	s32i.n	a2, sp, 0
	l32r	a15, .LC161
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC165
	movi.n	a10, 1
	call8	esp_log_write
.LVL402:
.L214:
	.loc 1 1316 0 is_stmt 1
	l32r	a2, .LC168
	l8ui	a2, a2, 17
	beqz.n	a2, .L216
	.loc 1 1317 0
	movi.n	a2, 1
	retw.n
.L216:
	.loc 1 1319 0
	movi.n	a2, 0
	.loc 1 1321 0
	retw.n
.LFE53:
	.size	btc_av_is_peer_edr, .-btc_av_is_peer_edr
	.section	.text.btc_av_clear_remote_suspend_flag,"ax",@progbits
	.literal_position
	.literal .LC169, btc_av_cb
	.align	4
	.global	btc_av_clear_remote_suspend_flag
	.type	btc_av_clear_remote_suspend_flag, @function
btc_av_clear_remote_suspend_flag:
.LFB54:
	.loc 1 1332 0
	entry	sp, 32
.LCFI32:
	.loc 1 1334 0
	l32r	a9, .LC169
	l8ui	a10, a9, 16
	movi.n	a8, -3
	and	a8, a10, a8
	s8i	a8, a9, 16
	retw.n
.LFE54:
	.size	btc_av_clear_remote_suspend_flag, .-btc_av_clear_remote_suspend_flag
	.section	.rodata.str1.4
	.align	4
.LC177:
	.string	"\033[0;33mW (%d) %s: %s : unhandled event: %d\n\033[0m\n"
	.section	.text.btc_a2dp_call_handler,"ax",@progbits
	.literal_position
	.literal .LC170, .L221
	.literal .LC171, btc_av_cb
	.literal .LC172, .LC122
	.literal .LC173, __func__$10653
	.literal .LC174, .LC63
	.literal .LC175, __FUNCTION__$10667
	.literal .LC176, .LC70
	.literal .LC178, .LC177
	.align	4
	.global	btc_a2dp_call_handler
	.type	btc_a2dp_call_handler, @function
btc_a2dp_call_handler:
.LFB55:
	.loc 1 1338 0
.LVL403:
	entry	sp, 48
.LCFI33:
	.loc 1 1339 0
	l32i.n	a10, a2, 4
.LVL404:
	.loc 1 1340 0
	l8ui	a11, a2, 3
	movi.n	a8, 0x1b
	bltu	a8, a11, .L219
	l32r	a8, .LC170
	addx4	a8, a11, a8
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.btc_a2dp_call_handler,"a",@progbits
	.align	4
	.align	4
.L221:
	.word	.L220
	.word	.L222
	.word	.L223
	.word	.L224
	.word	.L225
	.word	.L226
	.word	.L227
	.word	.L228
	.word	.L229
	.word	.L230
	.word	.L231
	.word	.L232
	.word	.L219
	.word	.L219
	.word	.L219
	.word	.L219
	.word	.L219
	.word	.L219
	.word	.L219
	.word	.L219
	.word	.L219
	.word	.L219
	.word	.L233
	.word	.L219
	.word	.L234
	.word	.L234
	.word	.L234
	.word	.L235
	.section	.text.btc_a2dp_call_handler
.L235:
	.loc 1 1343 0
	mov.n	a12, a10
	l32r	a2, .LC171
.LVL405:
	l32i.n	a10, a2, 12
.LVL406:
	call8	btc_sm_dispatch
.LVL407:
	.loc 1 1344 0
	retw.n
.LVL408:
.L220:
	.loc 1 1347 0
	call8	btc_a2d_sink_init
.LVL409:
	.loc 1 1349 0
	retw.n
.LVL410:
.L222:
	.loc 1 1352 0
	call8	btc_a2d_sink_deinit
.LVL411:
	.loc 1 1354 0
	retw.n
.LVL412:
.L223:
	.loc 1 1357 0
	call8	btc_a2d_sink_connect
.LVL413:
	.loc 1 1359 0
	retw.n
.LVL414:
.L224:
	.loc 1 1362 0
	l32r	a2, .LC171
.LVL415:
	l32i.n	a10, a2, 12
.LVL416:
	.loc 1 1362 0
	bnez.n	a10, .L237
	.loc 1 1362 0 is_stmt 0 discriminator 1
	l32r	a13, .LC172
	l32r	a12, .LC173
	movi	a11, 0x552
	l32r	a10, .LC174
	call8	__assert_func
.LVL417:
.L237:
	.loc 1 1363 0 is_stmt 1
	movi.n	a12, 0
	movi.n	a11, 0x17
	call8	btc_sm_dispatch
.LVL418:
	.loc 1 1364 0
	retw.n
.LVL419:
.L225:
	.loc 1 1367 0
	l32i.n	a10, a10, 0
.LVL420:
	call8	btc_a2dp_sink_reg_data_cb
.LVL421:
	.loc 1 1368 0
	retw.n
.LVL422:
.L226:
	.loc 1 1373 0
	call8	btc_a2d_src_init
.LVL423:
	.loc 1 1374 0
	retw.n
.LVL424:
.L227:
	.loc 1 1377 0
	call8	btc_a2d_src_deinit
.LVL425:
	.loc 1 1378 0
	retw.n
.LVL426:
.L228:
	.loc 1 1381 0
	call8	btc_a2d_src_connect
.LVL427:
	.loc 1 1382 0
	retw.n
.LVL428:
.L229:
	.loc 1 1385 0
	l32r	a2, .LC171
.LVL429:
	l32i.n	a10, a2, 12
.LVL430:
	.loc 1 1385 0
	bnez.n	a10, .L238
	.loc 1 1385 0 is_stmt 0 discriminator 1
	l32r	a13, .LC172
	l32r	a12, .LC173
	movi	a11, 0x569
	l32r	a10, .LC174
	call8	__assert_func
.LVL431:
.L238:
	.loc 1 1386 0 is_stmt 1
	movi.n	a12, 0
	movi.n	a11, 0x17
	call8	btc_sm_dispatch
.LVL432:
	.loc 1 1387 0
	retw.n
.LVL433:
.L230:
	.loc 1 1390 0
	l32i.n	a10, a10, 0
.LVL434:
	call8	btc_a2dp_src_reg_data_cb
.LVL435:
	.loc 1 1391 0
	retw.n
.LVL436:
.L231:
	.loc 1 1395 0
	l32i.n	a10, a10, 0
.LVL437:
	call8	btc_a2dp_control_media_ctrl
.LVL438:
	.loc 1 1396 0
	retw.n
.LVL439:
.L232:
	.loc 1 1399 0
	l32i.n	a10, a10, 0
.LVL440:
	call8	btc_a2dp_control_datapath_ctrl
.LVL441:
	.loc 1 1400 0
	retw.n
.LVL442:
.L233:
	.loc 1 1403 0
	mov.n	a12, a10
	l32r	a2, .LC171
.LVL443:
	l32i.n	a10, a2, 12
.LVL444:
	call8	btc_sm_dispatch
.LVL445:
	.loc 1 1404 0
	retw.n
.LVL446:
.L234:
	.loc 1 1409 0
	movi.n	a12, 0
	l32r	a2, .LC171
.LVL447:
	l32i.n	a10, a2, 12
.LVL448:
	call8	btc_sm_dispatch
.LVL449:
	.loc 1 1410 0
	retw.n
.LVL450:
.L219:
	.loc 1 1413 0 discriminator 1
	call8	esp_log_timestamp
.LVL451:
	l8ui	a2, a2, 3
.LVL452:
	l32r	a11, .LC176
	s32i.n	a2, sp, 0
	l32r	a15, .LC175
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC178
	movi.n	a10, 2
	call8	esp_log_write
.LVL453:
	retw.n
.LFE55:
	.size	btc_a2dp_call_handler, .-btc_a2dp_call_handler
	.section	.text.btc_a2dp_cb_handler,"ax",@progbits
	.literal_position
	.literal .LC179, btc_av_cb
	.align	4
	.global	btc_a2dp_cb_handler
	.type	btc_a2dp_cb_handler, @function
btc_a2dp_cb_handler:
.LFB56:
	.loc 1 1418 0
.LVL454:
	entry	sp, 32
.LCFI34:
	.loc 1 1419 0
	l32i.n	a12, a2, 4
	l8ui	a11, a2, 3
	l32r	a8, .LC179
	l32i.n	a10, a8, 12
	call8	btc_sm_dispatch
.LVL455:
	.loc 1 1420 0
	l32i.n	a11, a2, 4
	l8ui	a10, a2, 3
	call8	btc_av_event_free_data
.LVL456:
	retw.n
.LFE56:
	.size	btc_a2dp_cb_handler, .-btc_a2dp_cb_handler
	.section	.rodata.__func__$10694,"a",@progbits
	.align	4
	.type	__func__$10694, @object
	.size	__func__$10694, 20
__func__$10694:
	.string	"btc_a2d_src_connect"
	.section	.rodata.__func__$10679,"a",@progbits
	.align	4
	.type	__func__$10679, @object
	.size	__func__$10679, 21
__func__$10679:
	.string	"btc_a2d_sink_connect"
	.section	.rodata.__FUNCTION__$10431,"a",@progbits
	.align	4
	.type	__FUNCTION__$10431, @object
	.size	__FUNCTION__$10431, 30
__FUNCTION__$10431:
	.string	"btc_initiate_av_open_tmr_hdlr"
	.section	.rodata.__FUNCTION__$10447,"a",@progbits
	.align	4
	.type	__FUNCTION__$10447, @object
	.size	__FUNCTION__$10447, 26
__FUNCTION__$10447:
	.string	"btc_av_state_idle_handler"
	.section	.rodata.__FUNCTION__$10467,"a",@progbits
	.align	4
	.type	__FUNCTION__$10467, @object
	.size	__FUNCTION__$10467, 29
__FUNCTION__$10467:
	.string	"btc_av_state_opening_handler"
	.section	.rodata.__FUNCTION__$10508,"a",@progbits
	.align	4
	.type	__FUNCTION__$10508, @object
	.size	__FUNCTION__$10508, 28
__FUNCTION__$10508:
	.string	"btc_av_state_opened_handler"
	.section	.rodata.__FUNCTION__$10533,"a",@progbits
	.align	4
	.type	__FUNCTION__$10533, @object
	.size	__FUNCTION__$10533, 29
__FUNCTION__$10533:
	.string	"btc_av_state_started_handler"
	.section	.rodata.__FUNCTION__$10493,"a",@progbits
	.align	4
	.type	__FUNCTION__$10493, @object
	.size	__FUNCTION__$10493, 29
__FUNCTION__$10493:
	.string	"btc_av_state_closing_handler"
	.section	.rodata.__FUNCTION__$10667,"a",@progbits
	.align	4
	.type	__FUNCTION__$10667, @object
	.size	__FUNCTION__$10667, 22
__FUNCTION__$10667:
	.string	"btc_a2dp_call_handler"
	.section	.rodata.__func__$10653,"a",@progbits
	.align	4
	.type	__func__$10653, @object
	.size	__func__$10653, 22
__func__$10653:
	.string	"btc_a2dp_call_handler"
	.section	.rodata.__func__$10609,"a",@progbits
	.align	4
	.type	__func__$10609, @object
	.size	__func__$10609, 16
__func__$10609:
	.string	"bte_av_callback"
	.section	.rodata.__func__$10561,"a",@progbits
	.align	4
	.type	__func__$10561, @object
	.size	__func__$10561, 23
__func__$10561:
	.string	"btc_av_event_deep_copy"
	.section	.rodata.btc_av_state_handlers,"a",@progbits
	.align	4
	.type	btc_av_state_handlers, @object
	.size	btc_av_state_handlers, 20
btc_av_state_handlers:
	.word	btc_av_state_idle_handler
	.word	btc_av_state_opening_handler
	.word	btc_av_state_opened_handler
	.word	btc_av_state_started_handler
	.word	btc_av_state_closing_handler
	.section	.bss.tle_av_open_on_rc,"aw",@nobits
	.align	4
	.type	tle_av_open_on_rc, @object
	.size	tle_av_open_on_rc, 4
tle_av_open_on_rc:
	.zero	4
	.section	.bss.btc_av_cb,"aw",@nobits
	.align	4
	.type	btc_av_cb, @object
	.size	btc_av_cb, 20
btc_av_cb:
	.zero	20
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
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI1-.LFB37
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
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI3-.LFB46
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI4-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI5-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI6-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI7-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI8-.LFB30
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI9-.LFB34
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI11-.LFB36
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI12-.LFB33
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI13-.LFB32
	.byte	0xe
	.uleb128 0x30
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
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI15-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI16-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI17-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI18-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI19-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI20-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI21-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI22-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI23-.LFB45
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI24-.LFB35
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI25-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI26-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI27-.LFB49
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI28-.LFB50
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI29-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI30-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI31-.LFB53
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI32-.LFB54
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI33-.LFB55
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI34-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE68:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avrc_defs.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/a2d_api.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_api.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_defs.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_a2dp_api.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_sm.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_av.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/a2d_sbc.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/alarm.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_sink.h"
	.file 21 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_source.h"
	.file 22 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_dm.h"
	.file 23 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp.h"
	.file 24 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_manage.h"
	.file 25 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_avrc.h"
	.file 26 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_profile_queue.h"
	.file 27 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 28 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_control.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x34c4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF464
	.byte	0xc
	.4byte	.LASF465
	.4byte	.LASF466
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.byte	0x3
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
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
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x21
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x22
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x23
	.4byte	0xaa
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x2
	.byte	0x29
	.4byte	0xe1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x8
	.byte	0x2
	.byte	0xc6
	.4byte	0x12d
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x2
	.byte	0xc7
	.4byte	0x94
	.byte	0
	.uleb128 0x7
	.string	"len"
	.byte	0x2
	.byte	0xc8
	.4byte	0x94
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x2
	.byte	0xc9
	.4byte	0x94
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x2
	.byte	0xca
	.4byte	0x94
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x2
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
	.byte	0x2
	.byte	0xcc
	.4byte	0xe8
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x132
	.4byte	0x15a
	.uleb128 0x8
	.4byte	0xb5
	.4byte	0x16a
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xb5
	.uleb128 0xc
	.byte	0x4
	.4byte	0x17d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.uleb128 0xd
	.4byte	0x176
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF28
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF29
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0x6
	.byte	0x1f
	.4byte	0x1c3
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x6
	.byte	0x5
	.byte	0x3b
	.4byte	0x1d8
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3c
	.4byte	0x1d8
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x1e8
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x3d
	.4byte	0x1c3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0x5
	.byte	0x48
	.4byte	0x26c
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0xf
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x5
	.byte	0x5b
	.4byte	0x1f3
	.uleb128 0xc
	.byte	0x4
	.4byte	0x143
	.uleb128 0x8
	.4byte	0xb5
	.4byte	0x28d
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.2byte	0x2f7
	.4byte	0x2cb
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x2f8
	.4byte	0xb5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x2f9
	.4byte	0xb5
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x2fa
	.4byte	0xb5
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x2fd
	.4byte	0xb5
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x2fe
	.4byte	0x28d
	.uleb128 0x11
	.byte	0xc
	.byte	0x7
	.2byte	0x301
	.4byte	0x315
	.uleb128 0x13
	.string	"hdr"
	.byte	0x7
	.2byte	0x302
	.4byte	0x2cb
	.byte	0
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x303
	.4byte	0xcb
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x304
	.4byte	0xb5
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x305
	.4byte	0xb5
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x306
	.4byte	0x2d7
	.uleb128 0x11
	.byte	0xa
	.byte	0x7
	.2byte	0x309
	.4byte	0x35f
	.uleb128 0x13
	.string	"hdr"
	.byte	0x7
	.2byte	0x30a
	.4byte	0x2cb
	.byte	0
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x30b
	.4byte	0x27d
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x30d
	.4byte	0xd6
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x30f
	.4byte	0xb5
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x312
	.4byte	0x321
	.uleb128 0x11
	.byte	0x10
	.byte	0x7
	.2byte	0x315
	.4byte	0x3a9
	.uleb128 0x13
	.string	"hdr"
	.byte	0x7
	.2byte	0x316
	.4byte	0x2cb
	.byte	0
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x317
	.4byte	0xcb
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x318
	.4byte	0x16a
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x319
	.4byte	0xc0
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x31a
	.4byte	0x36b
	.uleb128 0x11
	.byte	0x10
	.byte	0x7
	.2byte	0x31d
	.4byte	0x400
	.uleb128 0x13
	.string	"hdr"
	.byte	0x7
	.2byte	0x31e
	.4byte	0x2cb
	.byte	0
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x321
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x322
	.4byte	0xb5
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x323
	.4byte	0x16a
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x325
	.4byte	0xb5
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x327
	.4byte	0x3b5
	.uleb128 0x11
	.byte	0x10
	.byte	0x7
	.2byte	0x32e
	.4byte	0x44a
	.uleb128 0x13
	.string	"hdr"
	.byte	0x7
	.2byte	0x32f
	.4byte	0x2cb
	.byte	0
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x332
	.4byte	0x16a
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x333
	.4byte	0xc0
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x334
	.4byte	0x277
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x335
	.4byte	0x40c
	.uleb128 0x14
	.byte	0x10
	.byte	0x7
	.2byte	0x338
	.4byte	0x4a8
	.uleb128 0x15
	.string	"hdr"
	.byte	0x7
	.2byte	0x339
	.4byte	0x2cb
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x33a
	.4byte	0x315
	.uleb128 0x15
	.string	"sub"
	.byte	0x7
	.2byte	0x33b
	.4byte	0x35f
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x33c
	.4byte	0x3a9
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x33d
	.4byte	0x400
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x33e
	.4byte	0x44a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x33f
	.4byte	0x456
	.uleb128 0xc
	.byte	0x4
	.4byte	0xcb
	.uleb128 0xc
	.byte	0x4
	.4byte	0x4a8
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x8
	.byte	0x58
	.4byte	0xb5
	.uleb128 0x17
	.byte	0x4
	.4byte	0x74
	.byte	0x9
	.2byte	0x1c0
	.4byte	0x5f3
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0xf
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x11
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x12
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x13
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x14
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x15
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x16
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x17
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x19
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x1a
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x1b
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x1c
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x1d
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x1e
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x1f
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x20
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x21
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0x22
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x23
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0x24
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0x25
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0x26
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x27
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x28
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x29
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x2a
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x2b
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x2c
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x2d
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0x2e
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.4byte	0x74
	.byte	0x9
	.2byte	0x6ea
	.4byte	0x62b
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0xa
	.byte	0x36
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0xa
	.byte	0x49
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0xa
	.byte	0x4f
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0xa
	.byte	0x53
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0xa
	.byte	0x7d
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0xa
	.byte	0xc1
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xa
	.byte	0xc7
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0xa
	.byte	0xdb
	.4byte	0xb5
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xa
	.byte	0xe4
	.4byte	0xb5
	.uleb128 0xa
	.4byte	.LASF149
	.byte	0xa
	.2byte	0x105
	.4byte	0x6a0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x6a6
	.uleb128 0x18
	.4byte	0xd6
	.4byte	0x6c9
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0xb5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x107
	.4byte	0x6d5
	.uleb128 0xc
	.byte	0x4
	.4byte	0x6db
	.uleb128 0x1a
	.4byte	0x6ff
	.uleb128 0x19
	.4byte	0x652
	.uleb128 0x19
	.4byte	0xb5
	.uleb128 0x19
	.4byte	0xb5
	.uleb128 0x19
	.4byte	0xb5
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0xc0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF151
	.byte	0xa
	.2byte	0x109
	.4byte	0x70b
	.uleb128 0xc
	.byte	0x4
	.4byte	0x711
	.uleb128 0x18
	.4byte	0xb5
	.4byte	0x73e
	.uleb128 0x19
	.4byte	0x652
	.uleb128 0x19
	.4byte	0x65d
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0xb5
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0x16a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF152
	.byte	0xa
	.2byte	0x10c
	.4byte	0x74a
	.uleb128 0xc
	.byte	0x4
	.4byte	0x750
	.uleb128 0x1a
	.4byte	0x783
	.uleb128 0x19
	.4byte	0x652
	.uleb128 0x19
	.4byte	0x65d
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0xb5
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0xb5
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0xb5
	.uleb128 0x19
	.4byte	0xb5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF153
	.byte	0xa
	.2byte	0x110
	.4byte	0x78f
	.uleb128 0xc
	.byte	0x4
	.4byte	0x795
	.uleb128 0x1a
	.4byte	0x7af
	.uleb128 0x19
	.4byte	0x652
	.uleb128 0x19
	.4byte	0x65d
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0xc0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF154
	.byte	0xa
	.2byte	0x113
	.4byte	0x7bb
	.uleb128 0xc
	.byte	0x4
	.4byte	0x7c1
	.uleb128 0x1a
	.4byte	0x7d6
	.uleb128 0x19
	.4byte	0x652
	.uleb128 0x19
	.4byte	0x65d
	.uleb128 0x19
	.4byte	0xc0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF155
	.byte	0xa
	.2byte	0x114
	.4byte	0x7e2
	.uleb128 0xc
	.byte	0x4
	.4byte	0x7e8
	.uleb128 0x1a
	.4byte	0x802
	.uleb128 0x19
	.4byte	0x652
	.uleb128 0x19
	.4byte	0x65d
	.uleb128 0x19
	.4byte	0x16a
	.uleb128 0x19
	.4byte	0x802
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xa
	.4byte	.LASF156
	.byte	0xa
	.2byte	0x115
	.4byte	0x814
	.uleb128 0xc
	.byte	0x4
	.4byte	0x81a
	.uleb128 0x1a
	.4byte	0x82a
	.uleb128 0x19
	.4byte	0x652
	.uleb128 0x19
	.4byte	0x65d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF157
	.byte	0xa
	.2byte	0x116
	.4byte	0x836
	.uleb128 0xc
	.byte	0x4
	.4byte	0x83c
	.uleb128 0x18
	.4byte	0x182
	.4byte	0x855
	.uleb128 0x19
	.4byte	0x65d
	.uleb128 0x19
	.4byte	0x4b4
	.uleb128 0x19
	.4byte	0x4b4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF158
	.byte	0xa
	.2byte	0x118
	.4byte	0x861
	.uleb128 0xc
	.byte	0x4
	.4byte	0x867
	.uleb128 0x1a
	.4byte	0x877
	.uleb128 0x19
	.4byte	0x652
	.uleb128 0x19
	.4byte	0xc0
	.byte	0
	.uleb128 0x11
	.byte	0x28
	.byte	0xa
	.2byte	0x11b
	.4byte	0x903
	.uleb128 0x12
	.4byte	.LASF159
	.byte	0xa
	.2byte	0x11c
	.4byte	0x694
	.byte	0
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x11d
	.4byte	0x6c9
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x11e
	.4byte	0x6ff
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x11f
	.4byte	0x73e
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x120
	.4byte	0x783
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x121
	.4byte	0x7af
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x122
	.4byte	0x7d6
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0xa
	.2byte	0x123
	.4byte	0x808
	.byte	0x1c
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0xa
	.2byte	0x124
	.4byte	0x82a
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0xa
	.2byte	0x125
	.4byte	0x855
	.byte	0x24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF168
	.byte	0xa
	.2byte	0x126
	.4byte	0x877
	.uleb128 0xa
	.4byte	.LASF169
	.byte	0xa
	.2byte	0x128
	.4byte	0xb5
	.uleb128 0x11
	.byte	0x2
	.byte	0xa
	.2byte	0x12b
	.4byte	0x932
	.uleb128 0x12
	.4byte	.LASF170
	.byte	0xa
	.2byte	0x12c
	.4byte	0x63c
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF171
	.byte	0xa
	.2byte	0x12d
	.4byte	0x91b
	.uleb128 0x11
	.byte	0x8
	.byte	0xa
	.2byte	0x130
	.4byte	0x989
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x131
	.4byte	0x647
	.byte	0
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x132
	.4byte	0x652
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF174
	.byte	0xa
	.2byte	0x133
	.4byte	0xb5
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x134
	.4byte	0x631
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF176
	.byte	0xa
	.2byte	0x135
	.4byte	0x989
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x903
	.uleb128 0xa
	.4byte	.LASF177
	.byte	0xa
	.2byte	0x136
	.4byte	0x93e
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0xa
	.2byte	0x13b
	.4byte	0xb5
	.uleb128 0x11
	.byte	0xc
	.byte	0xa
	.2byte	0x13d
	.4byte	0xa0c
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x13e
	.4byte	0x647
	.byte	0
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x13f
	.4byte	0x652
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0xa
	.2byte	0x140
	.4byte	0x14e
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x141
	.4byte	0x631
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF180
	.byte	0xa
	.2byte	0x142
	.4byte	0xd6
	.byte	0x9
	.uleb128 0x13
	.string	"edr"
	.byte	0xa
	.2byte	0x143
	.4byte	0x99b
	.byte	0xa
	.uleb128 0x13
	.string	"sep"
	.byte	0xa
	.2byte	0x144
	.4byte	0xb5
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0xa
	.2byte	0x145
	.4byte	0x9a7
	.uleb128 0x11
	.byte	0x3
	.byte	0xa
	.2byte	0x148
	.4byte	0xa49
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x149
	.4byte	0x647
	.byte	0
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x14a
	.4byte	0x652
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF182
	.byte	0xa
	.2byte	0x14b
	.4byte	0xb5
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0xa
	.2byte	0x14c
	.4byte	0xa18
	.uleb128 0x11
	.byte	0x5
	.byte	0xa
	.2byte	0x14f
	.4byte	0xaa0
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x150
	.4byte	0x647
	.byte	0
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x151
	.4byte	0x652
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x152
	.4byte	0x631
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0xa
	.2byte	0x153
	.4byte	0xd6
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF185
	.byte	0xa
	.2byte	0x154
	.4byte	0xd6
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0xa
	.2byte	0x155
	.4byte	0xa55
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.2byte	0x158
	.4byte	0xaea
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x159
	.4byte	0x647
	.byte	0
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x15a
	.4byte	0x652
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF184
	.byte	0xa
	.2byte	0x15b
	.4byte	0xd6
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x15c
	.4byte	0x631
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0xa
	.2byte	0x15d
	.4byte	0xaac
	.uleb128 0x11
	.byte	0x3
	.byte	0xa
	.2byte	0x160
	.4byte	0xb27
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x161
	.4byte	0x647
	.byte	0
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x162
	.4byte	0x652
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x163
	.4byte	0x631
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0xa
	.2byte	0x164
	.4byte	0xaf6
	.uleb128 0x11
	.byte	0xc
	.byte	0xa
	.2byte	0x167
	.4byte	0xb71
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x168
	.4byte	0x647
	.byte	0
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x169
	.4byte	0x652
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0xa
	.2byte	0x16a
	.4byte	0x16a
	.byte	0x4
	.uleb128 0x13
	.string	"len"
	.byte	0xa
	.2byte	0x16b
	.4byte	0xc0
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0xa
	.2byte	0x16c
	.4byte	0xb33
	.uleb128 0x11
	.byte	0xc
	.byte	0xa
	.2byte	0x16f
	.4byte	0xbc8
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x170
	.4byte	0x647
	.byte	0
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x171
	.4byte	0x652
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0xa
	.2byte	0x172
	.4byte	0x16a
	.byte	0x4
	.uleb128 0x13
	.string	"len"
	.byte	0xa
	.2byte	0x173
	.4byte	0xc0
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF191
	.byte	0xa
	.2byte	0x174
	.4byte	0x689
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0xa
	.2byte	0x175
	.4byte	0xb7d
	.uleb128 0x11
	.byte	0xc
	.byte	0xa
	.2byte	0x178
	.4byte	0xc1f
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xa
	.2byte	0x179
	.4byte	0xb5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF194
	.byte	0xa
	.2byte	0x17a
	.4byte	0xd6
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0xa
	.2byte	0x17b
	.4byte	0x63c
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF196
	.byte	0xa
	.2byte	0x17c
	.4byte	0x14e
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0xa
	.2byte	0x17d
	.4byte	0x631
	.byte	0xa
	.byte	0
	.uleb128 0xa
	.4byte	.LASF197
	.byte	0xa
	.2byte	0x17e
	.4byte	0xbd4
	.uleb128 0x11
	.byte	0x7
	.byte	0xa
	.2byte	0x181
	.4byte	0xc4f
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xa
	.2byte	0x182
	.4byte	0xb5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF196
	.byte	0xa
	.2byte	0x183
	.4byte	0x14e
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF198
	.byte	0xa
	.2byte	0x184
	.4byte	0xc2b
	.uleb128 0x11
	.byte	0x4
	.byte	0xa
	.2byte	0x187
	.4byte	0xc7f
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xa
	.2byte	0x188
	.4byte	0xb5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0xa
	.2byte	0x189
	.4byte	0x63c
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF199
	.byte	0xa
	.2byte	0x18a
	.4byte	0xc5b
	.uleb128 0x11
	.byte	0x10
	.byte	0xa
	.2byte	0x18d
	.4byte	0xcf0
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xa
	.2byte	0x18e
	.4byte	0xb5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0xa
	.2byte	0x18f
	.4byte	0x668
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0xa
	.2byte	0x190
	.4byte	0x673
	.byte	0x2
	.uleb128 0x13
	.string	"len"
	.byte	0xa
	.2byte	0x191
	.4byte	0xb5
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0xa
	.2byte	0x192
	.4byte	0x16a
	.byte	0x4
	.uleb128 0x13
	.string	"hdr"
	.byte	0xa
	.2byte	0x193
	.4byte	0x2cb
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0xa
	.2byte	0x194
	.4byte	0xb5
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0xa
	.2byte	0x195
	.4byte	0xc8b
	.uleb128 0x11
	.byte	0xc
	.byte	0xa
	.2byte	0x198
	.4byte	0xd61
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xa
	.2byte	0x199
	.4byte	0xb5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0xa
	.2byte	0x19a
	.4byte	0x668
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0xa
	.2byte	0x19b
	.4byte	0x673
	.byte	0x2
	.uleb128 0x13
	.string	"len"
	.byte	0xa
	.2byte	0x19c
	.4byte	0xb5
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0xa
	.2byte	0x19d
	.4byte	0x16a
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF204
	.byte	0xa
	.2byte	0x19e
	.4byte	0x67e
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0xa
	.2byte	0x19f
	.4byte	0xb5
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0xa
	.2byte	0x1a0
	.4byte	0xcfc
	.uleb128 0x11
	.byte	0x10
	.byte	0xa
	.2byte	0x1a3
	.4byte	0xdc5
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xa
	.2byte	0x1a4
	.4byte	0xb5
	.byte	0
	.uleb128 0x13
	.string	"len"
	.byte	0xa
	.2byte	0x1a5
	.4byte	0xc0
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0xa
	.2byte	0x1a6
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF206
	.byte	0xa
	.2byte	0x1a7
	.4byte	0x67e
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x1a8
	.4byte	0xcb
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0xa
	.2byte	0x1a9
	.4byte	0x16a
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0xa
	.2byte	0x1aa
	.4byte	0xd6d
	.uleb128 0x11
	.byte	0x14
	.byte	0xa
	.2byte	0x1ad
	.4byte	0xe36
	.uleb128 0x12
	.4byte	.LASF193
	.byte	0xa
	.2byte	0x1ae
	.4byte	0xb5
	.byte	0
	.uleb128 0x13
	.string	"len"
	.byte	0xa
	.2byte	0x1af
	.4byte	0xc0
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0xa
	.2byte	0x1b0
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF206
	.byte	0xa
	.2byte	0x1b1
	.4byte	0x67e
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0xa
	.2byte	0x1b2
	.4byte	0xcb
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF189
	.byte	0xa
	.2byte	0x1b3
	.4byte	0x16a
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF208
	.byte	0xa
	.2byte	0x1b4
	.4byte	0x4ba
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.4byte	.LASF209
	.byte	0xa
	.2byte	0x1b5
	.4byte	0xdd1
	.uleb128 0x11
	.byte	0x6
	.byte	0xa
	.2byte	0x1b8
	.4byte	0xe59
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0xa
	.2byte	0x1b9
	.4byte	0x14e
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0xa
	.2byte	0x1ba
	.4byte	0xe42
	.uleb128 0x11
	.byte	0x7
	.byte	0xa
	.2byte	0x1bd
	.4byte	0xe89
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0xa
	.2byte	0x1be
	.4byte	0x14e
	.byte	0
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xa
	.2byte	0x1bf
	.4byte	0x652
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF211
	.byte	0xa
	.2byte	0x1c0
	.4byte	0xe65
	.uleb128 0x14
	.byte	0x14
	.byte	0xa
	.2byte	0x1c4
	.4byte	0xf8f
	.uleb128 0x16
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x1c5
	.4byte	0x647
	.uleb128 0x16
	.4byte	.LASF212
	.byte	0xa
	.2byte	0x1c6
	.4byte	0x932
	.uleb128 0x16
	.4byte	.LASF213
	.byte	0xa
	.2byte	0x1c7
	.4byte	0x98f
	.uleb128 0x16
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x1c8
	.4byte	0xa0c
	.uleb128 0x16
	.4byte	.LASF164
	.byte	0xa
	.2byte	0x1c9
	.4byte	0xa49
	.uleb128 0x16
	.4byte	.LASF165
	.byte	0xa
	.2byte	0x1ca
	.4byte	0xaa0
	.uleb128 0x16
	.4byte	.LASF214
	.byte	0xa
	.2byte	0x1cb
	.4byte	0xb71
	.uleb128 0x16
	.4byte	.LASF215
	.byte	0xa
	.2byte	0x1cc
	.4byte	0xbc8
	.uleb128 0x16
	.4byte	.LASF216
	.byte	0xa
	.2byte	0x1cd
	.4byte	0xc1f
	.uleb128 0x16
	.4byte	.LASF217
	.byte	0xa
	.2byte	0x1ce
	.4byte	0xc4f
	.uleb128 0x16
	.4byte	.LASF218
	.byte	0xa
	.2byte	0x1cf
	.4byte	0xcf0
	.uleb128 0x16
	.4byte	.LASF219
	.byte	0xa
	.2byte	0x1d0
	.4byte	0xd61
	.uleb128 0x16
	.4byte	.LASF220
	.byte	0xa
	.2byte	0x1d1
	.4byte	0xdc5
	.uleb128 0x16
	.4byte	.LASF221
	.byte	0xa
	.2byte	0x1d2
	.4byte	0xdc5
	.uleb128 0x16
	.4byte	.LASF222
	.byte	0xa
	.2byte	0x1d3
	.4byte	0xb27
	.uleb128 0x16
	.4byte	.LASF223
	.byte	0xa
	.2byte	0x1d4
	.4byte	0xaea
	.uleb128 0x16
	.4byte	.LASF224
	.byte	0xa
	.2byte	0x1d5
	.4byte	0xe59
	.uleb128 0x16
	.4byte	.LASF225
	.byte	0xa
	.2byte	0x1d6
	.4byte	0xe36
	.uleb128 0x16
	.4byte	.LASF226
	.byte	0xa
	.2byte	0x1d7
	.4byte	0xe89
	.uleb128 0x16
	.4byte	.LASF227
	.byte	0xa
	.2byte	0x1d8
	.4byte	0xc7f
	.byte	0
	.uleb128 0xa
	.4byte	.LASF228
	.byte	0xa
	.2byte	0x1d9
	.4byte	0xe95
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x1dc
	.4byte	0xfbd
	.uleb128 0x16
	.4byte	.LASF189
	.byte	0xa
	.2byte	0x1dd
	.4byte	0x277
	.uleb128 0x16
	.4byte	.LASF229
	.byte	0xa
	.2byte	0x1de
	.4byte	0x16a
	.byte	0
	.uleb128 0xa
	.4byte	.LASF230
	.byte	0xa
	.2byte	0x1df
	.4byte	0xf9b
	.uleb128 0xc
	.byte	0x4
	.4byte	0xf8f
	.uleb128 0xc
	.byte	0x4
	.4byte	0xfbd
	.uleb128 0xc
	.byte	0x4
	.4byte	0xfdb
	.uleb128 0xd
	.4byte	0xb5
	.uleb128 0x1b
	.4byte	.LASF283
	.byte	0x8
	.byte	0xb
	.byte	0x17
	.4byte	0x1029
	.uleb128 0x7
	.string	"sig"
	.byte	0xb
	.byte	0x18
	.4byte	0x89
	.byte	0
	.uleb128 0x7
	.string	"aid"
	.byte	0xb
	.byte	0x19
	.4byte	0x89
	.byte	0x1
	.uleb128 0x7
	.string	"pid"
	.byte	0xb
	.byte	0x1a
	.4byte	0x89
	.byte	0x2
	.uleb128 0x7
	.string	"act"
	.byte	0xb
	.byte	0x1b
	.4byte	0x89
	.byte	0x3
	.uleb128 0x7
	.string	"arg"
	.byte	0xb
	.byte	0x1c
	.4byte	0x182
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF231
	.byte	0xb
	.byte	0x1d
	.4byte	0xfe0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0xb
	.byte	0x24
	.4byte	0x1053
	.uleb128 0x10
	.4byte	.LASF232
	.byte	0
	.uleb128 0x10
	.4byte	.LASF233
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF234
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0xb
	.byte	0x2a
	.4byte	0x10c0
	.uleb128 0x10
	.4byte	.LASF235
	.byte	0
	.uleb128 0x10
	.4byte	.LASF236
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF237
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF238
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF239
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF241
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF242
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF243
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF244
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF245
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF246
	.byte	0xb
	.uleb128 0x10
	.4byte	.LASF247
	.byte	0xc
	.uleb128 0x10
	.4byte	.LASF248
	.byte	0xd
	.uleb128 0x10
	.4byte	.LASF249
	.byte	0xe
	.uleb128 0x10
	.4byte	.LASF250
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1029
	.uleb128 0x3
	.4byte	.LASF251
	.byte	0xc
	.byte	0x69
	.4byte	0x1d8
	.uleb128 0x3
	.4byte	.LASF252
	.byte	0xd
	.byte	0x20
	.4byte	0x89
	.uleb128 0x1c
	.byte	0x7
	.byte	0xd
	.byte	0x29
	.4byte	0x1111
	.uleb128 0x1d
	.string	"sbc"
	.byte	0xd
	.byte	0x2a
	.4byte	0x1111
	.uleb128 0x1d
	.string	"m12"
	.byte	0xd
	.byte	0x2b
	.4byte	0x1111
	.uleb128 0x1d
	.string	"m24"
	.byte	0xd
	.byte	0x2c
	.4byte	0x1d8
	.uleb128 0x1e
	.4byte	.LASF253
	.byte	0xd
	.byte	0x2d
	.4byte	0x1121
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x1121
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x1131
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0xd
	.byte	0x23
	.4byte	0x1152
	.uleb128 0x6
	.4byte	.LASF254
	.byte	0xd
	.byte	0x24
	.4byte	0x10d1
	.byte	0
	.uleb128 0x7
	.string	"cie"
	.byte	0xd
	.byte	0x2e
	.4byte	0x10dc
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF255
	.byte	0xd
	.byte	0x2f
	.4byte	0x1131
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x32
	.4byte	0x1182
	.uleb128 0x10
	.4byte	.LASF256
	.byte	0
	.uleb128 0x10
	.4byte	.LASF257
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF258
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF259
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF260
	.byte	0xd
	.byte	0x37
	.4byte	0x115d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x3a
	.4byte	0x11a6
	.uleb128 0x10
	.4byte	.LASF261
	.byte	0
	.uleb128 0x10
	.4byte	.LASF262
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF263
	.byte	0xd
	.byte	0x3d
	.4byte	0x118d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x40
	.4byte	0x11d0
	.uleb128 0x10
	.4byte	.LASF264
	.byte	0
	.uleb128 0x10
	.4byte	.LASF265
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF266
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF267
	.byte	0xd
	.byte	0x44
	.4byte	0x11b1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x47
	.4byte	0x11fa
	.uleb128 0x10
	.4byte	.LASF268
	.byte	0
	.uleb128 0x10
	.4byte	.LASF269
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF270
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF271
	.byte	0xd
	.byte	0x4b
	.4byte	0x11db
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x4e
	.4byte	0x1230
	.uleb128 0x10
	.4byte	.LASF272
	.byte	0
	.uleb128 0x10
	.4byte	.LASF273
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF274
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF275
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF276
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF277
	.byte	0xd
	.byte	0x54
	.4byte	0x1205
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0xd
	.byte	0x57
	.4byte	0x1260
	.uleb128 0x10
	.4byte	.LASF278
	.byte	0
	.uleb128 0x10
	.4byte	.LASF279
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF280
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF281
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF282
	.byte	0xd
	.byte	0x5c
	.4byte	0x123b
	.uleb128 0x1b
	.4byte	.LASF284
	.byte	0x10
	.byte	0xd
	.byte	0x63
	.4byte	0x129c
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0xd
	.byte	0x64
	.4byte	0x1182
	.byte	0
	.uleb128 0x6
	.4byte	.LASF285
	.byte	0xd
	.byte	0x65
	.4byte	0x10c6
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0xd
	.byte	0x66
	.4byte	0x11a6
	.byte	0xc
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF286
	.byte	0xc
	.byte	0xd
	.byte	0x6c
	.4byte	0x12c1
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0xd
	.byte	0x6d
	.4byte	0x11d0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF285
	.byte	0xd
	.byte	0x6e
	.4byte	0x10c6
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF287
	.byte	0xe
	.byte	0xd
	.byte	0x74
	.4byte	0x12e6
	.uleb128 0x6
	.4byte	.LASF285
	.byte	0xd
	.byte	0x75
	.4byte	0x10c6
	.byte	0
	.uleb128 0x7
	.string	"mcc"
	.byte	0xd
	.byte	0x76
	.4byte	0x1152
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF288
	.byte	0x8
	.byte	0xd
	.byte	0x7c
	.4byte	0x130b
	.uleb128 0x7
	.string	"cmd"
	.byte	0xd
	.byte	0x7d
	.4byte	0x1230
	.byte	0
	.uleb128 0x6
	.4byte	.LASF175
	.byte	0xd
	.byte	0x7e
	.4byte	0x11fa
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.byte	0x10
	.byte	0xd
	.byte	0x5f
	.4byte	0x1340
	.uleb128 0x1e
	.4byte	.LASF289
	.byte	0xd
	.byte	0x67
	.4byte	0x126b
	.uleb128 0x1e
	.4byte	.LASF290
	.byte	0xd
	.byte	0x6f
	.4byte	0x129c
	.uleb128 0x1e
	.4byte	.LASF291
	.byte	0xd
	.byte	0x77
	.4byte	0x12c1
	.uleb128 0x1e
	.4byte	.LASF292
	.byte	0xd
	.byte	0x7f
	.4byte	0x12e6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF293
	.byte	0xd
	.byte	0x80
	.4byte	0x130b
	.uleb128 0x3
	.4byte	.LASF294
	.byte	0xd
	.byte	0x89
	.4byte	0x1356
	.uleb128 0xc
	.byte	0x4
	.4byte	0x135c
	.uleb128 0x1a
	.4byte	0x136c
	.uleb128 0x19
	.4byte	0x1260
	.uleb128 0x19
	.4byte	0x136c
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1340
	.uleb128 0x3
	.4byte	.LASF295
	.byte	0xd
	.byte	0x91
	.4byte	0x137d
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1383
	.uleb128 0x1a
	.4byte	0x1393
	.uleb128 0x19
	.4byte	0x1393
	.uleb128 0x19
	.4byte	0xaa
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1399
	.uleb128 0xd
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF296
	.byte	0xd
	.byte	0x9e
	.4byte	0x13a9
	.uleb128 0xc
	.byte	0x4
	.4byte	0x13af
	.uleb128 0x18
	.4byte	0x9f
	.4byte	0x13c3
	.uleb128 0x19
	.4byte	0x62b
	.uleb128 0x19
	.4byte	0x9f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF297
	.byte	0xe
	.byte	0x27
	.4byte	0xcb
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0xe
	.byte	0x28
	.4byte	0xcb
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0xe
	.byte	0x29
	.4byte	0x182
	.uleb128 0x3
	.4byte	.LASF300
	.byte	0xe
	.byte	0x2a
	.4byte	0x13ef
	.uleb128 0xc
	.byte	0x4
	.4byte	0x13f5
	.uleb128 0x18
	.4byte	0xd6
	.4byte	0x1409
	.uleb128 0x19
	.4byte	0x13ce
	.uleb128 0x19
	.4byte	0x182
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0xf
	.byte	0x2d
	.4byte	0x143a
	.uleb128 0x10
	.4byte	.LASF301
	.byte	0x16
	.uleb128 0x10
	.4byte	.LASF302
	.byte	0x17
	.uleb128 0x10
	.4byte	.LASF303
	.byte	0x18
	.uleb128 0x10
	.4byte	.LASF304
	.byte	0x19
	.uleb128 0x10
	.4byte	.LASF305
	.byte	0x1a
	.uleb128 0x10
	.4byte	.LASF306
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF307
	.byte	0xf
	.byte	0x34
	.4byte	0x1409
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0xf
	.byte	0x36
	.4byte	0x149a
	.uleb128 0x10
	.4byte	.LASF308
	.byte	0
	.uleb128 0x10
	.4byte	.LASF309
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF310
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF311
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF312
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF314
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF315
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF316
	.byte	0x8
	.uleb128 0x10
	.4byte	.LASF317
	.byte	0x9
	.uleb128 0x10
	.4byte	.LASF318
	.byte	0xa
	.uleb128 0x10
	.4byte	.LASF319
	.byte	0xb
	.byte	0
	.uleb128 0x1c
	.byte	0x8
	.byte	0xf
	.byte	0x4a
	.4byte	0x14f0
	.uleb128 0x1d
	.string	"mcc"
	.byte	0xf
	.byte	0x4d
	.4byte	0x1152
	.uleb128 0x1e
	.4byte	.LASF320
	.byte	0xf
	.byte	0x4f
	.4byte	0x1e8
	.uleb128 0x1e
	.4byte	.LASF321
	.byte	0xf
	.byte	0x51
	.4byte	0x1372
	.uleb128 0x1e
	.4byte	.LASF322
	.byte	0xf
	.byte	0x55
	.4byte	0x139e
	.uleb128 0x1e
	.4byte	.LASF323
	.byte	0xf
	.byte	0x57
	.4byte	0x1e8
	.uleb128 0x1e
	.4byte	.LASF324
	.byte	0xf
	.byte	0x5a
	.4byte	0x1230
	.uleb128 0x1e
	.4byte	.LASF325
	.byte	0xf
	.byte	0x5c
	.4byte	0xaa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF326
	.byte	0xf
	.byte	0x5d
	.4byte	0x149a
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1e8
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x1511
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.byte	0x7
	.byte	0x10
	.byte	0x4d
	.4byte	0x156e
	.uleb128 0x6
	.4byte	.LASF327
	.byte	0x10
	.byte	0x4e
	.4byte	0xb5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF328
	.byte	0x10
	.byte	0x4f
	.4byte	0xb5
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF329
	.byte	0x10
	.byte	0x50
	.4byte	0xb5
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF330
	.byte	0x10
	.byte	0x51
	.4byte	0xb5
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF331
	.byte	0x10
	.byte	0x52
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF332
	.byte	0x10
	.byte	0x53
	.4byte	0xb5
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF333
	.byte	0x10
	.byte	0x54
	.4byte	0xb5
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF334
	.byte	0x10
	.byte	0x55
	.4byte	0x1511
	.uleb128 0x3
	.4byte	.LASF335
	.byte	0x11
	.byte	0x19
	.4byte	0x1584
	.uleb128 0x1f
	.4byte	.LASF467
	.uleb128 0xf
	.byte	0x4
	.4byte	0x74
	.byte	0x1
	.byte	0x34
	.4byte	0x15b4
	.uleb128 0x10
	.4byte	.LASF336
	.byte	0
	.uleb128 0x10
	.4byte	.LASF337
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF338
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF339
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF340
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x14
	.byte	0x1
	.byte	0x4a
	.4byte	0x1611
	.uleb128 0x6
	.4byte	.LASF341
	.byte	0x1
	.byte	0x4b
	.4byte	0x62
	.byte	0
	.uleb128 0x6
	.4byte	.LASF342
	.byte	0x1
	.byte	0x4c
	.4byte	0x652
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF343
	.byte	0x1
	.byte	0x4d
	.4byte	0x1e8
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF344
	.byte	0x1
	.byte	0x4e
	.4byte	0x13d9
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF345
	.byte	0x1
	.byte	0x4f
	.4byte	0xb5
	.byte	0x10
	.uleb128 0x7
	.string	"edr"
	.byte	0x1
	.byte	0x50
	.4byte	0x99b
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF346
	.byte	0x1
	.byte	0x51
	.4byte	0xb5
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.4byte	.LASF347
	.byte	0x1
	.byte	0x52
	.4byte	0x15b4
	.uleb128 0x5
	.byte	0x8
	.byte	0x1
	.byte	0x54
	.4byte	0x163d
	.uleb128 0x6
	.4byte	.LASF348
	.byte	0x1
	.byte	0x55
	.4byte	0x1e8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF349
	.byte	0x1
	.byte	0x56
	.4byte	0x94
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF350
	.byte	0x1
	.byte	0x57
	.4byte	0x161c
	.uleb128 0x20
	.4byte	.LASF352
	.byte	0x1
	.byte	0x9a
	.byte	0x3
	.4byte	0x1676
	.uleb128 0x21
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9a
	.4byte	0x1260
	.uleb128 0x21
	.4byte	.LASF351
	.byte	0x1
	.byte	0x9a
	.4byte	0x136c
	.uleb128 0x22
	.4byte	.LASF354
	.byte	0x1
	.byte	0x9c
	.4byte	0x134b
	.byte	0
	.uleb128 0x23
	.4byte	.LASF353
	.byte	0x2
	.2byte	0x2dd
	.byte	0x3
	.4byte	0x16a2
	.uleb128 0x24
	.string	"a"
	.byte	0x2
	.2byte	0x2dd
	.4byte	0x16a
	.uleb128 0x24
	.string	"b"
	.byte	0x2
	.2byte	0x2dd
	.4byte	0xfd5
	.uleb128 0x25
	.string	"i"
	.byte	0x2
	.2byte	0x2df
	.4byte	0x62
	.byte	0
	.uleb128 0x26
	.4byte	.LASF366
	.byte	0x1
	.byte	0xae
	.4byte	0x170
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16cb
	.uleb128 0x27
	.4byte	.LASF20
	.byte	0x1
	.byte	0xae
	.4byte	0x143a
	.4byte	.LLST0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x377
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x184b
	.uleb128 0x29
	.string	"msg"
	.byte	0x1
	.2byte	0x377
	.4byte	0x10c0
	.4byte	.LLST1
	.uleb128 0x2a
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x377
	.4byte	0x182
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x377
	.4byte	0x182
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x379
	.4byte	0xfc9
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2b
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x37a
	.4byte	0xfc9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2c
	.4byte	.LASF359
	.4byte	0x185b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10561
	.uleb128 0x2d
	.4byte	.LVL60
	.4byte	0x3260
	.4byte	0x1757
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL62
	.4byte	0x3269
	.4byte	0x176a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL63
	.4byte	0x3274
	.4byte	0x179a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x383
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10561
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL64
	.4byte	0x3260
	.uleb128 0x2d
	.4byte	.LVL65
	.4byte	0x3269
	.4byte	0x17bb
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL66
	.4byte	0x3274
	.4byte	0x17eb
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x389
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10561
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL67
	.4byte	0x3260
	.4byte	0x17fe
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL68
	.4byte	0x3269
	.4byte	0x1811
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL69
	.4byte	0x3274
	.4byte	0x1841
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x390
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10561
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL70
	.4byte	0x3260
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x185b
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x16
	.byte	0
	.uleb128 0xd
	.4byte	0x184b
	.uleb128 0x30
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x487
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a7
	.uleb128 0x31
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x487
	.4byte	0x90f
	.4byte	.LLST2
	.uleb128 0x31
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x487
	.4byte	0xfcf
	.4byte	.LLST3
	.uleb128 0x32
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x489
	.4byte	0x13c3
	.4byte	.LLST4
	.uleb128 0x33
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x48a
	.4byte	0xb5
	.uleb128 0x32
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x48b
	.4byte	0x4c0
	.4byte	.LLST5
	.uleb128 0x2b
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x48c
	.4byte	0x156e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x191d
	.uleb128 0x35
	.string	"msg"
	.byte	0x1
	.2byte	0x4a0
	.4byte	0x1029
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.2byte	0x4a1
	.4byte	0x14f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.4byte	.LVL83
	.4byte	0x327f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL72
	.4byte	0x328a
	.uleb128 0x2d
	.4byte	.LVL75
	.4byte	0x3295
	.4byte	0x193a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL76
	.4byte	0x32a0
	.4byte	0x194e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL77
	.4byte	0x32ab
	.4byte	0x196d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL85
	.4byte	0x32b6
	.uleb128 0x36
	.4byte	.LVL86
	.4byte	0x32c1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x477
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a6c
	.uleb128 0x2a
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x477
	.4byte	0x90f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x477
	.4byte	0xfc9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x479
	.4byte	0x26c
	.4byte	.LLST6
	.uleb128 0x35
	.string	"msg"
	.byte	0x1
	.2byte	0x47a
	.4byte	0x1029
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.4byte	.LASF359
	.4byte	0x1a7c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10609
	.uleb128 0x2d
	.4byte	.LVL88
	.4byte	0x327f
	.4byte	0x1a2f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_event_deep_copy
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL89
	.4byte	0x32b6
	.uleb128 0x36
	.4byte	.LVL90
	.4byte	0x32c1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC77
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10609
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x1a7c
	.uleb128 0xb
	.4byte	0x13c
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.4byte	0x1a6c
	.uleb128 0x37
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x3ed
	.4byte	0x26c
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b06
	.uleb128 0x31
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x3ed
	.4byte	0x14fb
	.4byte	.LLST7
	.uleb128 0x2a
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x3ed
	.4byte	0x94
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x3ef
	.4byte	0x163d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.4byte	.LASF371
	.4byte	0x1b16
	.uleb128 0x2d
	.4byte	.LVL92
	.4byte	0x3260
	.4byte	0x1af0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x36
	.4byte	.LVL93
	.4byte	0x32cc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x1b16
	.uleb128 0xb
	.4byte	0x13c
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.4byte	0x1b06
	.uleb128 0x37
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x3be
	.4byte	0x26c
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bb9
	.uleb128 0x31
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x3be
	.4byte	0x62
	.4byte	.LLST8
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x32
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x3c2
	.4byte	0xe1
	.4byte	.LLST9
	.uleb128 0x2f
	.4byte	.LVL97
	.4byte	0x32d7
	.uleb128 0x2f
	.4byte	.LVL99
	.4byte	0x32e2
	.uleb128 0x2d
	.4byte	.LVL103
	.4byte	0x32ed
	.4byte	0x1b88
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_state_handlers
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL104
	.4byte	0x32f8
	.4byte	0x1b9b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL105
	.4byte	0x32f8
	.4byte	0x1bae
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL106
	.4byte	0x3303
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x59a
	.4byte	0x26c
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bec
	.uleb128 0x38
	.4byte	.LASF359
	.4byte	0x1bec
	.uleb128 0x36
	.4byte	.LVL112
	.4byte	0x1b1b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x1501
	.uleb128 0x37
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x5bb
	.4byte	0x26c
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c24
	.uleb128 0x38
	.4byte	.LASF359
	.4byte	0x1c34
	.uleb128 0x36
	.4byte	.LVL113
	.4byte	0x1b1b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x1c34
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	0x1c24
	.uleb128 0x3a
	.4byte	.LASF373
	.byte	0x1
	.byte	0xf5
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d01
	.uleb128 0x27
	.4byte	.LASF73
	.byte	0x1
	.byte	0xf5
	.4byte	0x1182
	.4byte	.LLST10
	.uleb128 0x27
	.4byte	.LASF179
	.byte	0x1
	.byte	0xf5
	.4byte	0x14fb
	.4byte	.LLST11
	.uleb128 0x27
	.4byte	.LASF182
	.byte	0x1
	.byte	0xf5
	.4byte	0x62
	.4byte	.LLST12
	.uleb128 0x3b
	.4byte	.LASF351
	.byte	0x1
	.byte	0xf8
	.4byte	0x1340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.4byte	0x1648
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0x1
	.2byte	0x103
	.4byte	0x1ce5
	.uleb128 0x3d
	.4byte	0x165f
	.4byte	.LLST13
	.uleb128 0x3e
	.4byte	0x1654
	.byte	0
	.uleb128 0x3f
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.uleb128 0x40
	.4byte	0x166a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2d
	.4byte	.LVL120
	.4byte	0x330e
	.4byte	0x1ccf
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x41
	.4byte	.LVL123
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL115
	.4byte	0x3260
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x1f0
	.4byte	0xd6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e62
	.uleb128 0x31
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x13ce
	.4byte	.LLST14
	.uleb128 0x31
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x182
	.4byte	.LLST15
	.uleb128 0x2c
	.4byte	.LASF371
	.4byte	0x1e72
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10493
	.uleb128 0x42
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x1d8f
	.uleb128 0x32
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x219
	.4byte	0x1e77
	.4byte	.LLST16
	.uleb128 0x2d
	.4byte	.LVL135
	.4byte	0x1c39
	.4byte	0x1d7f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.byte	0
	.uleb128 0x36
	.4byte	.LVL137
	.4byte	0x3319
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL127
	.4byte	0x3324
	.4byte	0x1da2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL128
	.4byte	0x332f
	.4byte	0x1db5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL131
	.4byte	0x3324
	.4byte	0x1dc8
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL132
	.4byte	0x332f
	.4byte	0x1ddb
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL133
	.4byte	0x333a
	.4byte	0x1dee
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL139
	.4byte	0x3345
	.4byte	0x1e0b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL142
	.4byte	0x32b6
	.uleb128 0x2d
	.4byte	.LVL143
	.4byte	0x16a2
	.4byte	0x1e28
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL144
	.4byte	0x32c1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10493
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x1e72
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.4byte	0x1e62
	.uleb128 0xc
	.byte	0x4
	.4byte	0xa49
	.uleb128 0x30
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x106
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f38
	.uleb128 0x2a
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x106
	.4byte	0x11d0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x106
	.4byte	0x14fb
	.4byte	.LLST17
	.uleb128 0x2b
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x109
	.4byte	0x1340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.4byte	0x1648
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x1
	.2byte	0x110
	.4byte	0x1f1c
	.uleb128 0x3d
	.4byte	0x165f
	.4byte	.LLST18
	.uleb128 0x3e
	.4byte	0x1654
	.byte	0x1
	.uleb128 0x3f
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.uleb128 0x40
	.4byte	0x166a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LVL150
	.4byte	0x330e
	.4byte	0x1f06
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x41
	.4byte	.LVL153
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL149
	.4byte	0x3260
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x2d4
	.4byte	0xd6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21d8
	.uleb128 0x31
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x2d4
	.4byte	0x13ce
	.4byte	.LLST19
	.uleb128 0x31
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x2d4
	.4byte	0x182
	.4byte	.LLST20
	.uleb128 0x32
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x2d6
	.4byte	0xfc9
	.4byte	.LLST21
	.uleb128 0x2c
	.4byte	.LASF371
	.4byte	0x21d8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10533
	.uleb128 0x42
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x1fe9
	.uleb128 0x32
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x35f
	.4byte	0x1e77
	.4byte	.LLST22
	.uleb128 0x2d
	.4byte	.LVL192
	.4byte	0x333a
	.4byte	0x1fbd
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL193
	.4byte	0x1c39
	.4byte	0x1fd9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.byte	0
	.uleb128 0x36
	.4byte	.LVL194
	.4byte	0x3319
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL158
	.4byte	0x1e7d
	.4byte	0x2005
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL161
	.4byte	0x3350
	.4byte	0x201d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL164
	.4byte	0x3324
	.4byte	0x2030
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL165
	.4byte	0x332f
	.4byte	0x2043
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL166
	.4byte	0x333a
	.4byte	0x2056
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL167
	.4byte	0x335b
	.4byte	0x2069
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL170
	.4byte	0x3367
	.uleb128 0x2f
	.4byte	.LVL171
	.4byte	0x3373
	.uleb128 0x2d
	.4byte	.LVL172
	.4byte	0x1c39
	.4byte	0x209c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL173
	.4byte	0x3319
	.4byte	0x20af
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL175
	.4byte	0x337f
	.4byte	0x20c3
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL178
	.4byte	0x3324
	.4byte	0x20d6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL181
	.4byte	0x1e7d
	.4byte	0x20f2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL183
	.4byte	0x1e7d
	.4byte	0x210e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL184
	.4byte	0x3319
	.4byte	0x2121
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL187
	.4byte	0x333a
	.4byte	0x2135
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL188
	.4byte	0x1e7d
	.4byte	0x2151
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL189
	.4byte	0x3319
	.4byte	0x2164
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL196
	.4byte	0x3345
	.4byte	0x2181
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL199
	.4byte	0x32b6
	.uleb128 0x2d
	.4byte	.LVL200
	.4byte	0x16a2
	.4byte	0x219e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL201
	.4byte	0x32c1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10533
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x1e62
	.uleb128 0x37
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x17d
	.4byte	0xd6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24f8
	.uleb128 0x31
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x17d
	.4byte	0x13ce
	.4byte	.LLST23
	.uleb128 0x31
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x17d
	.4byte	0x182
	.4byte	.LLST24
	.uleb128 0x2c
	.4byte	.LASF371
	.4byte	0x24f8
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10467
	.uleb128 0x38
	.4byte	.LASF359
	.4byte	0x24fd
	.uleb128 0x34
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x22ec
	.uleb128 0x32
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x192
	.4byte	0xfc9
	.4byte	.LLST25
	.uleb128 0x32
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x193
	.4byte	0x1182
	.4byte	.LLST26
	.uleb128 0x32
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x194
	.4byte	0x13c3
	.4byte	.LLST26
	.uleb128 0x2f
	.4byte	.LVL219
	.4byte	0x32b6
	.uleb128 0x2d
	.4byte	.LVL220
	.4byte	0x32c1
	.4byte	0x22a3
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC102
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL222
	.4byte	0x1c39
	.4byte	0x22c5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL223
	.4byte	0x3319
	.4byte	0x22d9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL224
	.4byte	0x338a
	.uleb128 0x2f
	.4byte	.LVL225
	.4byte	0x3396
	.byte	0
	.uleb128 0x34
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x23a7
	.uleb128 0x2b
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x1340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3c
	.4byte	0x1648
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x2369
	.uleb128 0x3d
	.4byte	0x165f
	.4byte	.LLST28
	.uleb128 0x3d
	.4byte	0x1654
	.4byte	.LLST29
	.uleb128 0x3f
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.uleb128 0x43
	.4byte	0x166a
	.4byte	.LLST30
	.uleb128 0x2d
	.4byte	.LVL230
	.4byte	0x330e
	.4byte	0x2353
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x41
	.4byte	.LVL233
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL228
	.4byte	0x3260
	.4byte	0x238b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x36
	.4byte	.LVL229
	.4byte	0x3260
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL208
	.4byte	0x1c39
	.4byte	0x23c8
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL211
	.4byte	0x1c39
	.4byte	0x23e9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL213
	.4byte	0x3319
	.4byte	0x23fc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL236
	.4byte	0x33a1
	.4byte	0x241e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL237
	.4byte	0x3396
	.uleb128 0x2d
	.4byte	.LVL240
	.4byte	0x1c39
	.4byte	0x2445
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL241
	.4byte	0x3396
	.uleb128 0x2d
	.4byte	.LVL244
	.4byte	0x33a1
	.4byte	0x2470
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL245
	.4byte	0x33ac
	.4byte	0x2484
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL248
	.4byte	0x3345
	.4byte	0x24a1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL251
	.4byte	0x32b6
	.uleb128 0x2d
	.4byte	.LVL252
	.4byte	0x16a2
	.4byte	0x24be
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL253
	.4byte	0x32c1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10467
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x1e62
	.uleb128 0xd
	.4byte	0x1e62
	.uleb128 0x37
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x11d
	.4byte	0xd6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26e7
	.uleb128 0x31
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x11d
	.4byte	0x13ce
	.4byte	.LLST31
	.uleb128 0x31
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x11d
	.4byte	0x182
	.4byte	.LLST32
	.uleb128 0x2c
	.4byte	.LASF371
	.4byte	0x26f7
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10447
	.uleb128 0x44
	.4byte	0x1676
	.4byte	.LBB27
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x13d
	.4byte	0x2581
	.uleb128 0x3d
	.4byte	0x168d
	.4byte	.LLST33
	.uleb128 0x3d
	.4byte	0x1683
	.4byte	.LLST34
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x43
	.4byte	0x1697
	.4byte	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL263
	.4byte	0x33b8
	.uleb128 0x2d
	.4byte	.LVL269
	.4byte	0x3260
	.4byte	0x25a9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL270
	.4byte	0x33c3
	.4byte	0x25c7
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL280
	.4byte	0x33c3
	.4byte	0x25ef
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x110a
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL281
	.4byte	0x3319
	.4byte	0x2602
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL283
	.4byte	0x33cf
	.4byte	0x2627
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC112
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_initiate_av_open_tmr_hdlr
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL284
	.4byte	0x33da
	.uleb128 0x2d
	.4byte	.LVL285
	.4byte	0x3345
	.4byte	0x264d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL288
	.4byte	0x3345
	.4byte	0x266a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL291
	.4byte	0x33e5
	.uleb128 0x2d
	.4byte	.LVL292
	.4byte	0x3345
	.4byte	0x2690
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL295
	.4byte	0x32b6
	.uleb128 0x2d
	.4byte	.LVL297
	.4byte	0x16a2
	.4byte	0x26ad
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL298
	.4byte	0x32c1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10447
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x26f7
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.4byte	0x26e7
	.uleb128 0x30
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x402
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2775
	.uleb128 0x2a
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x402
	.4byte	0x62
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x38
	.4byte	.LASF371
	.4byte	0x2785
	.uleb128 0x2f
	.4byte	.LVL303
	.4byte	0x33f0
	.uleb128 0x2f
	.4byte	.LVL304
	.4byte	0x33e5
	.uleb128 0x2d
	.4byte	.LVL305
	.4byte	0x33fb
	.4byte	0x274e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL306
	.4byte	0x33fb
	.4byte	0x2762
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL307
	.4byte	0x3406
	.uleb128 0x2f
	.4byte	.LVL308
	.4byte	0x3411
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x2785
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	0x2775
	.uleb128 0x30
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x5a9
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27b0
	.uleb128 0x36
	.4byte	.LVL309
	.4byte	0x26fc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x5c2
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27d6
	.uleb128 0x36
	.4byte	.LVL310
	.4byte	0x26fc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x5a1
	.4byte	0x26c
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2869
	.uleb128 0x31
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x5a1
	.4byte	0x14fb
	.4byte	.LLST36
	.uleb128 0x38
	.4byte	.LASF371
	.4byte	0x2879
	.uleb128 0x2c
	.4byte	.LASF359
	.4byte	0x287e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10679
	.uleb128 0x2d
	.4byte	.LVL312
	.4byte	0x3274
	.4byte	0x2848
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x5a4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10679
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC122
	.byte	0
	.uleb128 0x36
	.4byte	.LVL313
	.4byte	0x341c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x110b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	connect_int
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x2879
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.4byte	0x2869
	.uleb128 0xd
	.4byte	0x2869
	.uleb128 0x37
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x5c7
	.4byte	0x26c
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2916
	.uleb128 0x31
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x5c7
	.4byte	0x14fb
	.4byte	.LLST37
	.uleb128 0x38
	.4byte	.LASF371
	.4byte	0x2926
	.uleb128 0x2c
	.4byte	.LASF359
	.4byte	0x292b
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10694
	.uleb128 0x2d
	.4byte	.LVL316
	.4byte	0x3274
	.4byte	0x28f5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x5ca
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10694
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC122
	.byte	0
	.uleb128 0x36
	.4byte	.LVL317
	.4byte	0x341c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x110a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	connect_int
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x2926
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.4byte	0x2916
	.uleb128 0xd
	.4byte	0x2916
	.uleb128 0x30
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x39d
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2997
	.uleb128 0x2a
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x39d
	.4byte	0x13ce
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x39d
	.4byte	0x182
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3f
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.uleb128 0x45
	.string	"av"
	.byte	0x1
	.2byte	0x3a1
	.4byte	0xfc9
	.4byte	.LLST38
	.uleb128 0x2f
	.4byte	.LVL321
	.4byte	0x3427
	.uleb128 0x2f
	.4byte	.LVL322
	.4byte	0x3427
	.uleb128 0x2f
	.4byte	.LVL323
	.4byte	0x3427
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x42b
	.4byte	0x13d9
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x47
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x43a
	.4byte	0xd6
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29e1
	.uleb128 0x32
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x43c
	.4byte	0x13c3
	.4byte	.LLST39
	.uleb128 0x2f
	.4byte	.LVL324
	.4byte	0x328a
	.byte	0
	.uleb128 0x47
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x453
	.4byte	0xd6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a15
	.uleb128 0x32
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x455
	.4byte	0x13c3
	.4byte	.LLST40
	.uleb128 0x2f
	.4byte	.LVL327
	.4byte	0x328a
	.byte	0
	.uleb128 0x28
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x46e
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a86
	.uleb128 0x2a
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x46e
	.4byte	0x143a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x46e
	.4byte	0x182
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x48
	.string	"len"
	.byte	0x1
	.2byte	0x46e
	.4byte	0x62
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.string	"msg"
	.byte	0x1
	.2byte	0x470
	.4byte	0x1029
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.4byte	.LVL331
	.4byte	0x327f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x23a
	.4byte	0xd6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d17
	.uleb128 0x31
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x23a
	.4byte	0x13ce
	.4byte	.LLST41
	.uleb128 0x31
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x23a
	.4byte	0x182
	.4byte	.LLST42
	.uleb128 0x32
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x23c
	.4byte	0xfc9
	.4byte	.LLST43
	.uleb128 0x2c
	.4byte	.LASF371
	.4byte	0x2d27
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10508
	.uleb128 0x38
	.4byte	.LASF359
	.4byte	0x2d2c
	.uleb128 0x42
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x2b53
	.uleb128 0x32
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x29a
	.4byte	0x1e77
	.4byte	.LLST44
	.uleb128 0x2d
	.4byte	.LVL355
	.4byte	0x333a
	.4byte	0x2b14
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL356
	.4byte	0x1c39
	.4byte	0x2b30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL358
	.4byte	0x3432
	.4byte	0x2b43
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x36
	.4byte	.LVL359
	.4byte	0x3319
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL340
	.4byte	0x343d
	.uleb128 0x2f
	.4byte	.LVL341
	.4byte	0x3448
	.uleb128 0x2d
	.4byte	.LVL344
	.4byte	0x2a15
	.4byte	0x2b82
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL345
	.4byte	0x3350
	.4byte	0x2b96
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL346
	.4byte	0x332f
	.4byte	0x2ba9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL347
	.4byte	0x3350
	.4byte	0x2bc1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL348
	.4byte	0x3319
	.4byte	0x2bd4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL351
	.4byte	0x3367
	.uleb128 0x2f
	.4byte	.LVL352
	.4byte	0x3373
	.uleb128 0x2d
	.4byte	.LVL353
	.4byte	0x1c39
	.4byte	0x2c07
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL363
	.4byte	0x32b6
	.uleb128 0x2d
	.4byte	.LVL364
	.4byte	0x32c1
	.4byte	0x2c3e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC142
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL365
	.4byte	0x3448
	.uleb128 0x2d
	.4byte	.LVL366
	.4byte	0x3432
	.4byte	0x2c5a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL368
	.4byte	0x33a1
	.4byte	0x2c7c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb+5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL369
	.4byte	0x1c39
	.4byte	0x2c9a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL370
	.4byte	0x3396
	.uleb128 0x2d
	.4byte	.LVL373
	.4byte	0x3345
	.4byte	0x2cc0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL376
	.4byte	0x32b6
	.uleb128 0x2d
	.4byte	.LVL377
	.4byte	0x16a2
	.4byte	0x2cdd
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.4byte	.LVL378
	.4byte	0x32c1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10508
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x2d27
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.4byte	0x2d17
	.uleb128 0xd
	.4byte	0x2d17
	.uleb128 0x3a
	.4byte	.LASF393
	.byte	0x1
	.byte	0xe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2def
	.uleb128 0x49
	.string	"arg"
	.byte	0x1
	.byte	0xe0
	.4byte	0x182
	.4byte	.LLST45
	.uleb128 0x3b
	.4byte	.LASF196
	.byte	0x1
	.byte	0xe3
	.4byte	0x14e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.4byte	.LASF368
	.byte	0x1
	.byte	0xe4
	.4byte	0x163d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2c
	.4byte	.LASF371
	.4byte	0x2dff
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10431
	.uleb128 0x2d
	.4byte	.LVL383
	.4byte	0x3454
	.4byte	0x2d94
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL385
	.4byte	0x2a15
	.4byte	0x2db2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL387
	.4byte	0x32b6
	.uleb128 0x36
	.4byte	.LVL388
	.4byte	0x32c1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC149
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10431
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x2dff
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	0x2def
	.uleb128 0x47
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x4c0
	.4byte	0x26c
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e8f
	.uleb128 0x31
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x4c0
	.4byte	0xd6
	.4byte	.LLST46
	.uleb128 0x2d
	.4byte	.LVL390
	.4byte	0x345f
	.4byte	0x2e51
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x824b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	bte_av_callback
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL391
	.4byte	0x346b
	.4byte	0x2e7c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC155
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	bte_av_media_callback
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL393
	.4byte	0x3477
	.uleb128 0x2f
	.4byte	.LVL394
	.4byte	0x3483
	.byte	0
	.uleb128 0x47
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x4df
	.4byte	0x26c
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ecd
	.uleb128 0x31
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x4df
	.4byte	0xd6
	.4byte	.LLST47
	.uleb128 0x36
	.4byte	.LVL396
	.4byte	0x348f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x47
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x4f0
	.4byte	0xd6
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f01
	.uleb128 0x32
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x4f2
	.4byte	0x13c3
	.4byte	.LLST48
	.uleb128 0x2f
	.4byte	.LVL398
	.4byte	0x328a
	.byte	0
	.uleb128 0x46
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x500
	.4byte	0x89
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x46
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x510
	.4byte	0x89
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x47
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x520
	.4byte	0xd6
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fa4
	.uleb128 0x2f
	.4byte	.LVL400
	.4byte	0x2ecd
	.uleb128 0x2f
	.4byte	.LVL401
	.4byte	0x32b6
	.uleb128 0x36
	.4byte	.LVL402
	.4byte	0x32c1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC162
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC164
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC162
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC166
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x533
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fc4
	.uleb128 0x38
	.4byte	.LASF359
	.4byte	0x2fd4
	.byte	0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x2fd4
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.4byte	0x2fc4
	.uleb128 0x28
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x539
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3180
	.uleb128 0x29
	.string	"msg"
	.byte	0x1
	.2byte	0x539
	.4byte	0x10c0
	.4byte	.LLST49
	.uleb128 0x45
	.string	"arg"
	.byte	0x1
	.2byte	0x53b
	.4byte	0x3180
	.4byte	.LLST50
	.uleb128 0x2c
	.4byte	.LASF359
	.4byte	0x3196
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10653
	.uleb128 0x2c
	.4byte	.LASF371
	.4byte	0x319b
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10667
	.uleb128 0x2f
	.4byte	.LVL407
	.4byte	0x32cc
	.uleb128 0x2f
	.4byte	.LVL409
	.4byte	0x1bb9
	.uleb128 0x2f
	.4byte	.LVL411
	.4byte	0x278a
	.uleb128 0x2f
	.4byte	.LVL413
	.4byte	0x27d6
	.uleb128 0x2d
	.4byte	.LVL417
	.4byte	0x3274
	.4byte	0x3081
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x552
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10653
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC122
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL418
	.4byte	0x32cc
	.4byte	0x3099
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL421
	.4byte	0x349b
	.uleb128 0x2f
	.4byte	.LVL423
	.4byte	0x1bf1
	.uleb128 0x2f
	.4byte	.LVL425
	.4byte	0x27b0
	.uleb128 0x2f
	.4byte	.LVL427
	.4byte	0x2883
	.uleb128 0x2d
	.4byte	.LVL431
	.4byte	0x3274
	.4byte	0x30ed
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC63
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x569
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$10653
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC122
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL432
	.4byte	0x32cc
	.4byte	0x3105
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL435
	.4byte	0x34a6
	.uleb128 0x2f
	.4byte	.LVL438
	.4byte	0x34b1
	.uleb128 0x2f
	.4byte	.LVL441
	.4byte	0x34bc
	.uleb128 0x2f
	.4byte	.LVL445
	.4byte	0x32cc
	.uleb128 0x2d
	.4byte	.LVL449
	.4byte	0x32cc
	.4byte	0x313c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL451
	.4byte	0x32b6
	.uleb128 0x36
	.4byte	.LVL453
	.4byte	0x32c1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC177
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__FUNCTION__$10667
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x14f0
	.uleb128 0x8
	.4byte	0x176
	.4byte	0x3196
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x15
	.byte	0
	.uleb128 0xd
	.4byte	0x3186
	.uleb128 0xd
	.4byte	0x3186
	.uleb128 0x28
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x589
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31d7
	.uleb128 0x48
	.string	"msg"
	.byte	0x1
	.2byte	0x589
	.4byte	0x10c0
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2f
	.4byte	.LVL455
	.4byte	0x32cc
	.uleb128 0x2f
	.4byte	.LVL456
	.4byte	0x2930
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF405
	.byte	0x2
	.2byte	0x2cc
	.4byte	0x31ea
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0xd
	.4byte	0x15a
	.uleb128 0x4a
	.4byte	.LASF406
	.byte	0x2
	.2byte	0x2cd
	.4byte	0x3202
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x15a
	.uleb128 0x3b
	.4byte	.LASF407
	.byte	0x1
	.byte	0x5c
	.4byte	0x1611
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_cb
	.uleb128 0x3b
	.4byte	.LASF408
	.byte	0x1
	.byte	0x5f
	.4byte	0x3229
	.uleb128 0x5
	.byte	0x3
	.4byte	tle_av_open_on_rc
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1579
	.uleb128 0x8
	.4byte	0x13e4
	.4byte	0x323f
	.uleb128 0xb
	.4byte	0x13c
	.byte	0x4
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF409
	.byte	0x1
	.byte	0x88
	.4byte	0x3250
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_state_handlers
	.uleb128 0xd
	.4byte	0x322f
	.uleb128 0x4b
	.4byte	.LASF468
	.byte	0x1
	.byte	0x96
	.4byte	0x903
	.uleb128 0x4c
	.4byte	.LASF469
	.4byte	.LASF469
	.uleb128 0x4d
	.4byte	.LASF410
	.4byte	.LASF410
	.byte	0x12
	.byte	0x57
	.uleb128 0x4d
	.4byte	.LASF411
	.4byte	.LASF411
	.byte	0x13
	.byte	0x29
	.uleb128 0x4d
	.4byte	.LASF412
	.4byte	.LASF412
	.byte	0xb
	.byte	0x4c
	.uleb128 0x4d
	.4byte	.LASF413
	.4byte	.LASF413
	.byte	0xe
	.byte	0x57
	.uleb128 0x4d
	.4byte	.LASF414
	.4byte	.LASF414
	.byte	0x14
	.byte	0x55
	.uleb128 0x4d
	.4byte	.LASF415
	.4byte	.LASF415
	.byte	0x14
	.byte	0x87
	.uleb128 0x4d
	.4byte	.LASF416
	.4byte	.LASF416
	.byte	0x10
	.byte	0x9a
	.uleb128 0x4d
	.4byte	.LASF417
	.4byte	.LASF417
	.byte	0x6
	.byte	0x57
	.uleb128 0x4d
	.4byte	.LASF418
	.4byte	.LASF418
	.byte	0x6
	.byte	0x6b
	.uleb128 0x4d
	.4byte	.LASF419
	.4byte	.LASF419
	.byte	0xe
	.byte	0x62
	.uleb128 0x4d
	.4byte	.LASF420
	.4byte	.LASF420
	.byte	0x15
	.byte	0x4c
	.uleb128 0x4d
	.4byte	.LASF421
	.4byte	.LASF421
	.byte	0x14
	.byte	0x36
	.uleb128 0x4d
	.4byte	.LASF422
	.4byte	.LASF422
	.byte	0xe
	.byte	0x40
	.uleb128 0x4d
	.4byte	.LASF423
	.4byte	.LASF423
	.byte	0x16
	.byte	0x4c
	.uleb128 0x4d
	.4byte	.LASF424
	.4byte	.LASF424
	.byte	0x17
	.byte	0x3e
	.uleb128 0x4d
	.4byte	.LASF425
	.4byte	.LASF425
	.byte	0x18
	.byte	0x1a
	.uleb128 0x4d
	.4byte	.LASF426
	.4byte	.LASF426
	.byte	0xe
	.byte	0x71
	.uleb128 0x4d
	.4byte	.LASF427
	.4byte	.LASF427
	.byte	0x15
	.byte	0xe7
	.uleb128 0x4d
	.4byte	.LASF428
	.4byte	.LASF428
	.byte	0x14
	.byte	0x7d
	.uleb128 0x4d
	.4byte	.LASF429
	.4byte	.LASF429
	.byte	0x17
	.byte	0x5e
	.uleb128 0x4d
	.4byte	.LASF430
	.4byte	.LASF430
	.byte	0x19
	.byte	0x4d
	.uleb128 0x4d
	.4byte	.LASF431
	.4byte	.LASF431
	.byte	0x17
	.byte	0x54
	.uleb128 0x4e
	.4byte	.LASF432
	.4byte	.LASF432
	.byte	0xa
	.2byte	0x299
	.uleb128 0x4e
	.4byte	.LASF433
	.4byte	.LASF433
	.byte	0xa
	.2byte	0x26b
	.uleb128 0x4e
	.4byte	.LASF434
	.4byte	.LASF434
	.byte	0xa
	.2byte	0x306
	.uleb128 0x4d
	.4byte	.LASF435
	.4byte	.LASF435
	.byte	0x17
	.byte	0x68
	.uleb128 0x4e
	.4byte	.LASF436
	.4byte	.LASF436
	.byte	0xa
	.2byte	0x2fb
	.uleb128 0x4d
	.4byte	.LASF437
	.4byte	.LASF437
	.byte	0x1a
	.byte	0x32
	.uleb128 0x4d
	.4byte	.LASF438
	.4byte	.LASF438
	.byte	0x1b
	.byte	0x16
	.uleb128 0x4e
	.4byte	.LASF439
	.4byte	.LASF439
	.byte	0xa
	.2byte	0x276
	.uleb128 0x4d
	.4byte	.LASF440
	.4byte	.LASF440
	.byte	0x17
	.byte	0x48
	.uleb128 0x4e
	.4byte	.LASF441
	.4byte	.LASF441
	.byte	0xa
	.2byte	0x25f
	.uleb128 0x4d
	.4byte	.LASF442
	.4byte	.LASF442
	.byte	0x11
	.byte	0x2e
	.uleb128 0x4d
	.4byte	.LASF443
	.4byte	.LASF443
	.byte	0x11
	.byte	0x3a
	.uleb128 0x4d
	.4byte	.LASF444
	.4byte	.LASF444
	.byte	0x11
	.byte	0x33
	.uleb128 0x4d
	.4byte	.LASF445
	.4byte	.LASF445
	.byte	0x15
	.byte	0x55
	.uleb128 0x4d
	.4byte	.LASF446
	.4byte	.LASF446
	.byte	0x16
	.byte	0x4d
	.uleb128 0x4d
	.4byte	.LASF447
	.4byte	.LASF447
	.byte	0xe
	.byte	0x4c
	.uleb128 0x4d
	.4byte	.LASF448
	.4byte	.LASF448
	.byte	0x14
	.byte	0x3f
	.uleb128 0x4d
	.4byte	.LASF449
	.4byte	.LASF449
	.byte	0x1a
	.byte	0x31
	.uleb128 0x4d
	.4byte	.LASF450
	.4byte	.LASF450
	.byte	0x12
	.byte	0x5a
	.uleb128 0x4d
	.4byte	.LASF451
	.4byte	.LASF451
	.byte	0x1c
	.byte	0x3f
	.uleb128 0x4d
	.4byte	.LASF452
	.4byte	.LASF452
	.byte	0x15
	.byte	0xde
	.uleb128 0x4e
	.4byte	.LASF453
	.4byte	.LASF453
	.byte	0xa
	.2byte	0x28c
	.uleb128 0x4d
	.4byte	.LASF454
	.4byte	.LASF454
	.byte	0x19
	.byte	0x4f
	.uleb128 0x4e
	.4byte	.LASF455
	.4byte	.LASF455
	.byte	0xa
	.2byte	0x22a
	.uleb128 0x4e
	.4byte	.LASF456
	.4byte	.LASF456
	.byte	0xa
	.2byte	0x246
	.uleb128 0x4e
	.4byte	.LASF457
	.4byte	.LASF457
	.byte	0xa
	.2byte	0x252
	.uleb128 0x4e
	.4byte	.LASF458
	.4byte	.LASF458
	.byte	0xa
	.2byte	0x237
	.uleb128 0x4e
	.4byte	.LASF459
	.4byte	.LASF459
	.byte	0xa
	.2byte	0x281
	.uleb128 0x4d
	.4byte	.LASF460
	.4byte	.LASF460
	.byte	0xf
	.byte	0x67
	.uleb128 0x4d
	.4byte	.LASF461
	.4byte	.LASF461
	.byte	0xf
	.byte	0x69
	.uleb128 0x4d
	.4byte	.LASF462
	.4byte	.LASF462
	.byte	0x1c
	.byte	0x2a
	.uleb128 0x4d
	.4byte	.LASF463
	.4byte	.LASF463
	.byte	0x1c
	.byte	0x35
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x17
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
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x32
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
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
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
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
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
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
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
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
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
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
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
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL50
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
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL71
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL71
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x72
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL95
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL110
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL118
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL123-1
	.4byte	.LFE30
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
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
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125
	.4byte	.LVL134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL134
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL148
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL149
	.4byte	.LVL152
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL153-1
	.4byte	.LFE31
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL154
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL168
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL169
	.4byte	.LVL174
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL185
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL186
	.4byte	.LVL190
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL195
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL198
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
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156
	.4byte	.LVL174
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156
	.4byte	.LVL174
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL192
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL206
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL210
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
	.4byte	.LVL226
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL227
	.4byte	.LVL235
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL235
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL239
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL250
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL256
	.4byte	.LVL258
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL259
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL207
	.4byte	.LVL210
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL218
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL221
	.4byte	.LVL226
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL250
	.4byte	.LVL257
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL214
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL218
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL221
	.4byte	.LVL226
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL216
	.4byte	.LVL218
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL229
	.4byte	.LVL232
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL233-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL233-1
	.4byte	.LVL235
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL229
	.4byte	.LVL235
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL231
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL260
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL262
	.4byte	.LVL264
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL264
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
	.4byte	.LVL271
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL271
	.4byte	.LVL273
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL273
	.4byte	.LVL282
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL282
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL286
	.4byte	.LVL287
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL287
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL294
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
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL261
	.4byte	.LVL264
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL265
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL265
	.4byte	.LVL267
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL267
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL275
	.4byte	.LVL282
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL282
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL296
	.4byte	.LVL300
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL300
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL272
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL275
	.4byte	.LVL277
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL272
	.4byte	.LVL274
	.2byte	0x6
	.byte	0x3
	.4byte	btc_av_cb+5
	.byte	0x9f
	.4byte	.LVL274
	.4byte	.LVL275
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL275
	.4byte	.LVL278
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL278
	.4byte	.LVL280-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL272
	.4byte	.LVL275
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL275
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL311
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL314
	.4byte	.LFE58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL315
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL318
	.4byte	.LFE62
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL320
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL324
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL326
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL327
	.4byte	.LVL328
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x3
	.byte	0x7a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL329
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL332
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL335
	.4byte	.LVL336
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL336
	.4byte	.LVL337
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL337
	.4byte	.LVL338
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL339
	.4byte	.LVL342
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL342
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL343
	.4byte	.LVL349
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL349
	.4byte	.LVL350
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL350
	.4byte	.LVL354
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL354
	.4byte	.LVL357
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL357
	.4byte	.LVL360
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL360
	.4byte	.LVL361
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL361
	.4byte	.LVL367
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL367
	.4byte	.LVL371
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL372
	.4byte	.LVL374
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL374
	.4byte	.LVL375
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL375
	.4byte	.LVL379
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL379
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL332
	.4byte	.LVL334
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL334
	.4byte	.LVL342
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL342
	.4byte	.LVL362
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL362
	.4byte	.LVL367
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL367
	.4byte	.LVL375
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL375
	.4byte	.LVL380
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL381
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL333
	.4byte	.LVL334
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL334
	.4byte	.LVL342
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL342
	.4byte	.LVL362
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL362
	.4byte	.LVL367
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL367
	.4byte	.LVL375
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL375
	.4byte	.LVL380
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL381
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL355
	.4byte	.LVL360
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL382
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL384
	.4byte	.LVL386
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL386
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL389
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL392
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL395
	.4byte	.LVL397
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL397
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL398
	.4byte	.LVL399
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL399
	.4byte	.LFE50
	.2byte	0x3
	.byte	0x7a
	.sleb128 2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL403
	.4byte	.LVL405
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL405
	.4byte	.LVL408
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL408
	.4byte	.LVL415
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL415
	.4byte	.LVL419
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL419
	.4byte	.LVL429
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL429
	.4byte	.LVL433
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL433
	.4byte	.LVL443
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL443
	.4byte	.LVL446
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL446
	.4byte	.LVL447
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL447
	.4byte	.LVL450
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL450
	.4byte	.LVL452
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL452
	.4byte	.LFE55
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL404
	.4byte	.LVL406
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL406
	.4byte	.LVL407-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL408
	.4byte	.LVL409-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL410
	.4byte	.LVL411-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL412
	.4byte	.LVL413-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL414
	.4byte	.LVL416
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL416
	.4byte	.LVL417-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL417
	.4byte	.LVL418-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL419
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL420
	.4byte	.LVL421-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL422
	.4byte	.LVL423-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL424
	.4byte	.LVL425-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL426
	.4byte	.LVL427-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL428
	.4byte	.LVL430
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL430
	.4byte	.LVL431-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL431
	.4byte	.LVL432-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL433
	.4byte	.LVL434
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL434
	.4byte	.LVL435-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL436
	.4byte	.LVL437
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL437
	.4byte	.LVL438-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL439
	.4byte	.LVL440
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL440
	.4byte	.LVL441-1
	.2byte	0x2
	.byte	0x72
	.sleb128 4
	.4byte	.LVL442
	.4byte	.LVL444
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL444
	.4byte	.LVL445-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL446
	.4byte	.LVL448
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL448
	.4byte	.LVL449-1
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL450
	.4byte	.LVL451-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x12c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF58:
	.string	"subunit_type"
.LASF28:
	.string	"long int"
.LASF169:
	.string	"tBTA_AV_EVT"
.LASF347:
	.string	"btc_av_cb_t"
.LASF164:
	.string	"close"
.LASF206:
	.string	"code"
.LASF315:
	.string	"BTC_AV_SRC_API_CONNECT_EVT"
.LASF171:
	.string	"tBTA_AV_ENABLE"
.LASF464:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF279:
	.string	"ESP_A2D_AUDIO_STATE_EVT"
.LASF157:
	.string	"tBTA_AV_CO_DATAPATH"
.LASF214:
	.string	"protect_req"
.LASF133:
	.string	"BTM_PM_STS_ACTIVE"
.LASF190:
	.string	"tBTA_AV_PROTECT_REQ"
.LASF187:
	.string	"tBTA_AV_SUSPEND"
.LASF444:
	.string	"osi_alarm_free"
.LASF229:
	.string	"codec_info"
.LASF380:
	.string	"av_state"
.LASF340:
	.string	"BTC_AV_STATE_CLOSING"
.LASF69:
	.string	"p_vendor_data"
.LASF217:
	.string	"rc_close"
.LASF371:
	.string	"__FUNCTION__"
.LASF297:
	.string	"btc_sm_state_t"
.LASF260:
	.string	"esp_a2d_connection_state_t"
.LASF344:
	.string	"sm_handle"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF25:
	.string	"BT_HDR"
.LASF345:
	.string	"flags"
.LASF145:
	.string	"tBTA_AV_RC"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF323:
	.string	"src_connect"
.LASF381:
	.string	"btc_av_state_idle_handler"
.LASF302:
	.string	"BTC_AV_DISCONNECT_REQ_EVT"
.LASF16:
	.string	"UINT16"
.LASF221:
	.string	"vendor_rsp"
.LASF424:
	.string	"btc_a2dp_on_init"
.LASF189:
	.string	"p_data"
.LASF37:
	.string	"bt_bdaddr_t"
.LASF140:
	.string	"tBTA_AV_STATUS"
.LASF367:
	.string	"connect_int"
.LASF216:
	.string	"rc_open"
.LASF262:
	.string	"ESP_A2D_DISC_RSN_ABNORMAL"
.LASF341:
	.string	"service_id"
.LASF448:
	.string	"btc_a2dp_sink_shutdown"
.LASF6:
	.string	"__int32_t"
.LASF84:
	.string	"tAVRC_MSG"
.LASF432:
	.string	"BTA_AvStop"
.LASF115:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF209:
	.string	"tBTA_AV_META_MSG"
.LASF368:
	.string	"connect_req"
.LASF226:
	.string	"reject"
.LASF436:
	.string	"BTA_AvOpenRc"
.LASF232:
	.string	"BTC_SIG_API_CALL"
.LASF417:
	.string	"esp_log_timestamp"
.LASF241:
	.string	"BTC_PID_SPPLIKE"
.LASF18:
	.string	"BOOLEAN"
.LASF193:
	.string	"rc_handle"
.LASF322:
	.string	"src_data_cb"
.LASF182:
	.string	"disc_rsn"
.LASF188:
	.string	"tBTA_AV_RECONFIG"
.LASF75:
	.string	"pass_len"
.LASF261:
	.string	"ESP_A2D_DISC_RSN_NORMAL"
.LASF411:
	.string	"__assert_func"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF61:
	.string	"tAVRC_HDR"
.LASF399:
	.string	"btc_av_get_service_id"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF296:
	.string	"esp_a2d_source_data_cb_t"
.LASF363:
	.string	"bte_av_media_callback"
.LASF435:
	.string	"btc_a2dp_on_suspended"
.LASF410:
	.string	"calloc"
.LASF343:
	.string	"peer_bda"
.LASF364:
	.string	"bte_av_callback"
.LASF47:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF225:
	.string	"meta_msg"
.LASF142:
	.string	"tBTA_AV_CHNL"
.LASF148:
	.string	"tBTA_AV_ERR"
.LASF387:
	.string	"btc_av_event_free_data"
.LASF402:
	.string	"btc_av_clear_remote_suspend_flag"
.LASF55:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF222:
	.string	"reconfig"
.LASF316:
	.string	"BTC_AV_SRC_API_DISCONNECT_EVT"
.LASF234:
	.string	"BTC_SIG_NUM"
.LASF17:
	.string	"UINT32"
.LASF282:
	.string	"esp_a2d_cb_event_t"
.LASF79:
	.string	"p_browse_pkt"
.LASF48:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF378:
	.string	"btc_av_state_opening_handler"
.LASF413:
	.string	"btc_sm_get_state"
.LASF166:
	.string	"stop"
.LASF130:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF20:
	.string	"event"
.LASF443:
	.string	"osi_alarm_set"
.LASF353:
	.string	"bdcpy"
.LASF421:
	.string	"btc_a2dp_sink_startup"
.LASF10:
	.string	"long long unsigned int"
.LASF135:
	.string	"BTM_PM_STS_SNIFF"
.LASF453:
	.string	"BTA_AvStart"
.LASF303:
	.string	"BTC_AV_START_STREAM_REQ_EVT"
.LASF36:
	.string	"address"
.LASF53:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF284:
	.string	"a2d_conn_stat_param"
.LASF125:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF66:
	.string	"panel"
.LASF442:
	.string	"osi_alarm_new"
.LASF266:
	.string	"ESP_A2D_AUDIO_STATE_STARTED"
.LASF117:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF21:
	.string	"offset"
.LASF308:
	.string	"BTC_AV_SINK_API_INIT_EVT"
.LASF405:
	.string	"bd_addr_any"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF178:
	.string	"tBTA_AV_EDR"
.LASF38:
	.string	"BT_STATUS_SUCCESS"
.LASF123:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF43:
	.string	"BT_STATUS_DONE"
.LASF4:
	.string	"__uint16_t"
.LASF352:
	.string	"btc_a2d_cb_to_app"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF272:
	.string	"ESP_A2D_MEDIA_CTRL_NONE"
.LASF39:
	.string	"BT_STATUS_FAIL"
.LASF124:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF227:
	.string	"rc_feat"
.LASF32:
	.string	"ESP_LOG_WARN"
.LASF388:
	.string	"btc_av_stream_ready"
.LASF324:
	.string	"ctrl"
.LASF200:
	.string	"rc_id"
.LASF403:
	.string	"btc_a2dp_call_handler"
.LASF137:
	.string	"BTM_PM_STS_SSR"
.LASF212:
	.string	"enable"
.LASF192:
	.string	"tBTA_AV_PROTECT_RSP"
.LASF147:
	.string	"tBTA_AV_CODE"
.LASF76:
	.string	"tAVRC_MSG_PASS"
.LASF168:
	.string	"tBTA_AV_CO_FUNCTS"
.LASF152:
	.string	"tBTA_AV_CO_SETCFG"
.LASF365:
	.string	"stat"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF82:
	.string	"pass"
.LASF273:
	.string	"ESP_A2D_MEDIA_CTRL_CHECK_SRC_RDY"
.LASF249:
	.string	"BTC_PID_SPP"
.LASF42:
	.string	"BT_STATUS_BUSY"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF52:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF385:
	.string	"btc_a2d_sink_connect"
.LASF328:
	.string	"ch_mode"
.LASF358:
	.string	"av_dest"
.LASF251:
	.string	"esp_bd_addr_t"
.LASF329:
	.string	"block_len"
.LASF456:
	.string	"BTA_AvRegister"
.LASF362:
	.string	"sbc_cie"
.LASF77:
	.string	"p_browse_data"
.LASF392:
	.string	"btc_av_state_opened_handler"
.LASF49:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF196:
	.string	"peer_addr"
.LASF223:
	.string	"suspend"
.LASF416:
	.string	"A2D_ParsSbcInfo"
.LASF19:
	.string	"_Bool"
.LASF294:
	.string	"esp_a2d_cb_t"
.LASF377:
	.string	"p_av"
.LASF224:
	.string	"pend"
.LASF54:
	.string	"BT_STATUS_TIMEOUT"
.LASF457:
	.string	"BTA_AvDeregister"
.LASF120:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF349:
	.string	"uuid"
.LASF450:
	.string	"free"
.LASF463:
	.string	"btc_a2dp_control_datapath_ctrl"
.LASF218:
	.string	"remote_cmd"
.LASF160:
	.string	"disc_res"
.LASF213:
	.string	"registr"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF228:
	.string	"tBTA_AV"
.LASF462:
	.string	"btc_a2dp_control_media_ctrl"
.LASF285:
	.string	"remote_bda"
.LASF455:
	.string	"BTA_AvEnable"
.LASF258:
	.string	"ESP_A2D_CONNECTION_STATE_CONNECTED"
.LASF271:
	.string	"esp_a2d_media_ctrl_ack_t"
.LASF336:
	.string	"BTC_AV_STATE_IDLE"
.LASF170:
	.string	"features"
.LASF9:
	.string	"long long int"
.LASF394:
	.string	"btc_av_execute_service"
.LASF219:
	.string	"remote_rsp"
.LASF447:
	.string	"btc_sm_shutdown"
.LASF203:
	.string	"tBTA_AV_REMOTE_CMD"
.LASF310:
	.string	"BTC_AV_SINK_API_CONNECT_EVT"
.LASF153:
	.string	"tBTA_AV_CO_OPEN"
.LASF366:
	.string	"dump_av_sm_event_name"
.LASF27:
	.string	"char"
.LASF78:
	.string	"browse_len"
.LASF409:
	.string	"btc_av_state_handlers"
.LASF149:
	.string	"tBTA_AV_CO_INIT"
.LASF81:
	.string	"vendor"
.LASF136:
	.string	"BTM_PM_STS_PARK"
.LASF154:
	.string	"tBTA_AV_CO_CLOSE"
.LASF300:
	.string	"btc_sm_handler_t"
.LASF342:
	.string	"bta_handle"
.LASF376:
	.string	"btc_av_state_started_handler"
.LASF338:
	.string	"BTC_AV_STATE_OPENED"
.LASF33:
	.string	"ESP_LOG_INFO"
.LASF466:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF116:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF23:
	.string	"data"
.LASF60:
	.string	"opcode"
.LASF8:
	.string	"unsigned int"
.LASF304:
	.string	"BTC_AV_STOP_STREAM_REQ_EVT"
.LASF313:
	.string	"BTC_AV_SRC_API_INIT_EVT"
.LASF174:
	.string	"app_id"
.LASF183:
	.string	"tBTA_AV_CLOSE"
.LASF240:
	.string	"BTC_PID_BLE_HID"
.LASF11:
	.string	"uint8_t"
.LASF191:
	.string	"err_code"
.LASF175:
	.string	"status"
.LASF370:
	.string	"btc_a2d_sink_init"
.LASF22:
	.string	"layer_specific"
.LASF319:
	.string	"BTC_AV_DATAPATH_CTRL_EVT"
.LASF446:
	.string	"btc_dm_disable_service"
.LASF83:
	.string	"browse"
.LASF372:
	.string	"btc_a2d_src_init"
.LASF360:
	.string	"que_len"
.LASF317:
	.string	"BTC_AV_SRC_API_REG_DATA_CB_EVT"
.LASF295:
	.string	"esp_a2d_sink_data_cb_t"
.LASF210:
	.string	"tBTA_AV_PEND"
.LASF259:
	.string	"ESP_A2D_CONNECTION_STATE_DISCONNECTING"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF237:
	.string	"BTC_PID_GATTS"
.LASF31:
	.string	"ESP_LOG_ERROR"
.LASF459:
	.string	"BTA_AvEnable_Sink"
.LASF467:
	.string	"alarm_t"
.LASF335:
	.string	"osi_alarm_t"
.LASF357:
	.string	"av_src"
.LASF422:
	.string	"btc_sm_init"
.LASF373:
	.string	"btc_report_connection_state"
.LASF276:
	.string	"ESP_A2D_MEDIA_CTRL_SUSPEND"
.LASF400:
	.string	"btc_av_get_peer_sep"
.LASF423:
	.string	"btc_dm_enable_service"
.LASF445:
	.string	"btc_a2dp_source_shutdown"
.LASF204:
	.string	"rsp_code"
.LASF67:
	.string	"page"
.LASF121:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF238:
	.string	"BTC_PID_GATT_COMMON"
.LASF197:
	.string	"tBTA_AV_RC_OPEN"
.LASF63:
	.string	"unit_type"
.LASF268:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_SUCCESS"
.LASF269:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_FAILURE"
.LASF252:
	.string	"esp_a2d_mct_t"
.LASF327:
	.string	"samp_freq"
.LASF397:
	.string	"btc_av_is_connected"
.LASF454:
	.string	"btc_rc_get_connected_peer"
.LASF113:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF415:
	.string	"btc_a2dp_sink_reset_decoder"
.LASF441:
	.string	"BTA_AvOpen"
.LASF239:
	.string	"BTC_PID_GAP_BLE"
.LASF283:
	.string	"btc_msg"
.LASF72:
	.string	"op_id"
.LASF289:
	.string	"conn_stat"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF118:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF407:
	.string	"btc_av_cb"
.LASF374:
	.string	"btc_av_state_closing_handler"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF68:
	.string	"tAVRC_MSG_SUB"
.LASF351:
	.string	"param"
.LASF151:
	.string	"tBTA_AV_CO_GETCFG"
.LASF270:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_BUSY"
.LASF134:
	.string	"BTM_PM_STS_HOLD"
.LASF439:
	.string	"BTA_AvDisconnect"
.LASF281:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_EVT"
.LASF256:
	.string	"ESP_A2D_CONNECTION_STATE_DISCONNECTED"
.LASF242:
	.string	"BTC_PID_BLUFI"
.LASF418:
	.string	"esp_log_write"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF127:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF277:
	.string	"esp_a2d_media_ctrl_t"
.LASF431:
	.string	"btc_a2dp_on_started"
.LASF139:
	.string	"BTM_PM_STS_ERROR"
.LASF375:
	.string	"btc_report_audio_state"
.LASF64:
	.string	"unit"
.LASF194:
	.string	"sdp_disc_done"
.LASF427:
	.string	"btc_a2dp_source_set_tx_flush"
.LASF184:
	.string	"initiator"
.LASF419:
	.string	"btc_sm_dispatch"
.LASF208:
	.string	"p_msg"
.LASF257:
	.string	"ESP_A2D_CONNECTION_STATE_CONNECTING"
.LASF451:
	.string	"btc_a2dp_control_command_ack"
.LASF85:
	.string	"tA2D_STATUS"
.LASF275:
	.string	"ESP_A2D_MEDIA_CTRL_STOP"
.LASF390:
	.string	"btc_av_event_deep_copy"
.LASF461:
	.string	"btc_a2dp_src_reg_data_cb"
.LASF355:
	.string	"p_dest"
.LASF263:
	.string	"esp_a2d_disc_rsn_t"
.LASF150:
	.string	"tBTA_AV_CO_DISC_RES"
.LASF265:
	.string	"ESP_A2D_AUDIO_STATE_STOPPED"
.LASF426:
	.string	"btc_sm_change_state"
.LASF298:
	.string	"btc_sm_event_t"
.LASF12:
	.string	"uint16_t"
.LASF290:
	.string	"audio_stat"
.LASF383:
	.string	"btc_a2d_sink_deinit"
.LASF434:
	.string	"BTA_AvCloseRc"
.LASF236:
	.string	"BTC_PID_DEV"
.LASF250:
	.string	"BTC_PID_NUM"
.LASF406:
	.string	"bd_addr_null"
.LASF307:
	.string	"btc_av_sm_event_t"
.LASF391:
	.string	"btc_dispatch_sm_event"
.LASF161:
	.string	"getcfg"
.LASF288:
	.string	"media_ctrl_stat_param"
.LASF314:
	.string	"BTC_AV_SRC_API_DEINIT_EVT"
.LASF2:
	.string	"short int"
.LASF114:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF320:
	.string	"connect"
.LASF65:
	.string	"tAVRC_MSG_UNIT"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF181:
	.string	"tBTA_AV_OPEN"
.LASF458:
	.string	"BTA_AvDisable"
.LASF158:
	.string	"tBTA_AV_CO_DELAY"
.LASF220:
	.string	"vendor_cmd"
.LASF167:
	.string	"delay"
.LASF119:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF332:
	.string	"max_bitpool"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF280:
	.string	"ESP_A2D_AUDIO_CFG_EVT"
.LASF414:
	.string	"btc_a2dp_sink_enque_buf"
.LASF255:
	.string	"esp_a2d_mcc_t"
.LASF437:
	.string	"btc_queue_advance"
.LASF293:
	.string	"esp_a2d_cb_param_t"
.LASF199:
	.string	"tBTA_AV_RC_FEAT"
.LASF185:
	.string	"suspending"
.LASF438:
	.string	"memcmp"
.LASF201:
	.string	"key_state"
.LASF172:
	.string	"chnl"
.LASF350:
	.string	"btc_av_connect_req_t"
.LASF247:
	.string	"BTC_PID_A2DP"
.LASF321:
	.string	"data_cb"
.LASF211:
	.string	"tBTA_AV_REJECT"
.LASF309:
	.string	"BTC_AV_SINK_API_DEINIT_EVT"
.LASF177:
	.string	"tBTA_AV_REGISTER"
.LASF80:
	.string	"tAVRC_MSG_BROWSE"
.LASF420:
	.string	"btc_a2dp_source_startup"
.LASF3:
	.string	"__uint8_t"
.LASF253:
	.string	"atrac"
.LASF333:
	.string	"min_bitpool"
.LASF334:
	.string	"tA2D_SBC_CIE"
.LASF318:
	.string	"BTC_AV_API_MEDIA_CTRL_EVT"
.LASF128:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF287:
	.string	"a2d_audio_cfg_param"
.LASF165:
	.string	"start"
.LASF180:
	.string	"starting"
.LASF337:
	.string	"BTC_AV_STATE_OPENING"
.LASF430:
	.string	"btc_rc_handler"
.LASF205:
	.string	"tBTA_AV_REMOTE_RSP"
.LASF26:
	.string	"BD_ADDR"
.LASF325:
	.string	"dp_evt"
.LASF163:
	.string	"open"
.LASF41:
	.string	"BT_STATUS_NOMEM"
.LASF70:
	.string	"vendor_len"
.LASF62:
	.string	"company_id"
.LASF384:
	.string	"btc_a2d_src_deinit"
.LASF40:
	.string	"BT_STATUS_NOT_READY"
.LASF159:
	.string	"init"
.LASF267:
	.string	"esp_a2d_audio_state_t"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF24:
	.string	"sizetype"
.LASF59:
	.string	"subunit_id"
.LASF143:
	.string	"tBTA_AV_HNDL"
.LASF29:
	.string	"long unsigned int"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF244:
	.string	"BTC_PID_ALARM"
.LASF56:
	.string	"bt_status_t"
.LASF468:
	.string	"bta_av_a2d_cos"
.LASF35:
	.string	"ESP_LOG_VERBOSE"
.LASF433:
	.string	"BTA_AvClose"
.LASF278:
	.string	"ESP_A2D_CONNECTION_STATE_EVT"
.LASF13:
	.string	"int32_t"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF235:
	.string	"BTC_PID_MAIN_INIT"
.LASF379:
	.string	"p_bta_data"
.LASF452:
	.string	"btc_a2dp_source_setup_codec"
.LASF126:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF291:
	.string	"audio_cfg"
.LASF57:
	.string	"ctype"
.LASF401:
	.string	"btc_av_is_peer_edr"
.LASF274:
	.string	"ESP_A2D_MEDIA_CTRL_START"
.LASF389:
	.string	"btc_av_stream_started_ready"
.LASF398:
	.string	"btc_av_get_sm_handle"
.LASF395:
	.string	"b_enable"
.LASF254:
	.string	"type"
.LASF339:
	.string	"BTC_AV_STATE_STARTED"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF44:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF129:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF233:
	.string	"BTC_SIG_API_CB"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF312:
	.string	"BTC_AV_SINK_API_REG_DATA_CB_EVT"
.LASF246:
	.string	"BTC_PID_PRF_QUE"
.LASF45:
	.string	"BT_STATUS_PARM_INVALID"
.LASF176:
	.string	"p_bta_av_cos"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF155:
	.string	"tBTA_AV_CO_START"
.LASF146:
	.string	"tBTA_AV_STATE"
.LASF306:
	.string	"BTC_AV_SINK_CONFIG_REQ_EVT"
.LASF173:
	.string	"hndl"
.LASF286:
	.string	"a2d_audio_stat_param"
.LASF51:
	.string	"BT_STATUS_PENDING"
.LASF382:
	.string	"clean_up"
.LASF73:
	.string	"state"
.LASF141:
	.string	"tBTA_AV_FEAT"
.LASF202:
	.string	"label"
.LASF207:
	.string	"tBTA_AV_VENDOR"
.LASF34:
	.string	"ESP_LOG_DEBUG"
.LASF186:
	.string	"tBTA_AV_START"
.LASF369:
	.string	"btc_av_init"
.LASF74:
	.string	"p_pass_data"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF144:
	.string	"tBTA_AV_CODEC"
.LASF50:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF230:
	.string	"tBTA_AV_MEDIA"
.LASF396:
	.string	"btc_av_sink_execute_service"
.LASF449:
	.string	"btc_queue_connect"
.LASF440:
	.string	"btc_a2dp_on_idle"
.LASF162:
	.string	"setcfg"
.LASF179:
	.string	"bd_addr"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF0:
	.string	"signed char"
.LASF122:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF305:
	.string	"BTC_AV_SUSPEND_STREAM_REQ_EVT"
.LASF356:
	.string	"p_src"
.LASF5:
	.string	"short unsigned int"
.LASF248:
	.string	"BTC_PID_AVRC"
.LASF326:
	.string	"btc_av_args_t"
.LASF469:
	.string	"memcpy"
.LASF361:
	.string	"a2d_status"
.LASF264:
	.string	"ESP_A2D_AUDIO_STATE_REMOTE_SUSPEND"
.LASF30:
	.string	"ESP_LOG_NONE"
.LASF46:
	.string	"BT_STATUS_UNHANDLED"
.LASF359:
	.string	"__func__"
.LASF460:
	.string	"btc_a2dp_sink_reg_data_cb"
.LASF292:
	.string	"media_ctrl_stat"
.LASF299:
	.string	"btc_sm_handle_t"
.LASF301:
	.string	"BTC_AV_CONNECT_REQ_EVT"
.LASF386:
	.string	"btc_a2d_src_connect"
.LASF215:
	.string	"protect_rsp"
.LASF131:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF71:
	.string	"tAVRC_MSG_VENDOR"
.LASF404:
	.string	"btc_a2dp_cb_handler"
.LASF348:
	.string	"target_bda"
.LASF15:
	.string	"UINT8"
.LASF198:
	.string	"tBTA_AV_RC_CLOSE"
.LASF243:
	.string	"BTC_PID_DM_SEC"
.LASF465:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_av.c"
.LASF156:
	.string	"tBTA_AV_CO_STOP"
.LASF354:
	.string	"btc_a2d_cb"
.LASF331:
	.string	"alloc_mthd"
.LASF14:
	.string	"uint32_t"
.LASF429:
	.string	"btc_a2dp_on_stopped"
.LASF231:
	.string	"btc_msg_t"
.LASF408:
	.string	"tle_av_open_on_rc"
.LASF412:
	.string	"btc_transfer_context"
.LASF393:
	.string	"btc_initiate_av_open_tmr_hdlr"
.LASF311:
	.string	"BTC_AV_SINK_API_DISCONNECT_EVT"
.LASF245:
	.string	"BTC_PID_GAP_BT"
.LASF195:
	.string	"peer_features"
.LASF138:
	.string	"BTM_PM_STS_PENDING"
.LASF330:
	.string	"num_subbands"
.LASF346:
	.string	"peer_sep"
.LASF425:
	.string	"btc_profile_cb_get"
.LASF132:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF428:
	.string	"btc_a2dp_sink_set_rx_flush"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
