	.file	"btc_util.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"BTA_AV_RC_OPEN_EVT"
	.align	4
.LC2:
	.string	"BTA_AV_RC_CLOSE_EVT"
	.align	4
.LC4:
	.string	"BTA_AV_REMOTE_CMD_EVT"
	.align	4
.LC6:
	.string	"BTA_AV_REMOTE_RSP_EVT"
	.align	4
.LC8:
	.string	"BTA_AV_VENDOR_CMD_EVT"
	.align	4
.LC10:
	.string	"BTA_AV_VENDOR_RSP_EVT"
	.align	4
.LC12:
	.string	"BTA_AV_META_MSG_EVT"
	.align	4
.LC14:
	.string	"BTA_AV_RC_FEAT_EVT"
	.align	4
.LC16:
	.string	"UNKNOWN_EVENT"
	.section	.text.dump_rc_event,"ax",@progbits
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
	.literal .LC18, .L4
	.align	4
	.global	dump_rc_event
	.type	dump_rc_event, @function
dump_rc_event:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/core/btc_util.c"
	.loc 1 67 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a2, a2, 0, 8
	.loc 1 68 0
	addi	a2, a2, -8
.LVL1:
	extui	a8, a2, 0, 8
	movi.n	a9, 0xb
	bltu	a9, a8, .L2
	mov.n	a2, a8
.LVL2:
	l32r	a8, .LC18
	addx4	a2, a2, a8
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.dump_rc_event,"a",@progbits
	.align	4
	.align	4
.L4:
	.word	.L3
	.word	.L12
	.word	.L6
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L2
	.word	.L2
	.word	.L2
	.word	.L10
	.word	.L2
	.word	.L11
	.section	.text.dump_rc_event
.L3:
	.loc 1 69 0
	l32r	a2, .LC1
	retw.n
.L6:
	.loc 1 71 0
	l32r	a2, .LC5
	retw.n
.L7:
	.loc 1 72 0
	l32r	a2, .LC7
	retw.n
.L8:
	.loc 1 73 0
	l32r	a2, .LC9
	retw.n
.L9:
	.loc 1 74 0
	l32r	a2, .LC11
	retw.n
.L10:
	.loc 1 75 0
	l32r	a2, .LC13
	retw.n
.L11:
	.loc 1 76 0
	l32r	a2, .LC15
	retw.n
.L2:
	.loc 1 78 0
	l32r	a2, .LC17
	retw.n
.L12:
	.loc 1 70 0
	l32r	a2, .LC3
	.loc 1 80 0
	retw.n
.LFE26:
	.size	dump_rc_event, .-dump_rc_event
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"AVRC_EVT_PLAY_STATUS_CHANGE"
	.align	4
.LC21:
	.string	"AVRC_EVT_TRACK_CHANGE"
	.align	4
.LC23:
	.string	"AVRC_EVT_TRACK_REACHED_END"
	.align	4
.LC25:
	.string	"AVRC_EVT_TRACK_REACHED_START"
	.align	4
.LC27:
	.string	"AVRC_EVT_PLAY_POS_CHANGED"
	.align	4
.LC29:
	.string	"AVRC_EVT_BATTERY_STATUS_CHANGE"
	.align	4
.LC31:
	.string	"AVRC_EVT_SYSTEM_STATUS_CHANGE"
	.align	4
.LC33:
	.string	"AVRC_EVT_APP_SETTING_CHANGE"
	.align	4
.LC35:
	.string	"AVRC_EVT_VOLUME_CHANGE"
	.align	4
.LC37:
	.string	"Unhandled Event ID"
	.section	.text.dump_rc_notification_event_id,"ax",@progbits
	.literal_position
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC24, .LC23
	.literal .LC26, .LC25
	.literal .LC28, .LC27
	.literal .LC30, .LC29
	.literal .LC32, .LC31
	.literal .LC34, .LC33
	.literal .LC36, .LC35
	.literal .LC38, .LC37
	.literal .LC39, .L16
	.align	4
	.global	dump_rc_notification_event_id
	.type	dump_rc_notification_event_id, @function
dump_rc_notification_event_id:
.LFB27:
	.loc 1 83 0
.LVL3:
	entry	sp, 32
.LCFI1:
	extui	a2, a2, 0, 8
	.loc 1 84 0
	movi.n	a8, 0xd
	bltu	a8, a2, .L14
	l32r	a8, .LC39
	addx4	a2, a2, a8
.LVL4:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.dump_rc_notification_event_id,"a",@progbits
	.align	4
	.align	4
.L16:
	.word	.L14
	.word	.L15
	.word	.L25
	.word	.L18
	.word	.L19
	.word	.L20
	.word	.L21
	.word	.L22
	.word	.L23
	.word	.L14
	.word	.L14
	.word	.L14
	.word	.L14
	.word	.L24
	.section	.text.dump_rc_notification_event_id
.L15:
	.loc 1 85 0
	l32r	a2, .LC20
	retw.n
.L18:
	.loc 1 87 0
	l32r	a2, .LC24
	retw.n
.L19:
	.loc 1 88 0
	l32r	a2, .LC26
	retw.n
.L20:
	.loc 1 89 0
	l32r	a2, .LC28
	retw.n
.L21:
	.loc 1 90 0
	l32r	a2, .LC30
	retw.n
.L22:
	.loc 1 91 0
	l32r	a2, .LC32
	retw.n
.L23:
	.loc 1 92 0
	l32r	a2, .LC34
	retw.n
.L24:
	.loc 1 93 0
	l32r	a2, .LC36
	retw.n
.L14:
	.loc 1 96 0
	l32r	a2, .LC38
	retw.n
.L25:
	.loc 1 86 0
	l32r	a2, .LC22
	.loc 1 98 0
	retw.n
.LFE27:
	.size	dump_rc_notification_event_id, .-dump_rc_notification_event_id
	.section	.rodata.str1.4
	.align	4
.LC40:
	.string	"AVRC_PDU_LIST_PLAYER_APP_ATTR"
	.align	4
.LC42:
	.string	"AVRC_PDU_LIST_PLAYER_APP_VALUES"
	.align	4
.LC44:
	.string	"AVRC_PDU_GET_CUR_PLAYER_APP_VALUE"
	.align	4
.LC46:
	.string	"AVRC_PDU_SET_PLAYER_APP_VALUE"
	.align	4
.LC48:
	.string	"AVRC_PDU_GET_PLAYER_APP_ATTR_TEXT"
	.align	4
.LC50:
	.string	"AVRC_PDU_GET_PLAYER_APP_VALUE_TEXT"
	.align	4
.LC52:
	.string	"AVRC_PDU_INFORM_DISPLAY_CHARSET"
	.align	4
.LC54:
	.string	"AVRC_PDU_INFORM_BATTERY_STAT_OF_CT"
	.align	4
.LC56:
	.string	"AVRC_PDU_GET_ELEMENT_ATTR"
	.align	4
.LC58:
	.string	"AVRC_PDU_GET_PLAY_STATUS"
	.align	4
.LC60:
	.string	"AVRC_PDU_REGISTER_NOTIFICATION"
	.align	4
.LC62:
	.string	"AVRC_PDU_REQUEST_CONTINUATION_RSP"
	.align	4
.LC64:
	.string	"AVRC_PDU_ABORT_CONTINUATION_RSP"
	.align	4
.LC66:
	.string	"AVRC_PDU_SET_ABSOLUTE_VOLUME"
	.align	4
.LC68:
	.string	"Unknown PDU"
	.section	.text.dump_rc_pdu,"ax",@progbits
	.literal_position
	.literal .LC41, .LC40
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC49, .LC48
	.literal .LC51, .LC50
	.literal .LC53, .LC52
	.literal .LC55, .LC54
	.literal .LC57, .LC56
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.literal .LC63, .LC62
	.literal .LC65, .LC64
	.literal .LC67, .LC66
	.literal .LC69, .LC68
	.literal .LC70, .L29
	.align	4
	.global	dump_rc_pdu
	.type	dump_rc_pdu, @function
dump_rc_pdu:
.LFB28:
	.loc 1 101 0
.LVL5:
	entry	sp, 32
.LCFI2:
	extui	a2, a2, 0, 8
	.loc 1 102 0
	addi	a2, a2, -17
.LVL6:
	extui	a8, a2, 0, 8
	movi.n	a9, 0x3f
	bltu	a9, a8, .L27
	mov.n	a2, a8
.LVL7:
	l32r	a8, .LC70
	addx4	a2, a2, a8
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.dump_rc_pdu,"a",@progbits
	.align	4
	.align	4
.L29:
	.word	.L28
	.word	.L43
	.word	.L31
	.word	.L32
	.word	.L33
	.word	.L34
	.word	.L35
	.word	.L36
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L37
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L38
	.word	.L39
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L40
	.word	.L41
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L27
	.word	.L42
	.section	.text.dump_rc_pdu
.L28:
	.loc 1 103 0
	l32r	a2, .LC41
	retw.n
.L31:
	.loc 1 105 0
	l32r	a2, .LC45
	retw.n
.L32:
	.loc 1 106 0
	l32r	a2, .LC47
	retw.n
.L33:
	.loc 1 107 0
	l32r	a2, .LC49
	retw.n
.L34:
	.loc 1 108 0
	l32r	a2, .LC51
	retw.n
.L35:
	.loc 1 109 0
	l32r	a2, .LC53
	retw.n
.L36:
	.loc 1 110 0
	l32r	a2, .LC55
	retw.n
.L37:
	.loc 1 111 0
	l32r	a2, .LC57
	retw.n
.L38:
	.loc 1 112 0
	l32r	a2, .LC59
	retw.n
.L39:
	.loc 1 113 0
	l32r	a2, .LC61
	retw.n
.L40:
	.loc 1 114 0
	l32r	a2, .LC63
	retw.n
.L41:
	.loc 1 115 0
	l32r	a2, .LC65
	retw.n
.L42:
	.loc 1 116 0
	l32r	a2, .LC67
	retw.n
.L27:
	.loc 1 118 0
	l32r	a2, .LC69
	retw.n
.L43:
	.loc 1 104 0
	l32r	a2, .LC43
	.loc 1 120 0
	retw.n
.LFE28:
	.size	dump_rc_pdu, .-dump_rc_pdu
	.section	.text.devclass2uint,"ax",@progbits
	.align	4
	.global	devclass2uint
	.type	devclass2uint, @function
devclass2uint:
.LFB29:
	.loc 1 124 0
.LVL8:
	entry	sp, 32
.LCFI3:
.LVL9:
	.loc 1 127 0
	beqz.n	a2, .L46
	.loc 1 129 0
	l8ui	a9, a2, 2
	l8ui	a8, a2, 1
	slli	a8, a8, 8
	or	a9, a9, a8
	l8ui	a8, a2, 0
	slli	a8, a8, 16
	or	a2, a9, a8
.LVL10:
	retw.n
.LVL11:
.L46:
	.loc 1 125 0
	movi.n	a2, 0
.LVL12:
	.loc 1 132 0
	retw.n
.LFE29:
	.size	devclass2uint, .-devclass2uint
	.section	.text.uint2devclass,"ax",@progbits
	.align	4
	.global	uint2devclass
	.type	uint2devclass, @function
uint2devclass:
.LFB30:
	.loc 1 135 0
.LVL13:
	entry	sp, 32
.LCFI4:
	.loc 1 136 0
	s8i	a2, a3, 2
	.loc 1 137 0
	extui	a8, a2, 8, 8
	s8i	a8, a3, 1
	.loc 1 138 0
	extui	a2, a2, 16, 8
.LVL14:
	s8i	a2, a3, 0
	retw.n
.LFE30:
	.size	uint2devclass, .-uint2devclass
	.section	.text.uuid128_be_to_esp_uuid,"ax",@progbits
	.literal_position
	.literal .LC71, base_uuid_be+4
	.align	4
	.global	uuid128_be_to_esp_uuid
	.type	uuid128_be_to_esp_uuid, @function
uuid128_be_to_esp_uuid:
.LFB31:
	.loc 1 145 0
.LVL15:
	entry	sp, 32
.LCFI5:
	.loc 1 146 0
	movi.n	a12, 0xc
	addi.n	a11, a3, 4
	l32r	a10, .LC71
	call8	memcmp
.LVL16:
	beqz.n	a10, .L49
.LBB30:
	.loc 1 147 0
	movi.n	a8, 0x10
	s8i	a8, a2, 0
	movi.n	a8, 0
	s8i	a8, a2, 1
	.loc 1 148 0
	addi.n	a3, a3, 15
.LVL17:
	.loc 1 149 0
	addi.n	a8, a2, 2
.LVL18:
	.loc 1 150 0
	addi	a2, a2, 18
.LVL19:
	.loc 1 151 0
	j	.L50
.LVL20:
.L51:
	.loc 1 151 0 is_stmt 0 discriminator 2
	l8ui	a9, a3, 0
	s8i	a9, a8, 0
	addi.n	a8, a8, 1
.LVL21:
	addi.n	a3, a3, -1
.LVL22:
.L50:
	.loc 1 151 0 discriminator 1
	bne	a8, a2, .L51
	retw.n
.LVL23:
.L49:
.LBE30:
	.loc 1 153 0 is_stmt 1
	l8ui	a8, a3, 0
	bnez.n	a8, .L53
	.loc 1 153 0 is_stmt 0 discriminator 1
	l8ui	a8, a3, 1
	bnez.n	a8, .L53
	.loc 1 154 0 is_stmt 1
	movi.n	a8, 2
	s8i	a8, a2, 0
	movi.n	a8, 0
	s8i	a8, a2, 1
	.loc 1 155 0
	l8ui	a9, a3, 2
	l8ui	a8, a3, 3
	slli	a3, a9, 8
.LVL24:
	add.n	a3, a3, a8
	extui	a3, a3, 0, 16
	s8i	a3, a2, 2
	srli	a3, a3, 8
	s8i	a3, a2, 3
	retw.n
.LVL25:
.L53:
	.loc 1 157 0
	movi.n	a8, 4
	s8i	a8, a2, 0
	movi.n	a8, 0
	s8i	a8, a2, 1
	.loc 1 158 0
	l8ui	a8, a3, 2
	slli	a8, a8, 8
	l8ui	a9, a3, 3
	add.n	a8, a9, a8
	addi.n	a9, a2, 2
	s8i	a8, a2, 2
	extui	a10, a8, 8, 8
	s8i	a10, a2, 3
	extui	a10, a8, 16, 8
	s8i	a10, a2, 4
	extui	a10, a8, 24, 8
	s8i	a10, a2, 5
	.loc 1 159 0
	l8ui	a10, a3, 0
	slli	a10, a10, 24
	l8ui	a3, a3, 1
.LVL26:
	slli	a3, a3, 16
	add.n	a3, a10, a3
	add.n	a8, a3, a8
	s8i	a8, a2, 2
	extui	a2, a8, 8, 8
.LVL27:
	s8i	a2, a9, 1
	extui	a2, a8, 16, 8
	s8i	a2, a9, 2
	extui	a8, a8, 24, 8
	s8i	a8, a9, 3
	retw.n
.LFE31:
	.size	uuid128_be_to_esp_uuid, .-uuid128_be_to_esp_uuid
	.section	.rodata.str1.4
	.align	4
.LC74:
	.string	"%.8x-%.4x-%.4x-%.4x-%.8x%.4x"
	.section	.text.uuid_to_string_legacy,"ax",@progbits
	.literal_position
	.literal .LC72, 65280
	.literal .LC73, 16711680
	.literal .LC75, .LC74
	.align	4
	.global	uuid_to_string_legacy
	.type	uuid_to_string_legacy, @function
uuid_to_string_legacy:
.LFB32:
	.loc 1 166 0
.LVL28:
	entry	sp, 64
.LCFI6:
	.loc 1 170 0
	l8ui	a9, a2, 0
	l8ui	a8, a2, 1
	s8i	a9, sp, 16
	l8ui	a9, a2, 2
	s8i	a8, sp, 17
	l8ui	a8, a2, 3
	s8i	a9, sp, 18
	s8i	a8, sp, 19
	.loc 1 171 0
	l8ui	a9, a2, 4
	l8ui	a8, a2, 5
	s8i	a9, sp, 24
	s8i	a8, sp, 25
	.loc 1 172 0
	l8ui	a9, a2, 6
	l8ui	a8, a2, 7
	s8i	a9, sp, 26
	s8i	a8, sp, 27
	.loc 1 173 0
	l8ui	a9, a2, 8
	l8ui	a8, a2, 9
	s8i	a9, sp, 28
	s8i	a8, sp, 29
	.loc 1 174 0
	l8ui	a9, a2, 10
	l8ui	a10, a2, 11
	s8i	a9, sp, 20
	l8ui	a9, a2, 12
	s8i	a10, sp, 21
	l8ui	a8, a2, 13
	s8i	a9, sp, 22
	s8i	a8, sp, 23
	.loc 1 175 0
	l8ui	a8, a2, 14
	l8ui	a2, a2, 15
.LVL29:
	s8i	a8, sp, 30
	s8i	a2, sp, 31
	.loc 1 177 0
	l32i.n	a9, sp, 16
.LVL30:
.LBB31:
.LBB32:
.LBB33:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.loc 2 105 0
	slli	a12, a9, 24
	.loc 2 106 0
	l32r	a10, .LC72
	and	a2, a9, a10
	slli	a2, a2, 8
	.loc 2 105 0
	or	a2, a12, a2
	.loc 2 107 0
	l32r	a8, .LC73
	and	a12, a9, a8
	srli	a12, a12, 8
	.loc 2 106 0
	or	a12, a2, a12
	.loc 2 108 0
	extui	a9, a9, 24, 8
.LVL31:
.LBE33:
.LBE32:
.LBE31:
	.loc 1 178 0
	l16ui	a2, sp, 24
.LVL32:
.LBB34:
.LBB35:
.LBB36:
	.loc 2 99 0
	slli	a13, a2, 8
	srli	a2, a2, 8
	or	a13, a13, a2
.LBE36:
.LBE35:
.LBE34:
	.loc 1 179 0
	l16ui	a2, sp, 26
.LVL33:
.LBB37:
.LBB38:
.LBB39:
	.loc 2 99 0
	slli	a14, a2, 8
	srli	a2, a2, 8
	or	a14, a14, a2
.LBE39:
.LBE38:
.LBE37:
	.loc 1 179 0
	l16ui	a2, sp, 28
.LVL34:
.LBB40:
.LBB41:
.LBB42:
	.loc 2 99 0
	slli	a15, a2, 8
	srli	a2, a2, 8
	or	a15, a15, a2
.LBE42:
.LBE41:
.LBE40:
	.loc 1 177 0
	l32i.n	a2, sp, 20
.LVL35:
.LBB43:
.LBB44:
.LBB45:
	.loc 2 105 0
	slli	a11, a2, 24
	.loc 2 106 0
	and	a10, a2, a10
	slli	a10, a10, 8
	.loc 2 105 0
	or	a10, a10, a11
	.loc 2 107 0
	and	a8, a2, a8
	srli	a8, a8, 8
	.loc 2 106 0
	or	a8, a10, a8
	.loc 2 108 0
	extui	a2, a2, 24, 8
.LVL36:
	.loc 2 105 0
	or	a2, a8, a2
.LBE45:
.LBE44:
.LBE43:
	.loc 1 180 0
	l16ui	a8, sp, 30
.LVL37:
.LBB46:
.LBB47:
.LBB48:
	.loc 2 99 0
	slli	a10, a8, 8
	srli	a8, a8, 8
	or	a8, a10, a8
	extui	a8, a8, 0, 16
.LBE48:
.LBE47:
.LBE46:
	.loc 1 177 0
	s32i.n	a8, sp, 4
	s32i.n	a2, sp, 0
	extui	a15, a15, 0, 16
	extui	a14, a14, 0, 16
	extui	a13, a13, 0, 16
	or	a12, a12, a9
	l32r	a11, .LC75
	mov.n	a10, a3
	call8	sprintf
.LVL38:
	retw.n
.LFE32:
	.size	uuid_to_string_legacy, .-uuid_to_string_legacy
	.section	.text.btc_hci_to_esp_status,"ax",@progbits
	.literal_position
	.literal .LC76, .L58
	.align	4
	.global	btc_hci_to_esp_status
	.type	btc_hci_to_esp_status, @function
btc_hci_to_esp_status:
.LFB33:
	.loc 1 185 0
.LVL39:
	entry	sp, 32
.LCFI7:
	extui	a2, a2, 0, 8
.LVL40:
	.loc 1 187 0
	movi.n	a8, 0x3b
	bltu	a8, a2, .L56
	l32r	a8, .LC76
	addx4	a2, a2, a8
.LVL41:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.btc_hci_to_esp_status,"a",@progbits
	.align	4
	.align	4
.L58:
	.word	.L57
	.word	.L59
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L64
	.word	.L56
	.word	.L61
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L62
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L56
	.word	.L63
	.section	.text.btc_hci_to_esp_status
.L57:
	.loc 1 189 0
	movi.n	a2, 0
	retw.n
.L59:
.LVL42:
	.loc 1 195 0
	movi.n	a2, 0xd
	.loc 1 196 0
	retw.n
.LVL43:
.L63:
	.loc 1 198 0
	movi.n	a2, 0xe
	.loc 1 199 0
	retw.n
.LVL44:
.L62:
	.loc 1 201 0
	movi.n	a2, 0xf
	.loc 1 202 0
	retw.n
.LVL45:
.L61:
	.loc 1 204 0
	movi.n	a2, 0x13
	.loc 1 205 0
	retw.n
.LVL46:
.L56:
	.loc 1 207 0
	movi.n	a2, 1
	.loc 1 208 0
	retw.n
.L64:
	.loc 1 192 0
	movi.n	a2, 0x10
.LVL47:
	.loc 1 212 0
	retw.n
.LFE33:
	.size	btc_hci_to_esp_status, .-btc_hci_to_esp_status
	.section	.text.btc_btm_status_to_esp_status,"ax",@progbits
	.literal_position
	.literal .LC77, .L68
	.align	4
	.global	btc_btm_status_to_esp_status
	.type	btc_btm_status_to_esp_status, @function
btc_btm_status_to_esp_status:
.LFB34:
	.loc 1 215 0
.LVL48:
	entry	sp, 32
.LCFI8:
	extui	a2, a2, 0, 8
.LVL49:
	.loc 1 217 0
	movi.n	a8, 0x18
	bltu	a8, a2, .L66
	l32r	a8, .LC77
	addx4	a2, a2, a8
.LVL50:
	l32i.n	a2, a2, 0
	jx	a2
	.section	.rodata.btc_btm_status_to_esp_status,"a",@progbits
	.align	4
	.align	4
.L68:
	.word	.L67
	.word	.L66
	.word	.L75
	.word	.L70
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L71
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L66
	.word	.L72
	.word	.L73
	.word	.L67
	.word	.L74
	.section	.text.btc_btm_status_to_esp_status
.L67:
	.loc 1 219 0
	movi.n	a2, 0
	retw.n
.L70:
.LVL51:
	.loc 1 225 0
	movi.n	a2, 3
	.loc 1 226 0
	retw.n
.LVL52:
.L71:
	.loc 1 228 0
	movi.n	a2, 0xd
	.loc 1 229 0
	retw.n
.LVL53:
.L72:
	.loc 1 231 0
	movi.n	a2, 0x11
	.loc 1 232 0
	retw.n
.LVL54:
.L73:
	.loc 1 234 0
	movi.n	a2, 0x12
	.loc 1 235 0
	retw.n
.LVL55:
.L74:
	.loc 1 240 0
	movi.n	a2, 1
	.loc 1 241 0
	retw.n
.L66:
	.loc 1 243 0
	movi.n	a2, 1
	.loc 1 244 0
	retw.n
.L75:
	.loc 1 222 0
	movi.n	a2, 4
.LVL56:
	.loc 1 248 0
	retw.n
.LFE34:
	.size	btc_btm_status_to_esp_status, .-btc_btm_status_to_esp_status
	.section	.rodata.base_uuid_be,"a",@progbits
	.align	4
	.type	base_uuid_be, @object
	.size	base_uuid_be, 16
base_uuid_be:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	-128
	.byte	0
	.byte	0
	.byte	-128
	.byte	95
	.byte	-101
	.byte	52
	.byte	-5
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI8-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8d6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0xc
	.4byte	.LASF162
	.4byte	.LASF163
	.4byte	.Ldebug_ranges0+0
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x6
	.4byte	0x99
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x21
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x23
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x7
	.4byte	0xcc
	.4byte	0xf9
	.uleb128 0x8
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x7
	.4byte	0xcc
	.4byte	0x10f
	.uleb128 0x8
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x2
	.byte	0x40
	.4byte	0x123
	.uleb128 0xa
	.string	"uu"
	.byte	0x2
	.byte	0x41
	.4byte	0x123
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xab
	.4byte	0x133
	.uleb128 0x8
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x2
	.byte	0x42
	.4byte	0x10f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x21
	.4byte	0x1c9
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x6
	.byte	0x37
	.4byte	0x13e
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.byte	0x57
	.4byte	0x1fe
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x6
	.byte	0x58
	.4byte	0xb6
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x6
	.byte	0x59
	.4byte	0xc1
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x6
	.byte	0x5a
	.4byte	0x123
	.byte	0
	.uleb128 0x9
	.byte	0x12
	.byte	0x6
	.byte	0x52
	.4byte	0x21f
	.uleb128 0xa
	.string	"len"
	.byte	0x6
	.byte	0x56
	.4byte	0xb6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x6
	.byte	0x5b
	.4byte	0x1d4
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x6
	.byte	0x5c
	.4byte	0x1fe
	.uleb128 0xb
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x31
	.4byte	0x2d9
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x15
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x17
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x19
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x1a
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x1c0
	.4byte	0x401
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x15
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x17
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x19
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x1b
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x1d
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0x1e
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0x1f
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0x21
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0x22
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x23
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0x25
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x26
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x27
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x29
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x2a
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x2b
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0x2d
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x2e
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x6ea
	.4byte	0x439
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xab
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0x2
	.byte	0x61
	.4byte	0xb6
	.byte	0x3
	.4byte	0x459
	.uleb128 0x12
	.string	"x"
	.byte	0x2
	.byte	0x61
	.4byte	0xb6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0x2
	.byte	0x67
	.4byte	0xc1
	.byte	0x3
	.4byte	0x473
	.uleb128 0x12
	.string	"x"
	.byte	0x2
	.byte	0x67
	.4byte	0xc1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0x2
	.byte	0x70
	.4byte	0xb6
	.byte	0x3
	.4byte	0x48d
	.uleb128 0x12
	.string	"x"
	.byte	0x2
	.byte	0x70
	.4byte	0xb6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0x2
	.byte	0x86
	.4byte	0xc1
	.byte	0x3
	.4byte	0x4a7
	.uleb128 0x12
	.string	"x"
	.byte	0x2
	.byte	0x86
	.4byte	0xc1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0x1
	.byte	0x42
	.4byte	0xa0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d0
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x1
	.byte	0x42
	.4byte	0xcc
	.4byte	.LLST0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF134
	.byte	0x1
	.byte	0x52
	.4byte	0xa0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f9
	.uleb128 0x14
	.4byte	.LASF136
	.byte	0x1
	.byte	0x52
	.4byte	0xcc
	.4byte	.LLST1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF137
	.byte	0x1
	.byte	0x64
	.4byte	0xa0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x522
	.uleb128 0x15
	.string	"pdu"
	.byte	0x1
	.byte	0x64
	.4byte	0xcc
	.4byte	.LLST2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0x1
	.byte	0x7b
	.4byte	0xd7
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55a
	.uleb128 0x14
	.4byte	.LASF139
	.byte	0x1
	.byte	0x7b
	.4byte	0xf9
	.4byte	.LLST3
	.uleb128 0x16
	.string	"cod"
	.byte	0x1
	.byte	0x7d
	.4byte	0xd7
	.4byte	.LLST4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF140
	.byte	0x1
	.byte	0x86
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58c
	.uleb128 0x15
	.string	"cod"
	.byte	0x1
	.byte	0x86
	.4byte	0xd7
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF139
	.byte	0x1
	.byte	0x86
	.4byte	0xf9
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x17
	.4byte	.LASF141
	.byte	0x1
	.byte	0x90
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x617
	.uleb128 0x15
	.string	"u"
	.byte	0x1
	.byte	0x90
	.4byte	0x617
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x90
	.4byte	0x439
	.4byte	.LLST7
	.uleb128 0x19
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.4byte	0x5f8
	.uleb128 0x16
	.string	"p_i"
	.byte	0x1
	.byte	0x94
	.4byte	0x439
	.4byte	.LLST8
	.uleb128 0x16
	.string	"p_o"
	.byte	0x1
	.byte	0x95
	.4byte	0x439
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LASF142
	.byte	0x1
	.byte	0x96
	.4byte	0x439
	.4byte	.LLST10
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL16
	.4byte	0x8c3
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	base_uuid_be+4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21f
	.uleb128 0x17
	.4byte	.LASF143
	.byte	0x1
	.byte	0xa5
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x807
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0x1
	.byte	0xa5
	.4byte	0x807
	.4byte	.LLST11
	.uleb128 0x1d
	.string	"str"
	.byte	0x1
	.byte	0xa5
	.4byte	0x93
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x1
	.byte	0xa7
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x1
	.byte	0xa7
	.4byte	0xc1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x1
	.byte	0xa8
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x1
	.byte	0xa8
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0x1
	.byte	0xa8
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0x1
	.byte	0xa8
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x1f
	.4byte	0x48d
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0xb1
	.4byte	0x6d8
	.uleb128 0x20
	.4byte	0x49d
	.4byte	.LLST12
	.uleb128 0x21
	.4byte	0x459
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x2
	.byte	0x89
	.uleb128 0x20
	.4byte	0x469
	.4byte	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x473
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0xb2
	.4byte	0x70e
	.uleb128 0x20
	.4byte	0x483
	.4byte	.LLST14
	.uleb128 0x21
	.4byte	0x43f
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x2
	.byte	0x73
	.uleb128 0x20
	.4byte	0x44f
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x473
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0xb3
	.4byte	0x744
	.uleb128 0x20
	.4byte	0x483
	.4byte	.LLST16
	.uleb128 0x21
	.4byte	0x43f
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x2
	.byte	0x73
	.uleb128 0x20
	.4byte	0x44f
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x473
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0xb3
	.4byte	0x77a
	.uleb128 0x20
	.4byte	0x483
	.4byte	.LLST18
	.uleb128 0x21
	.4byte	0x43f
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x2
	.byte	0x73
	.uleb128 0x20
	.4byte	0x44f
	.4byte	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x48d
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.byte	0xb1
	.4byte	0x7b0
	.uleb128 0x20
	.4byte	0x49d
	.4byte	.LLST20
	.uleb128 0x21
	.4byte	0x459
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x2
	.byte	0x89
	.uleb128 0x20
	.4byte	0x469
	.4byte	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x473
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.byte	0xb4
	.4byte	0x7e6
	.uleb128 0x20
	.4byte	0x483
	.4byte	.LLST22
	.uleb128 0x21
	.4byte	0x43f
	.4byte	.LBB47
	.4byte	.LBE47-.LBB47
	.byte	0x2
	.byte	0x73
	.uleb128 0x20
	.4byte	0x44f
	.4byte	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL38
	.4byte	0x8ce
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC74
	.uleb128 0x1c
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x133
	.uleb128 0x13
	.4byte	.LASF151
	.byte	0x1
	.byte	0xb8
	.4byte	0x1c9
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x845
	.uleb128 0x14
	.4byte	.LASF152
	.byte	0x1
	.byte	0xb8
	.4byte	0xab
	.4byte	.LLST24
	.uleb128 0x1a
	.4byte	.LASF153
	.byte	0x1
	.byte	0xba
	.4byte	0x1c9
	.4byte	.LLST25
	.byte	0
	.uleb128 0x13
	.4byte	.LASF154
	.byte	0x1
	.byte	0xd6
	.4byte	0x1c9
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87d
	.uleb128 0x14
	.4byte	.LASF155
	.byte	0x1
	.byte	0xd6
	.4byte	0xab
	.4byte	.LLST26
	.uleb128 0x1a
	.4byte	.LASF153
	.byte	0x1
	.byte	0xd8
	.4byte	0x1c9
	.4byte	.LLST27
	.byte	0
	.uleb128 0x22
	.4byte	.LASF156
	.byte	0x5
	.2byte	0x2cc
	.4byte	0x890
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x6
	.4byte	0xe9
	.uleb128 0x22
	.4byte	.LASF157
	.byte	0x5
	.2byte	0x2cd
	.4byte	0x8a8
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0xe9
	.uleb128 0x1e
	.4byte	.LASF158
	.byte	0x1
	.byte	0x8d
	.4byte	0x8be
	.uleb128 0x5
	.byte	0x3
	.4byte	base_uuid_be
	.uleb128 0x6
	.4byte	0xff
	.uleb128 0x23
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x8
	.byte	0x16
	.uleb128 0x23
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x9
	.byte	0xde
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x72
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
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
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x72
	.sleb128 17
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x72
	.sleb128 -18
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE31
	.2byte	0x3
	.byte	0x79
	.sleb128 -2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x73
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL38-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL38-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL38-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -38
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL34
	.4byte	.LVL38-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -34
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x43
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x41
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x42
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF144:
	.string	"p_uuid"
.LASF160:
	.string	"sprintf"
.LASF40:
	.string	"ESP_BT_STATUS_ERR_ILLEGAL_PARAMETER_FMT"
.LASF106:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF3:
	.string	"__uint8_t"
.LASF27:
	.string	"ESP_BT_STATUS_UNSUPPORTED"
.LASF65:
	.string	"BTM_SUCCESS_NO_SECURITY"
.LASF72:
	.string	"BTM_SET_PRIVACY_FAIL"
.LASF158:
	.string	"base_uuid_be"
.LASF74:
	.string	"BTM_INVALID_STATIC_RAND_ADDR"
.LASF111:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF64:
	.string	"BTM_SCO_BAD_LENGTH"
.LASF108:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF21:
	.string	"ESP_BT_STATUS_SUCCESS"
.LASF114:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF70:
	.string	"BTM_CONTROL_LE_DATA_LEN_UNSUPPORTED"
.LASF0:
	.string	"signed char"
.LASF53:
	.string	"BTM_ILLEGAL_VALUE"
.LASF66:
	.string	"BTM_FAILED_ON_SECURITY"
.LASF88:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF9:
	.string	"long long unsigned int"
.LASF153:
	.string	"esp_status"
.LASF104:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF136:
	.string	"event_id"
.LASF10:
	.string	"long int"
.LASF63:
	.string	"BTM_DELAY_CHECK"
.LASF55:
	.string	"BTM_UNKNOWN_ADDR"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF124:
	.string	"BTM_PM_STS_SNIFF"
.LASF15:
	.string	"uint16_t"
.LASF154:
	.string	"btc_btm_status_to_esp_status"
.LASF123:
	.string	"BTM_PM_STS_HOLD"
.LASF44:
	.string	"uuid32"
.LASF29:
	.string	"ESP_BT_STATUS_UNHANDLED"
.LASF103:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF35:
	.string	"ESP_BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF162:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/core/btc_util.c"
.LASF116:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF48:
	.string	"BTM_SUCCESS"
.LASF143:
	.string	"uuid_to_string_legacy"
.LASF126:
	.string	"BTM_PM_STS_SSR"
.LASF102:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF23:
	.string	"ESP_BT_STATUS_NOT_READY"
.LASF121:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF157:
	.string	"bd_addr_null"
.LASF6:
	.string	"__uint32_t"
.LASF7:
	.string	"unsigned int"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF36:
	.string	"ESP_BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF12:
	.string	"long unsigned int"
.LASF33:
	.string	"ESP_BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF58:
	.string	"BTM_ERR_PROCESSING"
.LASF151:
	.string	"btc_hci_to_esp_status"
.LASF122:
	.string	"BTM_PM_STS_ACTIVE"
.LASF112:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF135:
	.string	"event"
.LASF5:
	.string	"short unsigned int"
.LASF94:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF101:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF18:
	.string	"UINT32"
.LASF45:
	.string	"uuid128"
.LASF129:
	.string	"swap_byte_16"
.LASF118:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF62:
	.string	"BTM_ILLEGAL_ACTION"
.LASF38:
	.string	"ESP_BT_STATUS_PEER_LE_DATA_LEN_UNSUPPORTED"
.LASF130:
	.string	"swap_byte_32"
.LASF137:
	.string	"dump_rc_pdu"
.LASF59:
	.string	"BTM_NOT_AUTHORIZED"
.LASF20:
	.string	"bt_uuid_t"
.LASF8:
	.string	"long long int"
.LASF43:
	.string	"uuid16"
.LASF128:
	.string	"BTM_PM_STS_ERROR"
.LASF11:
	.string	"sizetype"
.LASF93:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF133:
	.string	"dump_rc_event"
.LASF34:
	.string	"ESP_BT_STATUS_PENDING"
.LASF24:
	.string	"ESP_BT_STATUS_NOMEM"
.LASF22:
	.string	"ESP_BT_STATUS_FAIL"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF61:
	.string	"BTM_CMD_STORED"
.LASF117:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF73:
	.string	"BTM_SET_STATIC_RAND_ADDR_FAIL"
.LASF99:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF42:
	.string	"esp_bt_status_t"
.LASF97:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF109:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF152:
	.string	"hci_status"
.LASF57:
	.string	"BTM_BAD_VALUE_RET"
.LASF96:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF95:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF98:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF67:
	.string	"BTM_REPEATED_ATTEMPTS"
.LASF19:
	.string	"_Bool"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF1:
	.string	"unsigned char"
.LASF132:
	.string	"ntohl"
.LASF138:
	.string	"devclass2uint"
.LASF161:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF2:
	.string	"short int"
.LASF49:
	.string	"BTM_CMD_STARTED"
.LASF50:
	.string	"BTM_BUSY"
.LASF145:
	.string	"uuid0"
.LASF147:
	.string	"uuid1"
.LASF148:
	.string	"uuid2"
.LASF149:
	.string	"uuid3"
.LASF146:
	.string	"uuid4"
.LASF150:
	.string	"uuid5"
.LASF25:
	.string	"ESP_BT_STATUS_BUSY"
.LASF125:
	.string	"BTM_PM_STS_PARK"
.LASF52:
	.string	"BTM_MODE_UNSUPPORTED"
.LASF60:
	.string	"BTM_DEV_RESET"
.LASF51:
	.string	"BTM_NO_RESOURCES"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF16:
	.string	"uint32_t"
.LASF30:
	.string	"ESP_BT_STATUS_AUTH_FAILURE"
.LASF28:
	.string	"ESP_BT_STATUS_PARM_INVALID"
.LASF155:
	.string	"btm_status"
.LASF46:
	.string	"uuid"
.LASF13:
	.string	"char"
.LASF4:
	.string	"__uint16_t"
.LASF91:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF47:
	.string	"esp_bt_uuid_t"
.LASF37:
	.string	"ESP_BT_STATUS_TIMEOUT"
.LASF71:
	.string	"BTM_SET_PRIVACY_SUCCESS"
.LASF142:
	.string	"p_end"
.LASF134:
	.string	"dump_rc_notification_event_id"
.LASF159:
	.string	"memcmp"
.LASF107:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF56:
	.string	"BTM_DEVICE_TIMEOUT"
.LASF68:
	.string	"BTM_MODE4_LEVEL4_NOT_SUPPORTED"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF119:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF26:
	.string	"ESP_BT_STATUS_DONE"
.LASF69:
	.string	"BTM_PEER_LE_DATA_LEN_UNSUPPORTED"
.LASF54:
	.string	"BTM_WRONG_MODE"
.LASF92:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF89:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF31:
	.string	"ESP_BT_STATUS_RMT_DEV_DOWN"
.LASF17:
	.string	"UINT8"
.LASF113:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF14:
	.string	"uint8_t"
.LASF156:
	.string	"bd_addr_any"
.LASF140:
	.string	"uint2devclass"
.LASF127:
	.string	"BTM_PM_STS_PENDING"
.LASF131:
	.string	"ntohs"
.LASF100:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF163:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF41:
	.string	"ESP_BT_STATUS_MEMORY_FULL"
.LASF39:
	.string	"ESP_BT_STATUS_CONTROL_LE_DATA_LEN_UNSUPPORTED"
.LASF32:
	.string	"ESP_BT_STATUS_AUTH_REJECTED"
.LASF120:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF105:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF141:
	.string	"uuid128_be_to_esp_uuid"
.LASF90:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF139:
	.string	"dev_class"
.LASF110:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF115:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
