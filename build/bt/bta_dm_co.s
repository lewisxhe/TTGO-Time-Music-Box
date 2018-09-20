	.file	"bta_dm_co.c"
	.text
.Ltext0:
	.section	.text.bta_dm_co_get_compress_memory,"ax",@progbits
	.align	4
	.global	bta_dm_co_get_compress_memory
	.type	bta_dm_co_get_compress_memory, @function
bta_dm_co_get_compress_memory:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/dm/bta_dm_co.c"
	.loc 1 61 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 66 0
	movi.n	a2, 1
.LVL1:
	retw.n
.LFE26:
	.size	bta_dm_co_get_compress_memory, .-bta_dm_co_get_compress_memory
	.section	.text.bta_dm_co_io_req,"ax",@progbits
	.align	4
	.global	bta_dm_co_io_req
	.type	bta_dm_co_io_req, @function
bta_dm_co_io_req:
.LFB27:
	.loc 1 85 0
.LVL2:
	entry	sp, 32
.LCFI1:
	retw.n
.LFE27:
	.size	bta_dm_co_io_req, .-bta_dm_co_io_req
	.section	.text.bta_dm_co_io_rsp,"ax",@progbits
	.align	4
	.global	bta_dm_co_io_rsp
	.type	bta_dm_co_io_rsp, @function
bta_dm_co_io_rsp:
.LFB28:
	.loc 1 118 0
.LVL3:
	.loc 1 118 0
	entry	sp, 32
.LCFI2:
	retw.n
.LFE28:
	.size	bta_dm_co_io_rsp, .-bta_dm_co_io_rsp
	.section	.text.bta_dm_co_lk_upgrade,"ax",@progbits
	.align	4
	.global	bta_dm_co_lk_upgrade
	.type	bta_dm_co_lk_upgrade, @function
bta_dm_co_lk_upgrade:
.LFB29:
	.loc 1 140 0
.LVL4:
	.loc 1 140 0
	entry	sp, 32
.LCFI3:
	retw.n
.LFE29:
	.size	bta_dm_co_lk_upgrade, .-bta_dm_co_lk_upgrade
	.section	.text.bta_dm_co_loc_oob,"ax",@progbits
	.align	4
	.global	bta_dm_co_loc_oob
	.type	bta_dm_co_loc_oob, @function
bta_dm_co_loc_oob:
.LFB30:
	.loc 1 161 0
.LVL5:
	.loc 1 161 0
	entry	sp, 32
.LCFI4:
	retw.n
.LFE30:
	.size	bta_dm_co_loc_oob, .-bta_dm_co_loc_oob
	.section	.text.bta_dm_co_rmt_oob,"ax",@progbits
	.align	4
	.global	bta_dm_co_rmt_oob
	.type	bta_dm_co_rmt_oob, @function
bta_dm_co_rmt_oob:
.LFB31:
	.loc 1 186 0
.LVL6:
	.loc 1 186 0
	entry	sp, 64
.LCFI5:
.LVL7:
	.loc 1 200 0
	addi	a13, sp, 16
	mov.n	a12, sp
	mov.n	a11, a2
	movi.n	a10, 0
	call8	bta_dm_ci_rmt_oob
.LVL8:
	retw.n
.LFE31:
	.size	bta_dm_co_rmt_oob, .-bta_dm_co_rmt_oob
	.section	.text.bta_dm_co_le_io_key_req,"ax",@progbits
	.align	4
	.global	bta_dm_co_le_io_key_req
	.type	bta_dm_co_le_io_key_req, @function
bta_dm_co_le_io_key_req:
.LFB32:
	.loc 1 227 0
.LVL9:
	entry	sp, 32
.LCFI6:
	.loc 1 233 0
	movi.n	a8, 0x10
	s8i	a8, a3, 0
	.loc 1 234 0
	movi	a8, 0x77
	s8i	a8, a5, 0
	s8i	a8, a4, 0
	retw.n
.LFE32:
	.size	bta_dm_co_le_io_key_req, .-bta_dm_co_le_io_key_req
	.section	.text.bta_dm_co_ble_load_local_keys,"ax",@progbits
	.align	4
	.global	bta_dm_co_ble_load_local_keys
	.type	bta_dm_co_ble_load_local_keys, @function
bta_dm_co_ble_load_local_keys:
.LFB33:
	.loc 1 254 0
.LVL10:
	entry	sp, 32
.LCFI7:
	.loc 1 262 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	btc_dm_get_ble_local_keys
.LVL11:
	retw.n
.LFE33:
	.size	bta_dm_co_ble_load_local_keys, .-bta_dm_co_ble_load_local_keys
	.section	.text.bta_dm_co_ble_io_req,"ax",@progbits
	.literal_position
	.literal .LC0, bte_appl_cfg
	.align	4
	.global	bta_dm_co_ble_io_req
	.type	bta_dm_co_ble_io_req, @function
bta_dm_co_ble_io_req:
.LFB34:
	.loc 1 290 0
.LVL12:
	entry	sp, 32
.LCFI8:
	.loc 1 298 0
	movi.n	a8, 0
	s8i	a8, a4, 0
	.loc 1 302 0
	l32r	a10, .LC0
	l8ui	a9, a10, 0
	l8ui	a11, a5, 0
	movi.n	a8, 4
	and	a8, a11, a8
	or	a8, a8, a9
	s8i	a8, a5, 0
	.loc 1 304 0
	l8ui	a5, a10, 1
.LVL13:
	bgeui	a5, 5, .L10
	.loc 1 305 0
	s8i	a5, a3, 0
.L10:
	.loc 1 308 0
	l32r	a5, .LC0
	l8ui	a5, a5, 2
	movi.n	a8, 0xf
	bltu	a8, a5, .L11
	.loc 1 309 0
	s8i	a5, a7, 0
.L11:
	.loc 1 312 0
	l32r	a5, .LC0
	l8ui	a5, a5, 3
	movi.n	a8, 0xf
	bltu	a8, a5, .L12
	.loc 1 313 0
	l32i.n	a3, sp, 32
.LVL14:
	s8i	a5, a3, 0
.L12:
	.loc 1 316 0
	l32r	a5, .LC0
	l8ui	a5, a5, 4
	addi	a8, a5, -8
	extui	a8, a8, 0, 8
	movi.n	a9, 8
	bltu	a9, a8, .L9
	.loc 1 317 0
	s8i	a5, a6, 0
.L9:
	retw.n
.LFE34:
	.size	bta_dm_co_ble_io_req, .-bta_dm_co_ble_io_req
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"BT_APPL"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: %s error:Invalid io cap value.\033[0m\n"
	.section	.text.bta_dm_co_ble_set_io_cap,"ax",@progbits
	.literal_position
	.literal .LC1, bte_appl_cfg
	.literal .LC2, appl_trace_level
	.literal .LC3, __func__$8658
	.literal .LC5, .LC4
	.literal .LC7, .LC6
	.align	4
	.global	bta_dm_co_ble_set_io_cap
	.type	bta_dm_co_ble_set_io_cap, @function
bta_dm_co_ble_set_io_cap:
.LFB35:
	.loc 1 323 0
.LVL15:
	entry	sp, 32
.LCFI9:
	extui	a2, a2, 0, 8
	.loc 1 325 0
	bgeui	a2, 5, .L15
	.loc 1 326 0
	l32r	a8, .LC1
	s8i	a2, a8, 1
	retw.n
.L15:
	.loc 1 328 0
	l32r	a2, .LC2
.LVL16:
	l8ui	a2, a2, 0
	beqz.n	a2, .L14
	.loc 1 328 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC5
	l32r	a15, .LC3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
.L14:
	retw.n
.LFE35:
	.size	bta_dm_co_ble_set_io_cap, .-bta_dm_co_ble_set_io_cap
	.section	.text.bta_dm_co_ble_set_auth_req,"ax",@progbits
	.literal_position
	.literal .LC8, bte_appl_cfg
	.align	4
	.global	bta_dm_co_ble_set_auth_req
	.type	bta_dm_co_ble_set_auth_req, @function
bta_dm_co_ble_set_auth_req:
.LFB36:
	.loc 1 334 0 is_stmt 1
.LVL19:
	entry	sp, 32
.LCFI10:
	.loc 1 336 0
	l32r	a8, .LC8
	s8i	a2, a8, 0
	retw.n
.LFE36:
	.size	bta_dm_co_ble_set_auth_req, .-bta_dm_co_ble_set_auth_req
	.section	.text.bta_dm_co_ble_set_init_key_req,"ax",@progbits
	.literal_position
	.literal .LC9, bte_appl_cfg
	.align	4
	.global	bta_dm_co_ble_set_init_key_req
	.type	bta_dm_co_ble_set_init_key_req, @function
bta_dm_co_ble_set_init_key_req:
.LFB37:
	.loc 1 341 0
.LVL20:
	entry	sp, 32
.LCFI11:
	.loc 1 343 0
	extui	a2, a2, 0, 4
.LVL21:
	.loc 1 344 0
	l32r	a9, .LC9
	l8ui	a8, a9, 2
	and	a2, a2, a8
.LVL22:
	s8i	a2, a9, 2
	retw.n
.LFE37:
	.size	bta_dm_co_ble_set_init_key_req, .-bta_dm_co_ble_set_init_key_req
	.section	.text.bta_dm_co_ble_set_rsp_key_req,"ax",@progbits
	.literal_position
	.literal .LC10, bte_appl_cfg
	.align	4
	.global	bta_dm_co_ble_set_rsp_key_req
	.type	bta_dm_co_ble_set_rsp_key_req, @function
bta_dm_co_ble_set_rsp_key_req:
.LFB38:
	.loc 1 349 0
.LVL23:
	entry	sp, 32
.LCFI12:
	.loc 1 351 0
	extui	a2, a2, 0, 4
.LVL24:
	.loc 1 352 0
	l32r	a9, .LC10
	l8ui	a8, a9, 3
	and	a2, a2, a8
.LVL25:
	s8i	a2, a9, 3
	retw.n
.LFE38:
	.size	bta_dm_co_ble_set_rsp_key_req, .-bta_dm_co_ble_set_rsp_key_req
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"\033[0;31mE (%d) %s: %s error:Invalid key size value, key_size =%d\033[0m\n"
	.section	.text.bta_dm_co_ble_set_max_key_size,"ax",@progbits
	.literal_position
	.literal .LC11, bte_appl_cfg
	.literal .LC12, appl_trace_level
	.literal .LC13, __func__$8671
	.literal .LC14, .LC4
	.literal .LC16, .LC15
	.align	4
	.global	bta_dm_co_ble_set_max_key_size
	.type	bta_dm_co_ble_set_max_key_size, @function
bta_dm_co_ble_set_max_key_size:
.LFB39:
	.loc 1 357 0
.LVL26:
	entry	sp, 48
.LCFI13:
	extui	a2, a2, 0, 8
	.loc 1 359 0
	addi	a8, a2, -7
	extui	a8, a8, 0, 8
	movi.n	a9, 9
	bltu	a9, a8, .L21
	.loc 1 360 0
	l32r	a8, .LC11
	s8i	a2, a8, 4
	retw.n
.L21:
	.loc 1 362 0
	l32r	a8, .LC12
	l8ui	a8, a8, 0
	beqz.n	a8, .L20
	.loc 1 362 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL27:
	l32r	a11, .LC14
	s32i.n	a2, sp, 0
	l32r	a15, .LC13
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC16
	movi.n	a10, 1
	call8	esp_log_write
.LVL28:
.L20:
	retw.n
.LFE39:
	.size	bta_dm_co_ble_set_max_key_size, .-bta_dm_co_ble_set_max_key_size
	.section	.rodata.__func__$8671,"a",@progbits
	.align	4
	.type	__func__$8671, @object
	.size	__func__$8671, 31
__func__$8671:
	.string	"bta_dm_co_ble_set_max_key_size"
	.section	.rodata.__func__$8658,"a",@progbits
	.align	4
	.type	__func__$8658, @object
	.size	__func__$8658, 25
__func__$8658:
	.string	"bta_dm_co_ble_set_io_cap"
	.global	bte_appl_cfg
	.section	.data.bte_appl_cfg,"aw",@progbits
	.align	4
	.type	bte_appl_cfg, @object
	.size	bte_appl_cfg, 5
bte_appl_cfg:
	.byte	13
	.byte	4
	.byte	15
	.byte	15
	.byte	16
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
	.uleb128 0x40
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
	.uleb128 0x20
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
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI11-.LFB37
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI13-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_sys.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bte_appl.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/common/include/common/bt_trace.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/include/bta/bta_dm_ci.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/btc/include/btc/btc_dm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8ba
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0xc
	.4byte	.LASF143
	.4byte	.LASF144
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1a
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x21
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x23
	.4byte	0x9a
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x29
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x5
	.4byte	0xa5
	.4byte	0xdd
	.uleb128 0x6
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x5
	.4byte	0xa5
	.4byte	0xf3
	.uleb128 0x6
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x144
	.4byte	0xe3
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x1f
	.4byte	0x130
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.2byte	0x1c0
	.4byte	0x258
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x1d
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x1e
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x1f
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x22
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x23
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x25
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x26
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x27
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x29
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x2a
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x2b
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x2d
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x2e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x578
	.4byte	0xa5
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x598
	.4byte	0xa5
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x5a1
	.4byte	0xa5
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x64a
	.4byte	0xa5
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.2byte	0x6ea
	.4byte	0x2c0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x2b9
	.4byte	0xa5
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x2cd
	.4byte	0xa5
	.uleb128 0xc
	.byte	0x30
	.byte	0x7
	.2byte	0x2cf
	.4byte	0x30e
	.uleb128 0xd
	.string	"ir"
	.byte	0x7
	.2byte	0x2d0
	.4byte	0xf3
	.byte	0
	.uleb128 0xd
	.string	"irk"
	.byte	0x7
	.2byte	0x2d1
	.4byte	0xf3
	.byte	0x10
	.uleb128 0xd
	.string	"dhk"
	.byte	0x7
	.2byte	0x2d2
	.4byte	0xf3
	.byte	0x20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x2d3
	.4byte	0x2de
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x332
	.4byte	0x258
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x340
	.4byte	0x264
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x350
	.4byte	0x27c
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x357
	.4byte	0x270
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x8
	.byte	0x6e
	.4byte	0xa5
	.uleb128 0xe
	.byte	0x5
	.byte	0x9
	.byte	0x1b
	.4byte	0x39a
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0x9
	.byte	0x1d
	.4byte	0xa5
	.byte	0
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0x9
	.byte	0x1e
	.4byte	0xa5
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0x9
	.byte	0x1f
	.4byte	0xa5
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0x9
	.byte	0x20
	.4byte	0xa5
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0x9
	.byte	0x21
	.4byte	0xa5
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x9
	.byte	0x23
	.4byte	0x355
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0x1
	.byte	0x3c
	.4byte	0xbb
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e7
	.uleb128 0x11
	.string	"id"
	.byte	0x1
	.byte	0x3c
	.4byte	0x34a
	.4byte	.LLST0
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x1
	.byte	0x3c
	.4byte	0x3e7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x1
	.byte	0x3c
	.4byte	0x2c0
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xdd
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.byte	0x53
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x444
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.byte	0x53
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x1
	.byte	0x53
	.4byte	0x444
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x1
	.byte	0x53
	.4byte	0x44a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x1
	.byte	0x54
	.4byte	0x450
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x1
	.byte	0x54
	.4byte	0xbb
	.uleb128 0x1
	.byte	0x56
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x31a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x33e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x326
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x1
	.byte	0x74
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a0
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.byte	0x74
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x1
	.byte	0x74
	.4byte	0x31a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x1
	.byte	0x75
	.4byte	0x33e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0x1
	.byte	0x75
	.4byte	0x326
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.byte	0x8b
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d0
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.byte	0x8b
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x1
	.byte	0x8b
	.4byte	0x4d0
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x1
	.byte	0xa0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50f
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0x1
	.byte	0xa0
	.4byte	0xbb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0xa0
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"r"
	.byte	0x1
	.byte	0xa0
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x13
	.4byte	.LASF114
	.byte	0x1
	.byte	0xb9
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57b
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.byte	0xb9
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.string	"p_c"
	.byte	0x1
	.byte	0xbb
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"p_r"
	.byte	0x1
	.byte	0xbc
	.4byte	0xf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x1
	.byte	0xbd
	.4byte	0xbb
	.byte	0
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x891
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x1
	.byte	0xe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c5
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.byte	0xe0
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0x1
	.byte	0xe0
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0x1
	.byte	0xe1
	.4byte	0x5c5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0x1
	.byte	0xe2
	.4byte	0x5c5
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2c6
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x1
	.byte	0xfc
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x623
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0x1
	.byte	0xfc
	.4byte	0x623
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"er"
	.byte	0x1
	.byte	0xfc
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0x1
	.byte	0xfd
	.4byte	0x629
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LVL11
	.4byte	0x89c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2d2
	.uleb128 0x7
	.byte	0x4
	.4byte	0x30e
	.uleb128 0x19
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x11c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ad
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x11c
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x11c
	.4byte	0x444
	.4byte	.LLST1
	.uleb128 0x1a
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x11d
	.4byte	0x44a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x11e
	.4byte	0x6ad
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x11f
	.4byte	0xdd
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x120
	.4byte	0x5c5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1a
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x121
	.4byte	0x5c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x332
	.uleb128 0x19
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x142
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x725
	.uleb128 0x1b
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x142
	.4byte	0xa5
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LASF132
	.4byte	0x735
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8658
	.uleb128 0x1d
	.4byte	.LVL17
	.4byte	0x8a7
	.uleb128 0x17
	.4byte	.LVL18
	.4byte	0x8b2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8658
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x88
	.4byte	0x735
	.uleb128 0x6
	.4byte	0x7a
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.4byte	0x725
	.uleb128 0x19
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x14d
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75f
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x14d
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x19
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x154
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x786
	.uleb128 0x1b
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x154
	.4byte	0xa5
	.4byte	.LLST4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x15c
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ad
	.uleb128 0x1b
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x15c
	.4byte	0xa5
	.4byte	.LLST5
	.byte	0
	.uleb128 0x19
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x164
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x824
	.uleb128 0x1a
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x164
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF132
	.4byte	0x834
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8671
	.uleb128 0x1d
	.4byte	.LVL27
	.4byte	0x8a7
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0x8b2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$8671
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x88
	.4byte	0x834
	.uleb128 0x6
	.4byte	0x7a
	.byte	0x1e
	.byte	0
	.uleb128 0x1e
	.4byte	0x824
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x84c
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x1e
	.4byte	0xcd
	.uleb128 0x1f
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x864
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0xcd
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x1d8
	.4byte	0xa5
	.uleb128 0x21
	.4byte	.LASF136
	.byte	0x8
	.byte	0xa6
	.4byte	0xa5
	.uleb128 0x22
	.4byte	.LASF137
	.byte	0x1
	.byte	0x22
	.4byte	0x39a
	.uleb128 0x5
	.byte	0x3
	.4byte	bte_appl_cfg
	.uleb128 0x23
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xb
	.byte	0x3e
	.uleb128 0x23
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xc
	.byte	0x52
	.uleb128 0x23
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x5
	.byte	0x57
	.uleb128 0x23
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x5
	.byte	0x6b
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL13
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
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
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"BTM_EIR_UUID_SERVCLASS_SERIAL_PORT"
.LASF89:
	.string	"tBTA_LE_AUTH_REQ"
.LASF105:
	.string	"bta_dm_co_io_req"
.LASF112:
	.string	"bta_dm_co_loc_oob"
.LASF57:
	.string	"BTM_EIR_UUID_SERVCLASS_CABLE_REPLACEMENT"
.LASF122:
	.string	"p_id_keys"
.LASF4:
	.string	"__uint8_t"
.LASF107:
	.string	"io_cap"
.LASF75:
	.string	"tBTM_OOB_DATA"
.LASF117:
	.string	"p_max_key_size"
.LASF96:
	.string	"ble_max_key_size"
.LASF127:
	.string	"init_key"
.LASF111:
	.string	"p_upgrade"
.LASF62:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PSE"
.LASF65:
	.string	"BTM_EIR_UUID_SERVCLASS_PNP_INFORMATION"
.LASF131:
	.string	"ble_key_size"
.LASF24:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF39:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REMOTE_CONTROL"
.LASF8:
	.string	"long long unsigned int"
.LASF55:
	.string	"BTM_EIR_UUID_SERVCLASS_PRINTING_STATUS"
.LASF28:
	.string	"BTM_EIR_UUID_SERVCLASS_LAN_ACCESS_USING_PPP"
.LASF76:
	.string	"tBTM_LE_AUTH_REQ"
.LASF9:
	.string	"long int"
.LASF87:
	.string	"tBTA_IO_CAP"
.LASF141:
	.string	"esp_log_write"
.LASF135:
	.string	"btif_trace_level"
.LASF38:
	.string	"BTM_EIR_UUID_SERVCLASS_AV_REM_CTRL_TARGET"
.LASF94:
	.string	"ble_init_key"
.LASF78:
	.string	"BTM_PM_STS_HOLD"
.LASF52:
	.string	"BTM_EIR_UUID_SERVCLASS_AG_HANDSFREE"
.LASF54:
	.string	"BTM_EIR_UUID_SERVCLASS_BASIC_PRINTING"
.LASF67:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SINK"
.LASF123:
	.string	"bta_dm_co_ble_io_req"
.LASF81:
	.string	"BTM_PM_STS_SSR"
.LASF53:
	.string	"BTM_EIR_UUID_SERVCLASS_DIR_PRT_REF_OBJ_SERVICE"
.LASF108:
	.string	"oob_data"
.LASF95:
	.string	"ble_resp_key"
.LASF72:
	.string	"BTM_EIR_MAX_SERVICES"
.LASF134:
	.string	"bd_addr_null"
.LASF90:
	.string	"tBTA_OOB_DATA"
.LASF125:
	.string	"bta_dm_co_ble_set_auth_req"
.LASF6:
	.string	"unsigned int"
.LASF32:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_FILE_TRANSFER"
.LASF99:
	.string	"memory_size"
.LASF29:
	.string	"BTM_EIR_UUID_SERVCLASS_DIALUP_NETWORKING"
.LASF74:
	.string	"tBTM_AUTH_REQ"
.LASF11:
	.string	"long unsigned int"
.LASF77:
	.string	"BTM_PM_STS_ACTIVE"
.LASF63:
	.string	"BTM_EIR_UUID_SERVCLASS_PHONE_ACCESS"
.LASF124:
	.string	"bta_dm_co_ble_set_io_cap"
.LASF118:
	.string	"p_init_key"
.LASF3:
	.string	"short unsigned int"
.LASF45:
	.string	"BTM_EIR_UUID_SERVCLASS_GN"
.LASF116:
	.string	"bta_dm_co_le_io_key_req"
.LASF59:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_SCAN"
.LASF126:
	.string	"bta_dm_co_ble_set_init_key_req"
.LASF69:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_NOTIFICATION"
.LASF98:
	.string	"memory_p"
.LASF23:
	.string	"ESP_LOG_INFO"
.LASF143:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/bta/dm/bta_dm_co.c"
.LASF128:
	.string	"bta_dm_co_ble_set_rsp_key_req"
.LASF83:
	.string	"BTM_PM_STS_ERROR"
.LASF121:
	.string	"p_key_mask"
.LASF10:
	.string	"sizetype"
.LASF44:
	.string	"BTM_EIR_UUID_SERVCLASS_NAP"
.LASF93:
	.string	"ble_io_cap"
.LASF109:
	.string	"auth_req"
.LASF16:
	.string	"UINT32"
.LASF114:
	.string	"bta_dm_co_rmt_oob"
.LASF68:
	.string	"BTM_EIR_UUID_SERVCLASS_MESSAGE_ACCESS"
.LASF110:
	.string	"bta_dm_co_lk_upgrade"
.LASF50:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_REF_OBJECTS"
.LASF34:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET"
.LASF35:
	.string	"BTM_EIR_UUID_SERVCLASS_CORDLESS_TELEPHONY"
.LASF97:
	.string	"tBTE_APPL_CFG"
.LASF48:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_RESPONDER"
.LASF19:
	.string	"BT_OCTET16"
.LASF88:
	.string	"tBTA_AUTH_REQ"
.LASF60:
	.string	"BTM_EIR_UUID_SERVCLASS_SAP"
.LASF102:
	.string	"p_oob_data"
.LASF120:
	.string	"bta_dm_co_ble_load_local_keys"
.LASF47:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING"
.LASF46:
	.string	"BTM_EIR_UUID_SERVCLASS_DIRECT_PRINTING"
.LASF49:
	.string	"BTM_EIR_UUID_SERVCLASS_IMAGING_AUTO_ARCHIVE"
.LASF129:
	.string	"rsp_key"
.LASF18:
	.string	"_Bool"
.LASF37:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SINK"
.LASF1:
	.string	"unsigned char"
.LASF138:
	.string	"bta_dm_ci_rmt_oob"
.LASF142:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF30:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC"
.LASF2:
	.string	"short int"
.LASF92:
	.string	"ble_auth_req"
.LASF140:
	.string	"esp_log_timestamp"
.LASF21:
	.string	"ESP_LOG_ERROR"
.LASF79:
	.string	"BTM_PM_STS_SNIFF"
.LASF17:
	.string	"BOOLEAN"
.LASF132:
	.string	"__func__"
.LASF80:
	.string	"BTM_PM_STS_PARK"
.LASF36:
	.string	"BTM_EIR_UUID_SERVCLASS_AUDIO_SOURCE"
.LASF145:
	.string	"bta_dm_co_get_compress_memory"
.LASF113:
	.string	"valid"
.LASF31:
	.string	"BTM_EIR_UUID_SERVCLASS_OBEX_OBJECT_PUSH"
.LASF14:
	.string	"uint32_t"
.LASF12:
	.string	"char"
.LASF25:
	.string	"ESP_LOG_VERBOSE"
.LASF104:
	.string	"is_orig"
.LASF130:
	.string	"bta_dm_co_ble_set_max_key_size"
.LASF20:
	.string	"ESP_LOG_NONE"
.LASF42:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_AUDIO_GATEWAY"
.LASF84:
	.string	"tBTA_LE_KEY_TYPE"
.LASF5:
	.string	"__uint32_t"
.LASF58:
	.string	"BTM_EIR_UUID_SERVCLASS_HCRP_PRINT"
.LASF103:
	.string	"p_auth_req"
.LASF137:
	.string	"bte_appl_cfg"
.LASF33:
	.string	"BTM_EIR_UUID_SERVCLASS_IRMC_SYNC_COMMAND"
.LASF106:
	.string	"bta_dm_co_io_rsp"
.LASF86:
	.string	"tBTA_BLE_LOCAL_ID_KEYS"
.LASF43:
	.string	"BTM_EIR_UUID_SERVCLASS_PANU"
.LASF136:
	.string	"appl_trace_level"
.LASF40:
	.string	"BTM_EIR_UUID_SERVCLASS_INTERCOM"
.LASF73:
	.string	"tBTM_IO_CAP"
.LASF139:
	.string	"btc_dm_get_ble_local_keys"
.LASF15:
	.string	"UINT8"
.LASF85:
	.string	"tBTA_DM_BLE_LOCAL_KEY_MASK"
.LASF64:
	.string	"BTM_EIR_UUID_SERVCLASS_HEADSET_HS"
.LASF13:
	.string	"uint8_t"
.LASF133:
	.string	"bd_addr_any"
.LASF82:
	.string	"BTM_PM_STS_PENDING"
.LASF91:
	.string	"tBTA_SYS_ID"
.LASF51:
	.string	"BTM_EIR_UUID_SERVCLASS_HF_HANDSFREE"
.LASF26:
	.string	"BTM_EIR_UUID_SERVCLASS_SERVICE_DISCOVERY_SERVER"
.LASF144:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF119:
	.string	"p_resp_key"
.LASF71:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SINK"
.LASF70:
	.string	"BTM_EIR_UUID_SERVCLASS_HDP_SOURCE"
.LASF56:
	.string	"BTM_EIR_UUID_SERVCLASS_HUMAN_INTERFACE"
.LASF100:
	.string	"bd_addr"
.LASF41:
	.string	"BTM_EIR_UUID_SERVCLASS_FAX"
.LASF22:
	.string	"ESP_LOG_WARN"
.LASF115:
	.string	"result"
.LASF61:
	.string	"BTM_EIR_UUID_SERVCLASS_PBAP_PCE"
.LASF66:
	.string	"BTM_EIR_UUID_SERVCLASS_VIDEO_SOURCE"
.LASF101:
	.string	"p_io_cap"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
