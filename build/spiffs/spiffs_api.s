	.file	"spiffs_api.c"
	.text
.Ltext0:
	.section	.text.spiffs_api_lock,"ax",@progbits
	.align	4
	.global	spiffs_api_lock
	.type	spiffs_api_lock, @function
spiffs_api_lock:
.LFB15:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs_api.c"
	.loc 1 25 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 26 0
	l32i	a8, a2, 108
	movi.n	a13, 0
	movi.n	a12, -1
	mov.n	a11, a13
	l32i.n	a10, a8, 4
	call8	xQueueGenericReceive
.LVL1:
	retw.n
.LFE15:
	.size	spiffs_api_lock, .-spiffs_api_lock
	.section	.text.spiffs_api_unlock,"ax",@progbits
	.align	4
	.global	spiffs_api_unlock
	.type	spiffs_api_unlock, @function
spiffs_api_unlock:
.LFB16:
	.loc 1 30 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 31 0
	l32i	a8, a2, 108
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a13
	l32i.n	a10, a8, 4
	call8	xQueueGenericSend
.LVL3:
	retw.n
.LFE16:
	.size	spiffs_api_unlock, .-spiffs_api_unlock
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"\033[0;31mE (%d) %s: failed to read addr %08x, size %08x, err %d\033[0m\n"
	.section	.text.spiffs_api_read,"ax",@progbits
	.literal_position
	.literal .LC0, TAG
	.literal .LC2, .LC1
	.align	4
	.global	spiffs_api_read
	.type	spiffs_api_read, @function
spiffs_api_read:
.LFB17:
	.loc 1 35 0
.LVL4:
	entry	sp, 48
.LCFI2:
	.loc 1 36 0
	l32i	a2, a2, 108
.LVL5:
	mov.n	a13, a4
	mov.n	a12, a5
	mov.n	a11, a3
	l32i.n	a10, a2, 8
	call8	esp_partition_read
.LVL6:
	mov.n	a2, a10
.LVL7:
	.loc 1 38 0
	beqz.n	a10, .L5
	.loc 1 39 0 discriminator 2
	call8	esp_log_timestamp
.LVL8:
	l32r	a8, .LC0
	l32i.n	a11, a8, 0
	s32i.n	a2, sp, 4
	s32i.n	a4, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC2
	movi.n	a10, 1
	call8	esp_log_write
.LVL9:
	.loc 1 40 0 discriminator 2
	movi.n	a2, -1
.LVL10:
	retw.n
.LVL11:
.L5:
	.loc 1 42 0
	movi.n	a2, 0
.LVL12:
	.loc 1 43 0
	retw.n
.LFE17:
	.size	spiffs_api_read, .-spiffs_api_read
	.section	.rodata.str1.4
	.align	4
.LC4:
	.string	"\033[0;31mE (%d) %s: failed to write addr %08x, size %08x, err %d\033[0m\n"
	.section	.text.spiffs_api_write,"ax",@progbits
	.literal_position
	.literal .LC3, TAG
	.literal .LC5, .LC4
	.align	4
	.global	spiffs_api_write
	.type	spiffs_api_write, @function
spiffs_api_write:
.LFB18:
	.loc 1 46 0
.LVL13:
	entry	sp, 48
.LCFI3:
	.loc 1 47 0
	l32i	a2, a2, 108
.LVL14:
	mov.n	a13, a4
	mov.n	a12, a5
	mov.n	a11, a3
	l32i.n	a10, a2, 8
	call8	esp_partition_write
.LVL15:
	mov.n	a2, a10
.LVL16:
	.loc 1 49 0
	beqz.n	a10, .L8
	.loc 1 50 0 discriminator 2
	call8	esp_log_timestamp
.LVL17:
	l32r	a8, .LC3
	l32i.n	a11, a8, 0
	s32i.n	a2, sp, 4
	s32i.n	a4, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 1
	call8	esp_log_write
.LVL18:
	.loc 1 51 0 discriminator 2
	movi.n	a2, -1
.LVL19:
	retw.n
.LVL20:
.L8:
	.loc 1 53 0
	movi.n	a2, 0
.LVL21:
	.loc 1 54 0
	retw.n
.LFE18:
	.size	spiffs_api_write, .-spiffs_api_write
	.section	.rodata.str1.4
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: failed to erase addr %08x, size %08x, err %d\033[0m\n"
	.section	.text.spiffs_api_erase,"ax",@progbits
	.literal_position
	.literal .LC6, TAG
	.literal .LC8, .LC7
	.align	4
	.global	spiffs_api_erase
	.type	spiffs_api_erase, @function
spiffs_api_erase:
.LFB19:
	.loc 1 57 0
.LVL22:
	entry	sp, 48
.LCFI4:
	.loc 1 58 0
	l32i	a2, a2, 108
.LVL23:
	mov.n	a12, a4
	mov.n	a11, a3
	l32i.n	a10, a2, 8
	call8	esp_partition_erase_range
.LVL24:
	mov.n	a2, a10
.LVL25:
	.loc 1 60 0
	beqz.n	a10, .L11
	.loc 1 61 0 discriminator 2
	call8	esp_log_timestamp
.LVL26:
	l32r	a8, .LC6
	l32i.n	a11, a8, 0
	s32i.n	a2, sp, 4
	s32i.n	a4, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 1
	call8	esp_log_write
.LVL27:
	.loc 1 62 0 discriminator 2
	movi.n	a2, -1
.LVL28:
	retw.n
.LVL29:
.L11:
	.loc 1 64 0
	movi.n	a2, 0
.LVL30:
	.loc 1 65 0
	retw.n
.LFE19:
	.size	spiffs_api_erase, .-spiffs_api_erase
	.section	.rodata.str1.4
	.align	4
.LC11:
	.string	"\033[0;31mE (%d) %s: CHECK: type:%s, report:%s, %x:%x\033[0m\n"
	.section	.text.spiffs_api_check,"ax",@progbits
	.literal_position
	.literal .LC9, TAG
	.literal .LC10, spiffs_check_type_str$6537
	.literal .LC12, .LC11
	.literal .LC13, spiffs_check_report_str$6538
	.align	4
	.global	spiffs_api_check
	.type	spiffs_api_check, @function
spiffs_api_check:
.LFB20:
	.loc 1 69 0
.LVL31:
	entry	sp, 48
.LCFI5:
	.loc 1 86 0
	beqz.n	a4, .L12
	.loc 1 87 0 discriminator 2
	call8	esp_log_timestamp
.LVL32:
	l32r	a8, .LC9
	l32i.n	a11, a8, 0
	l32r	a8, .LC10
	addx4	a3, a3, a8
.LVL33:
	s32i.n	a6, sp, 8
	s32i.n	a5, sp, 4
	l32r	a5, .LC13
.LVL34:
	addx4	a4, a4, a5
.LVL35:
	l32i.n	a4, a4, 0
	s32i.n	a4, sp, 0
	l32i.n	a15, a3, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC12
	movi.n	a10, 1
	call8	esp_log_write
.LVL36:
.L12:
	retw.n
.LFE20:
	.size	spiffs_api_check, .-spiffs_api_check
	.section	.rodata.str1.4
	.align	4
.LC14:
	.string	"PROGRESS"
	.align	4
.LC15:
	.string	"ERROR"
	.align	4
.LC16:
	.string	"FIX INDEX"
	.align	4
.LC17:
	.string	"FIX LOOKUP"
	.align	4
.LC18:
	.string	"DELETE ORPHANED INDEX"
	.align	4
.LC19:
	.string	"DELETE PAGE"
	.align	4
.LC20:
	.string	"DELETE BAD FILE"
	.section	.rodata.spiffs_check_report_str$6538,"a",@progbits
	.align	4
	.type	spiffs_check_report_str$6538, @object
	.size	spiffs_check_report_str$6538, 28
spiffs_check_report_str$6538:
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.section	.rodata.str1.4
	.align	4
.LC21:
	.string	"LOOKUP"
	.align	4
.LC22:
	.string	"INDEX"
	.align	4
.LC23:
	.string	"PAGE"
	.section	.rodata.spiffs_check_type_str$6537,"a",@progbits
	.align	4
	.type	spiffs_check_type_str$6537, @object
	.size	spiffs_check_type_str$6537, 12
spiffs_check_type_str$6537:
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.global	TAG
	.section	.rodata.str1.4
	.align	4
.LC24:
	.string	"SPIFFS"
	.section	.data.TAG,"aw",@progbits
	.align	4
	.type	TAG, @object
	.size	TAG, 4
TAG:
	.word	.LC24
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI2-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI4-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI5-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_partition.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/semphr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/include/spiffs_config.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs/src/spiffs.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa65
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xc
	.4byte	.LASF155
	.4byte	.LASF156
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
	.byte	0x2
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
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x7
	.4byte	0x95
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x18
	.4byte	0xb2
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x6f
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x76
	.4byte	0xbd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x1f
	.4byte	0x121
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
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x26
	.4byte	0x13a
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0x29
	.4byte	0x121
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0x7
	.byte	0x2f
	.4byte	0x1fa
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x12
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x13
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x17
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x19
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x1a
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x1b
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x1d
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x81
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x82
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x7
	.byte	0x4f
	.4byte	0x145
	.uleb128 0xa
	.byte	0x24
	.byte	0x7
	.byte	0x62
	.4byte	0x256
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0x63
	.4byte	0x13a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.byte	0x64
	.4byte	0x1fa
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x7
	.byte	0x65
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0x66
	.4byte	0xbd
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0x67
	.4byte	0x256
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.byte	0x68
	.4byte	0xd3
	.byte	0x21
	.byte	0
	.uleb128 0xc
	.4byte	0x95
	.4byte	0x266
	.uleb128 0xd
	.4byte	0x85
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x7
	.byte	0x69
	.4byte	0x205
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x8
	.byte	0x58
	.4byte	0x8c
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x9
	.byte	0x4f
	.4byte	0x271
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0xa
	.byte	0x36
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0xa
	.byte	0x37
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0xa
	.byte	0x39
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0xa
	.byte	0x3b
	.4byte	0x4c
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xa
	.2byte	0x12f
	.4byte	0x29d
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0xa
	.2byte	0x132
	.4byte	0x29d
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0xa
	.2byte	0x136
	.4byte	0x29d
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0xb
	.byte	0x55
	.4byte	0x2e2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2e8
	.uleb128 0xf
	.4byte	0x287
	.4byte	0x306
	.uleb128 0x10
	.4byte	0x306
	.uleb128 0x10
	.4byte	0x292
	.uleb128 0x10
	.4byte	0x292
	.uleb128 0x10
	.4byte	0x43a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30c
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0x74
	.byte	0xb
	.byte	0xe7
	.4byte	0x43a
	.uleb128 0x12
	.string	"cfg"
	.byte	0xb
	.byte	0xe9
	.4byte	0x5cf
	.byte	0
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0xb
	.byte	0xeb
	.4byte	0x292
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0xb
	.byte	0xee
	.4byte	0x2b3
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0xb
	.byte	0xf0
	.4byte	0x25
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0xb
	.byte	0xf2
	.4byte	0x2b3
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0xb
	.byte	0xf4
	.4byte	0x25
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0xb
	.byte	0xf7
	.4byte	0x43a
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0xb
	.byte	0xf9
	.4byte	0x43a
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0xb
	.byte	0xfb
	.4byte	0x43a
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0xb
	.byte	0xfd
	.4byte	0x292
	.byte	0x40
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0xb
	.2byte	0x100
	.4byte	0x287
	.byte	0x44
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0xb
	.2byte	0x103
	.4byte	0x292
	.byte	0x48
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0xb
	.2byte	0x105
	.4byte	0x292
	.byte	0x4c
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0xb
	.2byte	0x107
	.4byte	0x292
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0xb
	.2byte	0x109
	.4byte	0x2a8
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0xb
	.2byte	0x10b
	.4byte	0x2cb
	.byte	0x56
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x113
	.4byte	0x8c
	.byte	0x58
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x115
	.4byte	0x292
	.byte	0x5c
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x11d
	.4byte	0x4e1
	.byte	0x60
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x11f
	.4byte	0x53b
	.byte	0x64
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x121
	.4byte	0x2a8
	.byte	0x68
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x123
	.4byte	0x8c
	.byte	0x6c
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x125
	.4byte	0x292
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2a8
	.uleb128 0x4
	.4byte	.LASF98
	.byte	0xb
	.byte	0x57
	.4byte	0x2e2
	.uleb128 0x4
	.4byte	.LASF99
	.byte	0xb
	.byte	0x59
	.4byte	0x456
	.uleb128 0x6
	.byte	0x4
	.4byte	0x45c
	.uleb128 0xf
	.4byte	0x287
	.4byte	0x475
	.uleb128 0x10
	.4byte	0x306
	.uleb128 0x10
	.4byte	0x292
	.uleb128 0x10
	.4byte	0x292
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x66
	.4byte	0x494
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0xb
	.byte	0x6a
	.4byte	0x475
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x6d
	.4byte	0x4d6
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF111
	.byte	0xb
	.byte	0x75
	.4byte	0x49f
	.uleb128 0x4
	.4byte	.LASF112
	.byte	0xb
	.byte	0x79
	.4byte	0x4ec
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4f2
	.uleb128 0x14
	.4byte	0x511
	.uleb128 0x10
	.4byte	0x306
	.uleb128 0x10
	.4byte	0x494
	.uleb128 0x10
	.4byte	0x4d6
	.uleb128 0x10
	.4byte	0x292
	.uleb128 0x10
	.4byte	0x292
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.byte	0x81
	.4byte	0x530
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF115
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF116
	.byte	0xb
	.byte	0x88
	.4byte	0x511
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0xb
	.byte	0x8b
	.4byte	0x546
	.uleb128 0x6
	.byte	0x4
	.4byte	0x54c
	.uleb128 0x14
	.4byte	0x566
	.uleb128 0x10
	.4byte	0x306
	.uleb128 0x10
	.4byte	0x530
	.uleb128 0x10
	.4byte	0x2cb
	.uleb128 0x10
	.4byte	0x2bf
	.byte	0
	.uleb128 0xa
	.byte	0x20
	.byte	0xb
	.byte	0xc8
	.4byte	0x5cf
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0xb
	.byte	0xca
	.4byte	0x2d7
	.byte	0
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0xb
	.byte	0xcc
	.4byte	0x440
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xb
	.byte	0xce
	.4byte	0x44b
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xb
	.byte	0xd1
	.4byte	0x292
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xb
	.byte	0xd4
	.4byte	0x292
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xb
	.byte	0xd6
	.4byte	0x292
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xb
	.byte	0xdb
	.4byte	0x292
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0xb
	.byte	0xde
	.4byte	0x292
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF126
	.byte	0xb
	.byte	0xe5
	.4byte	0x566
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x126
	.4byte	0x30c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5da
	.uleb128 0xa
	.byte	0x54
	.byte	0xc
	.byte	0x22
	.4byte	0x678
	.uleb128 0x12
	.string	"fs"
	.byte	0xc
	.byte	0x23
	.4byte	0x5e6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0xc
	.byte	0x24
	.4byte	0x27c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0xc
	.byte	0x25
	.4byte	0x678
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0xc
	.byte	0x26
	.4byte	0x683
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0xc
	.byte	0x27
	.4byte	0xd3
	.byte	0x1c
	.uleb128 0x12
	.string	"cfg"
	.byte	0xc
	.byte	0x28
	.4byte	0x5cf
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0xc
	.byte	0x29
	.4byte	0x693
	.byte	0x40
	.uleb128 0x12
	.string	"fds"
	.byte	0xc
	.byte	0x2a
	.4byte	0x693
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0xc
	.byte	0x2b
	.4byte	0xbd
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0xc
	.byte	0x2c
	.4byte	0x693
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0xc
	.byte	0x2d
	.4byte	0xbd
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x67e
	.uleb128 0x7
	.4byte	0x266
	.uleb128 0xc
	.4byte	0x95
	.4byte	0x693
	.uleb128 0xd
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0xc
	.byte	0x2e
	.4byte	0x5ec
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0x1
	.byte	0x18
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e0
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.byte	0x18
	.4byte	0x5e6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL1
	.4byte	0xa18
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0x1
	.byte	0x1d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x71b
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.byte	0x1d
	.4byte	0x5e6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0xa24
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF138
	.byte	0x1
	.byte	0x22
	.4byte	0x287
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ce
	.uleb128 0x1a
	.string	"fs"
	.byte	0x1
	.byte	0x22
	.4byte	0x5e6
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x1
	.byte	0x22
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF62
	.byte	0x1
	.byte	0x22
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"dst"
	.byte	0x1
	.byte	0x22
	.4byte	0x693
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x24
	.4byte	0xc8
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LVL6
	.4byte	0xa30
	.4byte	0x798
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL8
	.4byte	0xa3b
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0xa46
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF139
	.byte	0x1
	.byte	0x2d
	.4byte	0x287
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x881
	.uleb128 0x1a
	.string	"fs"
	.byte	0x1
	.byte	0x2d
	.4byte	0x5e6
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x1
	.byte	0x2d
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2d
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x16
	.string	"src"
	.byte	0x1
	.byte	0x2d
	.4byte	0x693
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x2f
	.4byte	0xc8
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.LVL15
	.4byte	0xa51
	.4byte	0x84b
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
	.byte	0x75
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL17
	.4byte	0xa3b
	.uleb128 0x17
	.4byte	.LVL18
	.4byte	0xa46
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF140
	.byte	0x1
	.byte	0x38
	.4byte	0x287
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x921
	.uleb128 0x1a
	.string	"fs"
	.byte	0x1
	.byte	0x38
	.4byte	0x5e6
	.4byte	.LLST4
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x1
	.byte	0x38
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF62
	.byte	0x1
	.byte	0x38
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.string	"err"
	.byte	0x1
	.byte	0x3a
	.4byte	0xc8
	.4byte	.LLST5
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0xa5c
	.4byte	0x8eb
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
	.uleb128 0x1e
	.4byte	.LVL26
	.4byte	0xa3b
	.uleb128 0x17
	.4byte	.LVL27
	.4byte	0xa46
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF141
	.byte	0x1
	.byte	0x43
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9dd
	.uleb128 0x16
	.string	"fs"
	.byte	0x1
	.byte	0x43
	.4byte	0x5e6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.4byte	.LASF59
	.byte	0x1
	.byte	0x43
	.4byte	0x494
	.4byte	.LLST6
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x1
	.byte	0x44
	.4byte	0x4d6
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x1
	.byte	0x44
	.4byte	0xbd
	.4byte	.LLST8
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x1
	.byte	0x44
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.byte	0x46
	.4byte	0x9ed
	.uleb128 0x5
	.byte	0x3
	.4byte	spiffs_check_type_str$6537
	.uleb128 0x20
	.4byte	.LASF146
	.byte	0x1
	.byte	0x4c
	.4byte	0xa02
	.uleb128 0x5
	.byte	0x3
	.4byte	spiffs_check_report_str$6538
	.uleb128 0x1e
	.4byte	.LVL32
	.4byte	0xa3b
	.uleb128 0x17
	.4byte	.LVL36
	.4byte	0xa46
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x9c
	.4byte	0x9ed
	.uleb128 0xd
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0x9dd
	.uleb128 0xc
	.4byte	0x9c
	.4byte	0xa02
	.uleb128 0xd
	.4byte	0x85
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.4byte	0x9f2
	.uleb128 0x21
	.string	"TAG"
	.byte	0x1
	.byte	0x16
	.4byte	0x9c
	.uleb128 0x5
	.byte	0x3
	.4byte	TAG
	.uleb128 0x22
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x8
	.2byte	0x38a
	.uleb128 0x22
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x8
	.2byte	0x265
	.uleb128 0x23
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x7
	.byte	0xcd
	.uleb128 0x23
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x6
	.byte	0x57
	.uleb128 0x23
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x6
	.byte	0x6b
	.uleb128 0x23
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x7
	.byte	0xee
	.uleb128 0x22
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x7
	.2byte	0x101
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
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
	.uleb128 0x8
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
	.uleb128 0x5
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
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL34
	.4byte	.LVL36-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL36-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF96:
	.string	"user_data"
.LASF123:
	.string	"phys_erase_block"
.LASF127:
	.string	"spiffs"
.LASF156:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\spiffs"
.LASF5:
	.string	"__uint8_t"
.LASF107:
	.string	"SPIFFS_CHECK_FIX_LOOKUP"
.LASF59:
	.string	"type"
.LASF133:
	.string	"cache_sz"
.LASF111:
	.string	"spiffs_check_report"
.LASF138:
	.string	"spiffs_api_read"
.LASF131:
	.string	"by_label"
.LASF129:
	.string	"partition"
.LASF9:
	.string	"long long unsigned int"
.LASF95:
	.string	"mounted"
.LASF136:
	.string	"spiffs_api_unlock"
.LASF130:
	.string	"base_path"
.LASF137:
	.string	"addr"
.LASF68:
	.string	"s32_t"
.LASF66:
	.string	"QueueHandle_t"
.LASF155:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs_api.c"
.LASF157:
	.string	"spiffs_t"
.LASF99:
	.string	"spiffs_erase"
.LASF98:
	.string	"spiffs_write"
.LASF25:
	.string	"ESP_LOG_DEBUG"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF110:
	.string	"SPIFFS_CHECK_DELETE_BAD_FILE"
.LASF142:
	.string	"report"
.LASF57:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF10:
	.string	"long int"
.LASF135:
	.string	"spiffs_api_lock"
.LASF151:
	.string	"esp_log_write"
.LASF147:
	.string	"xQueueGenericReceive"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF100:
	.string	"SPIFFS_CHECK_LOOKUP"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF19:
	.string	"BaseType_t"
.LASF92:
	.string	"cache_size"
.LASF31:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF7:
	.string	"__uint32_t"
.LASF90:
	.string	"max_erase_count"
.LASF79:
	.string	"cursor_block_ix"
.LASF134:
	.string	"esp_spiffs_t"
.LASF112:
	.string	"spiffs_check_callback"
.LASF115:
	.string	"SPIFFS_CB_DELETED"
.LASF119:
	.string	"hal_write_f"
.LASF84:
	.string	"fd_count"
.LASF114:
	.string	"SPIFFS_CB_UPDATED"
.LASF88:
	.string	"stats_p_deleted"
.LASF29:
	.string	"esp_partition_type_t"
.LASF12:
	.string	"long unsigned int"
.LASF74:
	.string	"spiffs_obj_id"
.LASF73:
	.string	"spiffs_page_ix"
.LASF69:
	.string	"u32_t"
.LASF120:
	.string	"hal_erase_f"
.LASF105:
	.string	"SPIFFS_CHECK_ERROR"
.LASF148:
	.string	"xQueueGenericSend"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF62:
	.string	"size"
.LASF124:
	.string	"log_block_size"
.LASF83:
	.string	"fd_space"
.LASF81:
	.string	"lu_work"
.LASF102:
	.string	"SPIFFS_CHECK_PAGE"
.LASF63:
	.string	"label"
.LASF145:
	.string	"spiffs_check_type_str"
.LASF4:
	.string	"short int"
.LASF6:
	.string	"__int32_t"
.LASF126:
	.string	"spiffs_config"
.LASF78:
	.string	"free_cursor_obj_lu_entry"
.LASF94:
	.string	"file_cb_f"
.LASF24:
	.string	"ESP_LOG_INFO"
.LASF71:
	.string	"u8_t"
.LASF11:
	.string	"sizetype"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF85:
	.string	"err_code"
.LASF61:
	.string	"address"
.LASF20:
	.string	"TickType_t"
.LASF28:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF87:
	.string	"stats_p_allocated"
.LASF86:
	.string	"free_blocks"
.LASF27:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF132:
	.string	"fds_sz"
.LASF76:
	.string	"block_count"
.LASF109:
	.string	"SPIFFS_CHECK_DELETE_PAGE"
.LASF125:
	.string	"log_page_size"
.LASF101:
	.string	"SPIFFS_CHECK_INDEX"
.LASF140:
	.string	"spiffs_api_erase"
.LASF139:
	.string	"spiffs_api_write"
.LASF93:
	.string	"check_cb_f"
.LASF60:
	.string	"subtype"
.LASF113:
	.string	"SPIFFS_CB_CREATED"
.LASF18:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF141:
	.string	"spiffs_api_check"
.LASF32:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF33:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF34:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF154:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF36:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF37:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF38:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF39:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF150:
	.string	"esp_log_timestamp"
.LASF22:
	.string	"ESP_LOG_ERROR"
.LASF89:
	.string	"cleaning"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF121:
	.string	"phys_size"
.LASF122:
	.string	"phys_addr"
.LASF64:
	.string	"encrypted"
.LASF108:
	.string	"SPIFFS_CHECK_DELETE_ORPHANED_INDEX"
.LASF116:
	.string	"spiffs_fileop_type"
.LASF16:
	.string	"uint32_t"
.LASF128:
	.string	"lock"
.LASF67:
	.string	"SemaphoreHandle_t"
.LASF13:
	.string	"char"
.LASF26:
	.string	"ESP_LOG_VERBOSE"
.LASF0:
	.string	"unsigned int"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF58:
	.string	"esp_partition_subtype_t"
.LASF77:
	.string	"free_cursor_block_ix"
.LASF21:
	.string	"ESP_LOG_NONE"
.LASF153:
	.string	"esp_partition_erase_range"
.LASF152:
	.string	"esp_partition_write"
.LASF80:
	.string	"cursor_obj_lu_entry"
.LASF35:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF118:
	.string	"hal_read_f"
.LASF82:
	.string	"work"
.LASF1:
	.string	"short unsigned int"
.LASF143:
	.string	"arg1"
.LASF144:
	.string	"arg2"
.LASF103:
	.string	"spiffs_check_type"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF70:
	.string	"u16_t"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF23:
	.string	"ESP_LOG_WARN"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF97:
	.string	"config_magic"
.LASF72:
	.string	"spiffs_block_ix"
.LASF17:
	.string	"esp_err_t"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF14:
	.string	"uint8_t"
.LASF149:
	.string	"esp_partition_read"
.LASF75:
	.string	"spiffs_read"
.LASF56:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF30:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF117:
	.string	"spiffs_file_callback"
.LASF106:
	.string	"SPIFFS_CHECK_FIX_INDEX"
.LASF146:
	.string	"spiffs_check_report_str"
.LASF65:
	.string	"esp_partition_t"
.LASF91:
	.string	"cache"
.LASF104:
	.string	"SPIFFS_CHECK_PROGRESS"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
