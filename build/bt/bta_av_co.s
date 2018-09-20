	.file	"bta_av_co.c"
	.text
.Ltext0:
	.section	.text.bta_av_co_audio_start,"ax",@progbits
	.align	4
	.global	bta_av_co_audio_start
	.type	bta_av_co_audio_start, @function
bta_av_co_audio_start:
.LFB38:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/bta_av_co.c"
	.loc 1 912 0
.LVL0:
	entry	sp, 32
.LCFI0:
	retw.n
.LFE38:
	.size	bta_av_co_audio_start, .-bta_av_co_audio_start
	.section	.text.bta_av_co_audio_stop,"ax",@progbits
	.align	4
	.global	bta_av_co_audio_stop
	.type	bta_av_co_audio_stop, @function
bta_av_co_audio_stop:
.LFB39:
	.loc 1 936 0
.LVL1:
	.loc 1 936 0
	entry	sp, 32
.LCFI1:
	retw.n
.LFE39:
	.size	bta_av_co_audio_stop, .-bta_av_co_audio_stop
	.section	.text.bta_av_co_audio_peer_reset_config,"ax",@progbits
	.align	4
	.type	bta_av_co_audio_peer_reset_config, @function
bta_av_co_audio_peer_reset_config:
.LFB46:
	.loc 1 1149 0
.LVL2:
	.loc 1 1149 0
	entry	sp, 32
.LCFI2:
	.loc 1 1153 0
	movi.n	a8, 0
	s32i	a8, a2, 84
	retw.n
.LFE46:
	.size	bta_av_co_audio_peer_reset_config, .-bta_av_co_audio_peer_reset_config
	.section	.text.bta_av_co_cp_is_scmst,"ax",@progbits
	.align	4
	.type	bta_av_co_cp_is_scmst, @function
bta_av_co_cp_is_scmst:
.LFB47:
	.loc 1 1166 0
.LVL3:
	entry	sp, 32
.LCFI3:
	.loc 1 1170 0
	l8ui	a8, a2, 0
	bltui	a8, 2, .L6
.LVL4:
	.loc 1 1172 0
	l8ui	a9, a2, 1
	l8ui	a8, a2, 2
	slli	a8, a8, 8
	add.n	a8, a8, a9
	extui	a8, a8, 0, 16
.LVL5:
	.loc 1 1173 0
	beqi	a8, 2, .L7
	.loc 1 1179 0
	movi.n	a2, 0
.LVL6:
	retw.n
.LVL7:
.L6:
	movi.n	a2, 0
.LVL8:
	retw.n
.LVL9:
.L7:
	.loc 1 1175 0
	movi.n	a2, 1
.LVL10:
	.loc 1 1180 0
	retw.n
.LFE47:
	.size	bta_av_co_cp_is_scmst, .-bta_av_co_cp_is_scmst
	.section	.text.bta_av_co_audio_sink_has_scmst,"ax",@progbits
	.align	4
	.type	bta_av_co_audio_sink_has_scmst, @function
bta_av_co_audio_sink_has_scmst:
.LFB48:
	.loc 1 1192 0
.LVL11:
	entry	sp, 32
.LCFI4:
	.loc 1 1198 0
	l8ui	a3, a2, 13
.LVL12:
	.loc 1 1199 0
	addi.n	a4, a2, 14
.LVL13:
	.loc 1 1201 0
	j	.L9
.LVL14:
.L11:
	.loc 1 1202 0
	mov.n	a10, a4
	call8	bta_av_co_cp_is_scmst
.LVL15:
	bnez.n	a10, .L10
	.loc 1 1206 0
	l8ui	a2, a4, 0
	addi.n	a2, a2, 1
	add.n	a4, a4, a2
.LVL16:
	.loc 1 1208 0
	addi.n	a3, a3, -1
.LVL17:
	extui	a3, a3, 0, 8
.LVL18:
.L9:
	.loc 1 1201 0
	bnez.n	a3, .L11
	.loc 1 1211 0
	movi.n	a10, 0
.L10:
	.loc 1 1212 0
	mov.n	a2, a10
	retw.n
.LFE48:
	.size	bta_av_co_audio_sink_has_scmst, .-bta_av_co_audio_sink_has_scmst
	.section	.text.bta_av_co_audio_init,"ax",@progbits
	.literal_position
	.literal .LC0, bta_av_co_cb
	.literal .LC1, bta_av_co_sbc_caps
	.literal .LC2, bta_av_co_sbc_sink_caps
	.align	4
	.global	bta_av_co_audio_init
	.type	bta_av_co_audio_init, @function
bta_av_co_audio_init:
.LFB30:
	.loc 1 271 0
.LVL19:
	entry	sp, 32
.LCFI5:
	extui	a6, a6, 0, 8
	.loc 1 277 0
	movi.n	a8, 0
	s8i	a8, a4, 0
	.loc 1 278 0
	s8i	a8, a5, 0
	.loc 1 281 0
	movi.n	a9, -1
	l32r	a8, .LC0
	s8i	a9, a8, 235
	.loc 1 283 0
	beqz.n	a6, .L14
	beqi	a6, 1, .L15
	j	.L17
.L14:
	.loc 1 297 0
	movi.n	a4, 0
.LVL20:
	s8i	a4, a2, 0
	.loc 1 300 0
	mov.n	a12, a3
	l32r	a11, .LC1
	movi.n	a10, 0
	call8	A2D_BldSbcInfo
.LVL21:
	.loc 1 303 0
	movi.n	a2, 1
.LVL22:
	retw.n
.LVL23:
.L15:
	.loc 1 306 0
	movi.n	a4, 0
.LVL24:
	s8i	a4, a2, 0
	.loc 1 309 0
	mov.n	a12, a3
	l32r	a11, .LC2
	movi.n	a10, 0
	call8	A2D_BldSbcInfo
.LVL25:
	.loc 1 312 0
	movi.n	a2, 1
.LVL26:
	retw.n
.LVL27:
.L17:
	.loc 1 316 0
	movi.n	a2, 0
.LVL28:
	.loc 1 318 0
	retw.n
.LFE30:
	.size	bta_av_co_audio_init, .-bta_av_co_audio_init
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"BT_APPL"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: bta_av_co_get_peer peer index out of bounds:%d\033[0m\n"
	.section	.text.bta_av_co_get_peer,"ax",@progbits
	.literal_position
	.literal .LC3, appl_trace_level
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.literal .LC8, bta_av_co_cb
	.align	4
	.type	bta_av_co_get_peer, @function
bta_av_co_get_peer:
.LFB29:
	.loc 1 241 0
.LVL29:
	entry	sp, 32
.LCFI6:
	.loc 1 245 0
	extui	a2, a2, 0, 6
.LVL30:
	addi.n	a2, a2, -1
	extui	a2, a2, 0, 8
.LVL31:
	.loc 1 248 0
	bltui	a2, 2, .L19
	.loc 1 249 0
	l32r	a8, .LC3
	l8ui	a8, a8, 0
	beqz.n	a8, .L21
	.loc 1 249 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL32:
	l32r	a11, .LC5
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL33:
	.loc 1 250 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
.LVL34:
	retw.n
.LVL35:
.L19:
	.loc 1 253 0
	subx8	a2, a2, a2
.LVL36:
	slli	a8, a2, 4
	l32r	a2, .LC8
	add.n	a2, a8, a2
	retw.n
.LVL37:
.L21:
	.loc 1 250 0
	movi.n	a2, 0
.LVL38:
	.loc 1 254 0
	retw.n
.LFE29:
	.size	bta_av_co_get_peer, .-bta_av_co_get_peer
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_disc_res could not find peer entry\033[0m\n"
	.align	4
.LC13:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_disc_res peer already opened\033[0m\n"
	.section	.text.bta_av_co_audio_disc_res,"ax",@progbits
	.literal_position
	.literal .LC9, appl_trace_level
	.literal .LC10, .LC4
	.literal .LC12, .LC11
	.literal .LC14, .LC13
	.literal .LC15, 4363
	.literal .LC16, 4362
	.align	4
	.global	bta_av_co_audio_disc_res
	.type	bta_av_co_audio_disc_res, @function
bta_av_co_audio_disc_res:
.LFB31:
	.loc 1 334 0
.LVL39:
	entry	sp, 32
.LCFI7:
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	extui	a5, a5, 0, 8
	extui	a7, a7, 0, 16
	.loc 1 343 0
	extui	a10, a2, 0, 8
	call8	bta_av_co_get_peer
.LVL40:
	mov.n	a2, a10
.LVL41:
	.loc 1 344 0
	bnez.n	a10, .L23
	.loc 1 345 0
	l32r	a2, .LC9
.LVL42:
	l8ui	a2, a2, 0
	beqz.n	a2, .L22
	.loc 1 345 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL43:
	l32r	a11, .LC10
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 1
	call8	esp_log_write
.LVL44:
	retw.n
.LVL45:
.L23:
	.loc 1 350 0 is_stmt 1
	l8ui	a8, a10, 105
	beqz.n	a8, .L25
	.loc 1 351 0
	l32r	a8, .LC9
	l8ui	a8, a8, 0
	beqz.n	a8, .L25
	.loc 1 351 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL46:
	l32r	a11, .LC10
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC14
	movi.n	a10, 1
	call8	esp_log_write
.LVL47:
.L25:
	.loc 1 355 0 is_stmt 1
	mov.n	a9, a2
.LVL48:
.LBB4:
.LBB5:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.loc 2 737 0
	movi.n	a8, 6
	j	.L26
.LVL49:
.L27:
	.loc 2 738 0
	l8ui	a10, a6, 0
	s8i	a10, a9, 0
	.loc 2 737 0
	addi.n	a8, a8, -1
.LVL50:
	.loc 2 738 0
	addi.n	a6, a6, 1
.LVL51:
	addi.n	a9, a9, 1
.LVL52:
.L26:
	.loc 2 737 0
	bnez.n	a8, .L27
.LBE5:
.LBE4:
	.loc 1 356 0
	s8i	a4, a2, 74
	.loc 1 357 0
	s8i	a5, a2, 75
	.loc 1 358 0
	s8i	a3, a2, 76
	.loc 1 359 0
	movi.n	a3, 0
.LVL53:
	s8i	a3, a2, 77
	.loc 1 360 0
	s8i	a3, a2, 78
	.loc 1 361 0
	s8i	a3, a2, 79
	.loc 1 362 0
	l32r	a3, .LC15
	bne	a7, a3, .L28
	.loc 1 363 0
	l32r	a3, .LC16
	s16i	a3, a2, 108
	retw.n
.L28:
	.loc 1 364 0
	l32r	a3, .LC16
	bne	a7, a3, .L22
	.loc 1 365 0
	l32r	a3, .LC15
	s16i	a3, a2, 108
.LVL54:
.L22:
	retw.n
.LFE31:
	.size	bta_av_co_audio_disc_res, .-bta_av_co_audio_disc_res
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_codec_cfg_matches_caps: unsupported codec id %d\033[0m\n"
	.section	.text.bta_av_co_audio_codec_cfg_matches_caps,"ax",@progbits
	.literal_position
	.literal .LC17, appl_trace_level
	.literal .LC18, .LC4
	.literal .LC20, .LC19
	.align	4
	.type	bta_av_co_audio_codec_cfg_matches_caps, @function
bta_av_co_audio_codec_cfg_matches_caps:
.LFB44:
	.loc 1 1088 0
.LVL55:
	entry	sp, 32
.LCFI8:
	.loc 1 1091 0
	bnez.n	a2, .L36
	.loc 1 1101 0
	l8ui	a8, a3, 3
	l8ui	a2, a4, 3
.LVL56:
	bnone	a8, a2, .L33
	.loc 1 1102 0 discriminator 1
	l8ui	a3, a3, 4
.LVL57:
	l8ui	a2, a4, 4
	.loc 1 1101 0 discriminator 1
	bany	a3, a2, .L34
	.loc 1 1108 0
	movi.n	a2, 0
	retw.n
.LVL58:
.L36:
	.loc 1 1114 0
	l32r	a3, .LC17
.LVL59:
	l8ui	a3, a3, 0
	beqz.n	a3, .L35
	.loc 1 1114 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL60:
	l32r	a11, .LC18
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL61:
	.loc 1 1115 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
.LVL62:
	retw.n
.LVL63:
.L33:
	.loc 1 1108 0
	movi.n	a2, 0
	retw.n
.LVL64:
.L34:
	.loc 1 1120 0
	movi.n	a2, 1
	retw.n
.LVL65:
.L35:
	.loc 1 1115 0
	movi.n	a2, 0
.LVL66:
	.loc 1 1121 0
	retw.n
.LFE44:
	.size	bta_av_co_audio_codec_cfg_matches_caps, .-bta_av_co_audio_codec_cfg_matches_caps
	.section	.text.bta_av_co_audio_codec_match,"ax",@progbits
	.literal_position
	.literal .LC21, bta_av_co_cb
	.literal .LC22, bta_av_co_cb+225
	.align	4
	.type	bta_av_co_audio_codec_match, @function
bta_av_co_audio_codec_match:
.LFB45:
	.loc 1 1133 0
.LVL67:
	entry	sp, 32
.LCFI9:
	.loc 1 1136 0
	l32r	a12, .LC22
	mov.n	a11, a2
	l32r	a8, .LC21
	l8ui	a10, a8, 224
	call8	bta_av_co_audio_codec_cfg_matches_caps
.LVL68:
	.loc 1 1137 0
	mov.n	a2, a10
.LVL69:
	retw.n
.LFE45:
	.size	bta_av_co_audio_codec_match, .-bta_av_co_audio_codec_match
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_peer_supports_codec: unsupported codec id %d\033[0m\n"
	.section	.text.bta_av_co_audio_peer_supports_codec,"ax",@progbits
	.literal_position
	.literal .LC23, bta_av_co_cb
	.literal .LC24, appl_trace_level
	.literal .LC25, .LC4
	.literal .LC27, .LC26
	.align	4
	.type	bta_av_co_audio_peer_supports_codec, @function
bta_av_co_audio_peer_supports_codec:
.LFB50:
	.loc 1 1246 0
.LVL70:
	entry	sp, 32
.LCFI10:
	.loc 1 1252 0
	l32r	a8, .LC23
	l8ui	a10, a8, 224
.LVL71:
	.loc 1 1255 0
	movi.n	a9, 0
	j	.L39
.LVL72:
.L45:
	.loc 1 1256 0
	slli	a8, a9, 4
	add.n	a8, a8, a9
	add.n	a8, a2, a8
	l8ui	a8, a8, 8
	bne	a10, a8, .L40
	.loc 1 1257 0
	bnez.n	a10, .L47
	.loc 1 1259 0
	beqz.n	a3, .L43
	.loc 1 1260 0
	s8i	a9, a3, 0
.LVL73:
.L43:
	.loc 1 1262 0
	slli	a10, a9, 4
.LVL74:
	add.n	a9, a10, a9
.LVL75:
	add.n	a10, a2, a9
	addi.n	a10, a10, 9
	call8	bta_av_co_audio_codec_match
.LVL76:
	mov.n	a2, a10
.LVL77:
	retw.n
.LVL78:
.L47:
	.loc 1 1267 0
	l32r	a2, .LC24
.LVL79:
	l8ui	a2, a2, 0
	beqz.n	a2, .L46
	.loc 1 1267 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL80:
	l32r	a11, .LC25
	l32r	a2, .LC23
	l8ui	a15, a2, 224
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 1
	call8	esp_log_write
.LVL81:
	.loc 1 1268 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL82:
.L40:
	.loc 1 1255 0 discriminator 2
	addi.n	a9, a9, 1
.LVL83:
.L39:
	.loc 1 1255 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 79
	blt	a9, a8, .L45
	.loc 1 1273 0 is_stmt 1
	movi.n	a2, 0
.LVL84:
	retw.n
.L46:
	.loc 1 1268 0
	movi.n	a2, 0
	.loc 1 1274 0
	retw.n
.LFE50:
	.size	bta_av_co_audio_peer_supports_codec, .-bta_av_co_audio_peer_supports_codec
	.section	.rodata.str1.4
	.align	4
.LC30:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_setconfig could not find peer entry\033[0m\n"
	.section	.text.bta_av_co_audio_open,"ax",@progbits
	.literal_position
	.literal .LC28, appl_trace_level
	.literal .LC29, .LC4
	.literal .LC31, .LC30
	.align	4
	.global	bta_av_co_audio_open
	.type	bta_av_co_audio_open, @function
bta_av_co_audio_open:
.LFB36:
	.loc 1 846 0
.LVL85:
	entry	sp, 32
.LCFI11:
	extui	a5, a5, 0, 16
	.loc 1 855 0
	extui	a10, a2, 0, 8
	call8	bta_av_co_get_peer
.LVL86:
	.loc 1 856 0
	bnez.n	a10, .L49
	.loc 1 857 0
	l32r	a5, .LC28
.LVL87:
	l8ui	a5, a5, 0
	beqz.n	a5, .L48
	.loc 1 857 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL88:
	l32r	a11, .LC29
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC31
	movi.n	a10, 1
	call8	esp_log_write
.LVL89:
	retw.n
.LVL90:
.L49:
	.loc 1 859 0 is_stmt 1
	movi.n	a8, 1
	s8i	a8, a10, 105
	.loc 1 860 0
	s16i	a5, a10, 106
.L48:
	retw.n
.LFE36:
	.size	bta_av_co_audio_open, .-bta_av_co_audio_open
	.section	.rodata.str1.4
	.align	4
.LC34:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_delay handle: x%x, delay:0x%x\033[0m\n"
	.section	.text.bta_av_co_audio_delay,"ax",@progbits
	.literal_position
	.literal .LC32, appl_trace_level
	.literal .LC33, .LC4
	.literal .LC35, .LC34
	.align	4
	.global	bta_av_co_audio_delay
	.type	bta_av_co_audio_delay, @function
bta_av_co_audio_delay:
.LFB42:
	.loc 1 1033 0
.LVL91:
	entry	sp, 48
.LCFI12:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 16
	.loc 1 1036 0
	l32r	a8, .LC32
	l8ui	a8, a8, 0
	beqz.n	a8, .L51
	.loc 1 1036 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL92:
	l32r	a11, .LC33
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC35
	movi.n	a10, 1
	call8	esp_log_write
.LVL93:
.L51:
	retw.n
.LFE42:
	.size	bta_av_co_audio_delay, .-bta_av_co_audio_delay
	.section	.rodata.str1.4
	.align	4
.LC40:
	.string	"\033[0;31mE (%d) %s: peer_src_supports_codec: unsupported codec id %d\033[0m\n"
	.section	.text.bta_av_co_audio_peer_src_supports_codec,"ax",@progbits
	.literal_position
	.literal .LC36, bta_av_co_cb
	.literal .LC37, bta_av_co_sbc_sink_caps
	.literal .LC38, appl_trace_level
	.literal .LC39, .LC4
	.literal .LC41, .LC40
	.align	4
	.type	bta_av_co_audio_peer_src_supports_codec, @function
bta_av_co_audio_peer_src_supports_codec:
.LFB51:
	.loc 1 1286 0 is_stmt 1
.LVL94:
	entry	sp, 32
.LCFI13:
	.loc 1 1292 0
	l32r	a4, .LC36
	l8ui	a5, a4, 224
.LVL95:
	.loc 1 1295 0
	movi.n	a4, 0
	j	.L54
.LVL96:
.L60:
	.loc 1 1296 0
	slli	a8, a4, 4
	add.n	a8, a8, a4
	add.n	a8, a2, a8
	l8ui	a8, a8, 42
	bne	a5, a8, .L55
	.loc 1 1297 0
	l32r	a8, .LC36
	l8ui	a8, a8, 224
	bnez.n	a8, .L63
	.loc 1 1299 0
	beqz.n	a3, .L58
	.loc 1 1300 0
	s8i	a4, a3, 0
.L58:
	.loc 1 1302 0
	slli	a10, a4, 4
	add.n	a10, a10, a4
	addi	a10, a10, 32
	add.n	a10, a2, a10
	l32r	a11, .LC37
	addi.n	a10, a10, 11
	call8	bta_av_sbc_cfg_matches_cap
.LVL97:
	bnez.n	a10, .L55
	j	.L61
.L63:
	.loc 1 1309 0
	l32r	a2, .LC38
.LVL98:
	l8ui	a2, a2, 0
	beqz.n	a2, .L62
	.loc 1 1309 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL99:
	l32r	a11, .LC39
	l32r	a2, .LC36
	l8ui	a15, a2, 224
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC41
	movi.n	a10, 1
	call8	esp_log_write
.LVL100:
	.loc 1 1311 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL101:
.L55:
	.loc 1 1295 0 discriminator 2
	addi.n	a4, a4, 1
.LVL102:
.L54:
	.loc 1 1295 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 80
	blt	a4, a8, .L60
	.loc 1 1316 0 is_stmt 1
	movi.n	a2, 0
.LVL103:
	retw.n
.LVL104:
.L61:
	.loc 1 1304 0
	movi.n	a2, 1
.LVL105:
	retw.n
.L62:
	.loc 1 1311 0
	movi.n	a2, 0
	.loc 1 1317 0
	retw.n
.LFE51:
	.size	bta_av_co_audio_peer_src_supports_codec, .-bta_av_co_audio_peer_src_supports_codec
	.section	.rodata.str1.4
	.align	4
.LC46:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_codec_build_config: unsupported codec id %d\033[0m\n"
	.section	.text.bta_av_co_audio_codec_build_config,"ax",@progbits
	.literal_position
	.literal .LC42, bta_av_co_cb
	.literal .LC43, bta_av_co_cb+225
	.literal .LC44, appl_trace_level
	.literal .LC45, .LC4
	.literal .LC47, .LC46
	.align	4
	.type	bta_av_co_audio_codec_build_config, @function
bta_av_co_audio_codec_build_config:
.LFB43:
	.loc 1 1051 0
.LVL106:
	entry	sp, 32
.LCFI14:
	.loc 1 1054 0
	movi.n	a8, 0
	s8i	a8, a3, 0
	s8i	a8, a3, 1
	s8i	a8, a3, 2
	s8i	a8, a3, 3
	s8i	a8, a3, 4
	s8i	a8, a3, 5
	s8i	a8, a3, 6
	s8i	a8, a3, 7
	s8i	a8, a3, 8
	s8i	a8, a3, 9
	.loc 1 1056 0
	l32r	a8, .LC42
	l8ui	a8, a8, 224
	bnez.n	a8, .L69
	.loc 1 1060 0
	movi.n	a12, 7
	l32r	a11, .LC43
	mov.n	a10, a3
	call8	memcpy
.LVL107:
	.loc 1 1063 0
	l8ui	a8, a2, 5
	s8i	a8, a3, 5
	.loc 1 1064 0
	l8ui	a2, a2, 6
.LVL108:
	s8i	a2, a3, 6
	.loc 1 1075 0
	movi.n	a2, 1
	retw.n
.LVL109:
.L69:
	.loc 1 1071 0
	l32r	a2, .LC44
.LVL110:
	l8ui	a2, a2, 0
	beqz.n	a2, .L68
	.loc 1 1071 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL111:
	l32r	a11, .LC45
	l32r	a2, .LC42
	l8ui	a15, a2, 224
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	movi.n	a10, 1
	call8	esp_log_write
.LVL112:
	.loc 1 1072 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.L68:
	.loc 1 1072 0 is_stmt 0
	movi.n	a2, 0
	.loc 1 1076 0 is_stmt 1
	retw.n
.LFE43:
	.size	bta_av_co_audio_codec_build_config, .-bta_av_co_audio_codec_build_config
	.section	.rodata.str1.4
	.align	4
.LC50:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_close could not find peer entry\033[0m\n"
	.section	.text.bta_av_co_audio_close,"ax",@progbits
	.literal_position
	.literal .LC48, appl_trace_level
	.literal .LC49, .LC4
	.literal .LC51, .LC50
	.literal .LC52, bta_av_co_cb
	.align	4
	.global	bta_av_co_audio_close
	.type	bta_av_co_audio_close, @function
bta_av_co_audio_close:
.LFB37:
	.loc 1 877 0
.LVL113:
	entry	sp, 32
.LCFI15:
	.loc 1 887 0
	extui	a10, a2, 0, 8
	call8	bta_av_co_get_peer
.LVL114:
	.loc 1 888 0
	beqz.n	a10, .L71
	.loc 1 890 0
	movi	a12, 0x70
	movi.n	a11, 0
	call8	memset
.LVL115:
	j	.L72
.LVL116:
.L71:
	.loc 1 892 0
	l32r	a8, .LC48
	l8ui	a8, a8, 0
	beqz.n	a8, .L72
	.loc 1 892 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL117:
	l32r	a11, .LC49
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC51
	movi.n	a10, 1
	call8	esp_log_write
.LVL118:
.L72:
	.loc 1 896 0 is_stmt 1
	movi.n	a9, -1
	l32r	a8, .LC52
	s8i	a9, a8, 235
	retw.n
.LFE37:
	.size	bta_av_co_audio_close, .-bta_av_co_audio_close
	.section	.rodata.str1.4
	.align	4
.LC56:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_media_supports_config unsupported codec type %d\033[0m\n"
	.section	.text.bta_av_co_audio_sink_supports_config,"ax",@progbits
	.literal_position
	.literal .LC53, bta_av_co_sbc_sink_caps
	.literal .LC54, appl_trace_level
	.literal .LC55, .LC4
	.literal .LC57, .LC56
	.align	4
	.type	bta_av_co_audio_sink_supports_config, @function
bta_av_co_audio_sink_supports_config:
.LFB52:
	.loc 1 1329 0
.LVL119:
	entry	sp, 32
.LCFI16:
	.loc 1 1332 0
	bnez.n	a2, .L79
	.loc 1 1334 0
	l32r	a11, .LC53
	mov.n	a10, a3
	call8	bta_av_sbc_cfg_in_cap
.LVL120:
	beqz.n	a10, .L77
	retw.n
.L79:
	.loc 1 1341 0
	l32r	a8, .LC54
	l8ui	a8, a8, 0
	beqz.n	a8, .L78
	.loc 1 1341 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL121:
	l32r	a11, .LC55
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC57
	movi.n	a10, 1
	call8	esp_log_write
.LVL122:
	.loc 1 1342 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
.LVL123:
	retw.n
.LVL124:
.L77:
	.loc 1 1345 0
	movi.n	a2, 1
.LVL125:
	retw.n
.LVL126:
.L78:
	.loc 1 1342 0
	movi.n	a2, 0
.LVL127:
	.loc 1 1346 0
	retw.n
.LFE52:
	.size	bta_av_co_audio_sink_supports_config, .-bta_av_co_audio_sink_supports_config
	.section	.text.bta_av_co_audio_media_supports_config,"ax",@progbits
	.literal_position
	.literal .LC58, bta_av_co_sbc_caps
	.literal .LC59, appl_trace_level
	.literal .LC60, .LC4
	.literal .LC61, .LC56
	.align	4
	.type	bta_av_co_audio_media_supports_config, @function
bta_av_co_audio_media_supports_config:
.LFB53:
	.loc 1 1358 0
.LVL128:
	entry	sp, 32
.LCFI17:
	.loc 1 1361 0
	bnez.n	a2, .L86
	.loc 1 1363 0
	l32r	a11, .LC58
	mov.n	a10, a3
	call8	bta_av_sbc_cfg_in_cap
.LVL129:
	beqz.n	a10, .L84
	retw.n
.L86:
	.loc 1 1370 0
	l32r	a8, .LC59
	l8ui	a8, a8, 0
	beqz.n	a8, .L85
	.loc 1 1370 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL130:
	l32r	a11, .LC60
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC61
	movi.n	a10, 1
	call8	esp_log_write
.LVL131:
	.loc 1 1371 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
.LVL132:
	retw.n
.LVL133:
.L84:
	.loc 1 1374 0
	movi.n	a2, 1
.LVL134:
	retw.n
.LVL135:
.L85:
	.loc 1 1371 0
	movi.n	a2, 0
.LVL136:
	.loc 1 1375 0
	retw.n
.LFE53:
	.size	bta_av_co_audio_media_supports_config, .-bta_av_co_audio_media_supports_config
	.section	.rodata.str1.4
	.align	4
.LC65:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_setconfig peer already in use\033[0m\n"
	.align	4
.LC67:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_setconfig wrong CP configuration\033[0m\n"
	.align	4
.LC71:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_setconfig unsupported cid %d\033[0m\n"
	.section	.text.bta_av_co_audio_setconfig,"ax",@progbits
	.literal_position
	.literal .LC62, appl_trace_level
	.literal .LC63, .LC4
	.literal .LC64, .LC30
	.literal .LC66, .LC65
	.literal .LC68, .LC67
	.literal .LC69, bta_av_co_cb
	.literal .LC70, bta_av_co_cb+225
	.literal .LC72, .LC71
	.align	4
	.global	bta_av_co_audio_setconfig
	.type	bta_av_co_audio_setconfig, @function
bta_av_co_audio_setconfig:
.LFB35:
	.loc 1 710 0
.LVL137:
	entry	sp, 64
.LCFI18:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 24
	extui	a7, a7, 0, 8
	l8ui	a3, sp, 68
.LVL138:
	s32i.n	a3, sp, 16
	l8ui	a6, sp, 72
.LVL139:
	.loc 1 728 0
	mov.n	a10, a2
	call8	bta_av_co_get_peer
.LVL140:
	mov.n	a3, a10
.LVL141:
	.loc 1 729 0
	bnez.n	a10, .L88
	.loc 1 730 0
	l32r	a3, .LC62
.LVL142:
	l8ui	a3, a3, 0
	beqz.n	a3, .L89
	.loc 1 730 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL143:
	l32r	a11, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC64
	movi.n	a10, 1
	call8	esp_log_write
.LVL144:
.L89:
	.loc 1 733 0 is_stmt 1
	s32i.n	a6, sp, 0
	movi.n	a15, 0
	mov.n	a14, a15
	mov.n	a13, a15
	movi.n	a12, 7
	movi.n	a11, 0xb
	mov.n	a10, a2
	call8	bta_av_ci_setconfig
.LVL145:
	.loc 1 734 0
	retw.n
.LVL146:
.L88:
	.loc 1 740 0
	l8ui	a5, a10, 105
.LVL147:
	beqz.n	a5, .L91
	.loc 1 741 0
	l32r	a5, .LC62
	l8ui	a5, a5, 0
	beqz.n	a5, .L91
	.loc 1 741 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL148:
	l32r	a11, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC66
	movi.n	a10, 1
	call8	esp_log_write
.LVL149:
.L91:
	.loc 1 756 0 is_stmt 1
	beqz.n	a7, .L101
	.loc 1 757 0
	l32r	a5, .LC62
	l8ui	a5, a5, 0
	beqz.n	a5, .L102
	.loc 1 757 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL150:
	l32r	a11, .LC63
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC68
	movi.n	a10, 1
	call8	esp_log_write
.LVL151:
	.loc 1 759 0 is_stmt 1 discriminator 1
	movi.n	a5, 4
	s32i.n	a5, sp, 20
	.loc 1 758 0 discriminator 1
	movi	a5, 0xe0
	j	.L92
.L101:
	.loc 1 713 0
	movi.n	a5, 0
	s32i.n	a5, sp, 20
	j	.L92
.L102:
	.loc 1 759 0
	movi.n	a5, 4
	s32i.n	a5, sp, 20
	.loc 1 758 0
	movi	a5, 0xe0
.L92:
.LVL152:
	.loc 1 762 0
	bnez.n	a5, .L103
	.loc 1 763 0
	l32i.n	a8, sp, 16
	bnei	a8, 1, .L104
	.loc 1 764 0
	mov.n	a11, a4
	l32i.n	a10, sp, 24
	call8	bta_av_co_audio_sink_supports_config
.LVL153:
	j	.L94
.LVL154:
.L104:
	.loc 1 715 0
	movi.n	a10, 0
.LVL155:
.L94:
	.loc 1 767 0
	l32i.n	a8, sp, 16
	bnez.n	a8, .L95
	.loc 1 768 0
	mov.n	a11, a4
	l32i.n	a10, sp, 24
.LVL156:
	call8	bta_av_co_audio_media_supports_config
.LVL157:
.L95:
	.loc 1 772 0
	beqz.n	a10, .L105
	.loc 1 775 0
	call8	osi_mutex_global_lock
.LVL158:
	.loc 1 778 0
	l32r	a8, .LC69
	l8ui	a8, a8, 224
	bnez.n	a8, .L111
	.loc 1 780 0
	l32i.n	a8, sp, 24
	bnez.n	a8, .L106
	.loc 1 780 0 is_stmt 0 discriminator 1
	movi.n	a12, 5
	l32r	a11, .LC70
	mov.n	a10, a4
	call8	memcmp
.LVL159:
	bnez.n	a10, .L107
	.loc 1 782 0 is_stmt 1
	bnei	a7, 1, .L108
	.loc 1 782 0 is_stmt 0 discriminator 1
	l32r	a7, .LC69
.LVL160:
	l8ui	a7, a7, 246
	beqz.n	a7, .L109
	.loc 1 714 0 is_stmt 1
	movi.n	a7, 0
	j	.L98
.L106:
	.loc 1 781 0
	movi.n	a7, 1
	j	.L98
.L107:
	movi.n	a7, 1
	j	.L98
.L108:
	.loc 1 714 0
	movi.n	a7, 0
	j	.L98
.L109:
	.loc 1 783 0
	movi.n	a7, 1
.L98:
.LVL161:
	.loc 1 792 0
	l32r	a8, .LC69
	movi.n	a9, 0
	s8i	a9, a8, 235
	.loc 1 793 0
	movi.n	a12, 0xa
	mov.n	a11, a4
	movi	a10, 0xec
	add.n	a10, a8, a10
	call8	memcpy
.LVL162:
	.loc 1 794 0
	l32i.n	a8, sp, 16
	bnei	a8, 1, .L99
	.loc 1 797 0
	movi.n	a12, 0xa
	mov.n	a11, a4
	movi	a4, 0xe1
.LVL163:
	l32r	a10, .LC69
	add.n	a10, a10, a4
	call8	memcpy
.LVL164:
	.loc 1 798 0
	movi.n	a7, 0
	j	.L99
.LVL165:
.L111:
	.loc 1 804 0
	l32r	a4, .LC62
.LVL166:
	l8ui	a4, a4, 0
	beqz.n	a4, .L110
	.loc 1 804 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL167:
	l32r	a11, .LC63
	l32r	a4, .LC69
	l8ui	a15, a4, 224
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC72
	movi.n	a10, 1
	call8	esp_log_write
.LVL168:
	.loc 1 805 0 is_stmt 1 discriminator 1
	movi.n	a7, 1
	j	.L99
.L110:
	.loc 1 805 0 is_stmt 0
	movi.n	a7, 1
.LVL169:
.L99:
	.loc 1 809 0 is_stmt 1
	call8	osi_mutex_global_unlock
.LVL170:
	j	.L93
.LVL171:
.L103:
	.loc 1 714 0
	movi.n	a7, 0
	j	.L93
.LVL172:
.L105:
	movi.n	a7, 0
	.loc 1 811 0
	movi.n	a4, 7
.LVL173:
	s32i.n	a4, sp, 20
.LVL174:
	.loc 1 812 0
	movi.n	a5, 0xd
.LVL175:
.L93:
	.loc 1 816 0
	beqz.n	a5, .L100
	.loc 1 820 0
	s32i.n	a6, sp, 0
	movi.n	a15, 0
	mov.n	a14, a15
	mov.n	a13, a15
	l32i.n	a12, sp, 20
	mov.n	a11, a5
	mov.n	a10, a2
	call8	bta_av_ci_setconfig
.LVL176:
	retw.n
.L100:
	.loc 1 823 0
	movi.n	a4, 1
	s8i	a4, a3, 103
	.loc 1 824 0
	s8i	a7, a3, 104
	.loc 1 829 0
	s32i.n	a6, sp, 0
	mov.n	a15, a7
	movi.n	a14, 0
	mov.n	a13, a14
	mov.n	a12, a14
	mov.n	a11, a14
	mov.n	a10, a2
	call8	bta_av_ci_setconfig
.LVL177:
	retw.n
.LFE35:
	.size	bta_av_co_audio_setconfig, .-bta_av_co_audio_setconfig
	.section	.rodata.str1.4
	.align	4
.LC75:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_src_data_path Unsupported codec type (%d)\033[0m\n"
	.section	.text.bta_av_co_audio_src_data_path,"ax",@progbits
	.literal_position
	.literal .LC73, appl_trace_level
	.literal .LC74, .LC4
	.literal .LC76, .LC75
	.align	4
	.global	bta_av_co_audio_src_data_path
	.type	bta_av_co_audio_src_data_path, @function
bta_av_co_audio_src_data_path:
.LFB40:
	.loc 1 957 0
.LVL178:
	entry	sp, 32
.LCFI19:
	extui	a3, a2, 0, 8
.LVL179:
	.loc 1 964 0
	call8	btc_a2dp_source_audio_readbuf
.LVL180:
	mov.n	a2, a10
.LVL181:
	.loc 1 965 0
	beqz.n	a10, .L113
	.loc 1 966 0
	bnez.n	a3, .L116
	.loc 1 973 0
	l32i.n	a3, a10, 8
.LVL182:
	s32i.n	a3, a4, 0
	.loc 1 976 0
	l16ui	a11, a10, 6
	call8	bta_av_sbc_bld_hdr
.LVL183:
	.loc 1 977 0
	retw.n
.L116:
	.loc 1 981 0
	l32r	a8, .LC73
	l8ui	a8, a8, 0
	beqz.n	a8, .L113
	.loc 1 981 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL184:
	l32r	a11, .LC74
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC76
	movi.n	a10, 1
	call8	esp_log_write
.LVL185:
.L113:
	.loc 1 1000 0 is_stmt 1
	retw.n
.LFE40:
	.size	bta_av_co_audio_src_data_path, .-bta_av_co_audio_src_data_path
	.section	.text.bta_av_co_cp_is_active,"ax",@progbits
	.literal_position
	.literal .LC77, bta_av_co_cb
	.align	4
	.global	bta_av_co_cp_is_active
	.type	bta_av_co_cp_is_active, @function
bta_av_co_cp_is_active:
.LFB26:
	.loc 1 182 0
	entry	sp, 32
.LCFI20:
	.loc 1 185 0
	l32r	a8, .LC77
	l8ui	a2, a8, 246
	retw.n
.LFE26:
	.size	bta_av_co_cp_is_active, .-bta_av_co_cp_is_active
	.section	.text.bta_av_co_cp_get_flag,"ax",@progbits
	.literal_position
	.literal .LC78, bta_av_co_cb
	.align	4
	.global	bta_av_co_cp_get_flag
	.type	bta_av_co_cp_get_flag, @function
bta_av_co_cp_get_flag:
.LFB27:
	.loc 1 200 0
	entry	sp, 32
.LCFI21:
	.loc 1 203 0
	l32r	a8, .LC78
	l8ui	a2, a8, 247
	retw.n
.LFE27:
	.size	bta_av_co_cp_get_flag, .-bta_av_co_cp_get_flag
	.section	.text.bta_av_co_audio_sink_supports_cp,"ax",@progbits
	.align	4
	.type	bta_av_co_audio_sink_supports_cp, @function
bta_av_co_audio_sink_supports_cp:
.LFB49:
	.loc 1 1224 0
.LVL186:
	entry	sp, 32
.LCFI22:
	.loc 1 1228 0
	call8	bta_av_co_cp_get_flag
.LVL187:
	beqi	a10, 2, .L121
	.loc 1 1229 0
	mov.n	a10, a2
	call8	bta_av_co_audio_sink_has_scmst
.LVL188:
	mov.n	a2, a10
.LVL189:
	retw.n
.LVL190:
.L121:
	.loc 1 1232 0
	movi.n	a2, 1
.LVL191:
	.loc 1 1234 0
	retw.n
.LFE49:
	.size	bta_av_co_audio_sink_supports_cp, .-bta_av_co_audio_sink_supports_cp
	.section	.text.bta_av_co_cp_set_flag,"ax",@progbits
	.literal_position
	.literal .LC79, bta_av_co_cb
	.align	4
	.global	bta_av_co_cp_set_flag
	.type	bta_av_co_cp_set_flag, @function
bta_av_co_cp_set_flag:
.LFB28:
	.loc 1 218 0
.LVL192:
	entry	sp, 32
.LCFI23:
	extui	a2, a2, 0, 8
	.loc 1 223 0
	bnei	a2, 2, .L124
	.loc 1 227 0
	l32r	a8, .LC79
	s8i	a2, a8, 247
	.loc 1 228 0
	movi.n	a2, 1
.LVL193:
	retw.n
.L124:
	.loc 1 224 0
	movi.n	a2, 0
	.loc 1 229 0
	retw.n
.LFE28:
	.size	bta_av_co_cp_set_flag, .-bta_av_co_cp_set_flag
	.section	.text.bta_av_build_src_cfg,"ax",@progbits
	.literal_position
	.literal .LC80, btc_av_sbc_default_config
	.align	4
	.global	bta_av_build_src_cfg
	.type	bta_av_build_src_cfg, @function
bta_av_build_src_cfg:
.LFB32:
	.loc 1 380 0
.LVL194:
	entry	sp, 48
.LCFI24:
.LVL195:
	.loc 1 386 0
	mov.n	a12, a2
	l32r	a11, .LC80
	movi.n	a10, 0
	call8	A2D_BldSbcInfo
.LVL196:
	.loc 1 389 0
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, sp
	call8	A2D_ParsSbcInfo
.LVL197:
	bnez.n	a10, .L125
	.loc 1 394 0
	l8ui	a3, sp, 0
.LVL198:
	bbci	a3, 4, .L127
	.loc 1 395 0
	movi.n	a3, 0x10
	s8i	a3, sp, 7
	j	.L128
.L127:
	.loc 1 396 0
	bbci	a3, 5, .L128
	.loc 1 397 0
	movi.n	a3, 0x20
	s8i	a3, sp, 7
.L128:
	.loc 1 400 0
	l8ui	a3, sp, 1
	bbci	a3, 0, .L129
	.loc 1 401 0
	movi.n	a3, 1
	s8i	a3, sp, 8
	j	.L130
.L129:
	.loc 1 402 0
	bbci	a3, 1, .L131
	.loc 1 403 0
	movi.n	a3, 2
	s8i	a3, sp, 8
	j	.L130
.L131:
	.loc 1 404 0
	bbci	a3, 2, .L132
	.loc 1 405 0
	movi.n	a3, 4
	s8i	a3, sp, 8
	j	.L130
.L132:
	.loc 1 406 0
	bbci	a3, 3, .L130
	.loc 1 407 0
	movi.n	a3, 8
	s8i	a3, sp, 8
.L130:
	.loc 1 410 0
	l8ui	a3, sp, 2
	bbci	a3, 4, .L133
	.loc 1 411 0
	movi.n	a3, 0x10
	s8i	a3, sp, 9
	j	.L134
.L133:
	.loc 1 412 0
	bbci	a3, 5, .L135
	.loc 1 413 0
	movi.n	a3, 0x20
	s8i	a3, sp, 9
	j	.L134
.L135:
	.loc 1 414 0
	bbci	a3, 6, .L136
	.loc 1 415 0
	movi.n	a3, 0x40
	s8i	a3, sp, 9
	j	.L134
.L136:
	.loc 1 416 0
	sext	a3, a3, 7
	bgez	a3, .L134
	.loc 1 417 0
	movi	a3, -0x80
	s8i	a3, sp, 9
.L134:
	.loc 1 420 0
	l8ui	a3, sp, 3
	bbci	a3, 2, .L137
	.loc 1 421 0
	movi.n	a3, 4
	s8i	a3, sp, 10
	j	.L138
.L137:
	.loc 1 422 0
	bbci	a3, 3, .L138
	.loc 1 423 0
	movi.n	a3, 8
	s8i	a3, sp, 10
.L138:
	.loc 1 426 0
	l8ui	a3, sp, 4
	bbci	a3, 0, .L139
	.loc 1 427 0
	movi.n	a3, 1
	s8i	a3, sp, 11
	j	.L140
.L139:
	.loc 1 428 0
	bbci	a3, 1, .L140
	.loc 1 429 0
	movi.n	a3, 2
	s8i	a3, sp, 11
.L140:
	.loc 1 432 0
	l8ui	a3, sp, 5
	s8i	a3, sp, 12
	.loc 1 433 0
	l8ui	a3, sp, 6
	s8i	a3, sp, 13
	.loc 1 435 0
	mov.n	a12, a2
	addi.n	a11, sp, 7
	movi.n	a10, 0
.LVL199:
	call8	A2D_BldSbcInfo
.LVL200:
.L125:
	retw.n
.LFE32:
	.size	bta_av_build_src_cfg, .-bta_av_build_src_cfg
	.section	.rodata.str1.4
	.align	4
.LC83:
	.string	"\033[0;31mE (%d) %s: bta_av_audio_sink_getconfig could not find peer entry\033[0m\n"
	.align	4
.LC85:
	.string	"\033[0;31mE (%d) %s: bta_av_audio_sink_getconfig no more room for SRC info\033[0m\n"
	.section	.text.bta_av_audio_sink_getconfig,"ax",@progbits
	.literal_position
	.literal .LC81, appl_trace_level
	.literal .LC82, .LC4
	.literal .LC84, .LC83
	.literal .LC86, .LC85
	.align	4
	.global	bta_av_audio_sink_getconfig
	.type	bta_av_audio_sink_getconfig, @function
bta_av_audio_sink_getconfig:
.LFB33:
	.loc 1 453 0
.LVL201:
	entry	sp, 64
.LCFI25:
	extui	a3, a3, 0, 8
	extui	a6, a6, 0, 8
.LVL202:
	.loc 1 470 0
	extui	a10, a2, 0, 8
	call8	bta_av_co_get_peer
.LVL203:
	mov.n	a2, a10
.LVL204:
	.loc 1 471 0
	bnez.n	a10, .L143
	.loc 1 472 0
	l32r	a2, .LC81
.LVL205:
	l8ui	a2, a2, 0
	beqz.n	a2, .L151
	.loc 1 472 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL206:
	l32r	a11, .LC82
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC84
	movi.n	a10, 1
	call8	esp_log_write
.LVL207:
	.loc 1 473 0 is_stmt 1 discriminator 1
	movi.n	a2, 0xa
	retw.n
.LVL208:
.L143:
	.loc 1 479 0
	l8ui	a8, a10, 78
	addi.n	a8, a8, 1
	s8i	a8, a10, 78
.LVL209:
	.loc 1 483 0
	beqz.n	a3, .L152
	.loc 1 482 0
	movi.n	a8, 0
	j	.L146
.L152:
	.loc 1 485 0
	movi.n	a8, 1
.L146:
.LVL210:
	.loc 1 492 0
	beqz.n	a8, .L147
	.loc 1 494 0
	l8ui	a8, a2, 80
.LVL211:
	bgeui	a8, 2, .L148
	.loc 1 495 0
	addi.n	a9, a8, 1
	s8i	a9, a2, 80
.LVL212:
	.loc 1 501 0
	slli	a9, a8, 4
	add.n	a9, a9, a8
	s32i.n	a9, sp, 24
	addi	a8, a9, 32
.LVL213:
	add.n	a8, a2, a8
	s32i.n	a8, sp, 20
	movi.n	a12, 0xa
	mov.n	a11, a4
	addi.n	a10, a8, 11
	call8	memcpy
.LVL214:
	.loc 1 502 0
	l32i.n	a9, sp, 24
	add.n	a8, a2, a9
	s8i	a3, a8, 42
	.loc 1 503 0
	l8ui	a3, a5, 0
.LVL215:
	s8i	a3, a8, 40
	.loc 1 504 0
	s8i	a6, a8, 41
	.loc 1 505 0
	l8ui	a3, a7, 0
	s8i	a3, a8, 53
	.loc 1 506 0
	l32i.n	a6, sp, 20
.LVL216:
	addi	a3, a6, 22
	l32i	a8, sp, 64
	l8ui	a6, a8, 0
	l8ui	a8, a8, 1
	l32i.n	a9, sp, 20
	s8i	a6, a9, 22
	l32i	a9, sp, 64
	l8ui	a6, a9, 2
	s8i	a8, a3, 1
	s8i	a6, a3, 2
	j	.L147
.L148:
	.loc 1 508 0
	l32r	a3, .LC81
	l8ui	a3, a3, 0
	beqz.n	a3, .L147
	.loc 1 508 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL217:
	l32r	a11, .LC82
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC86
	movi.n	a10, 1
	call8	esp_log_write
.LVL218:
.L147:
	.loc 1 513 0 is_stmt 1
	l8ui	a6, a2, 78
	l8ui	a3, a2, 75
	beq	a6, a3, .L149
	.loc 1 514 0 discriminator 1
	l8ui	a3, a2, 80
	.loc 1 513 0 discriminator 1
	bnei	a3, 2, .L153
.L149:
	.loc 1 518 0
	call8	osi_mutex_global_lock
.LVL219:
	.loc 1 521 0
	addi.n	a11, sp, 10
	mov.n	a10, a2
	call8	bta_av_co_audio_peer_src_supports_codec
.LVL220:
	beqz.n	a10, .L154
	.loc 1 523 0
	l8ui	a3, sp, 10
	slli	a6, a3, 4
	add.n	a6, a6, a3
	s32i.n	a6, sp, 16
	addi	a11, a6, 32
	add.n	a11, a2, a11
	addi.n	a3, a11, 8
.LVL221:
	.loc 1 528 0
	s32i	a3, a2, 88
	.loc 1 530 0
	addi.n	a11, a11, 11
	mov.n	a10, sp
	call8	bta_av_build_src_cfg
.LVL222:
	.loc 1 531 0
	addi	a3, a2, 92
.LVL223:
	movi.n	a6, 0xa
.LVL224:
	mov.n	a12, a6
	mov.n	a11, sp
	mov.n	a10, a3
	call8	memcpy
.LVL225:
	.loc 1 537 0
	movi.n	a8, 0
	s8i	a8, a7, 0
	.loc 1 544 0
	l32i.n	a8, sp, 16
	add.n	a2, a2, a8
.LVL226:
	l8ui	a2, a2, 40
	s8i	a2, a5, 0
	.loc 1 545 0
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a4
	call8	memcpy
.LVL227:
	.loc 1 546 0
	movi.n	a2, 0
	j	.L150
.LVL228:
.L154:
	.loc 1 455 0
	movi.n	a2, 0xa
.LVL229:
.L150:
	.loc 1 550 0
	call8	osi_mutex_global_unlock
.LVL230:
	retw.n
.LVL231:
.L151:
	.loc 1 473 0
	movi.n	a2, 0xa
	retw.n
.LVL232:
.L153:
	.loc 1 455 0
	movi.n	a2, 0xa
.LVL233:
	.loc 1 553 0
	retw.n
.LFE33:
	.size	bta_av_audio_sink_getconfig, .-bta_av_audio_sink_getconfig
	.section	.rodata.str1.4
	.align	4
.LC89:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_getconfig could not find peer entry\033[0m\n"
	.align	4
.LC92:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_getconfig no more room for SNK info\033[0m\n"
	.section	.text.bta_av_co_audio_getconfig,"ax",@progbits
	.literal_position
	.literal .LC87, appl_trace_level
	.literal .LC88, .LC4
	.literal .LC90, .LC89
	.literal .LC91, 4362
	.literal .LC93, .LC92
	.literal .LC94, bta_av_co_cp_scmst
	.align	4
	.global	bta_av_co_audio_getconfig
	.type	bta_av_co_audio_getconfig, @function
bta_av_co_audio_getconfig:
.LFB34:
	.loc 1 570 0
.LVL234:
	entry	sp, 80
.LCFI26:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	extui	a6, a6, 0, 8
	s32i.n	a6, sp, 36
.LVL235:
	.loc 1 581 0
	mov.n	a10, a2
	call8	bta_av_co_get_peer
.LVL236:
	mov.n	a6, a10
.LVL237:
	.loc 1 582 0
	bnez.n	a10, .L156
	.loc 1 583 0
	l32r	a2, .LC87
.LVL238:
	l8ui	a2, a2, 0
	beqz.n	a2, .L167
	.loc 1 583 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL239:
	l32r	a11, .LC88
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC90
	movi.n	a10, 1
	call8	esp_log_write
.LVL240:
	.loc 1 584 0 is_stmt 1 discriminator 1
	movi.n	a2, 0xa
	retw.n
.L156:
	.loc 1 587 0
	l16ui	a9, a10, 108
	l32r	a8, .LC91
	bne	a9, a8, .L158
	.loc 1 588 0
	l32i	a6, sp, 80
.LVL241:
	s32i.n	a6, sp, 0
	mov.n	a15, a7
	l32i.n	a14, sp, 36
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL242:
	call8	bta_av_audio_sink_getconfig
.LVL243:
	.loc 1 590 0
	mov.n	a2, a10
	retw.n
.LVL244:
.L158:
	.loc 1 600 0
	l8ui	a8, a10, 77
	addi.n	a8, a8, 1
	s8i	a8, a10, 77
.LVL245:
	.loc 1 604 0
	beqz.n	a3, .L168
	.loc 1 603 0
	movi.n	a8, 0
	j	.L160
.L168:
	.loc 1 606 0
	movi.n	a8, 1
.L160:
.LVL246:
	.loc 1 613 0
	beqz.n	a8, .L161
	.loc 1 615 0
	l8ui	a8, a6, 79
.LVL247:
	bgeui	a8, 2, .L162
	.loc 1 616 0
	addi.n	a9, a8, 1
	s8i	a9, a6, 79
.LVL248:
	.loc 1 622 0
	slli	a9, a8, 4
	add.n	a8, a9, a8
.LVL249:
	add.n	a8, a6, a8
	s32i.n	a8, sp, 40
	movi.n	a12, 0xa
	mov.n	a11, a4
	addi.n	a10, a8, 9
	call8	memcpy
.LVL250:
	.loc 1 623 0
	l32i.n	a8, sp, 40
	s8i	a3, a8, 8
	.loc 1 624 0
	l8ui	a3, a5, 0
.LVL251:
	s8i	a3, a8, 6
	.loc 1 625 0
	l32i.n	a3, sp, 36
	s8i	a3, a8, 7
	.loc 1 626 0
	l8ui	a3, a7, 0
	s8i	a3, a8, 19
	.loc 1 627 0
	addi	a3, a8, 20
	l32i	a9, sp, 80
	l8ui	a8, a9, 0
	l8ui	a9, a9, 1
	l32i.n	a10, sp, 40
	s8i	a8, a10, 20
	l32i	a10, sp, 80
	l8ui	a8, a10, 2
	s8i	a9, a3, 1
	s8i	a8, a3, 2
	j	.L161
.L162:
	.loc 1 629 0
	l32r	a3, .LC87
	l8ui	a3, a3, 0
	beqz.n	a3, .L161
	.loc 1 629 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL252:
	l32r	a11, .LC88
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC93
	movi.n	a10, 1
	call8	esp_log_write
.LVL253:
.L161:
	.loc 1 634 0 is_stmt 1
	l8ui	a8, a6, 77
	l8ui	a3, a6, 74
	beq	a8, a3, .L163
	.loc 1 635 0 discriminator 1
	l8ui	a3, a6, 79
	.loc 1 634 0 discriminator 1
	bnei	a3, 2, .L169
.L163:
	.loc 1 639 0
	call8	osi_mutex_global_lock
.LVL254:
	.loc 1 642 0
	addi	a11, sp, 26
	mov.n	a10, a6
	call8	bta_av_co_audio_peer_supports_codec
.LVL255:
	beqz.n	a10, .L170
	.loc 1 644 0
	l8ui	a3, a6, 103
	beqz.n	a3, .L165
	.loc 1 645 0
	l8ui	a3, a6, 76
	s8i	a3, a5, 0
.L165:
	.loc 1 649 0
	l8ui	a3, sp, 26
	s32i.n	a3, sp, 32
	slli	a10, a3, 4
	add.n	a10, a10, a3
	add.n	a10, a6, a10
	addi.n	a3, a10, 6
.LVL256:
	.loc 1 652 0
	addi	a11, sp, 16
	addi.n	a10, a10, 9
	call8	bta_av_co_audio_codec_build_config
.LVL257:
	beqz.n	a10, .L171
	.loc 1 658 0
	s32i	a3, a6, 84
	.loc 1 659 0
	movi.n	a12, 0xa
	addi	a11, sp, 16
	addi	a10, a6, 92
	call8	memcpy
.LVL258:
	.loc 1 662 0
	movi.n	a3, 0
.LVL259:
	s8i	a3, a7, 0
	.loc 1 678 0
	l8ui	a3, a6, 103
	beqz.n	a3, .L166
	.loc 1 679 0
	l8ui	a3, a6, 104
	beqz.n	a3, .L172
	.loc 1 681 0
	l32i.n	a4, sp, 32
.LVL260:
	slli	a3, a4, 4
	add.n	a3, a3, a4
	add.n	a3, a6, a3
	.loc 1 681 0
	l32r	a15, .LC94
	movi.n	a14, 0
	addi	a13, a6, 92
	l8ui	a12, a3, 6
	movi.n	a11, 1
	mov.n	a10, a2
	call8	BTA_AvReconfig
.LVL261:
	.loc 1 687 0
	movi.n	a2, 0
	j	.L164
.LVL262:
.L166:
	.loc 1 684 0
	l32i.n	a3, sp, 32
	slli	a2, a3, 4
	add.n	a2, a2, a3
	add.n	a2, a6, a2
	l8ui	a2, a2, 6
	s8i	a2, a5, 0
	.loc 1 685 0
	movi.n	a12, 0xa
	addi	a11, a6, 92
	mov.n	a10, a4
	call8	memcpy
.LVL263:
	.loc 1 687 0
	movi.n	a2, 0
	j	.L164
.LVL264:
.L170:
	.loc 1 571 0
	movi.n	a2, 0xa
	j	.L164
.LVL265:
.L171:
	movi.n	a2, 0xa
	j	.L164
.LVL266:
.L172:
	.loc 1 687 0
	movi.n	a2, 0
.LVL267:
.L164:
	.loc 1 691 0
	call8	osi_mutex_global_unlock
.LVL268:
	retw.n
.LVL269:
.L167:
	.loc 1 584 0
	movi.n	a2, 0xa
	retw.n
.L169:
	.loc 1 571 0
	movi.n	a2, 0xa
	.loc 1 694 0
	retw.n
.LFE34:
	.size	bta_av_co_audio_getconfig, .-bta_av_co_audio_getconfig
	.section	.rodata.str1.4
	.align	4
.LC97:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_drop dropped: x%x\033[0m\n"
	.section	.text.bta_av_co_audio_drop,"ax",@progbits
	.literal_position
	.literal .LC95, appl_trace_level
	.literal .LC96, .LC4
	.literal .LC98, .LC97
	.align	4
	.global	bta_av_co_audio_drop
	.type	bta_av_co_audio_drop, @function
bta_av_co_audio_drop:
.LFB41:
	.loc 1 1015 0
.LVL270:
	entry	sp, 32
.LCFI27:
	extui	a2, a2, 0, 8
	.loc 1 1018 0
	l32r	a8, .LC95
	l8ui	a8, a8, 0
	beqz.n	a8, .L173
	.loc 1 1018 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL271:
	l32r	a11, .LC96
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC98
	movi.n	a10, 1
	call8	esp_log_write
.LVL272:
.L173:
	retw.n
.LFE41:
	.size	bta_av_co_audio_drop, .-bta_av_co_audio_drop
	.section	.text.bta_av_co_audio_codec_supported,"ax",@progbits
	.literal_position
	.literal .LC99, bta_av_co_cb
	.literal .LC100, bta_av_co_cp_scmst
	.align	4
	.global	bta_av_co_audio_codec_supported
	.type	bta_av_co_audio_codec_supported, @function
bta_av_co_audio_codec_supported:
.LFB54:
	.loc 1 1388 0 is_stmt 1
.LVL273:
	entry	sp, 64
.LCFI28:
.LVL274:
	.loc 1 1404 0
	movi	a3, 0x2bd
	s32i.n	a3, a2, 0
.LVL275:
	.loc 1 1406 0
	movi.n	a3, 0
	j	.L176
.LVL276:
.L181:
	.loc 1 1407 0
	mov.n	a5, a3
	slli	a6, a3, 3
	sub	a6, a6, a3
	slli	a4, a6, 4
	l32r	a6, .LC99
	add.n	a4, a4, a6
.LVL277:
	.loc 1 1408 0
	l8ui	a6, a4, 105
	beqz.n	a6, .L177
	.loc 1 1409 0
	mov.n	a11, sp
	mov.n	a10, a4
	call8	bta_av_co_audio_peer_supports_codec
.LVL278:
	beqz.n	a10, .L178
	.loc 1 1410 0
	l8ui	a7, sp, 0
	slli	a6, a7, 4
	add.n	a8, a6, a7
	subx8	a9, a3, a3
	slli	a6, a9, 4
	add.n	a6, a8, a6
	l32r	a8, .LC99
	add.n	a6, a6, a8
	addi.n	a6, a6, 6
.LVL279:
	.loc 1 1413 0
	mov.n	a10, a6
	call8	bta_av_co_audio_sink_supports_cp
.LVL280:
	bnez.n	a10, .L179
	.loc 1 1416 0
	movi	a3, 0x2c1
.LVL281:
	s32i.n	a3, a2, 0
	.loc 1 1417 0
	j	.L178
.LVL282:
.L179:
	.loc 1 1421 0
	slli	a8, a7, 4
	add.n	a10, a8, a7
	subx8	a9, a3, a3
	slli	a8, a9, 4
	add.n	a8, a10, a8
	l32r	a10, .LC99
	add.n	a10, a8, a10
	addi.n	a11, sp, 1
	addi.n	a10, a10, 9
	call8	bta_av_co_audio_codec_build_config
.LVL283:
	beqz.n	a10, .L177
	.loc 1 1427 0
	subx8	a9, a3, a3
	slli	a8, a9, 4
	l32r	a9, .LC99
	add.n	a8, a9, a8
	l32i	a8, a8, 84
	bne	a6, a8, .L180
	.loc 1 1428 0 discriminator 1
	subx8	a9, a3, a3
	slli	a8, a9, 4
	addi	a8, a8, 80
	l32r	a11, .LC99
	add.n	a11, a8, a11
	movi.n	a12, 0xa
	addi.n	a11, a11, 12
	addi.n	a10, sp, 1
	call8	memcmp
.LVL284:
	.loc 1 1427 0 discriminator 1
	beqz.n	a10, .L177
.L180:
	.loc 1 1434 0
	slli	a8, a5, 3
	s32i.n	a8, sp, 16
	sub	a9, a8, a5
	slli	a8, a9, 4
	l32r	a9, .LC99
	add.n	a8, a9, a8
	s32i	a6, a8, 84
	.loc 1 1435 0
	movi.n	a12, 0xa
	addi.n	a11, sp, 1
	addi	a10, a4, 92
	call8	memcpy
.LVL285:
	.loc 1 1446 0
	slli	a4, a7, 4
.LVL286:
	add.n	a7, a4, a7
	l32i.n	a4, sp, 16
	sub	a6, a4, a5
.LVL287:
	slli	a4, a6, 4
	mov.n	a6, a4
	add.n	a7, a7, a4
	l32r	a8, .LC99
.LVL288:
	add.n	a7, a8, a7
	.loc 1 1447 0
	mov.n	a5, a6
	addi	a13, a6, 80
	add.n	a13, a13, a8
	.loc 1 1446 0
	addi.n	a10, a3, 1
	movi.n	a4, 0x40
	or	a10, a10, a4
	l32r	a15, .LC100
	movi.n	a14, 0
	addi.n	a13, a13, 12
	l8ui	a12, a7, 6
	movi.n	a11, 1
	extui	a10, a10, 0, 8
	call8	BTA_AvReconfig
.LVL289:
.L177:
	.loc 1 1406 0 discriminator 2
	addi.n	a3, a3, 1
.LVL290:
	extui	a3, a3, 0, 8
.LVL291:
.L176:
	.loc 1 1406 0 is_stmt 0 discriminator 1
	bltui	a3, 2, .L181
	.loc 1 1457 0 is_stmt 1
	movi.n	a3, 0
.LVL292:
	s32i.n	a3, a2, 0
	.loc 1 1458 0
	movi.n	a10, 1
.L178:
	.loc 1 1459 0
	mov.n	a2, a10
.LVL293:
	retw.n
.LFE54:
	.size	bta_av_co_audio_codec_supported, .-bta_av_co_audio_codec_supported
	.section	.rodata.str1.4
	.align	4
.LC106:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_codec_reset A2D_BldSbcInfo failed\033[0m\n"
	.section	.text.bta_av_co_audio_codec_reset,"ax",@progbits
	.literal_position
	.literal .LC101, bta_av_co_cb
	.literal .LC102, bta_av_co_cb+225
	.literal .LC103, btc_av_sbc_default_config
	.literal .LC104, appl_trace_level
	.literal .LC105, .LC4
	.literal .LC107, .LC106
	.align	4
	.global	bta_av_co_audio_codec_reset
	.type	bta_av_co_audio_codec_reset, @function
bta_av_co_audio_codec_reset:
.LFB55:
	.loc 1 1471 0
	entry	sp, 32
.LCFI29:
	.loc 1 1472 0
	call8	osi_mutex_global_lock
.LVL294:
	.loc 1 1476 0
	movi.n	a9, 0
	l32r	a8, .LC101
	s8i	a9, a8, 224
	.loc 1 1478 0
	l32r	a12, .LC102
	l32r	a11, .LC103
	movi.n	a10, 0
	call8	A2D_BldSbcInfo
.LVL295:
	beqz.n	a10, .L183
	.loc 1 1479 0
	l32r	a8, .LC104
	l8ui	a8, a8, 0
	beqz.n	a8, .L183
	.loc 1 1479 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL296:
	l32r	a11, .LC105
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC107
	movi.n	a10, 1
	call8	esp_log_write
.LVL297:
.L183:
	.loc 1 1482 0 is_stmt 1
	call8	osi_mutex_global_unlock
.LVL298:
	retw.n
.LFE55:
	.size	bta_av_co_audio_codec_reset, .-bta_av_co_audio_codec_reset
	.section	.rodata.str1.4
	.align	4
.LC111:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_set_codec PCM channel number unsupported\033[0m\n"
	.align	4
.LC113:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_set_codec PCM sample size unsupported\033[0m\n"
	.align	4
.LC124:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_set_codec PCM sampling frequency unsupported\033[0m\n"
	.align	4
.LC126:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_set_codec A2D_BldSbcInfo failed\033[0m\n"
	.align	4
.LC128:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_set_codec Feeding format unsupported\033[0m\n"
	.section	.text.bta_av_co_audio_set_codec,"ax",@progbits
	.literal_position
	.literal .LC108, btc_av_sbc_default_config
	.literal .LC109, appl_trace_level
	.literal .LC110, .LC4
	.literal .LC112, .LC111
	.literal .LC114, .LC113
	.literal .LC115, 22050
	.literal .LC116, 11025
	.literal .LC117, 8000
	.literal .LC118, 12000
	.literal .LC119, 16000
	.literal .LC120, 32000
	.literal .LC121, 24000
	.literal .LC122, 44100
	.literal .LC123, 48000
	.literal .LC125, .LC124
	.literal .LC127, .LC126
	.literal .LC129, .LC128
	.literal .LC130, bta_av_co_cb
	.align	4
	.global	bta_av_co_audio_set_codec
	.type	bta_av_co_audio_set_codec, @function
bta_av_co_audio_set_codec:
.LFB56:
	.loc 1 1497 0
.LVL299:
	entry	sp, 64
.LCFI30:
	mov.n	a9, a2
	.loc 1 1504 0
	movi	a2, 0x2bd
.LVL300:
	s32i.n	a2, a3, 0
	.loc 1 1509 0
	l8ui	a2, a9, 0
	bnei	a2, 5, .L201
	.loc 1 1511 0
	movi.n	a2, 0
	s8i	a2, sp, 7
	.loc 1 1513 0
	l32r	a2, .LC108
	l32i.n	a10, a2, 0
	l16ui	a8, a2, 4
	s32i.n	a10, sp, 0
	l8ui	a2, a2, 6
	s16i	a8, sp, 4
	s8i	a2, sp, 6
	.loc 1 1514 0
	l16ui	a8, a9, 4
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 16
	bltui	a8, 2, .L187
	.loc 1 1516 0
	l32r	a2, .LC109
	l8ui	a2, a2, 0
	beqz.n	a2, .L198
	.loc 1 1516 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL301:
	l32r	a11, .LC110
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC112
	movi.n	a10, 1
	call8	esp_log_write
.LVL302:
	.loc 1 1517 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL303:
.L187:
	.loc 1 1519 0
	l8ui	a8, a9, 6
	addi	a11, a8, -8
	movi.n	a12, 1
	movi.n	a2, 0
	mov.n	a4, a2
	movnez	a4, a12, a11
	addi	a10, a8, -16
	mov.n	a8, a2
	movnez	a8, a12, a10
	and	a2, a4, a8
	beqz.n	a2, .L189
	.loc 1 1521 0
	l32r	a2, .LC109
	l8ui	a2, a2, 0
	beqz.n	a2, .L199
	.loc 1 1521 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL304:
	l32r	a11, .LC110
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC114
	movi.n	a10, 1
	call8	esp_log_write
.LVL305:
	.loc 1 1522 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL306:
.L189:
	.loc 1 1524 0
	l16ui	a8, a9, 2
	l32r	a9, .LC115
.LVL307:
	beq	a8, a9, .L191
	bltu	a9, a8, .L192
	l32r	a9, .LC116
	beq	a8, a9, .L191
	bltu	a9, a8, .L193
	l32r	a9, .LC117
	bne	a8, a9, .L190
	j	.L194
.L193:
	l32r	a9, .LC118
	beq	a8, a9, .L194
	l32r	a9, .LC119
	bne	a8, a9, .L190
	j	.L194
.L192:
	l32r	a9, .LC120
	beq	a8, a9, .L194
	bltu	a9, a8, .L195
	l32r	a9, .LC121
	bne	a8, a9, .L190
	j	.L194
.L195:
	l32r	a9, .LC122
	beq	a8, a9, .L191
	l32r	a9, .LC123
	bne	a8, a9, .L190
.L194:
	.loc 1 1531 0
	movi.n	a8, 0x10
	s8i	a8, sp, 0
	.loc 1 1532 0
	j	.L196
.L191:
	.loc 1 1537 0
	movi.n	a8, 0x20
	s8i	a8, sp, 0
	.loc 1 1538 0
	j	.L196
.L190:
	.loc 1 1540 0
	l32r	a3, .LC109
.LVL308:
	l8ui	a3, a3, 0
	beqz.n	a3, .L188
	.loc 1 1540 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL309:
	l32r	a11, .LC110
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC125
	movi.n	a10, 1
	call8	esp_log_write
.LVL310:
	retw.n
.LVL311:
.L196:
	.loc 1 1545 0 is_stmt 1
	addi.n	a12, sp, 8
	mov.n	a11, sp
	movi.n	a10, 0
	call8	A2D_BldSbcInfo
.LVL312:
	beqz.n	a10, .L197
	.loc 1 1546 0
	l32r	a3, .LC109
.LVL313:
	l8ui	a3, a3, 0
	beqz.n	a3, .L188
	.loc 1 1546 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL314:
	l32r	a11, .LC110
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC127
	movi.n	a10, 1
	call8	esp_log_write
.LVL315:
	retw.n
.LVL316:
.L201:
	.loc 1 1553 0 is_stmt 1
	l32r	a2, .LC109
	l8ui	a2, a2, 0
	beqz.n	a2, .L200
	.loc 1 1553 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL317:
	l32r	a11, .LC110
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC129
	movi.n	a10, 1
	call8	esp_log_write
.LVL318:
	.loc 1 1554 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.L197:
	.loc 1 1559 0
	movi.n	a12, 0xb
	addi.n	a11, sp, 7
	movi	a2, 0xe0
	l32r	a10, .LC130
	add.n	a10, a10, a2
	call8	memcpy
.LVL319:
	.loc 1 1563 0
	movi.n	a2, 0
	s32i.n	a2, a3, 0
	.loc 1 1564 0
	mov.n	a10, a3
	call8	bta_av_co_audio_codec_supported
.LVL320:
	mov.n	a2, a10
	retw.n
.LVL321:
.L198:
	.loc 1 1517 0
	movi.n	a2, 0
	retw.n
.L199:
	.loc 1 1522 0
	movi.n	a2, 0
	retw.n
.L200:
	.loc 1 1554 0
	movi.n	a2, 0
.LVL322:
.L188:
	.loc 1 1565 0
	retw.n
.LFE56:
	.size	bta_av_co_audio_set_codec, .-bta_av_co_audio_set_codec
	.section	.text.bta_av_co_audio_get_sbc_config,"ax",@progbits
	.literal_position
	.literal .LC131, bta_av_co_cb
	.literal .LC132, bta_av_co_cb+225
	.literal .LC133, btc_av_sbc_default_config
	.align	4
	.global	bta_av_co_audio_get_sbc_config
	.type	bta_av_co_audio_get_sbc_config, @function
bta_av_co_audio_get_sbc_config:
.LFB57:
	.loc 1 1578 0
.LVL323:
	entry	sp, 32
.LCFI31:
.LVL324:
	.loc 1 1587 0
	movi.n	a8, -1
	s16i	a8, a3, 0
	.loc 1 1589 0
	call8	osi_mutex_global_lock
.LVL325:
	.loc 1 1590 0
	l32r	a8, .LC131
	l8ui	a8, a8, 224
	bnez.n	a8, .L212
	.loc 1 1591 0
	movi.n	a12, 0
	l32r	a11, .LC132
	mov.n	a10, a2
	call8	A2D_ParsSbcInfo
.LVL326:
	beqz.n	a10, .L213
	.loc 1 1579 0
	movi.n	a3, 0
.LVL327:
	j	.L203
.LVL328:
.L210:
	.loc 1 1593 0
	mov.n	a10, a13
.LVL329:
	.loc 1 1594 0
	subx8	a9, a13, a13
	slli	a8, a9, 4
	l32r	a9, .LC131
	add.n	a8, a9, a8
	l8ui	a8, a8, 105
	beqz.n	a8, .L205
.LVL330:
	.loc 1 1595 0
	subx8	a9, a13, a13
	slli	a8, a9, 4
	l32r	a9, .LC131
	add.n	a8, a9, a8
	l16ui	a8, a8, 106
	l16ui	a9, a3, 0
	bgeu	a8, a9, .L206
	.loc 1 1596 0
	s16i	a8, a3, 0
.L206:
.LVL331:
	.loc 1 1598 0
	movi.n	a8, 0
	j	.L207
.LVL332:
.L209:
	.loc 1 1599 0
	mov.n	a14, a8
.LVL333:
	.loc 1 1600 0
	slli	a9, a8, 4
	add.n	a11, a9, a8
	subx8	a12, a10, a10
	slli	a9, a12, 4
	add.n	a9, a11, a9
	l32r	a11, .LC131
	add.n	a9, a11, a9
	l8ui	a9, a9, 8
	bnez.n	a9, .L208
.LVL334:
	.loc 1 1603 0
	l8ui	a4, a2, 6
	mov.n	a12, a11
	slli	a8, a8, 4
.LVL335:
	add.n	a14, a8, a14
.LVL336:
	slli	a11, a10, 3
	sub	a15, a11, a10
	slli	a9, a15, 4
	mov.n	a15, a9
	add.n	a9, a14, a9
	add.n	a9, a12, a9
	l8ui	a8, a9, 14
	maxu	a8, a4, a8
	.loc 1 1602 0
	s8i	a8, a2, 6
	.loc 1 1606 0
	l8ui	a9, a2, 5
	add.n	a8, a14, a15
	add.n	a8, a12, a8
	l8ui	a8, a8, 15
	minu	a8, a9, a8
	.loc 1 1605 0
	s8i	a8, a2, 5
	.loc 1 1610 0
	j	.L205
.LVL337:
.L208:
	.loc 1 1598 0 discriminator 2
	addi.n	a8, a8, 1
.LVL338:
	extui	a8, a8, 0, 8
.LVL339:
.L207:
	.loc 1 1598 0 is_stmt 0 discriminator 1
	subx8	a11, a10, a10
	slli	a9, a11, 4
	l32r	a11, .LC131
	add.n	a9, a11, a9
	l8ui	a9, a9, 79
	bltu	a8, a9, .L209
.LVL340:
.L205:
	.loc 1 1592 0 is_stmt 1 discriminator 2
	addi.n	a13, a13, 1
	extui	a13, a13, 0, 8
.LVL341:
	j	.L204
.LVL342:
.L213:
	movi.n	a13, 0
.L204:
.LVL343:
	.loc 1 1592 0 is_stmt 0 discriminator 1
	bltui	a13, 2, .L210
	.loc 1 1615 0 is_stmt 1
	movi.n	a3, 1
.LVL344:
	j	.L203
.LVL345:
.L212:
	.loc 1 1579 0
	movi.n	a3, 0
.LVL346:
.L203:
	.loc 1 1619 0
	bnez.n	a3, .L211
	.loc 1 1621 0
	movi.n	a12, 7
	l32r	a11, .LC133
	mov.n	a10, a2
	call8	memcpy
.LVL347:
.L211:
	.loc 1 1623 0
	call8	osi_mutex_global_unlock
.LVL348:
	.loc 1 1626 0
	mov.n	a2, a3
.LVL349:
	retw.n
.LFE57:
	.size	bta_av_co_audio_get_sbc_config, .-bta_av_co_audio_get_sbc_config
	.section	.rodata.str1.4
	.align	4
.LC136:
	.string	"\033[0;31mE (%d) %s: bta_av_co_audio_discard_config could not find peer entry\033[0m\n"
	.section	.text.bta_av_co_audio_discard_config,"ax",@progbits
	.literal_position
	.literal .LC134, appl_trace_level
	.literal .LC135, .LC4
	.literal .LC137, .LC136
	.align	4
	.global	bta_av_co_audio_discard_config
	.type	bta_av_co_audio_discard_config, @function
bta_av_co_audio_discard_config:
.LFB58:
	.loc 1 1638 0
.LVL350:
	entry	sp, 32
.LCFI32:
	.loc 1 1644 0
	extui	a10, a2, 0, 8
	call8	bta_av_co_get_peer
.LVL351:
	.loc 1 1645 0
	bnez.n	a10, .L215
	.loc 1 1646 0
	l32r	a8, .LC134
	l8ui	a8, a8, 0
	beqz.n	a8, .L214
	.loc 1 1646 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL352:
	l32r	a11, .LC135
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC137
	movi.n	a10, 1
	call8	esp_log_write
.LVL353:
	retw.n
.LVL354:
.L215:
	.loc 1 1651 0 is_stmt 1
	call8	bta_av_co_audio_peer_reset_config
.LVL355:
.L214:
	retw.n
.LFE58:
	.size	bta_av_co_audio_discard_config, .-bta_av_co_audio_discard_config
	.section	.text.bta_av_co_init,"ax",@progbits
	.literal_position
	.literal .LC138, bta_av_co_cb
	.align	4
	.global	bta_av_co_init
	.type	bta_av_co_init, @function
bta_av_co_init:
.LFB59:
	.loc 1 1664 0
	entry	sp, 32
.LCFI33:
	.loc 1 1668 0
	l32r	a2, .LC138
	movi	a12, 0xf8
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL356:
	.loc 1 1670 0
	movi.n	a8, -1
	s8i	a8, a2, 235
	.loc 1 1675 0
	movi.n	a10, 2
	call8	bta_av_co_cp_set_flag
.LVL357:
	.loc 1 1679 0
	call8	bta_av_co_audio_codec_reset
.LVL358:
	retw.n
.LFE59:
	.size	bta_av_co_init, .-bta_av_co_init
	.section	.rodata.str1.4
	.align	4
.LC141:
	.string	"\033[0;31mE (%d) %s: bta_av_co_peer_cp_supported could not find peer entry\033[0m\n"
	.align	4
.LC143:
	.string	"\033[0;31mE (%d) %s: bta_av_co_peer_cp_supported did not find SBC sink\033[0m\n"
	.section	.text.bta_av_co_peer_cp_supported,"ax",@progbits
	.literal_position
	.literal .LC139, appl_trace_level
	.literal .LC140, .LC4
	.literal .LC142, .LC141
	.literal .LC144, .LC143
	.align	4
	.global	bta_av_co_peer_cp_supported
	.type	bta_av_co_peer_cp_supported, @function
bta_av_co_peer_cp_supported:
.LFB60:
	.loc 1 1693 0
.LVL359:
	entry	sp, 32
.LCFI34:
	.loc 1 1701 0
	extui	a10, a2, 0, 8
	call8	bta_av_co_get_peer
.LVL360:
	.loc 1 1702 0
	bnez.n	a10, .L223
	.loc 1 1703 0
	l32r	a2, .LC139
.LVL361:
	l8ui	a2, a2, 0
	beqz.n	a2, .L224
	.loc 1 1703 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL362:
	l32r	a11, .LC140
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC142
	movi.n	a10, 1
	call8	esp_log_write
.LVL363:
	.loc 1 1704 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL364:
.L222:
	.loc 1 1708 0
	slli	a8, a9, 4
	add.n	a8, a8, a9
	add.n	a8, a10, a8
	addi.n	a11, a8, 6
.LVL365:
	.loc 1 1709 0
	l8ui	a8, a8, 8
	bnez.n	a8, .L221
	.loc 1 1710 0
	mov.n	a10, a11
.LVL366:
	call8	bta_av_co_audio_sink_has_scmst
.LVL367:
	mov.n	a2, a10
.LVL368:
	retw.n
.LVL369:
.L221:
	.loc 1 1707 0 discriminator 2
	addi.n	a9, a9, 1
.LVL370:
	extui	a9, a9, 0, 8
.LVL371:
	j	.L219
.LVL372:
.L223:
	movi.n	a9, 0
.L219:
.LVL373:
	.loc 1 1707 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 79
	bltu	a9, a8, .L222
	.loc 1 1713 0 is_stmt 1
	l32r	a2, .LC139
.LVL374:
	l8ui	a2, a2, 0
	beqz.n	a2, .L225
	.loc 1 1713 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL375:
	l32r	a11, .LC140
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC144
	movi.n	a10, 1
	call8	esp_log_write
.LVL376:
	.loc 1 1714 0 is_stmt 1 discriminator 1
	movi.n	a2, 0
	retw.n
.LVL377:
.L224:
	.loc 1 1704 0
	movi.n	a2, 0
	retw.n
.LVL378:
.L225:
	.loc 1 1714 0
	movi.n	a2, 0
	.loc 1 1715 0
	retw.n
.LFE60:
	.size	bta_av_co_peer_cp_supported, .-bta_av_co_peer_cp_supported
	.section	.text.bta_av_co_get_remote_bitpool_pref,"ax",@progbits
	.literal_position
	.literal .LC145, bta_av_co_cb
	.align	4
	.global	bta_av_co_get_remote_bitpool_pref
	.type	bta_av_co_get_remote_bitpool_pref, @function
bta_av_co_get_remote_bitpool_pref:
.LFB61:
	.loc 1 1731 0
.LVL379:
	entry	sp, 32
.LCFI35:
	.loc 1 1733 0
	l32r	a8, .LC145
	l8ui	a9, a8, 235
	movi	a8, 0xff
	beq	a9, a8, .L228
	.loc 1 1737 0
	l32r	a8, .LC145
	l8ui	a9, a8, 241
	s8i	a9, a2, 0
	.loc 1 1738 0
	l8ui	a2, a8, 242
.LVL380:
	s8i	a2, a3, 0
	.loc 1 1740 0
	movi.n	a2, 1
	retw.n
.LVL381:
.L228:
	.loc 1 1734 0
	movi.n	a2, 0
.LVL382:
	.loc 1 1741 0
	retw.n
.LFE61:
	.size	bta_av_co_get_remote_bitpool_pref, .-bta_av_co_get_remote_bitpool_pref
	.global	bta_av_a2d_cos
	.section	.data.bta_av_a2d_cos,"aw",@progbits
	.align	4
	.type	bta_av_a2d_cos, @object
	.size	bta_av_a2d_cos, 40
bta_av_a2d_cos:
	.word	bta_av_co_audio_init
	.word	bta_av_co_audio_disc_res
	.word	bta_av_co_audio_getconfig
	.word	bta_av_co_audio_setconfig
	.word	bta_av_co_audio_open
	.word	bta_av_co_audio_close
	.word	bta_av_co_audio_start
	.word	bta_av_co_audio_stop
	.word	bta_av_co_audio_src_data_path
	.word	bta_av_co_audio_delay
	.section	.bss.bta_av_co_cb,"aw",@nobits
	.align	4
	.type	bta_av_co_cb, @object
	.size	bta_av_co_cb, 248
bta_av_co_cb:
	.zero	248
	.global	btc_av_sbc_default_config
	.section	.rodata.btc_av_sbc_default_config,"a",@progbits
	.align	4
	.type	btc_av_sbc_default_config, @object
	.size	btc_av_sbc_default_config, 7
btc_av_sbc_default_config:
	.byte	32
	.byte	1
	.byte	16
	.byte	4
	.byte	1
	.byte	53
	.byte	2
	.global	bta_av_co_sbc_sink_caps
	.section	.rodata.bta_av_co_sbc_sink_caps,"a",@progbits
	.align	4
	.type	bta_av_co_sbc_sink_caps, @object
	.size	bta_av_co_sbc_sink_caps, 7
bta_av_co_sbc_sink_caps:
	.byte	48
	.byte	15
	.byte	-16
	.byte	12
	.byte	3
	.byte	-6
	.byte	2
	.global	bta_av_co_sbc_caps
	.section	.rodata.bta_av_co_sbc_caps,"a",@progbits
	.align	4
	.type	bta_av_co_sbc_caps, @object
	.size	bta_av_co_sbc_caps, 7
bta_av_co_sbc_caps:
	.byte	32
	.byte	15
	.byte	-16
	.byte	12
	.byte	3
	.byte	53
	.byte	2
	.global	bta_av_co_cp_scmst
	.section	.rodata.bta_av_co_cp_scmst,"a",@progbits
	.align	4
	.type	bta_av_co_cp_scmst, @object
	.size	bta_av_co_cp_scmst, 3
bta_av_co_cp_scmst:
	.string	"\002\002"
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
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI0-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI1-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI2-.LFB46
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI3-.LFB47
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI4-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI5-.LFB30
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI7-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI8-.LFB44
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI9-.LFB45
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI10-.LFB50
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI12-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI13-.LFB51
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI14-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI15-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI16-.LFB52
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI17-.LFB53
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI18-.LFB35
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI19-.LFB40
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI20-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI21-.LFB27
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI23-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI24-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI25-.LFB33
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI26-.LFB34
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI27-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI28-.LFB54
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI29-.LFB55
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI30-.LFB56
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI31-.LFB57
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI32-.LFB58
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI33-.LFB59
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI34-.LFB60
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI35-.LFB61
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/a2d_sbc.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_api.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_av_api.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/include/btc_av_co.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_sbc.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_av_ci.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/osi/include/osi/mutex.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_source.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x275e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF267
	.byte	0xc
	.4byte	.LASF268
	.4byte	.LASF269
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x2
	.byte	0x21
	.4byte	0x9c
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x2
	.byte	0x22
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x2
	.byte	0x23
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x2
	.byte	0x29
	.4byte	0xe9
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x8
	.byte	0x2
	.byte	0xc6
	.4byte	0x135
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x2
	.byte	0xc7
	.4byte	0xa7
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x2
	.byte	0xc8
	.4byte	0xa7
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x2
	.byte	0xc9
	.4byte	0xa7
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x2
	.byte	0xca
	.4byte	0xa7
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x2
	.byte	0xcb
	.4byte	0x135
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x9c
	.4byte	0x144
	.uleb128 0xa
	.4byte	0x85
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x2
	.byte	0xcc
	.4byte	0xf0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x2
	.2byte	0x132
	.4byte	0x15b
	.uleb128 0x9
	.4byte	0xbd
	.4byte	0x16b
	.uleb128 0xc
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x9
	.4byte	0xbd
	.4byte	0x181
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1f
	.4byte	0x1b2
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x6
	.byte	0x7
	.byte	0x5
	.byte	0x4d
	.4byte	0x215
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x5
	.byte	0x4e
	.4byte	0xbd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x5
	.byte	0x4f
	.4byte	0xbd
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x5
	.byte	0x50
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x5
	.byte	0x51
	.4byte	0xbd
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x5
	.byte	0x52
	.4byte	0xbd
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x5
	.byte	0x53
	.4byte	0xbd
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x5
	.byte	0x54
	.4byte	0xbd
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x5
	.byte	0x55
	.4byte	0x1b8
	.uleb128 0xd
	.byte	0x4
	.4byte	0x144
	.uleb128 0xd
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x9
	.4byte	0xbd
	.4byte	0x23c
	.uleb128 0xc
	.4byte	0x85
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.2byte	0x1c0
	.4byte	0x364
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x9
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0xb
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0xd
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0xe
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0xf
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x11
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x13
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x15
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x17
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x19
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x1a
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x1b
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x1d
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x1e
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0x1f
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0x21
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x22
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0x23
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x25
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x26
	.uleb128 0xf
	.4byte	.LASF81
	.byte	0x27
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x29
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x2a
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x2b
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0x2d
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x2e
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.2byte	0x6ea
	.4byte	0x39c
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF96
	.byte	0x8
	.byte	0x53
	.4byte	0xbd
	.uleb128 0x4
	.4byte	.LASF97
	.byte	0x8
	.byte	0x7d
	.4byte	0xbd
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x105
	.4byte	0x3be
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3c4
	.uleb128 0x11
	.4byte	0xde
	.4byte	0x3e7
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0xbd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x107
	.4byte	0x3f3
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3f9
	.uleb128 0x13
	.4byte	0x41d
	.uleb128 0x12
	.4byte	0x39c
	.uleb128 0x12
	.4byte	0xbd
	.uleb128 0x12
	.4byte	0xbd
	.uleb128 0x12
	.4byte	0xbd
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x109
	.4byte	0x429
	.uleb128 0xd
	.byte	0x4
	.4byte	0x42f
	.uleb128 0x11
	.4byte	0xbd
	.4byte	0x45c
	.uleb128 0x12
	.4byte	0x39c
	.uleb128 0x12
	.4byte	0x3a7
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0xbd
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0x16b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x10c
	.4byte	0x468
	.uleb128 0xd
	.byte	0x4
	.4byte	0x46e
	.uleb128 0x13
	.4byte	0x4a1
	.uleb128 0x12
	.4byte	0x39c
	.uleb128 0x12
	.4byte	0x3a7
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0xbd
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0xbd
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0xbd
	.uleb128 0x12
	.4byte	0xbd
	.byte	0
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x110
	.4byte	0x4ad
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4b3
	.uleb128 0x13
	.4byte	0x4cd
	.uleb128 0x12
	.4byte	0x39c
	.uleb128 0x12
	.4byte	0x3a7
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x113
	.4byte	0x4d9
	.uleb128 0xd
	.byte	0x4
	.4byte	0x4df
	.uleb128 0x13
	.4byte	0x4f4
	.uleb128 0x12
	.4byte	0x39c
	.uleb128 0x12
	.4byte	0x3a7
	.uleb128 0x12
	.4byte	0xc8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x114
	.4byte	0x500
	.uleb128 0xd
	.byte	0x4
	.4byte	0x506
	.uleb128 0x13
	.4byte	0x520
	.uleb128 0x12
	.4byte	0x39c
	.uleb128 0x12
	.4byte	0x3a7
	.uleb128 0x12
	.4byte	0x16b
	.uleb128 0x12
	.4byte	0x520
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xde
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x115
	.4byte	0x532
	.uleb128 0xd
	.byte	0x4
	.4byte	0x538
	.uleb128 0x13
	.4byte	0x548
	.uleb128 0x12
	.4byte	0x39c
	.uleb128 0x12
	.4byte	0x3a7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x116
	.4byte	0x554
	.uleb128 0xd
	.byte	0x4
	.4byte	0x55a
	.uleb128 0x11
	.4byte	0x8c
	.4byte	0x573
	.uleb128 0x12
	.4byte	0x3a7
	.uleb128 0x12
	.4byte	0x226
	.uleb128 0x12
	.4byte	0x226
	.byte	0
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x118
	.4byte	0x57f
	.uleb128 0xd
	.byte	0x4
	.4byte	0x585
	.uleb128 0x13
	.4byte	0x595
	.uleb128 0x12
	.4byte	0x39c
	.uleb128 0x12
	.4byte	0xc8
	.byte	0
	.uleb128 0x14
	.byte	0x28
	.byte	0x8
	.2byte	0x11b
	.4byte	0x621
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x11c
	.4byte	0x3b2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x11d
	.4byte	0x3e7
	.byte	0x4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x11e
	.4byte	0x41d
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x11f
	.4byte	0x45c
	.byte	0xc
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x120
	.4byte	0x4a1
	.byte	0x10
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x121
	.4byte	0x4cd
	.byte	0x14
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x122
	.4byte	0x4f4
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x123
	.4byte	0x526
	.byte	0x1c
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x8
	.2byte	0x124
	.4byte	0x548
	.byte	0x20
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x125
	.4byte	0x573
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x126
	.4byte	0x595
	.uleb128 0xd
	.byte	0x4
	.4byte	0x633
	.uleb128 0x16
	.4byte	0xbd
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x648
	.uleb128 0xc
	.4byte	0x85
	.byte	0x22
	.byte	0
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x9
	.byte	0x2c
	.4byte	0xbd
	.uleb128 0x6
	.byte	0xb
	.byte	0x9
	.byte	0xab
	.4byte	0x673
	.uleb128 0x8
	.string	"id"
	.byte	0x9
	.byte	0xac
	.4byte	0x648
	.byte	0
	.uleb128 0x7
	.4byte	.LASF119
	.byte	0x9
	.byte	0xad
	.4byte	0x22c
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x9
	.byte	0xae
	.4byte	0x653
	.uleb128 0x6
	.byte	0x6
	.byte	0x9
	.byte	0xb3
	.4byte	0x6ab
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0x9
	.byte	0xb4
	.4byte	0xc8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF122
	.byte	0x9
	.byte	0xb5
	.4byte	0xc8
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF123
	.byte	0x9
	.byte	0xb6
	.4byte	0xbd
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x9
	.byte	0xb7
	.4byte	0x67e
	.uleb128 0x17
	.byte	0x6
	.byte	0x9
	.byte	0xb9
	.4byte	0x6ca
	.uleb128 0x18
	.string	"pcm"
	.byte	0x9
	.byte	0xba
	.4byte	0x6ab
	.byte	0
	.uleb128 0x4
	.4byte	.LASF125
	.byte	0x9
	.byte	0xbb
	.4byte	0x6b6
	.uleb128 0x6
	.byte	0x8
	.byte	0x9
	.byte	0xbd
	.4byte	0x6f6
	.uleb128 0x7
	.4byte	.LASF126
	.byte	0x9
	.byte	0xbe
	.4byte	0x648
	.byte	0
	.uleb128 0x8
	.string	"cfg"
	.byte	0x9
	.byte	0xbf
	.4byte	0x6ca
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF127
	.byte	0x9
	.byte	0xc0
	.4byte	0x6d5
	.uleb128 0x4
	.4byte	.LASF128
	.byte	0xa
	.byte	0x38
	.4byte	0x25
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x19
	.4byte	0x72b
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x11
	.byte	0x1
	.byte	0x70
	.4byte	0x77c
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0x1
	.byte	0x71
	.4byte	0xbd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0x1
	.byte	0x72
	.4byte	0xbd
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x1
	.byte	0x73
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x1
	.byte	0x74
	.4byte	0x22c
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0x1
	.byte	0x75
	.4byte	0xbd
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF137
	.byte	0x1
	.byte	0x76
	.4byte	0x171
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF138
	.byte	0x1
	.byte	0x77
	.4byte	0x72b
	.uleb128 0x6
	.byte	0x70
	.byte	0x1
	.byte	0x79
	.4byte	0x874
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0x1
	.byte	0x7a
	.4byte	0x14f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0x1
	.byte	0x7b
	.4byte	0x874
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF141
	.byte	0x1
	.byte	0x7c
	.4byte	0x874
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF142
	.byte	0x1
	.byte	0x7d
	.4byte	0xbd
	.byte	0x4a
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0x1
	.byte	0x7e
	.4byte	0xbd
	.byte	0x4b
	.uleb128 0x7
	.4byte	.LASF144
	.byte	0x1
	.byte	0x7f
	.4byte	0xbd
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF145
	.byte	0x1
	.byte	0x80
	.4byte	0xbd
	.byte	0x4d
	.uleb128 0x7
	.4byte	.LASF146
	.byte	0x1
	.byte	0x81
	.4byte	0xbd
	.byte	0x4e
	.uleb128 0x7
	.4byte	.LASF147
	.byte	0x1
	.byte	0x82
	.4byte	0xbd
	.byte	0x4f
	.uleb128 0x7
	.4byte	.LASF148
	.byte	0x1
	.byte	0x83
	.4byte	0xbd
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF149
	.byte	0x1
	.byte	0x84
	.4byte	0x884
	.byte	0x54
	.uleb128 0x7
	.4byte	.LASF150
	.byte	0x1
	.byte	0x85
	.4byte	0x884
	.byte	0x58
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0x1
	.byte	0x86
	.4byte	0x22c
	.byte	0x5c
	.uleb128 0x7
	.4byte	.LASF152
	.byte	0x1
	.byte	0x87
	.4byte	0xde
	.byte	0x66
	.uleb128 0x8
	.string	"acp"
	.byte	0x1
	.byte	0x88
	.4byte	0xde
	.byte	0x67
	.uleb128 0x7
	.4byte	.LASF153
	.byte	0x1
	.byte	0x89
	.4byte	0xde
	.byte	0x68
	.uleb128 0x7
	.4byte	.LASF154
	.byte	0x1
	.byte	0x8a
	.4byte	0xde
	.byte	0x69
	.uleb128 0x8
	.string	"mtu"
	.byte	0x1
	.byte	0x8b
	.4byte	0xc8
	.byte	0x6a
	.uleb128 0x7
	.4byte	.LASF155
	.byte	0x1
	.byte	0x8c
	.4byte	0xc8
	.byte	0x6c
	.byte	0
	.uleb128 0x9
	.4byte	0x77c
	.4byte	0x884
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x77c
	.uleb128 0x4
	.4byte	.LASF156
	.byte	0x1
	.byte	0x8d
	.4byte	0x787
	.uleb128 0x6
	.byte	0x2
	.byte	0x1
	.byte	0x8f
	.4byte	0x8b6
	.uleb128 0x7
	.4byte	.LASF157
	.byte	0x1
	.byte	0x90
	.4byte	0xde
	.byte	0
	.uleb128 0x7
	.4byte	.LASF158
	.byte	0x1
	.byte	0x91
	.4byte	0xbd
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0x1
	.byte	0x92
	.4byte	0x895
	.uleb128 0x6
	.byte	0xf8
	.byte	0x1
	.byte	0x94
	.4byte	0x8f9
	.uleb128 0x7
	.4byte	.LASF160
	.byte	0x1
	.byte	0x96
	.4byte	0x8f9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0x1
	.byte	0x98
	.4byte	0x673
	.byte	0xe0
	.uleb128 0x7
	.4byte	.LASF161
	.byte	0x1
	.byte	0x99
	.4byte	0x673
	.byte	0xeb
	.uleb128 0x8
	.string	"cp"
	.byte	0x1
	.byte	0x9b
	.4byte	0x8b6
	.byte	0xf6
	.byte	0
	.uleb128 0x9
	.4byte	0x88a
	.4byte	0x909
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0x1
	.byte	0x9c
	.4byte	0x8c1
	.uleb128 0x19
	.4byte	.LASF270
	.byte	0x2
	.2byte	0x2dd
	.byte	0x3
	.4byte	0x940
	.uleb128 0x1a
	.string	"a"
	.byte	0x2
	.2byte	0x2dd
	.4byte	0x16b
	.uleb128 0x1a
	.string	"b"
	.byte	0x2
	.2byte	0x2dd
	.4byte	0x62d
	.uleb128 0x1b
	.string	"i"
	.byte	0x2
	.2byte	0x2df
	.4byte	0x25
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x38e
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x998
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x38e
	.4byte	0x39c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x38e
	.4byte	0x3a7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x38f
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x38f
	.4byte	0x520
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x9a8
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x9a8
	.uleb128 0xc
	.4byte	0x85
	.byte	0x15
	.byte	0
	.uleb128 0x16
	.4byte	0x998
	.uleb128 0x1c
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x3a7
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e9
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x39c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x3a7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x9f9
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x9f9
	.uleb128 0xc
	.4byte	0x85
	.byte	0x14
	.byte	0
	.uleb128 0x16
	.4byte	0x9e9
	.uleb128 0x1f
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x47c
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2c
	.uleb128 0x1d
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x47c
	.4byte	0xa2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0xa42
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x88a
	.uleb128 0x9
	.4byte	0x95
	.4byte	0xa42
	.uleb128 0xc
	.4byte	0x85
	.byte	0x21
	.byte	0
	.uleb128 0x16
	.4byte	0xa32
	.uleb128 0x20
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x48d
	.4byte	0xde
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8b
	.uleb128 0x21
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x48d
	.4byte	0x62d
	.4byte	.LLST0
	.uleb128 0x22
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x48f
	.4byte	0xc8
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0xa8b
	.byte	0
	.uleb128 0x16
	.4byte	0x998
	.uleb128 0x20
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x4a7
	.4byte	0xde
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf0
	.uleb128 0x21
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x4a7
	.4byte	0xaf0
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x4a9
	.4byte	0xbd
	.4byte	.LLST3
	.uleb128 0x23
	.string	"p"
	.byte	0x1
	.2byte	0x4aa
	.4byte	0x62d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0xb0b
	.uleb128 0x24
	.4byte	.LVL15
	.4byte	0xa47
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xaf6
	.uleb128 0x16
	.4byte	0x77c
	.uleb128 0x9
	.4byte	0x95
	.4byte	0xb0b
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1e
	.byte	0
	.uleb128 0x16
	.4byte	0xafb
	.uleb128 0x26
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x10d
	.4byte	0xde
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbe
	.uleb128 0x21
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x10d
	.4byte	0x16b
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x10d
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x10d
	.4byte	0x16b
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x10e
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x10e
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0xbbe
	.uleb128 0x27
	.4byte	.LVL21
	.4byte	0x26bf
	.4byte	0xb9f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_sbc_caps
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL25
	.4byte	0x26bf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_sbc_sink_caps
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x9e9
	.uleb128 0x28
	.4byte	.LASF179
	.byte	0x1
	.byte	0xf0
	.4byte	0xa2c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3d
	.uleb128 0x29
	.4byte	.LASF163
	.byte	0x1
	.byte	0xf0
	.4byte	0x39c
	.4byte	.LLST6
	.uleb128 0x2a
	.4byte	.LASF175
	.byte	0x1
	.byte	0xf2
	.4byte	0xbd
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0xc4d
	.uleb128 0x2b
	.4byte	.LVL32
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL33
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0xc4d
	.uleb128 0xc
	.4byte	0x85
	.byte	0x12
	.byte	0
	.uleb128 0x16
	.4byte	0xc3d
	.uleb128 0x1c
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x14c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd97
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x14c
	.4byte	0x39c
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x14c
	.4byte	0xbd
	.4byte	.LLST9
	.uleb128 0x1d
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x14c
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x14d
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x14d
	.4byte	0x16b
	.4byte	.LLST10
	.uleb128 0x1d
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x14d
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x14f
	.4byte	0xa2c
	.4byte	.LLST11
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0xda7
	.uleb128 0x2c
	.4byte	0x914
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x163
	.4byte	0xd15
	.uleb128 0x2d
	.4byte	0x92b
	.4byte	.LLST12
	.uleb128 0x2d
	.4byte	0x921
	.4byte	.LLST13
	.uleb128 0x2e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x2f
	.4byte	0x935
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL40
	.4byte	0xbc3
	.4byte	0xd2c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL43
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL44
	.4byte	0x26d5
	.4byte	0xd63
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL46
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL47
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0xda7
	.uleb128 0xc
	.4byte	0x85
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.4byte	0xd97
	.uleb128 0x20
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x43f
	.4byte	0xde
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe37
	.uleb128 0x21
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x43f
	.4byte	0xbd
	.4byte	.LLST15
	.uleb128 0x21
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x43f
	.4byte	0x62d
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x43f
	.4byte	0x62d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0xe47
	.uleb128 0x2b
	.4byte	.LVL60
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL61
	.4byte	0x26d5
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
	.4byte	.LC4
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0xe47
	.uleb128 0xc
	.4byte	0x85
	.byte	0x26
	.byte	0
	.uleb128 0x16
	.4byte	0xe37
	.uleb128 0x20
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x46c
	.4byte	0xde
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe99
	.uleb128 0x21
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x46c
	.4byte	0x62d
	.4byte	.LLST17
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0xea9
	.uleb128 0x24
	.4byte	.LVL68
	.4byte	0xdac
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_cb+225
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0xea9
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1b
	.byte	0
	.uleb128 0x16
	.4byte	0xe99
	.uleb128 0x20
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x4dd
	.4byte	0xde
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf4c
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x4dd
	.4byte	0xa2c
	.4byte	.LLST18
	.uleb128 0x1d
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x4dd
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x4df
	.4byte	0x25
	.4byte	.LLST19
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x4e0
	.4byte	0xbd
	.4byte	.LLST20
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0xf5c
	.uleb128 0x2b
	.4byte	.LVL76
	.4byte	0xe4c
	.uleb128 0x2b
	.4byte	.LVL80
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL81
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0xf5c
	.uleb128 0xc
	.4byte	0x85
	.byte	0x23
	.byte	0
	.uleb128 0x16
	.4byte	0xf4c
	.uleb128 0x1c
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x34c
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1015
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x34c
	.4byte	0x39c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x34c
	.4byte	0x3a7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x34c
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x30
	.string	"mtu"
	.byte	0x1
	.2byte	0x34d
	.4byte	0xc8
	.4byte	.LLST21
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x34f
	.4byte	0xa2c
	.4byte	.LLST22
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1015
	.uleb128 0x27
	.4byte	.LVL86
	.4byte	0xbc3
	.4byte	0xfe1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL88
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL89
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x9e9
	.uleb128 0x1c
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x408
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1096
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x408
	.4byte	0x39c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x408
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1096
	.uleb128 0x2b
	.4byte	.LVL92
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL93
	.4byte	0x26d5
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
	.4byte	.LC4
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
	.4byte	.LC4
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
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x998
	.uleb128 0x20
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x505
	.4byte	0xde
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1157
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x505
	.4byte	0xa2c
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x505
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x22
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x507
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x508
	.4byte	0xbd
	.4byte	.LLST25
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1167
	.uleb128 0x27
	.4byte	.LVL97
	.4byte	0x26e0
	.4byte	0x1123
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0xc
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_sbc_sink_caps
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL99
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL100
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x1167
	.uleb128 0xc
	.4byte	0x85
	.byte	0x27
	.byte	0
	.uleb128 0x16
	.4byte	0x1157
	.uleb128 0x20
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x41a
	.4byte	0xde
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1203
	.uleb128 0x21
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x41a
	.4byte	0x62d
	.4byte	.LLST26
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x41a
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1203
	.uleb128 0x27
	.4byte	.LVL107
	.4byte	0x26eb
	.4byte	0x11cf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_cb+225
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL111
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL112
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x638
	.uleb128 0x1c
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x36b
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c5
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x36b
	.4byte	0x39c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x36b
	.4byte	0x3a7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.string	"mtu"
	.byte	0x1
	.2byte	0x36b
	.4byte	0xc8
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x36e
	.4byte	0xa2c
	.4byte	.LLST27
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x12c5
	.uleb128 0x27
	.4byte	.LVL114
	.4byte	0xbc3
	.4byte	0x1278
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x27
	.4byte	.LVL115
	.4byte	0x26f4
	.4byte	0x1291
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x70
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL117
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL118
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC50
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x998
	.uleb128 0x20
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x530
	.4byte	0xde
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1362
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x530
	.4byte	0xbd
	.4byte	.LLST28
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x530
	.4byte	0x62d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1372
	.uleb128 0x27
	.4byte	.LVL120
	.4byte	0x26fd
	.4byte	0x1328
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_sbc_sink_caps
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL121
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL122
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x1372
	.uleb128 0xc
	.4byte	0x85
	.byte	0x24
	.byte	0
	.uleb128 0x16
	.4byte	0x1362
	.uleb128 0x20
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x54d
	.4byte	0xde
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x140f
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x54d
	.4byte	0xbd
	.4byte	.LLST29
	.uleb128 0x1d
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x54d
	.4byte	0x62d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x141f
	.uleb128 0x27
	.4byte	.LVL129
	.4byte	0x26fd
	.4byte	0x13d5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_sbc_caps
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL130
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL131
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC56
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x141f
	.uleb128 0xc
	.4byte	0x85
	.byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	0x140f
	.uleb128 0x1c
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x2c3
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x175d
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x2c3
	.4byte	0x39c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x2c3
	.4byte	0x3a7
	.4byte	.LLST30
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x16b
	.4byte	.LLST31
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2c4
	.4byte	0xbd
	.4byte	.LLST32
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x16b
	.4byte	.LLST33
	.uleb128 0x21
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x2c4
	.4byte	0xbd
	.4byte	.LLST34
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x2c5
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x2c5
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x2c7
	.4byte	0xa2c
	.4byte	.LLST35
	.uleb128 0x22
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x2c8
	.4byte	0xbd
	.4byte	.LLST36
	.uleb128 0x22
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x2c9
	.4byte	0xbd
	.4byte	.LLST37
	.uleb128 0x22
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x2ca
	.4byte	0xde
	.4byte	.LLST38
	.uleb128 0x22
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x2cb
	.4byte	0xde
	.4byte	.LLST39
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x176d
	.uleb128 0x27
	.4byte	.LVL140
	.4byte	0xbc3
	.4byte	0x1532
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL143
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL144
	.4byte	0x26d5
	.4byte	0x1569
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x27
	.4byte	.LVL145
	.4byte	0x2708
	.4byte	0x159d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL148
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL149
	.4byte	0x26d5
	.4byte	0x15d4
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC65
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL150
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL151
	.4byte	0x26d5
	.4byte	0x160b
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC67
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x27
	.4byte	.LVL153
	.4byte	0x12ca
	.4byte	0x1626
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL157
	.4byte	0x1377
	.4byte	0x1641
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL158
	.4byte	0x2713
	.uleb128 0x27
	.4byte	.LVL159
	.4byte	0x271e
	.4byte	0x166c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_cb+225
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x27
	.4byte	.LVL162
	.4byte	0x26eb
	.4byte	0x168e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_cb+236
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x27
	.4byte	.LVL164
	.4byte	0x26eb
	.4byte	0x16b4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x3
	.4byte	bta_av_co_cb
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL167
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL168
	.4byte	0x26d5
	.4byte	0x16eb
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC71
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL170
	.4byte	0x2729
	.uleb128 0x27
	.4byte	.LVL176
	.4byte	0x2708
	.4byte	0x172b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL177
	.4byte	0x2708
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
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
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x176d
	.uleb128 0xc
	.4byte	0x85
	.byte	0x19
	.byte	0
	.uleb128 0x16
	.4byte	0x175d
	.uleb128 0x26
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x3bb
	.4byte	0x8c
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1828
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x3bb
	.4byte	0x3a7
	.4byte	.LLST40
	.uleb128 0x21
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x3bb
	.4byte	0x226
	.4byte	.LLST41
	.uleb128 0x1d
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x3bc
	.4byte	0x226
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x3bf
	.4byte	0x220
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1838
	.uleb128 0x2b
	.4byte	.LVL180
	.4byte	0x2734
	.uleb128 0x27
	.4byte	.LVL183
	.4byte	0x273f
	.4byte	0x17ee
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL184
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL185
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x1838
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1d
	.byte	0
	.uleb128 0x16
	.4byte	0x1828
	.uleb128 0x33
	.4byte	.LASF210
	.byte	0x1
	.byte	0xb5
	.4byte	0xde
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1860
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1870
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x1870
	.uleb128 0xc
	.4byte	0x85
	.byte	0x16
	.byte	0
	.uleb128 0x16
	.4byte	0x1860
	.uleb128 0x33
	.4byte	.LASF211
	.byte	0x1
	.byte	0xc7
	.4byte	0xbd
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1898
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1898
	.byte	0
	.uleb128 0x16
	.4byte	0x998
	.uleb128 0x20
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x4c7
	.4byte	0xde
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18ea
	.uleb128 0x21
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x4c7
	.4byte	0xaf0
	.4byte	.LLST42
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x18fa
	.uleb128 0x2b
	.4byte	.LVL187
	.4byte	0x1875
	.uleb128 0x24
	.4byte	.LVL188
	.4byte	0xa90
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x18fa
	.uleb128 0xc
	.4byte	0x85
	.byte	0x20
	.byte	0
	.uleb128 0x16
	.4byte	0x18ea
	.uleb128 0x33
	.4byte	.LASF213
	.byte	0x1
	.byte	0xd9
	.4byte	0xde
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1931
	.uleb128 0x29
	.4byte	.LASF214
	.byte	0x1
	.byte	0xd9
	.4byte	0xbd
	.4byte	.LLST43
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1931
	.byte	0
	.uleb128 0x16
	.4byte	0x998
	.uleb128 0x1c
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x17b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19f5
	.uleb128 0x1d
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x17b
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x17b
	.4byte	0x16b
	.4byte	.LLST44
	.uleb128 0x32
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x17d
	.4byte	0x215
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x17e
	.4byte	0x215
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x22
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x17f
	.4byte	0xbd
	.4byte	.LLST45
	.uleb128 0x27
	.4byte	.LVL196
	.4byte	0x26bf
	.4byte	0x19ba
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_sbc_default_config
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL197
	.4byte	0x274a
	.4byte	0x19d9
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL200
	.4byte	0x26bf
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x1c2
	.4byte	0xbd
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c0d
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x39c
	.4byte	.LLST46
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x3a7
	.4byte	.LLST47
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1c3
	.4byte	0xbd
	.4byte	.LLST48
	.uleb128 0x1d
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x1c7
	.4byte	0xbd
	.4byte	.LLST49
	.uleb128 0x22
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x1c8
	.4byte	0xde
	.4byte	.LLST50
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x1c9
	.4byte	0xa2c
	.4byte	.LLST51
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x884
	.4byte	.LLST52
	.uleb128 0x32
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1c0d
	.uleb128 0x27
	.4byte	.LVL203
	.4byte	0xbc3
	.4byte	0x1af6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL206
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL207
	.4byte	0x26d5
	.4byte	0x1b2d
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC83
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x27
	.4byte	.LVL214
	.4byte	0x26eb
	.4byte	0x1b4f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL217
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL218
	.4byte	0x26d5
	.4byte	0x1b86
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
	.4byte	.LC4
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
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL219
	.4byte	0x2713
	.uleb128 0x27
	.4byte	.LVL220
	.4byte	0x109b
	.4byte	0x1ba9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.byte	0
	.uleb128 0x27
	.4byte	.LVL222
	.4byte	0x1936
	.4byte	0x1bc3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 3
	.byte	0
	.uleb128 0x27
	.4byte	.LVL225
	.4byte	0x26eb
	.4byte	0x1be3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL227
	.4byte	0x26eb
	.4byte	0x1c03
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL230
	.4byte	0x2729
	.byte	0
	.uleb128 0x16
	.4byte	0xe99
	.uleb128 0x26
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x236
	.4byte	0xbd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e91
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x236
	.4byte	0x39c
	.4byte	.LLST53
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x236
	.4byte	0x3a7
	.4byte	.LLST54
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x237
	.4byte	0x16b
	.4byte	.LLST55
	.uleb128 0x1d
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x237
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x237
	.4byte	0xbd
	.4byte	.LLST56
	.uleb128 0x1d
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x237
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x238
	.4byte	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x23b
	.4byte	0xbd
	.4byte	.LLST57
	.uleb128 0x22
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x23c
	.4byte	0xde
	.4byte	.LLST58
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x23d
	.4byte	0xa2c
	.4byte	.LLST59
	.uleb128 0x22
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x23e
	.4byte	0x884
	.4byte	.LLST60
	.uleb128 0x32
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x23f
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x240
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1e91
	.uleb128 0x27
	.4byte	.LVL236
	.4byte	0xbc3
	.4byte	0x1d12
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL239
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL240
	.4byte	0x26d5
	.4byte	0x1d49
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC89
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x27
	.4byte	.LVL243
	.4byte	0x19f5
	.4byte	0x1d83
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL250
	.4byte	0x26eb
	.4byte	0x1da5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL252
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL253
	.4byte	0x26d5
	.4byte	0x1ddc
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC92
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL254
	.4byte	0x2713
	.uleb128 0x27
	.4byte	.LVL255
	.4byte	0xeae
	.4byte	0x1dff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.byte	0
	.uleb128 0x27
	.4byte	.LVL257
	.4byte	0x116c
	.4byte	0x1e19
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.4byte	.LVL258
	.4byte	0x26eb
	.4byte	0x1e39
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x76
	.sleb128 92
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x27
	.4byte	.LVL261
	.4byte	0x2755
	.4byte	0x1e67
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x76
	.sleb128 92
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_cp_scmst
	.byte	0
	.uleb128 0x27
	.4byte	.LVL263
	.4byte	0x26eb
	.4byte	0x1e87
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x76
	.sleb128 92
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL268
	.4byte	0x2729
	.byte	0
	.uleb128 0x16
	.4byte	0x175d
	.uleb128 0x1c
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x3f6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1efd
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x3f6
	.4byte	0x39c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x1efd
	.uleb128 0x2b
	.4byte	.LVL271
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL272
	.4byte	0x26d5
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
	.4byte	.LC4
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x9e9
	.uleb128 0x26
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x56b
	.4byte	0xde
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x206f
	.uleb128 0x21
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x56b
	.4byte	0x206f
	.4byte	.LLST61
	.uleb128 0x22
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x56d
	.4byte	0xbd
	.4byte	.LLST62
	.uleb128 0x32
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x56e
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x56f
	.4byte	0xa2c
	.4byte	.LLST63
	.uleb128 0x22
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x570
	.4byte	0x884
	.4byte	.LLST64
	.uleb128 0x32
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x571
	.4byte	0x22c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -63
	.uleb128 0x34
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x572
	.4byte	0xbd
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x2085
	.uleb128 0x27
	.4byte	.LVL278
	.4byte	0xeae
	.4byte	0x1faa
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
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.4byte	.LVL280
	.4byte	0x189d
	.4byte	0x1fbe
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL283
	.4byte	0x116c
	.4byte	0x1fed
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x17
	.byte	0x77
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.4byte	bta_av_co_cb+9
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -63
	.byte	0
	.uleb128 0x27
	.4byte	.LVL284
	.4byte	0x271e
	.4byte	0x2019
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -63
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xf
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	bta_av_co_cb+92
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x27
	.4byte	.LVL285
	.4byte	0x26eb
	.4byte	0x2039
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 92
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -63
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x24
	.4byte	.LVL289
	.4byte	0x2755
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x73
	.sleb128 1
	.byte	0x74
	.sleb128 0
	.byte	0x21
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x8
	.byte	0x75
	.sleb128 0
	.byte	0x3
	.4byte	bta_av_co_cb+92
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_cp_scmst
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x701
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x2085
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1f
	.byte	0
	.uleb128 0x16
	.4byte	0x2075
	.uleb128 0x1c
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x5be
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2118
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x2118
	.uleb128 0x2b
	.4byte	.LVL294
	.4byte	0x2713
	.uleb128 0x27
	.4byte	.LVL295
	.4byte	0x26bf
	.4byte	0x20d7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_sbc_default_config
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_cb+225
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL296
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL297
	.4byte	0x26d5
	.4byte	0x210e
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC106
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL298
	.4byte	0x2729
	.byte	0
	.uleb128 0x16
	.4byte	0xe99
	.uleb128 0x26
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x5d8
	.4byte	0xde
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22e6
	.uleb128 0x21
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x5d8
	.4byte	0x22e6
	.4byte	.LLST65
	.uleb128 0x21
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x5d8
	.4byte	0x206f
	.4byte	.LLST66
	.uleb128 0x32
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x5da
	.4byte	0x215
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x5db
	.4byte	0x673
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x22f1
	.uleb128 0x2b
	.4byte	.LVL301
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL302
	.4byte	0x26d5
	.4byte	0x21b5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC111
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL304
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL305
	.4byte	0x26d5
	.4byte	0x21ec
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC113
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL309
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL310
	.4byte	0x26d5
	.4byte	0x2223
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC124
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x27
	.4byte	.LVL312
	.4byte	0x26bf
	.4byte	0x2242
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL314
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL315
	.4byte	0x26d5
	.4byte	0x2279
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC126
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL317
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL318
	.4byte	0x26d5
	.4byte	0x22b0
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC128
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x27
	.4byte	.LVL319
	.4byte	0x26eb
	.4byte	0x22d5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	bta_av_co_cb
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x24
	.4byte	.LVL320
	.4byte	0x1f02
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x22ec
	.uleb128 0x16
	.4byte	0x6f6
	.uleb128 0x16
	.4byte	0x175d
	.uleb128 0x26
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x629
	.4byte	0xde
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23d7
	.uleb128 0x21
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x629
	.4byte	0x23d7
	.4byte	.LLST67
	.uleb128 0x21
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x629
	.4byte	0x1b2
	.4byte	.LLST68
	.uleb128 0x22
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x62b
	.4byte	0xde
	.4byte	.LLST69
	.uleb128 0x22
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x62c
	.4byte	0xbd
	.4byte	.LLST70
	.uleb128 0x22
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x62c
	.4byte	0xbd
	.4byte	.LLST71
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x62d
	.4byte	0xa2c
	.4byte	.LLST72
	.uleb128 0x22
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x62e
	.4byte	0x884
	.4byte	.LLST73
	.uleb128 0x2b
	.4byte	.LVL325
	.4byte	0x2713
	.uleb128 0x27
	.4byte	.LVL326
	.4byte	0x274a
	.4byte	0x23ab
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_cb+225
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL347
	.4byte	0x26eb
	.4byte	0x23cd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_sbc_default_config
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL348
	.4byte	0x2729
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x215
	.uleb128 0x1c
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x665
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2472
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x665
	.4byte	0x39c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x667
	.4byte	0xa2c
	.4byte	.LLST74
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x2472
	.uleb128 0x27
	.4byte	.LVL351
	.4byte	0xbc3
	.4byte	0x2431
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL352
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL353
	.4byte	0x26d5
	.4byte	0x2468
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC136
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL355
	.4byte	0x9fe
	.byte	0
	.uleb128 0x16
	.4byte	0xafb
	.uleb128 0x1c
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x67f
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24d2
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x24e2
	.uleb128 0x27
	.4byte	.LVL356
	.4byte	0x26f4
	.4byte	0x24b5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xf8
	.byte	0
	.uleb128 0x27
	.4byte	.LVL357
	.4byte	0x18ff
	.4byte	0x24c8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL358
	.4byte	0x208a
	.byte	0
	.uleb128 0x9
	.4byte	0x95
	.4byte	0x24e2
	.uleb128 0xc
	.4byte	0x85
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.4byte	0x24d2
	.uleb128 0x26
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x69c
	.4byte	0xde
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25d5
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x69c
	.4byte	0x39c
	.4byte	.LLST75
	.uleb128 0x22
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x69e
	.4byte	0xa2c
	.4byte	.LLST76
	.uleb128 0x22
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x69f
	.4byte	0x884
	.4byte	.LLST77
	.uleb128 0x22
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x6a0
	.4byte	0xbd
	.4byte	.LLST78
	.uleb128 0x1e
	.4byte	.LASF168
	.4byte	0x25d5
	.uleb128 0x27
	.4byte	.LVL360
	.4byte	0xbc3
	.4byte	0x2561
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL362
	.4byte	0x26ca
	.uleb128 0x27
	.4byte	.LVL363
	.4byte	0x26d5
	.4byte	0x2598
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC141
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL367
	.4byte	0xa90
	.uleb128 0x2b
	.4byte	.LVL375
	.4byte	0x26ca
	.uleb128 0x24
	.4byte	.LVL376
	.4byte	0x26d5
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
	.4byte	.LC4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC143
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xe99
	.uleb128 0x26
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x6c2
	.4byte	0xde
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2613
	.uleb128 0x30
	.string	"min"
	.byte	0x1
	.2byte	0x6c2
	.4byte	0x16b
	.4byte	.LLST79
	.uleb128 0x31
	.string	"max"
	.byte	0x1
	.2byte	0x6c2
	.4byte	0x16b
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF243
	.byte	0x2
	.2byte	0x2cc
	.4byte	0x2626
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x16
	.4byte	0x15b
	.uleb128 0x35
	.4byte	.LASF244
	.byte	0x2
	.2byte	0x2cd
	.4byte	0x263e
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x15b
	.uleb128 0x36
	.4byte	.LASF245
	.byte	0x1
	.byte	0x9f
	.4byte	0x909
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_cb
	.uleb128 0x37
	.4byte	.LASF246
	.byte	0xc
	.byte	0xa6
	.4byte	0xbd
	.uleb128 0x38
	.4byte	.LASF247
	.byte	0x1
	.byte	0x45
	.4byte	0x2670
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_cp_scmst
	.uleb128 0x16
	.4byte	0x171
	.uleb128 0x38
	.4byte	.LASF248
	.byte	0x1
	.byte	0x48
	.4byte	0x2686
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_sbc_caps
	.uleb128 0x16
	.4byte	0x215
	.uleb128 0x38
	.4byte	.LASF249
	.byte	0x1
	.byte	0x53
	.4byte	0x2686
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_co_sbc_sink_caps
	.uleb128 0x38
	.4byte	.LASF250
	.byte	0x1
	.byte	0x62
	.4byte	0x2686
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_av_sbc_default_config
	.uleb128 0x39
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x6d0
	.4byte	0x621
	.uleb128 0x5
	.byte	0x3
	.4byte	bta_av_a2d_cos
	.uleb128 0x3a
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0x5
	.byte	0x85
	.uleb128 0x3a
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x6
	.byte	0x57
	.uleb128 0x3a
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0x6
	.byte	0x6b
	.uleb128 0x3a
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0xd
	.byte	0xcf
	.uleb128 0x3b
	.4byte	.LASF256
	.4byte	.LASF256
	.uleb128 0x3b
	.4byte	.LASF257
	.4byte	.LASF257
	.uleb128 0x3a
	.4byte	.LASF258
	.4byte	.LASF258
	.byte	0xd
	.byte	0xc3
	.uleb128 0x3a
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0xe
	.byte	0x42
	.uleb128 0x3a
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0xf
	.byte	0x30
	.uleb128 0x3a
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0x10
	.byte	0x16
	.uleb128 0x3a
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0xf
	.byte	0x32
	.uleb128 0x3a
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0x11
	.byte	0x98
	.uleb128 0x3a
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0xd
	.byte	0xda
	.uleb128 0x3a
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0x5
	.byte	0x9a
	.uleb128 0x3c
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0x8
	.2byte	0x2a8
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x72
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x72
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE47
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x72
	.sleb128 13
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE48
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
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
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x79
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
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
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LFE50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL82
	.4byte	.LFE50
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x5
	.byte	0x3
	.4byte	bta_av_co_cb+224
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL80-1
	.2byte	0x5
	.byte	0x3
	.4byte	bta_av_co_cb+224
	.4byte	.LVL82
	.4byte	.LFE50
	.2byte	0x5
	.byte	0x3
	.4byte	bta_av_co_cb+224
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL87
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL86
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LFE36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LFE51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x5
	.byte	0x3
	.4byte	bta_av_co_cb+224
	.4byte	.LVL96
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL119
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
	.4byte	.LVL126
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LFE52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL128
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LFE53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL138
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL137
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL163
	.4byte	.LVL164-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL164-1
	.4byte	.LVL165
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL166
	.4byte	.LVL171
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL173
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL137
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL147
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL139
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL137
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL160
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142
	.4byte	.LVL143-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL146
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL139
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL139
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL175
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL139
	.4byte	.LVL161
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL164
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL171
	.4byte	.LVL175
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL139
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL157
	.4byte	.LVL158-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL178
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL182
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL179
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL186
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
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
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL193
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL194
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL195
	.4byte	.LVL197
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL201
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL201
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL215
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL201
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL216
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL202
	.4byte	.LVL227
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL231
	.4byte	.LFE33
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LVL206-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL208
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226
	.4byte	.LVL228
	.2byte	0x4
	.byte	0x73
	.sleb128 -92
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x41
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.4byte	.LVL221
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LVL226
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x28
	.byte	0x9f
	.4byte	.LVL226
	.4byte	.LVL228
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x8
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL234
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL238
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL234
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL251
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL234
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL260
	.4byte	.LVL262
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL262
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL267
	.4byte	.LVL269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL269
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL234
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL237
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL235
	.4byte	.LVL243
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL244
	.4byte	.LVL267
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL267
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL269
	.4byte	.LFE34
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL237
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL244
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x41
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL259
	.4byte	.LVL264
	.2byte	0xf
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL266
	.4byte	.LVL267
	.2byte	0xf
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL273
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL293
	.4byte	.LFE54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL275
	.4byte	.LVL276
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL276
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL281
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL282
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL291
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL277
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x10
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	bta_av_co_cb
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LVL289-1
	.2byte	0xd
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL289-1
	.4byte	.LVL290
	.2byte	0x10
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	bta_av_co_cb
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x10
	.byte	0x73
	.sleb128 -1
	.byte	0x33
	.byte	0x24
	.byte	0x73
	.sleb128 -1
	.byte	0x1c
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	bta_av_co_cb
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL279
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL300
	.4byte	.LVL301-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL301-1
	.4byte	.LVL303
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL303
	.4byte	.LVL304-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL304-1
	.4byte	.LVL306
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL307
	.4byte	.LVL316
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL317-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL317-1
	.4byte	.LVL321
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL321
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL322
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL299
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL308
	.4byte	.LVL311
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL311
	.4byte	.LVL313
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL313
	.4byte	.LVL316
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL322
	.4byte	.LFE56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL323
	.4byte	.LVL349
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL349
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL323
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL327
	.4byte	.LVL328
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL328
	.4byte	.LVL344
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL345
	.4byte	.LVL346
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL346
	.4byte	.LFE57
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL324
	.4byte	.LVL346
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL346
	.4byte	.LFE57
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL328
	.4byte	.LVL330
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL330
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL341
	.4byte	.LVL342
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL343
	.4byte	.LVL345
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL331
	.4byte	.LVL332
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL332
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL335
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL337
	.4byte	.LVL338
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL339
	.4byte	.LVL340
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL329
	.4byte	.LVL342
	.2byte	0xc
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0x70
	.byte	0x1e
	.byte	0x3
	.4byte	bta_av_co_cb
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL333
	.4byte	.LVL334
	.2byte	0x11
	.byte	0x7e
	.sleb128 0
	.byte	0x41
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0x70
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	bta_av_co_cb+6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL334
	.4byte	.LVL335
	.2byte	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x41
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0x70
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	bta_av_co_cb+6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL335
	.4byte	.LVL336
	.2byte	0x11
	.byte	0x7e
	.sleb128 0
	.byte	0x41
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0x70
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	bta_av_co_cb+6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL337
	.4byte	.LVL338
	.2byte	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x41
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0x70
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	bta_av_co_cb+6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL338
	.4byte	.LVL339
	.2byte	0x11
	.byte	0x7e
	.sleb128 0
	.byte	0x41
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0x70
	.byte	0x1e
	.byte	0x22
	.byte	0x3
	.4byte	bta_av_co_cb+6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL351
	.4byte	.LVL352-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL354
	.4byte	.LVL355-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL359
	.4byte	.LVL361
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL361
	.4byte	.LVL364
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL364
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL369
	.4byte	.LVL374
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL374
	.4byte	.LFE60
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL360
	.4byte	.LVL362-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL364
	.4byte	.LVL366
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL369
	.4byte	.LVL375-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL377
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL365
	.4byte	.LVL367-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL369
	.4byte	.LVL372
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL364
	.4byte	.LVL367-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL370
	.4byte	.LVL371
	.2byte	0x3
	.byte	0x79
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL373
	.4byte	.LVL375-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL378
	.4byte	.LFE60
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL379
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL380
	.4byte	.LVL381
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL381
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL382
	.4byte	.LFE61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x134
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF92:
	.string	"BTM_PM_STS_PARK"
.LASF153:
	.string	"recfg_needed"
.LASF252:
	.string	"A2D_BldSbcInfo"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF267:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF106:
	.string	"tBTA_AV_CO_DATAPATH"
.LASF89:
	.string	"BTM_PM_STS_ACTIVE"
.LASF245:
	.string	"bta_av_co_cb"
.LASF228:
	.string	"p_status"
.LASF210:
	.string	"bta_av_co_cp_is_active"
.LASF192:
	.string	"bta_av_co_audio_delay"
.LASF126:
	.string	"format"
.LASF100:
	.string	"tBTA_AV_CO_GETCFG"
.LASF168:
	.string	"__FUNCTION__"
.LASF268:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/bta_av_co.c"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF26:
	.string	"BT_HDR"
.LASF183:
	.string	"uuid_local"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF242:
	.string	"bta_av_co_get_remote_bitpool_pref"
.LASF18:
	.string	"UINT16"
.LASF0:
	.string	"unsigned int"
.LASF198:
	.string	"bta_av_co_audio_media_supports_config"
.LASF37:
	.string	"num_subbands"
.LASF135:
	.string	"codec_caps"
.LASF201:
	.string	"avdt_handle"
.LASF35:
	.string	"ch_mode"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF253:
	.string	"esp_log_timestamp"
.LASF224:
	.string	"pref_cfg"
.LASF227:
	.string	"bta_av_co_audio_codec_supported"
.LASF32:
	.string	"ESP_LOG_DEBUG"
.LASF20:
	.string	"BOOLEAN"
.LASF199:
	.string	"bta_av_co_audio_setconfig"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF176:
	.string	"p_codec_type"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF232:
	.string	"p_feeding"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF180:
	.string	"bta_av_co_audio_disc_res"
.LASF264:
	.string	"bta_av_sbc_bld_hdr"
.LASF213:
	.string	"bta_av_co_cp_set_flag"
.LASF220:
	.string	"bta_av_audio_sink_getconfig"
.LASF157:
	.string	"active"
.LASF127:
	.string	"tBTC_AV_MEDIA_FEEDINGS"
.LASF19:
	.string	"UINT32"
.LASF16:
	.string	"uint32_t"
.LASF124:
	.string	"tBTC_AV_MEDIA_FEED_CFG_PCM"
.LASF138:
	.string	"tBTA_AV_CO_SINK"
.LASF166:
	.string	"bta_av_co_audio_start"
.LASF115:
	.string	"stop"
.LASF22:
	.string	"event"
.LASF270:
	.string	"bdcpy"
.LASF175:
	.string	"index"
.LASF91:
	.string	"BTM_PM_STS_SNIFF"
.LASF222:
	.string	"result"
.LASF81:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF9:
	.string	"long long unsigned int"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF23:
	.string	"offset"
.LASF243:
	.string	"bd_addr_any"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF79:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF154:
	.string	"opened"
.LASF6:
	.string	"__uint16_t"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF140:
	.string	"snks"
.LASF80:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF30:
	.string	"ESP_LOG_WARN"
.LASF101:
	.string	"tBTA_AV_CO_SETCFG"
.LASF93:
	.string	"BTM_PM_STS_SSR"
.LASF117:
	.string	"tBTA_AV_CO_FUNCTS"
.LASF207:
	.string	"p_len"
.LASF239:
	.string	"bta_av_co_audio_discard_config"
.LASF137:
	.string	"protect_info"
.LASF234:
	.string	"new_cfg"
.LASF197:
	.string	"bta_av_co_audio_sink_supports_config"
.LASF247:
	.string	"bta_av_co_cp_scmst"
.LASF36:
	.string	"block_len"
.LASF178:
	.string	"p_protect_info"
.LASF265:
	.string	"A2D_ParsSbcInfo"
.LASF249:
	.string	"bta_av_co_sbc_sink_caps"
.LASF21:
	.string	"_Bool"
.LASF240:
	.string	"bta_av_co_init"
.LASF258:
	.string	"bta_av_sbc_cfg_in_cap"
.LASF181:
	.string	"num_snk"
.LASF194:
	.string	"p_src_index"
.LASF121:
	.string	"sampling_freq"
.LASF109:
	.string	"disc_res"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF209:
	.string	"p_buf"
.LASF190:
	.string	"p_snk_index"
.LASF147:
	.string	"num_sup_snks"
.LASF185:
	.string	"codec_id"
.LASF170:
	.string	"p_protectinfo"
.LASF223:
	.string	"supported"
.LASF144:
	.string	"num_seps"
.LASF134:
	.string	"codec_type"
.LASF27:
	.string	"BD_ADDR"
.LASF102:
	.string	"tBTA_AV_CO_OPEN"
.LASF13:
	.string	"char"
.LASF158:
	.string	"flag"
.LASF211:
	.string	"bta_av_co_cp_get_flag"
.LASF171:
	.string	"bta_av_co_cp_is_scmst"
.LASF98:
	.string	"tBTA_AV_CO_INIT"
.LASF103:
	.string	"tBTA_AV_CO_CLOSE"
.LASF113:
	.string	"close"
.LASF229:
	.string	"snk_index"
.LASF269:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF125:
	.string	"tBTC_AV_MEDIA_FEED_CFG"
.LASF148:
	.string	"num_sup_srcs"
.LASF184:
	.string	"bta_av_co_audio_codec_cfg_matches_caps"
.LASF14:
	.string	"uint8_t"
.LASF202:
	.string	"status"
.LASF236:
	.string	"p_sbc_config"
.LASF24:
	.string	"layer_specific"
.LASF271:
	.string	"bta_av_co_audio_peer_reset_config"
.LASF162:
	.string	"tBTA_AV_CO_CB"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF186:
	.string	"p_codec_caps"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF188:
	.string	"bta_av_co_audio_codec_match"
.LASF132:
	.string	"sep_info_idx"
.LASF159:
	.string	"tBTA_AV_CO_CP"
.LASF8:
	.string	"long long int"
.LASF122:
	.string	"num_channel"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF130:
	.string	"BTC_SV_AV_AA_SBC_SINK_INDEX"
.LASF173:
	.string	"p_sink"
.LASF145:
	.string	"num_rx_snks"
.LASF34:
	.string	"samp_freq"
.LASF191:
	.string	"bta_av_co_audio_open"
.LASF257:
	.string	"memset"
.LASF203:
	.string	"category"
.LASF205:
	.string	"bta_av_co_audio_init"
.LASF74:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF260:
	.string	"osi_mutex_global_lock"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF214:
	.string	"cp_flag"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF31:
	.string	"ESP_LOG_INFO"
.LASF119:
	.string	"info"
.LASF161:
	.string	"codec_cfg_setconfig"
.LASF129:
	.string	"BTC_SV_AV_AA_SBC_INDEX"
.LASF254:
	.string	"esp_log_write"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF204:
	.string	"codec_cfg_supported"
.LASF146:
	.string	"num_rx_srcs"
.LASF241:
	.string	"bta_av_co_peer_cp_supported"
.LASF95:
	.string	"BTM_PM_STS_ERROR"
.LASF155:
	.string	"uuid_to_connect"
.LASF266:
	.string	"BTA_AvReconfig"
.LASF212:
	.string	"bta_av_co_audio_sink_supports_cp"
.LASF182:
	.string	"num_src"
.LASF25:
	.string	"data"
.LASF235:
	.string	"bta_av_co_audio_get_sbc_config"
.LASF84:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF169:
	.string	"p_peer"
.LASF99:
	.string	"tBTA_AV_CO_DISC_RES"
.LASF231:
	.string	"bta_av_co_audio_set_codec"
.LASF167:
	.string	"bta_av_co_audio_stop"
.LASF15:
	.string	"uint16_t"
.LASF156:
	.string	"tBTA_AV_CO_PEER"
.LASF141:
	.string	"srcs"
.LASF142:
	.string	"num_snks"
.LASF90:
	.string	"BTM_PM_STS_HOLD"
.LASF226:
	.string	"bta_av_co_audio_drop"
.LASF120:
	.string	"tBTC_AV_CODEC_INFO"
.LASF244:
	.string	"bd_addr_null"
.LASF218:
	.string	"src_cap"
.LASF149:
	.string	"p_snk"
.LASF110:
	.string	"getcfg"
.LASF86:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF4:
	.string	"short int"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF237:
	.string	"p_minmtu"
.LASF136:
	.string	"num_protect"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF10:
	.string	"long int"
.LASF107:
	.string	"tBTA_AV_CO_DELAY"
.LASF116:
	.string	"delay"
.LASF75:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF39:
	.string	"max_bitpool"
.LASF143:
	.string	"num_srcs"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF221:
	.string	"p_sep_info_idx"
.LASF261:
	.string	"memcmp"
.LASF233:
	.string	"sbc_config"
.LASF216:
	.string	"p_pref_cfg"
.LASF128:
	.string	"tBTC_AV_STATUS"
.LASF152:
	.string	"cp_active"
.LASF174:
	.string	"cp_id"
.LASF262:
	.string	"osi_mutex_global_unlock"
.LASF5:
	.string	"__uint8_t"
.LASF40:
	.string	"min_bitpool"
.LASF41:
	.string	"tA2D_SBC_CIE"
.LASF114:
	.string	"start"
.LASF112:
	.string	"open"
.LASF179:
	.string	"bta_av_co_get_peer"
.LASF196:
	.string	"bta_av_co_audio_close"
.LASF255:
	.string	"bta_av_sbc_cfg_matches_cap"
.LASF108:
	.string	"init"
.LASF248:
	.string	"bta_av_co_sbc_caps"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF11:
	.string	"sizetype"
.LASF96:
	.string	"tBTA_AV_HNDL"
.LASF12:
	.string	"long unsigned int"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF251:
	.string	"bta_av_a2d_cos"
.LASF33:
	.string	"ESP_LOG_VERBOSE"
.LASF230:
	.string	"bta_av_co_audio_codec_reset"
.LASF219:
	.string	"pref_cap"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF177:
	.string	"p_num_protect"
.LASF82:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF225:
	.string	"bta_av_co_audio_getconfig"
.LASF76:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF3:
	.string	"unsigned char"
.LASF217:
	.string	"p_src_cap"
.LASF7:
	.string	"__uint32_t"
.LASF208:
	.string	"p_timestamp"
.LASF85:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF160:
	.string	"peers"
.LASF263:
	.string	"btc_a2dp_source_audio_readbuf"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF195:
	.string	"bta_av_co_audio_codec_build_config"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF133:
	.string	"seid"
.LASF104:
	.string	"tBTA_AV_CO_START"
.LASF77:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF163:
	.string	"hndl"
.LASF139:
	.string	"addr"
.LASF206:
	.string	"bta_av_co_audio_src_data_path"
.LASF238:
	.string	"jndex"
.LASF250:
	.string	"btc_av_sbc_default_config"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF118:
	.string	"tBTC_AV_CODEC_ID"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF97:
	.string	"tBTA_AV_CODEC"
.LASF246:
	.string	"appl_trace_level"
.LASF111:
	.string	"setcfg"
.LASF2:
	.string	"signed char"
.LASF78:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF150:
	.string	"p_src"
.LASF1:
	.string	"short unsigned int"
.LASF187:
	.string	"p_codec_cfg"
.LASF256:
	.string	"memcpy"
.LASF28:
	.string	"ESP_LOG_NONE"
.LASF131:
	.string	"BTC_SV_AV_AA_SEP_INDEX"
.LASF193:
	.string	"bta_av_co_audio_peer_src_supports_codec"
.LASF215:
	.string	"bta_av_build_src_cfg"
.LASF87:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF123:
	.string	"bit_per_sample"
.LASF17:
	.string	"UINT8"
.LASF172:
	.string	"bta_av_co_audio_sink_has_scmst"
.LASF259:
	.string	"bta_av_ci_setconfig"
.LASF105:
	.string	"tBTA_AV_CO_STOP"
.LASF38:
	.string	"alloc_mthd"
.LASF165:
	.string	"p_no_rtp_hdr"
.LASF83:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF200:
	.string	"t_local_sep"
.LASF164:
	.string	"p_codec_info"
.LASF151:
	.string	"codec_cfg"
.LASF189:
	.string	"bta_av_co_audio_peer_supports_codec"
.LASF94:
	.string	"BTM_PM_STS_PENDING"
.LASF29:
	.string	"ESP_LOG_ERROR"
.LASF88:
	.string	"BTM_EIR_MAX_SERVICES"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
