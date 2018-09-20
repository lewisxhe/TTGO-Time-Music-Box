	.file	"esp_image_format.c"
	.text
.Ltext0:
	.section	.text.should_map,"ax",@progbits
	.literal_position
	.literal .LC1, -1074593792
	.literal .LC2, 3342335
	.literal .LC3, -1061158912
	.literal .LC4, 4194303
	.align	4
	.type	should_map, @function
should_map:
.LFB11:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
	.loc 1 405 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 406 0
	l32r	a9, .LC1
	add.n	a9, a2, a9
	movi.n	a8, 1
	l32r	a10, .LC2
	bgeu	a10, a9, .L2
	movi.n	a8, 0
.L2:
	extui	a9, a8, 0, 8
	.loc 1 407 0
	l32r	a8, .LC3
	add.n	a2, a2, a8
.LVL1:
	movi.n	a8, 1
	l32r	a10, .LC4
	bgeu	a10, a2, .L3
	movi.n	a8, 0
.L3:
	extui	a2, a8, 0, 8
.LVL2:
	.loc 1 408 0
	or	a2, a9, a2
	retw.n
.LFE11:
	.size	should_map, .-should_map
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC6:
	.string	"esp_image"
	.align	4
.LC8:
	.string	"\033[0;31mE (%d) %s: image at 0x%x has invalid magic byte\033[0m\n"
	.align	4
.LC10:
	.string	"\033[0;33mW (%d) %s: image at 0x%x has invalid SPI mode %d\033[0m\n"
	.align	4
.LC12:
	.string	"\033[0;33mW (%d) %s: image at 0x%x has invalid SPI speed %d\033[0m\n"
	.align	4
.LC14:
	.string	"\033[0;33mW (%d) %s: image at 0x%x has invalid SPI size %d\033[0m\n"
	.section	.text.verify_image_header,"ax",@progbits
	.literal_position
	.literal .LC5, 8194
	.literal .LC7, .LC6
	.literal .LC9, .LC8
	.literal .LC11, .LC10
	.literal .LC15, .LC14
	.align	4
	.type	verify_image_header, @function
verify_image_header:
.LFB7:
	.loc 1 228 0
.LVL3:
	entry	sp, 48
.LCFI1:
.LVL4:
	.loc 1 231 0
	l8ui	a9, a3, 0
	movi	a8, 0xe9
	beq	a9, a8, .L9
	.loc 1 232 0
	bnez.n	a4, .L10
	.loc 1 233 0 discriminator 2
	call8	esp_log_timestamp
.LVL5:
	l32r	a11, .LC7
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC9
	movi.n	a10, 1
	call8	esp_log_write
.LVL6:
	.loc 1 235 0 discriminator 2
	l32r	a5, .LC5
	j	.L5
.L9:
	.loc 1 229 0
	movi.n	a5, 0
	j	.L5
.L10:
	.loc 1 235 0
	l32r	a5, .LC5
.L5:
.LVL7:
	.loc 1 237 0
	bnez.n	a4, .L6
	.loc 1 238 0
	l8ui	a4, a3, 2
.LVL8:
	bltui	a4, 6, .L8
	.loc 1 239 0 discriminator 4
	call8	esp_log_timestamp
.LVL9:
	l8ui	a4, a3, 2
	l32r	a11, .LC7
	s32i.n	a4, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC11
	movi.n	a10, 2
	call8	esp_log_write
.LVL10:
.L8:
	.loc 1 244 0
	l8ui	a4, a3, 3
	extui	a4, a4, 4, 4
	blti	a4, 6, .L6
	.loc 1 245 0 discriminator 4
	call8	esp_log_timestamp
.LVL11:
	l8ui	a3, a3, 3
.LVL12:
	extui	a3, a3, 4, 4
	l32r	a11, .LC7
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC15
	movi.n	a10, 2
	call8	esp_log_write
.LVL13:
.L6:
	.loc 1 249 0
	mov.n	a2, a5
.LVL14:
	retw.n
.LFE7:
	.size	verify_image_header, .-verify_image_header
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"\033[0;31mE (%d) %s: invalid segment length 0x%x\033[0m\n"
	.align	4
.LC21:
	.string	"\033[0;31mE (%d) %s: Segment %d load address 0x%08x, doesn't match data 0x%08x\033[0m\n"
	.section	.text.verify_segment_header,"ax",@progbits
	.literal_position
	.literal .LC16, 8194
	.literal .LC17, 16777215
	.literal .LC18, .LC6
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.align	4
	.type	verify_segment_header, @function
verify_segment_header:
.LFB10:
	.loc 1 375 0
.LVL15:
	entry	sp, 48
.LCFI2:
	.loc 1 376 0
	l32i.n	a8, a3, 4
	extui	a9, a8, 0, 2
	bnez.n	a9, .L12
	.loc 1 377 0
	l32r	a9, .LC17
	bgeu	a9, a8, .L13
.L12:
	.loc 1 378 0
	bnez.n	a5, .L15
	.loc 1 379 0 discriminator 2
	call8	esp_log_timestamp
.LVL16:
	l32r	a11, .LC18
	l32i.n	a15, a3, 4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC20
	movi.n	a10, 1
	call8	esp_log_write
.LVL17:
	.loc 1 381 0 discriminator 2
	l32r	a2, .LC16
.LVL18:
	retw.n
.LVL19:
.L13:
	.loc 1 384 0
	l32i.n	a3, a3, 0
.LVL20:
	.loc 1 385 0
	mov.n	a10, a3
	call8	should_map
.LVL21:
	.loc 1 392 0
	beqz.n	a10, .L16
	.loc 1 393 0
	xor	a8, a3, a4
	extui	a8, a8, 0, 16
	beqz.n	a8, .L17
	.loc 1 394 0
	bnez.n	a5, .L18
	.loc 1 395 0 discriminator 2
	call8	esp_log_timestamp
.LVL22:
	l32r	a11, .LC18
	s32i.n	a4, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC22
	movi.n	a10, 1
	call8	esp_log_write
.LVL23:
	.loc 1 398 0 discriminator 2
	l32r	a2, .LC16
.LVL24:
	retw.n
.LVL25:
.L15:
	.loc 1 381 0
	l32r	a2, .LC16
.LVL26:
	retw.n
.LVL27:
.L16:
	.loc 1 401 0
	movi.n	a2, 0
.LVL28:
	retw.n
.LVL29:
.L17:
	movi.n	a2, 0
.LVL30:
	retw.n
.LVL31:
.L18:
	.loc 1 398 0
	l32r	a2, .LC16
.LVL32:
	.loc 1 402 0
	retw.n
.LFE10:
	.size	verify_segment_header, .-verify_segment_header
	.section	.rodata.str1.4
	.align	4
.LC25:
	.string	"\033[0;31mE (%d) %s: Checksum failed. Calculated 0x%x read 0x%x\033[0m\n"
	.section	.text.verify_checksum,"ax",@progbits
	.literal_position
	.literal .LC23, 8194
	.literal .LC24, .LC6
	.literal .LC26, .LC25
	.align	4
	.type	verify_checksum, @function
verify_checksum:
.LFB14:
	.loc 1 459 0
.LVL33:
	entry	sp, 64
.LCFI3:
	.loc 1 460 0
	l32i	a7, a4, 220
.LVL34:
	.loc 1 462 0
	addi	a6, a7, 16
	movi.n	a5, -0x10
	and	a5, a6, a5
.LVL35:
	.loc 1 466 0
	l32i.n	a10, a4, 0
	sub	a6, a5, a7
	movi.n	a13, 1
	mov.n	a12, a6
	addi	a11, sp, 16
	add.n	a10, a7, a10
	call8	bootloader_flash_read
.LVL36:
	.loc 1 467 0
	addi.n	a7, a6, -1
.LVL37:
	addi	a8, sp, 16
	add.n	a7, a8, a7
	l8ui	a7, a7, 0
.LVL38:
	.loc 1 468 0
	extui	a11, a3, 24, 8
	.loc 1 469 0
	extui	a8, a3, 16, 16
.LVL39:
	.loc 1 470 0
	srli	a9, a3, 8
	.loc 1 468 0
	xor	a8, a11, a8
	xor	a8, a8, a9
	xor	a3, a8, a3
.LVL40:
	extui	a3, a3, 0, 8
.LVL41:
	.loc 1 472 0
	movi.n	a12, 1
	movi.n	a11, 0
	mov.n	a8, a11
	movnez	a8, a12, a10
	sub	a9, a7, a3
	mov.n	a10, a11
.LVL42:
	movnez	a10, a12, a9
	or	a10, a10, a8
	beq	a10, a11, .L20
	.loc 1 473 0 discriminator 2
	call8	esp_log_timestamp
.LVL43:
	l32r	a11, .LC24
	s32i.n	a7, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC26
	movi.n	a10, 1
	call8	esp_log_write
.LVL44:
	.loc 1 474 0 discriminator 2
	l32r	a2, .LC23
.LVL45:
	retw.n
.LVL46:
.L20:
	.loc 1 476 0
	beqz.n	a2, .L22
	.loc 1 477 0
	mov.n	a12, a6
	addi	a11, sp, 16
.LVL47:
	mov.n	a10, a2
	call8	bootloader_sha256_data
.LVL48:
.L22:
	.loc 1 480 0
	l8ui	a2, a4, 27
.LVL49:
	beqz.n	a2, .L23
	.loc 1 482 0
	addi	a5, a5, 32
.LVL50:
.L23:
	.loc 1 484 0
	s32i	a5, a4, 220
	.loc 1 486 0
	movi.n	a2, 0
	.loc 1 487 0
	retw.n
.LFE14:
	.size	verify_checksum, .-verify_checksum
	.section	.text.should_load,"ax",@progbits
	.literal_position
	.literal .LC27, 268435455
	.literal .LC28, -1074528256
	.literal .LC29, 8191
	.literal .LC30, -1342177280
	.align	4
	.type	should_load, @function
should_load:
.LFB12:
	.loc 1 411 0
.LVL51:
	entry	sp, 32
.LCFI4:
	.loc 1 414 0
	movi.n	a10, 0
	call8	rtc_get_reset_reason
.LVL52:
	mov.n	a3, a10
.LVL53:
	.loc 1 416 0
	mov.n	a10, a2
	call8	should_map
.LVL54:
	bnez.n	a10, .L26
	.loc 1 420 0
	l32r	a8, .LC27
	bgeu	a8, a2, .L25
	.loc 1 428 0
	bnei	a3, 5, .L27
	.loc 1 429 0
	l32r	a3, .LC28
.LVL55:
	add.n	a3, a2, a3
	l32r	a8, .LC29
	bgeu	a8, a3, .L25
	.loc 1 433 0
	l32r	a3, .LC30
	add.n	a2, a2, a3
.LVL56:
	mov.n	a3, a8
	bgeu	a8, a2, .L25
	.loc 1 439 0
	movi.n	a10, 1
	j	.L25
.LVL57:
.L26:
	.loc 1 417 0
	movi.n	a10, 0
	j	.L25
.L27:
	.loc 1 439 0
	movi.n	a10, 1
.LVL58:
.L25:
	.loc 1 440 0
	mov.n	a2, a10
	retw.n
.LFE12:
	.size	should_load, .-should_load
	.section	.rodata.str1.4
	.align	4
.LC32:
	.string	"\033[0;31mE (%d) %s: bootloader_mmap(0x%x, 0x%x) failed\033[0m\n"
	.section	.text.process_segment_data,"ax",@progbits
	.literal_position
	.literal .LC31, .LC6
	.literal .LC33, .LC32
	.align	4
	.type	process_segment_data, @function
process_segment_data:
.LFB9:
	.loc 1 331 0
.LVL59:
	entry	sp, 48
.LCFI5:
	.loc 1 332 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	bootloader_mmap
.LVL60:
	mov.n	a2, a10
.LVL61:
	.loc 1 333 0
	bnez.n	a10, .L33
	.loc 1 334 0 discriminator 2
	call8	esp_log_timestamp
.LVL62:
	l32r	a11, .LC31
	s32i.n	a4, sp, 0
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC33
	movi.n	a10, 1
	call8	esp_log_write
.LVL63:
	.loc 1 336 0 discriminator 2
	movi.n	a2, -1
.LVL64:
	retw.n
.LVL65:
.L32:
.LBB6:
.LBB7:
	.loc 1 350 0
	addi.n	a11, a3, 3
	movgez	a11, a3, a3
	srai	a11, a11, 2
.LVL66:
	.loc 1 351 0
	addx4	a11, a11, a2
.LVL67:
	l32i.n	a8, a11, 0
.LVL68:
	.loc 1 352 0
	l32i.n	a9, a7, 0
	xor	a8, a9, a8
.LVL69:
	s32i.n	a8, a7, 0
.LVL70:
	.loc 1 363 0
	beqz.n	a6, .L31
	.loc 1 363 0 discriminator 1
	extui	a8, a12, 0, 10
	bnez.n	a8, .L31
	.loc 1 365 0
	sub	a12, a4, a12
	.loc 1 364 0
	movi	a8, 0x400
	minu	a12, a12, a8
	mov.n	a10, a6
	call8	bootloader_sha256_data
.LVL71:
.L31:
.LBE7:
	.loc 1 349 0 discriminator 2
	addi.n	a3, a3, 4
.LVL72:
	j	.L29
.LVL73:
.L33:
.LBE6:
	movi.n	a3, 0
.LVL74:
.L29:
.LBB8:
	.loc 1 349 0 is_stmt 0 discriminator 1
	mov.n	a12, a3
	bltu	a3, a4, .L32
.LBE8:
	.loc 1 369 0 is_stmt 1
	mov.n	a10, a2
	call8	bootloader_munmap
.LVL75:
	.loc 1 371 0
	movi.n	a2, 0
.LVL76:
	.loc 1 372 0
	retw.n
.LFE9:
	.size	process_segment_data, .-process_segment_data
	.section	.rodata.str1.4
	.align	4
.LC34:
	.string	"load"
	.align	4
.LC36:
	.string	""
	.align	4
.LC38:
	.string	"map"
	.align	4
.LC42:
	.string	"\033[0;31mE (%d) %s: bootloader_flash_read failed at 0x%08x\033[0m\n"
	.align	4
.LC44:
	.string	"\033[0;31mE (%d) %s: unaligned segment length 0x%x\033[0m\n"
	.align	4
.LC46:
	.string	"\033[0;32mI (%d) %s: segment %d: paddr=0x%08x vaddr=0x%08x size=0x%05x (%6d) %s\033[0m\n"
	.align	4
.LC49:
	.string	"\033[0;31mE (%d) %s: Segment %d end address 0x%08x too high (bootloader stack 0x%08x liimit 0x%08x)\033[0m\n"
	.section	.text.process_segment,"ax",@progbits
	.literal_position
	.literal .LC35, .LC34
	.literal .LC37, .LC36
	.literal .LC39, .LC38
	.literal .LC40, 8194
	.literal .LC41, .LC6
	.literal .LC43, .LC42
	.literal .LC45, .LC44
	.literal .LC47, .LC46
	.literal .LC48, 1073741823
	.literal .LC50, .LC49
	.align	4
	.type	process_segment, @function
process_segment:
.LFB8:
	.loc 1 252 0
.LVL77:
	entry	sp, 96
.LCFI6:
	s32i.n	a7, sp, 36
	l32i.n	a8, sp, 36
	s32i.n	a8, sp, 44
	.loc 1 256 0
	movi.n	a13, 1
	movi.n	a12, 8
	mov.n	a11, a4
	mov.n	a10, a3
	call8	bootloader_flash_read
.LVL78:
	mov.n	a7, a10
.LVL79:
	.loc 1 257 0
	beqz.n	a10, .L35
	.loc 1 258 0 discriminator 2
	call8	esp_log_timestamp
.LVL80:
	l32r	a11, .LC41
	mov.n	a15, a3
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC43
	movi.n	a10, 1
	call8	esp_log_write
.LVL81:
	.loc 1 259 0 discriminator 2
	mov.n	a2, a7
.LVL82:
	retw.n
.LVL83:
.L35:
	.loc 1 261 0
	l32i.n	a8, sp, 44
	beqz.n	a8, .L37
	.loc 1 262 0
	movi.n	a12, 8
	mov.n	a11, a4
	l32i.n	a10, sp, 36
	call8	bootloader_sha256_data
.LVL84:
.L37:
	.loc 1 265 0
	l32i.n	a8, a4, 0
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 32
.LVL85:
	.loc 1 266 0
	l32i.n	a7, a4, 4
.LVL86:
	.loc 1 267 0
	addi.n	a3, a3, 8
.LVL87:
	.loc 1 271 0
	mov.n	a13, a5
	mov.n	a12, a3
	mov.n	a11, a4
	mov.n	a10, a2
	call8	verify_segment_header
.LVL88:
	mov.n	a4, a10
.LVL89:
	.loc 1 272 0
	bnez.n	a10, .L46
	.loc 1 276 0
	extui	a8, a7, 0, 2
	beqz.n	a8, .L38
	.loc 1 277 0
	bnez.n	a5, .L39
	.loc 1 277 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL90:
	l32r	a11, .LC41
	mov.n	a15, a7
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC45
	movi.n	a10, 1
	call8	esp_log_write
.LVL91:
	j	.L39
.L38:
	.loc 1 280 0 is_stmt 1
	l32i.n	a10, sp, 40
	call8	should_map
.LVL92:
	s32i.n	a10, sp, 48
.LVL93:
	.loc 1 281 0
	beqz.n	a6, .L47
	.loc 1 281 0 is_stmt 0 discriminator 1
	l32i.n	a10, sp, 40
	call8	should_load
.LVL94:
	beqz.n	a10, .L48
	.loc 1 281 0
	movi.n	a6, 1
.LVL95:
	j	.L40
.LVL96:
.L47:
	movi.n	a6, 0
.LVL97:
	j	.L40
.LVL98:
.L48:
	movi.n	a6, 0
.LVL99:
.L40:
	.loc 1 281 0 discriminator 6
	mov.n	a4, a6
.LVL100:
	.loc 1 283 0 is_stmt 1 discriminator 6
	bnez.n	a5, .L41
	.loc 1 284 0 discriminator 33
	call8	esp_log_timestamp
.LVL101:
	bnez.n	a6, .L49
	.loc 1 284 0 is_stmt 0 discriminator 43
	l32i.n	a5, sp, 48
.LVL102:
	beqz.n	a5, .L50
	.loc 1 284 0
	l32r	a5, .LC39
	j	.L42
.LVL103:
.L49:
	l32r	a5, .LC35
.LVL104:
	j	.L42
.L50:
	l32r	a5, .LC37
.L42:
	.loc 1 284 0 discriminator 49
	l32r	a11, .LC41
	s32i.n	a5, sp, 16
	s32i.n	a7, sp, 12
	s32i.n	a7, sp, 8
	l32i.n	a5, sp, 40
	s32i.n	a5, sp, 4
	s32i.n	a3, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC47
	movi.n	a10, 3
	call8	esp_log_write
.LVL105:
.L41:
	.loc 1 290 0 is_stmt 1
	beqz.n	a4, .L43
.LBB9:
	.loc 1 292 0
	l32i.n	a5, sp, 40
	add.n	a4, a5, a7
.LVL106:
	.loc 1 293 0
	l32r	a5, .LC48
	bltu	a5, a4, .L43
.LBB10:
.LBB11:
.LBB12:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h"
	.loc 2 35 0
#APP
# 35 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/cpu.h" 1
	mov a5, sp;
# 0 "" 2
#NO_APP
	s32i.n	a5, sp, 48
.LVL107:
.LBE12:
.LBE11:
	.loc 1 295 0
	addmi	a5, a5, -0x8000
.LVL108:
	bgeu	a5, a4, .L43
	.loc 1 296 0 discriminator 2
	call8	esp_log_timestamp
.LVL109:
	l32r	a11, .LC41
	s32i.n	a5, sp, 8
	l32i.n	a3, sp, 48
.LVL110:
	s32i.n	a3, sp, 4
	s32i.n	a4, sp, 0
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC50
	movi.n	a10, 1
	call8	esp_log_write
.LVL111:
	.loc 1 298 0 discriminator 2
	l32r	a2, .LC40
.LVL112:
	retw.n
.LVL113:
.L43:
.LBE10:
.LBE9:
	.loc 1 303 0
	movi.n	a10, 0
	call8	spi_flash_mmap_get_free_pages
.LVL114:
	mov.n	a4, a10
.LVL115:
	l32i.n	a5, sp, 44
	.loc 1 306 0
	j	.L44
.LVL116:
.L45:
	.loc 1 307 0
	extui	a8, a3, 0, 16
	movi.n	a2, 0
	movi.n	a9, 1
	movnez	a2, a9, a8
.LVL117:
	.loc 1 308 0
	sub	a2, a4, a2
.LVL118:
	slli	a2, a2, 16
	l32i	a15, sp, 96
	mov.n	a14, a5
	mov.n	a13, a6
	mov.n	a12, a2
	mov.n	a11, a3
	l32i.n	a10, sp, 32
	call8	process_segment_data
.LVL119:
	.loc 1 309 0
	bnez.n	a10, .L51
	.loc 1 312 0
	add.n	a3, a3, a2
.LVL120:
	.loc 1 313 0
	sub	a7, a7, a2
.LVL121:
.L44:
	.loc 1 306 0
	slli	a2, a4, 16
	bgeu	a7, a2, .L45
	.loc 1 316 0
	l32i	a15, sp, 96
	l32i.n	a14, sp, 36
	mov.n	a13, a6
	mov.n	a12, a7
	mov.n	a11, a3
	l32i.n	a10, sp, 40
	call8	process_segment_data
.LVL122:
	.loc 1 317 0
	bnez.n	a10, .L52
	.loc 1 320 0
	movi.n	a2, 0
	retw.n
.LVL123:
.L39:
	.loc 1 323 0
	beqz.n	a4, .L53
	.loc 1 271 0
	mov.n	a2, a4
.LVL124:
	retw.n
.LVL125:
.L46:
	.loc 1 273 0
	mov.n	a2, a10
.LVL126:
	retw.n
.LVL127:
.L51:
	.loc 1 310 0
	mov.n	a2, a10
	retw.n
.LVL128:
.L52:
	.loc 1 318 0
	mov.n	a2, a10
	retw.n
.LVL129:
.L53:
	.loc 1 324 0
	l32r	a2, .LC40
.LVL130:
	.loc 1 328 0
	retw.n
.LFE8:
	.size	process_segment, .-process_segment
	.section	.rodata.str1.4
	.align	4
.LC53:
	.string	"\033[0;31mE (%d) %s: Image hash failed - image is corrupt\033[0m\n"
	.section	.text.verify_simple_hash,"ax",@progbits
	.literal_position
	.literal .LC51, 8194
	.literal .LC52, .LC6
	.literal .LC54, .LC53
	.align	4
	.type	verify_simple_hash, @function
verify_simple_hash:
.LFB16:
	.loc 1 535 0
.LVL131:
	entry	sp, 64
.LCFI7:
	.loc 1 536 0
	movi.n	a4, 0x20
	mov.n	a12, a4
	movi.n	a11, 0
	mov.n	a10, sp
	call8	memset
.LVL132:
	.loc 1 537 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	bootloader_sha256_finish
.LVL133:
	.loc 1 543 0
	l32i.n	a10, a3, 0
	l32i	a2, a3, 220
.LVL134:
	add.n	a10, a10, a2
	mov.n	a11, a4
	addi	a10, a10, -32
	call8	bootloader_mmap
.LVL135:
	mov.n	a3, a10
.LVL136:
	.loc 1 544 0
	mov.n	a12, a4
	mov.n	a11, sp
	call8	memcmp
.LVL137:
	mov.n	a2, a10
	beqz.n	a10, .L55
	.loc 1 545 0 discriminator 2
	call8	esp_log_timestamp
.LVL138:
	l32r	a11, .LC52
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC54
	movi.n	a10, 1
	call8	esp_log_write
.LVL139:
	.loc 1 547 0 discriminator 2
	mov.n	a10, a3
	call8	bootloader_munmap
.LVL140:
	.loc 1 548 0 discriminator 2
	l32r	a2, .LC51
	retw.n
.L55:
	.loc 1 551 0
	mov.n	a10, a3
	call8	bootloader_munmap
.LVL141:
	.loc 1 553 0
	retw.n
.LFE16:
	.size	verify_simple_hash, .-verify_simple_hash
	.section	.rodata.str1.4
	.align	4
.LC58:
	.string	"\033[0;31mE (%d) %s: partition size 0x%x invalid, larger than 16MB\033[0m\n"
	.align	4
.LC60:
	.string	"\033[0;31mE (%d) %s: image at 0x%x segment count %d exceeds max %d\033[0m\n"
	.align	4
.LC62:
	.string	"\033[0;31mE (%d) %s: image offset has wrapped\033[0m\n"
	.align	4
.LC64:
	.string	"\033[0;31mE (%d) %s: Image length %d doesn't fit in partition length %d\033[0m\n"
	.section	.text.esp_image_load,"ax",@progbits
	.literal_position
	.literal .LC55, 8194
	.literal .LC56, 16777216
	.literal .LC57, .LC6
	.literal .LC59, .LC58
	.literal .LC61, .LC60
	.literal .LC63, .LC62
	.literal .LC65, .LC64
	.literal .LC66, 4096
	.align	4
	.global	esp_image_load
	.type	esp_image_load, @function
esp_image_load:
.LFB6:
	.loc 1 79 0
.LVL142:
	entry	sp, 80
.LCFI8:
.LVL143:
	.loc 1 85 0
	addi.n	a5, a2, -1
	movi.n	a6, 1
	movi.n	a8, 0
	mov.n	a9, a8
	moveqz	a9, a6, a5
	extui	a5, a9, 0, 8
.LVL144:
	.loc 1 88 0
	movi	a7, 0xef
	s32i.n	a7, sp, 16
.LVL145:
	.loc 1 91 0
	mov.n	a9, a8
.LVL146:
	moveqz	a9, a6, a4
	mov.n	a7, a9
	.loc 1 91 0
	movnez	a6, a8, a3
	or	a6, a6, a9
	.loc 1 91 0
	bne	a6, a8, .L72
	.loc 1 95 0
	l32i.n	a6, a3, 4
	l32r	a7, .LC56
	bgeu	a7, a6, .L59
.LVL147:
	.loc 1 97 0
	beqi	a2, 1, .L73
	.loc 1 97 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL148:
	l32r	a11, .LC57
	l32i.n	a15, a3, 4
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC59
	movi.n	a10, 1
	call8	esp_log_write
.LVL149:
	.loc 1 89 0 is_stmt 1 discriminator 3
	movi.n	a7, 0
	.loc 1 96 0 discriminator 3
	movi	a6, 0x102
	j	.L60
.LVL150:
.L59:
	.loc 1 100 0
	movi	a12, 0xe0
	movi.n	a11, 0
	mov.n	a10, a4
	call8	memset
.LVL151:
	.loc 1 101 0
	l32i.n	a10, a3, 0
	s32i.n	a10, a4, 0
	.loc 1 104 0
	addi.n	a6, a4, 4
	s32i.n	a6, sp, 32
	movi.n	a13, 1
	movi.n	a12, 0x18
	mov.n	a11, a6
	call8	bootloader_flash_read
.LVL152:
	mov.n	a6, a10
.LVL153:
	.loc 1 105 0
	bnez.n	a10, .L74
	.loc 1 113 0
	l8ui	a6, a4, 27
.LVL154:
	beqz.n	a6, .L75
	.loc 1 115 0
	call8	bootloader_sha256_start
.LVL155:
	mov.n	a7, a10
.LVL156:
	.loc 1 116 0
	beqz.n	a10, .L76
	.loc 1 119 0
	movi.n	a12, 0x18
	l32i.n	a11, sp, 32
	call8	bootloader_sha256_data
.LVL157:
	j	.L61
.LVL158:
.L75:
	.loc 1 89 0
	movi.n	a7, 0
.LVL159:
.L61:
	.loc 1 129 0
	s32i.n	a5, sp, 36
	mov.n	a12, a5
	l32i.n	a11, sp, 32
	l32i.n	a10, a4, 0
	call8	verify_image_header
.LVL160:
	mov.n	a6, a10
.LVL161:
	.loc 1 130 0
	bnez.n	a10, .L60
	.loc 1 134 0
	l8ui	a5, a4, 5
.LVL162:
	movi.n	a8, 0x10
	bgeu	a8, a5, .L62
	.loc 1 135 0
	beqi	a2, 1, .L60
	.loc 1 135 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL163:
	l8ui	a2, a4, 5
.LVL164:
	l32r	a11, .LC57
	movi.n	a3, 0x10
.LVL165:
	s32i.n	a3, sp, 4
	s32i.n	a2, sp, 0
	l32i.n	a15, a4, 0
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC61
	movi.n	a10, 1
	call8	esp_log_write
.LVL166:
	j	.L60
.LVL167:
.L62:
	.loc 1 139 0 is_stmt 1
	l32i.n	a5, a4, 0
	addi	a5, a5, 24
	s32i.n	a5, sp, 32
.LVL168:
.LBB13:
	.loc 1 140 0
	movi.n	a5, 0
.LVL169:
	j	.L63
.LVL170:
.L64:
.LBB14:
	.loc 1 141 0
	addi.n	a12, a5, 2
	addx8	a12, a12, a4
.LVL171:
	.loc 1 143 0
	addi	a6, sp, 16
.LVL172:
	s32i.n	a6, sp, 0
	mov.n	a15, a7
	movi.n	a14, 0
	l32i.n	a13, sp, 36
	addi.n	a12, a12, 12
.LVL173:
	l32i.n	a11, sp, 32
	mov.n	a10, a5
.LVL174:
	call8	process_segment
.LVL175:
	mov.n	a6, a10
.LVL176:
	.loc 1 144 0
	bnez.n	a10, .L60
	.loc 1 147 0 discriminator 2
	l32i.n	a8, sp, 32
	addi.n	a9, a8, 8
.LVL177:
	.loc 1 148 0 discriminator 2
	addi	a8, a5, 36
	addx4	a8, a8, a4
	s32i.n	a9, a8, 12
	.loc 1 149 0 discriminator 2
	addi.n	a8, a5, 2
.LVL178:
	addx8	a8, a8, a4
.LVL179:
	l32i.n	a8, a8, 16
.LVL180:
	add.n	a8, a9, a8
	s32i.n	a8, sp, 32
.LVL181:
.LBE14:
	.loc 1 140 0 discriminator 2
	addi.n	a5, a5, 1
.LVL182:
.L63:
	.loc 1 140 0 is_stmt 0 discriminator 1
	l8ui	a8, a4, 5
	blt	a5, a8, .L64
.LVL183:
.LBE13:
	.loc 1 154 0 is_stmt 1
	l32i.n	a5, a4, 0
.LVL184:
	l32i.n	a9, sp, 32
	bgeu	a9, a5, .L65
	.loc 1 155 0
	beqi	a2, 1, .L60
	.loc 1 155 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL185:
	l32r	a11, .LC57
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC63
	movi.n	a10, 1
	call8	esp_log_write
.LVL186:
	j	.L60
.LVL187:
.L65:
	.loc 1 158 0 is_stmt 1
	l32i.n	a8, sp, 32
	sub	a5, a8, a5
	s32i	a5, a4, 220
	.loc 1 160 0
	call8	esp_cpu_in_ocd_debug_mode
.LVL188:
	bnez.n	a10, .L66
	.loc 1 161 0
	mov.n	a12, a4
	l32i.n	a11, sp, 16
	mov.n	a10, a7
	call8	verify_checksum
.LVL189:
	mov.n	a6, a10
.LVL190:
	.loc 1 162 0
	bnez.n	a10, .L60
.L66:
	.loc 1 166 0
	l32i	a5, a4, 220
	l32i.n	a8, a3, 4
	bgeu	a8, a5, .L67
	.loc 1 167 0
	beqi	a2, 1, .L60
	.loc 1 167 0 is_stmt 0 discriminator 3
	call8	esp_log_timestamp
.LVL191:
	l32r	a11, .LC57
	l32i.n	a2, a3, 4
.LVL192:
	s32i.n	a2, sp, 0
	l32i	a15, a4, 220
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC65
	movi.n	a10, 1
	call8	esp_log_write
.LVL193:
	j	.L60
.LVL194:
.L67:
	.loc 1 170 0 is_stmt 1
	l32i.n	a3, a4, 0
.LVL195:
	.loc 1 176 0
	l32r	a2, .LC66
.LVL196:
	beq	a3, a2, .L68
	.loc 1 182 0
	beqz.n	a7, .L69
	.loc 1 182 0 discriminator 1
	call8	esp_cpu_in_ocd_debug_mode
.LVL197:
	bnez.n	a10, .L69
	.loc 1 183 0
	mov.n	a11, a4
	mov.n	a10, a7
	call8	verify_simple_hash
.LVL198:
	mov.n	a6, a10
.LVL199:
	j	.L69
.L68:
	.loc 1 188 0
	beqz.n	a7, .L69
	.loc 1 189 0
	movi.n	a11, 0
	mov.n	a10, a7
	call8	bootloader_sha256_finish
.LVL200:
.L69:
	.loc 1 193 0
	beqz.n	a6, .L77
	.loc 1 192 0
	movi.n	a7, 0
	j	.L60
.LVL201:
.L73:
	.loc 1 89 0
	movi.n	a7, 0
	.loc 1 96 0
	movi	a6, 0x102
	j	.L60
.LVL202:
.L74:
	.loc 1 89 0
	movi.n	a7, 0
.LVL203:
.L60:
	.loc 1 215 0
	bnez.n	a6, .L70
	.loc 1 216 0
	l32r	a6, .LC55
.LVL204:
.L70:
	.loc 1 218 0
	beqz.n	a7, .L71
	.loc 1 220 0
	movi.n	a11, 0
.LVL205:
	mov.n	a10, a7
	call8	bootloader_sha256_finish
.LVL206:
.L71:
	.loc 1 223 0
	movi	a12, 0xe0
	movi.n	a11, 0
.LVL207:
	mov.n	a10, a4
	call8	memset
.LVL208:
	.loc 1 224 0
	mov.n	a2, a6
	retw.n
.LVL209:
.L72:
	.loc 1 92 0
	movi	a2, 0x102
.LVL210:
	retw.n
.LVL211:
.L76:
	.loc 1 117 0
	movi	a2, 0x101
.LVL212:
	retw.n
.LVL213:
.L77:
	.loc 1 212 0
	movi.n	a2, 0
	.loc 1 225 0
	retw.n
.LFE6:
	.size	esp_image_load, .-esp_image_load
	.section	.rodata
	.align	4
.LC0:
	.word	4096
	.word	61440
	.section	.text.esp_image_verify_bootloader,"ax",@progbits
	.literal_position
	.literal .LC67, .LC0
	.align	4
	.global	esp_image_verify_bootloader
	.type	esp_image_verify_bootloader, @function
esp_image_verify_bootloader:
.LFB13:
	.loc 1 443 0
.LVL214:
	entry	sp, 272
.LCFI9:
	.loc 1 445 0
	l32r	a8, .LC67
	l32i.n	a9, a8, 0
	l32i.n	a8, a8, 4
	s32i	a9, sp, 224
	s32i	a8, sp, 228
	.loc 1 449 0
	mov.n	a12, sp
	movi	a11, 0xe0
	add.n	a11, a11, sp
	movi.n	a10, 0
	call8	esp_image_load
.LVL215:
	.loc 1 452 0
	beqz.n	a2, .L80
	.loc 1 453 0
	bnez.n	a10, .L82
	.loc 1 453 0 is_stmt 0 discriminator 1
	l32i	a8, sp, 220
	j	.L81
.L82:
	.loc 1 453 0
	movi.n	a8, 0
.L81:
	.loc 1 453 0 discriminator 4
	s32i.n	a8, a2, 0
.L80:
	.loc 1 456 0 is_stmt 1
	mov.n	a2, a10
.LVL216:
	retw.n
.LFE13:
	.size	esp_image_verify_bootloader, .-esp_image_verify_bootloader
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI0-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI2-.LFB10
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI4-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI5-.LFB9
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI6-.LFB8
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI7-.LFB16
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI8-.LFB6
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI9-.LFB13
	.byte	0xe
	.uleb128 0x110
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/rtc.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_flash_data_types.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include/esp_image_format.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/spi_flash/include/esp_spi_flash.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_sha.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/include_priv/bootloader_flash.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x135b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0xc
	.4byte	.LASF160
	.4byte	.LASF161
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x31
	.4byte	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2c
	.4byte	0x65
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa9
	.4byte	0x89
	.uleb128 0x6
	.byte	0x4
	.4byte	0xef
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x50
	.4byte	0x15d
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x63
	.4byte	0x1b5
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF45
	.2byte	0x100
	.uleb128 0xb
	.4byte	.LASF46
	.2byte	0x200
	.uleb128 0xb
	.4byte	.LASF47
	.2byte	0x400
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x6
	.byte	0x81
	.4byte	0x1e6
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x7
	.byte	0x18
	.4byte	0xc8
	.uleb128 0xc
	.byte	0x8
	.byte	0x8
	.byte	0x24
	.4byte	0x212
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x25
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0x26
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x27
	.4byte	0x1f1
	.uleb128 0xe
	.4byte	0xbd
	.4byte	0x22d
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x1d
	.4byte	0x25e
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x27
	.4byte	0x283
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x2f
	.4byte	0x2b4
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF73
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.byte	0x18
	.byte	0x9
	.byte	0x3b
	.4byte	0x33b
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x9
	.byte	0x3c
	.4byte	0xbd
	.byte	0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x9
	.byte	0x3d
	.4byte	0xbd
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x9
	.byte	0x3f
	.4byte	0xbd
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x9
	.byte	0x41
	.4byte	0xbd
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x9
	.byte	0x43
	.4byte	0xbd
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x3
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x9
	.byte	0x44
	.4byte	0xd3
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x9
	.byte	0x47
	.4byte	0xbd
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x9
	.byte	0x49
	.4byte	0x33b
	.byte	0x9
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x9
	.byte	0x4b
	.4byte	0x34b
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x9
	.byte	0x4f
	.4byte	0xbd
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.4byte	0xbd
	.4byte	0x34b
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	0xbd
	.4byte	0x35b
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x9
	.byte	0x50
	.4byte	0x2b4
	.uleb128 0xc
	.byte	0x8
	.byte	0x9
	.byte	0x55
	.4byte	0x387
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x9
	.byte	0x56
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x9
	.byte	0x57
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x9
	.byte	0x58
	.4byte	0x366
	.uleb128 0xc
	.byte	0xe0
	.byte	0x9
	.byte	0x5d
	.4byte	0x3d7
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x9
	.byte	0x5e
	.4byte	0xd3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x9
	.byte	0x5f
	.4byte	0x35b
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x9
	.byte	0x60
	.4byte	0x3d7
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0x9
	.byte	0x61
	.4byte	0x3e7
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x9
	.byte	0x62
	.4byte	0xd3
	.byte	0xdc
	.byte	0
	.uleb128 0xe
	.4byte	0x387
	.4byte	0x3e7
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	0xd3
	.4byte	0x3f7
	.uleb128 0xf
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x9
	.byte	0x63
	.4byte	0x392
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x9
	.byte	0x66
	.4byte	0x41b
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x9
	.byte	0x6c
	.4byte	0x402
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xa
	.byte	0x1f
	.4byte	0x457
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xb
	.byte	0xa1
	.4byte	0x470
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xc
	.byte	0x1a
	.4byte	0xa2
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0x2
	.byte	0x20
	.4byte	0xa2
	.byte	0x3
	.4byte	0x496
	.uleb128 0x12
	.string	"sp"
	.byte	0x2
	.byte	0x22
	.4byte	0xa2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x194
	.4byte	0x4c1
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c1
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x194
	.4byte	0xd3
	.4byte	.LLST0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF106
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x1
	.byte	0xe3
	.4byte	0x1e6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5df
	.uleb128 0x16
	.4byte	.LASF109
	.byte	0x1
	.byte	0xe3
	.4byte	0xd3
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0xe3
	.4byte	0x5df
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x1
	.byte	0xe3
	.4byte	0x4c1
	.4byte	.LLST3
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.byte	0xe5
	.4byte	0x1e6
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LVL5
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x12db
	.4byte	0x55a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL9
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL10
	.4byte	0x12db
	.4byte	0x59e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL11
	.4byte	0x12d0
	.uleb128 0x1b
	.4byte	.LVL13
	.4byte	0x12db
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5e5
	.uleb128 0x7
	.4byte	0x35b
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x176
	.4byte	0x1e6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f3
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x176
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x176
	.4byte	0x6f3
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x176
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x176
	.4byte	0x4c1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1d
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x180
	.4byte	0xd3
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x181
	.4byte	0x4c1
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x12db
	.4byte	0x697
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL21
	.4byte	0x496
	.4byte	0x6ab
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0x12d0
	.uleb128 0x1b
	.4byte	.LVL23
	.4byte	0x12db
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6f9
	.uleb128 0x7
	.4byte	0x387
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x1e6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x823
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x470
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1ca
	.4byte	0xd3
	.4byte	.LLST10
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x823
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xd3
	.4byte	.LLST11
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1cd
	.4byte	0xd3
	.4byte	.LLST12
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x21d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x1e6
	.4byte	.LLST13
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1d3
	.4byte	0xbd
	.4byte	.LLST14
	.uleb128 0x20
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL36
	.4byte	0x12e6
	.4byte	0x7c2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x18
	.4byte	.LVL43
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL44
	.4byte	0x12db
	.4byte	0x806
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC25
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL48
	.4byte	0x12f1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3f7
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x19a
	.4byte	0x4c1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x887
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x19a
	.4byte	0xd3
	.4byte	.LLST15
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x19e
	.4byte	0x4c1
	.4byte	.LLST16
	.uleb128 0x19
	.4byte	.LVL52
	.4byte	0x12fc
	.4byte	0x876
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL54
	.4byte	0x496
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x14a
	.4byte	0x1e6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1b
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x14a
	.4byte	0xde
	.4byte	.LLST17
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x14a
	.4byte	0xd3
	.4byte	.LLST18
	.uleb128 0x1c
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x14a
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x14a
	.4byte	0x4c1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x14a
	.4byte	0x470
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x14a
	.4byte	0xa1b
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x14c
	.4byte	0xa21
	.4byte	.LLST19
	.uleb128 0x1e
	.string	"src"
	.byte	0x1
	.2byte	0x15b
	.4byte	0xa21
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0
	.4byte	0x9ac
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x15d
	.4byte	0x25
	.4byte	.LLST20
	.uleb128 0x22
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x1f
	.string	"w_i"
	.byte	0x1
	.2byte	0x15e
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0x1f
	.string	"w"
	.byte	0x1
	.2byte	0x15f
	.4byte	0xd3
	.4byte	.LLST22
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x16a
	.4byte	0xa2c
	.4byte	.LLST23
	.uleb128 0x1b
	.4byte	.LVL71
	.4byte	0x12f1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x14
	.byte	0x73
	.sleb128 3
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x19
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.2byte	0x400
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL60
	.4byte	0x1307
	.4byte	0x9c6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL62
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL63
	.4byte	0x12db
	.4byte	0xa0a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL75
	.4byte	0x1312
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa27
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x15
	.4byte	.LASF130
	.byte	0x1
	.byte	0xfb
	.4byte	0x1e6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb8
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0x1
	.byte	0xfb
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x16
	.4byte	.LASF131
	.byte	0x1
	.byte	0xfb
	.4byte	0xd3
	.4byte	.LLST25
	.uleb128 0x16
	.4byte	.LASF132
	.byte	0x1
	.byte	0xfb
	.4byte	0xdb8
	.4byte	.LLST26
	.uleb128 0x16
	.4byte	.LASF110
	.byte	0x1
	.byte	0xfb
	.4byte	0x4c1
	.4byte	.LLST27
	.uleb128 0x16
	.4byte	.LASF128
	.byte	0x1
	.byte	0xfb
	.4byte	0x4c1
	.4byte	.LLST28
	.uleb128 0x16
	.4byte	.LASF117
	.byte	0x1
	.byte	0xfb
	.4byte	0x470
	.4byte	.LLST29
	.uleb128 0x23
	.4byte	.LASF123
	.byte	0x1
	.byte	0xfb
	.4byte	0xa1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.byte	0xfd
	.4byte	0x1e6
	.4byte	.LLST30
	.uleb128 0x1d
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x109
	.4byte	0xde
	.4byte	.LLST31
	.uleb128 0x20
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x10a
	.4byte	0xd3
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x10b
	.4byte	0xd3
	.4byte	.LLST32
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.2byte	0x142
	.4byte	.L39
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x118
	.4byte	0x4c1
	.4byte	.LLST33
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x12f
	.4byte	0xd3
	.4byte	.LLST34
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x131
	.4byte	0xd3
	.4byte	.LLST35
	.uleb128 0x25
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xbd8
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x124
	.4byte	0xd3
	.4byte	.LLST36
	.uleb128 0x22
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x1f
	.string	"sp"
	.byte	0x1
	.2byte	0x126
	.4byte	0xde
	.4byte	.LLST37
	.uleb128 0x26
	.4byte	0x47b
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x1
	.2byte	0x126
	.4byte	0xb88
	.uleb128 0x22
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x27
	.4byte	0x48b
	.4byte	.LLST37
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL109
	.4byte	0x12d0
	.uleb128 0x1b
	.4byte	.LVL111
	.4byte	0x12db
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC49
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL78
	.4byte	0x12e6
	.4byte	0xbfc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x18
	.4byte	.LVL80
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL81
	.4byte	0x12db
	.4byte	0xc39
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL84
	.4byte	0x12f1
	.4byte	0xc59
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	.LVL88
	.4byte	0x5ea
	.4byte	0xc7f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL90
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL91
	.4byte	0x12db
	.4byte	0xcbc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC44
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL92
	.4byte	0x496
	.4byte	0xcd1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL94
	.4byte	0x829
	.4byte	0xce6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.4byte	.LVL101
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL105
	.4byte	0x12db
	.4byte	0xd3f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC46
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL114
	.4byte	0x131d
	.4byte	0xd52
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL119
	.4byte	0x887
	.4byte	0xd86
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL122
	.4byte	0x887
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x387
	.uleb128 0x13
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x216
	.4byte	0x1e6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xede
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x216
	.4byte	0x470
	.4byte	.LLST39
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x216
	.4byte	0x823
	.4byte	.LLST40
	.uleb128 0x20
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x218
	.4byte	0xede
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x21f
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	.LVL132
	.4byte	0x1329
	.4byte	0xe34
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL133
	.4byte	0x1332
	.4byte	0xe4e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.4byte	.LVL135
	.4byte	0x1307
	.4byte	0xe62
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL137
	.4byte	0x133d
	.4byte	0xe82
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL138
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL139
	.4byte	0x12db
	.4byte	0xeb9
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC53
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL140
	.4byte	0x1312
	.4byte	0xecd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL141
	.4byte	0x1312
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xbd
	.4byte	0xeee
	.uleb128 0xf
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.uleb128 0x28
	.4byte	.LASF144
	.byte	0x1
	.byte	0x4e
	.4byte	0x1e6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1229
	.uleb128 0x16
	.4byte	.LASF140
	.byte	0x1
	.byte	0x4e
	.4byte	0x41b
	.4byte	.LLST41
	.uleb128 0x16
	.4byte	.LASF141
	.byte	0x1
	.byte	0x4e
	.4byte	0x1229
	.4byte	.LLST42
	.uleb128 0x23
	.4byte	.LASF119
	.byte	0x1
	.byte	0x4e
	.4byte	0x823
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LASF128
	.byte	0x1
	.byte	0x53
	.4byte	0x4c1
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF110
	.byte	0x1
	.byte	0x55
	.4byte	0x4c1
	.4byte	.LLST43
	.uleb128 0x17
	.string	"err"
	.byte	0x1
	.byte	0x56
	.4byte	0x1e6
	.4byte	.LLST44
	.uleb128 0x2b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x58
	.4byte	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LASF117
	.byte	0x1
	.byte	0x59
	.4byte	0x470
	.4byte	.LLST45
	.uleb128 0x2c
	.string	"err"
	.byte	0x1
	.byte	0xd6
	.4byte	.L60
	.uleb128 0x2a
	.4byte	.LASF142
	.byte	0x1
	.byte	0x8b
	.4byte	0xd3
	.4byte	.LLST46
	.uleb128 0x2a
	.4byte	.LASF136
	.byte	0x1
	.byte	0x99
	.4byte	0xd3
	.4byte	.LLST47
	.uleb128 0x2a
	.4byte	.LASF143
	.byte	0x1
	.byte	0xaa
	.4byte	0x4c1
	.4byte	.LLST48
	.uleb128 0x25
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1022
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.4byte	0x25
	.4byte	.LLST49
	.uleb128 0x22
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.byte	0x8d
	.4byte	0xdb8
	.4byte	.LLST50
	.uleb128 0x1b
	.4byte	.LVL175
	.4byte	0xa31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0x75
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL148
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL149
	.4byte	0x12db
	.4byte	0x1059
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL151
	.4byte	0x1329
	.4byte	0x1078
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xe0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL152
	.4byte	0x12e6
	.4byte	0x1096
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x18
	.4byte	.LVL155
	.4byte	0x1348
	.uleb128 0x19
	.4byte	.LVL157
	.4byte	0x12f1
	.4byte	0x10bf
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL160
	.4byte	0x4c8
	.4byte	0x10db
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.4byte	.LVL163
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL166
	.4byte	0x12db
	.4byte	0x1120
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC60
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL185
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL186
	.4byte	0x12db
	.4byte	0x1157
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC62
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x18
	.4byte	.LVL188
	.4byte	0x1353
	.uleb128 0x19
	.4byte	.LVL189
	.4byte	0x6fe
	.4byte	0x117a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL191
	.4byte	0x12d0
	.uleb128 0x19
	.4byte	.LVL193
	.4byte	0x12db
	.4byte	0x11b8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x1a
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL197
	.4byte	0x1353
	.uleb128 0x19
	.4byte	.LVL198
	.4byte	0xdbe
	.4byte	0x11db
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL200
	.4byte	0x1332
	.4byte	0x11f4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL206
	.4byte	0x1332
	.4byte	0x120d
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL208
	.4byte	0x1329
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0xe0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x122f
	.uleb128 0x7
	.4byte	0x212
	.uleb128 0x2d
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x1e6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a8
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1ba
	.4byte	0xa1b
	.4byte	.LLST51
	.uleb128 0x20
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x3f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x20
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x122f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x1e6
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.4byte	.LVL215
	.4byte	0xeee
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.byte	0
	.uleb128 0x2e
	.string	"TAG"
	.byte	0x1
	.byte	0x1b
	.4byte	0x12ba
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC6
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xb2
	.uleb128 0x2f
	.4byte	.LASF163
	.byte	0x9
	.byte	0x2c
	.4byte	0x25e
	.uleb128 0x5
	.byte	0x3
	.4byte	esp_image_spi_freq_t
	.uleb128 0x30
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xa
	.byte	0x57
	.uleb128 0x30
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xa
	.byte	0x6b
	.uleb128 0x30
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xd
	.byte	0x4a
	.uleb128 0x30
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xc
	.byte	0x1e
	.uleb128 0x30
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x6
	.byte	0x9a
	.uleb128 0x30
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xd
	.byte	0x31
	.uleb128 0x30
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xd
	.byte	0x39
	.uleb128 0x31
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xb
	.2byte	0x101
	.uleb128 0x32
	.4byte	.LASF164
	.4byte	.LASF164
	.uleb128 0x30
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xc
	.byte	0x20
	.uleb128 0x30
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xe
	.byte	0x16
	.uleb128 0x30
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xc
	.byte	0x1c
	.uleb128 0x30
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x2
	.byte	0x66
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x1d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.2byte	0x7
	.byte	0x72
	.sleb128 1061158912
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
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
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL32
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
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
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL49
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL39
	.4byte	.LVL43-1
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL43-1
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL48-1
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL51
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x7
	.byte	0x72
	.sleb128 1342177280
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL59
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67
	.4byte	.LVL72
	.2byte	0x10
	.byte	0x73
	.sleb128 3
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x10
	.byte	0x73
	.sleb128 -1
	.byte	0x73
	.sleb128 -4
	.byte	0x73
	.sleb128 -4
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x32
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xa
	.2byte	0x400
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL77
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL116
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL125
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
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL77
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LVL110
	.2byte	0x3
	.byte	0x73
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL77
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL104
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL79
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL79
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL89
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL85
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88-1
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL87
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL93
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL115
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x10
	.byte	0x79
	.sleb128 0
	.byte	0x30
	.byte	0x78
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL119-1
	.4byte	.LVL120
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL106
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL108
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL131
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL131
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL142
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LVL209
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL142
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL195
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL203
	.4byte	.LVL209
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL213
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL146
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL162
	.4byte	.LVL201
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL201
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL203
	.4byte	.LVL205
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206-1
	.2byte	0xe
	.byte	0x31
	.byte	0x7b
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL206-1
	.4byte	.LVL207
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208-1
	.2byte	0xe
	.byte	0x31
	.byte	0x7b
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL208-1
	.4byte	.LVL209
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL213
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL144
	.4byte	.LVL147
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x4
	.byte	0xa
	.2byte	0x102
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL153
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL176
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x4
	.byte	0xa
	.2byte	0x102
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL209
	.4byte	.LVL211
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL145
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL200
	.4byte	.LVL203
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL203
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL209
	.4byte	.LVL211
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL213
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL169
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL177
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL182
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL187
	.4byte	.LVL188-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL188-1
	.4byte	.LVL201
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL213
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL183
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL187
	.4byte	.LVL188-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL188-1
	.4byte	.LVL201
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL213
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL195
	.4byte	.LVL201
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x1000
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LFE6
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0x1000
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x3
	.byte	0x7c
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL175-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL175-1
	.4byte	.LVL178
	.2byte	0xa
	.byte	0x75
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x3
	.byte	0x78
	.sleb128 12
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0xa
	.byte	0x75
	.sleb128 2
	.byte	0x33
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL214
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"EXT_EVENT1_TRIG"
.LASF108:
	.string	"verify_image_header"
.LASF159:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF32:
	.string	"RTCWDT_CPU_RESET"
.LASF114:
	.string	"segment_data_offs"
.LASF21:
	.string	"POWERON_RESET"
.LASF88:
	.string	"start_addr"
.LASF94:
	.string	"ESP_IMAGE_VERIFY"
.LASF117:
	.string	"sha_handle"
.LASF51:
	.string	"SDIO_IDLE_INT"
.LASF0:
	.string	"unsigned int"
.LASF72:
	.string	"ESP_IMAGE_FLASH_SIZE_16MB"
.LASF7:
	.string	"__int32_t"
.LASF77:
	.string	"spi_speed"
.LASF60:
	.string	"ESP_IMAGE_SPI_MODE_DIO"
.LASF113:
	.string	"segment"
.LASF44:
	.string	"UART1_TRIG"
.LASF87:
	.string	"esp_image_segment_header_t"
.LASF128:
	.string	"do_load"
.LASF140:
	.string	"mode"
.LASF50:
	.string	"REJECT_INT"
.LASF153:
	.string	"bootloader_munmap"
.LASF11:
	.string	"__intptr_t"
.LASF70:
	.string	"ESP_IMAGE_FLASH_SIZE_4MB"
.LASF149:
	.string	"bootloader_flash_read"
.LASF147:
	.string	"esp_log_timestamp"
.LASF84:
	.string	"esp_image_header_t"
.LASF96:
	.string	"esp_image_load_mode_t"
.LASF136:
	.string	"end_addr"
.LASF145:
	.string	"esp_image_verify_bootloader"
.LASF63:
	.string	"ESP_IMAGE_SPI_MODE_SLOW_READ"
.LASF18:
	.string	"uint32_t"
.LASF48:
	.string	"NO_INT"
.LASF135:
	.string	"offset_page"
.LASF115:
	.string	"map_segment"
.LASF123:
	.string	"checksum"
.LASF138:
	.string	"image_hash"
.LASF112:
	.string	"index"
.LASF110:
	.string	"silent"
.LASF126:
	.string	"process_segment_data"
.LASF78:
	.string	"spi_size"
.LASF158:
	.string	"esp_cpu_in_ocd_debug_mode"
.LASF10:
	.string	"long long unsigned int"
.LASF24:
	.string	"DEEPSLEEP_RESET"
.LASF141:
	.string	"part"
.LASF46:
	.string	"SAR_TRIG"
.LASF58:
	.string	"ESP_IMAGE_SPI_MODE_QIO"
.LASF151:
	.string	"rtc_get_reset_reason"
.LASF104:
	.string	"SPI_FLASH_MMAP_INST"
.LASF99:
	.string	"ESP_LOG_WARN"
.LASF27:
	.string	"TG1WDT_SYS_RESET"
.LASF143:
	.string	"is_bootloader"
.LASF73:
	.string	"ESP_IMAGE_FLASH_SIZE_MAX"
.LASF36:
	.string	"NO_SLEEP"
.LASF26:
	.string	"TG0WDT_SYS_RESET"
.LASF3:
	.string	"size_t"
.LASF55:
	.string	"offset"
.LASF124:
	.string	"should_load"
.LASF103:
	.string	"SPI_FLASH_MMAP_DATA"
.LASF59:
	.string	"ESP_IMAGE_SPI_MODE_QOUT"
.LASF106:
	.string	"_Bool"
.LASF64:
	.string	"ESP_IMAGE_SPI_SPEED_40M"
.LASF92:
	.string	"image_len"
.LASF22:
	.string	"SW_RESET"
.LASF25:
	.string	"SDIO_RESET"
.LASF37:
	.string	"EXT_EVENT0_TRIG"
.LASF69:
	.string	"ESP_IMAGE_FLASH_SIZE_2MB"
.LASF97:
	.string	"ESP_LOG_NONE"
.LASF33:
	.string	"EXT_CPU_RESET"
.LASF116:
	.string	"verify_checksum"
.LASF162:
	.string	"get_sp"
.LASF45:
	.string	"TOUCH_TRIG"
.LASF53:
	.string	"RTC_TIME_VALID_INT"
.LASF15:
	.string	"char"
.LASF146:
	.string	"bootloader_part"
.LASF61:
	.string	"ESP_IMAGE_SPI_MODE_DOUT"
.LASF144:
	.string	"esp_image_load"
.LASF119:
	.string	"data"
.LASF93:
	.string	"esp_image_metadata_t"
.LASF16:
	.string	"uint8_t"
.LASF120:
	.string	"unpadded_length"
.LASF43:
	.string	"UART0_TRIG"
.LASF9:
	.string	"long long int"
.LASF90:
	.string	"segments"
.LASF34:
	.string	"RTCWDT_BROWN_OUT_RESET"
.LASF30:
	.string	"TGWDT_CPU_RESET"
.LASF127:
	.string	"data_addr"
.LASF154:
	.string	"spi_flash_mmap_get_free_pages"
.LASF164:
	.string	"memset"
.LASF66:
	.string	"ESP_IMAGE_SPI_SPEED_20M"
.LASF56:
	.string	"size"
.LASF105:
	.string	"bootloader_sha256_handle_t"
.LASF100:
	.string	"ESP_LOG_INFO"
.LASF89:
	.string	"image"
.LASF155:
	.string	"bootloader_sha256_finish"
.LASF40:
	.string	"TIMER_EXPIRE"
.LASF132:
	.string	"header"
.LASF148:
	.string	"esp_log_write"
.LASF118:
	.string	"checksum_word"
.LASF19:
	.string	"intptr_t"
.LASF160:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/esp_image_format.c"
.LASF152:
	.string	"bootloader_mmap"
.LASF86:
	.string	"data_len"
.LASF133:
	.string	"is_mapping"
.LASF6:
	.string	"short int"
.LASF12:
	.string	"long int"
.LASF85:
	.string	"load_addr"
.LASF139:
	.string	"hash"
.LASF121:
	.string	"length"
.LASF76:
	.string	"spi_mode"
.LASF52:
	.string	"RTC_WDT_INT"
.LASF31:
	.string	"SW_CPU_RESET"
.LASF156:
	.string	"memcmp"
.LASF95:
	.string	"ESP_IMAGE_VERIFY_SILENT"
.LASF134:
	.string	"free_page_count"
.LASF71:
	.string	"ESP_IMAGE_FLASH_SIZE_8MB"
.LASF4:
	.string	"__uint8_t"
.LASF28:
	.string	"RTCWDT_SYS_RESET"
.LASF74:
	.string	"magic"
.LASF80:
	.string	"wp_pin"
.LASF49:
	.string	"WAKEUP_INT"
.LASF39:
	.string	"GPIO_TRIG"
.LASF35:
	.string	"RTCWDT_RTC_RESET"
.LASF13:
	.string	"sizetype"
.LASF14:
	.string	"long unsigned int"
.LASF20:
	.string	"NO_MEAN"
.LASF125:
	.string	"load_rtc_memory"
.LASF91:
	.string	"segment_data"
.LASF102:
	.string	"ESP_LOG_VERBOSE"
.LASF17:
	.string	"int32_t"
.LASF41:
	.string	"SDIO_TRIG"
.LASF5:
	.string	"unsigned char"
.LASF122:
	.string	"calc"
.LASF8:
	.string	"__uint32_t"
.LASF150:
	.string	"bootloader_sha256_data"
.LASF23:
	.string	"OWDT_RESET"
.LASF111:
	.string	"verify_segment_header"
.LASF163:
	.string	"esp_image_spi_freq_t"
.LASF54:
	.string	"esp_err_t"
.LASF129:
	.string	"SHA_CHUNK"
.LASF83:
	.string	"hash_appended"
.LASF142:
	.string	"next_addr"
.LASF81:
	.string	"spi_pin_drv"
.LASF101:
	.string	"ESP_LOG_DEBUG"
.LASF62:
	.string	"ESP_IMAGE_SPI_MODE_FAST_READ"
.LASF29:
	.string	"INTRUSION_RESET"
.LASF131:
	.string	"flash_addr"
.LASF107:
	.string	"should_map"
.LASF157:
	.string	"bootloader_sha256_start"
.LASF2:
	.string	"signed char"
.LASF1:
	.string	"short unsigned int"
.LASF130:
	.string	"process_segment"
.LASF47:
	.string	"BT_TRIG"
.LASF67:
	.string	"ESP_IMAGE_SPI_SPEED_80M"
.LASF79:
	.string	"entry_addr"
.LASF82:
	.string	"reserved"
.LASF137:
	.string	"verify_simple_hash"
.LASF109:
	.string	"src_addr"
.LASF65:
	.string	"ESP_IMAGE_SPI_SPEED_26M"
.LASF161:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bootloader_support"
.LASF42:
	.string	"MAC_TRIG"
.LASF68:
	.string	"ESP_IMAGE_FLASH_SIZE_1MB"
.LASF57:
	.string	"esp_partition_pos_t"
.LASF98:
	.string	"ESP_LOG_ERROR"
.LASF75:
	.string	"segment_count"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
