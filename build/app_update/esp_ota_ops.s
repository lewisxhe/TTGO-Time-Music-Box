	.file	"esp_ota_ops.c"
	.text
.Ltext0:
	.section	.text.is_ota_partition,"ax",@progbits
	.align	4
	.type	is_ota_partition, @function
is_ota_partition:
.LFB21:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/app_update/esp_ota_ops.c"
	.loc 1 72 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 76 0
	beqz.n	a2, .L3
	.loc 1 74 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L4
	.loc 1 75 0
	l32i.n	a2, a2, 4
.LVL1:
	movi.n	a8, 0xf
	bgeu	a8, a2, .L5
	.loc 1 76 0 discriminator 3
	movi.n	a8, 0x1f
	bgeu	a8, a2, .L6
	.loc 1 76 0 is_stmt 0
	movi.n	a2, 0
	retw.n
.LVL2:
.L3:
	movi.n	a2, 0
.LVL3:
	retw.n
.LVL4:
.L4:
	movi.n	a2, 0
.LVL5:
	retw.n
.L5:
	movi.n	a2, 0
	retw.n
.L6:
	movi.n	a2, 1
	.loc 1 77 0 is_stmt 1
	retw.n
.LFE21:
	.size	is_ota_partition, .-is_ota_partition
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"ota_app_count < 16 && \"must erase the partition before writing to it\""
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/app_update/esp_ota_ops.c"
	.section	.text.get_ota_partition_count,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$5634
	.literal .LC4, .LC3
	.align	4
	.type	get_ota_partition_count, @function
get_ota_partition_count:
.LFB28:
	.loc 1 278 0
	entry	sp, 32
.LCFI1:
.LVL6:
	.loc 1 279 0
	movi.n	a2, 0
	.loc 1 280 0
	j	.L8
.LVL7:
.L10:
	.loc 1 281 0
	movi.n	a8, 0xf
	bgeu	a8, a2, .L9
	.loc 1 281 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi	a11, 0x119
	l32r	a10, .LC4
	call8	__assert_func
.LVL8:
.L9:
	.loc 1 282 0 is_stmt 1
	addi.n	a2, a2, 1
.LVL9:
	extui	a2, a2, 0, 16
.LVL10:
.L8:
	.loc 1 280 0
	movi.n	a12, 0
	addi	a11, a2, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL11:
	bnez.n	a10, .L10
	.loc 1 285 0
	extui	a2, a2, 0, 8
.LVL12:
	retw.n
.LFE28:
	.size	get_ota_partition_count, .-get_ota_partition_count
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"esp_ota_ops"
	.align	4
.LC7:
	.string	"\033[0;31mE (%d) %s: invalid partition table, no app partitions\033[0m\n"
	.section	.text.find_default_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.type	find_default_boot_partition, @function
find_default_boot_partition:
.LFB31:
	.loc 1 409 0
	entry	sp, 32
.LCFI2:
	.loc 1 413 0
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL13:
	.loc 1 414 0
	bnez.n	a10, .L15
	movi.n	a2, 0x10
	j	.L13
.LVL14:
.L14:
.LBB7:
	.loc 1 420 0
	movi.n	a12, 0
	mov.n	a11, a2
	mov.n	a10, a12
.LVL15:
	call8	esp_partition_find_first
.LVL16:
	.loc 1 421 0
	bnez.n	a10, .L16
	.loc 1 419 0 discriminator 2
	addi.n	a2, a2, 1
.LVL17:
.L13:
	.loc 1 419 0 is_stmt 0 discriminator 1
	bnei	a2, 32, .L14
.LBE7:
	.loc 1 427 0 is_stmt 1
	movi.n	a12, 0
	movi.n	a11, 0x20
	mov.n	a10, a12
.LVL18:
	call8	esp_partition_find_first
.LVL19:
	.loc 1 428 0
	bnez.n	a10, .L17
	.loc 1 432 0 discriminator 2
	call8	esp_log_timestamp
.LVL20:
	l32r	a11, .LC6
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC8
	movi.n	a10, 1
	call8	esp_log_write
.LVL21:
	.loc 1 433 0 discriminator 2
	movi.n	a2, 0
.LVL22:
	retw.n
.LVL23:
.L15:
	.loc 1 415 0
	mov.n	a2, a10
	retw.n
.LVL24:
.L16:
.LBB8:
	.loc 1 422 0
	mov.n	a2, a10
.LVL25:
	retw.n
.LVL26:
.L17:
.LBE8:
	.loc 1 429 0
	mov.n	a2, a10
.LVL27:
	.loc 1 434 0
	retw.n
.LFE31:
	.size	find_default_boot_partition, .-find_default_boot_partition
	.section	.text.ota_select_crc,"ax",@progbits
	.align	4
	.type	ota_select_crc, @function
ota_select_crc:
.LFB25:
	.loc 1 250 0
.LVL28:
	entry	sp, 32
.LCFI3:
	.loc 1 251 0
	movi.n	a12, 4
	mov.n	a11, a2
	movi.n	a10, -1
	call8	crc32_le
.LVL29:
	.loc 1 252 0
	mov.n	a2, a10
.LVL30:
	retw.n
.LFE25:
	.size	ota_select_crc, .-ota_select_crc
	.section	.text.ota_select_valid,"ax",@progbits
	.align	4
	.type	ota_select_valid, @function
ota_select_valid:
.LFB26:
	.loc 1 255 0
.LVL31:
	entry	sp, 32
.LCFI4:
	.loc 1 256 0
	l32i.n	a8, a2, 0
	beqi	a8, -1, .L21
	.loc 1 256 0 is_stmt 0 discriminator 1
	l32i.n	a3, a2, 28
	mov.n	a10, a2
	call8	ota_select_crc
.LVL32:
	bne	a3, a10, .L22
	.loc 1 256 0
	movi.n	a2, 1
.LVL33:
	retw.n
.LVL34:
.L21:
	movi.n	a2, 0
.LVL35:
	retw.n
.LVL36:
.L22:
	movi.n	a2, 0
.LVL37:
	.loc 1 257 0 is_stmt 1
	retw.n
.LFE26:
	.size	ota_select_valid, .-ota_select_valid
	.section	.text.rewrite_ota_seq,"ax",@progbits
	.literal_position
	.literal .LC9, s_ota_select
	.literal .LC10, 4096
	.align	4
	.type	rewrite_ota_seq, @function
rewrite_ota_seq:
.LFB27:
	.loc 1 260 0
.LVL38:
	entry	sp, 32
.LCFI5:
	.loc 1 263 0
	bgeui	a3, 2, .L25
	.loc 1 264 0
	slli	a5, a3, 5
	l32r	a8, .LC9
	add.n	a5, a8, a5
	s32i.n	a2, a5, 0
	.loc 1 265 0
	mov.n	a10, a5
	call8	ota_select_crc
.LVL39:
	s32i.n	a10, a5, 28
	.loc 1 266 0
	slli	a2, a3, 12
.LVL40:
	l32r	a12, .LC10
	mov.n	a11, a2
	mov.n	a10, a4
	call8	esp_partition_erase_range
.LVL41:
	.loc 1 267 0
	bnez.n	a10, .L26
	.loc 1 270 0
	slli	a3, a3, 5
.LVL42:
	movi.n	a13, 0x20
	l32r	a12, .LC9
	add.n	a12, a12, a3
	mov.n	a11, a2
	mov.n	a10, a4
.LVL43:
	call8	esp_partition_write
.LVL44:
	mov.n	a2, a10
	retw.n
.LVL45:
.L25:
	.loc 1 273 0
	movi	a2, 0x102
.LVL46:
	retw.n
.LVL47:
.L26:
	.loc 1 268 0
	mov.n	a2, a10
	.loc 1 275 0
	retw.n
.LFE27:
	.size	rewrite_ota_seq, .-rewrite_ota_seq
	.section	.text.esp_rewrite_ota_data,"ax",@progbits
	.literal_position
	.literal .LC11, ota_data_map$5646
	.literal .LC12, s_ota_select
	.literal .LC13, s_ota_select+32
	.align	4
	.type	esp_rewrite_ota_data, @function
esp_rewrite_ota_data:
.LFB29:
	.loc 1 288 0
.LVL48:
	entry	sp, 48
.LCFI6:
.LVL49:
	.loc 1 295 0
	movi.n	a11, 0
	s32i.n	a11, sp, 0
	.loc 1 297 0
	mov.n	a12, a11
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL50:
	mov.n	a3, a10
.LVL51:
	.loc 1 298 0
	beqz.n	a10, .L39
	.loc 1 299 0
	call8	get_ota_partition_count
.LVL52:
	.loc 1 315 0
	extui	a2, a2, 0, 4
.LVL53:
	mov.n	a4, a10
	bgeu	a2, a10, .L40
	.loc 1 319 0
	l32r	a15, .LC11
	mov.n	a14, sp
	movi.n	a13, 0
	l32i.n	a12, a3, 12
	mov.n	a11, a13
	mov.n	a10, a3
.LVL54:
	call8	esp_partition_mmap
.LVL55:
	.loc 1 320 0
	bnez.n	a10, .L41
	.loc 1 324 0
	l32i.n	a6, sp, 0
	l32r	a5, .LC12
	movi.n	a7, 0x20
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, a5
.LVL56:
	call8	memcpy
.LVL57:
	.loc 1 325 0
	mov.n	a12, a7
	addmi	a11, a6, 0x1000
	l32r	a10, .LC13
	call8	memcpy
.LVL58:
	.loc 1 326 0
	l32r	a6, .LC11
	l32i.n	a10, a6, 0
	call8	spi_flash_munmap
.LVL59:
	.loc 1 329 0
	mov.n	a10, a5
	call8	ota_select_valid
.LVL60:
	beqz.n	a10, .L29
	.loc 1 329 0 is_stmt 0 discriminator 1
	l32r	a10, .LC13
	call8	ota_select_valid
.LVL61:
	beqz.n	a10, .L29
	.loc 1 330 0 is_stmt 1
	l32r	a5, .LC12
	l32i.n	a6, a5, 0
	l32i.n	a5, a5, 32
	maxu	a11, a6, a5
.LVL62:
	.loc 1 292 0
	movi.n	a9, 0
	.loc 1 331 0
	j	.L30
.LVL63:
.L31:
	.loc 1 332 0
	addi.n	a9, a9, 1
.LVL64:
.L30:
	.loc 1 331 0
	addi.n	a10, a2, 1
	remu	a10, a10, a4
	mull	a8, a9, a4
	add.n	a10, a10, a8
	bltu	a10, a11, .L31
	.loc 1 335 0
	bltu	a6, a5, .L32
	.loc 1 336 0
	mov.n	a12, a3
	movi.n	a11, 1
.LVL65:
	call8	rewrite_ota_seq
.LVL66:
	mov.n	a2, a10
	retw.n
.LVL67:
.L32:
	.loc 1 338 0
	mov.n	a12, a3
	movi.n	a11, 0
.LVL68:
	call8	rewrite_ota_seq
.LVL69:
	mov.n	a2, a10
	retw.n
.LVL70:
.L29:
	.loc 1 341 0
	l32r	a10, .LC12
	call8	ota_select_valid
.LVL71:
	bnez.n	a10, .L42
	j	.L44
.LVL72:
.L35:
	.loc 1 343 0
	addi.n	a9, a9, 1
.LVL73:
	j	.L33
.LVL74:
.L42:
	movi.n	a9, 0
.LVL75:
.L33:
	.loc 1 342 0
	l32r	a8, .LC12
	l32i.n	a11, a8, 0
	addi.n	a10, a2, 1
	remu	a10, a10, a4
	mull	a8, a9, a4
	add.n	a10, a10, a8
	bltu	a10, a11, .L35
	.loc 1 345 0
	mov.n	a12, a3
	movi.n	a11, 1
	call8	rewrite_ota_seq
.LVL76:
	mov.n	a2, a10
	retw.n
.LVL77:
.L44:
	.loc 1 347 0
	l32r	a10, .LC13
	call8	ota_select_valid
.LVL78:
	bnez.n	a10, .L43
	j	.L45
.LVL79:
.L38:
	.loc 1 349 0
	addi.n	a9, a9, 1
.LVL80:
	j	.L36
.LVL81:
.L43:
	movi.n	a9, 0
.LVL82:
.L36:
	.loc 1 348 0
	l32r	a8, .LC12
	l32i.n	a11, a8, 32
	addi.n	a10, a2, 1
	remu	a10, a10, a4
	mull	a8, a9, a4
	add.n	a10, a10, a8
	bltu	a10, a11, .L38
	.loc 1 351 0
	mov.n	a12, a3
	movi.n	a11, 0
	call8	rewrite_ota_seq
.LVL83:
	mov.n	a2, a10
	retw.n
.LVL84:
.L45:
	.loc 1 355 0
	mov.n	a12, a3
	movi.n	a11, 0
	addi.n	a10, a2, 1
	call8	rewrite_ota_seq
.LVL85:
	mov.n	a2, a10
	retw.n
.LVL86:
.L39:
	.loc 1 359 0
	movi	a2, 0x105
.LVL87:
	retw.n
.LVL88:
.L40:
	.loc 1 316 0
	movi	a2, 0x102
	retw.n
.LVL89:
.L41:
	.loc 1 322 0
	mov.n	a2, a10
	.loc 1 361 0
	retw.n
.LFE29:
	.size	esp_rewrite_ota_data, .-esp_rewrite_ota_data
	.section	.rodata.str1.4
	.align	4
.LC15:
	.string	"phys_offs != SPI_FLASH_CACHE2PHYS_FAIL"
	.align	4
.LC19:
	.string	"it != NULL"
	.section	.text.esp_ota_get_running_partition,"ax",@progbits
	.literal_position
	.literal .LC14, esp_ota_get_running_partition
	.literal .LC16, .LC15
	.literal .LC17, __func__$5683
	.literal .LC18, .LC3
	.literal .LC20, .LC19
	.align	4
	.global	esp_ota_get_running_partition
	.type	esp_ota_get_running_partition, @function
esp_ota_get_running_partition:
.LFB33:
	.loc 1 495 0
	entry	sp, 32
.LCFI7:
	.loc 1 499 0
	l32r	a10, .LC14
	call8	spi_flash_cache2phys
.LVL90:
	mov.n	a4, a10
.LVL91:
	.loc 1 501 0
	bnei	a10, -1, .L47
	.loc 1 501 0 is_stmt 0 discriminator 1
	l32r	a13, .LC16
	l32r	a12, .LC17
	movi	a11, 0x1f5
	l32r	a10, .LC18
	call8	__assert_func
.LVL92:
.L47:
	.loc 1 503 0 is_stmt 1
	movi.n	a12, 0
	movi	a11, 0xff
	mov.n	a10, a12
	call8	esp_partition_find
.LVL93:
	mov.n	a3, a10
.LVL94:
	.loc 1 506 0
	bnez.n	a10, .L48
	.loc 1 506 0 is_stmt 0 discriminator 1
	l32r	a13, .LC20
	l32r	a12, .LC17
	movi	a11, 0x1fa
	l32r	a10, .LC18
	call8	__assert_func
.LVL95:
.L50:
.LBB9:
	.loc 1 509 0 is_stmt 1
	mov.n	a10, a3
	call8	esp_partition_get
.LVL96:
	mov.n	a2, a10
.LVL97:
	.loc 1 510 0
	l32i.n	a9, a10, 8
	bltu	a4, a9, .L49
	.loc 1 510 0 is_stmt 0 discriminator 1
	l32i.n	a8, a10, 12
	add.n	a8, a9, a8
	bgeu	a4, a8, .L49
	.loc 1 511 0 is_stmt 1
	mov.n	a10, a3
	call8	esp_partition_iterator_release
.LVL98:
	.loc 1 512 0
	retw.n
.L49:
	.loc 1 514 0
	mov.n	a10, a3
	call8	esp_partition_next
.LVL99:
	mov.n	a3, a10
.LVL100:
.L48:
.LBE9:
	.loc 1 508 0
	bnez.n	a3, .L50
	.loc 1 517 0
	call8	abort
.LVL101:
.LFE33:
	.size	esp_ota_get_running_partition, .-esp_ota_get_running_partition
	.section	.text.esp_ota_begin,"ax",@progbits
	.literal_position
	.literal .LC21, 5377
	.literal .LC22, s_ota_ops_entries_head
	.literal .LC23, s_ota_ops_last_handle
	.align	4
	.global	esp_ota_begin
	.type	esp_ota_begin, @function
esp_ota_begin:
.LFB22:
	.loc 1 80 0
.LVL102:
	entry	sp, 32
.LCFI8:
.LVL103:
	.loc 1 84 0
	movi.n	a8, 1
	movi.n	a11, 0
	mov.n	a9, a11
	moveqz	a9, a8, a2
	.loc 1 84 0
	movnez	a8, a11, a4
	or	a8, a8, a9
	.loc 1 84 0
	bne	a8, a11, .L59
	.loc 1 88 0
	mov.n	a10, a2
	call8	esp_partition_verify
.LVL104:
	mov.n	a2, a10
.LVL105:
	.loc 1 89 0
	beqz.n	a10, .L60
	.loc 1 93 0
	call8	is_ota_partition
.LVL106:
	beqz.n	a10, .L61
	.loc 1 97 0
	call8	esp_ota_get_running_partition
.LVL107:
	beq	a2, a10, .L62
	.loc 1 102 0
	addi.n	a5, a3, -1
	movi.n	a8, -3
	bgeu	a8, a5, .L54
	.loc 1 103 0
	l32i.n	a12, a2, 12
	movi.n	a11, 0
	mov.n	a10, a2
	call8	esp_partition_erase_range
.LVL108:
	j	.L55
.LVL109:
.L54:
	.loc 1 105 0
	srli	a12, a3, 12
	addi.n	a12, a12, 1
	slli	a12, a12, 12
	movi.n	a11, 0
	mov.n	a10, a2
	call8	esp_partition_erase_range
.LVL110:
.L55:
	.loc 1 108 0
	bnez.n	a10, .L63
	.loc 1 112 0
	movi.n	a11, 1
	movi.n	a10, 0x2c
.LVL111:
	call8	calloc
.LVL112:
	.loc 1 113 0
	beqz.n	a10, .L64
	.loc 1 117 0
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	s32i.n	a8, a10, 36
	beqz.n	a8, .L56
	.loc 1 117 0 discriminator 1
	addi	a9, a10, 36
	s32i.n	a9, a8, 40
.L56:
	.loc 1 117 0 is_stmt 0 discriminator 3
	l32r	a8, .LC22
	s32i.n	a10, a8, 0
	s32i.n	a8, a10, 40
	.loc 1 119 0 is_stmt 1 discriminator 3
	movi.n	a8, -3
	bgeu	a8, a5, .L57
	.loc 1 120 0
	l32i.n	a3, a2, 12
.LVL113:
	s32i.n	a3, a10, 8
	j	.L58
.LVL114:
.L57:
	.loc 1 122 0
	s32i.n	a3, a10, 8
.LVL115:
.L58:
	.loc 1 125 0
	s32i.n	a2, a10, 4
	.loc 1 126 0
	l32r	a3, .LC23
	l32i.n	a2, a3, 0
.LVL116:
	addi.n	a2, a2, 1
	s32i.n	a2, a3, 0
	s32i.n	a2, a10, 0
	.loc 1 127 0
	s32i.n	a2, a4, 0
.LVL117:
	.loc 1 128 0
	movi.n	a2, 0
	retw.n
.LVL118:
.L59:
	.loc 1 85 0
	movi	a2, 0x102
.LVL119:
	retw.n
.LVL120:
.L60:
	.loc 1 90 0
	movi	a2, 0x105
.LVL121:
	retw.n
.LVL122:
.L61:
	.loc 1 94 0
	movi	a2, 0x102
.LVL123:
	retw.n
.LVL124:
.L62:
	.loc 1 98 0
	l32r	a2, .LC21
.LVL125:
	retw.n
.LVL126:
.L63:
	.loc 1 109 0
	mov.n	a2, a10
.LVL127:
	retw.n
.LVL128:
.L64:
	.loc 1 114 0
	movi	a2, 0x101
.LVL129:
	.loc 1 129 0
	retw.n
.LFE22:
	.size	esp_ota_begin, .-esp_ota_begin
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"\033[0;31mE (%d) %s: write data is invalid\033[0m\n"
	.align	4
.LC29:
	.string	"it->erased_size > 0 && \"must erase the partition before writing to it\""
	.align	4
.LC33:
	.string	"\033[0;31mE (%d) %s: OTA image has invalid magic byte (expected 0xE9, saw 0x%02x\033[0m\n"
	.align	4
.LC36:
	.string	"\033[0;31mE (%d) %s: not found the handle\033[0m\n"
	.section	.text.esp_ota_write,"ax",@progbits
	.literal_position
	.literal .LC24, 5379
	.literal .LC25, .LC5
	.literal .LC27, .LC26
	.literal .LC28, s_ota_ops_entries_head
	.literal .LC30, .LC29
	.literal .LC31, __func__$5602
	.literal .LC32, .LC3
	.literal .LC34, .LC33
	.literal .LC35, 1073061888
	.literal .LC37, .LC36
	.align	4
	.global	esp_ota_write
	.type	esp_ota_write, @function
esp_ota_write:
.LFB23:
	.loc 1 132 0
.LVL130:
	entry	sp, 32
.LCFI9:
.LVL131:
	.loc 1 137 0
	bnez.n	a3, .L66
	.loc 1 138 0 discriminator 2
	call8	esp_log_timestamp
.LVL132:
	l32r	a11, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC27
	movi.n	a10, 1
	call8	esp_log_write
.LVL133:
	.loc 1 139 0 discriminator 2
	movi	a2, 0x102
.LVL134:
	retw.n
.LVL135:
.L66:
	.loc 1 143 0
	l32r	a5, .LC28
	l32i.n	a5, a5, 0
.LVL136:
	j	.L68
.L77:
	.loc 1 144 0
	l32i.n	a8, a5, 0
	bne	a8, a2, .L69
	.loc 1 146 0
	l32i.n	a2, a5, 8
.LVL137:
	bnez.n	a2, .L70
	.loc 1 146 0 is_stmt 0 discriminator 1
	l32r	a13, .LC30
	l32r	a12, .LC31
	movi	a11, 0x92
	l32r	a10, .LC32
	call8	__assert_func
.LVL138:
.L70:
	.loc 1 148 0 is_stmt 1
	l32i.n	a2, a5, 12
	bnez.n	a2, .L71
	.loc 1 148 0 is_stmt 0 discriminator 1
	beqz.n	a4, .L71
	.loc 1 148 0 discriminator 2
	l8ui	a6, a3, 0
	movi	a2, 0xe9
	beq	a6, a2, .L71
	.loc 1 149 0 is_stmt 1 discriminator 2
	call8	esp_log_timestamp
.LVL139:
	l32r	a11, .LC25
	l8ui	a15, a3, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC34
	movi.n	a10, 1
	call8	esp_log_write
.LVL140:
	.loc 1 150 0 discriminator 2
	l32r	a2, .LC24
	retw.n
.L71:
.LBB10:
.LBB11:
.LBB12:
.LBB13:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_flash_encrypt.h"
	.loc 2 37 0
	l32r	a2, .LC35
	memw
	l32i.n	a8, a2, 0
.LBE13:
	extui	a8, a8, 20, 8
.LVL141:
.LBE12:
	.loc 2 39 0
	movi.n	a2, 0
	j	.L72
.LVL142:
.L74:
	.loc 2 41 0
	bbci	a8, 0, .L73
	.loc 2 42 0
	movi.n	a9, 1
	xor	a2, a2, a9
.LVL143:
	extui	a2, a2, 0, 8
.LVL144:
.L73:
	.loc 2 44 0
	srli	a8, a8, 1
.LVL145:
.L72:
	.loc 2 40 0
	bnez.n	a8, .L74
.LBE11:
.LBE10:
	.loc 1 153 0
	beqz.n	a2, .L75
.LBB14:
	.loc 1 158 0
	l8ui	a10, a5, 16
	beqz.n	a10, .L76
	.loc 1 159 0
	movi.n	a2, 0x10
.LVL146:
	sub	a2, a2, a10
	minu	a2, a4, a2
.LVL147:
	.loc 1 160 0
	addi	a6, a5, 17
	mov.n	a12, a2
	mov.n	a11, a3
	add.n	a10, a6, a10
	call8	memcpy
.LVL148:
	.loc 1 161 0
	l8ui	a8, a5, 16
	add.n	a8, a2, a8
	extui	a8, a8, 0, 8
	s8i	a8, a5, 16
	.loc 1 162 0
	bnei	a8, 16, .L78
	.loc 1 166 0
	movi.n	a13, 0x10
	mov.n	a12, a6
	l32i.n	a11, a5, 12
	l32i.n	a10, a5, 4
	call8	esp_partition_write
.LVL149:
	.loc 1 167 0
	bnez.n	a10, .L79
	.loc 1 170 0
	movi.n	a8, 0
	s8i	a8, a5, 16
	.loc 1 171 0
	movi.n	a12, 0x10
	movi	a11, 0xff
	mov.n	a10, a6
.LVL150:
	call8	memset
.LVL151:
	.loc 1 172 0
	l32i.n	a6, a5, 12
	addi	a6, a6, 16
	s32i.n	a6, a5, 12
	.loc 1 173 0
	add.n	a3, a3, a2
.LVL152:
	.loc 1 174 0
	sub	a4, a4, a2
.LVL153:
.L76:
	.loc 1 178 0
	extui	a12, a4, 0, 4
	s8i	a12, a5, 16
	.loc 1 179 0
	beqz.n	a12, .L75
	.loc 1 180 0
	sub	a4, a4, a12
.LVL154:
	.loc 1 181 0
	add.n	a11, a3, a4
	addi	a10, a5, 17
	call8	memcpy
.LVL155:
.L75:
.LBE14:
	.loc 1 185 0
	mov.n	a13, a4
	mov.n	a12, a3
	l32i.n	a11, a5, 12
	l32i.n	a10, a5, 4
	call8	esp_partition_write
.LVL156:
	.loc 1 186 0
	bnez.n	a10, .L80
	.loc 1 187 0
	l32i.n	a2, a5, 12
	add.n	a4, a2, a4
.LVL157:
	s32i.n	a4, a5, 12
	.loc 1 189 0
	mov.n	a2, a10
	retw.n
.LVL158:
.L69:
	.loc 1 143 0 discriminator 2
	l32i.n	a5, a5, 36
.LVL159:
.L68:
	.loc 1 143 0 discriminator 1
	bnez.n	a5, .L77
	.loc 1 194 0 discriminator 2
	call8	esp_log_timestamp
.LVL160:
	l32r	a11, .LC25
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC37
	movi.n	a10, 1
	call8	esp_log_write
.LVL161:
	.loc 1 195 0 discriminator 2
	movi	a2, 0x102
.LVL162:
	retw.n
.LVL163:
.L78:
.LBB15:
	.loc 1 163 0
	movi.n	a2, 0
.LVL164:
	retw.n
.LVL165:
.L79:
	.loc 1 168 0
	mov.n	a2, a10
.LVL166:
	retw.n
.LVL167:
.L80:
.LBE15:
	.loc 1 189 0
	mov.n	a2, a10
	.loc 1 196 0
	retw.n
.LFE23:
	.size	esp_ota_write, .-esp_ota_write
	.section	.text.esp_ota_end,"ax",@progbits
	.literal_position
	.literal .LC38, 5379
	.literal .LC39, s_ota_ops_entries_head
	.align	4
	.global	esp_ota_end
	.type	esp_ota_end, @function
esp_ota_end:
.LFB24:
	.loc 1 199 0
.LVL168:
	entry	sp, 272
.LCFI10:
.LVL169:
	.loc 1 203 0
	l32r	a3, .LC39
	l32i.n	a3, a3, 0
.LVL170:
	j	.L82
.L84:
	.loc 1 204 0
	l32i.n	a8, a3, 0
	beq	a8, a2, .L83
	.loc 1 203 0 discriminator 2
	l32i.n	a3, a3, 36
.LVL171:
.L82:
	.loc 1 203 0 discriminator 1
	bnez.n	a3, .L84
.L83:
	.loc 1 209 0
	beqz.n	a3, .L89
	.loc 1 216 0
	l32i.n	a2, a3, 8
.LVL172:
	beqz.n	a2, .L90
	.loc 1 216 0 is_stmt 0 discriminator 1
	l32i.n	a11, a3, 12
	beqz.n	a11, .L91
	.loc 1 221 0 is_stmt 1
	l8ui	a2, a3, 16
	beqz.n	a2, .L92
	.loc 1 223 0
	movi.n	a13, 0x10
	addi	a12, a3, 17
	l32i.n	a10, a3, 4
	call8	esp_partition_write
.LVL173:
	mov.n	a2, a10
.LVL174:
	.loc 1 224 0
	bnez.n	a10, .L93
	.loc 1 228 0
	l32i.n	a8, a3, 12
	addi	a8, a8, 16
	s32i.n	a8, a3, 12
	.loc 1 229 0
	movi.n	a8, 0
	s8i	a8, a3, 16
	j	.L87
.LVL175:
.L92:
	.loc 1 201 0
	movi.n	a2, 0
.LVL176:
.L87:
	.loc 1 234 0
	l32i.n	a8, a3, 4
	l32i.n	a9, a8, 8
	.loc 1 233 0
	s32i	a9, sp, 224
	.loc 1 235 0
	l32i.n	a8, a8, 12
	.loc 1 233 0
	s32i	a8, sp, 228
	.loc 1 238 0
	mov.n	a12, sp
	movi	a11, 0xe0
	add.n	a11, a11, sp
	movi.n	a10, 0
	call8	esp_image_load
.LVL177:
	bnez.n	a10, .L94
	j	.L86
.LVL178:
.L90:
	.loc 1 217 0
	movi	a2, 0x102
	j	.L86
.L91:
	movi	a2, 0x102
	j	.L86
.LVL179:
.L93:
	.loc 1 225 0
	movi	a2, 0x103
.LVL180:
	j	.L86
.LVL181:
.L94:
	.loc 1 239 0
	l32r	a2, .LC38
.LVL182:
.L86:
	.loc 1 244 0
	l32i.n	a8, a3, 36
	beqz.n	a8, .L88
	.loc 1 244 0 discriminator 1
	l32i.n	a9, a3, 40
	s32i.n	a9, a8, 40
.L88:
	.loc 1 244 0 is_stmt 0 discriminator 3
	l32i.n	a8, a3, 40
	l32i.n	a9, a3, 36
	s32i.n	a9, a8, 0
	.loc 1 245 0 is_stmt 1 discriminator 3
	mov.n	a10, a3
	call8	free
.LVL183:
	.loc 1 246 0 discriminator 3
	retw.n
.LVL184:
.L89:
	.loc 1 210 0
	movi	a2, 0x105
.LVL185:
	.loc 1 247 0
	retw.n
.LFE24:
	.size	esp_ota_end, .-esp_ota_end
	.section	.text.esp_ota_set_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC40, 5379
	.align	4
	.global	esp_ota_set_boot_partition
	.type	esp_ota_set_boot_partition, @function
esp_ota_set_boot_partition:
.LFB30:
	.loc 1 364 0
.LVL186:
	entry	sp, 272
.LCFI11:
.LVL187:
	.loc 1 366 0
	beqz.n	a2, .L98
	.loc 1 372 0
	l32i.n	a8, a2, 8
	.loc 1 371 0
	s32i	a8, sp, 224
	.loc 1 373 0
	l32i.n	a8, a2, 12
	.loc 1 371 0
	s32i	a8, sp, 228
	.loc 1 375 0
	mov.n	a12, sp
	movi	a11, 0xe0
	add.n	a11, a11, sp
	movi.n	a10, 0
	call8	esp_image_load
.LVL188:
	bnez.n	a10, .L99
	.loc 1 386 0
	l32i.n	a8, a2, 0
	bnez.n	a8, .L100
	.loc 1 387 0
	l32i.n	a8, a2, 4
	bnez.n	a8, .L97
	.loc 1 388 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL189:
	.loc 1 389 0
	beqz.n	a10, .L101
	.loc 1 390 0
	l32i.n	a12, a10, 12
	movi.n	a11, 0
	call8	esp_partition_erase_range
.LVL190:
	mov.n	a2, a10
.LVL191:
	retw.n
.LVL192:
.L97:
	.loc 1 396 0
	movi.n	a12, 0
	mov.n	a11, a12
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL193:
	.loc 1 397 0
	beqz.n	a10, .L102
	.loc 1 398 0
	l32i.n	a10, a2, 4
.LVL194:
	call8	esp_rewrite_ota_data
.LVL195:
	mov.n	a2, a10
.LVL196:
	retw.n
.LVL197:
.L98:
	.loc 1 367 0
	movi	a2, 0x102
.LVL198:
	retw.n
.LVL199:
.L99:
	.loc 1 376 0
	l32r	a2, .LC40
.LVL200:
	retw.n
.LVL201:
.L100:
	.loc 1 404 0
	movi	a2, 0x102
.LVL202:
	retw.n
.LVL203:
.L101:
	.loc 1 392 0
	movi	a2, 0x105
.LVL204:
	retw.n
.LVL205:
.L102:
	.loc 1 400 0
	movi	a2, 0x105
.LVL206:
	.loc 1 406 0
	retw.n
.LFE30:
	.size	esp_ota_set_boot_partition, .-esp_ota_set_boot_partition
	.section	.rodata.str1.4
	.align	4
.LC42:
	.string	"\033[0;31mE (%d) %s: not found ota data\033[0m\n"
	.align	4
.LC45:
	.string	"\033[0;31mE (%d) %s: mmap ota data filed\033[0m\n"
	.align	4
.LC49:
	.string	"\033[0;31mE (%d) %s: ota data invalid, no current app. Assuming factory\033[0m\n"
	.section	.text.esp_ota_get_boot_partition,"ax",@progbits
	.literal_position
	.literal .LC41, .LC5
	.literal .LC43, .LC42
	.literal .LC44, ota_data_map$5676
	.literal .LC46, .LC45
	.literal .LC47, s_ota_select
	.literal .LC48, s_ota_select+32
	.literal .LC50, .LC49
	.align	4
	.global	esp_ota_get_boot_partition
	.type	esp_ota_get_boot_partition, @function
esp_ota_get_boot_partition:
.LFB32:
	.loc 1 437 0
	entry	sp, 48
.LCFI12:
.LVL207:
	.loc 1 441 0
	movi.n	a11, 0
	s32i.n	a11, sp, 0
.LVL208:
	.loc 1 443 0
	mov.n	a12, a11
	movi.n	a10, 1
	call8	esp_partition_find_first
.LVL209:
	.loc 1 445 0
	bnez.n	a10, .L104
	.loc 1 446 0 discriminator 2
	call8	esp_log_timestamp
.LVL210:
	l32r	a11, .LC41
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 1
	call8	esp_log_write
.LVL211:
	.loc 1 447 0 discriminator 2
	movi.n	a2, 0
	retw.n
.LVL212:
.L104:
	.loc 1 450 0
	l32r	a15, .LC44
	mov.n	a14, sp
	movi.n	a13, 0
	l32i.n	a12, a10, 12
	mov.n	a11, a13
	call8	esp_partition_mmap
.LVL213:
	.loc 1 451 0
	beqz.n	a10, .L106
	.loc 1 452 0
	l32r	a2, .LC44
	l32i.n	a10, a2, 0
.LVL214:
	call8	spi_flash_munmap
.LVL215:
	.loc 1 453 0
	call8	esp_log_timestamp
.LVL216:
	l32r	a11, .LC41
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC46
	movi.n	a10, 1
	call8	esp_log_write
.LVL217:
	.loc 1 454 0
	movi.n	a2, 0
	retw.n
.LVL218:
.L106:
	.loc 1 456 0
	l32i.n	a3, sp, 0
	l32r	a2, .LC47
	movi.n	a4, 0x20
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL219:
	call8	memcpy
.LVL220:
	.loc 1 457 0
	mov.n	a12, a4
	addmi	a11, a3, 0x1000
	l32r	a10, .LC48
	call8	memcpy
.LVL221:
	.loc 1 458 0
	l32r	a3, .LC44
	l32i.n	a10, a3, 0
	call8	spi_flash_munmap
.LVL222:
	.loc 1 460 0
	call8	get_ota_partition_count
.LVL223:
	mov.n	a3, a10
.LVL224:
	.loc 1 464 0
	l32i.n	a2, a2, 0
	bnei	a2, -1, .L107
	.loc 1 464 0 is_stmt 0 discriminator 1
	l32r	a2, .LC47
	l32i.n	a2, a2, 32
	bnei	a2, -1, .L107
	.loc 1 466 0 is_stmt 1
	call8	find_default_boot_partition
.LVL225:
	mov.n	a2, a10
	retw.n
.L107:
	.loc 1 467 0
	l32r	a10, .LC47
	call8	ota_select_valid
.LVL226:
	beqz.n	a10, .L108
	.loc 1 467 0 is_stmt 0 discriminator 1
	l32r	a10, .LC48
	call8	ota_select_valid
.LVL227:
	beqz.n	a10, .L108
	.loc 1 472 0 is_stmt 1
	l32r	a2, .LC47
	l32i.n	a11, a2, 0
	l32i.n	a2, a2, 32
	maxu	a11, a11, a2
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	.loc 1 471 0
	movi.n	a12, 0
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL228:
	mov.n	a2, a10
	retw.n
.L108:
	.loc 1 473 0
	l32r	a10, .LC47
	call8	ota_select_valid
.LVL229:
	beqz.n	a10, .L109
	.loc 1 478 0
	l32r	a2, .LC47
	l32i.n	a11, a2, 0
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	.loc 1 477 0
	movi.n	a12, 0
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL230:
	mov.n	a2, a10
	retw.n
.L109:
	.loc 1 480 0
	l32r	a10, .LC48
	call8	ota_select_valid
.LVL231:
	beqz.n	a10, .L110
	.loc 1 485 0
	l32r	a2, .LC47
	l32i.n	a11, a2, 32
	addi.n	a11, a11, -1
	remu	a11, a11, a3
	.loc 1 484 0
	movi.n	a12, 0
	addi	a11, a11, 16
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL232:
	mov.n	a2, a10
	retw.n
.L110:
	.loc 1 488 0 discriminator 2
	call8	esp_log_timestamp
.LVL233:
	l32r	a11, .LC41
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC50
	movi.n	a10, 1
	call8	esp_log_write
.LVL234:
	.loc 1 489 0 discriminator 2
	call8	find_default_boot_partition
.LVL235:
	mov.n	a2, a10
	.loc 1 491 0 discriminator 2
	retw.n
.LFE32:
	.size	esp_ota_get_boot_partition, .-esp_ota_get_boot_partition
	.section	.rodata.str1.4
	.align	4
.LC51:
	.string	"start_from != NULL"
	.section	.text.esp_ota_get_next_update_partition,"ax",@progbits
	.literal_position
	.literal .LC52, .LC51
	.literal .LC53, __func__$5694
	.literal .LC54, .LC3
	.align	4
	.global	esp_ota_get_next_update_partition
	.type	esp_ota_get_next_update_partition, @function
esp_ota_get_next_update_partition:
.LFB34:
	.loc 1 522 0
.LVL236:
	entry	sp, 32
.LCFI13:
.LVL237:
	.loc 1 525 0
	bnez.n	a2, .L112
	.loc 1 526 0
	call8	esp_ota_get_running_partition
.LVL238:
	mov.n	a5, a10
.LVL239:
	j	.L113
.LVL240:
.L112:
	.loc 1 528 0
	mov.n	a10, a2
	call8	esp_partition_verify
.LVL241:
	mov.n	a5, a10
.LVL242:
.L113:
	.loc 1 530 0
	bnez.n	a5, .L119
	.loc 1 530 0 is_stmt 0 discriminator 1
	l32r	a13, .LC52
	l32r	a12, .LC53
	movi	a11, 0x212
	l32r	a10, .LC54
	call8	__assert_func
.LVL243:
.L118:
.LBB16:
.LBB17:
	.loc 1 545 0 is_stmt 1
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a12
	call8	esp_partition_find_first
.LVL244:
	.loc 1 546 0
	beqz.n	a10, .L115
	.loc 1 550 0
	bnez.n	a2, .L116
	.loc 1 553 0
	mov.n	a2, a10
.LVL245:
.L116:
	.loc 1 556 0
	beq	a5, a10, .L121
	.loc 1 560 0
	beqz.n	a4, .L115
	j	.L122
.L121:
	.loc 1 558 0
	movi.n	a4, 1
.LVL246:
.L115:
.LBE17:
	.loc 1 544 0
	addi.n	a3, a3, 1
.LVL247:
	j	.L114
.LVL248:
.L119:
.LBE16:
	movi.n	a3, 0x10
	movi.n	a4, 0
	mov.n	a2, a4
.LVL249:
.L114:
.LBB19:
	.loc 1 542 0 discriminator 1
	bnei	a3, 32, .L118
	retw.n
.LVL250:
.L122:
.LBB18:
	.loc 1 561 0
	mov.n	a2, a10
.LVL251:
.LBE18:
.LBE19:
	.loc 1 567 0
	retw.n
.LFE34:
	.size	esp_ota_get_next_update_partition, .-esp_ota_get_next_update_partition
	.section	.rodata.__func__$5694,"a",@progbits
	.align	4
	.type	__func__$5694, @object
	.size	__func__$5694, 34
__func__$5694:
	.string	"esp_ota_get_next_update_partition"
	.section	.rodata.__func__$5683,"a",@progbits
	.align	4
	.type	__func__$5683, @object
	.size	__func__$5683, 30
__func__$5683:
	.string	"esp_ota_get_running_partition"
	.section	.bss.ota_data_map$5676,"aw",@nobits
	.align	4
	.type	ota_data_map$5676, @object
	.size	ota_data_map$5676, 4
ota_data_map$5676:
	.zero	4
	.section	.rodata.__func__$5634,"a",@progbits
	.align	4
	.type	__func__$5634, @object
	.size	__func__$5634, 24
__func__$5634:
	.string	"get_ota_partition_count"
	.section	.bss.ota_data_map$5646,"aw",@nobits
	.align	4
	.type	ota_data_map$5646, @object
	.size	ota_data_map$5646, 4
ota_data_map$5646:
	.zero	4
	.section	.rodata.__func__$5602,"a",@progbits
	.align	4
	.type	__func__$5602, @object
	.size	__func__$5602, 14
__func__$5602:
	.string	"esp_ota_write"
	.section	.bss.s_ota_select,"aw",@nobits
	.align	4
	.type	s_ota_select, @object
	.size	s_ota_select, 64
s_ota_select:
	.zero	64
	.section	.bss.s_ota_ops_last_handle,"aw",@nobits
	.align	4
	.type	s_ota_ops_last_handle, @object
	.size	s_ota_ops_last_handle, 4
s_ota_ops_last_handle:
	.zero	4
	.section	.bss.s_ota_ops_entries_head,"aw",@nobits
	.align	4
	.type	s_ota_ops_entries_head, @object
	.size	s_ota_ops_entries_head, 4
s_ota_ops_entries_head:
	.zero	4
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI2-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI3-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI4-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI5-.LFB27
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
	.uleb128 0x30
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI8-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI9-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI10-.LFB24
	.byte	0xe
	.uleb128 0x110
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI11-.LFB30
	.byte	0xe
	.uleb128 0x110
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI12-.LFB32
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI13-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_partition.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_flash_data_types.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/app_update/include/esp_ota_ops.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/crc.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x156c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0xc
	.4byte	.LASF175
	.4byte	.LASF176
	.4byte	.Ldebug_ranges0+0x60
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
	.byte	0x5
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe2
	.uleb128 0x6
	.4byte	0xd5
	.uleb128 0x5
	.byte	0x4
	.4byte	0xed
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x18
	.4byte	0x9f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x110
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0xdc
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0xa1
	.4byte	0x12e
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0xa4
	.4byte	0x115
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x26
	.4byte	0x152
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x8
	.byte	0x29
	.4byte	0x139
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x2f
	.4byte	0x212
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x11
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x12
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x13
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x15
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x16
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x17
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x19
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1a
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x1b
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1d
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x1e
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x1f
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x81
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x82
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0x4f
	.4byte	0x15d
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x59
	.4byte	0x228
	.uleb128 0x5
	.byte	0x4
	.4byte	0x22e
	.uleb128 0xc
	.4byte	.LASF177
	.uleb128 0xd
	.byte	0x24
	.byte	0x8
	.byte	0x62
	.4byte	0x284
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x8
	.byte	0x63
	.4byte	0x152
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x8
	.byte	0x64
	.4byte	0x212
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x8
	.byte	0x65
	.4byte	0xaa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x8
	.byte	0x66
	.4byte	0xaa
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x8
	.byte	0x67
	.4byte	0x284
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x8
	.byte	0x68
	.4byte	0xf9
	.byte	0x21
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x294
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x8
	.byte	0x69
	.4byte	0x233
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x2af
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x17
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x9
	.byte	0x24
	.4byte	0x2d0
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x9
	.byte	0x25
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x9
	.byte	0x26
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x9
	.byte	0x27
	.4byte	0x2af
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x27
	.4byte	0x300
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x18
	.byte	0xa
	.byte	0x3b
	.4byte	0x387
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0xa
	.byte	0x3c
	.4byte	0x89
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0xa
	.byte	0x3d
	.4byte	0x89
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF73
	.byte	0xa
	.byte	0x3f
	.4byte	0x89
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0xa
	.byte	0x41
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0xa
	.byte	0x43
	.4byte	0x89
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0xa
	.byte	0x44
	.4byte	0xaa
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0xa
	.byte	0x47
	.4byte	0x89
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0xa
	.byte	0x49
	.4byte	0x387
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0xa
	.byte	0x4b
	.4byte	0x397
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0xa
	.byte	0x4f
	.4byte	0x89
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x397
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x89
	.4byte	0x3a7
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xa
	.byte	0x50
	.4byte	0x300
	.uleb128 0xd
	.byte	0x8
	.byte	0xa
	.byte	0x55
	.4byte	0x3d3
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0xa
	.byte	0x56
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0xa
	.byte	0x57
	.4byte	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xa
	.byte	0x58
	.4byte	0x3b2
	.uleb128 0xd
	.byte	0xe0
	.byte	0xa
	.byte	0x5d
	.4byte	0x423
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0xa
	.byte	0x5e
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0xa
	.byte	0x5f
	.4byte	0x3a7
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0xa
	.byte	0x60
	.4byte	0x423
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0xa
	.byte	0x61
	.4byte	0x433
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0xa
	.byte	0x62
	.4byte	0xaa
	.byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	0x3d3
	.4byte	0x433
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xaa
	.4byte	0x443
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xa
	.byte	0x63
	.4byte	0x3de
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x66
	.4byte	0x467
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xb
	.byte	0x2b
	.4byte	0xaa
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.byte	0xc
	.byte	0x1f
	.4byte	0x4a3
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x1
	.byte	0x33
	.4byte	0x4c4
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x1
	.byte	0x33
	.4byte	0x525
	.byte	0
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0x1
	.byte	0x33
	.4byte	0x52b
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x2c
	.byte	0x1
	.byte	0x2c
	.4byte	0x525
	.uleb128 0xe
	.4byte	.LASF102
	.byte	0x1
	.byte	0x2d
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF103
	.byte	0x1
	.byte	0x2e
	.4byte	0x531
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0x1
	.byte	0x2f
	.4byte	0xaa
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x1
	.byte	0x30
	.4byte	0xaa
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x1
	.byte	0x31
	.4byte	0x89
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x1
	.byte	0x32
	.4byte	0x100
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x1
	.byte	0x33
	.4byte	0x4a3
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x525
	.uleb128 0x5
	.byte	0x4
	.4byte	0x537
	.uleb128 0x6
	.4byte	0x294
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x1
	.byte	0x34
	.4byte	0x4c4
	.uleb128 0xd
	.byte	0x20
	.byte	0x1
	.byte	0x38
	.4byte	0x574
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x1
	.byte	0x39
	.4byte	0xaa
	.byte	0
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0x1
	.byte	0x3a
	.4byte	0x29f
	.byte	0x4
	.uleb128 0x11
	.string	"crc"
	.byte	0x1
	.byte	0x3b
	.4byte	0xaa
	.byte	0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x1
	.byte	0x3c
	.4byte	0x547
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.4byte	0x598
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0x1
	.byte	0x3e
	.4byte	0x525
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0x2
	.byte	0x24
	.4byte	0xf9
	.byte	0x3
	.4byte	0x5cc
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x2
	.byte	0x25
	.4byte	0xaa
	.uleb128 0x14
	.4byte	.LASF117
	.4byte	0x5dc
	.4byte	.LASF178
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x2
	.byte	0x27
	.4byte	0xf9
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x5dc
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	0x5cc
	.uleb128 0x15
	.4byte	.LASF119
	.byte	0x1
	.byte	0x47
	.4byte	0xf9
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x608
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.byte	0x47
	.4byte	0x531
	.4byte	.LLST0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x115
	.4byte	0x89
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68c
	.uleb128 0x18
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x117
	.4byte	0x94
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LASF117
	.4byte	0x69c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5634
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x1487
	.4byte	0x671
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x119
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5634
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL11
	.4byte	0x1492
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 16
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x69c
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x68c
	.uleb128 0x17
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x198
	.4byte	0x531
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76c
	.uleb128 0x18
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x19d
	.4byte	0x531
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0
	.4byte	0x6fd
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x212
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0x1492
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x1492
	.4byte	0x71a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL19
	.4byte	0x1492
	.4byte	0x738
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL20
	.4byte	0x149d
	.uleb128 0x1c
	.4byte	.LVL21
	.4byte	0x14a8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x1
	.byte	0xf9
	.4byte	0xaa
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ae
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0xf9
	.4byte	0x7ae
	.4byte	.LLST4
	.uleb128 0x1c
	.4byte	.LVL29
	.4byte	0x14b3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7b4
	.uleb128 0x6
	.4byte	0x574
	.uleb128 0x15
	.4byte	.LASF125
	.byte	0x1
	.byte	0xfe
	.4byte	0xf9
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f0
	.uleb128 0x16
	.string	"s"
	.byte	0x1
	.byte	0xfe
	.4byte	0x7ae
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LVL32
	.4byte	0x76c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x103
	.4byte	0xee
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a0
	.uleb128 0x20
	.string	"seq"
	.byte	0x1
	.2byte	0x103
	.4byte	0xaa
	.4byte	.LLST6
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x103
	.4byte	0x89
	.4byte	.LLST7
	.uleb128 0x22
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x103
	.4byte	0x531
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x105
	.4byte	0xee
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LVL39
	.4byte	0x76c
	.4byte	0x85c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL41
	.4byte	0x14be
	.4byte	0x87d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL44
	.4byte	0x14ca
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x11f
	.4byte	0xee
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaaf
	.uleb128 0x21
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x11f
	.4byte	0x212
	.4byte	.LLST9
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x121
	.4byte	0xee
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x122
	.4byte	0x531
	.4byte	.LLST11
	.uleb128 0x18
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x123
	.4byte	0x94
	.4byte	.LLST12
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.2byte	0x124
	.4byte	0xaa
	.4byte	.LLST13
	.uleb128 0x1e
	.string	"seq"
	.byte	0x1
	.2byte	0x125
	.4byte	0xaa
	.4byte	.LLST14
	.uleb128 0x23
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x126
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_data_map$5646
	.uleb128 0x23
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x127
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LVL50
	.4byte	0x1492
	.4byte	0x956
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL52
	.4byte	0x608
	.uleb128 0x1a
	.4byte	.LVL55
	.4byte	0x14d5
	.4byte	0x98c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_data_map$5646
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL57
	.4byte	0x14e1
	.4byte	0x9ac
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL58
	.4byte	0x14e1
	.4byte	0x9d0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x76
	.sleb128 4096
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL59
	.4byte	0x14ea
	.uleb128 0x1a
	.4byte	.LVL60
	.4byte	0x7b9
	.4byte	0x9ed
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL61
	.4byte	0x7b9
	.4byte	0xa04
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL66
	.4byte	0x7f0
	.4byte	0xa1d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL69
	.4byte	0x7f0
	.4byte	0xa36
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL71
	.4byte	0x7b9
	.4byte	0xa4a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL76
	.4byte	0x7f0
	.4byte	0xa63
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL78
	.4byte	0x7b9
	.4byte	0xa7a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL83
	.4byte	0x7f0
	.4byte	0xa93
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL85
	.4byte	0x7f0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x531
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe6
	.uleb128 0x23
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1f3
	.4byte	0xb5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF117
	.4byte	0xbf6
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5683
	.uleb128 0x25
	.string	"it"
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x21d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x26
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xb47
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x531
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LVL96
	.4byte	0x14f5
	.4byte	0xb22
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL98
	.4byte	0x1500
	.4byte	0xb36
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL99
	.4byte	0x150b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL90
	.4byte	0x1516
	.4byte	0xb5e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_ota_get_running_partition
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL92
	.4byte	0x1487
	.4byte	0xb8e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5683
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL93
	.4byte	0x1522
	.4byte	0xbac
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL95
	.4byte	0x1487
	.4byte	0xbdc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1fa
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5683
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL101
	.4byte	0x152d
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0xbf6
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	0xbe6
	.uleb128 0x27
	.4byte	.LASF134
	.byte	0x1
	.byte	0x4f
	.4byte	0xee
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce2
	.uleb128 0x28
	.4byte	.LASF135
	.byte	0x1
	.byte	0x4f
	.4byte	0x531
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	.LASF136
	.byte	0x1
	.byte	0x4f
	.4byte	0xb5
	.4byte	.LLST17
	.uleb128 0x29
	.4byte	.LASF137
	.byte	0x1
	.byte	0x4f
	.4byte	0xce2
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF138
	.byte	0x1
	.byte	0x51
	.4byte	0xce8
	.4byte	.LLST18
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.byte	0x52
	.4byte	0xee
	.4byte	.LLST19
	.uleb128 0x1a
	.4byte	.LVL104
	.4byte	0x1538
	.4byte	0xc71
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL106
	.4byte	0x5e1
	.4byte	0xc85
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL107
	.4byte	0xaaf
	.uleb128 0x1a
	.4byte	.LVL108
	.4byte	0x14be
	.4byte	0xca7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL110
	.4byte	0x14be
	.4byte	0xccc
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x3c
	.byte	0x24
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL112
	.4byte	0x1543
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x467
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53c
	.uleb128 0x27
	.4byte	.LASF139
	.byte	0x1
	.byte	0x83
	.4byte	0xee
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0f
	.uleb128 0x28
	.4byte	.LASF102
	.byte	0x1
	.byte	0x83
	.4byte	0x467
	.4byte	.LLST20
	.uleb128 0x28
	.4byte	.LASF140
	.byte	0x1
	.byte	0x83
	.4byte	0xe7
	.4byte	.LLST21
	.uleb128 0x28
	.4byte	.LASF61
	.byte	0x1
	.byte	0x83
	.4byte	0xb5
	.4byte	.LLST22
	.uleb128 0x2c
	.4byte	.LASF141
	.byte	0x1
	.byte	0x85
	.4byte	0xf0f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.byte	0x86
	.4byte	0xee
	.4byte	.LLST23
	.uleb128 0x2d
	.string	"it"
	.byte	0x1
	.byte	0x87
	.4byte	0xce8
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LASF117
	.4byte	0xf2a
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5602
	.uleb128 0x2e
	.4byte	0x598
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x99
	.4byte	0xda0
	.uleb128 0x2f
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x30
	.4byte	0x5a8
	.4byte	.LLST24
	.uleb128 0x30
	.4byte	0x5c0
	.4byte	.LLST25
	.uleb128 0x31
	.4byte	0x5b3
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xe24
	.uleb128 0x2a
	.4byte	.LASF142
	.byte	0x1
	.byte	0x9b
	.4byte	0xb5
	.4byte	.LLST26
	.uleb128 0x1a
	.4byte	.LVL148
	.4byte	0x14e1
	.4byte	0xdd2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL149
	.4byte	0x14ca
	.4byte	0xdeb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL151
	.4byte	0x154e
	.4byte	0xe0a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL155
	.4byte	0x14e1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 17
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL132
	.4byte	0x149d
	.uleb128 0x1a
	.4byte	.LVL133
	.4byte	0x14a8
	.4byte	0xe5b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL138
	.4byte	0x1487
	.4byte	0xe8a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x92
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5602
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL139
	.4byte	0x149d
	.uleb128 0x1a
	.4byte	.LVL140
	.4byte	0x14a8
	.4byte	0xec1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL156
	.4byte	0x14ca
	.4byte	0xedb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL160
	.4byte	0x149d
	.uleb128 0x1c
	.4byte	.LVL161
	.4byte	0x14a8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC36
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf15
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0xf2a
	.uleb128 0x9
	.4byte	0xc7
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	0xf1a
	.uleb128 0x27
	.4byte	.LASF143
	.byte	0x1
	.byte	0xc6
	.4byte	0xee
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe4
	.uleb128 0x28
	.4byte	.LASF102
	.byte	0x1
	.byte	0xc6
	.4byte	0x467
	.4byte	.LLST27
	.uleb128 0x2d
	.string	"it"
	.byte	0x1
	.byte	0xc8
	.4byte	0xce8
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.byte	0xc9
	.4byte	0xee
	.4byte	.LLST28
	.uleb128 0x32
	.4byte	.LASF179
	.byte	0x1
	.byte	0xf3
	.4byte	.L86
	.uleb128 0x2c
	.4byte	.LASF140
	.byte	0x1
	.byte	0xe8
	.4byte	0x443
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2c
	.4byte	.LASF144
	.byte	0x1
	.byte	0xe9
	.4byte	0xfe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LVL173
	.4byte	0x14ca
	.4byte	0xfb3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 17
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL177
	.4byte	0x1559
	.4byte	0xfd3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL183
	.4byte	0x1564
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x2d0
	.uleb128 0x24
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x16b
	.4byte	0xee
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b9
	.uleb128 0x21
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x16b
	.4byte	0x531
	.4byte	.LLST29
	.uleb128 0x18
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x16d
	.4byte	0x531
	.4byte	.LLST30
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x172
	.4byte	0x443
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x23
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x173
	.4byte	0xfe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.4byte	.LVL188
	.4byte	0x1559
	.4byte	0x1062
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL189
	.4byte	0x1492
	.4byte	0x107f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL190
	.4byte	0x14be
	.4byte	0x1092
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL193
	.4byte	0x1492
	.4byte	0x10af
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL195
	.4byte	0x8a0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x531
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1323
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0xee
	.4byte	.LLST31
	.uleb128 0x18
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x531
	.4byte	.LLST32
	.uleb128 0x23
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x12e
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_data_map$5676
	.uleb128 0x23
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x94
	.4byte	.LLST33
	.uleb128 0x1a
	.4byte	.LVL209
	.4byte	0x1492
	.4byte	0x1141
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL210
	.4byte	0x149d
	.uleb128 0x1a
	.4byte	.LVL211
	.4byte	0x14a8
	.4byte	0x1178
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL213
	.4byte	0x14d5
	.4byte	0x119f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	ota_data_map$5676
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL215
	.4byte	0x14ea
	.uleb128 0x1f
	.4byte	.LVL216
	.4byte	0x149d
	.uleb128 0x1a
	.4byte	.LVL217
	.4byte	0x14a8
	.4byte	0x11df
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC45
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL220
	.4byte	0x14e1
	.4byte	0x11ff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL221
	.4byte	0x14e1
	.4byte	0x1223
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x73
	.sleb128 4096
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL222
	.4byte	0x14ea
	.uleb128 0x1f
	.4byte	.LVL223
	.4byte	0x608
	.uleb128 0x1f
	.4byte	.LVL225
	.4byte	0x6a1
	.uleb128 0x1a
	.4byte	.LVL226
	.4byte	0x7b9
	.4byte	0x1255
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL227
	.4byte	0x7b9
	.4byte	0x126c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL228
	.4byte	0x1492
	.4byte	0x1284
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL229
	.4byte	0x7b9
	.4byte	0x129b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL230
	.4byte	0x1492
	.4byte	0x12b3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL231
	.4byte	0x7b9
	.4byte	0x12ca
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select+32
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL232
	.4byte	0x1492
	.4byte	0x12e2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL233
	.4byte	0x149d
	.uleb128 0x1a
	.4byte	.LVL234
	.4byte	0x14a8
	.4byte	0x1319
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL235
	.4byte	0x6a1
	.byte	0
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x209
	.4byte	0x531
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x140c
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x209
	.4byte	0x531
	.4byte	.LLST34
	.uleb128 0x18
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x20b
	.4byte	0x531
	.4byte	.LLST35
	.uleb128 0x18
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x20c
	.4byte	0xf9
	.4byte	.LLST36
	.uleb128 0x19
	.4byte	.LASF117
	.4byte	0x141c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5694
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x13c2
	.uleb128 0x1e
	.string	"t"
	.byte	0x1
	.2byte	0x21e
	.4byte	0x212
	.4byte	.LLST37
	.uleb128 0x33
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.2byte	0x221
	.4byte	0x531
	.4byte	.LLST38
	.uleb128 0x1c
	.4byte	.LVL244
	.4byte	0x1492
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL238
	.4byte	0xaaf
	.uleb128 0x1a
	.4byte	.LVL241
	.4byte	0x1538
	.4byte	0x13df
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL243
	.4byte	0x1487
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x212
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5694
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0xd5
	.4byte	0x141c
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x21
	.byte	0
	.uleb128 0x6
	.4byte	0x140c
	.uleb128 0x2c
	.4byte	.LASF151
	.byte	0x1
	.byte	0x3e
	.4byte	0x57f
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_ops_entries_head
	.uleb128 0x2c
	.4byte	.LASF152
	.byte	0x1
	.byte	0x41
	.4byte	0xaa
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_ops_last_handle
	.uleb128 0x8
	.4byte	0x574
	.4byte	0x1453
	.uleb128 0x9
	.4byte	0xc7
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF153
	.byte	0x1
	.byte	0x42
	.4byte	0x1443
	.uleb128 0x5
	.byte	0x3
	.4byte	s_ota_select
	.uleb128 0x2d
	.string	"TAG"
	.byte	0x1
	.byte	0x44
	.4byte	0x110
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC5
	.byte	0x9f
	.uleb128 0x34
	.4byte	.LASF180
	.byte	0xa
	.byte	0x2c
	.4byte	0x2db
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_image_spi_freq_t
	.uleb128 0x35
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xd
	.byte	0x29
	.uleb128 0x35
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x8
	.byte	0x89
	.uleb128 0x35
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xc
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xc
	.byte	0x6b
	.uleb128 0x35
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xe
	.byte	0x33
	.uleb128 0x36
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0x8
	.2byte	0x101
	.uleb128 0x35
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x8
	.byte	0xee
	.uleb128 0x36
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x8
	.2byte	0x11d
	.uleb128 0x37
	.4byte	.LASF181
	.4byte	.LASF181
	.uleb128 0x35
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x7
	.byte	0xe9
	.uleb128 0x35
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x8
	.byte	0x93
	.uleb128 0x35
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x8
	.byte	0xa6
	.uleb128 0x35
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x8
	.byte	0x9e
	.uleb128 0x36
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x7
	.2byte	0x111
	.uleb128 0x35
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x8
	.byte	0x7a
	.uleb128 0x35
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xf
	.byte	0x47
	.uleb128 0x35
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x8
	.byte	0xba
	.uleb128 0x35
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xf
	.byte	0x57
	.uleb128 0x35
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x10
	.byte	0x19
	.uleb128 0x35
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xa
	.byte	0x85
	.uleb128 0x35
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xf
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x18
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL31
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
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL67
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x75
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL102
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x7a
	.sleb128 4
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL102
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL112
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL103
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL130
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
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL130
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL152
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL167
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL130
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL153
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL158
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL165
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL141
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL147
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL168
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL172
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL185
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL169
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL184
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL186
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL201
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
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL206
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL190-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL197
	.4byte	.LVL203
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL212
	.4byte	.LVL213-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL208
	.4byte	.LVL224
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LFE32
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL236
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL240
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL242
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL237
	.4byte	.LVL243
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL237
	.4byte	.LVL243
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL243
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL243
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL249
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL244
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL250
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF148:
	.string	"start_from"
.LASF150:
	.string	"next_is_result"
.LASF15:
	.string	"size_t"
.LASF161:
	.string	"esp_partition_mmap"
.LASF137:
	.string	"out_handle"
.LASF3:
	.string	"__uint8_t"
.LASF111:
	.string	"seq_label"
.LASF139:
	.string	"esp_ota_write"
.LASF58:
	.string	"type"
.LASF133:
	.string	"esp_ota_get_running_partition"
.LASF76:
	.string	"entry_addr"
.LASF132:
	.string	"phys_offs"
.LASF135:
	.string	"partition"
.LASF10:
	.string	"long long unsigned int"
.LASF121:
	.string	"find_default_boot_partition"
.LASF140:
	.string	"data"
.LASF74:
	.string	"spi_speed"
.LASF6:
	.string	"__int32_t"
.LASF57:
	.string	"esp_partition_iterator_t"
.LASF143:
	.string	"esp_ota_end"
.LASF173:
	.string	"free"
.LASF147:
	.string	"esp_ota_get_next_update_partition"
.LASF107:
	.string	"partial_data"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF180:
	.string	"esp_image_spi_freq_t"
.LASF24:
	.string	"spi_flash_mmap_memory_t"
.LASF125:
	.string	"ota_select_valid"
.LASF66:
	.string	"esp_partition_pos_t"
.LASF55:
	.string	"ESP_PARTITION_SUBTYPE_ANY"
.LASF16:
	.string	"long int"
.LASF71:
	.string	"magic"
.LASF145:
	.string	"esp_ota_set_boot_partition"
.LASF157:
	.string	"esp_log_write"
.LASF181:
	.string	"memcpy"
.LASF119:
	.string	"is_ota_partition"
.LASF138:
	.string	"new_entry"
.LASF46:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MAX"
.LASF12:
	.string	"uint16_t"
.LASF43:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_13"
.LASF92:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF116:
	.string	"flash_crypt_cnt"
.LASF149:
	.string	"default_ota"
.LASF146:
	.string	"esp_ota_get_boot_partition"
.LASF29:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_MIN"
.LASF7:
	.string	"__uint32_t"
.LASF65:
	.string	"offset"
.LASF79:
	.string	"reserved"
.LASF175:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/app_update/esp_ota_ops.c"
.LASF106:
	.string	"partial_bytes"
.LASF82:
	.string	"load_addr"
.LASF169:
	.string	"esp_partition_verify"
.LASF110:
	.string	"ota_seq"
.LASF152:
	.string	"s_ota_ops_last_handle"
.LASF8:
	.string	"unsigned int"
.LASF129:
	.string	"esp_rewrite_ota_data"
.LASF27:
	.string	"esp_partition_type_t"
.LASF18:
	.string	"long unsigned int"
.LASF56:
	.string	"esp_partition_subtype_t"
.LASF104:
	.string	"erased_size"
.LASF124:
	.string	"ota_select_crc"
.LASF53:
	.string	"ESP_PARTITION_SUBTYPE_DATA_FAT"
.LASF61:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF130:
	.string	"find_partition"
.LASF52:
	.string	"ESP_PARTITION_SUBTYPE_DATA_ESPHTTPD"
.LASF165:
	.string	"esp_partition_next"
.LASF177:
	.string	"esp_partition_iterator_opaque_"
.LASF164:
	.string	"esp_partition_iterator_release"
.LASF105:
	.string	"wrote_size"
.LASF96:
	.string	"ESP_LOG_WARN"
.LASF62:
	.string	"label"
.LASF2:
	.string	"short int"
.LASF158:
	.string	"crc32_le"
.LASF113:
	.string	"ota_ops_entry_"
.LASF59:
	.string	"subtype"
.LASF166:
	.string	"spi_flash_cache2phys"
.LASF114:
	.string	"ota_ops_entries_head"
.LASF155:
	.string	"esp_partition_find_first"
.LASF134:
	.string	"esp_ota_begin"
.LASF97:
	.string	"ESP_LOG_INFO"
.LASF120:
	.string	"get_ota_partition_count"
.LASF67:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF101:
	.string	"le_prev"
.LASF108:
	.string	"entries"
.LASF17:
	.string	"sizetype"
.LASF142:
	.string	"copy_len"
.LASF49:
	.string	"ESP_PARTITION_SUBTYPE_DATA_PHY"
.LASF176:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\app_update"
.LASF60:
	.string	"address"
.LASF22:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF80:
	.string	"hash_appended"
.LASF26:
	.string	"ESP_PARTITION_TYPE_DATA"
.LASF153:
	.string	"s_ota_select"
.LASF122:
	.string	"ota_app_count"
.LASF91:
	.string	"ESP_IMAGE_VERIFY"
.LASF172:
	.string	"esp_image_load"
.LASF23:
	.string	"SPI_FLASH_MMAP_INST"
.LASF179:
	.string	"cleanup"
.LASF100:
	.string	"le_next"
.LASF127:
	.string	"sec_id"
.LASF25:
	.string	"ESP_PARTITION_TYPE_APP"
.LASF93:
	.string	"esp_ota_handle_t"
.LASF72:
	.string	"segment_count"
.LASF126:
	.string	"rewrite_ota_seq"
.LASF115:
	.string	"lh_first"
.LASF81:
	.string	"esp_image_header_t"
.LASF21:
	.string	"_Bool"
.LASF13:
	.string	"int32_t"
.LASF68:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF30:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_0"
.LASF85:
	.string	"start_addr"
.LASF32:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_2"
.LASF86:
	.string	"image"
.LASF34:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_4"
.LASF35:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_5"
.LASF36:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_6"
.LASF37:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_7"
.LASF38:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_8"
.LASF39:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_9"
.LASF144:
	.string	"part_pos"
.LASF156:
	.string	"esp_log_timestamp"
.LASF95:
	.string	"ESP_LOG_ERROR"
.LASF112:
	.string	"ota_select"
.LASF117:
	.string	"__func__"
.LASF83:
	.string	"data_len"
.LASF50:
	.string	"ESP_PARTITION_SUBTYPE_DATA_NVS"
.LASF88:
	.string	"segment_data"
.LASF170:
	.string	"calloc"
.LASF84:
	.string	"esp_image_segment_header_t"
.LASF63:
	.string	"encrypted"
.LASF178:
	.string	"esp_flash_encryption_enabled"
.LASF78:
	.string	"spi_pin_drv"
.LASF14:
	.string	"uint32_t"
.LASF118:
	.string	"enabled"
.LASF73:
	.string	"spi_mode"
.LASF19:
	.string	"char"
.LASF99:
	.string	"ESP_LOG_VERBOSE"
.LASF131:
	.string	"ota_data_map"
.LASF70:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF28:
	.string	"ESP_PARTITION_SUBTYPE_APP_FACTORY"
.LASF4:
	.string	"__uint16_t"
.LASF94:
	.string	"ESP_LOG_NONE"
.LASF159:
	.string	"esp_partition_erase_range"
.LASF168:
	.string	"abort"
.LASF160:
	.string	"esp_partition_write"
.LASF90:
	.string	"esp_image_metadata_t"
.LASF31:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_1"
.LASF89:
	.string	"image_len"
.LASF33:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_3"
.LASF162:
	.string	"spi_flash_munmap"
.LASF163:
	.string	"esp_partition_get"
.LASF128:
	.string	"ota_data_partition"
.LASF1:
	.string	"unsigned char"
.LASF103:
	.string	"part"
.LASF77:
	.string	"wp_pin"
.LASF47:
	.string	"ESP_PARTITION_SUBTYPE_APP_TEST"
.LASF69:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF109:
	.string	"ota_ops_entry_t"
.LASF136:
	.string	"image_size"
.LASF40:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_10"
.LASF41:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_11"
.LASF42:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_12"
.LASF171:
	.string	"memset"
.LASF44:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_14"
.LASF45:
	.string	"ESP_PARTITION_SUBTYPE_APP_OTA_15"
.LASF48:
	.string	"ESP_PARTITION_SUBTYPE_DATA_OTA"
.LASF20:
	.string	"esp_err_t"
.LASF51:
	.string	"ESP_PARTITION_SUBTYPE_DATA_COREDUMP"
.LASF75:
	.string	"spi_size"
.LASF87:
	.string	"segments"
.LASF11:
	.string	"uint8_t"
.LASF54:
	.string	"ESP_PARTITION_SUBTYPE_DATA_SPIFFS"
.LASF154:
	.string	"__assert_func"
.LASF174:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF102:
	.string	"handle"
.LASF151:
	.string	"s_ota_ops_entries_head"
.LASF64:
	.string	"esp_partition_t"
.LASF167:
	.string	"esp_partition_find"
.LASF98:
	.string	"ESP_LOG_DEBUG"
.LASF141:
	.string	"data_bytes"
.LASF123:
	.string	"result"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
