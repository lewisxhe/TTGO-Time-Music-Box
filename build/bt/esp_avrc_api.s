	.file	"esp_avrc_api.c"
	.text
.Ltext0:
	.section	.text.esp_avrc_ct_register_callback,"ax",@progbits
	.align	4
	.global	esp_avrc_ct_register_callback
	.type	esp_avrc_ct_register_callback, @function
esp_avrc_ct_register_callback:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/esp_avrc_api.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 27 0
	call8	esp_bluedroid_get_status
.LVL1:
	bnei	a10, 2, .L3
	.loc 1 31 0
	beqz.n	a2, .L4
	.loc 1 35 0
	mov.n	a11, a2
	movi.n	a10, 0xd
	call8	btc_profile_cb_set
.LVL2:
	.loc 1 36 0
	movi.n	a2, 0
.LVL3:
	retw.n
.LVL4:
.L3:
	.loc 1 28 0
	movi	a2, 0x103
.LVL5:
	retw.n
.LVL6:
.L4:
	.loc 1 32 0
	movi.n	a2, -1
.LVL7:
	.loc 1 37 0
	retw.n
.LFE26:
	.size	esp_avrc_ct_register_callback, .-esp_avrc_ct_register_callback
	.section	.text.esp_avrc_ct_init,"ax",@progbits
	.align	4
	.global	esp_avrc_ct_init
	.type	esp_avrc_ct_init, @function
esp_avrc_ct_init:
.LFB27:
	.loc 1 40 0
	entry	sp, 48
.LCFI1:
	.loc 1 41 0
	call8	esp_bluedroid_get_status
.LVL8:
	bnei	a10, 2, .L7
	.loc 1 47 0
	movi.n	a2, 0
	s8i	a2, sp, 0
	.loc 1 48 0
	movi.n	a8, 0xd
	s8i	a8, sp, 2
	.loc 1 49 0
	s8i	a2, sp, 3
	.loc 1 52 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL9:
	.loc 1 53 0
	bnez.n	a10, .L8
	movi.n	a2, 0
	retw.n
.LVL10:
.L7:
	.loc 1 42 0
	movi	a2, 0x103
	retw.n
.LVL11:
.L8:
	.loc 1 53 0
	movi.n	a2, -1
	.loc 1 54 0
	retw.n
.LFE27:
	.size	esp_avrc_ct_init, .-esp_avrc_ct_init
	.section	.text.esp_avrc_ct_deinit,"ax",@progbits
	.align	4
	.global	esp_avrc_ct_deinit
	.type	esp_avrc_ct_deinit, @function
esp_avrc_ct_deinit:
.LFB28:
	.loc 1 57 0
	entry	sp, 48
.LCFI2:
	.loc 1 58 0
	call8	esp_bluedroid_get_status
.LVL12:
	bnei	a10, 2, .L11
	.loc 1 64 0
	movi.n	a2, 0
	s8i	a2, sp, 0
	.loc 1 65 0
	movi.n	a2, 0xd
	s8i	a2, sp, 2
	.loc 1 66 0
	movi.n	a2, 1
	s8i	a2, sp, 3
	.loc 1 69 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL13:
	.loc 1 70 0
	bnez.n	a10, .L12
	movi.n	a2, 0
	retw.n
.LVL14:
.L11:
	.loc 1 59 0
	movi	a2, 0x103
	retw.n
.LVL15:
.L12:
	.loc 1 70 0
	movi.n	a2, -1
	.loc 1 71 0
	retw.n
.LFE28:
	.size	esp_avrc_ct_deinit, .-esp_avrc_ct_deinit
	.section	.text.esp_avrc_ct_send_set_player_value_cmd,"ax",@progbits
	.align	4
	.global	esp_avrc_ct_send_set_player_value_cmd
	.type	esp_avrc_ct_send_set_player_value_cmd, @function
esp_avrc_ct_send_set_player_value_cmd:
.LFB29:
	.loc 1 74 0
.LVL16:
	entry	sp, 48
.LCFI3:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 75 0
	call8	esp_bluedroid_get_status
.LVL17:
	bnei	a10, 2, .L17
	.loc 1 79 0
	movi.n	a8, 1
	movi.n	a9, 0xf
	bltu	a9, a2, .L15
	movi.n	a8, 0
.L15:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	bgeui	a3, 5, .L16
	movi.n	a8, 0
.L16:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L18
	.loc 1 84 0
	s8i	a8, sp, 0
	.loc 1 85 0
	movi.n	a8, 0xd
	s8i	a8, sp, 2
	.loc 1 86 0
	movi.n	a8, 6
	s8i	a8, sp, 3
	.loc 1 89 0
	movi.n	a13, 0
	s32i.n	a13, sp, 8
	s32i.n	a13, sp, 12
	.loc 1 91 0
	s8i	a2, sp, 8
	.loc 1 92 0
	s8i	a3, sp, 9
	.loc 1 93 0
	s8i	a4, sp, 10
	.loc 1 96 0
	movi.n	a12, 8
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL18:
	.loc 1 97 0
	bnez.n	a10, .L19
	movi.n	a2, 0
.LVL19:
	retw.n
.LVL20:
.L17:
	.loc 1 76 0
	movi	a2, 0x103
	retw.n
.L18:
	.loc 1 80 0
	movi.n	a2, -1
	retw.n
.LVL21:
.L19:
	.loc 1 97 0
	movi.n	a2, -1
	.loc 1 98 0
	retw.n
.LFE29:
	.size	esp_avrc_ct_send_set_player_value_cmd, .-esp_avrc_ct_send_set_player_value_cmd
	.section	.text.esp_avrc_ct_send_register_notification_cmd,"ax",@progbits
	.align	4
	.global	esp_avrc_ct_send_register_notification_cmd
	.type	esp_avrc_ct_send_register_notification_cmd, @function
esp_avrc_ct_send_register_notification_cmd:
.LFB30:
	.loc 1 102 0
.LVL22:
	entry	sp, 48
.LCFI4:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 103 0
	call8	esp_bluedroid_get_status
.LVL23:
	bnei	a10, 2, .L24
	.loc 1 107 0
	movi.n	a8, 1
	movi.n	a9, 0xf
	bltu	a9, a2, .L22
	movi.n	a8, 0
.L22:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	movi.n	a10, 8
	bltu	a10, a3, .L23
	movi.n	a8, 0
.L23:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L25
	.loc 1 112 0
	s8i	a8, sp, 0
	.loc 1 113 0
	movi.n	a8, 0xd
	s8i	a8, sp, 2
	.loc 1 114 0
	movi.n	a8, 5
	s8i	a8, sp, 3
	.loc 1 117 0
	movi.n	a13, 0
	s32i.n	a13, sp, 8
	.loc 1 119 0
	s8i	a2, sp, 8
	.loc 1 120 0
	s8i	a3, sp, 9
	.loc 1 121 0
	s32i.n	a4, sp, 12
	.loc 1 124 0
	movi.n	a12, 8
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL24:
	.loc 1 125 0
	bnez.n	a10, .L26
	movi.n	a2, 0
.LVL25:
	retw.n
.LVL26:
.L24:
	.loc 1 104 0
	movi	a2, 0x103
	retw.n
.L25:
	.loc 1 108 0
	movi.n	a2, -1
	retw.n
.LVL27:
.L26:
	.loc 1 125 0
	movi.n	a2, -1
	.loc 1 126 0
	retw.n
.LFE30:
	.size	esp_avrc_ct_send_register_notification_cmd, .-esp_avrc_ct_send_register_notification_cmd
	.section	.text.esp_avrc_ct_send_metadata_cmd,"ax",@progbits
	.align	4
	.global	esp_avrc_ct_send_metadata_cmd
	.type	esp_avrc_ct_send_metadata_cmd, @function
esp_avrc_ct_send_metadata_cmd:
.LFB31:
	.loc 1 129 0
.LVL28:
	entry	sp, 48
.LCFI5:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	.loc 1 130 0
	call8	esp_bluedroid_get_status
.LVL29:
	bnei	a10, 2, .L29
	.loc 1 134 0
	movi.n	a8, 0xf
	bltu	a8, a2, .L30
	.loc 1 139 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	.loc 1 140 0
	movi.n	a8, 0xd
	s8i	a8, sp, 2
	.loc 1 141 0
	movi.n	a8, 3
	s8i	a8, sp, 3
	.loc 1 144 0
	movi.n	a13, 0
	s32i.n	a13, sp, 8
	s32i.n	a13, sp, 12
	.loc 1 146 0
	s8i	a2, sp, 8
	.loc 1 147 0
	s8i	a3, sp, 9
	.loc 1 150 0
	movi.n	a12, 8
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL30:
	.loc 1 151 0
	bnez.n	a10, .L31
	movi.n	a2, 0
.LVL31:
	retw.n
.LVL32:
.L29:
	.loc 1 131 0
	movi	a2, 0x103
	retw.n
.L30:
	.loc 1 135 0
	movi.n	a2, -1
	retw.n
.LVL33:
.L31:
	.loc 1 151 0
	movi.n	a2, -1
	.loc 1 152 0
	retw.n
.LFE31:
	.size	esp_avrc_ct_send_metadata_cmd, .-esp_avrc_ct_send_metadata_cmd
	.section	.text.esp_avrc_ct_send_passthrough_cmd,"ax",@progbits
	.align	4
	.global	esp_avrc_ct_send_passthrough_cmd
	.type	esp_avrc_ct_send_passthrough_cmd, @function
esp_avrc_ct_send_passthrough_cmd:
.LFB32:
	.loc 1 155 0
.LVL34:
	entry	sp, 48
.LCFI6:
	extui	a2, a2, 0, 8
	extui	a3, a3, 0, 8
	extui	a4, a4, 0, 8
	.loc 1 156 0
	call8	esp_bluedroid_get_status
.LVL35:
	bnei	a10, 2, .L36
	.loc 1 160 0
	movi.n	a8, 1
	movi.n	a9, 0xf
	bltu	a9, a2, .L34
	movi.n	a8, 0
.L34:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	bgeui	a4, 2, .L35
	movi.n	a8, 0
.L35:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L37
	.loc 1 165 0
	s8i	a8, sp, 0
	.loc 1 166 0
	movi.n	a8, 0xd
	s8i	a8, sp, 2
	.loc 1 167 0
	movi.n	a8, 2
	s8i	a8, sp, 3
	.loc 1 170 0
	movi.n	a13, 0
	s32i.n	a13, sp, 8
	s32i.n	a13, sp, 12
	.loc 1 172 0
	s8i	a2, sp, 8
	.loc 1 173 0
	s8i	a3, sp, 9
	.loc 1 174 0
	s8i	a4, sp, 10
	.loc 1 177 0
	movi.n	a12, 8
	add.n	a11, sp, a12
	mov.n	a10, sp
	call8	btc_transfer_context
.LVL36:
	.loc 1 178 0
	bnez.n	a10, .L38
	movi.n	a2, 0
.LVL37:
	retw.n
.LVL38:
.L36:
	.loc 1 157 0
	movi	a2, 0x103
	retw.n
.L37:
	.loc 1 161 0
	movi.n	a2, -1
	retw.n
.LVL39:
.L38:
	.loc 1 178 0
	movi.n	a2, -1
	.loc 1 179 0
	retw.n
.LFE32:
	.size	esp_avrc_ct_send_passthrough_cmd, .-esp_avrc_ct_send_passthrough_cmd
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
	.uleb128 0x30
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x30
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
	.uleb128 0x30
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_avrc_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/include/api/esp_bt_main.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_defs.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_task.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/profile/std/include/btc_avrc.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_manage.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x978
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0xc
	.4byte	.LASF142
	.4byte	.LASF143
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	0x9f
	.4byte	0xc8
	.uleb128 0x6
	.4byte	0xb1
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x18
	.4byte	0x89
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x69
	.4byte	0xf5
	.uleb128 0x5
	.4byte	0x7e
	.4byte	0x105
	.uleb128 0x6
	.4byte	0xb1
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x31
	.4byte	0x11e
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x37
	.4byte	0x14f
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x3e
	.4byte	0x11e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x4c
	.4byte	0x19d
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x7
	.byte	0x59
	.4byte	0x1c8
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x7
	.byte	0x7
	.byte	0x82
	.4byte	0x1ed
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x83
	.4byte	0xaa
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x84
	.4byte	0xea
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x3
	.byte	0x7
	.byte	0x8a
	.4byte	0x21d
	.uleb128 0xc
	.string	"tl"
	.byte	0x7
	.byte	0x8b
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x8c
	.4byte	0x7e
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x8d
	.4byte	0x7e
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xc
	.byte	0x7
	.byte	0x93
	.4byte	0x24e
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x94
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x95
	.4byte	0x24e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0x96
	.4byte	0x57
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7e
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.byte	0x7
	.byte	0x9c
	.4byte	0x279
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0x9d
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x9e
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xc
	.byte	0x7
	.byte	0xa4
	.4byte	0x29e
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0xa5
	.4byte	0x94
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0xa6
	.4byte	0xea
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0xc
	.byte	0x7
	.byte	0x7e
	.4byte	0x2de
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x7
	.byte	0x85
	.4byte	0x1c8
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x7
	.byte	0x8e
	.4byte	0x1ed
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x7
	.byte	0x97
	.4byte	0x21d
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x7
	.byte	0x9f
	.4byte	0x254
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x7
	.byte	0xa7
	.4byte	0x279
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x7
	.byte	0xa9
	.4byte	0x29e
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x7
	.byte	0xb1
	.4byte	0x2f4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2fa
	.uleb128 0x10
	.4byte	0x30a
	.uleb128 0x11
	.4byte	0x14f
	.uleb128 0x11
	.4byte	0x30a
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2de
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x8
	.byte	0x1b
	.4byte	0x32f
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0x9
	.byte	0x48
	.4byte	0x3a8
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
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x9
	.byte	0x5b
	.4byte	0x32f
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0x8
	.byte	0xa
	.byte	0x17
	.4byte	0x3fc
	.uleb128 0xc
	.string	"sig"
	.byte	0xa
	.byte	0x18
	.4byte	0x7e
	.byte	0
	.uleb128 0xc
	.string	"aid"
	.byte	0xa
	.byte	0x19
	.4byte	0x7e
	.byte	0x1
	.uleb128 0xc
	.string	"pid"
	.byte	0xa
	.byte	0x1a
	.4byte	0x7e
	.byte	0x2
	.uleb128 0xc
	.string	"act"
	.byte	0xa
	.byte	0x1b
	.4byte	0x7e
	.byte	0x3
	.uleb128 0xc
	.string	"arg"
	.byte	0xa
	.byte	0x1c
	.4byte	0xcf
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xa
	.byte	0x1d
	.4byte	0x3b3
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x24
	.4byte	0x426
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xa
	.byte	0x2a
	.4byte	0x493
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x69
	.byte	0xb
	.byte	0x1f
	.4byte	0x4ca
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.byte	0x3
	.byte	0xb
	.byte	0x29
	.4byte	0x4f6
	.uleb128 0xc
	.string	"tl"
	.byte	0xb
	.byte	0x2a
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0xb
	.byte	0x2b
	.4byte	0x7e
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0xb
	.byte	0x2c
	.4byte	0x7e
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xb
	.byte	0x2d
	.4byte	0x4ca
	.uleb128 0x12
	.byte	0x2
	.byte	0xb
	.byte	0x2f
	.4byte	0x521
	.uleb128 0xc
	.string	"tl"
	.byte	0xb
	.byte	0x30
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0xb
	.byte	0x31
	.4byte	0x7e
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xb
	.byte	0x32
	.4byte	0x501
	.uleb128 0x12
	.byte	0x8
	.byte	0xb
	.byte	0x34
	.4byte	0x558
	.uleb128 0xc
	.string	"tl"
	.byte	0xb
	.byte	0x35
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xb
	.byte	0x36
	.4byte	0x7e
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xb
	.byte	0x37
	.4byte	0x94
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xb
	.byte	0x38
	.4byte	0x52c
	.uleb128 0x12
	.byte	0x3
	.byte	0xb
	.byte	0x3a
	.4byte	0x58f
	.uleb128 0xc
	.string	"tl"
	.byte	0xb
	.byte	0x3b
	.4byte	0x7e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0xb
	.byte	0x3c
	.4byte	0x7e
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xb
	.byte	0x3d
	.4byte	0x7e
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xb
	.byte	0x3e
	.4byte	0x563
	.uleb128 0xe
	.byte	0x8
	.byte	0xb
	.byte	0x41
	.4byte	0x5cf
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0xb
	.byte	0x42
	.4byte	0x4f6
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0xb
	.byte	0x43
	.4byte	0x521
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0xb
	.byte	0x44
	.4byte	0x558
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0xb
	.byte	0x45
	.4byte	0x58f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xb
	.byte	0x46
	.4byte	0x59a
	.uleb128 0x13
	.4byte	.LASF127
	.byte	0x1
	.byte	0x19
	.4byte	0xdf
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x621
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x1
	.byte	0x19
	.4byte	0x2e9
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0x95a
	.uleb128 0x16
	.4byte	.LVL2
	.4byte	0x965
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3d
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x1
	.byte	0x27
	.4byte	0xdf
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x680
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.byte	0x2d
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x1
	.byte	0x34
	.4byte	0x3a8
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0x95a
	.uleb128 0x16
	.4byte	.LVL9
	.4byte	0x970
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF130
	.byte	0x1
	.byte	0x38
	.4byte	0xdf
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6df
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.byte	0x3e
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x1
	.byte	0x45
	.4byte	0x3a8
	.4byte	.LLST2
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0x95a
	.uleb128 0x16
	.4byte	.LVL13
	.4byte	0x970
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF131
	.byte	0x1
	.byte	0x49
	.4byte	0xdf
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x775
	.uleb128 0x1a
	.string	"tl"
	.byte	0x1
	.byte	0x49
	.4byte	0x7e
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x1
	.byte	0x49
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x1
	.byte	0x49
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.byte	0x53
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"arg"
	.byte	0x1
	.byte	0x58
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x1
	.byte	0x60
	.4byte	0x3a8
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LVL17
	.4byte	0x95a
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0x970
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0x1
	.byte	0x65
	.4byte	0xdf
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80b
	.uleb128 0x1a
	.string	"tl"
	.byte	0x1
	.byte	0x65
	.4byte	0x7e
	.4byte	.LLST5
	.uleb128 0x1b
	.4byte	.LASF55
	.byte	0x1
	.byte	0x65
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF56
	.byte	0x1
	.byte	0x65
	.4byte	0x94
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.byte	0x6f
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"arg"
	.byte	0x1
	.byte	0x74
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x1
	.byte	0x7c
	.4byte	0x3a8
	.4byte	.LLST6
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0x95a
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0x970
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF134
	.byte	0x1
	.byte	0x80
	.4byte	0xdf
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x894
	.uleb128 0x1a
	.string	"tl"
	.byte	0x1
	.byte	0x80
	.4byte	0x7e
	.4byte	.LLST7
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x1
	.byte	0x80
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.byte	0x8a
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"arg"
	.byte	0x1
	.byte	0x8f
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x1
	.byte	0x96
	.4byte	0x3a8
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0x95a
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0x970
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF135
	.byte	0x1
	.byte	0x9a
	.4byte	0xdf
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92a
	.uleb128 0x1a
	.string	"tl"
	.byte	0x1
	.byte	0x9a
	.4byte	0x7e
	.4byte	.LLST9
	.uleb128 0x1b
	.4byte	.LASF48
	.byte	0x1
	.byte	0x9a
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x1
	.byte	0x9a
	.4byte	0x7e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.string	"msg"
	.byte	0x1
	.byte	0xa4
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"arg"
	.byte	0x1
	.byte	0xa9
	.4byte	0x5cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.4byte	.LASF129
	.byte	0x1
	.byte	0xb1
	.4byte	0x3a8
	.4byte	.LLST10
	.uleb128 0x15
	.4byte	.LVL35
	.4byte	0x95a
	.uleb128 0x16
	.4byte	.LVL36
	.4byte	0x970
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x93d
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1d
	.4byte	0xb8
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x955
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0xb8
	.uleb128 0x1e
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x8
	.byte	0x27
	.uleb128 0x1e
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xc
	.byte	0x19
	.uleb128 0x1e
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xa
	.byte	0x4c
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF79:
	.string	"BT_STATUS_RMT_DEV_DOWN"
.LASF29:
	.string	"esp_avrc_ct_cb_event_t"
.LASF89:
	.string	"btc_msg_t"
.LASF120:
	.string	"value_id"
.LASF32:
	.string	"ESP_AVRC_RN_TRACK_REACHED_END"
.LASF19:
	.string	"esp_err_t"
.LASF4:
	.string	"__uint8_t"
.LASF93:
	.string	"BTC_PID_MAIN_INIT"
.LASF112:
	.string	"BTC_AVRC_STATUS_API_SND_META_EVT"
.LASF57:
	.string	"avrc_ct_rmt_feats_param"
.LASF90:
	.string	"BTC_SIG_API_CALL"
.LASF9:
	.string	"long long unsigned int"
.LASF61:
	.string	"meta_rsp"
.LASF86:
	.string	"BT_STATUS_MEMORY_FULL"
.LASF102:
	.string	"BTC_PID_ALARM"
.LASF129:
	.string	"stat"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF66:
	.string	"ESP_BLUEDROID_STATUS_UNINITIALIZED"
.LASF31:
	.string	"ESP_AVRC_RN_TRACK_CHANGE"
.LASF47:
	.string	"avrc_ct_psth_rsp_param"
.LASF45:
	.string	"remote_bda"
.LASF26:
	.string	"ESP_AVRC_CT_PLAY_STATUS_RSP_EVT"
.LASF97:
	.string	"BTC_PID_GAP_BLE"
.LASF107:
	.string	"BTC_PID_SPP"
.LASF55:
	.string	"event_id"
.LASF78:
	.string	"BT_STATUS_AUTH_FAILURE"
.LASF41:
	.string	"ESP_AVRC_PS_SHUFFLE_MODE"
.LASF17:
	.string	"long int"
.LASF115:
	.string	"BTC_AVRC_CTRL_API_SET_PLAYER_SETTING_EVT"
.LASF35:
	.string	"ESP_AVRC_RN_BATTERY_STATUS_CHANGE"
.LASF103:
	.string	"BTC_PID_GAP_BT"
.LASF140:
	.string	"btc_transfer_context"
.LASF142:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/api/esp_avrc_api.c"
.LASF74:
	.string	"BT_STATUS_DONE"
.LASF28:
	.string	"ESP_AVRC_CT_REMOTE_FEATURES_EVT"
.LASF84:
	.string	"BT_STATUS_PARAM_OUT_OF_RANGE"
.LASF36:
	.string	"ESP_AVRC_RN_SYSTEM_STATUS_CHANGE"
.LASF101:
	.string	"BTC_PID_DM_SEC"
.LASF81:
	.string	"BT_STATUS_INVALID_STATIC_RAND_ADDR"
.LASF27:
	.string	"ESP_AVRC_CT_CHANGE_NOTIFY_EVT"
.LASF6:
	.string	"__uint32_t"
.LASF128:
	.string	"esp_avrc_ct_init"
.LASF63:
	.string	"rmt_feats"
.LASF87:
	.string	"bt_status_t"
.LASF72:
	.string	"BT_STATUS_NOMEM"
.LASF131:
	.string	"esp_avrc_ct_send_set_player_value_cmd"
.LASF7:
	.string	"unsigned int"
.LASF40:
	.string	"ESP_AVRC_PS_REPEAT_MODE"
.LASF18:
	.string	"long unsigned int"
.LASF71:
	.string	"BT_STATUS_NOT_READY"
.LASF98:
	.string	"BTC_PID_BLE_HID"
.LASF105:
	.string	"BTC_PID_A2DP"
.LASF99:
	.string	"BTC_PID_SPPLIKE"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"ESP_AVRC_RN_APP_SETTING_CHANGE"
.LASF106:
	.string	"BTC_PID_AVRC"
.LASF126:
	.string	"btc_avrc_args_t"
.LASF122:
	.string	"pt_cmd"
.LASF132:
	.string	"callback"
.LASF133:
	.string	"esp_avrc_ct_send_register_notification_cmd"
.LASF70:
	.string	"BT_STATUS_FAIL"
.LASF2:
	.string	"short int"
.LASF94:
	.string	"BTC_PID_DEV"
.LASF110:
	.string	"BTC_AVRC_CTRL_API_DEINIT_EVT"
.LASF68:
	.string	"ESP_BLUEDROID_STATUS_ENABLED"
.LASF116:
	.string	"pt_cmd_t"
.LASF92:
	.string	"BTC_SIG_NUM"
.LASF43:
	.string	"ESP_AVRC_PS_MAX_ATTR"
.LASF80:
	.string	"BT_STATUS_AUTH_REJECTED"
.LASF38:
	.string	"ESP_AVRC_RN_MAX_EVT"
.LASF88:
	.string	"btc_msg"
.LASF83:
	.string	"BT_STATUS_UNACCEPT_CONN_INTERVAL"
.LASF15:
	.string	"sizetype"
.LASF109:
	.string	"BTC_AVRC_CTRL_API_INIT_EVT"
.LASF62:
	.string	"change_ntf"
.LASF30:
	.string	"ESP_AVRC_RN_PLAY_STATUS_CHANGE"
.LASF60:
	.string	"psth_rsp"
.LASF118:
	.string	"md_cmd_t"
.LASF139:
	.string	"btc_profile_cb_set"
.LASF75:
	.string	"BT_STATUS_UNSUPPORTED"
.LASF77:
	.string	"BT_STATUS_UNHANDLED"
.LASF50:
	.string	"avrc_ct_meta_rsp_param"
.LASF39:
	.string	"ESP_AVRC_PS_EQUALIZER"
.LASF100:
	.string	"BTC_PID_BLUFI"
.LASF91:
	.string	"BTC_SIG_API_CB"
.LASF64:
	.string	"esp_avrc_ct_cb_param_t"
.LASF54:
	.string	"avrc_ct_change_notify_param"
.LASF69:
	.string	"BT_STATUS_SUCCESS"
.LASF73:
	.string	"BT_STATUS_BUSY"
.LASF137:
	.string	"bd_addr_null"
.LASF117:
	.string	"attr_mask"
.LASF14:
	.string	"_Bool"
.LASF11:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF111:
	.string	"BTC_AVRC_CTRL_API_SND_PTCMD_EVT"
.LASF141:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF53:
	.string	"attr_length"
.LASF22:
	.string	"ESP_AVRC_PT_CMD_STATE_RELEASED"
.LASF13:
	.string	"UINT8"
.LASF123:
	.string	"md_cmd"
.LASF49:
	.string	"key_state"
.LASF108:
	.string	"BTC_PID_NUM"
.LASF96:
	.string	"BTC_PID_GATT_COMMON"
.LASF16:
	.string	"char"
.LASF48:
	.string	"key_code"
.LASF119:
	.string	"rn_cmd_t"
.LASF67:
	.string	"ESP_BLUEDROID_STATUS_INITIALIZED"
.LASF135:
	.string	"esp_avrc_ct_send_passthrough_cmd"
.LASF51:
	.string	"attr_id"
.LASF58:
	.string	"feat_mask"
.LASF125:
	.string	"ps_cmd"
.LASF65:
	.string	"esp_avrc_ct_cb_t"
.LASF5:
	.string	"__int32_t"
.LASF138:
	.string	"esp_bluedroid_get_status"
.LASF20:
	.string	"esp_bd_addr_t"
.LASF33:
	.string	"ESP_AVRC_RN_TRACK_REACHED_START"
.LASF42:
	.string	"ESP_AVRC_PS_SCAN_MODE"
.LASF52:
	.string	"attr_text"
.LASF59:
	.string	"conn_stat"
.LASF46:
	.string	"avrc_ct_conn_stat_param"
.LASF127:
	.string	"esp_avrc_ct_register_callback"
.LASF44:
	.string	"connected"
.LASF12:
	.string	"uint32_t"
.LASF130:
	.string	"esp_avrc_ct_deinit"
.LASF134:
	.string	"esp_avrc_ct_send_metadata_cmd"
.LASF34:
	.string	"ESP_AVRC_RN_PLAY_POS_CHANGED"
.LASF56:
	.string	"event_parameter"
.LASF104:
	.string	"BTC_PID_PRF_QUE"
.LASF76:
	.string	"BT_STATUS_PARM_INVALID"
.LASF25:
	.string	"ESP_AVRC_CT_METADATA_RSP_EVT"
.LASF24:
	.string	"ESP_AVRC_CT_PASSTHROUGH_RSP_EVT"
.LASF10:
	.string	"uint8_t"
.LASF136:
	.string	"bd_addr_any"
.LASF113:
	.string	"BTC_AVRC_STATUS_API_SND_PLAY_STATUS_EVT"
.LASF143:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF21:
	.string	"ESP_AVRC_PT_CMD_STATE_PRESSED"
.LASF121:
	.string	"ps_cmd_t"
.LASF124:
	.string	"rn_cmd"
.LASF95:
	.string	"BTC_PID_GATTS"
.LASF23:
	.string	"ESP_AVRC_CT_CONNECTION_STATE_EVT"
.LASF85:
	.string	"BT_STATUS_TIMEOUT"
.LASF114:
	.string	"BTC_AVRC_NOTIFY_API_SND_REG_NOTIFY_EVT"
.LASF82:
	.string	"BT_STATUS_PENDING"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
