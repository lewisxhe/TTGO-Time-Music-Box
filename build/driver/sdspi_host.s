	.file	"sdspi_host.c"
	.text
.Ltext0:
	.section	.text.is_valid_slot,"ax",@progbits
	.align	4
	.type	is_valid_slot, @function
is_valid_slot:
.LFB21:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_host.c"
	.loc 1 106 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 107 0
	addi.n	a2, a2, -1
.LVL1:
	movi.n	a8, 1
	bltui	a2, 2, .L2
	movi.n	a8, 0
.L2:
	.loc 1 108 0
	extui	a2, a8, 0, 1
.LVL2:
	retw.n
.LFE21:
	.size	is_valid_slot, .-is_valid_slot
	.section	.text.spi_handle,"ax",@progbits
	.literal_position
	.literal .LC1, s_slots
	.align	4
	.type	spi_handle, @function
spi_handle:
.LFB22:
	.loc 1 111 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 112 0
	slli	a2, a2, 4
.LVL4:
	l32r	a8, .LC1
	add.n	a2, a8, a2
	.loc 1 113 0
	l32i.n	a2, a2, 0
	retw.n
.LFE22:
	.size	spi_handle, .-spi_handle
	.section	.text.is_slot_initialized,"ax",@progbits
	.align	4
	.type	is_slot_initialized, @function
is_slot_initialized:
.LFB23:
	.loc 1 116 0
.LVL5:
	entry	sp, 32
.LCFI2:
	.loc 1 117 0
	mov.n	a10, a2
	call8	spi_handle
.LVL6:
	movi.n	a2, 0
.LVL7:
	movi.n	a8, 1
	movnez	a2, a8, a10
	.loc 1 118 0
	retw.n
.LFE23:
	.size	is_slot_initialized, .-is_slot_initialized
	.section	.text.data_crc_enabled,"ax",@progbits
	.literal_position
	.literal .LC2, s_slots
	.align	4
	.type	data_crc_enabled, @function
data_crc_enabled:
.LFB24:
	.loc 1 121 0
.LVL8:
	entry	sp, 32
.LCFI3:
	.loc 1 122 0
	slli	a2, a2, 4
.LVL9:
	l32r	a8, .LC2
	add.n	a2, a8, a2
	l32i.n	a2, a2, 4
	.loc 1 123 0
	extui	a2, a2, 24, 1
	retw.n
.LFE24:
	.size	data_crc_enabled, .-data_crc_enabled
	.section	.text.release_transaction,"ax",@progbits
	.literal_position
	.literal .LC3, s_slots
	.align	4
	.type	release_transaction, @function
release_transaction:
.LFB27:
	.loc 1 149 0
.LVL10:
	entry	sp, 32
.LCFI4:
	.loc 1 150 0
	slli	a2, a2, 4
.LVL11:
	l32r	a8, .LC3
	add.n	a2, a8, a2
	l32i.n	a8, a2, 4
	extui	a8, a8, 25, 3
	addi.n	a8, a8, 7
	extui	a8, a8, 0, 3
	slli	a9, a8, 1
	l8ui	a10, a2, 7
	movi.n	a8, -0xf
	and	a8, a10, a8
	or	a8, a8, a9
	s8i	a8, a2, 7
	retw.n
.LFE27:
	.size	release_transaction, .-release_transaction
	.section	.text.ptr_dma_compatible,"ax",@progbits
	.literal_position
	.literal .LC4, -1073405952
	.literal .LC5, 335871
	.align	4
	.type	ptr_dma_compatible, @function
ptr_dma_compatible:
.LFB31:
	.loc 1 194 0
.LVL12:
	entry	sp, 32
.LCFI5:
	.loc 1 195 0
	l32r	a8, .LC4
	add.n	a8, a2, a8
	movi.n	a2, 1
.LVL13:
	l32r	a9, .LC5
	bgeu	a9, a8, .L8
	movi.n	a2, 0
.L8:
	.loc 1 197 0
	extui	a2, a2, 0, 1
	retw.n
.LFE31:
	.size	ptr_dma_compatible, .-ptr_dma_compatible
	.section	.text.init_spi_dev,"ax",@progbits
	.literal_position
	.literal .LC6, s_slots
	.align	4
	.type	init_spi_dev, @function
init_spi_dev:
.LFB32:
	.loc 1 206 0
.LVL14:
	entry	sp, 80
.LCFI6:
	.loc 1 207 0
	mov.n	a10, a2
	call8	spi_handle
.LVL15:
	beqz.n	a10, .L10
	.loc 1 209 0
	call8	spi_bus_remove_device
.LVL16:
	.loc 1 210 0
	slli	a8, a2, 4
	l32r	a9, .LC6
	add.n	a8, a9, a8
	movi.n	a9, 0
	s32i.n	a9, a8, 0
.L10:
	.loc 1 212 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a3, sp, 8
	movi.n	a3, -1
.LVL17:
	s32i.n	a3, sp, 16
	movi.n	a3, 4
	s32i.n	a3, sp, 24
	.loc 1 220 0
	ssl	a3
	sll	a3, a2
	l32r	a12, .LC6
	add.n	a12, a12, a3
	mov.n	a11, sp
	mov.n	a10, a2
	call8	spi_bus_add_device
.LVL18:
	.loc 1 221 0
	mov.n	a2, a10
.LVL19:
	retw.n
.LFE32:
	.size	init_spi_dev, .-init_spi_dev
	.section	.text.cs_high,"ax",@progbits
	.literal_position
	.literal .LC7, s_slots
	.align	4
	.type	cs_high, @function
cs_high:
.LFB17:
	.loc 1 76 0
.LVL20:
	entry	sp, 32
.LCFI7:
	.loc 1 77 0
	slli	a2, a2, 4
.LVL21:
	l32r	a8, .LC7
	add.n	a2, a8, a2
	movi.n	a11, 1
	l8ui	a10, a2, 4
	call8	gpio_set_level
.LVL22:
	retw.n
.LFE17:
	.size	cs_high, .-cs_high
	.section	.text.cs_low,"ax",@progbits
	.literal_position
	.literal .LC8, s_slots
	.align	4
	.type	cs_low, @function
cs_low:
.LFB18:
	.loc 1 82 0
.LVL23:
	entry	sp, 32
.LCFI8:
	.loc 1 83 0
	slli	a2, a2, 4
.LVL24:
	l32r	a8, .LC8
	add.n	a2, a8, a2
	movi.n	a11, 0
	l8ui	a10, a2, 4
	call8	gpio_set_level
.LVL25:
	retw.n
.LFE18:
	.size	cs_low, .-cs_low
	.section	.text.card_missing,"ax",@progbits
	.literal_position
	.literal .LC9, s_slots
	.align	4
	.type	card_missing, @function
card_missing:
.LFB20:
	.loc 1 97 0
.LVL26:
	entry	sp, 32
.LCFI9:
	.loc 1 98 0
	slli	a2, a2, 4
.LVL27:
	l32r	a8, .LC9
	add.n	a2, a8, a2
	l8ui	a10, a2, 5
	movi	a2, 0xff
	beq	a10, a2, .L15
	.loc 1 101 0
	call8	gpio_get_level
.LVL28:
	addi.n	a10, a10, -1
	movi.n	a2, 0
	movi.n	a8, 1
	moveqz	a2, a8, a10
	extui	a2, a2, 0, 8
	retw.n
.L15:
	.loc 1 99 0
	movi.n	a2, 0
	.loc 1 102 0
	retw.n
.LFE20:
	.size	card_missing, .-card_missing
	.section	.text.card_write_protected,"ax",@progbits
	.literal_position
	.literal .LC10, s_slots
	.align	4
	.type	card_write_protected, @function
card_write_protected:
.LFB19:
	.loc 1 88 0
.LVL29:
	entry	sp, 32
.LCFI10:
	.loc 1 89 0
	slli	a2, a2, 4
.LVL30:
	l32r	a8, .LC10
	add.n	a2, a8, a2
	l8ui	a10, a2, 6
	movi	a2, 0xff
	beq	a10, a2, .L18
	.loc 1 92 0
	call8	gpio_get_level
.LVL31:
	movi.n	a2, 0
	movi.n	a8, 1
	moveqz	a2, a8, a10
	extui	a2, a2, 0, 8
	retw.n
.L18:
	.loc 1 90 0
	movi.n	a2, 0
	.loc 1 93 0
	retw.n
.LFE19:
	.size	card_write_protected, .-card_write_protected
	.section	.text.go_idle_clockout,"ax",@progbits
	.align	4
	.type	go_idle_clockout, @function
go_idle_clockout:
.LFB30:
	.loc 1 178 0
.LVL32:
	entry	sp, 96
.LCFI11:
	.loc 1 181 0
	movi.n	a12, 0xc
	movi	a11, 0xff
	mov.n	a10, sp
	call8	memset
.LVL33:
	.loc 1 182 0
	movi.n	a8, 0
	s32i.n	a8, sp, 16
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 36
	s32i.n	a8, sp, 40
	s32i.n	a8, sp, 52
	movi.n	a8, 0x50
	s32i.n	a8, sp, 32
	s32i.n	sp, sp, 44
	s32i.n	sp, sp, 48
	.loc 1 187 0
	mov.n	a10, a2
	call8	spi_handle
.LVL34:
	addi	a11, sp, 16
	call8	spi_device_transmit
.LVL35:
	retw.n
.LFE30:
	.size	go_idle_clockout, .-go_idle_clockout
	.section	.text.release_bus,"ax",@progbits
	.align	4
	.type	release_bus, @function
release_bus:
.LFB29:
	.loc 1 166 0
.LVL36:
	entry	sp, 80
.LCFI12:
	.loc 1 167 0
	movi.n	a8, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 28
	s32i.n	a8, sp, 32
	s32i.n	a8, sp, 36
	movi.n	a8, 0xc
	s32i.n	a8, sp, 0
	movi.n	a8, 8
	s32i.n	a8, sp, 16
	movi.n	a8, -1
	s8i	a8, sp, 28
	.loc 1 172 0
	mov.n	a10, a2
	call8	spi_handle
.LVL37:
	mov.n	a11, sp
	call8	spi_device_transmit
.LVL38:
	retw.n
.LFE29:
	.size	release_bus, .-release_bus
	.section	.text.get_block_buf,"ax",@progbits
	.literal_position
	.literal .LC11, s_slots
	.align	4
	.type	get_block_buf, @function
get_block_buf:
.LFB25:
	.loc 1 128 0
.LVL39:
	entry	sp, 32
.LCFI13:
	.loc 1 129 0
	slli	a8, a2, 4
	l32r	a9, .LC11
	add.n	a8, a9, a8
	l32i.n	a8, a8, 8
	bnez.n	a8, .L22
	.loc 1 130 0
	movi.n	a11, 8
	movi	a10, 0x204
	call8	heap_caps_malloc
.LVL40:
	slli	a8, a2, 4
	l32r	a9, .LC11
	add.n	a8, a9, a8
	s32i.n	a10, a8, 8
	.loc 1 131 0
	beqz.n	a10, .L24
.L22:
	.loc 1 135 0
	slli	a2, a2, 4
.LVL41:
	l32r	a8, .LC11
	add.n	a2, a8, a2
	l32i.n	a2, a2, 8
	s32i.n	a2, a3, 0
	.loc 1 136 0
	movi.n	a2, 0
	retw.n
.LVL42:
.L24:
	.loc 1 132 0
	movi	a2, 0x101
.LVL43:
	.loc 1 137 0
	retw.n
.LFE25:
	.size	get_block_buf, .-get_block_buf
	.section	.text.poll_response_token,"ax",@progbits
	.align	4
	.type	poll_response_token, @function
poll_response_token:
.LFB40:
	.loc 1 483 0
.LVL44:
	entry	sp, 48
.LCFI14:
	.loc 1 485 0
	movi.n	a5, 0
	s32i.n	a5, a3, 4
	s32i.n	a5, a3, 8
	s32i.n	a5, a3, 12
	s32i.n	a5, a3, 20
	s32i.n	a5, a3, 24
	s32i.n	a5, a3, 32
	s32i.n	a5, a3, 36
	movi.n	a5, 4
	s32i.n	a5, a3, 0
	movi.n	a5, 8
	s32i.n	a5, a3, 16
	s32i.n	sp, a3, 28
	.loc 1 491 0
	call8	esp_timer_get_time
.LVL45:
	slli	a8, a4, 5
	sub	a8, a8, a4
	addx4	a8, a8, a4
	slli	a8, a8, 3
	srai	a4, a8, 31
.LVL46:
	add.n	a10, a8, a10
	movi.n	a9, 1
	bltu	a10, a8, .L26
	movi.n	a9, 0
.L26:
	add.n	a11, a4, a11
	mov.n	a5, a10
	add.n	a4, a9, a11
.LVL47:
.L28:
	.loc 1 493 0
	movi.n	a8, -1
	s8i	a8, sp, 0
	.loc 1 494 0
	movi.n	a8, 0
	s8i	a8, a3, 32
	.loc 1 495 0
	mov.n	a10, a2
	call8	spi_handle
.LVL48:
	mov.n	a11, a3
	call8	spi_device_transmit
.LVL49:
	.loc 1 496 0
	bnez.n	a10, .L30
	.loc 1 499 0
	l8ui	a8, a3, 32
	extui	a8, a8, 0, 5
	beqi	a8, 5, .L31
	.loc 1 502 0
	movi.n	a9, 0xb
	beq	a8, a9, .L32
	.loc 1 505 0
	movi.n	a9, 0xd
	beq	a8, a9, .L33
	.loc 1 508 0
	call8	esp_timer_get_time
.LVL50:
	bltu	a11, a4, .L28
	bne	a4, a11, .L34
	bltu	a10, a5, .L28
.L34:
	.loc 1 511 0
	movi	a2, 0x107
.LVL51:
	retw.n
.LVL52:
.L30:
	.loc 1 497 0
	mov.n	a2, a10
.LVL53:
	retw.n
.LVL54:
.L31:
	.loc 1 500 0
	movi.n	a2, 0
.LVL55:
	retw.n
.LVL56:
.L32:
	.loc 1 503 0
	movi	a2, 0x109
.LVL57:
	retw.n
.LVL58:
.L33:
	.loc 1 506 0
	movi	a2, 0x108
.LVL59:
	.loc 1 512 0
	retw.n
.LFE40:
	.size	poll_response_token, .-poll_response_token
	.section	.text.poll_busy,"ax",@progbits
	.align	4
	.type	poll_busy, @function
poll_busy:
.LFB39:
	.loc 1 453 0
.LVL60:
	entry	sp, 48
.LCFI15:
	.loc 1 455 0
	movi.n	a5, 0
	s32i.n	a5, a3, 4
	s32i.n	a5, a3, 8
	s32i.n	a5, a3, 12
	s32i.n	a5, a3, 20
	s32i.n	a5, a3, 24
	s32i.n	a5, a3, 32
	s32i.n	a5, a3, 36
	movi.n	a5, 4
	s32i.n	a5, a3, 0
	movi.n	a5, 8
	s32i.n	a5, a3, 16
	s32i.n	sp, a3, 28
	.loc 1 462 0
	call8	esp_timer_get_time
.LVL61:
	slli	a6, a4, 5
	sub	a6, a6, a4
	addx4	a4, a6, a4
.LVL62:
	slli	a4, a4, 3
	srai	a5, a4, 31
	add.n	a10, a4, a10
	movi.n	a8, 1
	bltu	a10, a4, .L36
	movi.n	a8, 0
.L36:
	add.n	a11, a5, a11
	mov.n	a6, a10
	add.n	a5, a8, a11
.LVL63:
	.loc 1 463 0
	movi.n	a4, 0
.LVL64:
.L39:
	.loc 1 465 0
	movi.n	a8, -1
	s8i	a8, sp, 0
	.loc 1 466 0
	movi.n	a8, 0
	s8i	a8, a3, 32
	.loc 1 467 0
	mov.n	a10, a2
	call8	spi_handle
.LVL65:
	mov.n	a11, a3
	call8	spi_device_transmit
.LVL66:
	.loc 1 468 0
	bnez.n	a10, .L41
	.loc 1 471 0
	l8ui	a8, a3, 32
	beqz.n	a8, .L38
	.loc 1 472 0
	addi.n	a4, a4, 1
.LVL67:
	beqi	a4, 2, .L42
.L38:
	.loc 1 476 0
	call8	esp_timer_get_time
.LVL68:
	bltu	a11, a5, .L39
	bne	a5, a11, .L43
	bltu	a10, a6, .L39
.L43:
	.loc 1 478 0
	movi	a2, 0x107
.LVL69:
	retw.n
.LVL70:
.L41:
	.loc 1 469 0
	mov.n	a2, a10
.LVL71:
	retw.n
.LVL72:
.L42:
	.loc 1 473 0
	movi.n	a2, 0
.LVL73:
	.loc 1 479 0
	retw.n
.LFE39:
	.size	poll_busy, .-poll_busy
	.section	.text.poll_data_token,"ax",@progbits
	.align	4
	.type	poll_data_token, @function
poll_data_token:
.LFB41:
	.loc 1 519 0
.LVL74:
	entry	sp, 64
.LCFI16:
	.loc 1 521 0
	movi.n	a7, 0
	s32i.n	a7, a3, 0
	s32i.n	a7, a3, 4
	s32i.n	a7, a3, 8
	s32i.n	a7, a3, 12
	s32i.n	a7, a3, 20
	s32i.n	a7, a3, 24
	s32i.n	a7, a3, 36
	movi.n	a7, 0x40
	s32i.n	a7, a3, 16
	s32i.n	sp, a3, 28
	s32i.n	sp, a3, 32
	.loc 1 527 0
	call8	esp_timer_get_time
.LVL75:
	slli	a7, a6, 5
	sub	a7, a7, a6
	addx4	a7, a7, a6
	slli	a7, a7, 3
	srai	a6, a7, 31
.LVL76:
	add.n	a10, a7, a10
	movi.n	a8, 1
	bltu	a10, a7, .L45
	movi.n	a8, 0
.L45:
	add.n	a11, a6, a11
	s32i.n	a10, sp, 16
	add.n	a6, a8, a11
.LVL77:
.L51:
.LBB2:
	.loc 1 529 0
	movi.n	a12, 8
	movi	a11, 0xff
	mov.n	a10, sp
	call8	memset
.LVL78:
	.loc 1 530 0
	mov.n	a10, a2
	call8	spi_handle
.LVL79:
	mov.n	a11, a3
	call8	spi_device_transmit
.LVL80:
	.loc 1 531 0
	bnez.n	a10, .L53
	movi.n	a9, 0
	j	.L47
.LVL81:
.L50:
.LBB3:
.LBB4:
	.loc 1 536 0
	add.n	a8, sp, a9
	l8ui	a8, a8, 0
.LVL82:
	.loc 1 537 0
	movi	a10, 0xfe
	bne	a8, a10, .L48
.LVL83:
	.loc 1 539 0
	addi.n	a11, a7, 1
	movi.n	a8, 7
	sub	a7, a8, a7
.LVL84:
	mov.n	a12, a7
	add.n	a11, sp, a11
	mov.n	a10, a4
	call8	memcpy
.LVL85:
	.loc 1 540 0
	s32i.n	a7, a5, 0
	.loc 1 538 0
	movi.n	a7, 1
	.loc 1 541 0
	j	.L49
.LVL86:
.L48:
	.loc 1 543 0
	addi.n	a8, a8, -1
	extui	a8, a8, 0, 8
	movi	a7, 0xfd
.LVL87:
	bgeu	a7, a8, .L54
.LBE4:
	.loc 1 535 0 discriminator 2
	addi.n	a9, a9, 1
.LVL88:
.L47:
	.loc 1 535 0 is_stmt 0 discriminator 1
	mov.n	a7, a9
	bltui	a9, 8, .L50
.LBE3:
	.loc 1 534 0 is_stmt 1
	movi.n	a7, 0
.LVL89:
.L49:
	.loc 1 549 0
	bnez.n	a7, .L55
.LBE2:
	.loc 1 552 0
	call8	esp_timer_get_time
.LVL90:
	bltu	a11, a6, .L51
	bne	a6, a11, .L56
	l32i.n	a8, sp, 16
	bltu	a10, a8, .L51
.L56:
	.loc 1 554 0
	movi	a2, 0x107
.LVL91:
	retw.n
.LVL92:
.L53:
.LBB7:
	.loc 1 532 0
	mov.n	a2, a10
.LVL93:
	retw.n
.LVL94:
.L54:
.LBB6:
.LBB5:
	.loc 1 546 0
	movi	a2, 0x108
.LVL95:
	retw.n
.LVL96:
.L55:
.LBE5:
.LBE6:
	.loc 1 550 0
	movi.n	a2, 0
.LVL97:
.LBE7:
	.loc 1 555 0
	retw.n
.LFE41:
	.size	poll_data_token, .-poll_data_token
	.section	.text.wait_for_transactions,"ax",@progbits
	.literal_position
	.literal .LC12, s_slots
	.align	4
	.type	wait_for_transactions, @function
wait_for_transactions:
.LFB28:
	.loc 1 154 0
.LVL98:
	entry	sp, 48
.LCFI17:
	.loc 1 155 0
	slli	a3, a2, 4
	l32r	a4, .LC12
	add.n	a3, a4, a3
	l32i.n	a4, a3, 4
	extui	a4, a4, 25, 3
.LVL99:
.LBB8:
	.loc 1 156 0
	movi.n	a3, 0
	j	.L58
.LVL100:
.L59:
.LBB9:
	.loc 1 158 0 discriminator 3
	mov.n	a10, a2
	call8	spi_handle
.LVL101:
	movi.n	a12, -1
	mov.n	a11, sp
	call8	spi_device_get_trans_result
.LVL102:
	.loc 1 159 0 discriminator 3
	mov.n	a10, a2
	call8	release_transaction
.LVL103:
.LBE9:
	.loc 1 156 0 discriminator 3
	addi.n	a3, a3, 1
.LVL104:
.L58:
	.loc 1 156 0 is_stmt 0 discriminator 1
	bltu	a3, a4, .L59
.LBE8:
	.loc 1 161 0 is_stmt 1
	retw.n
.LFE28:
	.size	wait_for_transactions, .-wait_for_transactions
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC14:
	.string	"used_transaction_count < SDSPI_TRANSACTION_COUNT"
	.align	4
.LC17:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_host.c"
	.section	.text.get_transaction,"ax",@progbits
	.literal_position
	.literal .LC13, s_slots
	.literal .LC15, .LC14
	.literal .LC16, __func__$6256
	.literal .LC18, .LC17
	.align	4
	.type	get_transaction, @function
get_transaction:
.LFB26:
	.loc 1 140 0
.LVL105:
	entry	sp, 32
.LCFI18:
	.loc 1 141 0
	slli	a8, a2, 4
	l32r	a9, .LC13
	add.n	a8, a9, a8
	l32i.n	a8, a8, 4
	extui	a8, a8, 25, 3
.LVL106:
	.loc 1 142 0
	bltui	a8, 4, .L61
	.loc 1 142 0 is_stmt 0 discriminator 1
	l32r	a13, .LC15
	l32r	a12, .LC16
	movi	a11, 0x8e
	l32r	a10, .LC18
	call8	__assert_func
.LVL107:
.L61:
	.loc 1 143 0 is_stmt 1
	slli	a2, a2, 4
.LVL108:
	l32r	a10, .LC13
	add.n	a10, a10, a2
	l32i.n	a11, a10, 12
	addx4	a9, a8, a8
	slli	a2, a9, 3
.LVL109:
	.loc 1 144 0
	addi.n	a8, a8, 1
.LVL110:
	extui	a8, a8, 0, 3
.LVL111:
	slli	a9, a8, 1
	l8ui	a12, a10, 7
	movi.n	a8, -0xf
	and	a8, a12, a8
	or	a8, a8, a9
	s8i	a8, a10, 7
.LVL112:
	.loc 1 146 0
	add.n	a2, a11, a2
.LVL113:
	retw.n
.LFE26:
	.size	get_transaction, .-get_transaction
	.section	.text.poll_cmd_response,"ax",@progbits
	.align	4
	.type	poll_cmd_response, @function
poll_cmd_response:
.LFB42:
	.loc 1 558 0
.LVL114:
	entry	sp, 32
.LCFI19:
.LVL115:
	.loc 1 559 0
	movi.n	a4, 8
	.loc 1 560 0
	j	.L63
.LVL116:
.L66:
.LBB10:
	.loc 1 561 0
	mov.n	a10, a2
	call8	get_transaction
.LVL117:
	mov.n	a4, a10
.LVL118:
	.loc 1 562 0
	movi.n	a8, 0
	s32i.n	a8, a10, 4
	s32i.n	a8, a10, 8
	s32i.n	a8, a10, 12
	s32i.n	a8, a10, 20
	s32i.n	a8, a10, 24
	s32i.n	a8, a10, 28
	s32i.n	a8, a10, 32
	s32i.n	a8, a10, 36
	movi.n	a6, 0xc
	s32i.n	a6, a10, 0
	movi.n	a6, 8
	s32i.n	a6, a10, 16
	.loc 1 566 0
	movi.n	a6, -1
	s8i	a6, a10, 28
	.loc 1 567 0
	mov.n	a10, a2
	call8	spi_handle
.LVL119:
	mov.n	a11, a4
	call8	spi_device_transmit
.LVL120:
	mov.n	a6, a10
.LVL121:
	.loc 1 568 0
	l8ui	a4, a4, 32
.LVL122:
	.loc 1 569 0
	mov.n	a10, a2
	call8	release_transaction
.LVL123:
	.loc 1 570 0
	bnez.n	a6, .L67
	.loc 1 573 0
	s8i	a4, a3, 7
.LBE10:
	.loc 1 560 0
	mov.n	a4, a5
.LVL124:
.L63:
	l8ui	a8, a3, 7
	sext	a5, a8, 7
	bgez	a5, .L65
	.loc 1 560 0 is_stmt 0 discriminator 1
	addi.n	a5, a4, -1
.LVL125:
	bgei	a4, 1, .L66
.LVL126:
.L65:
	.loc 1 575 0 is_stmt 1
	sext	a8, a8, 7
	bgez	a8, .L68
	.loc 1 576 0
	movi	a2, 0x107
.LVL127:
	retw.n
.LVL128:
.L67:
.LBB11:
	.loc 1 571 0
	mov.n	a2, a6
.LVL129:
	retw.n
.LVL130:
.L68:
.LBE11:
	.loc 1 578 0
	movi.n	a2, 0
.LVL131:
	.loc 1 579 0
	retw.n
.LFE42:
	.size	poll_cmd_response, .-poll_cmd_response
	.section	.text.start_command_default,"ax",@progbits
	.align	4
	.type	start_command_default, @function
start_command_default:
.LFB38:
	.loc 1 411 0
.LVL132:
	entry	sp, 80
.LCFI20:
.LVL133:
	.loc 1 413 0
	movi.n	a8, 0x44
	bany	a3, a8, .L74
	.loc 1 416 0
	bbsi	a3, 3, .L75
	.loc 1 418 0
	bbsi	a3, 4, .L76
	.loc 1 420 0
	bbsi	a3, 5, .L77
	.loc 1 412 0
	movi.n	a9, 8
	j	.L70
.L74:
	.loc 1 415 0
	movi.n	a9, 8
	j	.L70
.L75:
	.loc 1 417 0
	movi.n	a9, 9
	j	.L70
.L76:
	.loc 1 419 0
	movi.n	a9, 0xc
	j	.L70
.L77:
	.loc 1 421 0
	movi.n	a9, 0xc
.L70:
.LVL134:
	.loc 1 423 0
	movi.n	a8, 0
	s32i.n	a8, sp, 0
	s32i.n	a8, sp, 4
	s32i.n	a8, sp, 8
	s32i.n	a8, sp, 12
	s32i.n	a8, sp, 20
	s32i.n	a8, sp, 24
	s32i.n	a8, sp, 36
	.loc 1 425 0
	slli	a8, a9, 3
	.loc 1 423 0
	s32i.n	a8, sp, 16
	s32i.n	a4, sp, 28
	s32i.n	a4, sp, 32
	.loc 1 429 0
	mov.n	a10, a2
	call8	spi_handle
.LVL135:
	mov.n	a11, sp
	call8	spi_device_transmit
.LVL136:
	.loc 1 430 0
	l32i.n	a8, a4, 0
	extui	a8, a8, 0, 6
	bnei	a8, 12, .L71
	.loc 1 432 0
	movi.n	a8, -1
	s8i	a8, a4, 7
.L71:
	.loc 1 434 0
	bnez.n	a10, .L78
	.loc 1 438 0
	bbci	a3, 6, .L73
	.loc 1 441 0
	movi.n	a3, 0
.LVL137:
	s8i	a3, a4, 7
.L73:
	.loc 1 443 0
	mov.n	a11, a4
	mov.n	a10, a2
.LVL138:
	call8	poll_cmd_response
.LVL139:
	.loc 1 444 0
	bnez.n	a10, .L79
	.loc 1 448 0
	movi.n	a2, 0
.LVL140:
	retw.n
.LVL141:
.L78:
	.loc 1 436 0
	mov.n	a2, a10
.LVL142:
	retw.n
.LVL143:
.L79:
	.loc 1 446 0
	mov.n	a2, a10
.LVL144:
	.loc 1 449 0
	retw.n
.LFE38:
	.size	start_command_default, .-start_command_default
	.section	.rodata.str1.4
	.align	4
.LC20:
	.string	"sdspi_host"
	.align	4
.LC22:
	.string	"\033[0;33mW (%d) %s: %s: card write protected\033[0m\n"
	.section	.rodata
	.align	4
.LC0:
	.byte	-3
	.byte	-1
	.section	.text.start_command_write_blocks,"ax",@progbits
	.literal_position
	.literal .LC19, __func__$6429
	.literal .LC21, .LC20
	.literal .LC23, .LC22
	.literal .LC24, .LC0
	.align	4
	.type	start_command_write_blocks, @function
start_command_write_blocks:
.LFB44:
	.loc 1 762 0
.LVL145:
	entry	sp, 64
.LCFI21:
	.loc 1 763 0
	mov.n	a10, a2
	call8	card_write_protected
.LVL146:
	beqz.n	a10, .L81
	.loc 1 764 0 discriminator 4
	call8	esp_log_timestamp
.LVL147:
	l32r	a11, .LC21
	l32r	a15, .LC19
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC23
	movi.n	a10, 2
	call8	esp_log_write
.LVL148:
	.loc 1 765 0 discriminator 4
	movi	a2, 0x103
.LVL149:
	retw.n
.LVL150:
.L81:
	.loc 1 767 0
	mov.n	a10, a2
	call8	get_transaction
.LVL151:
	mov.n	a6, a10
.LVL152:
	.loc 1 768 0
	movi.n	a7, 0
	s32i.n	a7, a10, 0
	s32i.n	a7, a10, 4
	s32i.n	a7, a10, 8
	s32i.n	a7, a10, 12
	s32i.n	a7, a10, 20
	s32i.n	a7, a10, 24
	s32i.n	a7, a10, 36
	movi.n	a8, 0x40
	s32i.n	a8, a10, 16
	s32i.n	a3, a10, 28
	s32i.n	a3, a10, 32
	.loc 1 773 0
	mov.n	a10, a2
	call8	spi_handle
.LVL153:
	mov.n	a12, a7
	mov.n	a11, a6
	call8	spi_device_queue_trans
.LVL154:
	.loc 1 774 0
	bne	a10, a7, .L90
	.loc 1 777 0
	mov.n	a10, a2
.LVL155:
	call8	wait_for_transactions
.LVL156:
	.loc 1 780 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	poll_cmd_response
.LVL157:
	.loc 1 781 0
	bne	a10, a7, .L91
	.loc 1 786 0
	movi	a6, 0x200
.LVL158:
	bltu	a6, a5, .L92
	movi	a6, 0xfe
	j	.L83
.L92:
	movi	a6, 0xfc
.L83:
	.loc 1 786 0 is_stmt 0 discriminator 4
	s8i	a6, sp, 0
	.loc 1 789 0 is_stmt 1 discriminator 4
	j	.L84
.LVL159:
.L88:
.LBB12:
	.loc 1 792 0
	mov.n	a10, a2
	call8	get_transaction
.LVL160:
	mov.n	a6, a10
.LVL161:
	.loc 1 793 0
	movi.n	a7, 0
	s32i.n	a7, a10, 0
	s32i.n	a7, a10, 4
	s32i.n	a7, a10, 8
	s32i.n	a7, a10, 12
	s32i.n	a7, a10, 20
	s32i.n	a7, a10, 24
	s32i.n	a7, a10, 32
	s32i.n	a7, a10, 36
	movi.n	a8, 8
	s32i.n	a8, a10, 16
	s32i.n	sp, a10, 28
	.loc 1 797 0
	mov.n	a10, a2
	call8	spi_handle
.LVL162:
	mov.n	a12, a7
	mov.n	a11, a6
	call8	spi_device_queue_trans
.LVL163:
	.loc 1 798 0
	bne	a10, a7, .L93
	.loc 1 803 0
	movi	a6, 0x200
.LVL164:
	minu	a6, a5, a6
	s32i.n	a6, sp, 16
.LVL165:
	.loc 1 805 0
	mov.n	a10, a4
.LVL166:
	call8	ptr_dma_compatible
.LVL167:
	bne	a10, a7, .L94
.LBB13:
	.loc 1 808 0
	addi.n	a11, sp, 4
	mov.n	a10, a2
	call8	get_block_buf
.LVL168:
	.loc 1 809 0
	beq	a10, a7, .L87
	.loc 1 810 0
	mov.n	a2, a10
.LVL169:
	retw.n
.LVL170:
.L87:
	.loc 1 812 0
	l32i.n	a12, sp, 16
	mov.n	a11, a4
	l32i.n	a10, sp, 4
.LVL171:
	call8	memcpy
.LVL172:
	.loc 1 813 0
	l32i.n	a6, sp, 4
.LVL173:
	s32i.n	a6, sp, 20
.LVL174:
	j	.L86
.LVL175:
.L94:
.LBE13:
	.loc 1 804 0
	s32i.n	a4, sp, 20
.LVL176:
.L86:
	.loc 1 817 0
	mov.n	a10, a2
	call8	get_transaction
.LVL177:
	mov.n	a6, a10
.LVL178:
	.loc 1 819 0
	l32i.n	a9, sp, 16
	slli	a8, a9, 3
	.loc 1 818 0
	movi.n	a7, 0
	s32i.n	a7, a10, 0
	s32i.n	a7, a10, 4
	s32i.n	a7, a10, 8
	s32i.n	a7, a10, 12
	s32i.n	a7, a10, 20
	s32i.n	a7, a10, 24
	s32i.n	a7, a10, 32
	s32i.n	a7, a10, 36
	s32i.n	a8, a10, 16
	l32i.n	a8, sp, 20
	s32i.n	a8, a10, 28
	.loc 1 822 0
	mov.n	a10, a2
	call8	spi_handle
.LVL179:
	mov.n	a12, a7
	mov.n	a11, a6
	call8	spi_device_queue_trans
.LVL180:
	.loc 1 823 0
	bne	a10, a7, .L95
	.loc 1 828 0
	l32i.n	a11, sp, 16
	mov.n	a10, a4
.LVL181:
	call8	sdspi_crc16
.LVL182:
	s16i	a10, sp, 4
	.loc 1 829 0
	mov.n	a10, a2
	call8	get_transaction
.LVL183:
	mov.n	a6, a10
.LVL184:
	.loc 1 830 0
	s32i.n	a7, a10, 0
	s32i.n	a7, a10, 4
	s32i.n	a7, a10, 8
	s32i.n	a7, a10, 12
	s32i.n	a7, a10, 20
	s32i.n	a7, a10, 24
	s32i.n	a7, a10, 32
	s32i.n	a7, a10, 36
	movi.n	a8, 0x10
	s32i.n	a8, a10, 16
	addi.n	a8, sp, 4
	s32i.n	a8, a10, 28
	.loc 1 834 0
	mov.n	a10, a2
	call8	spi_handle
.LVL185:
	mov.n	a12, a7
	mov.n	a11, a6
	call8	spi_device_queue_trans
.LVL186:
	.loc 1 835 0
	bne	a10, a7, .L96
	.loc 1 840 0
	mov.n	a10, a2
.LVL187:
	call8	wait_for_transactions
.LVL188:
	.loc 1 843 0
	mov.n	a10, a2
	call8	get_transaction
.LVL189:
	.loc 1 844 0
	l32i.n	a12, a3, 24
	mov.n	a11, a10
	mov.n	a10, a2
.LVL190:
	call8	poll_response_token
.LVL191:
	mov.n	a6, a10
.LVL192:
	.loc 1 845 0
	mov.n	a10, a2
	call8	release_transaction
.LVL193:
	.loc 1 846 0
	bne	a6, a7, .L97
	.loc 1 851 0
	mov.n	a10, a2
	call8	get_transaction
.LVL194:
	.loc 1 852 0
	l32i.n	a12, a3, 24
	mov.n	a11, a10
	mov.n	a10, a2
.LVL195:
	call8	poll_busy
.LVL196:
	mov.n	a6, a10
.LVL197:
	.loc 1 853 0
	mov.n	a10, a2
	call8	release_transaction
.LVL198:
	.loc 1 854 0
	bne	a6, a7, .L98
	.loc 1 858 0
	l32i.n	a6, sp, 16
.LVL199:
	sub	a5, a5, a6
.LVL200:
	.loc 1 859 0
	add.n	a4, a4, a6
.LVL201:
	j	.L84
.LVL202:
.L93:
	.loc 1 799 0
	mov.n	a2, a10
.LVL203:
	retw.n
.LVL204:
.L95:
	.loc 1 824 0
	mov.n	a2, a10
.LVL205:
	retw.n
.LVL206:
.L96:
	.loc 1 836 0
	mov.n	a2, a10
.LVL207:
	retw.n
.LVL208:
.L97:
	.loc 1 847 0
	mov.n	a2, a6
.LVL209:
	retw.n
.LVL210:
.L98:
	.loc 1 855 0
	mov.n	a2, a6
.LVL211:
	retw.n
.LVL212:
.L84:
.LBE12:
	.loc 1 789 0
	bnez.n	a5, .L88
	.loc 1 862 0
	l8ui	a5, sp, 0
.LVL213:
	movi	a4, 0xfc
.LVL214:
	bne	a5, a4, .L99
.LBB14:
	.loc 1 863 0
	l32r	a4, .LC24
	addi.n	a6, sp, 4
	l8ui	a5, a4, 0
	l8ui	a4, a4, 1
	s8i	a5, sp, 4
	s8i	a4, sp, 5
	.loc 1 867 0
	mov.n	a10, a2
	call8	get_transaction
.LVL215:
	mov.n	a4, a10
.LVL216:
	.loc 1 868 0
	movi.n	a5, 0
	s32i.n	a5, a10, 0
	s32i.n	a5, a10, 4
	s32i.n	a5, a10, 8
	s32i.n	a5, a10, 12
	s32i.n	a5, a10, 20
	s32i.n	a5, a10, 24
	s32i.n	a5, a10, 32
	s32i.n	a5, a10, 36
	movi.n	a7, 0x10
	s32i.n	a7, a10, 16
	s32i.n	a6, a10, 28
	.loc 1 872 0
	mov.n	a10, a2
	call8	spi_handle
.LVL217:
	mov.n	a12, a5
	mov.n	a11, a4
	call8	spi_device_queue_trans
.LVL218:
	.loc 1 873 0
	bne	a10, a5, .L100
	.loc 1 876 0
	mov.n	a10, a2
.LVL219:
	call8	wait_for_transactions
.LVL220:
	.loc 1 878 0
	mov.n	a10, a2
	call8	get_transaction
.LVL221:
	.loc 1 879 0
	l32i.n	a12, a3, 24
	mov.n	a11, a10
	mov.n	a10, a2
.LVL222:
	call8	poll_busy
.LVL223:
	mov.n	a3, a10
.LVL224:
	.loc 1 880 0
	mov.n	a10, a2
	call8	release_transaction
.LVL225:
	.loc 1 881 0
	bne	a3, a5, .L101
.LBE14:
	.loc 1 886 0
	mov.n	a2, a5
.LVL226:
.LBB15:
	retw.n
.LVL227:
.L100:
	.loc 1 874 0
	mov.n	a2, a10
.LVL228:
	retw.n
.LVL229:
.L101:
	.loc 1 882 0
	mov.n	a2, a3
.LVL230:
	retw.n
.LVL231:
.L90:
.LBE15:
	.loc 1 775 0
	mov.n	a2, a10
.LVL232:
	retw.n
.LVL233:
.L91:
	.loc 1 783 0
	mov.n	a2, a10
.LVL234:
	retw.n
.LVL235:
.L99:
	.loc 1 886 0
	movi.n	a2, 0
.LVL236:
	.loc 1 887 0
	retw.n
.LFE44:
	.size	start_command_write_blocks, .-start_command_write_blocks
	.section	.rodata.str1.4
	.align	4
.LC26:
	.string	"\033[0;31mE (%d) %s: data CRC failed, got=0x%04x expected=0x%04x\033[0m\n"
	.section	.text.start_command_read_blocks,"ax",@progbits
	.literal_position
	.literal .LC25, .LC20
	.literal .LC27, .LC26
	.align	4
	.type	start_command_read_blocks, @function
start_command_read_blocks:
.LFB43:
	.loc 1 625 0
.LVL237:
	entry	sp, 128
.LCFI22:
	s32i	a3, sp, 68
	s32i	a4, sp, 64
	s32i	a5, sp, 80
.LVL238:
	.loc 1 627 0
	mov.n	a10, a2
	call8	get_transaction
.LVL239:
	mov.n	a3, a10
.LVL240:
	.loc 1 628 0
	movi.n	a4, 0
.LVL241:
	s32i.n	a4, a10, 0
	s32i.n	a4, a10, 4
	s32i.n	a4, a10, 8
	s32i.n	a4, a10, 12
	s32i.n	a4, a10, 20
	s32i.n	a4, a10, 24
	s32i.n	a4, a10, 36
	movi	a4, 0x80
	s32i.n	a4, a10, 16
	l32i	a6, sp, 68
	s32i.n	a6, a10, 28
	s32i.n	a6, a10, 32
	.loc 1 633 0
	mov.n	a10, a2
	call8	spi_handle
.LVL242:
	mov.n	a11, a3
	call8	spi_device_transmit
.LVL243:
	.loc 1 634 0
	bnez.n	a10, .L119
	.loc 1 637 0
	mov.n	a10, a2
.LVL244:
	call8	release_transaction
.LVL245:
	.loc 1 641 0
	addi.n	a3, a6, 8
.LVL246:
	s32i	a3, sp, 76
.LVL247:
	mov.n	a4, a3
	.loc 1 640 0
	movi.n	a3, 8
.LVL248:
	.loc 1 646 0
	j	.L104
.LVL249:
.L106:
	.loc 1 647 0
	l8ui	a5, a4, 0
	l32i	a6, sp, 68
	s8i	a5, a6, 7
	.loc 1 648 0
	addi.n	a4, a4, 1
.LVL250:
	.loc 1 649 0
	addi.n	a3, a3, -1
.LVL251:
.L104:
	.loc 1 646 0
	l32i	a6, sp, 68
	l8ui	a5, a6, 7
	sext	a6, a5, 7
	bgez	a6, .L105
	.loc 1 646 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L106
.L105:
	.loc 1 651 0 is_stmt 1
	sext	a5, a5, 7
	bltz	a5, .L120
	l32i	a6, sp, 80
	j	.L107
.LVL252:
.L117:
.LBB16:
	.loc 1 657 0
	movi.n	a5, 0
	s32i.n	a5, sp, 44
.LVL253:
.LBB17:
	.loc 1 661 0
	j	.L108
.LVL254:
.L111:
	.loc 1 662 0
	add.n	a7, a4, a5
	l8ui	a8, a7, 0
	movi	a7, 0xfe
	bne	a8, a7, .L109
	.loc 1 663 0
	sub	a3, a3, a9
.LVL255:
	addi.n	a3, a3, -1
	s32i.n	a3, sp, 44
	.loc 1 664 0
	addi.n	a9, a9, 1
	add.n	a9, a4, a9
	s32i	a9, sp, 72
.LVL256:
	.loc 1 665 0
	movi.n	a3, 0
	.loc 1 666 0
	j	.L110
.LVL257:
.L109:
	.loc 1 661 0 discriminator 2
	addi.n	a5, a5, 1
.LVL258:
.L108:
	.loc 1 661 0 is_stmt 0 discriminator 1
	mov.n	a9, a5
	bltu	a5, a3, .L111
.LBE17:
	.loc 1 659 0 is_stmt 1
	movi.n	a3, 1
.LVL259:
	.loc 1 658 0
	movi.n	a4, 0
.LVL260:
	s32i	a4, sp, 72
.LVL261:
.L110:
	.loc 1 670 0
	beqz.n	a3, .L112
.LBB18:
	.loc 1 672 0
	mov.n	a10, a2
	call8	get_transaction
.LVL262:
	.loc 1 673 0
	l32i	a3, sp, 68
.LVL263:
	l32i.n	a14, a3, 24
	addi	a13, sp, 44
	l32i	a12, sp, 76
	mov.n	a11, a10
	mov.n	a10, a2
.LVL264:
	call8	poll_data_token
.LVL265:
	mov.n	a3, a10
.LVL266:
	.loc 1 674 0
	mov.n	a10, a2
	call8	release_transaction
.LVL267:
	.loc 1 675 0
	bnez.n	a3, .L121
	.loc 1 678 0
	l32i.n	a3, sp, 44
.LVL268:
	beqz.n	a3, .L112
	.loc 1 679 0
	l32i	a4, sp, 76
	s32i	a4, sp, 72
.LVL269:
.L112:
.LBE18:
	.loc 1 684 0
	movi	a5, 0x200
.LVL270:
	minu	a3, a6, a5
	l32i.n	a5, sp, 44
	sub	a5, a3, a5
.LVL271:
	.loc 1 686 0
	addi	a11, sp, 16
	mov.n	a10, a2
	call8	get_block_buf
.LVL272:
	.loc 1 687 0
	bnez.n	a10, .L123
	.loc 1 692 0
	movi	a3, 0x200
	bgeu	a3, a6, .L124
	movi.n	a7, 4
	j	.L114
.L124:
	movi.n	a7, 2
.L114:
.LVL273:
	.loc 1 693 0 discriminator 4
	add.n	a4, a7, a5
	mov.n	a12, a4
	movi	a11, 0xff
	l32i.n	a10, sp, 16
.LVL274:
	call8	memset
.LVL275:
	.loc 1 694 0 discriminator 4
	mov.n	a10, a2
	call8	get_transaction
.LVL276:
	mov.n	a3, a10
.LVL277:
	.loc 1 696 0 discriminator 4
	slli	a4, a4, 3
	.loc 1 695 0 discriminator 4
	l32i.n	a9, sp, 16
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	s32i.n	a8, a10, 4
	s32i.n	a8, a10, 8
	s32i.n	a8, a10, 12
	s32i.n	a8, a10, 20
	s32i.n	a8, a10, 24
	s32i.n	a8, a10, 36
	s32i.n	a4, a10, 16
	s32i.n	a9, a10, 28
	s32i.n	a9, a10, 32
	.loc 1 701 0 discriminator 4
	mov.n	a10, a2
	call8	spi_handle
.LVL278:
	mov.n	a11, a3
	call8	spi_device_transmit
.LVL279:
	.loc 1 702 0 discriminator 4
	bnez.n	a10, .L125
	.loc 1 705 0
	mov.n	a10, a2
.LVL280:
	call8	release_transaction
.LVL281:
	.loc 1 708 0
	movi.n	a3, -1
.LVL282:
	s16i	a3, sp, 48
	.loc 1 709 0
	l32i.n	a11, sp, 16
	add.n	a3, a11, a5
	l8ui	a4, a3, 0
	l8ui	a3, a3, 1
	s8i	a4, sp, 48
	s8i	a3, sp, 49
	.loc 1 712 0
	addi	a3, a7, -2
.LVL283:
	.loc 1 713 0
	addi.n	a4, a5, 2
	add.n	a4, a11, a4
.LVL284:
	.loc 1 716 0
	mov.n	a12, a5
	l32i.n	a10, sp, 44
	l32i	a8, sp, 64
	add.n	a10, a8, a10
	call8	memcpy
.LVL285:
	.loc 1 717 0
	l32i.n	a12, sp, 44
	beqz.n	a12, .L115
	.loc 1 718 0
	l32i	a11, sp, 72
	l32i	a10, sp, 64
	call8	memcpy
.LVL286:
.L115:
	.loc 1 723 0
	mov.n	a10, a2
	call8	data_crc_enabled
.LVL287:
	beqz.n	a10, .L116
	.loc 1 724 0
	l32i.n	a11, sp, 44
	add.n	a11, a5, a11
	l32i	a10, sp, 64
	call8	sdspi_crc16
.LVL288:
	mov.n	a7, a10
.LVL289:
	.loc 1 725 0
	l16ui	a8, sp, 48
	beq	a10, a8, .L116
	.loc 1 726 0 discriminator 2
	call8	esp_log_timestamp
.LVL290:
	l32r	a2, .LC25
.LVL291:
	l16ui	a3, sp, 48
.LVL292:
	s32i.n	a3, sp, 0
	mov.n	a15, a7
	mov.n	a14, a2
	mov.n	a13, a10
	l32r	a12, .LC27
	mov.n	a11, a2
	movi.n	a10, 1
	call8	esp_log_write
.LVL293:
	.loc 1 727 0 discriminator 2
	movi.n	a13, 3
	movi.n	a12, 0x10
	l32i	a11, sp, 64
	mov.n	a10, a2
	call8	esp_log_buffer_hex_internal
.LVL294:
	.loc 1 728 0 discriminator 2
	movi	a2, 0x109
	retw.n
.LVL295:
.L116:
	.loc 1 732 0
	l32i.n	a7, sp, 44
	add.n	a5, a5, a7
.LVL296:
	l32i	a8, sp, 64
	add.n	a8, a8, a5
	s32i	a8, sp, 64
.LVL297:
	.loc 1 733 0
	sub	a6, a6, a5
.LVL298:
	.loc 1 734 0
	movi.n	a5, 0
	s32i.n	a5, sp, 44
.LVL299:
	j	.L107
.LVL300:
.L121:
.LBB19:
	.loc 1 676 0
	mov.n	a2, a3
.LVL301:
	retw.n
.LVL302:
.L123:
.LBE19:
	.loc 1 688 0
	mov.n	a2, a10
.LVL303:
	retw.n
.LVL304:
.L125:
	.loc 1 703 0
	mov.n	a2, a10
.LVL305:
	retw.n
.LVL306:
.L107:
.LBE16:
	.loc 1 656 0
	bnez.n	a6, .L117
	.loc 1 738 0
	movi	a3, 0x200
.LVL307:
	l32i	a4, sp, 80
.LVL308:
	bgeu	a3, a4, .L126
.LBB20:
	.loc 1 742 0
	addi	a13, sp, 16
	l32i	a6, sp, 68
.LVL309:
	l32i.n	a12, a6, 24
	movi.n	a11, 0
	movi.n	a10, 0xc
	call8	make_hw_cmd
.LVL310:
	.loc 1 743 0
	addi	a12, sp, 16
	movi.n	a11, 4
	mov.n	a10, a2
	call8	start_command_default
.LVL311:
	.loc 1 744 0
	bnez.n	a10, .L127
	.loc 1 750 0
	mov.n	a10, a2
.LVL312:
	call8	get_transaction
.LVL313:
	.loc 1 751 0
	l32i.n	a12, a6, 24
	mov.n	a11, a10
	mov.n	a10, a2
.LVL314:
	call8	poll_busy
.LVL315:
	mov.n	a3, a10
.LVL316:
	.loc 1 752 0
	mov.n	a10, a2
	call8	release_transaction
.LVL317:
	.loc 1 753 0
	bnez.n	a3, .L128
.LBE20:
	.loc 1 757 0
	movi.n	a2, 0
.LVL318:
.LBB21:
	retw.n
.LVL319:
.L127:
	.loc 1 745 0
	mov.n	a2, a10
.LVL320:
	retw.n
.LVL321:
.L128:
	.loc 1 754 0
	mov.n	a2, a3
.LVL322:
	retw.n
.LVL323:
.L119:
.LBE21:
	.loc 1 635 0
	mov.n	a2, a10
.LVL324:
	retw.n
.LVL325:
.L120:
	.loc 1 653 0
	movi	a2, 0x107
.LVL326:
	retw.n
.LVL327:
.L126:
	.loc 1 757 0
	movi.n	a2, 0
.LVL328:
	.loc 1 758 0
	retw.n
.LFE43:
	.size	start_command_read_blocks, .-start_command_read_blocks
	.section	.text.sdspi_host_init,"ax",@progbits
	.align	4
	.global	sdspi_host_init
	.type	sdspi_host_init, @function
sdspi_host_init:
.LFB33:
	.loc 1 224 0
	entry	sp, 32
.LCFI23:
	.loc 1 226 0
	movi.n	a2, 0
	retw.n
.LFE33:
	.size	sdspi_host_init, .-sdspi_host_init
	.section	.text.sdspi_host_deinit,"ax",@progbits
	.literal_position
	.literal .LC28, s_slots
	.align	4
	.global	sdspi_host_deinit
	.type	sdspi_host_deinit, @function
sdspi_host_deinit:
.LFB34:
	.loc 1 229 0
	entry	sp, 32
.LCFI24:
.LVL329:
.LBB22:
	.loc 1 230 0
	movi.n	a3, 0
	j	.L131
.LVL330:
.L133:
	.loc 1 231 0
	slli	a2, a3, 4
	l32r	a4, .LC28
	add.n	a2, a4, a2
	l32i.n	a10, a2, 0
	beqz.n	a10, .L132
	.loc 1 232 0
	call8	spi_bus_remove_device
.LVL331:
	.loc 1 233 0
	slli	a2, a3, 4
	l32r	a4, .LC28
	add.n	a2, a4, a2
	l32i.n	a10, a2, 8
	call8	free
.LVL332:
	.loc 1 234 0
	movi.n	a4, 0
	s32i.n	a4, a2, 8
	.loc 1 235 0
	l32i.n	a10, a2, 12
	call8	free
.LVL333:
	.loc 1 236 0
	s32i.n	a4, a2, 12
	.loc 1 237 0
	mov.n	a10, a3
	call8	spi_bus_free
.LVL334:
	.loc 1 238 0
	s32i.n	a4, a2, 0
.L132:
	.loc 1 230 0 discriminator 2
	addi.n	a3, a3, 1
.LVL335:
.L131:
	.loc 1 230 0 is_stmt 0 discriminator 1
	bltui	a3, 3, .L133
.LBE22:
	.loc 1 242 0 is_stmt 1
	movi.n	a2, 0
	retw.n
.LFE34:
	.size	sdspi_host_deinit, .-sdspi_host_deinit
	.section	.text.sdspi_host_set_card_clk,"ax",@progbits
	.align	4
	.global	sdspi_host_set_card_clk
	.type	sdspi_host_set_card_clk, @function
sdspi_host_set_card_clk:
.LFB35:
	.loc 1 245 0
.LVL336:
	entry	sp, 32
.LCFI25:
	.loc 1 246 0
	mov.n	a10, a2
	call8	is_valid_slot
.LVL337:
	beqz.n	a10, .L136
	.loc 1 249 0
	mov.n	a10, a2
	call8	is_slot_initialized
.LVL338:
	beqz.n	a10, .L137
	.loc 1 253 0
	slli	a8, a3, 5
	sub	a8, a8, a3
	addx4	a3, a8, a3
.LVL339:
	slli	a11, a3, 3
	mov.n	a3, a11
	mov.n	a10, a2
	call8	init_spi_dev
.LVL340:
	mov.n	a2, a10
.LVL341:
	retw.n
.LVL342:
.L136:
	.loc 1 247 0
	movi	a2, 0x102
.LVL343:
	retw.n
.LVL344:
.L137:
	.loc 1 250 0
	movi	a2, 0x103
.LVL345:
	.loc 1 254 0
	retw.n
.LFE35:
	.size	sdspi_host_set_card_clk, .-sdspi_host_set_card_clk
	.section	.text.sdspi_host_init_slot,"ax",@progbits
	.literal_position
	.literal .LC29, 400000
	.literal .LC30, s_slots
	.align	4
	.global	sdspi_host_init_slot
	.type	sdspi_host_init_slot, @function
sdspi_host_init_slot:
.LFB36:
	.loc 1 257 0
.LVL346:
	entry	sp, 96
.LCFI26:
.LVL347:
	.loc 1 266 0
	mov.n	a10, a2
	call8	is_valid_slot
.LVL348:
	beqz.n	a10, .L148
	.loc 1 270 0
	movi.n	a4, 0
	s32i.n	a4, sp, 20
	s32i.n	a4, sp, 24
	.loc 1 272 0
	l32i.n	a4, a3, 4
	.loc 1 270 0
	s32i.n	a4, sp, 0
	.loc 1 271 0
	l32i.n	a4, a3, 0
	.loc 1 270 0
	s32i.n	a4, sp, 4
	.loc 1 273 0
	l32i.n	a4, a3, 8
	.loc 1 270 0
	s32i.n	a4, sp, 8
	movi.n	a4, -1
	s32i.n	a4, sp, 12
	s32i.n	a4, sp, 16
	.loc 1 279 0
	l32i.n	a12, a3, 24
	mov.n	a11, sp
	mov.n	a10, a2
	call8	spi_bus_initialize
.LVL349:
	.loc 1 281 0
	bnez.n	a10, .L149
	.loc 1 287 0
	l32r	a11, .LC29
	mov.n	a10, a2
.LVL350:
	call8	init_spi_dev
.LVL351:
	mov.n	a4, a10
.LVL352:
	.loc 1 288 0
	beqz.n	a10, .L140
	.loc 1 290 0
	mov.n	a10, a2
	call8	spi_bus_free
.LVL353:
	.loc 1 291 0
	mov.n	a2, a4
.LVL354:
	retw.n
.LVL355:
.L140:
	.loc 1 295 0
	l8ui	a8, a3, 12
	slli	a4, a2, 4
.LVL356:
	l32r	a9, .LC30
	add.n	a4, a9, a4
	s8i	a8, a4, 4
	.loc 1 296 0
	movi.n	a8, 0
	s32i.n	a8, sp, 44
	s32i.n	a8, sp, 48
	s32i.n	a8, sp, 52
	.loc 1 299 0
	l32i.n	a10, a3, 12
.LVL357:
	movi.n	a9, 0x20
	and	a9, a10, a9
	movi.n	a4, 1
	ssl	a10
	sll	a4, a4
	mov.n	a10, a4
	moveqz	a10, a8, a9
	movnez	a4, a8, a9
	.loc 1 296 0
	s32i.n	a4, sp, 32
	s32i.n	a10, sp, 36
	movi.n	a4, 2
	s32i.n	a4, sp, 40
	.loc 1 302 0
	addi	a10, sp, 32
	call8	gpio_config
.LVL358:
	mov.n	a4, a10
.LVL359:
	.loc 1 303 0
	beqz.n	a10, .L141
	.loc 1 305 0
	mov.n	a10, a2
	call8	spi_handle
.LVL360:
	call8	spi_bus_remove_device
.LVL361:
	.loc 1 306 0
	slli	a3, a2, 4
.LVL362:
	l32r	a8, .LC30
	add.n	a3, a8, a3
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	.loc 1 307 0
	mov.n	a10, a2
	call8	spi_bus_free
.LVL363:
	.loc 1 308 0
	mov.n	a2, a4
.LVL364:
	retw.n
.LVL365:
.L141:
	.loc 1 310 0
	mov.n	a10, a2
	call8	cs_high
.LVL366:
	.loc 1 313 0
	movi.n	a4, 0
.LVL367:
	s32i.n	a4, sp, 32
	s32i.n	a4, sp, 36
	s32i.n	a4, sp, 48
	s32i.n	a4, sp, 52
	movi.n	a4, 1
	s32i.n	a4, sp, 40
	s32i.n	a4, sp, 44
	.loc 1 319 0
	l32i.n	a8, a3, 16
	beqi	a8, -1, .L142
	.loc 1 320 0
	ssl	a8
	sll	a4, a4
	s32i.n	a4, sp, 32
	srai	a4, a4, 31
	s32i.n	a4, sp, 36
	.loc 1 321 0
	slli	a4, a2, 4
	l32r	a9, .LC30
	add.n	a4, a9, a4
	s8i	a8, a4, 5
	j	.L143
.L142:
	.loc 1 323 0
	slli	a4, a2, 4
	l32r	a8, .LC30
	add.n	a4, a8, a4
	movi.n	a8, -1
	s8i	a8, a4, 5
.L143:
	.loc 1 326 0
	l32i.n	a4, a3, 20
	beqi	a4, -1, .L144
	.loc 1 327 0
	movi.n	a3, 1
.LVL368:
	ssl	a4
	sll	a3, a3
	srai	a8, a3, 31
	l32i.n	a9, sp, 32
	or	a3, a9, a3
	s32i.n	a3, sp, 32
	l32i.n	a3, sp, 36
	or	a3, a3, a8
	s32i.n	a3, sp, 36
	.loc 1 328 0
	slli	a3, a2, 4
	l32r	a8, .LC30
	add.n	a3, a8, a3
	s8i	a4, a3, 6
	j	.L145
.LVL369:
.L144:
	.loc 1 330 0
	slli	a3, a2, 4
.LVL370:
	l32r	a4, .LC30
	add.n	a3, a4, a3
	movi.n	a4, -1
	s8i	a4, a3, 6
.L145:
	.loc 1 333 0
	l32i.n	a3, sp, 36
	l32i.n	a4, sp, 32
	or	a3, a4, a3
	beqz.n	a3, .L146
	.loc 1 334 0
	addi	a10, sp, 32
	call8	gpio_config
.LVL371:
	mov.n	a4, a10
.LVL372:
	.loc 1 335 0
	beqz.n	a10, .L146
	.loc 1 337 0
	mov.n	a10, a2
	call8	spi_handle
.LVL373:
	call8	spi_bus_remove_device
.LVL374:
	.loc 1 338 0
	slli	a3, a2, 4
	l32r	a8, .LC30
	add.n	a3, a8, a3
	movi.n	a8, 0
	s32i.n	a8, a3, 0
	.loc 1 339 0
	mov.n	a10, a2
	call8	spi_bus_free
.LVL375:
	.loc 1 340 0
	mov.n	a2, a4
.LVL376:
	retw.n
.LVL377:
.L146:
	.loc 1 344 0
	movi.n	a11, 0x28
	movi.n	a10, 4
	call8	calloc
.LVL378:
	slli	a3, a2, 4
	l32r	a4, .LC30
	add.n	a3, a4, a3
	s32i.n	a10, a3, 12
	.loc 1 345 0
	bnez.n	a10, .L150
	.loc 1 346 0
	mov.n	a10, a2
	call8	spi_handle
.LVL379:
	call8	spi_bus_remove_device
.LVL380:
	.loc 1 347 0
	slli	a3, a2, 4
	l32r	a4, .LC30
	add.n	a3, a4, a3
	movi.n	a4, 0
	s32i.n	a4, a3, 0
	.loc 1 348 0
	mov.n	a10, a2
	call8	spi_bus_free
.LVL381:
	.loc 1 349 0
	movi	a2, 0x101
.LVL382:
	retw.n
.LVL383:
.L148:
	.loc 1 267 0
	movi	a2, 0x102
.LVL384:
	retw.n
.LVL385:
.L149:
	.loc 1 283 0
	mov.n	a2, a10
.LVL386:
	retw.n
.LVL387:
.L150:
	.loc 1 352 0
	movi.n	a2, 0
.LVL388:
	.loc 1 353 0
	retw.n
.LFE36:
	.size	sdspi_host_init_slot, .-sdspi_host_init_slot
	.global	__bswapsi2
	.section	.text.sdspi_host_start_command,"ax",@progbits
	.literal_position
	.literal .LC31, s_slots
	.align	4
	.global	sdspi_host_start_command
	.type	sdspi_host_start_command, @function
sdspi_host_start_command:
.LFB37:
	.loc 1 358 0
.LVL389:
	entry	sp, 48
.LCFI27:
	.loc 1 359 0
	mov.n	a10, a2
	call8	is_valid_slot
.LVL390:
	beqz.n	a10, .L157
	.loc 1 362 0
	mov.n	a10, a2
	call8	is_slot_initialized
.LVL391:
	beqz.n	a10, .L158
	.loc 1 365 0
	mov.n	a10, a2
	call8	card_missing
.LVL392:
	bnez.n	a10, .L159
	.loc 1 369 0
	l32i.n	a7, a3, 0
	extui	a7, a7, 0, 6
.LVL393:
	.loc 1 371 0
	l8ui	a9, a3, 1
	l8ui	a10, a3, 2
	s8i	a9, sp, 0
	l8ui	a9, a3, 3
	s8i	a10, sp, 1
	l8ui	a8, a3, 4
	s8i	a9, sp, 2
	s8i	a8, sp, 3
	.loc 1 372 0
	l32i.n	a10, sp, 0
	call8	__bswapsi2
.LVL394:
	s32i.n	a10, sp, 0
	.loc 1 379 0
	bnez.n	a7, .L153
	.loc 1 380 0
	mov.n	a10, a2
	call8	go_idle_clockout
.LVL395:
.L153:
	.loc 1 384 0
	mov.n	a10, a2
	call8	cs_low
.LVL396:
	.loc 1 385 0
	bbci	a6, 0, .L154
	.loc 1 386 0
	bbci	a6, 1, .L155
	.loc 1 387 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	start_command_write_blocks
.LVL397:
	mov.n	a3, a10
.LVL398:
	j	.L156
.LVL399:
.L155:
	.loc 1 389 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	start_command_read_blocks
.LVL400:
	mov.n	a3, a10
.LVL401:
	j	.L156
.LVL402:
.L154:
	.loc 1 392 0
	mov.n	a12, a3
	mov.n	a11, a6
	mov.n	a10, a2
	call8	start_command_default
.LVL403:
	mov.n	a3, a10
.LVL404:
.L156:
	.loc 1 394 0
	mov.n	a10, a2
	call8	cs_high
.LVL405:
	.loc 1 396 0
	mov.n	a10, a2
	call8	release_bus
.LVL406:
	.loc 1 398 0
	bnez.n	a3, .L160
	.loc 1 402 0
	movi.n	a4, 0x3b
.LVL407:
	bne	a7, a4, .L161
	.loc 1 403 0
	l8ui	a4, sp, 0
	slli	a8, a2, 4
	l32r	a2, .LC31
.LVL408:
	add.n	a8, a2, a8
	extui	a2, a4, 0, 1
	l8ui	a5, a8, 7
.LVL409:
	movi.n	a4, -2
	and	a4, a5, a4
	or	a2, a4, a2
	s8i	a2, a8, 7
	.loc 1 407 0
	mov.n	a2, a3
	retw.n
.LVL410:
.L157:
	.loc 1 360 0
	movi	a2, 0x102
.LVL411:
	retw.n
.LVL412:
.L158:
	.loc 1 363 0
	movi	a2, 0x103
.LVL413:
	retw.n
.LVL414:
.L159:
	.loc 1 366 0
	movi	a2, 0x105
.LVL415:
	retw.n
.LVL416:
.L160:
	.loc 1 407 0
	mov.n	a2, a3
.LVL417:
	retw.n
.LVL418:
.L161:
	mov.n	a2, a3
.LVL419:
	.loc 1 408 0
	retw.n
.LFE37:
	.size	sdspi_host_start_command, .-sdspi_host_start_command
	.section	.rodata.__func__$6256,"a",@progbits
	.align	4
	.type	__func__$6256, @object
	.size	__func__$6256, 16
__func__$6256:
	.string	"get_transaction"
	.section	.rodata.__func__$6429,"a",@progbits
	.align	4
	.type	__func__$6429, @object
	.size	__func__$6429, 27
__func__$6429:
	.string	"start_command_write_blocks"
	.section	.bss.s_slots,"aw",@nobits
	.align	4
	.type	s_slots, @object
	.size	s_slots, 48
s_slots:
	.zero	48
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI1-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI3-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI4-.LFB27
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
	.uleb128 0x50
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI7-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI8-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI9-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI10-.LFB19
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x60
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI12-.LFB29
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI13-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI14-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI15-.LFB39
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI16-.LFB41
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI17-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI18-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI19-.LFB42
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI20-.LFB38
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI21-.LFB44
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI22-.LFB43
	.byte	0xe
	.uleb128 0x80
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI23-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI24-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI25-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI26-.LFB36
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI27-.LFB37
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE54:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_common.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/spi_master.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/sdspi_host.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_private.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_timer.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_crc.h"
	.file 19 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log_internal.h"
	.file 20 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1f54
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF254
	.byte	0xc
	.4byte	.LASF255
	.4byte	.LASF256
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x16
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x19
	.4byte	0x62
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
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
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x1e
	.4byte	0x8d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x32
	.4byte	0x74
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xd8
	.4byte	0x74
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x4
	.4byte	0xce
	.uleb128 0x7
	.4byte	0xc1
	.uleb128 0x6
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x8
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2c
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x39
	.4byte	0x82
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0xaa
	.4byte	0x94
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x6
	.byte	0x1f
	.4byte	0x14d
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x18
	.4byte	0xf0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x7
	.byte	0x33
	.4byte	0x189
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF37
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0x82
	.4byte	0x26f
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x8
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x9
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0xa
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0xb
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xc
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0xd
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0xe
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0xf
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x10
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x11
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x12
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x13
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x15
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x16
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x17
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x19
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x1a
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x1b
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x22
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x23
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x25
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x26
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x27
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x8
	.byte	0xaf
	.4byte	0x190
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0xb1
	.4byte	0x2b1
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0
	.uleb128 0xa
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x8
	.byte	0xb9
	.4byte	0x27a
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0xbb
	.4byte	0x2ed
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x8
	.byte	0xc2
	.4byte	0x2bc
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0xc4
	.4byte	0x311
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x8
	.byte	0xc7
	.4byte	0x2f8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0x8
	.byte	0xc9
	.4byte	0x335
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x8
	.byte	0xcc
	.4byte	0x31c
	.uleb128 0xb
	.byte	0x18
	.byte	0x8
	.byte	0xd1
	.4byte	0x385
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x8
	.byte	0xd2
	.4byte	0x106
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x8
	.byte	0xd3
	.4byte	0x2ed
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x8
	.byte	0xd4
	.4byte	0x311
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x8
	.byte	0xd5
	.4byte	0x335
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x8
	.byte	0xd6
	.4byte	0x2b1
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x8
	.byte	0xd7
	.4byte	0x340
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x9
	.byte	0x76
	.4byte	0xfb
	.uleb128 0xd
	.4byte	0xfb
	.4byte	0x3ab
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF102
	.uleb128 0x7
	.4byte	0xda
	.uleb128 0x9
	.byte	0x4
	.4byte	0x74
	.byte	0xa
	.byte	0x26
	.4byte	0x3d6
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xa
	.byte	0x2a
	.4byte	0x3b7
	.uleb128 0xb
	.byte	0x1c
	.byte	0xa
	.byte	0x35
	.4byte	0x43e
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0xa
	.byte	0x36
	.4byte	0x62
	.byte	0
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0xa
	.byte	0x37
	.4byte	0x62
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0xa
	.byte	0x38
	.4byte	0x62
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0xa
	.byte	0x39
	.4byte	0x62
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0xa
	.byte	0x3a
	.4byte	0x62
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0xa
	.byte	0x3b
	.4byte	0x62
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0xa
	.byte	0x3c
	.4byte	0xfb
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xa
	.byte	0x3d
	.4byte	0x3e1
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xb
	.byte	0x3b
	.4byte	0x454
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0x28
	.byte	0xb
	.byte	0x62
	.4byte	0x4b5
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0xb
	.byte	0x63
	.4byte	0xfb
	.byte	0
	.uleb128 0x10
	.string	"cmd"
	.byte	0xb
	.byte	0x64
	.4byte	0xe5
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xb
	.byte	0x6a
	.4byte	0x106
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0xb
	.byte	0x70
	.4byte	0x9f
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0xb
	.byte	0x71
	.4byte	0x9f
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0xb
	.byte	0x72
	.4byte	0xaa
	.byte	0x18
	.uleb128 0x11
	.4byte	0x593
	.byte	0x1c
	.uleb128 0x11
	.4byte	0x5c2
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xb
	.byte	0x3c
	.4byte	0x4c0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4c6
	.uleb128 0x12
	.4byte	0x4d1
	.uleb128 0x13
	.4byte	0x4d1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x449
	.uleb128 0xb
	.byte	0x24
	.byte	0xb
	.byte	0x41
	.4byte	0x588
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0xb
	.byte	0x42
	.4byte	0xda
	.byte	0
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0xb
	.byte	0x43
	.4byte	0xda
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0xb
	.byte	0x44
	.4byte	0xda
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0xb
	.byte	0x45
	.4byte	0xda
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0xb
	.byte	0x46
	.4byte	0xda
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0xb
	.byte	0x47
	.4byte	0xda
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0xb
	.byte	0x48
	.4byte	0xda
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0xb
	.byte	0x49
	.4byte	0x62
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0xb
	.byte	0x4a
	.4byte	0x62
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0xb
	.byte	0x4f
	.4byte	0x62
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0xb
	.byte	0x50
	.4byte	0xfb
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xb
	.byte	0x51
	.4byte	0x62
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xb
	.byte	0x52
	.4byte	0x4b5
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xb
	.byte	0x53
	.4byte	0x4b5
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xb
	.byte	0x54
	.4byte	0x4d7
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.byte	0x73
	.4byte	0x5b2
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0xb
	.byte	0x74
	.4byte	0xd3
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0xb
	.byte	0x75
	.4byte	0x5b2
	.byte	0
	.uleb128 0xd
	.4byte	0xda
	.4byte	0x5c2
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xb
	.byte	0x77
	.4byte	0x5e1
	.uleb128 0x15
	.4byte	.LASF136
	.byte	0xb
	.byte	0x78
	.4byte	0xaa
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0xb
	.byte	0x79
	.4byte	0x5b2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0xb
	.byte	0x88
	.4byte	0x5ec
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5f2
	.uleb128 0x16
	.4byte	.LASF257
	.uleb128 0xb
	.byte	0x1c
	.byte	0xc
	.byte	0x37
	.4byte	0x654
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0xc
	.byte	0x38
	.4byte	0x26f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0xc
	.byte	0x39
	.4byte	0x26f
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0xc
	.byte	0x3a
	.4byte	0x26f
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0xc
	.byte	0x3b
	.4byte	0x26f
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0xc
	.byte	0x3c
	.4byte	0x26f
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0xc
	.byte	0x3d
	.4byte	0x26f
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0xc
	.byte	0x3e
	.4byte	0x62
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xc
	.byte	0x3f
	.4byte	0x5f7
	.uleb128 0xb
	.byte	0x1c
	.byte	0xd
	.byte	0x3e
	.4byte	0x6ee
	.uleb128 0x17
	.4byte	.LASF147
	.byte	0xd
	.byte	0x40
	.4byte	0xda
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF148
	.byte	0xd
	.byte	0x41
	.4byte	0xda
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.4byte	.LASF149
	.byte	0xd
	.byte	0x42
	.4byte	0xda
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0xd
	.byte	0x43
	.4byte	0x5b2
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF151
	.byte	0xd
	.byte	0x44
	.4byte	0xda
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF152
	.byte	0xd
	.byte	0x45
	.4byte	0xda
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.string	"ncr"
	.byte	0xd
	.byte	0x47
	.4byte	0xda
	.byte	0x6
	.uleb128 0x10
	.string	"r1"
	.byte	0xd
	.byte	0x49
	.4byte	0xda
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0xd
	.byte	0x4b
	.4byte	0x39b
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0xd
	.byte	0x4d
	.4byte	0x62
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0xd
	.byte	0x4e
	.4byte	0x65f
	.uleb128 0xb
	.byte	0x10
	.byte	0x1
	.byte	0x2a
	.4byte	0x768
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0x1
	.byte	0x2b
	.4byte	0x5e1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0x1
	.byte	0x2c
	.4byte	0xda
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0x1
	.byte	0x2d
	.4byte	0xda
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0x1
	.byte	0x2e
	.4byte	0xda
	.byte	0x6
	.uleb128 0x17
	.4byte	.LASF157
	.byte	0x1
	.byte	0x30
	.4byte	0xda
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x7
	.uleb128 0x17
	.4byte	.LASF158
	.byte	0x1
	.byte	0x32
	.4byte	0xda
	.byte	0x1
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF159
	.byte	0x1
	.byte	0x35
	.4byte	0x768
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF160
	.byte	0x1
	.byte	0x37
	.4byte	0x4d1
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0x1
	.byte	0x38
	.4byte	0x6f9
	.uleb128 0x18
	.4byte	.LASF162
	.byte	0x1
	.byte	0x69
	.4byte	0x189
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a2
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x69
	.4byte	0x62
	.4byte	.LLST0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF163
	.byte	0x1
	.byte	0x6e
	.4byte	0x5e1
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7cb
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x6e
	.4byte	0x62
	.4byte	.LLST1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF165
	.byte	0x1
	.byte	0x73
	.4byte	0x189
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x804
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x73
	.4byte	0x62
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LVL6
	.4byte	0x7a2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF157
	.byte	0x1
	.byte	0x78
	.4byte	0x189
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x82d
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x78
	.4byte	0x62
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF168
	.byte	0x1
	.byte	0x94
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x852
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x94
	.4byte	0x62
	.4byte	.LLST4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0x1
	.byte	0xc1
	.4byte	0x189
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87b
	.uleb128 0x1d
	.string	"ptr"
	.byte	0x1
	.byte	0xc1
	.4byte	0xd3
	.4byte	.LLST5
	.byte	0
	.uleb128 0x18
	.4byte	.LASF167
	.byte	0x1
	.byte	0xcd
	.4byte	0x14d
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x902
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0xcd
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF127
	.byte	0x1
	.byte	0xcd
	.4byte	0x62
	.4byte	.LLST7
	.uleb128 0x1e
	.4byte	.LASF174
	.byte	0x1
	.byte	0xd4
	.4byte	0x588
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.4byte	.LVL15
	.4byte	0x7a2
	.4byte	0x8d5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL16
	.4byte	0x1e64
	.uleb128 0x1a
	.4byte	.LVL18
	.4byte	0x1e6f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	s_slots
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF169
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x936
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x4b
	.4byte	0x62
	.4byte	.LLST8
	.uleb128 0x1a
	.4byte	.LVL22
	.4byte	0x1e7a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF170
	.byte	0x1
	.byte	0x51
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96a
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x51
	.4byte	0x62
	.4byte	.LLST9
	.uleb128 0x1a
	.4byte	.LVL25
	.4byte	0x1e7a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF171
	.byte	0x1
	.byte	0x60
	.4byte	0x189
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99c
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x60
	.4byte	0x62
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LVL28
	.4byte	0x1e86
	.byte	0
	.uleb128 0x18
	.4byte	.LASF172
	.byte	0x1
	.byte	0x57
	.4byte	0x189
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ce
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x57
	.4byte	0x62
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LVL31
	.4byte	0x1e86
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF173
	.byte	0x1
	.byte	0xb1
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa52
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x1
	.byte	0xb1
	.4byte	0x62
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF175
	.byte	0x1
	.byte	0xb4
	.4byte	0xa52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.byte	0xb6
	.4byte	0x449
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.4byte	.LVL33
	.4byte	0x1e92
	.4byte	0xa2c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
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
	.byte	0x3c
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL34
	.4byte	0x7a2
	.4byte	0xa40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL35
	.4byte	0x1e9d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xda
	.4byte	0xa62
	.uleb128 0xe
	.4byte	0xb3
	.byte	0xb
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF176
	.byte	0x1
	.byte	0xa5
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab7
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x1
	.byte	0xa5
	.4byte	0x62
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.byte	0xa7
	.4byte	0x449
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.4byte	.LVL37
	.4byte	0x7a2
	.4byte	0xaa5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL38
	.4byte	0x1e9d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF177
	.byte	0x1
	.byte	0x7f
	.4byte	0x14d
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb03
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x7f
	.4byte	0x62
	.4byte	.LLST12
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0x1
	.byte	0x7f
	.4byte	0xb03
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LVL40
	.4byte	0x1ea9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x204
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x768
	.uleb128 0x23
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x14d
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc5
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x62
	.4byte	.LLST13
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x4d1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x62
	.4byte	.LLST14
	.uleb128 0x26
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x1e4
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x14d
	.4byte	.LLST15
	.uleb128 0x26
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x106
	.uleb128 0x6
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x28
	.4byte	.LASF184
	.4byte	0xbd5
	.uleb128 0x20
	.4byte	.LVL45
	.4byte	0x1eb4
	.uleb128 0x1f
	.4byte	.LVL48
	.4byte	0x7a2
	.4byte	0xba7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL49
	.4byte	0x1e9d
	.4byte	0xbbb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL50
	.4byte	0x1eb4
	.byte	0
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0xbd5
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	0xbc5
	.uleb128 0x23
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x14d
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca6
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x62
	.4byte	.LLST16
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x4d1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x62
	.4byte	.LLST17
	.uleb128 0x26
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x1c6
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x14d
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x106
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x29
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x62
	.4byte	.LLST19
	.uleb128 0x28
	.4byte	.LASF184
	.4byte	0xcb6
	.uleb128 0x20
	.4byte	.LVL61
	.4byte	0x1eb4
	.uleb128 0x1f
	.4byte	.LVL65
	.4byte	0x7a2
	.4byte	0xc88
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL66
	.4byte	0x1e9d
	.4byte	0xc9c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL68
	.4byte	0x1eb4
	.byte	0
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0xcb6
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.4byte	0xca6
	.uleb128 0x23
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x205
	.4byte	0x14d
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0f
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x205
	.4byte	0x62
	.4byte	.LLST20
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.2byte	0x205
	.4byte	0x4d1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2a
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x206
	.4byte	0x768
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x206
	.4byte	0xe0f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x24
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x206
	.4byte	0x62
	.4byte	.LLST21
	.uleb128 0x26
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x208
	.4byte	0xe15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x14d
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x20f
	.4byte	0x106
	.uleb128 0x7
	.byte	0x91
	.sleb128 -48
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x28
	.4byte	.LASF184
	.4byte	0xe35
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0
	.4byte	0xdfc
	.uleb128 0x29
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x216
	.4byte	0x189
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xdb8
	.uleb128 0x29
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x217
	.4byte	0x62
	.4byte	.LLST24
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x218
	.4byte	0xda
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	.LVL85
	.4byte	0x1ebf
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL78
	.4byte	0x1e92
	.4byte	0xdd7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
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
	.byte	0x38
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL79
	.4byte	0x7a2
	.4byte	0xdeb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL80
	.4byte	0x1e9d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL75
	.4byte	0x1eb4
	.uleb128 0x20
	.4byte	.LVL90
	.4byte	0x1eb4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9f
	.uleb128 0xd
	.4byte	0xda
	.4byte	0xe25
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0xe35
	.uleb128 0xe
	.4byte	0xb3
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0xe25
	.uleb128 0x1c
	.4byte	.LASF191
	.byte	0x1
	.byte	0x99
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed7
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x1
	.byte	0x99
	.4byte	0x62
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1e
	.4byte	.LASF158
	.byte	0x1
	.byte	0x9b
	.4byte	0x9f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.4byte	0x9f
	.4byte	.LLST26
	.uleb128 0x2d
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x1e
	.4byte	.LASF192
	.byte	0x1
	.byte	0x9d
	.4byte	0x4d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.4byte	.LVL101
	.4byte	0x7a2
	.4byte	0xeaa
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL102
	.4byte	0x1ec8
	.4byte	0xec4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL103
	.4byte	0x82d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF193
	.byte	0x1
	.byte	0x8b
	.4byte	0x4d1
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf58
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0x8b
	.4byte	0x62
	.4byte	.LLST27
	.uleb128 0x2f
	.4byte	.LASF158
	.byte	0x1
	.byte	0x8d
	.4byte	0x9f
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	.LASF184
	.4byte	0xf58
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6256
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.byte	0x8f
	.4byte	0x4d1
	.4byte	.LLST29
	.uleb128 0x1a
	.4byte	.LVL107
	.4byte	0x1ed3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x8e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6256
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xe25
	.uleb128 0x23
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x22d
	.4byte	0x14d
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1025
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x22d
	.4byte	0x62
	.4byte	.LLST30
	.uleb128 0x25
	.string	"cmd"
	.byte	0x1
	.2byte	0x22d
	.4byte	0x1025
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x29
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x22f
	.4byte	0x62
	.4byte	.LLST31
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.2byte	0x231
	.4byte	0x4d1
	.4byte	.LLST32
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x237
	.4byte	0x14d
	.4byte	.LLST33
	.uleb128 0x27
	.string	"r1"
	.byte	0x1
	.2byte	0x238
	.4byte	0xda
	.4byte	.LLST34
	.uleb128 0x1f
	.4byte	.LVL117
	.4byte	0xed7
	.4byte	0xfeb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL119
	.4byte	0x7a2
	.4byte	0xfff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL120
	.4byte	0x1e9d
	.4byte	0x1013
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL123
	.4byte	0x82d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6ee
	.uleb128 0x23
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x19a
	.4byte	0x14d
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ea
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x19a
	.4byte	0x62
	.4byte	.LLST35
	.uleb128 0x24
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x19a
	.4byte	0x62
	.4byte	.LLST36
	.uleb128 0x25
	.string	"cmd"
	.byte	0x1
	.2byte	0x19a
	.4byte	0x1025
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x29
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x19c
	.4byte	0x9f
	.4byte	.LLST37
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x449
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x1ad
	.4byte	0x14d
	.4byte	.LLST38
	.uleb128 0x28
	.4byte	.LASF184
	.4byte	0x10fa
	.uleb128 0x1f
	.4byte	.LVL135
	.4byte	0x7a2
	.4byte	0x10be
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL136
	.4byte	0x1e9d
	.4byte	0x10d3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL139
	.4byte	0xf5d
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0x10fa
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.4byte	0x10ea
	.uleb128 0x23
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x14d
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1567
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x62
	.4byte	.LLST39
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x1025
	.4byte	.LLST40
	.uleb128 0x24
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x2f9
	.4byte	0x1567
	.4byte	.LLST41
	.uleb128 0x24
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x2f9
	.4byte	0xfb
	.4byte	.LLST42
	.uleb128 0x30
	.4byte	.LASF184
	.4byte	0x157d
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6429
	.uleb128 0x29
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x2ff
	.4byte	0x4d1
	.4byte	.LLST43
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x305
	.4byte	0x14d
	.4byte	.LLST44
	.uleb128 0x26
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x312
	.4byte	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x13df
	.uleb128 0x29
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x318
	.4byte	0x4d1
	.4byte	.LLST45
	.uleb128 0x29
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x323
	.4byte	0x9f
	.4byte	.LLST46
	.uleb128 0x29
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x324
	.4byte	0x1567
	.4byte	.LLST47
	.uleb128 0x29
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x331
	.4byte	0x4d1
	.4byte	.LLST48
	.uleb128 0x31
	.string	"crc"
	.byte	0x1
	.2byte	0x33c
	.4byte	0xe5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x33d
	.4byte	0x4d1
	.4byte	.LLST49
	.uleb128 0x29
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x34b
	.4byte	0x4d1
	.4byte	.LLST50
	.uleb128 0x33
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x1261
	.uleb128 0x31
	.string	"tmp"
	.byte	0x1
	.2byte	0x327
	.4byte	0x768
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.4byte	.LVL168
	.4byte	0xab7
	.4byte	0x1249
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
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL172
	.4byte	0x1ebf
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL160
	.4byte	0xed7
	.4byte	0x1275
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL162
	.4byte	0x7a2
	.4byte	0x1289
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL163
	.4byte	0x1ede
	.4byte	0x12a3
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
	.uleb128 0x1f
	.4byte	.LVL167
	.4byte	0x852
	.4byte	0x12b7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL177
	.4byte	0xed7
	.4byte	0x12cb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL179
	.4byte	0x7a2
	.4byte	0x12df
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL180
	.4byte	0x1ede
	.4byte	0x12f9
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
	.uleb128 0x1f
	.4byte	.LVL182
	.4byte	0x1ee9
	.4byte	0x1314
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL183
	.4byte	0xed7
	.4byte	0x1328
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL185
	.4byte	0x7a2
	.4byte	0x133c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL186
	.4byte	0x1ede
	.4byte	0x1356
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
	.uleb128 0x1f
	.4byte	.LVL188
	.4byte	0xe3a
	.4byte	0x136a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL189
	.4byte	0xed7
	.4byte	0x137e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL191
	.4byte	0xb09
	.4byte	0x1392
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL193
	.4byte	0x82d
	.4byte	0x13a6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL194
	.4byte	0xed7
	.4byte	0x13ba
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL196
	.4byte	0xbda
	.4byte	0x13ce
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL198
	.4byte	0x82d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x14a6
	.uleb128 0x26
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x35f
	.4byte	0x1582
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x363
	.4byte	0x4d1
	.4byte	.LLST51
	.uleb128 0x29
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x36e
	.4byte	0x4d1
	.4byte	.LLST52
	.uleb128 0x1f
	.4byte	.LVL215
	.4byte	0xed7
	.4byte	0x142b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL217
	.4byte	0x7a2
	.4byte	0x143f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL218
	.4byte	0x1ede
	.4byte	0x1459
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL220
	.4byte	0xe3a
	.4byte	0x146d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL221
	.4byte	0xed7
	.4byte	0x1481
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL223
	.4byte	0xbda
	.4byte	0x1495
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL225
	.4byte	0x82d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL146
	.4byte	0x99c
	.4byte	0x14ba
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL147
	.4byte	0x1ef4
	.uleb128 0x1f
	.4byte	.LVL148
	.4byte	0x1eff
	.4byte	0x14fa
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC22
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6429
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL151
	.4byte	0xed7
	.4byte	0x150e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL153
	.4byte	0x7a2
	.4byte	0x1522
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL154
	.4byte	0x1ede
	.4byte	0x153c
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
	.uleb128 0x1f
	.4byte	.LVL156
	.4byte	0xe3a
	.4byte	0x1550
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL157
	.4byte	0xf5d
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3b2
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0x157d
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x1a
	.byte	0
	.uleb128 0x7
	.4byte	0x156d
	.uleb128 0xd
	.4byte	0xda
	.4byte	0x1592
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0
	.uleb128 0x23
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x26f
	.4byte	0x14d
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x199a
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x26f
	.4byte	0x62
	.4byte	.LLST53
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.2byte	0x26f
	.4byte	0x1025
	.4byte	.LLST54
	.uleb128 0x24
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x270
	.4byte	0x768
	.4byte	.LLST55
	.uleb128 0x24
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x270
	.4byte	0xfb
	.4byte	.LLST56
	.uleb128 0x29
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x272
	.4byte	0x189
	.4byte	.LLST57
	.uleb128 0x29
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x273
	.4byte	0x4d1
	.4byte	.LLST58
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x279
	.4byte	0x14d
	.4byte	.LLST59
	.uleb128 0x29
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x27f
	.4byte	0x768
	.4byte	.LLST60
	.uleb128 0x29
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x280
	.4byte	0x9f
	.4byte	.LLST61
	.uleb128 0x29
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x281
	.4byte	0x768
	.4byte	.LLST62
	.uleb128 0x28
	.4byte	.LASF184
	.4byte	0x19aa
	.uleb128 0x33
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x18ac
	.uleb128 0x26
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x291
	.4byte	0x9f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x292
	.4byte	0x1567
	.4byte	.LLST63
	.uleb128 0x29
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x293
	.4byte	0x189
	.4byte	.LLST64
	.uleb128 0x29
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x2ac
	.4byte	0x9f
	.4byte	.LLST65
	.uleb128 0x26
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x2ad
	.4byte	0x768
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x19af
	.4byte	.LLST66
	.uleb128 0x29
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x4d1
	.4byte	.LLST67
	.uleb128 0x31
	.string	"crc"
	.byte	0x1
	.2byte	0x2c4
	.4byte	0xe5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x2d2
	.4byte	0xe5
	.4byte	.LLST68
	.uleb128 0x33
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x170e
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.2byte	0x295
	.4byte	0x62
	.4byte	.LLST69
	.byte	0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0x176e
	.uleb128 0x29
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x4d1
	.4byte	.LLST70
	.uleb128 0x1f
	.4byte	.LVL262
	.4byte	0xed7
	.4byte	0x173b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL265
	.4byte	0xcbb
	.4byte	0x175d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL267
	.4byte	0x82d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL272
	.4byte	0xab7
	.4byte	0x1789
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL275
	.4byte	0x1e92
	.4byte	0x17a3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL276
	.4byte	0xed7
	.4byte	0x17b7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL278
	.4byte	0x7a2
	.4byte	0x17cb
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL279
	.4byte	0x1e9d
	.4byte	0x17df
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL281
	.4byte	0x82d
	.4byte	0x17f3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL285
	.4byte	0x1ebf
	.4byte	0x1807
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL286
	.4byte	0x1ebf
	.4byte	0x1823
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL287
	.4byte	0x804
	.4byte	0x1837
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL288
	.4byte	0x1ee9
	.4byte	0x184c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.4byte	.LVL290
	.4byte	0x1ef4
	.uleb128 0x1f
	.4byte	.LVL293
	.4byte	0x1eff
	.4byte	0x188a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC26
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL294
	.4byte	0x1f0a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0x194d
	.uleb128 0x26
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x2e5
	.4byte	0x6ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x2ee
	.4byte	0x4d1
	.4byte	.LLST71
	.uleb128 0x1f
	.4byte	.LVL310
	.4byte	0x1f15
	.4byte	0x18f4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL311
	.4byte	0x102b
	.4byte	0x1914
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
	.byte	0x34
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL313
	.4byte	0xed7
	.4byte	0x1928
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL315
	.4byte	0xbda
	.4byte	0x193c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL317
	.4byte	0x82d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL239
	.4byte	0xed7
	.4byte	0x1961
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL242
	.4byte	0x7a2
	.4byte	0x1975
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL243
	.4byte	0x1e9d
	.4byte	0x1989
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL245
	.4byte	0x82d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0x19aa
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x19
	.byte	0
	.uleb128 0x7
	.4byte	0x199a
	.uleb128 0x7
	.4byte	0x9f
	.uleb128 0x34
	.4byte	.LASF258
	.byte	0x1
	.byte	0xdf
	.4byte	0x14d
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.4byte	.LASF259
	.byte	0x1
	.byte	0xe4
	.4byte	0x14d
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a25
	.uleb128 0x2d
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xe6
	.4byte	0x9f
	.4byte	.LLST72
	.uleb128 0x20
	.4byte	.LVL331
	.4byte	0x1e64
	.uleb128 0x20
	.4byte	.LVL332
	.4byte	0x1f20
	.uleb128 0x20
	.4byte	.LVL333
	.4byte	0x1f20
	.uleb128 0x1a
	.4byte	.LVL334
	.4byte	0x1f2b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF223
	.byte	0x1
	.byte	0xf4
	.4byte	0x14d
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a9b
	.uleb128 0x19
	.4byte	.LASF164
	.byte	0x1
	.byte	0xf4
	.4byte	0x62
	.4byte	.LLST73
	.uleb128 0x19
	.4byte	.LASF222
	.byte	0x1
	.byte	0xf4
	.4byte	0xfb
	.4byte	.LLST74
	.uleb128 0x1f
	.4byte	.LVL337
	.4byte	0x779
	.4byte	0x1a70
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL338
	.4byte	0x7cb
	.4byte	0x1a84
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL340
	.4byte	0x87b
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
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x100
	.4byte	0x14d
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c62
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x100
	.4byte	0x62
	.4byte	.LLST75
	.uleb128 0x24
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x100
	.4byte	0x1c62
	.4byte	.LLST76
	.uleb128 0x28
	.4byte	.LASF184
	.4byte	0x1c7d
	.uleb128 0x29
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x109
	.4byte	0x3d6
	.4byte	.LLST77
	.uleb128 0x26
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x10e
	.4byte	0x43e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x117
	.4byte	0x14d
	.4byte	.LLST78
	.uleb128 0x26
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x128
	.4byte	0x385
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.4byte	.LVL348
	.4byte	0x779
	.4byte	0x1b31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL349
	.4byte	0x1f36
	.4byte	0x1b4c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL351
	.4byte	0x87b
	.4byte	0x1b69
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0xc
	.4byte	0x61a80
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL353
	.4byte	0x1f2b
	.4byte	0x1b7d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL358
	.4byte	0x1f41
	.4byte	0x1b91
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL360
	.4byte	0x7a2
	.4byte	0x1ba5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL361
	.4byte	0x1e64
	.uleb128 0x1f
	.4byte	.LVL363
	.4byte	0x1f2b
	.4byte	0x1bc2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL366
	.4byte	0x902
	.4byte	0x1bd6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL371
	.4byte	0x1f41
	.4byte	0x1bea
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL373
	.4byte	0x7a2
	.4byte	0x1bfe
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL374
	.4byte	0x1e64
	.uleb128 0x1f
	.4byte	.LVL375
	.4byte	0x1f2b
	.4byte	0x1c1b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL378
	.4byte	0x1f4c
	.4byte	0x1c34
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL379
	.4byte	0x7a2
	.4byte	0x1c48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL380
	.4byte	0x1e64
	.uleb128 0x1a
	.4byte	.LVL381
	.4byte	0x1f2b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c68
	.uleb128 0x7
	.4byte	0x654
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0x1c7d
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.4byte	0x1c6d
	.uleb128 0x38
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x164
	.4byte	0x14d
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e17
	.uleb128 0x24
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x164
	.4byte	0x62
	.4byte	.LLST79
	.uleb128 0x32
	.string	"cmd"
	.byte	0x1
	.2byte	0x164
	.4byte	0x1025
	.4byte	.LLST80
	.uleb128 0x24
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x164
	.4byte	0xaa
	.4byte	.LLST81
	.uleb128 0x24
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x165
	.4byte	0xfb
	.4byte	.LLST82
	.uleb128 0x2a
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x165
	.4byte	0x62
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x29
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x171
	.4byte	0x62
	.4byte	.LLST83
	.uleb128 0x26
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x172
	.4byte	0xfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.4byte	.LASF184
	.4byte	0x1e27
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.2byte	0x17f
	.4byte	0x14d
	.4byte	.LLST84
	.uleb128 0x1f
	.4byte	.LVL390
	.4byte	0x779
	.4byte	0x1d36
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL391
	.4byte	0x7cb
	.4byte	0x1d4a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL392
	.4byte	0x96a
	.4byte	0x1d5e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL395
	.4byte	0x9ce
	.4byte	0x1d72
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL396
	.4byte	0x936
	.4byte	0x1d86
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL397
	.4byte	0x10ff
	.4byte	0x1dac
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
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL400
	.4byte	0x1592
	.4byte	0x1dd2
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
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL403
	.4byte	0x102b
	.4byte	0x1df2
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
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL405
	.4byte	0x902
	.4byte	0x1e06
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL406
	.4byte	0xa62
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0xc1
	.4byte	0x1e27
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x1e17
	.uleb128 0xd
	.4byte	0x76e
	.4byte	0x1e3c
	.uleb128 0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF232
	.byte	0x1
	.byte	0x3a
	.4byte	0x1e2c
	.uleb128 0x5
	.byte	0x3
	.4byte	s_slots
	.uleb128 0x22
	.string	"TAG"
	.byte	0x1
	.byte	0x3b
	.4byte	0x1e5f
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC20
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xc8
	.uleb128 0x39
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0xb
	.byte	0xcd
	.uleb128 0x39
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0xb
	.byte	0xc1
	.uleb128 0x3a
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x8
	.2byte	0x13b
	.uleb128 0x3a
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x8
	.2byte	0x149
	.uleb128 0x39
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xe
	.byte	0x19
	.uleb128 0x3a
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0xb
	.2byte	0x105
	.uleb128 0x39
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0xf
	.byte	0x37
	.uleb128 0x39
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x10
	.byte	0xbe
	.uleb128 0x3b
	.4byte	.LASF260
	.4byte	.LASF260
	.uleb128 0x39
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0xb
	.byte	0xf3
	.uleb128 0x39
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0x11
	.byte	0x29
	.uleb128 0x39
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0xb
	.byte	0xdd
	.uleb128 0x39
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x12
	.byte	0x26
	.uleb128 0x39
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x6
	.byte	0x57
	.uleb128 0x39
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x6
	.byte	0x6b
	.uleb128 0x39
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0x13
	.byte	0x13
	.uleb128 0x39
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0xd
	.byte	0x60
	.uleb128 0x39
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0x14
	.byte	0x5a
	.uleb128 0x39
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0xb
	.byte	0xac
	.uleb128 0x39
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0xb
	.byte	0x9f
	.uleb128 0x39
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0x8
	.byte	0xf8
	.uleb128 0x39
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x14
	.byte	0x57
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x17
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x5
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
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE21
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
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE31
	.2byte	0x7
	.byte	0x78
	.sleb128 1073405952
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL18-1
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL44
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL59
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL60
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL66
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL74
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL76
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL83
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL96
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	s_slots+4
	.byte	0x22
	.byte	0x6
	.byte	0x9
	.byte	0xe8
	.byte	0x24
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL109
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL114
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL121
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL132
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL132
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL139
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL145
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL236
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL145
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL224
	.4byte	.LVL227
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL227
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LFE44
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL145
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL201
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL231
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL145
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL200
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL231
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL152
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL231
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL168
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL192
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL202
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL224
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL231
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL202
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL165
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL176
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL204
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL165
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL176
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL204
	.4byte	.LVL212
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL178
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL184
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL206
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL190
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL195
	.4byte	.LVL196-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL216
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL221
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL222
	.4byte	.LVL223-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL237
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL291
	.4byte	.LVL295
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL295
	.4byte	.LVL301
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL301
	.4byte	.LVL302
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL302
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL304
	.4byte	.LVL305
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL305
	.4byte	.LVL306
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL306
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL318
	.4byte	.LVL319
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL319
	.4byte	.LVL320
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL320
	.4byte	.LVL321
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL321
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL322
	.4byte	.LVL323
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL324
	.4byte	.LVL325
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL326
	.4byte	.LVL327
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL327
	.4byte	.LVL328
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL328
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL237
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL240
	.4byte	.LFE43
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL237
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL241
	.4byte	.LVL297
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL297
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL300
	.4byte	.LFE43
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL237
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL249
	.4byte	.LVL252
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL252
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL325
	.4byte	.LVL327
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL327
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL238
	.4byte	.LVL249
	.2byte	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80000200
	.byte	0x2b
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL323
	.2byte	0xe
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80000200
	.byte	0x2b
	.byte	0x9f
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80000200
	.byte	0x2b
	.byte	0x9f
	.4byte	.LVL325
	.4byte	.LFE43
	.2byte	0xe
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.4byte	0x80000200
	.byte	0x2b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL240
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL266
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL272
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL300
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL302
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL311
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL316
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL321
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL323
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL245
	.4byte	.LVL323
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL325
	.4byte	.LFE43
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL245
	.4byte	.LVL249
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL257
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL283
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL295
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL306
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL325
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL248
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL284
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL306
	.4byte	.LVL308
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL325
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL253
	.4byte	.LVL256
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL257
	.4byte	.LVL261
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL261
	.4byte	.LVL299
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL300
	.4byte	.LVL306
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL253
	.4byte	.LVL256
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL261
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL261
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL271
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL302
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL273
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL289
	.4byte	.LVL292
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL295
	.4byte	.LVL300
	.2byte	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL304
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL277
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL304
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL286
	.4byte	.LVL289
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL289
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL300
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL262
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL264
	.4byte	.LVL265-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL313
	.4byte	.LVL314
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL314
	.4byte	.LVL315-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL329
	.4byte	.LVL330
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL330
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL336
	.4byte	.LVL341
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL341
	.4byte	.LVL342
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL342
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL343
	.4byte	.LVL344
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL344
	.4byte	.LVL345
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL345
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL336
	.4byte	.LVL339
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL339
	.4byte	.LVL342
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL342
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL346
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL354
	.4byte	.LVL355
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL355
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL364
	.4byte	.LVL365
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL365
	.4byte	.LVL376
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL376
	.4byte	.LVL377
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL377
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL382
	.4byte	.LVL383
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL383
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL384
	.4byte	.LVL385
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL385
	.4byte	.LVL386
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL386
	.4byte	.LVL387
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL387
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL388
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL346
	.4byte	.LVL362
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL362
	.4byte	.LVL365
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL365
	.4byte	.LVL368
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL370
	.4byte	.LVL383
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL383
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL387
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL347
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL354
	.4byte	.LVL355
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL355
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL364
	.4byte	.LVL365
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL365
	.4byte	.LVL376
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL376
	.4byte	.LVL377
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL377
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL382
	.4byte	.LVL383
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL383
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL384
	.4byte	.LVL385
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL385
	.4byte	.LVL386
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL386
	.4byte	.LVL387
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL387
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL388
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL349
	.4byte	.LVL350
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL352
	.4byte	.LVL356
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL356
	.4byte	.LVL357
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL359
	.4byte	.LVL367
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL372
	.4byte	.LVL377
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL385
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL389
	.4byte	.LVL408
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL408
	.4byte	.LVL410
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL410
	.4byte	.LVL411
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL412
	.4byte	.LVL413
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL413
	.4byte	.LVL414
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL414
	.4byte	.LVL415
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL415
	.4byte	.LVL416
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL416
	.4byte	.LVL417
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL417
	.4byte	.LVL418
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL418
	.4byte	.LVL419
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL419
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL389
	.4byte	.LVL398
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL398
	.4byte	.LVL399
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL399
	.4byte	.LVL401
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL401
	.4byte	.LVL402
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL402
	.4byte	.LVL404
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL404
	.4byte	.LVL410
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL410
	.4byte	.LVL416
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL416
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL389
	.4byte	.LVL407
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL407
	.4byte	.LVL410
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL410
	.4byte	.LVL418
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL418
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL389
	.4byte	.LVL409
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL409
	.4byte	.LVL410
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL410
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL393
	.4byte	.LVL410
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL416
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL395
	.4byte	.LVL398
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL398
	.4byte	.LVL399
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL399
	.4byte	.LVL401
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL401
	.4byte	.LVL402
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL402
	.4byte	.LVL404
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL404
	.4byte	.LVL410
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL416
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xf4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB43
	.4byte	.LFE43
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF209:
	.string	"start_command_read_blocks"
.LASF33:
	.string	"GPIO_PIN_INTR_NEGEDGE"
.LASF187:
	.string	"extra_size"
.LASF255:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/driver/sdspi_host.c"
.LASF229:
	.string	"sdspi_host_start_command"
.LASF153:
	.string	"response"
.LASF13:
	.string	"size_t"
.LASF15:
	.string	"sizetype"
.LASF258:
	.string	"sdspi_host_init"
.LASF92:
	.string	"GPIO_PULLDOWN_DISABLE"
.LASF119:
	.string	"user"
.LASF78:
	.string	"GPIO_INTR_LOW_LEVEL"
.LASF20:
	.string	"int32_t"
.LASF171:
	.string	"card_missing"
.LASF86:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF138:
	.string	"spi_device_handle_t"
.LASF184:
	.string	"__func__"
.LASF148:
	.string	"transmission_bit"
.LASF196:
	.string	"start_command_default"
.LASF35:
	.string	"GPIO_PIN_INTR_LOLEVEL"
.LASF147:
	.string	"cmd_index"
.LASF239:
	.string	"heap_caps_malloc"
.LASF183:
	.string	"nonzero_count"
.LASF166:
	.string	"ptr_dma_compatible"
.LASF110:
	.string	"quadwp_io_num"
.LASF137:
	.string	"rx_data"
.LASF139:
	.string	"gpio_miso"
.LASF126:
	.string	"cs_ena_posttrans"
.LASF197:
	.string	"cmd_size"
.LASF189:
	.string	"byte_idx"
.LASF234:
	.string	"spi_bus_add_device"
.LASF150:
	.string	"arguments"
.LASF163:
	.string	"spi_handle"
.LASF3:
	.string	"__uint8_t"
.LASF129:
	.string	"spics_io_num"
.LASF222:
	.string	"freq_khz"
.LASF136:
	.string	"rx_buffer"
.LASF76:
	.string	"GPIO_INTR_NEGEDGE"
.LASF14:
	.string	"long int"
.LASF191:
	.string	"wait_for_transactions"
.LASF192:
	.string	"t_out"
.LASF186:
	.string	"extra_ptr"
.LASF157:
	.string	"data_crc_enabled"
.LASF218:
	.string	"will_receive"
.LASF135:
	.string	"tx_data"
.LASF83:
	.string	"GPIO_MODE_INPUT"
.LASF216:
	.string	"extra_data_ptr"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"uint8_t"
.LASF38:
	.string	"GPIO_NUM_0"
.LASF39:
	.string	"GPIO_NUM_1"
.LASF40:
	.string	"GPIO_NUM_2"
.LASF41:
	.string	"GPIO_NUM_3"
.LASF42:
	.string	"GPIO_NUM_4"
.LASF43:
	.string	"GPIO_NUM_5"
.LASF44:
	.string	"GPIO_NUM_6"
.LASF45:
	.string	"GPIO_NUM_7"
.LASF46:
	.string	"GPIO_NUM_8"
.LASF47:
	.string	"GPIO_NUM_9"
.LASF203:
	.string	"will_send"
.LASF252:
	.string	"gpio_config"
.LASF100:
	.string	"gpio_config_t"
.LASF1:
	.string	"unsigned char"
.LASF167:
	.string	"init_spi_dev"
.LASF178:
	.string	"out_buf"
.LASF193:
	.string	"get_transaction"
.LASF84:
	.string	"GPIO_MODE_OUTPUT"
.LASF177:
	.string	"get_block_buf"
.LASF185:
	.string	"poll_data_token"
.LASF37:
	.string	"_Bool"
.LASF200:
	.string	"t_command"
.LASF236:
	.string	"gpio_get_level"
.LASF17:
	.string	"char"
.LASF179:
	.string	"poll_response_token"
.LASF208:
	.string	"t_stop_token"
.LASF36:
	.string	"GPIO_PIN_INTR_HILEVEL"
.LASF114:
	.string	"spi_bus_config_t"
.LASF4:
	.string	"__uint16_t"
.LASF251:
	.string	"spi_bus_initialize"
.LASF170:
	.string	"cs_low"
.LASF212:
	.string	"cmd_u8"
.LASF238:
	.string	"spi_device_transmit"
.LASF182:
	.string	"poll_busy"
.LASF106:
	.string	"spi_host_device_t"
.LASF140:
	.string	"gpio_mosi"
.LASF113:
	.string	"flags"
.LASF74:
	.string	"GPIO_INTR_DISABLE"
.LASF259:
	.string	"sdspi_host_deinit"
.LASF25:
	.string	"ESP_LOG_ERROR"
.LASF152:
	.string	"crc7"
.LASF120:
	.string	"transaction_cb_t"
.LASF223:
	.string	"sdspi_host_set_card_clk"
.LASF82:
	.string	"GPIO_MODE_DISABLE"
.LASF227:
	.string	"buscfg"
.LASF124:
	.string	"duty_cycle_pos"
.LASF144:
	.string	"gpio_wp"
.LASF125:
	.string	"cs_ena_pretrans"
.LASF168:
	.string	"release_transaction"
.LASF85:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF32:
	.string	"GPIO_PIN_INTR_POSEDGE"
.LASF173:
	.string	"go_idle_clockout"
.LASF176:
	.string	"release_bus"
.LASF257:
	.string	"spi_device_t"
.LASF242:
	.string	"__assert_func"
.LASF93:
	.string	"GPIO_PULLDOWN_ENABLE"
.LASF249:
	.string	"free"
.LASF155:
	.string	"sdspi_hw_cmd_t"
.LASF10:
	.string	"__uint64_t"
.LASF128:
	.string	"input_delay_ns"
.LASF214:
	.string	"pre_scan_data_ptr"
.LASF16:
	.string	"long unsigned int"
.LASF247:
	.string	"esp_log_buffer_hex_internal"
.LASF224:
	.string	"sdspi_host_init_slot"
.LASF161:
	.string	"slot_info_t"
.LASF23:
	.string	"uintptr_t"
.LASF230:
	.string	"data_size"
.LASF73:
	.string	"gpio_num_t"
.LASF220:
	.string	"crc_of_data"
.LASF115:
	.string	"spi_transaction_t"
.LASF210:
	.string	"rx_length"
.LASF145:
	.string	"dma_channel"
.LASF90:
	.string	"GPIO_PULLUP_ENABLE"
.LASF188:
	.string	"found"
.LASF7:
	.string	"__uint32_t"
.LASF81:
	.string	"gpio_int_type_t"
.LASF9:
	.string	"long long int"
.LASF133:
	.string	"spi_device_interface_config_t"
.LASF225:
	.string	"slot_config"
.LASF132:
	.string	"post_cb"
.LASF75:
	.string	"GPIO_INTR_POSEDGE"
.LASF95:
	.string	"pin_bit_mask"
.LASF109:
	.string	"sclk_io_num"
.LASF169:
	.string	"cs_high"
.LASF130:
	.string	"queue_size"
.LASF87:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF190:
	.string	"rd_data"
.LASF30:
	.string	"esp_err_t"
.LASF141:
	.string	"gpio_sck"
.LASF48:
	.string	"GPIO_NUM_10"
.LASF49:
	.string	"GPIO_NUM_11"
.LASF50:
	.string	"GPIO_NUM_12"
.LASF51:
	.string	"GPIO_NUM_13"
.LASF52:
	.string	"GPIO_NUM_14"
.LASF53:
	.string	"GPIO_NUM_15"
.LASF54:
	.string	"GPIO_NUM_16"
.LASF55:
	.string	"GPIO_NUM_17"
.LASF56:
	.string	"GPIO_NUM_18"
.LASF57:
	.string	"GPIO_NUM_19"
.LASF72:
	.string	"GPIO_NUM_MAX"
.LASF254:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF102:
	.string	"float"
.LASF217:
	.string	"need_poll"
.LASF116:
	.string	"addr"
.LASF207:
	.string	"stop_token"
.LASF97:
	.string	"pull_up_en"
.LASF8:
	.string	"unsigned int"
.LASF58:
	.string	"GPIO_NUM_21"
.LASF59:
	.string	"GPIO_NUM_22"
.LASF60:
	.string	"GPIO_NUM_23"
.LASF61:
	.string	"GPIO_NUM_25"
.LASF62:
	.string	"GPIO_NUM_26"
.LASF63:
	.string	"GPIO_NUM_27"
.LASF213:
	.string	"pre_scan_data_size"
.LASF174:
	.string	"devcfg"
.LASF134:
	.string	"tx_buffer"
.LASF26:
	.string	"ESP_LOG_WARN"
.LASF231:
	.string	"cmd_arg"
.LASF64:
	.string	"GPIO_NUM_32"
.LASF65:
	.string	"GPIO_NUM_33"
.LASF66:
	.string	"GPIO_NUM_34"
.LASF67:
	.string	"GPIO_NUM_35"
.LASF68:
	.string	"GPIO_NUM_36"
.LASF69:
	.string	"GPIO_NUM_37"
.LASF70:
	.string	"GPIO_NUM_38"
.LASF71:
	.string	"GPIO_NUM_39"
.LASF79:
	.string	"GPIO_INTR_HIGH_LEVEL"
.LASF250:
	.string	"spi_bus_free"
.LASF107:
	.string	"mosi_io_num"
.LASF29:
	.string	"ESP_LOG_VERBOSE"
.LASF253:
	.string	"calloc"
.LASF248:
	.string	"make_hw_cmd"
.LASF165:
	.string	"is_slot_initialized"
.LASF198:
	.string	"start_command_write_blocks"
.LASF104:
	.string	"HSPI_HOST"
.LASF151:
	.string	"stop_bit"
.LASF202:
	.string	"t_start_token"
.LASF156:
	.string	"handle"
.LASF158:
	.string	"used_transaction_count"
.LASF245:
	.string	"esp_log_timestamp"
.LASF118:
	.string	"rxlength"
.LASF206:
	.string	"t_poll"
.LASF11:
	.string	"long long unsigned int"
.LASF143:
	.string	"gpio_cd"
.LASF117:
	.string	"length"
.LASF19:
	.string	"uint16_t"
.LASF142:
	.string	"gpio_cs"
.LASF195:
	.string	"response_delay_bytes"
.LASF149:
	.string	"start_bit"
.LASF103:
	.string	"SPI_HOST"
.LASF160:
	.string	"transactions"
.LASF24:
	.string	"ESP_LOG_NONE"
.LASF101:
	.string	"TickType_t"
.LASF244:
	.string	"sdspi_crc16"
.LASF215:
	.string	"extra_data_size"
.LASF219:
	.string	"receive_extra_bytes"
.LASF162:
	.string	"is_valid_slot"
.LASF237:
	.string	"memset"
.LASF105:
	.string	"VSPI_HOST"
.LASF27:
	.string	"ESP_LOG_INFO"
.LASF131:
	.string	"pre_cb"
.LASF34:
	.string	"GPIO_PIN_INTR_ANYEDGE"
.LASF123:
	.string	"dummy_bits"
.LASF205:
	.string	"t_crc"
.LASF94:
	.string	"gpio_pulldown_t"
.LASF12:
	.string	"__uintptr_t"
.LASF256:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\driver"
.LASF88:
	.string	"gpio_mode_t"
.LASF159:
	.string	"block_buf"
.LASF112:
	.string	"max_transfer_sz"
.LASF240:
	.string	"esp_timer_get_time"
.LASF226:
	.string	"host"
.LASF172:
	.string	"card_write_protected"
.LASF2:
	.string	"short int"
.LASF111:
	.string	"quadhd_io_num"
.LASF22:
	.string	"uint64_t"
.LASF96:
	.string	"mode"
.LASF91:
	.string	"gpio_pullup_t"
.LASF98:
	.string	"pull_down_en"
.LASF31:
	.string	"GPIO_PIN_INTR_DISABLE"
.LASF194:
	.string	"poll_cmd_response"
.LASF28:
	.string	"ESP_LOG_DEBUG"
.LASF89:
	.string	"GPIO_PULLUP_DISABLE"
.LASF260:
	.string	"memcpy"
.LASF201:
	.string	"start_token"
.LASF243:
	.string	"spi_device_queue_trans"
.LASF77:
	.string	"GPIO_INTR_ANYEDGE"
.LASF127:
	.string	"clock_speed_hz"
.LASF121:
	.string	"command_bits"
.LASF21:
	.string	"uint32_t"
.LASF211:
	.string	"need_stop_command"
.LASF233:
	.string	"spi_bus_remove_device"
.LASF199:
	.string	"tx_length"
.LASF181:
	.string	"t_end"
.LASF235:
	.string	"gpio_set_level"
.LASF180:
	.string	"t_rx"
.LASF146:
	.string	"sdspi_slot_config_t"
.LASF5:
	.string	"short unsigned int"
.LASF228:
	.string	"io_conf"
.LASF232:
	.string	"s_slots"
.LASF204:
	.string	"t_data"
.LASF164:
	.string	"slot"
.LASF241:
	.string	"spi_device_get_trans_result"
.LASF6:
	.string	"__int32_t"
.LASF80:
	.string	"GPIO_INTR_MAX"
.LASF99:
	.string	"intr_type"
.LASF154:
	.string	"timeout_ms"
.LASF221:
	.string	"stop_cmd"
.LASF246:
	.string	"esp_log_write"
.LASF175:
	.string	"data"
.LASF122:
	.string	"address_bits"
.LASF108:
	.string	"miso_io_num"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
