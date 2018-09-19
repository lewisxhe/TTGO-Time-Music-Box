	.file	"esp_https_ota.c"
	.text
.Ltext0:
	.section	.text.http_cleanup,"ax",@progbits
	.align	4
	.type	http_cleanup, @function
http_cleanup:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp_https_ota/src/esp_https_ota.c"
	.loc 1 26 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 27 0
	mov.n	a10, a2
	call8	esp_http_client_close
.LVL1:
	.loc 1 28 0
	mov.n	a10, a2
	call8	esp_http_client_cleanup
.LVL2:
	retw.n
.LFE14:
	.size	http_cleanup, .-http_cleanup
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"esp_https_ota"
	.align	4
.LC2:
	.string	"\033[0;31mE (%d) %s: esp_http_client config not found\033[0m\n"
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: Server certificate not found in esp_http_client config\033[0m\n"
	.align	4
.LC6:
	.string	"\033[0;31mE (%d) %s: Failed to initialise HTTP connection\033[0m\n"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: Transport is not over HTTPS\033[0m\n"
	.align	4
.LC10:
	.string	"\033[0;31mE (%d) %s: Failed to open HTTP connection: %s\033[0m\n"
	.align	4
.LC12:
	.string	"\033[0;32mI (%d) %s: Starting OTA...\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;31mE (%d) %s: Passive OTA partition not found\033[0m\n"
	.align	4
.LC16:
	.string	"\033[0;32mI (%d) %s: Writing to partition subtype %d at offset 0x%x\033[0m\n"
	.align	4
.LC18:
	.string	"\033[0;31mE (%d) %s: esp_ota_begin failed, error=%d\033[0m\n"
	.align	4
.LC20:
	.string	"\033[0;32mI (%d) %s: esp_ota_begin succeeded\033[0m\n"
	.align	4
.LC22:
	.string	"\033[0;32mI (%d) %s: Please Wait. This may take time\033[0m\n"
	.align	4
.LC24:
	.string	"\033[0;31mE (%d) %s: Couldn't allocate memory to upgrade data buffer\033[0m\n"
	.align	4
.LC26:
	.string	"\033[0;32mI (%d) %s: Connection closed,all data received\033[0m\n"
	.align	4
.LC28:
	.string	"\033[0;31mE (%d) %s: Error: SSL data read error\033[0m\n"
	.align	4
.LC30:
	.string	"\033[0;31mE (%d) %s: Error: esp_ota_write failed! err=0x%d\033[0m\n"
	.align	4
.LC32:
	.string	"\033[0;31mE (%d) %s: Error: esp_ota_end failed! err=0x%d. Image is invalid\033[0m\n"
	.align	4
.LC34:
	.string	"\033[0;31mE (%d) %s: esp_ota_set_boot_partition failed! err=0x%d\033[0m\n"
	.align	4
.LC36:
	.string	"\033[0;32mI (%d) %s: esp_ota_set_boot_partition succeeded\033[0m\n"
	.section	.text.esp_https_ota,"ax",@progbits
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
	.align	4
	.global	esp_https_ota
	.type	esp_https_ota, @function
esp_https_ota:
.LFB15:
	.loc 1 32 0
.LVL3:
	entry	sp, 64
.LCFI1:
	.loc 1 33 0
	bnez.n	a2, .L3
	.loc 1 34 0 discriminator 2
	call8	esp_log_timestamp
.LVL4:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC3
	movi.n	a10, 1
	call8	esp_log_write
.LVL5:
	.loc 1 35 0 discriminator 2
	movi	a2, 0x102
.LVL6:
	retw.n
.LVL7:
.L3:
	.loc 1 38 0
	l32i.n	a3, a2, 32
	bnez.n	a3, .L5
	.loc 1 39 0 discriminator 2
	call8	esp_log_timestamp
.LVL8:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
	.loc 1 40 0 discriminator 2
	movi.n	a2, -1
.LVL10:
	retw.n
.LVL11:
.L5:
	.loc 1 43 0
	mov.n	a10, a2
	call8	esp_http_client_init
.LVL12:
	mov.n	a3, a10
.LVL13:
	.loc 1 44 0
	bnez.n	a10, .L6
	.loc 1 45 0 discriminator 2
	call8	esp_log_timestamp
.LVL14:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC7
	movi.n	a10, 1
	call8	esp_log_write
.LVL15:
	.loc 1 46 0 discriminator 2
	movi.n	a2, -1
.LVL16:
	retw.n
.LVL17:
.L6:
	.loc 1 49 0
	call8	esp_http_client_get_transport_type
.LVL18:
	beqi	a10, 2, .L7
	.loc 1 50 0 discriminator 2
	call8	esp_log_timestamp
.LVL19:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL20:
	.loc 1 51 0 discriminator 2
	movi.n	a2, -1
.LVL21:
	retw.n
.LVL22:
.L7:
	.loc 1 54 0
	movi.n	a11, 0
	mov.n	a10, a3
	call8	esp_http_client_open
.LVL23:
	mov.n	a2, a10
.LVL24:
	.loc 1 55 0
	beqz.n	a10, .L8
	.loc 1 56 0
	mov.n	a10, a3
	call8	esp_http_client_cleanup
.LVL25:
	.loc 1 57 0
	call8	esp_log_timestamp
.LVL26:
	mov.n	a3, a10
.LVL27:
	mov.n	a10, a2
	call8	esp_err_to_name
.LVL28:
	l32r	a11, .LC1
	mov.n	a15, a10
	mov.n	a14, a11
	mov.n	a13, a3
	l32r	a12, .LC11
	movi.n	a10, 1
	call8	esp_log_write
.LVL29:
	.loc 1 58 0
	retw.n
.LVL30:
.L8:
	.loc 1 60 0
	mov.n	a10, a3
	call8	esp_http_client_fetch_headers
.LVL31:
	.loc 1 62 0
	movi.n	a2, 0
.LVL32:
	s32i.n	a2, sp, 16
.LVL33:
	.loc 1 64 0
	call8	esp_log_timestamp
.LVL34:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC13
	movi.n	a10, 3
	call8	esp_log_write
.LVL35:
	.loc 1 65 0
	mov.n	a10, a2
	call8	esp_ota_get_next_update_partition
.LVL36:
	mov.n	a5, a10
.LVL37:
	.loc 1 66 0
	bne	a10, a2, .L9
	.loc 1 67 0 discriminator 2
	call8	esp_log_timestamp
.LVL38:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 1
	call8	esp_log_write
.LVL39:
	.loc 1 68 0 discriminator 2
	mov.n	a10, a3
	call8	http_cleanup
.LVL40:
	.loc 1 69 0 discriminator 2
	movi.n	a2, -1
	retw.n
.L9:
	.loc 1 71 0 discriminator 9
	call8	esp_log_timestamp
.LVL41:
	l32i.n	a15, a5, 4
	l32r	a11, .LC1
	l32i.n	a2, a5, 8
	s32i.n	a2, sp, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 3
	call8	esp_log_write
.LVL42:
	.loc 1 74 0 discriminator 9
	addi	a12, sp, 16
	movi.n	a11, -1
	mov.n	a10, a5
	call8	esp_ota_begin
.LVL43:
	mov.n	a2, a10
.LVL44:
	.loc 1 75 0 discriminator 9
	beqz.n	a10, .L10
	.loc 1 76 0 discriminator 2
	call8	esp_log_timestamp
.LVL45:
	l32r	a11, .LC1
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC19
	movi.n	a10, 1
	call8	esp_log_write
.LVL46:
	.loc 1 77 0 discriminator 2
	mov.n	a10, a3
	call8	http_cleanup
.LVL47:
	.loc 1 78 0 discriminator 2
	retw.n
.L10:
	.loc 1 80 0 discriminator 9
	call8	esp_log_timestamp
.LVL48:
	l32r	a4, .LC1
	mov.n	a14, a4
	mov.n	a13, a10
	l32r	a12, .LC21
	mov.n	a11, a4
	movi.n	a10, 3
	call8	esp_log_write
.LVL49:
	.loc 1 81 0 discriminator 9
	call8	esp_log_timestamp
.LVL50:
	mov.n	a14, a4
	mov.n	a13, a10
	l32r	a12, .LC23
	mov.n	a11, a4
	movi.n	a10, 3
	call8	esp_log_write
.LVL51:
	.loc 1 84 0 discriminator 9
	movi	a10, 0x100
	call8	malloc
.LVL52:
	mov.n	a4, a10
.LVL53:
	.loc 1 85 0 discriminator 9
	bnez.n	a10, .L19
	.loc 1 86 0 discriminator 2
	call8	esp_log_timestamp
.LVL54:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC25
	movi.n	a10, 1
	call8	esp_log_write
.LVL55:
	.loc 1 87 0 discriminator 2
	movi	a2, 0x101
.LVL56:
	retw.n
.LVL57:
.L19:
	movi.n	a6, 0
.LVL58:
.L15:
.LBB2:
	.loc 1 91 0
	movi	a12, 0x100
	mov.n	a11, a4
	mov.n	a10, a3
	call8	esp_http_client_read
.LVL59:
	.loc 1 92 0
	bnez.n	a10, .L12
	.loc 1 93 0 discriminator 9
	call8	esp_log_timestamp
.LVL60:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 3
	call8	esp_log_write
.LVL61:
	.loc 1 94 0 discriminator 9
	j	.L13
.LVL62:
.L12:
	.loc 1 96 0
	bgez	a10, .L14
	.loc 1 97 0 discriminator 2
	call8	esp_log_timestamp
.LVL63:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC29
	movi.n	a10, 1
	call8	esp_log_write
.LVL64:
	.loc 1 98 0 discriminator 2
	j	.L13
.LVL65:
.L14:
	.loc 1 100 0
	blti	a10, 1, .L15
	.loc 1 101 0
	mov.n	a12, a10
	mov.n	a11, a4
	l32i.n	a10, sp, 16
.LVL66:
	call8	esp_ota_write
.LVL67:
	mov.n	a6, a10
.LVL68:
	.loc 1 102 0
	beqz.n	a10, .L15
.L13:
.LBE2:
	.loc 1 109 0
	mov.n	a10, a4
	call8	free
.LVL69:
	.loc 1 110 0
	mov.n	a10, a3
	call8	http_cleanup
.LVL70:
	.loc 1 113 0
	l32i.n	a10, sp, 16
	call8	esp_ota_end
.LVL71:
	mov.n	a3, a10
.LVL72:
	.loc 1 114 0
	beqz.n	a6, .L16
	.loc 1 115 0 discriminator 2
	call8	esp_log_timestamp
.LVL73:
	l32r	a11, .LC1
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC31
	movi.n	a10, 1
	call8	esp_log_write
.LVL74:
	.loc 1 116 0 discriminator 2
	mov.n	a2, a6
.LVL75:
	retw.n
.LVL76:
.L16:
	.loc 1 117 0
	beqz.n	a10, .L17
	.loc 1 118 0 discriminator 2
	call8	esp_log_timestamp
.LVL77:
	l32r	a11, .LC1
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC33
	movi.n	a10, 1
	call8	esp_log_write
.LVL78:
	.loc 1 119 0 discriminator 2
	mov.n	a2, a3
.LVL79:
	retw.n
.LVL80:
.L17:
	.loc 1 122 0
	mov.n	a10, a5
	call8	esp_ota_set_boot_partition
.LVL81:
	mov.n	a2, a10
.LVL82:
	.loc 1 123 0
	beqz.n	a10, .L18
	.loc 1 124 0 discriminator 2
	call8	esp_log_timestamp
.LVL83:
	l32r	a11, .LC1
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC35
	movi.n	a10, 1
	call8	esp_log_write
.LVL84:
	.loc 1 125 0 discriminator 2
	retw.n
.L18:
	.loc 1 127 0 discriminator 9
	call8	esp_log_timestamp
.LVL85:
	l32r	a11, .LC1
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	movi.n	a10, 3
	call8	esp_log_write
.LVL86:
	.loc 1 129 0 discriminator 9
	movi.n	a2, 0
.LVL87:
	.loc 1 130 0 discriminator 9
	retw.n
.LFE15:
	.size	esp_https_ota, .-esp_https_ota
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp_http_client/include/esp_http_client.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_partition.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/app_update/include/esp_ota_ops.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbe2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0xc
	.4byte	.LASF137
	.4byte	.LASF138
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.4byte	.LASF4
	.byte	0x2
	.byte	0x19
	.4byte	0x4c
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
	.uleb128 0x5
	.byte	0x4
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x90
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x7
	.4byte	0x90
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2d
	.4byte	0x53
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x1d
	.4byte	0xd5
	.uleb128 0x6
	.byte	0x4
	.4byte	0xdb
	.uleb128 0x8
	.4byte	.LASF139
	.uleb128 0x9
	.4byte	.LASF140
	.byte	0x1c
	.byte	0x5
	.byte	0x30
	.4byte	0x141
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0x31
	.4byte	0x178
	.byte	0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0x32
	.4byte	0xca
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x33
	.4byte	0x73
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x34
	.4byte	0x4c
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x35
	.4byte	0x73
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x36
	.4byte	0x8a
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x37
	.4byte	0x8a
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x23
	.4byte	0x178
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x2b
	.4byte	0x141
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0x38
	.4byte	0xe0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x3e
	.4byte	0x1ad
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x42
	.4byte	0x18e
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x44
	.4byte	0x1c3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0xb8
	.4byte	0x1d8
	.uleb128 0xe
	.4byte	0x1d8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x183
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x49
	.4byte	0x20f
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x5
	.byte	0x50
	.4byte	0x1de
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x5
	.byte	0x55
	.4byte	0x239
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x5
	.byte	0x59
	.4byte	0x21a
	.uleb128 0xf
	.byte	0x44
	.byte	0x5
	.byte	0x5e
	.4byte	0x319
	.uleb128 0x10
	.string	"url"
	.byte	0x5
	.byte	0x5f
	.4byte	0x97
	.byte	0
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x5
	.byte	0x60
	.4byte	0x97
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x5
	.byte	0x61
	.4byte	0x4c
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x5
	.byte	0x62
	.4byte	0x97
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x5
	.byte	0x63
	.4byte	0x97
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x5
	.byte	0x64
	.4byte	0x239
	.byte	0x14
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x5
	.byte	0x65
	.4byte	0x97
	.byte	0x18
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x5
	.byte	0x66
	.4byte	0x97
	.byte	0x1c
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x5
	.byte	0x67
	.4byte	0x97
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x5
	.byte	0x68
	.4byte	0x20f
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x5
	.byte	0x69
	.4byte	0x4c
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x5
	.byte	0x6a
	.4byte	0xc3
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x5
	.byte	0x6b
	.4byte	0x4c
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x5
	.byte	0x6c
	.4byte	0x1b8
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x5
	.byte	0x6d
	.4byte	0x1ad
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x5
	.byte	0x6e
	.4byte	0x4c
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x6f
	.4byte	0x73
	.byte	0x40
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x5
	.byte	0x70
	.4byte	0x244
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x26
	.4byte	0x33d
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x6
	.byte	0x29
	.4byte	0x324
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x6
	.byte	0x2f
	.4byte	0x3fd
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x15
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x17
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x19
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x1a
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x1b
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x1d
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x1e
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x1f
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x80
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x81
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x82
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x6
	.byte	0x4f
	.4byte	0x348
	.uleb128 0xf
	.byte	0x24
	.byte	0x6
	.byte	0x62
	.4byte	0x459
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x6
	.byte	0x63
	.4byte	0x33d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0x6
	.byte	0x64
	.4byte	0x3fd
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x6
	.byte	0x65
	.4byte	0xad
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x6
	.byte	0x66
	.4byte	0xad
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x6
	.byte	0x67
	.4byte	0x459
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0x6
	.byte	0x68
	.4byte	0xc3
	.byte	0x21
	.byte	0
	.uleb128 0x11
	.4byte	0x90
	.4byte	0x469
	.uleb128 0x12
	.4byte	0x7c
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x6
	.byte	0x69
	.4byte	0x408
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x7
	.byte	0x2b
	.4byte	0xad
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5e
	.byte	0x8
	.byte	0x1f
	.4byte	0x4b0
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF141
	.byte	0x1
	.byte	0x19
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4f7
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x1
	.byte	0x19
	.4byte	0xca
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL1
	.4byte	0xb25
	.4byte	0x4e6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL2
	.4byte	0xb31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF142
	.byte	0x1
	.byte	0x1f
	.4byte	0xb8
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf8
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x1
	.byte	0x1f
	.4byte	0xaf8
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2b
	.4byte	0xca
	.4byte	.LLST1
	.uleb128 0x1b
	.string	"err"
	.byte	0x1
	.byte	0x36
	.4byte	0xb8
	.4byte	.LLST2
	.uleb128 0x1c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x3e
	.4byte	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0x1
	.byte	0x3f
	.4byte	0xb03
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0x1
	.byte	0x53
	.4byte	0xb8
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x1
	.byte	0x54
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0x1
	.byte	0x59
	.4byte	0x4c
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x1
	.byte	0x71
	.4byte	0xb8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x64a
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0x1
	.byte	0x5b
	.4byte	0x4c
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LVL59
	.4byte	0xb3d
	.4byte	0x5cb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL60
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL61
	.4byte	0xb54
	.4byte	0x602
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL63
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL64
	.4byte	0xb54
	.4byte	0x639
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC28
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL67
	.4byte	0xb5f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL4
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0xb54
	.4byte	0x681
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL8
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0xb54
	.4byte	0x6b8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0xb6a
	.4byte	0x6cc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL14
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL15
	.4byte	0xb54
	.4byte	0x703
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL18
	.4byte	0xb75
	.uleb128 0x1f
	.4byte	.LVL19
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0xb54
	.4byte	0x743
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL23
	.4byte	0xb81
	.4byte	0x75c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL25
	.4byte	0xb31
	.4byte	0x770
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL26
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL28
	.4byte	0xb8c
	.4byte	0x78d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL29
	.4byte	0xb54
	.4byte	0x7c1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL31
	.4byte	0xb97
	.4byte	0x7d5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL34
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL35
	.4byte	0xb54
	.4byte	0x80c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0xba3
	.4byte	0x820
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL38
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL39
	.4byte	0xb54
	.4byte	0x857
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL40
	.4byte	0x4b0
	.4byte	0x86b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL41
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL42
	.4byte	0xb54
	.4byte	0x8a9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL43
	.4byte	0xbae
	.4byte	0x8c9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL45
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL46
	.4byte	0xb54
	.4byte	0x906
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL47
	.4byte	0x4b0
	.4byte	0x91a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL48
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL49
	.4byte	0xb54
	.4byte	0x94b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL50
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL51
	.4byte	0xb54
	.4byte	0x97c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL52
	.4byte	0xbb9
	.4byte	0x991
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL54
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL55
	.4byte	0xb54
	.4byte	0x9c8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL69
	.4byte	0xbc4
	.4byte	0x9dc
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL70
	.4byte	0x4b0
	.4byte	0x9f0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL71
	.4byte	0xbcf
	.uleb128 0x1f
	.4byte	.LVL73
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL74
	.4byte	0xb54
	.4byte	0xa36
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL77
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL78
	.4byte	0xb54
	.4byte	0xa73
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL81
	.4byte	0xbda
	.4byte	0xa87
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL83
	.4byte	0xb49
	.uleb128 0x15
	.4byte	.LVL84
	.4byte	0xb54
	.4byte	0xac4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL85
	.4byte	0xb49
	.uleb128 0x17
	.4byte	.LVL86
	.4byte	0xb54
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xafe
	.uleb128 0x7
	.4byte	0x319
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb09
	.uleb128 0x7
	.4byte	0x469
	.uleb128 0x20
	.string	"TAG"
	.byte	0x1
	.byte	0x17
	.4byte	0xb20
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x7
	.4byte	0x97
	.uleb128 0x21
	.4byte	.LASF119
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x141
	.uleb128 0x21
	.4byte	.LASF120
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x14f
	.uleb128 0x21
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x120
	.uleb128 0x22
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x8
	.byte	0x57
	.uleb128 0x22
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x8
	.byte	0x6b
	.uleb128 0x22
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x7
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x5
	.byte	0x86
	.uleb128 0x21
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x5
	.2byte	0x15b
	.uleb128 0x22
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0x5
	.byte	0xf0
	.uleb128 0x22
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0x4
	.byte	0x3a
	.uleb128 0x21
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x109
	.uleb128 0x22
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x7
	.byte	0xac
	.uleb128 0x22
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x7
	.byte	0x46
	.uleb128 0x22
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x9
	.byte	0x65
	.uleb128 0x22
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x9
	.byte	0x5a
	.uleb128 0x22
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0x7
	.byte	0x6a
	.uleb128 0x22
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x7
	.byte	0x7a
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.4byte	.LVL3
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
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
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
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL13
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL24
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL51
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5c
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"user_data"
.LASF132:
	.string	"malloc"
.LASF120:
	.string	"esp_http_client_cleanup"
.LASF61:
	.string	"max_redirection_count"
.LASF37:
	.string	"esp_http_client_transport_t"
.LASF124:
	.string	"esp_ota_write"
.LASF98:
	.string	"type"
.LASF53:
	.string	"password"
.LASF55:
	.string	"path"
.LASF34:
	.string	"HTTP_TRANSPORT_UNKNOWN"
.LASF8:
	.string	"long long unsigned int"
.LASF123:
	.string	"esp_log_write"
.LASF20:
	.string	"data"
.LASF134:
	.string	"esp_ota_end"
.LASF44:
	.string	"HTTP_METHOD_MAX"
.LASF48:
	.string	"HTTP_AUTH_TYPE_DIGEST"
.LASF130:
	.string	"esp_ota_get_next_update_partition"
.LASF110:
	.string	"ESP_LOG_DEBUG"
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF119:
	.string	"esp_http_client_close"
.LASF142:
	.string	"esp_https_ota"
.LASF60:
	.string	"disable_auto_redirect"
.LASF24:
	.string	"header_value"
.LASF18:
	.string	"event_id"
.LASF96:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF9:
	.string	"long int"
.LASF41:
	.string	"HTTP_METHOD_PUT"
.LASF143:
	.string	"binary_file_len"
.LASF6:
	.string	"unsigned int"
.LASF89:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF81:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF87:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF117:
	.string	"ota_end_err"
.LASF84:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF88:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF45:
	.string	"esp_http_client_method_t"
.LASF70:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF127:
	.string	"esp_http_client_open"
.LASF113:
	.string	"update_handle"
.LASF5:
	.string	"__uint32_t"
.LASF63:
	.string	"transport_type"
.LASF51:
	.string	"port"
.LASF50:
	.string	"host"
.LASF42:
	.string	"HTTP_METHOD_PATCH"
.LASF68:
	.string	"esp_partition_type_t"
.LASF11:
	.string	"long unsigned int"
.LASF58:
	.string	"method"
.LASF54:
	.string	"auth_type"
.LASF121:
	.string	"esp_http_client_read"
.LASF101:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF126:
	.string	"esp_http_client_get_transport_type"
.LASF115:
	.string	"ota_write_err"
.LASF35:
	.string	"HTTP_TRANSPORT_OVER_TCP"
.LASF102:
	.string	"label"
.LASF40:
	.string	"HTTP_METHOD_POST"
.LASF2:
	.string	"short int"
.LASF52:
	.string	"username"
.LASF99:
	.string	"subtype"
.LASF138:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp_https_ota"
.LASF131:
	.string	"esp_ota_begin"
.LASF109:
	.string	"ESP_LOG_INFO"
.LASF49:
	.string	"esp_http_client_auth_type_t"
.LASF10:
	.string	"sizetype"
.LASF90:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF62:
	.string	"event_handler"
.LASF100:
	.string	"address"
.LASF133:
	.string	"free"
.LASF67:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF47:
	.string	"HTTP_AUTH_TYPE_BASIC"
.LASF140:
	.string	"esp_http_client_event"
.LASF66:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF105:
	.string	"esp_ota_handle_t"
.LASF116:
	.string	"upgrade_data_buf"
.LASF46:
	.string	"HTTP_AUTH_TYPE_NONE"
.LASF59:
	.string	"timeout_ms"
.LASF23:
	.string	"header_key"
.LASF16:
	.string	"_Bool"
.LASF13:
	.string	"int32_t"
.LASF114:
	.string	"update_partition"
.LASF71:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF72:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF73:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF136:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF75:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF26:
	.string	"HTTP_EVENT_ON_CONNECTED"
.LASF77:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF78:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF79:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF80:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF122:
	.string	"esp_log_timestamp"
.LASF107:
	.string	"ESP_LOG_ERROR"
.LASF32:
	.string	"esp_http_client_event_id_t"
.LASF30:
	.string	"HTTP_EVENT_ON_FINISH"
.LASF21:
	.string	"data_len"
.LASF91:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF36:
	.string	"HTTP_TRANSPORT_OVER_SSL"
.LASF103:
	.string	"encrypted"
.LASF39:
	.string	"HTTP_METHOD_GET"
.LASF57:
	.string	"cert_pem"
.LASF14:
	.string	"uint32_t"
.LASF129:
	.string	"esp_http_client_fetch_headers"
.LASF43:
	.string	"HTTP_METHOD_DELETE"
.LASF12:
	.string	"char"
.LASF111:
	.string	"ESP_LOG_VERBOSE"
.LASF112:
	.string	"config"
.LASF93:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF97:
	.string	"esp_partition_subtype_t"
.LASF106:
	.string	"ESP_LOG_NONE"
.LASF27:
	.string	"HTTP_EVENT_HEADER_SENT"
.LASF33:
	.string	"esp_http_client_event_t"
.LASF4:
	.string	"__int32_t"
.LASF38:
	.string	"http_event_handle_cb"
.LASF74:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF76:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF1:
	.string	"unsigned char"
.LASF125:
	.string	"esp_http_client_init"
.LASF65:
	.string	"esp_http_client_config_t"
.LASF139:
	.string	"esp_http_client"
.LASF137:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp_https_ota/src/esp_https_ota.c"
.LASF82:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF83:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF108:
	.string	"ESP_LOG_WARN"
.LASF85:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF86:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF56:
	.string	"query"
.LASF64:
	.string	"buffer_size"
.LASF15:
	.string	"esp_err_t"
.LASF94:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF92:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF17:
	.string	"esp_http_client_handle_t"
.LASF25:
	.string	"HTTP_EVENT_ERROR"
.LASF141:
	.string	"http_cleanup"
.LASF95:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF69:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF28:
	.string	"HTTP_EVENT_ON_HEADER"
.LASF104:
	.string	"esp_partition_t"
.LASF31:
	.string	"HTTP_EVENT_DISCONNECTED"
.LASF128:
	.string	"esp_err_to_name"
.LASF29:
	.string	"HTTP_EVENT_ON_DATA"
.LASF135:
	.string	"esp_ota_set_boot_partition"
.LASF19:
	.string	"client"
.LASF118:
	.string	"data_read"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
