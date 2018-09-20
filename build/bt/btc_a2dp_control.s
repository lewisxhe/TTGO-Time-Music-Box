	.file	"btc_a2dp_control.c"
	.text
.Ltext0:
	.section	.text.btc_a2dp_dispatch_datapath_evt,"ax",@progbits
	.align	4
	.type	btc_a2dp_dispatch_datapath_evt, @function
btc_a2dp_dispatch_datapath_evt:
.LFB32:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_a2dp_control.c"
	.loc 1 100 0
.LVL0:
	entry	sp, 48
.LCFI0:
	.loc 1 102 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 103 0
	movi.n	a8, 0xc
	s8i	a8, sp, 2
	.loc 1 104 0
	movi.n	a8, 0xb
	s8i	a8, sp, 3
	.loc 1 107 0
	movi.n	a13, 0
	s32i.n	a13, sp, 12
	.loc 1 108 0
	s32i.n	a2, sp, 8
	.loc 1 112 0
	movi.n	a12, 8
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL1:
	retw.n
.LFE32:
	.size	btc_a2dp_dispatch_datapath_evt, .-btc_a2dp_dispatch_datapath_evt
	.section	.text.btc_a2dp_datapath_open,"ax",@progbits
	.literal_position
	.literal .LC0, btc_aa_ctrl_cb
	.align	4
	.type	btc_a2dp_datapath_open, @function
btc_a2dp_datapath_open:
.LFB29:
	.loc 1 76 0
	entry	sp, 32
.LCFI1:
	.loc 1 78 0
	call8	btc_av_get_peer_sep
.LVL2:
	bnei	a10, 1, .L3
	.loc 1 78 0 is_stmt 0 discriminator 1
	call8	btc_av_get_service_id
.LVL3:
	bnei	a10, 3, .L3
	.loc 1 80 0 is_stmt 1
	call8	btc_a2dp_source_start_audio_req
.LVL4:
	.loc 1 83 0
	call8	btc_a2dp_source_encoder_update
.LVL5:
.L3:
	.loc 1 86 0
	movi.n	a9, 1
	l32r	a8, .LC0
	s8i	a9, a8, 0
	retw.n
.LFE29:
	.size	btc_a2dp_datapath_open, .-btc_a2dp_datapath_open
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC3:
	.string	"BT_APPL"
	.align	4
.LC5:
	.string	"\033[0;31mE (%d) %s: warning : no command pending, ignore ack\033[0m\n"
	.section	.text.btc_a2dp_control_command_ack,"ax",@progbits
	.literal_position
	.literal .LC1, btc_aa_ctrl_cb
	.literal .LC2, appl_trace_level
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	btc_a2dp_control_command_ack
	.type	btc_a2dp_control_command_ack, @function
btc_a2dp_control_command_ack:
.LFB28:
	.loc 1 61 0
.LVL6:
	entry	sp, 48
.LCFI2:
	.loc 1 63 0
	l32r	a8, .LC1
	l8ui	a8, a8, 1
	bnez.n	a8, .L5
	.loc 1 64 0
	l32r	a8, .LC2
	l8ui	a8, a8, 0
	beqz.n	a8, .L4
	.loc 1 64 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL7:
	l32r	a11, .LC4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC6
	movi.n	a10, 1
	call8	esp_log_write
.LVL8:
	retw.n
.L5:
.LVL9:
	.loc 1 70 0 is_stmt 1
	movi.n	a10, 0
	l32r	a9, .LC1
	s8i	a10, a9, 1
.LVL10:
.LBB8:
.LBB9:
	.loc 1 54 0
	s32i.n	a8, sp, 0
	.loc 1 55 0
	s32i.n	a2, sp, 4
.LVL11:
.LBB10:
.LBB11:
	.loc 1 44 0
	movi.n	a10, 0xc
	call8	btc_profile_cb_get
.LVL12:
	mov.n	a2, a10
.LVL13:
	.loc 1 45 0
	beqz.n	a10, .L4
	.loc 1 46 0
	mov.n	a11, sp
.LVL14:
	movi.n	a10, 3
	callx8	a2
.LVL15:
.L4:
	retw.n
.LBE11:
.LBE10:
.LBE9:
.LBE8:
.LFE28:
	.size	btc_a2dp_control_command_ack, .-btc_a2dp_control_command_ack
	.section	.text.btc_a2dp_control_get_datachnl_stat,"ax",@progbits
	.literal_position
	.literal .LC7, btc_aa_ctrl_cb
	.align	4
	.global	btc_a2dp_control_get_datachnl_stat
	.type	btc_a2dp_control_get_datachnl_stat, @function
btc_a2dp_control_get_datachnl_stat:
.LFB30:
	.loc 1 90 0
	entry	sp, 32
.LCFI3:
	.loc 1 92 0
	l32r	a8, .LC7
	l8ui	a2, a8, 0
	retw.n
.LFE30:
	.size	btc_a2dp_control_get_datachnl_stat, .-btc_a2dp_control_get_datachnl_stat
	.section	.text.btc_a2dp_control_set_datachnl_stat,"ax",@progbits
	.literal_position
	.literal .LC8, btc_aa_ctrl_cb
	.align	4
	.global	btc_a2dp_control_set_datachnl_stat
	.type	btc_a2dp_control_set_datachnl_stat, @function
btc_a2dp_control_set_datachnl_stat:
.LFB31:
	.loc 1 95 0
.LVL16:
	entry	sp, 32
.LCFI4:
	.loc 1 96 0
	l32r	a8, .LC8
	s8i	a2, a8, 0
	retw.n
.LFE31:
	.size	btc_a2dp_control_set_datachnl_stat, .-btc_a2dp_control_set_datachnl_stat
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"\033[0;31mE (%d) %s: ### A2DP-MEDIA EVENT %u NOT HANDLED ###\033[0m\n"
	.section	.text.btc_a2dp_control_media_ctrl,"ax",@progbits
	.literal_position
	.literal .LC9, btc_aa_ctrl_cb
	.literal .LC10, appl_trace_level
	.literal .LC11, .LC3
	.literal .LC13, .LC12
	.align	4
	.global	btc_a2dp_control_media_ctrl
	.type	btc_a2dp_control_media_ctrl, @function
btc_a2dp_control_media_ctrl:
.LFB33:
	.loc 1 116 0
.LVL17:
	entry	sp, 48
.LCFI5:
	.loc 1 119 0
	l32r	a8, .LC9
	l8ui	a8, a8, 1
	beqz.n	a8, .L11
.LVL18:
.LBB16:
.LBB17:
	.loc 1 54 0
	s32i.n	a2, sp, 0
	.loc 1 55 0
	movi.n	a2, 2
.LVL19:
	s32i.n	a2, sp, 4
.LVL20:
.LBB18:
.LBB19:
	.loc 1 44 0
	movi.n	a10, 0xc
	call8	btc_profile_cb_get
.LVL21:
	mov.n	a2, a10
.LVL22:
	.loc 1 45 0
	beqz.n	a10, .L10
	.loc 1 46 0
	mov.n	a11, sp
.LVL23:
	movi.n	a10, 3
	callx8	a2
.LVL24:
	retw.n
.LVL25:
.L11:
.LBE19:
.LBE18:
.LBE17:
.LBE16:
	.loc 1 125 0
	l32r	a8, .LC9
	s8i	a2, a8, 1
	.loc 1 127 0
	beqi	a2, 2, .L15
	bgeui	a2, 3, .L16
	beqi	a2, 1, .L17
	j	.L14
.L16:
	beqi	a2, 3, .L18
	beqi	a2, 4, .L19
	j	.L14
.L17:
	.loc 1 130 0
	call8	btc_a2dp_source_is_task_shutting_down
.LVL26:
	beqz.n	a10, .L20
	.loc 1 131 0
	movi.n	a10, 1
	call8	btc_a2dp_control_command_ack
.LVL27:
	retw.n
.L20:
	.loc 1 132 0
	call8	btc_av_stream_ready
.LVL28:
	bnez.n	a10, .L21
	.loc 1 133 0 discriminator 1
	call8	btc_av_stream_started_ready
.LVL29:
	.loc 1 132 0 discriminator 1
	beqz.n	a10, .L22
.L21:
	.loc 1 135 0
	movi.n	a10, 0
	call8	btc_a2dp_control_command_ack
.LVL30:
	retw.n
.L22:
	.loc 1 137 0
	movi.n	a10, 1
	call8	btc_a2dp_control_command_ack
.LVL31:
	retw.n
.L15:
	.loc 1 144 0
	call8	btc_av_stream_ready
.LVL32:
	beqz.n	a10, .L23
	.loc 1 146 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 0x18
	call8	btc_dispatch_sm_event
.LVL33:
	.loc 1 148 0
	movi.n	a10, 0
	call8	btc_a2dp_dispatch_datapath_evt
.LVL34:
	.loc 1 150 0
	call8	btc_av_get_peer_sep
.LVL35:
	bnez.n	a10, .L10
	.loc 1 150 0 is_stmt 0 discriminator 1
	call8	btc_av_get_service_id
.LVL36:
	movi.n	a2, 0x12
.LVL37:
	bne	a10, a2, .L10
	.loc 1 151 0 is_stmt 1
	movi.n	a10, 0
	call8	btc_a2dp_control_command_ack
.LVL38:
	retw.n
.LVL39:
.L23:
	.loc 1 154 0
	call8	btc_av_stream_started_ready
.LVL40:
	beqz.n	a10, .L24
	.loc 1 155 0
	movi.n	a10, 0
	call8	btc_a2dp_dispatch_datapath_evt
.LVL41:
	.loc 1 156 0
	movi.n	a10, 0
	call8	btc_a2dp_control_command_ack
.LVL42:
	retw.n
.L24:
	.loc 1 158 0
	movi.n	a10, 1
	call8	btc_a2dp_control_command_ack
.LVL43:
	retw.n
.L18:
	.loc 1 163 0
	call8	btc_av_get_peer_sep
.LVL44:
	bnei	a10, 1, .L25
	.loc 1 163 0 is_stmt 0 discriminator 1
	call8	btc_a2dp_source_is_streaming
.LVL45:
	bnez.n	a10, .L25
	.loc 1 164 0 is_stmt 1 discriminator 2
	call8	btc_av_get_service_id
.LVL46:
	.loc 1 163 0 discriminator 2
	bnei	a10, 3, .L25
	.loc 1 166 0
	movi.n	a10, 0
	call8	btc_a2dp_control_command_ack
.LVL47:
	.loc 1 167 0
	retw.n
.L25:
	.loc 1 170 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 0x19
	call8	btc_dispatch_sm_event
.LVL48:
	.loc 1 172 0
	call8	btc_av_get_peer_sep
.LVL49:
	bnez.n	a10, .L10
	.loc 1 172 0 is_stmt 0 discriminator 1
	call8	btc_av_get_service_id
.LVL50:
	movi.n	a2, 0x12
.LVL51:
	bne	a10, a2, .L10
	.loc 1 173 0 is_stmt 1
	movi.n	a10, 0
	call8	btc_a2dp_control_command_ack
.LVL52:
	retw.n
.LVL53:
.L19:
	.loc 1 180 0
	call8	btc_av_stream_started_ready
.LVL54:
	beqz.n	a10, .L26
	.loc 1 181 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 0x1a
	call8	btc_dispatch_sm_event
.LVL55:
	retw.n
.L26:
	.loc 1 185 0
	call8	btc_av_clear_remote_suspend_flag
.LVL56:
	.loc 1 186 0
	movi.n	a10, 0
	call8	btc_a2dp_control_command_ack
.LVL57:
	retw.n
.L14:
	.loc 1 191 0
	l32r	a8, .LC10
	l8ui	a8, a8, 0
	beqz.n	a8, .L27
	.loc 1 191 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL58:
	l32r	a11, .LC11
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 1
	call8	esp_log_write
.LVL59:
.L27:
	.loc 1 192 0 is_stmt 1
	movi.n	a10, 1
	call8	btc_a2dp_control_command_ack
.LVL60:
.L10:
	retw.n
.LFE33:
	.size	btc_a2dp_control_media_ctrl, .-btc_a2dp_control_media_ctrl
	.section	.text.btc_a2dp_control_datapath_ctrl,"ax",@progbits
	.align	4
	.global	btc_a2dp_control_datapath_ctrl
	.type	btc_a2dp_control_datapath_ctrl, @function
btc_a2dp_control_datapath_ctrl:
.LFB34:
	.loc 1 198 0
.LVL61:
	entry	sp, 32
.LCFI6:
	.loc 1 199 0
	bnez.n	a2, .L28
	.loc 1 201 0
	call8	btc_a2dp_datapath_open
.LVL62:
.L28:
	retw.n
.LFE34:
	.size	btc_a2dp_control_datapath_ctrl, .-btc_a2dp_control_datapath_ctrl
	.section	.text.btc_a2dp_control_init,"ax",@progbits
	.literal_position
	.literal .LC14, btc_aa_ctrl_cb
	.align	4
	.global	btc_a2dp_control_init
	.type	btc_a2dp_control_init, @function
btc_a2dp_control_init:
.LFB35:
	.loc 1 211 0
	entry	sp, 32
.LCFI7:
	.loc 1 212 0
	movi.n	a9, 0
	l32r	a8, .LC14
	s16i	a9, a8, 0
	.loc 1 214 0
	movi.n	a2, 1
	retw.n
.LFE35:
	.size	btc_a2dp_control_init, .-btc_a2dp_control_init
	.section	.text.btc_a2dp_control_cleanup,"ax",@progbits
	.literal_position
	.literal .LC15, btc_aa_ctrl_cb
	.align	4
	.global	btc_a2dp_control_cleanup
	.type	btc_a2dp_control_cleanup, @function
btc_a2dp_control_cleanup:
.LFB36:
	.loc 1 217 0
	entry	sp, 32
.LCFI8:
	.loc 1 218 0
	movi.n	a9, 0
	l32r	a8, .LC15
	s16i	a9, a8, 0
	retw.n
.LFE36:
	.size	btc_a2dp_control_cleanup, .-btc_a2dp_control_cleanup
	.section	.bss.btc_aa_ctrl_cb,"aw",@nobits
	.align	4
	.type	btc_aa_ctrl_cb, @object
	.size	btc_aa_ctrl_cb, 2
btc_aa_ctrl_cb:
	.zero	2
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI0-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI1-.LFB29
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
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI3-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI4-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI5-.LFB33
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI6-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI7-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI8-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_defs.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_a2dp_api.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_av.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_a2dp_source.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_manage.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdec
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0xc
	.4byte	.LASF214
	.4byte	.LASF215
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x19
	.4byte	0x57
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
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2d
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x21
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x23
	.4byte	0x94
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x29
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0xde
	.uleb128 0x6
	.4byte	0xc7
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x1f
	.4byte	0x126
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x6
	.byte	0x5
	.byte	0x3b
	.4byte	0x13b
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x5
	.byte	0x3c
	.4byte	0x13b
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x7e
	.4byte	0x14b
	.uleb128 0x6
	.4byte	0xc7
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0x3d
	.4byte	0x126
	.uleb128 0xc
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x1c0
	.4byte	0x27e
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x2a
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x2b
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x2d
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x2e
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.2byte	0x6ea
	.4byte	0x2b6
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7e
	.uleb128 0xe
	.4byte	.LASF135
	.byte	0x8
	.byte	0x8
	.byte	0x17
	.4byte	0x305
	.uleb128 0xf
	.string	"sig"
	.byte	0x8
	.byte	0x18
	.4byte	0x7e
	.byte	0
	.uleb128 0xf
	.string	"aid"
	.byte	0x8
	.byte	0x19
	.4byte	0x7e
	.byte	0x1
	.uleb128 0xf
	.string	"pid"
	.byte	0x8
	.byte	0x1a
	.4byte	0x7e
	.byte	0x2
	.uleb128 0xf
	.string	"act"
	.byte	0x8
	.byte	0x1b
	.4byte	0x7e
	.byte	0x3
	.uleb128 0xf
	.string	"arg"
	.byte	0x8
	.byte	0x1c
	.4byte	0xe5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x8
	.byte	0x1d
	.4byte	0x2bc
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x8
	.byte	0x24
	.4byte	0x32f
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x8
	.byte	0x2a
	.4byte	0x39c
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x9
	.byte	0x69
	.4byte	0x13b
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xa
	.byte	0x20
	.4byte	0x7e
	.uleb128 0x10
	.byte	0x7
	.byte	0xa
	.byte	0x29
	.4byte	0x3e7
	.uleb128 0x11
	.string	"sbc"
	.byte	0xa
	.byte	0x2a
	.4byte	0x3e7
	.uleb128 0x11
	.string	"m12"
	.byte	0xa
	.byte	0x2b
	.4byte	0x3e7
	.uleb128 0x11
	.string	"m24"
	.byte	0xa
	.byte	0x2c
	.4byte	0x13b
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0xa
	.byte	0x2d
	.4byte	0x3f7
	.byte	0
	.uleb128 0x5
	.4byte	0x7e
	.4byte	0x3f7
	.uleb128 0x6
	.4byte	0xc7
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0x7e
	.4byte	0x407
	.uleb128 0x6
	.4byte	0xc7
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0xa
	.byte	0x23
	.4byte	0x428
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0xa
	.byte	0x24
	.4byte	0x3a7
	.byte	0
	.uleb128 0xf
	.string	"cie"
	.byte	0xa
	.byte	0x2e
	.4byte	0x3b2
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xa
	.byte	0x2f
	.4byte	0x407
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x32
	.4byte	0x458
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xa
	.byte	0x37
	.4byte	0x433
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x3a
	.4byte	0x47c
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xa
	.byte	0x3d
	.4byte	0x463
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x40
	.4byte	0x4a6
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xa
	.byte	0x44
	.4byte	0x487
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x47
	.4byte	0x4d0
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF122
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xa
	.byte	0x4b
	.4byte	0x4b1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x4e
	.4byte	0x506
	.uleb128 0x9
	.4byte	.LASF124
	.byte	0
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF126
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF128
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xa
	.byte	0x54
	.4byte	0x4db
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x57
	.4byte	0x536
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0xa
	.byte	0x5c
	.4byte	0x511
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0x10
	.byte	0xa
	.byte	0x63
	.4byte	0x572
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xa
	.byte	0x64
	.4byte	0x458
	.byte	0
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xa
	.byte	0x65
	.4byte	0x39c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xa
	.byte	0x66
	.4byte	0x47c
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0xc
	.byte	0xa
	.byte	0x6c
	.4byte	0x597
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0xa
	.byte	0x6d
	.4byte	0x4a6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xa
	.byte	0x6e
	.4byte	0x39c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0xe
	.byte	0xa
	.byte	0x74
	.4byte	0x5bc
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xa
	.byte	0x75
	.4byte	0x39c
	.byte	0
	.uleb128 0xf
	.string	"mcc"
	.byte	0xa
	.byte	0x76
	.4byte	0x428
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0x8
	.byte	0xa
	.byte	0x7c
	.4byte	0x5e1
	.uleb128 0xf
	.string	"cmd"
	.byte	0xa
	.byte	0x7d
	.4byte	0x506
	.byte	0
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xa
	.byte	0x7e
	.4byte	0x4d0
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0xa
	.byte	0x5f
	.4byte	0x616
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0xa
	.byte	0x67
	.4byte	0x541
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0xa
	.byte	0x6f
	.4byte	0x572
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0xa
	.byte	0x77
	.4byte	0x597
	.uleb128 0x12
	.4byte	.LASF147
	.byte	0xa
	.byte	0x7f
	.4byte	0x5bc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xa
	.byte	0x80
	.4byte	0x5e1
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xa
	.byte	0x89
	.4byte	0x62c
	.uleb128 0xd
	.byte	0x4
	.4byte	0x632
	.uleb128 0x13
	.4byte	0x642
	.uleb128 0x14
	.4byte	0x536
	.uleb128 0x14
	.4byte	0x642
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x616
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0xa
	.byte	0x91
	.4byte	0x653
	.uleb128 0xd
	.byte	0x4
	.4byte	0x659
	.uleb128 0x13
	.4byte	0x669
	.uleb128 0x14
	.4byte	0x669
	.uleb128 0x14
	.4byte	0x94
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x66f
	.uleb128 0x15
	.4byte	0x7e
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xa
	.byte	0x9e
	.4byte	0x67f
	.uleb128 0xd
	.byte	0x4
	.4byte	0x685
	.uleb128 0x16
	.4byte	0x89
	.4byte	0x699
	.uleb128 0x14
	.4byte	0x2b6
	.uleb128 0x14
	.4byte	0x89
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xb
	.byte	0x28
	.4byte	0x6b2
	.uleb128 0x9
	.4byte	.LASF152
	.byte	0
	.uleb128 0x9
	.4byte	.LASF153
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xb
	.byte	0x2d
	.4byte	0x6e3
	.uleb128 0x9
	.4byte	.LASF154
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF156
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF159
	.byte	0x1b
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xb
	.byte	0x36
	.4byte	0x738
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF163
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF164
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF166
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.byte	0xb
	.byte	0x4a
	.4byte	0x78e
	.uleb128 0x11
	.string	"mcc"
	.byte	0xb
	.byte	0x4d
	.4byte	0x428
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xb
	.byte	0x4f
	.4byte	0x14b
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xb
	.byte	0x51
	.4byte	0x648
	.uleb128 0x12
	.4byte	.LASF174
	.byte	0xb
	.byte	0x55
	.4byte	0x674
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0xb
	.byte	0x57
	.4byte	0x14b
	.uleb128 0x12
	.4byte	.LASF176
	.byte	0xb
	.byte	0x5a
	.4byte	0x506
	.uleb128 0x12
	.4byte	.LASF177
	.byte	0xb
	.byte	0x5c
	.4byte	0x94
	.byte	0
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0xb
	.byte	0x5d
	.4byte	0x738
	.uleb128 0xa
	.byte	0x2
	.byte	0x1
	.byte	0x23
	.4byte	0x7ba
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0x1
	.byte	0x24
	.4byte	0xb5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0x1
	.byte	0x25
	.4byte	0x9f
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0x1
	.byte	0x26
	.4byte	0x799
	.uleb128 0x17
	.4byte	.LASF186
	.byte	0x1
	.byte	0x2a
	.byte	0x3
	.4byte	0x7f3
	.uleb128 0x18
	.4byte	.LASF182
	.byte	0x1
	.byte	0x2a
	.4byte	0x536
	.uleb128 0x18
	.4byte	.LASF183
	.byte	0x1
	.byte	0x2a
	.4byte	0x642
	.uleb128 0x19
	.4byte	.LASF188
	.byte	0x1
	.byte	0x2c
	.4byte	0x621
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF184
	.byte	0x1
	.byte	0x63
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85b
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0x1
	.byte	0x63
	.4byte	0x94
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0x65
	.4byte	0x305
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"arg"
	.byte	0x1
	.byte	0x6a
	.4byte	0x78e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	.LASF216
	.4byte	0x86b
	.uleb128 0x1e
	.4byte	.LVL1
	.4byte	0xd55
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xde
	.4byte	0x86b
	.uleb128 0x6
	.4byte	0xc7
	.byte	0x1e
	.byte	0
	.uleb128 0x15
	.4byte	0x85b
	.uleb128 0x1a
	.4byte	.LASF185
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8aa
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0xd60
	.uleb128 0x20
	.4byte	.LVL3
	.4byte	0xd6b
	.uleb128 0x20
	.4byte	.LVL4
	.4byte	0xd76
	.uleb128 0x20
	.4byte	.LVL5
	.4byte	0xd81
	.byte	0
	.uleb128 0x17
	.4byte	.LASF187
	.byte	0x1
	.byte	0x32
	.byte	0x3
	.4byte	0x8d8
	.uleb128 0x21
	.string	"cmd"
	.byte	0x1
	.byte	0x32
	.4byte	0x57
	.uleb128 0x18
	.4byte	.LASF143
	.byte	0x1
	.byte	0x32
	.4byte	0x57
	.uleb128 0x19
	.4byte	.LASF183
	.byte	0x1
	.byte	0x34
	.4byte	0x616
	.byte	0
	.uleb128 0x22
	.4byte	.LASF189
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d3
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x1
	.byte	0x3c
	.4byte	0x57
	.4byte	.LLST0
	.uleb128 0x24
	.string	"cmd"
	.byte	0x1
	.byte	0x45
	.4byte	0x57
	.4byte	.LLST1
	.uleb128 0x25
	.4byte	0x8aa
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x48
	.4byte	0x99f
	.uleb128 0x26
	.4byte	0x8c1
	.4byte	.LLST2
	.uleb128 0x26
	.4byte	0x8b6
	.4byte	.LLST3
	.uleb128 0x27
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x28
	.4byte	0x8cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.4byte	0x7c5
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x39
	.uleb128 0x26
	.4byte	0x7dc
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	0x7d1
	.4byte	.LLST5
	.uleb128 0x27
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x2a
	.4byte	0x7e7
	.4byte	.LLST6
	.uleb128 0x2b
	.4byte	.LVL12
	.4byte	0xd8c
	.4byte	0x987
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL15
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0xd97
	.uleb128 0x1e
	.4byte	.LVL8
	.4byte	0xda2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF194
	.byte	0x1
	.byte	0x59
	.4byte	0xb5
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF190
	.byte	0x1
	.byte	0x5e
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0b
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x1
	.byte	0x5e
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x22
	.4byte	.LASF192
	.byte	0x1
	.byte	0x73
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb6
	.uleb128 0x23
	.4byte	.LASF176
	.byte	0x1
	.byte	0x73
	.4byte	0x506
	.4byte	.LLST7
	.uleb128 0x25
	.4byte	0x8aa
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x79
	.4byte	0xac3
	.uleb128 0x26
	.4byte	0x8c1
	.4byte	.LLST8
	.uleb128 0x26
	.4byte	0x8b6
	.4byte	.LLST9
	.uleb128 0x27
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x28
	.4byte	0x8cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.4byte	0x7c5
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x39
	.uleb128 0x26
	.4byte	0x7dc
	.4byte	.LLST10
	.uleb128 0x26
	.4byte	0x7d1
	.4byte	.LLST11
	.uleb128 0x27
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x2a
	.4byte	0x7e7
	.4byte	.LLST12
	.uleb128 0x2b
	.4byte	.LVL21
	.4byte	0xd8c
	.4byte	0xaab
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL24
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL26
	.4byte	0xdad
	.uleb128 0x2b
	.4byte	.LVL27
	.4byte	0x8d8
	.4byte	0xadf
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL28
	.4byte	0xdb8
	.uleb128 0x20
	.4byte	.LVL29
	.4byte	0xdc3
	.uleb128 0x2b
	.4byte	.LVL30
	.4byte	0x8d8
	.4byte	0xb04
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL31
	.4byte	0x8d8
	.4byte	0xb17
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL32
	.4byte	0xdb8
	.uleb128 0x2b
	.4byte	.LVL33
	.4byte	0xdce
	.4byte	0xb3d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL34
	.4byte	0x7f3
	.4byte	0xb50
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL35
	.4byte	0xd60
	.uleb128 0x20
	.4byte	.LVL36
	.4byte	0xd6b
	.uleb128 0x2b
	.4byte	.LVL38
	.4byte	0x8d8
	.4byte	0xb75
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL40
	.4byte	0xdc3
	.uleb128 0x2b
	.4byte	.LVL41
	.4byte	0x7f3
	.4byte	0xb91
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL42
	.4byte	0x8d8
	.4byte	0xba4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL43
	.4byte	0x8d8
	.4byte	0xbb7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.4byte	.LVL44
	.4byte	0xd60
	.uleb128 0x20
	.4byte	.LVL45
	.4byte	0xdd9
	.uleb128 0x20
	.4byte	.LVL46
	.4byte	0xd6b
	.uleb128 0x2b
	.4byte	.LVL47
	.4byte	0x8d8
	.4byte	0xbe5
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL48
	.4byte	0xdce
	.4byte	0xc02
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL49
	.4byte	0xd60
	.uleb128 0x20
	.4byte	.LVL50
	.4byte	0xd6b
	.uleb128 0x2b
	.4byte	.LVL52
	.4byte	0x8d8
	.4byte	0xc27
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL54
	.4byte	0xdc3
	.uleb128 0x2b
	.4byte	.LVL55
	.4byte	0xdce
	.4byte	0xc4d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL56
	.4byte	0xde4
	.uleb128 0x2b
	.4byte	.LVL57
	.4byte	0x8d8
	.4byte	0xc69
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.4byte	.LVL58
	.4byte	0xd97
	.uleb128 0x2b
	.4byte	.LVL59
	.4byte	0xda2
	.4byte	0xca6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL60
	.4byte	0x8d8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF193
	.byte	0x1
	.byte	0xc5
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce2
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0x1
	.byte	0xc5
	.4byte	0x94
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LVL62
	.4byte	0x870
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF195
	.byte	0x1
	.byte	0xd2
	.4byte	0xc0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF217
	.byte	0x1
	.byte	0xd8
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.4byte	.LASF196
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xd1b
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x15
	.4byte	0xce
	.uleb128 0x2f
	.4byte	.LASF197
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xd33
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xce
	.uleb128 0x30
	.4byte	.LASF198
	.byte	0x1
	.byte	0x28
	.4byte	0x7ba
	.uleb128 0x5
	.byte	0x3
	.4byte	btc_aa_ctrl_cb
	.uleb128 0x31
	.4byte	.LASF218
	.byte	0xe
	.2byte	0x2ea
	.4byte	0x9f
	.uleb128 0x32
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x8
	.byte	0x4c
	.uleb128 0x32
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0xb
	.byte	0xb3
	.uleb128 0x32
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0xb
	.byte	0xd8
	.uleb128 0x32
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0xc
	.byte	0x77
	.uleb128 0x32
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xc
	.byte	0xf0
	.uleb128 0x32
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0xd
	.byte	0x1a
	.uleb128 0x32
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0x6
	.byte	0x57
	.uleb128 0x32
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x6
	.byte	0x6b
	.uleb128 0x32
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0xc
	.byte	0xb6
	.uleb128 0x32
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0xb
	.byte	0x80
	.uleb128 0x32
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0xb
	.byte	0x8c
	.uleb128 0x32
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0xb
	.byte	0x99
	.uleb128 0x32
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0xc
	.byte	0xad
	.uleb128 0x32
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0xb
	.byte	0xcc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.4byte	.LVL6
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL21-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL21-1
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL21-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL21-1
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24-1
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL25
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF207:
	.string	"btc_a2dp_source_is_task_shutting_down"
.LASF29:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF160:
	.string	"BTC_AV_SINK_API_INIT_EVT"
.LASF126:
	.string	"ESP_A2D_MEDIA_CTRL_START"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF187:
	.string	"a2dp_cmd_acknowledge"
.LASF83:
	.string	"btc_msg_t"
.LASF4:
	.string	"__uint8_t"
.LASF87:
	.string	"BTC_PID_MAIN_INIT"
.LASF165:
	.string	"BTC_AV_SRC_API_INIT_EVT"
.LASF190:
	.string	"btc_a2dp_control_set_datachnl_stat"
.LASF106:
	.string	"type"
.LASF148:
	.string	"esp_a2d_cb_param_t"
.LASF212:
	.string	"btc_av_clear_remote_suspend_flag"
.LASF84:
	.string	"BTC_SIG_API_CALL"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF206:
	.string	"esp_log_write"
.LASF99:
	.string	"BTC_PID_A2DP"
.LASF149:
	.string	"esp_a2d_cb_t"
.LASF184:
	.string	"btc_a2dp_dispatch_datapath_evt"
.LASF141:
	.string	"a2d_audio_cfg_param"
.LASF5:
	.string	"__int32_t"
.LASF110:
	.string	"ESP_A2D_CONNECTION_STATE_CONNECTED"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF116:
	.string	"ESP_A2D_AUDIO_STATE_REMOTE_SUSPEND"
.LASF96:
	.string	"BTC_PID_ALARM"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF143:
	.string	"status"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF137:
	.string	"state"
.LASF138:
	.string	"remote_bda"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF91:
	.string	"BTC_PID_GAP_BLE"
.LASF101:
	.string	"BTC_PID_SPP"
.LASF118:
	.string	"ESP_A2D_AUDIO_STATE_STARTED"
.LASF30:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF133:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_EVT"
.LASF19:
	.string	"long int"
.LASF97:
	.string	"BTC_PID_GAP_BT"
.LASF199:
	.string	"btc_transfer_context"
.LASF117:
	.string	"ESP_A2D_AUDIO_STATE_STOPPED"
.LASF119:
	.string	"esp_a2d_audio_state_t"
.LASF201:
	.string	"btc_av_get_service_id"
.LASF129:
	.string	"esp_a2d_media_ctrl_t"
.LASF174:
	.string	"src_data_cb"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF77:
	.string	"BTM_PM_STS_SNIFF"
.LASF155:
	.string	"BTC_AV_DISCONNECT_REQ_EVT"
.LASF9:
	.string	"long long unsigned int"
.LASF76:
	.string	"BTM_PM_STS_HOLD"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF123:
	.string	"esp_a2d_media_ctrl_ack_t"
.LASF112:
	.string	"esp_a2d_connection_state_t"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF95:
	.string	"BTC_PID_DM_SEC"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF121:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_FAILURE"
.LASF79:
	.string	"BTM_PM_STS_SSR"
.LASF202:
	.string	"btc_a2dp_source_start_audio_req"
.LASF27:
	.string	"bt_bdaddr_t"
.LASF114:
	.string	"ESP_A2D_DISC_RSN_ABNORMAL"
.LASF74:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF197:
	.string	"bd_addr_null"
.LASF157:
	.string	"BTC_AV_STOP_STREAM_REQ_EVT"
.LASF145:
	.string	"audio_stat"
.LASF7:
	.string	"unsigned int"
.LASF113:
	.string	"ESP_A2D_DISC_RSN_NORMAL"
.LASF34:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF120:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_SUCCESS"
.LASF214:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/a2dp/btc_a2dp_control.c"
.LASF31:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"long unsigned int"
.LASF128:
	.string	"ESP_A2D_MEDIA_CTRL_SUSPEND"
.LASF193:
	.string	"btc_a2dp_control_datapath_ctrl"
.LASF175:
	.string	"src_connect"
.LASF75:
	.string	"BTM_PM_STS_ACTIVE"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF182:
	.string	"event"
.LASF93:
	.string	"BTC_PID_SPPLIKE"
.LASF3:
	.string	"short unsigned int"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF181:
	.string	"tBTC_AA_CTRL_CB"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF111:
	.string	"ESP_A2D_CONNECTION_STATE_DISCONNECTING"
.LASF100:
	.string	"BTC_PID_AVRC"
.LASF92:
	.string	"BTC_PID_BLE_HID"
.LASF144:
	.string	"conn_stat"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF150:
	.string	"esp_a2d_sink_data_cb_t"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF104:
	.string	"esp_a2d_mct_t"
.LASF136:
	.string	"a2d_conn_stat_param"
.LASF105:
	.string	"atrac"
.LASF192:
	.string	"btc_a2dp_control_media_ctrl"
.LASF203:
	.string	"btc_a2dp_source_encoder_update"
.LASF88:
	.string	"BTC_PID_DEV"
.LASF211:
	.string	"btc_a2dp_source_is_streaming"
.LASF164:
	.string	"BTC_AV_SINK_API_REG_DATA_CB_EVT"
.LASF86:
	.string	"BTC_SIG_NUM"
.LASF161:
	.string	"BTC_AV_SINK_API_DEINIT_EVT"
.LASF159:
	.string	"BTC_AV_SINK_CONFIG_REQ_EVT"
.LASF179:
	.string	"data_channel_open"
.LASF195:
	.string	"btc_a2dp_control_init"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF81:
	.string	"BTM_PM_STS_ERROR"
.LASF135:
	.string	"btc_msg"
.LASF188:
	.string	"btc_a2d_cb"
.LASF131:
	.string	"ESP_A2D_AUDIO_STATE_EVT"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF191:
	.string	"open"
.LASF82:
	.string	"address"
.LASF162:
	.string	"BTC_AV_SINK_API_CONNECT_EVT"
.LASF14:
	.string	"UINT32"
.LASF183:
	.string	"param"
.LASF158:
	.string	"BTC_AV_SUSPEND_STREAM_REQ_EVT"
.LASF217:
	.string	"btc_a2dp_control_cleanup"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF94:
	.string	"BTC_PID_BLUFI"
.LASF169:
	.string	"BTC_AV_SRC_API_REG_DATA_CB_EVT"
.LASF173:
	.string	"data_cb"
.LASF198:
	.string	"btc_aa_ctrl_cb"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF36:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF154:
	.string	"BTC_AV_CONNECT_REQ_EVT"
.LASF37:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF156:
	.string	"BTC_AV_START_STREAM_REQ_EVT"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF132:
	.string	"ESP_A2D_AUDIO_CFG_EVT"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF178:
	.string	"btc_av_args_t"
.LASF146:
	.string	"audio_cfg"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF134:
	.string	"esp_a2d_cb_event_t"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF180:
	.string	"a2dp_cmd_pending"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF16:
	.string	"_Bool"
.LASF11:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF163:
	.string	"BTC_AV_SINK_API_DISCONNECT_EVT"
.LASF213:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF127:
	.string	"ESP_A2D_MEDIA_CTRL_STOP"
.LASF205:
	.string	"esp_log_timestamp"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF15:
	.string	"BOOLEAN"
.LASF153:
	.string	"BTC_AV_DATAPATH_MAX_EVT"
.LASF177:
	.string	"dp_evt"
.LASF130:
	.string	"ESP_A2D_CONNECTION_STATE_EVT"
.LASF216:
	.string	"__func__"
.LASF78:
	.string	"BTM_PM_STS_PARK"
.LASF204:
	.string	"btc_profile_cb_get"
.LASF139:
	.string	"disc_rsn"
.LASF38:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF172:
	.string	"connect"
.LASF200:
	.string	"btc_av_get_peer_sep"
.LASF108:
	.string	"ESP_A2D_CONNECTION_STATE_DISCONNECTED"
.LASF33:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF102:
	.string	"BTC_PID_NUM"
.LASF90:
	.string	"BTC_PID_GATT_COMMON"
.LASF147:
	.string	"media_ctrl_stat"
.LASF18:
	.string	"char"
.LASF170:
	.string	"BTC_AV_API_MEDIA_CTRL_EVT"
.LASF107:
	.string	"esp_a2d_mcc_t"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF196:
	.string	"bd_addr_any"
.LASF10:
	.string	"uint8_t"
.LASF6:
	.string	"__uint32_t"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF103:
	.string	"esp_bd_addr_t"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF176:
	.string	"ctrl"
.LASF208:
	.string	"btc_av_stream_ready"
.LASF210:
	.string	"btc_dispatch_sm_event"
.LASF171:
	.string	"BTC_AV_DATAPATH_CTRL_EVT"
.LASF209:
	.string	"btc_av_stream_started_ready"
.LASF35:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF140:
	.string	"a2d_audio_stat_param"
.LASF72:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF12:
	.string	"uint32_t"
.LASF109:
	.string	"ESP_A2D_CONNECTION_STATE_CONNECTING"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF218:
	.string	"appl_trace_level"
.LASF125:
	.string	"ESP_A2D_MEDIA_CTRL_CHECK_SRC_RDY"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF167:
	.string	"BTC_AV_SRC_API_CONNECT_EVT"
.LASF98:
	.string	"BTC_PID_PRF_QUE"
.LASF13:
	.string	"UINT8"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF122:
	.string	"ESP_A2D_MEDIA_CTRL_ACK_BUSY"
.LASF152:
	.string	"BTC_AV_DATAPATH_OPEN_EVT"
.LASF185:
	.string	"btc_a2dp_datapath_open"
.LASF142:
	.string	"media_ctrl_stat_param"
.LASF80:
	.string	"BTM_PM_STS_PENDING"
.LASF17:
	.string	"sizetype"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF28:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF215:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF186:
	.string	"btc_a2d_cb_to_app"
.LASF194:
	.string	"btc_a2dp_control_get_datachnl_stat"
.LASF85:
	.string	"BTC_SIG_API_CB"
.LASF73:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF89:
	.string	"BTC_PID_GATTS"
.LASF124:
	.string	"ESP_A2D_MEDIA_CTRL_NONE"
.LASF168:
	.string	"BTC_AV_SRC_API_DISCONNECT_EVT"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF166:
	.string	"BTC_AV_SRC_API_DEINIT_EVT"
.LASF115:
	.string	"esp_a2d_disc_rsn_t"
.LASF151:
	.string	"esp_a2d_source_data_cb_t"
.LASF189:
	.string	"btc_a2dp_control_command_ack"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
