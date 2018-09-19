	.file	"esp_err_to_name.c"
	.text
.Ltext0:
	.section	.text.esp_err_to_name,"ax",@progbits
	.literal_position
	.literal .LC0, esp_unknown_msg
	.literal .LC1, esp_err_msg_table
	.align	4
	.global	esp_err_to_name
	.type	esp_err_to_name, @function
esp_err_to_name:
.LFB19:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/esp_err_to_name.c"
	.loc 1 450 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 454 0
	movi.n	a8, 0
	j	.L2
.LVL2:
.L5:
	.loc 1 455 0
	l32r	a9, .LC1
	addx8	a9, a8, a9
	l32i.n	a9, a9, 0
	bne	a9, a2, .L3
	.loc 1 456 0
	l32r	a2, .LC1
.LVL3:
	addx8	a8, a8, a2
.LVL4:
	l32i.n	a2, a8, 4
	retw.n
.LVL5:
.L3:
	.loc 1 454 0 discriminator 2
	addi.n	a8, a8, 1
.LVL6:
.L2:
	.loc 1 454 0 is_stmt 0 discriminator 1
	movi	a9, 0x71
	bgeu	a9, a8, .L5
	.loc 1 461 0 is_stmt 1
	l32r	a2, .LC0
.LVL7:
	.loc 1 462 0
	retw.n
.LFE19:
	.size	esp_err_to_name, .-esp_err_to_name
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC4:
	.string	"%s 0x%x(%d)"
	.section	.text.esp_err_to_name_r,"ax",@progbits
	.literal_position
	.literal .LC2, esp_err_msg_table
	.literal .LC3, esp_unknown_msg
	.literal .LC5, .LC4
	.align	4
	.global	esp_err_to_name_r
	.type	esp_err_to_name_r, @function
esp_err_to_name_r:
.LFB20:
	.loc 1 465 0
.LVL8:
	entry	sp, 32
.LCFI1:
.LVL9:
	.loc 1 469 0
	movi.n	a8, 0
	j	.L7
.LVL10:
.L10:
	.loc 1 470 0
	l32r	a9, .LC2
	addx8	a9, a8, a9
	l32i.n	a9, a9, 0
	bne	a9, a2, .L8
	.loc 1 471 0
	l32r	a2, .LC2
.LVL11:
	addx8	a8, a8, a2
.LVL12:
	mov.n	a12, a4
	l32i.n	a11, a8, 4
	mov.n	a10, a3
	call8	strlcpy
.LVL13:
	.loc 1 472 0
	j	.L9
.LVL14:
.L8:
	.loc 1 469 0 discriminator 2
	addi.n	a8, a8, 1
.LVL15:
.L7:
	.loc 1 469 0 is_stmt 0 discriminator 1
	movi	a9, 0x71
	bgeu	a9, a8, .L10
	.loc 1 477 0 is_stmt 1
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	__xpg_strerror_r
.LVL16:
	beqz.n	a10, .L9
	.loc 1 481 0
	mov.n	a15, a2
	mov.n	a14, a2
	l32r	a13, .LC3
	l32r	a12, .LC5
	mov.n	a11, a4
	mov.n	a10, a3
	call8	snprintf
.LVL17:
.L9:
	.loc 1 484 0
	mov.n	a2, a3
	retw.n
.LFE20:
	.size	esp_err_to_name_r, .-esp_err_to_name_r
	.section	.rodata.esp_unknown_msg,"a",@progbits
	.align	4
	.type	esp_unknown_msg, @object
	.size	esp_unknown_msg, 6
esp_unknown_msg:
	.string	"ERROR"
	.section	.rodata.str1.4
	.align	4
.LC6:
	.string	"ESP_FAIL"
	.align	4
.LC7:
	.string	"ESP_OK"
	.align	4
.LC8:
	.string	"ESP_ERR_NO_MEM"
	.align	4
.LC9:
	.string	"ESP_ERR_INVALID_ARG"
	.align	4
.LC10:
	.string	"ESP_ERR_INVALID_STATE"
	.align	4
.LC11:
	.string	"ESP_ERR_INVALID_SIZE"
	.align	4
.LC12:
	.string	"ESP_ERR_NOT_FOUND"
	.align	4
.LC13:
	.string	"ESP_ERR_NOT_SUPPORTED"
	.align	4
.LC14:
	.string	"ESP_ERR_TIMEOUT"
	.align	4
.LC15:
	.string	"ESP_ERR_INVALID_RESPONSE"
	.align	4
.LC16:
	.string	"ESP_ERR_INVALID_CRC"
	.align	4
.LC17:
	.string	"ESP_ERR_INVALID_VERSION"
	.align	4
.LC18:
	.string	"ESP_ERR_INVALID_MAC"
	.align	4
.LC19:
	.string	"ESP_ERR_NVS_BASE"
	.align	4
.LC20:
	.string	"ESP_ERR_NVS_NOT_INITIALIZED"
	.align	4
.LC21:
	.string	"ESP_ERR_NVS_NOT_FOUND"
	.align	4
.LC22:
	.string	"ESP_ERR_NVS_TYPE_MISMATCH"
	.align	4
.LC23:
	.string	"ESP_ERR_NVS_READ_ONLY"
	.align	4
.LC24:
	.string	"ESP_ERR_NVS_NOT_ENOUGH_SPACE"
	.align	4
.LC25:
	.string	"ESP_ERR_NVS_INVALID_NAME"
	.align	4
.LC26:
	.string	"ESP_ERR_NVS_INVALID_HANDLE"
	.align	4
.LC27:
	.string	"ESP_ERR_NVS_REMOVE_FAILED"
	.align	4
.LC28:
	.string	"ESP_ERR_NVS_KEY_TOO_LONG"
	.align	4
.LC29:
	.string	"ESP_ERR_NVS_PAGE_FULL"
	.align	4
.LC30:
	.string	"ESP_ERR_NVS_INVALID_STATE"
	.align	4
.LC31:
	.string	"ESP_ERR_NVS_INVALID_LENGTH"
	.align	4
.LC32:
	.string	"ESP_ERR_NVS_NO_FREE_PAGES"
	.align	4
.LC33:
	.string	"ESP_ERR_NVS_VALUE_TOO_LONG"
	.align	4
.LC34:
	.string	"ESP_ERR_NVS_PART_NOT_FOUND"
	.align	4
.LC35:
	.string	"ESP_ERR_NVS_NEW_VERSION_FOUND"
	.align	4
.LC36:
	.string	"ESP_ERR_ULP_BASE"
	.align	4
.LC37:
	.string	"ESP_ERR_ULP_SIZE_TOO_BIG"
	.align	4
.LC38:
	.string	"ESP_ERR_ULP_INVALID_LOAD_ADDR"
	.align	4
.LC39:
	.string	"ESP_ERR_ULP_DUPLICATE_LABEL"
	.align	4
.LC40:
	.string	"ESP_ERR_ULP_UNDEFINED_LABEL"
	.align	4
.LC41:
	.string	"ESP_ERR_ULP_BRANCH_OUT_OF_RANGE"
	.align	4
.LC42:
	.string	"ESP_ERR_OTA_BASE"
	.align	4
.LC43:
	.string	"ESP_ERR_OTA_PARTITION_CONFLICT"
	.align	4
.LC44:
	.string	"ESP_ERR_OTA_SELECT_INFO_INVALID"
	.align	4
.LC45:
	.string	"ESP_ERR_OTA_VALIDATE_FAILED"
	.align	4
.LC46:
	.string	"ESP_ERR_IMAGE_BASE"
	.align	4
.LC47:
	.string	"ESP_ERR_IMAGE_FLASH_FAIL"
	.align	4
.LC48:
	.string	"ESP_ERR_IMAGE_INVALID"
	.align	4
.LC49:
	.string	"ESP_ERR_WIFI_BASE"
	.align	4
.LC50:
	.string	"ESP_ERR_WIFI_NOT_INIT"
	.align	4
.LC51:
	.string	"ESP_ERR_WIFI_NOT_STARTED"
	.align	4
.LC52:
	.string	"ESP_ERR_WIFI_NOT_STOPPED"
	.align	4
.LC53:
	.string	"ESP_ERR_WIFI_IF"
	.align	4
.LC54:
	.string	"ESP_ERR_WIFI_MODE"
	.align	4
.LC55:
	.string	"ESP_ERR_WIFI_STATE"
	.align	4
.LC56:
	.string	"ESP_ERR_WIFI_CONN"
	.align	4
.LC57:
	.string	"ESP_ERR_WIFI_NVS"
	.align	4
.LC58:
	.string	"ESP_ERR_WIFI_MAC"
	.align	4
.LC59:
	.string	"ESP_ERR_WIFI_SSID"
	.align	4
.LC60:
	.string	"ESP_ERR_WIFI_PASSWORD"
	.align	4
.LC61:
	.string	"ESP_ERR_WIFI_TIMEOUT"
	.align	4
.LC62:
	.string	"ESP_ERR_WIFI_WAKE_FAIL"
	.align	4
.LC63:
	.string	"ESP_ERR_WIFI_WOULD_BLOCK"
	.align	4
.LC64:
	.string	"ESP_ERR_WIFI_NOT_CONNECT"
	.align	4
.LC65:
	.string	"ESP_ERR_WIFI_REGISTRAR"
	.align	4
.LC66:
	.string	"ESP_ERR_WIFI_WPS_TYPE"
	.align	4
.LC67:
	.string	"ESP_ERR_WIFI_WPS_SM"
	.align	4
.LC68:
	.string	"ESP_ERR_ESPNOW_BASE"
	.align	4
.LC69:
	.string	"ESP_ERR_ESPNOW_NOT_INIT"
	.align	4
.LC70:
	.string	"ESP_ERR_ESPNOW_ARG"
	.align	4
.LC71:
	.string	"ESP_ERR_ESPNOW_NO_MEM"
	.align	4
.LC72:
	.string	"ESP_ERR_ESPNOW_FULL"
	.align	4
.LC73:
	.string	"ESP_ERR_ESPNOW_NOT_FOUND"
	.align	4
.LC74:
	.string	"ESP_ERR_ESPNOW_INTERNAL"
	.align	4
.LC75:
	.string	"ESP_ERR_ESPNOW_EXIST"
	.align	4
.LC76:
	.string	"ESP_ERR_ESPNOW_IF"
	.align	4
.LC77:
	.string	"ESP_ERR_MESH_BASE"
	.align	4
.LC78:
	.string	"ESP_ERR_MESH_WIFI_NOT_START"
	.align	4
.LC79:
	.string	"ESP_ERR_MESH_NOT_INIT"
	.align	4
.LC80:
	.string	"ESP_ERR_MESH_NOT_CONFIG"
	.align	4
.LC81:
	.string	"ESP_ERR_MESH_NOT_START"
	.align	4
.LC82:
	.string	"ESP_ERR_MESH_NOT_SUPPORT"
	.align	4
.LC83:
	.string	"ESP_ERR_MESH_NOT_ALLOWED"
	.align	4
.LC84:
	.string	"ESP_ERR_MESH_NO_MEMORY"
	.align	4
.LC85:
	.string	"ESP_ERR_MESH_ARGUMENT"
	.align	4
.LC86:
	.string	"ESP_ERR_MESH_EXCEED_MTU"
	.align	4
.LC87:
	.string	"ESP_ERR_MESH_TIMEOUT"
	.align	4
.LC88:
	.string	"ESP_ERR_MESH_DISCONNECTED"
	.align	4
.LC89:
	.string	"ESP_ERR_MESH_QUEUE_FAIL"
	.align	4
.LC90:
	.string	"ESP_ERR_MESH_QUEUE_FULL"
	.align	4
.LC91:
	.string	"ESP_ERR_MESH_NO_PARENT_FOUND"
	.align	4
.LC92:
	.string	"ESP_ERR_MESH_NO_ROUTE_FOUND"
	.align	4
.LC93:
	.string	"ESP_ERR_MESH_OPTION_NULL"
	.align	4
.LC94:
	.string	"ESP_ERR_MESH_OPTION_UNKNOWN"
	.align	4
.LC95:
	.string	"ESP_ERR_MESH_XON_NO_WINDOW"
	.align	4
.LC96:
	.string	"ESP_ERR_MESH_INTERFACE"
	.align	4
.LC97:
	.string	"ESP_ERR_MESH_DISCARD_DUPLICATE"
	.align	4
.LC98:
	.string	"ESP_ERR_MESH_DISCARD"
	.align	4
.LC99:
	.string	"ESP_ERR_MESH_VOTING"
	.align	4
.LC100:
	.string	"ESP_ERR_TCPIP_ADAPTER_BASE"
	.align	4
.LC101:
	.string	"ESP_ERR_TCPIP_ADAPTER_INVALID_PARAMS"
	.align	4
.LC102:
	.string	"ESP_ERR_TCPIP_ADAPTER_IF_NOT_READY"
	.align	4
.LC103:
	.string	"ESP_ERR_TCPIP_ADAPTER_DHCPC_START_FAILED"
	.align	4
.LC104:
	.string	"ESP_ERR_TCPIP_ADAPTER_DHCP_ALREADY_STARTED"
	.align	4
.LC105:
	.string	"ESP_ERR_TCPIP_ADAPTER_DHCP_ALREADY_STOPPED"
	.align	4
.LC106:
	.string	"ESP_ERR_TCPIP_ADAPTER_NO_MEM"
	.align	4
.LC107:
	.string	"ESP_ERR_TCPIP_ADAPTER_DHCP_NOT_STOPPED"
	.align	4
.LC108:
	.string	"ESP_ERR_PING_BASE"
	.align	4
.LC109:
	.string	"ESP_ERR_PING_INVALID_PARAMS"
	.align	4
.LC110:
	.string	"ESP_ERR_PING_NO_MEM"
	.align	4
.LC111:
	.string	"ESP_ERR_HTTP_BASE"
	.align	4
.LC112:
	.string	"ESP_ERR_HTTP_MAX_REDIRECT"
	.align	4
.LC113:
	.string	"ESP_ERR_HTTP_CONNECT"
	.align	4
.LC114:
	.string	"ESP_ERR_HTTP_WRITE_DATA"
	.align	4
.LC115:
	.string	"ESP_ERR_HTTP_FETCH_HEADER"
	.align	4
.LC116:
	.string	"ESP_ERR_HTTP_INVALID_TRANSPORT"
	.align	4
.LC117:
	.string	"ESP_ERR_FLASH_BASE"
	.align	4
.LC118:
	.string	"ESP_ERR_FLASH_OP_FAIL"
	.align	4
.LC119:
	.string	"ESP_ERR_FLASH_OP_TIMEOUT"
	.section	.rodata.esp_err_msg_table,"a",@progbits
	.align	4
	.type	esp_err_msg_table, @object
	.size	esp_err_msg_table, 912
esp_err_msg_table:
	.word	-1
	.word	.LC6
	.word	0
	.word	.LC7
	.word	257
	.word	.LC8
	.word	258
	.word	.LC9
	.word	259
	.word	.LC10
	.word	260
	.word	.LC11
	.word	261
	.word	.LC12
	.word	262
	.word	.LC13
	.word	263
	.word	.LC14
	.word	264
	.word	.LC15
	.word	265
	.word	.LC16
	.word	266
	.word	.LC17
	.word	267
	.word	.LC18
	.word	4352
	.word	.LC19
	.word	4353
	.word	.LC20
	.word	4354
	.word	.LC21
	.word	4355
	.word	.LC22
	.word	4356
	.word	.LC23
	.word	4357
	.word	.LC24
	.word	4358
	.word	.LC25
	.word	4359
	.word	.LC26
	.word	4360
	.word	.LC27
	.word	4361
	.word	.LC28
	.word	4362
	.word	.LC29
	.word	4363
	.word	.LC30
	.word	4364
	.word	.LC31
	.word	4365
	.word	.LC32
	.word	4366
	.word	.LC33
	.word	4367
	.word	.LC34
	.word	4368
	.word	.LC35
	.word	4608
	.word	.LC36
	.word	4609
	.word	.LC37
	.word	4610
	.word	.LC38
	.word	4611
	.word	.LC39
	.word	4612
	.word	.LC40
	.word	4613
	.word	.LC41
	.word	5376
	.word	.LC42
	.word	5377
	.word	.LC43
	.word	5378
	.word	.LC44
	.word	5379
	.word	.LC45
	.word	8192
	.word	.LC46
	.word	8193
	.word	.LC47
	.word	8194
	.word	.LC48
	.word	12288
	.word	.LC49
	.word	12289
	.word	.LC50
	.word	12290
	.word	.LC51
	.word	12291
	.word	.LC52
	.word	12292
	.word	.LC53
	.word	12293
	.word	.LC54
	.word	12294
	.word	.LC55
	.word	12295
	.word	.LC56
	.word	12296
	.word	.LC57
	.word	12297
	.word	.LC58
	.word	12298
	.word	.LC59
	.word	12299
	.word	.LC60
	.word	12300
	.word	.LC61
	.word	12301
	.word	.LC62
	.word	12302
	.word	.LC63
	.word	12303
	.word	.LC64
	.word	12339
	.word	.LC65
	.word	12340
	.word	.LC66
	.word	12341
	.word	.LC67
	.word	12388
	.word	.LC68
	.word	12389
	.word	.LC69
	.word	12390
	.word	.LC70
	.word	12391
	.word	.LC71
	.word	12392
	.word	.LC72
	.word	12393
	.word	.LC73
	.word	12394
	.word	.LC74
	.word	12395
	.word	.LC75
	.word	12396
	.word	.LC76
	.word	16384
	.word	.LC77
	.word	16385
	.word	.LC78
	.word	16386
	.word	.LC79
	.word	16387
	.word	.LC80
	.word	16388
	.word	.LC81
	.word	16389
	.word	.LC82
	.word	16390
	.word	.LC83
	.word	16391
	.word	.LC84
	.word	16392
	.word	.LC85
	.word	16393
	.word	.LC86
	.word	16394
	.word	.LC87
	.word	16395
	.word	.LC88
	.word	16396
	.word	.LC89
	.word	16397
	.word	.LC90
	.word	16398
	.word	.LC91
	.word	16399
	.word	.LC92
	.word	16400
	.word	.LC93
	.word	16401
	.word	.LC94
	.word	16402
	.word	.LC95
	.word	16403
	.word	.LC96
	.word	16404
	.word	.LC97
	.word	16405
	.word	.LC98
	.word	16406
	.word	.LC99
	.word	20480
	.word	.LC100
	.word	20481
	.word	.LC101
	.word	20482
	.word	.LC102
	.word	20483
	.word	.LC103
	.word	20484
	.word	.LC104
	.word	20485
	.word	.LC105
	.word	20486
	.word	.LC106
	.word	20487
	.word	.LC107
	.word	24576
	.word	.LC108
	.word	24577
	.word	.LC109
	.word	24578
	.word	.LC110
	.word	28672
	.word	.LC111
	.word	28673
	.word	.LC112
	.word	28674
	.word	.LC113
	.word	28675
	.word	.LC114
	.word	28676
	.word	.LC115
	.word	28677
	.word	.LC116
	.word	65552
	.word	.LC117
	.word	65553
	.word	.LC118
	.word	65554
	.word	.LC119
	.comm	esp_image_spi_freq_t,4,4
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI1-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/port/include/http_parser.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2d4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8e
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x6
	.4byte	0x8e
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x18
	.4byte	0xa0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.2byte	0x10e
	.4byte	0xff
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x27
	.4byte	0x124
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF28
	.uleb128 0xa
	.byte	0x8
	.byte	0x1
	.byte	0x32
	.4byte	0x14c
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x33
	.4byte	0xab
	.byte	0
	.uleb128 0xc
	.string	"msg"
	.byte	0x1
	.byte	0x34
	.4byte	0x95
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x1
	.byte	0x35
	.4byte	0x12b
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x95
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x190
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xab
	.4byte	.LLST0
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x25
	.4byte	.LLST1
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x95
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x253
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xab
	.4byte	.LLST2
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x88
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x25
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LVL13
	.4byte	0x2b1
	.4byte	0x1fe
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL16
	.4byte	0x2bc
	.4byte	0x21e
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0x2cb
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_unknown_msg
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x14c
	.4byte	0x263
	.uleb128 0x16
	.4byte	0x7a
	.byte	0x71
	.byte	0
	.uleb128 0x17
	.4byte	.LASF34
	.byte	0x1
	.byte	0x37
	.4byte	0x274
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_err_msg_table
	.uleb128 0x6
	.4byte	0x253
	.uleb128 0x15
	.4byte	0x8e
	.4byte	0x289
	.uleb128 0x16
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x18
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x29b
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_unknown_msg
	.uleb128 0x6
	.4byte	0x279
	.uleb128 0x19
	.4byte	.LASF42
	.byte	0x9
	.byte	0x2c
	.4byte	0xff
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_image_spi_freq_t
	.uleb128 0x1a
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x77
	.uleb128 0x1b
	.4byte	.LASF43
	.4byte	.LASF44
	.byte	0x6
	.byte	0x6a
	.4byte	.LASF43
	.uleb128 0x1c
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.2byte	0x10c
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF23:
	.string	"UF_MAX"
.LASF5:
	.string	"size_t"
.LASF32:
	.string	"esp_err_to_name_r"
.LASF42:
	.string	"esp_image_spi_freq_t"
.LASF6:
	.string	"__int32_t"
.LASF20:
	.string	"UF_QUERY"
.LASF37:
	.string	"snprintf"
.LASF25:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF21:
	.string	"UF_FRAGMENT"
.LASF17:
	.string	"UF_HOST"
.LASF41:
	.string	"http_parser_url_fields"
.LASF43:
	.string	"__xpg_strerror_r"
.LASF40:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF28:
	.string	"float"
.LASF34:
	.string	"esp_err_msg_table"
.LASF3:
	.string	"unsigned char"
.LASF27:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF11:
	.string	"long unsigned int"
.LASF18:
	.string	"UF_PORT"
.LASF1:
	.string	"short unsigned int"
.LASF22:
	.string	"UF_USERINFO"
.LASF14:
	.string	"esp_err_t"
.LASF19:
	.string	"UF_PATH"
.LASF29:
	.string	"code"
.LASF44:
	.string	"strerror_r"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"char"
.LASF31:
	.string	"esp_err_to_name"
.LASF30:
	.string	"esp_err_msg_t"
.LASF24:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF35:
	.string	"esp_unknown_msg"
.LASF13:
	.string	"int32_t"
.LASF10:
	.string	"sizetype"
.LASF38:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF16:
	.string	"UF_SCHEMA"
.LASF4:
	.string	"short int"
.LASF39:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/esp_err_to_name.c"
.LASF33:
	.string	"buflen"
.LASF9:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF15:
	.string	"_Bool"
.LASF8:
	.string	"long long unsigned int"
.LASF26:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF36:
	.string	"strlcpy"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
