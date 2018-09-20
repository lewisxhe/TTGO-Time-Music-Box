	.file	"tftspi.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.literal_position
	.literal .LC1, -33554433
	.literal .LC2, 16777215
	.literal .LC3, -16777216
	.literal .LC4, 134217728
	.literal .LC5, 268435456
	.literal .LC6, -268435457
	.literal .LC7, 262144
	.align	4
	.type	_spi_transfer_start, @function
_spi_transfer_start:
.LFB20:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/tft/tftspi.c"
	.loc 1 93 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 95 0
	l32i.n	a8, a2, 36
	l32i.n	a9, a8, 28
	memw
	l32i.n	a10, a9, 28
	l32r	a8, .LC1
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 28
	.loc 1 96 0
	l32i.n	a8, a2, 36
	l32i.n	a10, a8, 28
	addi.n	a3, a3, -1
.LVL1:
	memw
	l32i.n	a11, a10, 40
	l32r	a9, .LC2
	and	a9, a3, a9
	l32r	a8, .LC3
	and	a8, a11, a8
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 40
	.loc 1 97 0
	l32i.n	a8, a2, 36
	l32i.n	a10, a8, 28
	memw
	l32i.n	a9, a10, 28
	l32r	a8, .LC4
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 28
	.loc 1 98 0
	beqz.n	a4, .L2
	.loc 1 99 0
	l32i.n	a8, a2, 36
	l32i.n	a10, a8, 28
	memw
	l32i.n	a11, a10, 44
	l32r	a9, .LC2
	and	a9, a4, a9
	l32r	a4, .LC3
.LVL2:
	and	a8, a11, a4
	or	a8, a8, a9
	memw
	s32i.n	a8, a10, 44
	.loc 1 100 0
	l32i.n	a4, a2, 36
	l32i.n	a8, a4, 28
	memw
	l32i.n	a9, a8, 28
	l32r	a4, .LC5
	or	a4, a9, a4
	memw
	s32i.n	a4, a8, 28
	j	.L3
.LVL3:
.L2:
	.loc 1 103 0
	l32i.n	a4, a2, 36
.LVL4:
	l32i.n	a8, a4, 28
	memw
	l32i.n	a9, a8, 44
	l32r	a4, .LC3
	and	a4, a9, a4
	memw
	s32i.n	a4, a8, 44
	.loc 1 104 0
	l32i.n	a4, a2, 36
	l32i.n	a8, a4, 28
	memw
	l32i.n	a9, a8, 28
	l32r	a4, .LC6
	and	a4, a9, a4
	memw
	s32i.n	a4, a8, 28
.L3:
	.loc 1 107 0
	l32i.n	a4, a2, 36
	l32i.n	a9, a4, 28
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC7
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.L4:
	.loc 1 109 0 discriminator 1
	l32i.n	a8, a2, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L4
	.loc 1 110 0
	retw.n
.LFE20:
	.size	_spi_transfer_start, .-_spi_transfer_start
	.global	__floatsidf
	.global	__muldf3
	.global	__adddf3
	.global	__truncdfsf2
	.literal_position
	.literal .LC8, 0x437f0000
	.literal .LC9, 0x77318fc5, 0x3fd3212d
	.literal .LC10, 0x0c49ba5e, 0x3fdf2b02
	.literal .LC11, 0x1cac0831, 0x3fcb645a
	.literal .LC13, -16711681
	.align	4
	.type	color2gs, @function
color2gs:
.LFB24:
	.loc 1 228 0
	entry	sp, 64
.LCFI1:
	srli	a5, a2, 8
	extui	a4, a2, 16, 16
	.loc 1 230 0
	extui	a10, a2, 0, 8
	call8	__floatsidf
.LVL5:
	l32r	a12, .LC9
	l32r	a13, .LC9+4
	call8	__muldf3
.LVL6:
	mov.n	a2, a10
	mov.n	a3, a11
	extui	a10, a5, 0, 8
	call8	__floatsidf
.LVL7:
	l32r	a12, .LC10
	l32r	a13, .LC10+4
	call8	__muldf3
.LVL8:
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	call8	__adddf3
.LVL9:
	mov.n	a2, a10
	mov.n	a3, a11
	extui	a10, a4, 0, 8
	call8	__floatsidf
.LVL10:
	l32r	a12, .LC11
	l32r	a13, .LC11+4
	call8	__muldf3
.LVL11:
	mov.n	a12, a10
	mov.n	a13, a11
	mov.n	a10, a2
	mov.n	a11, a3
	call8	__adddf3
.LVL12:
	call8	__truncdfsf2
.LVL13:
	wfr	f0, a10
.LVL14:
	.loc 1 231 0
	l32r	a2, .LC8
	wfr	f1, a2
	olt.s	b0, f1, f0
	bf	b0, .L6
	wfr	f0, a2
.L6:
.LVL15:
	.loc 1 233 0
	utrunc.s	a8, f0, 0
	extui	a8, a8, 0, 8
	.loc 1 237 0
	slli	a2, a8, 8
	or	a2, a8, a2
	slli	a8, a8, 16
	l32r	a9, .LC13
	and	a2, a2, a9
	.loc 1 238 0
	or	a2, a2, a8
	retw.n
.LFE24:
	.size	color2gs, .-color2gs
	.literal_position
	.literal .LC14, gray_scale
	.literal .LC15, 16777215
	.literal .LC16, -16777216
	.literal .LC17, disp_spi
	.literal .LC18, 262144
	.align	4
	.type	_direct_send, @function
_direct_send:
.LFB27:
	.loc 1 301 0
.LVL16:
	entry	sp, 64
.LCFI2:
	s32i.n	a2, sp, 20
.LVL17:
.LBB2:
	.loc 1 308 0
#APP
# 308 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/tft/tftspi.c" 1
	rsil	a2, 3

# 0 "" 2
.LVL18:
#NO_APP
.LBE2:
	.loc 1 309 0
	l32i.n	a5, sp, 20
	l8ui	a2, a5, 0
	l8ui	a5, a5, 1
	s8i	a2, sp, 0
	l32i.n	a6, sp, 20
	l8ui	a2, a6, 2
	s8i	a5, sp, 1
	s8i	a2, sp, 2
	.loc 1 310 0
	beqz.n	a4, .L9
	.loc 1 310 0 is_stmt 0 discriminator 1
	l32r	a2, .LC14
	l8ui	a2, a2, 0
	beqz.n	a2, .L9
	.loc 1 310 0 discriminator 2
	l8ui	a5, a6, 0
	l8ui	a2, a6, 1
	slli	a2, a2, 8
	or	a2, a2, a5
	l8ui	a10, a6, 2
	slli	a10, a10, 16
	or	a10, a10, a2
	call8	color2gs
.LVL19:
	s8i	a10, sp, 0
	extui	a2, a10, 8, 8
	s8i	a2, sp, 1
	extui	a10, a10, 16, 8
	s8i	a10, sp, 2
.L9:
	.loc 1 341 0 is_stmt 1
	movi.n	a2, 0
	s32i.n	a2, sp, 16
	mov.n	a6, a2
	mov.n	a5, a2
	mov.n	a7, a2
	j	.L10
.LVL20:
.L17:
	.loc 1 314 0
	bnez.n	a4, .L11
	.loc 1 315 0
	l32r	a8, .LC14
	l8ui	a8, a8, 0
	beqz.n	a8, .L12
	.loc 1 315 0 is_stmt 0 discriminator 1
	addx2	a8, a7, a7
	l32i.n	a9, sp, 20
	add.n	a8, a9, a8
	l8ui	a11, a8, 0
	l8ui	a9, a8, 1
	slli	a9, a9, 8
	or	a9, a9, a11
	l8ui	a10, a8, 2
	slli	a10, a10, 16
	or	a10, a10, a9
	call8	color2gs
.LVL21:
	s8i	a10, sp, 0
	extui	a8, a10, 8, 8
	s8i	a8, sp, 1
	extui	a10, a10, 16, 8
	s8i	a10, sp, 2
	j	.L11
.L12:
	.loc 1 316 0 is_stmt 1
	addx2	a8, a7, a7
	l32i.n	a9, sp, 20
	add.n	a8, a9, a8
	l8ui	a10, a8, 0
	l8ui	a9, a8, 1
	s8i	a10, sp, 0
	l8ui	a8, a8, 2
	s8i	a9, sp, 1
	s8i	a8, sp, 2
.L11:
	.loc 1 319 0
	l8ui	a8, sp, 0
	ssl	a2
	sll	a8, a8
	or	a5, a5, a8
.LVL22:
	.loc 1 320 0
	addi.n	a2, a2, 8
.LVL23:
	.loc 1 321 0
	bnei	a2, 32, .L13
	.loc 1 322 0
	l32i.n	a8, sp, 16
	add.n	a8, a8, a2
	s32i.n	a8, sp, 16
.LVL24:
	.loc 1 324 0
	l32r	a2, .LC17
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 36
	l32i.n	a8, a2, 28
.LVL25:
	addi	a2, a6, 32
	addx4	a2, a2, a8
	memw
	s32i.n	a5, a2, 0
.LVL26:
	addi.n	a6, a6, 1
.LVL27:
	.loc 1 323 0
	movi.n	a2, 0
	.loc 1 325 0
	mov.n	a5, a2
.LVL28:
.L13:
	.loc 1 327 0
	l8ui	a8, sp, 1
	ssl	a2
	sll	a8, a8
	or	a5, a5, a8
.LVL29:
	.loc 1 328 0
	addi.n	a2, a2, 8
.LVL30:
	.loc 1 329 0
	bnei	a2, 32, .L14
	.loc 1 330 0
	l32i.n	a9, sp, 16
	add.n	a9, a9, a2
	s32i.n	a9, sp, 16
.LVL31:
	.loc 1 332 0
	l32r	a2, .LC17
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 36
	l32i.n	a8, a2, 28
.LVL32:
	addi	a2, a6, 32
	addx4	a2, a2, a8
	memw
	s32i.n	a5, a2, 0
.LVL33:
	addi.n	a6, a6, 1
.LVL34:
	.loc 1 331 0
	movi.n	a2, 0
	.loc 1 333 0
	mov.n	a5, a2
.LVL35:
.L14:
	.loc 1 335 0
	l8ui	a8, sp, 2
	ssl	a2
	sll	a8, a8
	or	a5, a5, a8
.LVL36:
	.loc 1 336 0
	addi.n	a2, a2, 8
.LVL37:
	.loc 1 337 0
	bnei	a2, 32, .L15
	.loc 1 338 0
	l32i.n	a8, sp, 16
	add.n	a8, a8, a2
	s32i.n	a8, sp, 16
.LVL38:
	.loc 1 340 0
	l32r	a2, .LC17
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 36
	l32i.n	a8, a2, 28
.LVL39:
	addi	a2, a6, 32
	addx4	a2, a2, a8
	memw
	s32i.n	a5, a2, 0
.LVL40:
	addi.n	a6, a6, 1
.LVL41:
	.loc 1 339 0
	movi.n	a2, 0
	.loc 1 341 0
	mov.n	a5, a2
.LVL42:
.L15:
	.loc 1 343 0
	addi.n	a3, a3, -1
.LVL43:
	.loc 1 344 0
	bnez.n	a4, .L10
	.loc 1 344 0 is_stmt 0 discriminator 1
	addi.n	a7, a7, 1
.LVL44:
.L10:
	.loc 1 312 0 is_stmt 1
	bnez.n	a3, .L17
	.loc 1 346 0
	l32i.n	a2, sp, 16
.LVL45:
	beqz.n	a2, .L18
.LVL46:
.L19:
	.loc 1 347 0 discriminator 1
	l32r	a2, .LC17
	l32i.n	a4, a2, 0
	l32i.n	a2, a4, 36
	l32i.n	a3, a2, 28
	memw
	l32i.n	a2, a3, 0
	bbsi	a2, 18, .L19
	.loc 1 348 0
	l32i.n	a5, sp, 16
.LVL47:
	addi.n	a2, a5, -1
	memw
	l32i.n	a6, a3, 40
.LVL48:
	l32r	a5, .LC15
	and	a2, a2, a5
	l32r	a5, .LC16
	and	a5, a6, a5
	or	a2, a5, a2
	mov.n	a6, a2
	memw
	s32i.n	a2, a3, 40
.LVL49:
	.loc 1 349 0
	l32i.n	a2, a4, 36
	l32i.n	a3, a2, 28
	memw
	l32i.n	a4, a3, 0
	l32r	a2, .LC18
	or	a2, a4, a2
	mov.n	a4, a2
	memw
	s32i.n	a2, a3, 0
.L18:
.LBB3:
	.loc 1 351 0
#APP
# 351 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/tft/tftspi.c" 1
	rsil	a2, 0

# 0 "" 2
.LVL50:
#NO_APP
	retw.n
.LBE3:
.LFE27:
	.size	_direct_send, .-_direct_send
	.literal_position
	.literal .LC19, ts_spi
	.align	4
	.type	stmpe610_read_word, @function
stmpe610_read_word:
.LFB36:
	.loc 1 581 0
.LVL51:
	entry	sp, 32
.LCFI3:
	.loc 1 582 0
	l32r	a3, .LC19
	movi.n	a11, 0
	l32i.n	a10, a3, 0
	call8	spi_lobo_device_select
.LVL52:
	.loc 1 584 0
	l32i.n	a10, a3, 0
	l32i.n	a8, a10, 36
	l32i.n	a11, a8, 28
	addi.n	a8, a2, 1
	slli	a12, a8, 8
	movi	a9, 0x80
	or	a8, a8, a9
	or	a8, a12, a8
	slli	a8, a8, 16
	slli	a9, a2, 8
	or	a8, a8, a9
	movi	a9, -0x80
	or	a2, a2, a9
.LVL53:
	extui	a2, a2, 0, 8
	or	a8, a8, a2
	memw
	s32i	a8, a11, 128
	.loc 1 585 0
	movi.n	a12, 0x20
	mov.n	a11, a12
	call8	_spi_transfer_start
.LVL54:
	.loc 1 586 0
	l32i.n	a10, a3, 0
	l32i.n	a2, a10, 36
	l32i.n	a8, a2, 28
	memw
	l32i	a2, a8, 128
	extui	a2, a2, 0, 16
	movi	a3, -0x100
	and	a2, a2, a3
.LVL55:
	.loc 1 587 0
	memw
	l32i	a3, a8, 128
	extui	a3, a3, 24, 8
	or	a2, a2, a3
.LVL56:
	.loc 1 589 0
	call8	spi_lobo_device_deselect
.LVL57:
	.loc 1 591 0
	retw.n
.LFE36:
	.size	stmpe610_read_word, .-stmpe610_read_word
	.literal_position
	.literal .LC20, ts_spi
	.align	4
	.type	stmpe610_read_byte, @function
stmpe610_read_byte:
.LFB35:
	.loc 1 569 0
.LVL58:
	entry	sp, 32
.LCFI4:
	.loc 1 570 0
	l32r	a3, .LC20
	movi.n	a11, 0
	l32i.n	a10, a3, 0
	call8	spi_lobo_device_select
.LVL59:
	.loc 1 572 0
	l32i.n	a10, a3, 0
	l32i.n	a8, a10, 36
	l32i.n	a11, a8, 28
	slli	a8, a2, 8
	movi	a9, -0x80
	or	a2, a2, a9
.LVL60:
	extui	a2, a2, 0, 8
	or	a8, a8, a2
	memw
	s32i	a8, a11, 128
	.loc 1 573 0
	movi.n	a12, 0x10
	mov.n	a11, a12
	call8	_spi_transfer_start
.LVL61:
	.loc 1 574 0
	l32i.n	a10, a3, 0
	l32i.n	a2, a10, 36
	l32i.n	a2, a2, 28
	memw
	l32i	a2, a2, 128
	extui	a2, a2, 8, 8
.LVL62:
	.loc 1 576 0
	call8	spi_lobo_device_deselect
.LVL63:
	.loc 1 578 0
	retw.n
.LFE35:
	.size	stmpe610_read_byte, .-stmpe610_read_byte
	.literal_position
	.literal .LC21, ts_spi
	.align	4
	.type	stmpe610_write_reg, @function
stmpe610_write_reg:
.LFB34:
	.loc 1 558 0
.LVL64:
	entry	sp, 32
.LCFI5:
	.loc 1 560 0
	l32r	a4, .LC21
	movi.n	a11, 0
	l32i.n	a10, a4, 0
	call8	spi_lobo_device_select
.LVL65:
	.loc 1 562 0
	l32i.n	a10, a4, 0
	l32i.n	a8, a10, 36
	l32i.n	a8, a8, 28
	slli	a3, a3, 8
.LVL66:
	or	a2, a2, a3
.LVL67:
	memw
	s32i	a2, a8, 128
	.loc 1 563 0
	movi.n	a12, 0
	movi.n	a11, 0x10
	call8	_spi_transfer_start
.LVL68:
	.loc 1 565 0
	l32i.n	a10, a4, 0
	call8	spi_lobo_device_deselect
.LVL69:
	retw.n
.LFE34:
	.size	stmpe610_write_reg, .-stmpe610_write_reg
	.literal_position
	.literal .LC22, disp_spi
	.literal .LC23, -33554433
	.literal .LC24, -16777216
	.literal .LC25, 134217728
	.literal .LC26, -268435457
	.literal .LC27, 262144
	.align	4
	.type	disp_spi_transfer_addrwin, @function
disp_spi_transfer_addrwin:
.LFB23:
	.loc 1 176 0
.LVL70:
	entry	sp, 32
.LCFI6:
.LBB4:
	.loc 1 179 0
#APP
# 179 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/tft/tftspi.c" 1
	rsil	a8, 3

# 0 "" 2
.LVL71:
#NO_APP
.L24:
.LBE4:
	.loc 1 181 0 discriminator 1
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L24
	.loc 1 182 0
	movi.n	a11, 0
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL72:
	.loc 1 184 0
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	l32i.n	a9, a8, 36
	l32i.n	a9, a9, 28
	movi.n	a10, 0x2a
	memw
	s32i	a10, a9, 128
	.loc 1 185 0
	l32i.n	a9, a8, 36
	l32i.n	a10, a9, 28
	memw
	l32i.n	a11, a10, 28
	l32r	a9, .LC23
	and	a9, a11, a9
	memw
	s32i.n	a9, a10, 28
	.loc 1 186 0
	l32i.n	a9, a8, 36
	l32i.n	a12, a9, 28
	memw
	l32i.n	a11, a12, 40
	l32r	a9, .LC24
	and	a11, a11, a9
	movi.n	a10, 7
	or	a10, a11, a10
	memw
	s32i.n	a10, a12, 40
	.loc 1 187 0
	l32i.n	a10, a8, 36
	l32i.n	a11, a10, 28
	memw
	l32i.n	a12, a11, 28
	l32r	a10, .LC25
	or	a10, a12, a10
	memw
	s32i.n	a10, a11, 28
	.loc 1 188 0
	l32i.n	a10, a8, 36
	l32i.n	a10, a10, 28
	memw
	l32i.n	a11, a10, 44
	and	a9, a11, a9
	memw
	s32i.n	a9, a10, 44
	.loc 1 189 0
	l32i.n	a9, a8, 36
	l32i.n	a10, a9, 28
	memw
	l32i.n	a11, a10, 28
	l32r	a9, .LC26
	and	a9, a11, a9
	memw
	s32i.n	a9, a10, 28
	.loc 1 191 0
	l32i.n	a8, a8, 36
	l32i.n	a9, a8, 28
	memw
	l32i.n	a10, a9, 0
	l32r	a8, .LC27
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
	.loc 1 193 0
	srli	a8, a2, 8
.LVL73:
	.loc 1 194 0
	slli	a2, a2, 8
.LVL74:
	extui	a2, a2, 0, 16
	or	a2, a8, a2
.LVL75:
	.loc 1 195 0
	srli	a8, a3, 8
	slli	a8, a8, 16
	or	a2, a2, a8
.LVL76:
	.loc 1 196 0
	slli	a3, a3, 24
.LVL77:
	or	a3, a2, a3
.LVL78:
.L25:
	.loc 1 198 0 discriminator 1
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L25
	.loc 1 199 0
	movi.n	a11, 1
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL79:
	.loc 1 200 0
	l32r	a2, .LC22
	l32i.n	a8, a2, 0
	l32i.n	a2, a8, 36
	l32i.n	a2, a2, 28
	memw
	s32i	a3, a2, 128
	.loc 1 201 0
	l32i.n	a2, a8, 36
	l32i.n	a9, a2, 28
	memw
	l32i.n	a3, a9, 40
.LVL80:
	l32r	a2, .LC24
	and	a3, a3, a2
	movi.n	a2, 0x1f
	or	a2, a3, a2
	memw
	s32i.n	a2, a9, 40
	.loc 1 202 0
	l32i.n	a2, a8, 36
	l32i.n	a3, a2, 28
	memw
	l32i.n	a8, a3, 0
	l32r	a2, .LC27
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
.L26:
	.loc 1 204 0 discriminator 1
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L26
	.loc 1 205 0
	movi.n	a11, 0
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL81:
	.loc 1 206 0
	l32r	a2, .LC22
	l32i.n	a3, a2, 0
	l32i.n	a2, a3, 36
	l32i.n	a2, a2, 28
	movi.n	a8, 0x2b
	memw
	s32i	a8, a2, 128
	.loc 1 207 0
	l32i.n	a2, a3, 36
	l32i.n	a9, a2, 28
	memw
	l32i.n	a8, a9, 40
	l32r	a2, .LC24
	and	a8, a8, a2
	movi.n	a2, 7
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 40
	.loc 1 208 0
	l32i.n	a2, a3, 36
	l32i.n	a3, a2, 28
	memw
	l32i.n	a8, a3, 0
	l32r	a2, .LC27
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
	.loc 1 210 0
	srli	a2, a4, 8
.LVL82:
	.loc 1 211 0
	slli	a4, a4, 8
.LVL83:
	extui	a4, a4, 0, 16
	or	a4, a2, a4
.LVL84:
	.loc 1 212 0
	srli	a2, a5, 8
	slli	a2, a2, 16
	or	a4, a4, a2
.LVL85:
	.loc 1 213 0
	slli	a5, a5, 24
.LVL86:
	or	a5, a4, a5
.LVL87:
.L27:
	.loc 1 215 0 discriminator 1
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L27
	.loc 1 216 0
	movi.n	a11, 1
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL88:
	.loc 1 218 0
	l32r	a2, .LC22
	l32i.n	a3, a2, 0
	l32i.n	a2, a3, 36
	l32i.n	a2, a2, 28
	memw
	s32i	a5, a2, 128
	.loc 1 219 0
	l32i.n	a2, a3, 36
	l32i.n	a5, a2, 28
.LVL89:
	memw
	l32i.n	a4, a5, 40
	l32r	a2, .LC24
	and	a4, a4, a2
	movi.n	a2, 0x1f
	or	a2, a4, a2
	memw
	s32i.n	a2, a5, 40
	.loc 1 220 0
	l32i.n	a2, a3, 36
	l32i.n	a3, a2, 28
	memw
	l32i.n	a4, a3, 0
	l32r	a2, .LC27
	or	a2, a4, a2
	mov.n	a4, a2
	memw
	s32i.n	a2, a3, 0
.L28:
	.loc 1 221 0 discriminator 1
	l32r	a8, .LC22
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L28
.LBB5:
	.loc 1 222 0
#APP
# 222 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/tft/tftspi.c" 1
	rsil	a2, 0

# 0 "" 2
.LVL90:
#NO_APP
	retw.n
.LBE5:
.LFE23:
	.size	disp_spi_transfer_addrwin, .-disp_spi_transfer_addrwin
	.literal_position
	.literal .LC28, disp_spi
	.literal .LC29, -33554433
	.literal .LC30, 1048575
	.literal .LC31, -1048576
	.literal .LC32, 536870912
	.literal .LC33, 16777215
	.literal .LC34, -16777216
	.literal .LC35, _dma_sending
	.literal .LC36, 262144
	.align	4
	.type	_dma_send, @function
_dma_send:
.LFB26:
	.loc 1 283 0
.LVL91:
	entry	sp, 32
.LCFI7:
	.loc 1 285 0
	l32r	a4, .LC28
	l32i.n	a8, a4, 0
	l32i.n	a8, a8, 36
	l32i.n	a10, a8, 48
	call8	spi_lobo_dmaworkaround_transfer_active
.LVL92:
	.loc 1 286 0
	l32i.n	a8, a4, 0
	l32i.n	a8, a8, 36
	movi.n	a13, 0
	mov.n	a12, a2
	mov.n	a11, a3
	l32i.n	a10, a8, 36
	call8	spi_lobo_setup_dma_desc_links
.LVL93:
	.loc 1 287 0
	l32i.n	a8, a4, 0
	l32i.n	a4, a8, 36
	l32i.n	a4, a4, 28
	memw
	l32i.n	a10, a4, 28
	l32r	a11, .LC29
	and	a9, a10, a11
	memw
	s32i.n	a9, a4, 28
	.loc 1 288 0
	l32i.n	a9, a8, 36
	l32i.n	a4, a9, 28
	l32i.n	a9, a9, 36
	memw
	l32i	a12, a4, 260
	l32r	a10, .LC30
	and	a10, a9, a10
	l32r	a9, .LC31
	and	a9, a12, a9
	or	a9, a9, a10
	memw
	s32i	a9, a4, 260
	.loc 1 289 0
	l32i.n	a4, a8, 36
	l32i.n	a4, a4, 28
	memw
	l32i	a10, a4, 260
	l32r	a9, .LC32
	or	a9, a10, a9
	memw
	s32i	a9, a4, 260
	.loc 1 290 0
	l32i.n	a4, a8, 36
	l32i.n	a4, a4, 28
	memw
	l32i.n	a10, a4, 28
	and	a9, a10, a11
	memw
	s32i.n	a9, a4, 28
	.loc 1 292 0
	l32i.n	a4, a8, 36
	l32i.n	a4, a4, 28
	slli	a9, a3, 3
	addi.n	a9, a9, -1
	memw
	l32i.n	a11, a4, 40
	l32r	a10, .LC33
	and	a10, a9, a10
	l32r	a3, .LC34
.LVL94:
	and	a9, a11, a3
	or	a9, a9, a10
	memw
	s32i.n	a9, a4, 40
	.loc 1 294 0
	movi.n	a4, 1
	l32r	a3, .LC35
	s8i	a4, a3, 0
	.loc 1 296 0
	l32i.n	a3, a8, 36
	l32i.n	a4, a3, 28
	memw
	l32i.n	a8, a4, 0
	l32r	a3, .LC36
	or	a3, a8, a3
	memw
	s32i.n	a3, a4, 0
	retw.n
.LFE26:
	.size	_dma_send, .-_dma_send
	.literal_position
	.literal .LC37, disp_spi
	.literal .LC38, trans_cline
	.literal .LC39, _dma_sending
	.literal .LC40, -536870913
	.literal .LC41, 4096
	.align	4
	.global	wait_trans_finish
	.type	wait_trans_finish, @function
wait_trans_finish:
.LFB17:
	.loc 1 56 0
.LVL95:
	entry	sp, 32
.LCFI8:
	extui	a2, a2, 0, 8
.L31:
	.loc 1 58 0 discriminator 1
	l32r	a8, .LC37
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L31
	.loc 1 59 0
	beqz.n	a2, .L32
	.loc 1 59 0 is_stmt 0 discriminator 1
	l32r	a2, .LC38
.LVL96:
	l32i.n	a10, a2, 0
	beqz.n	a10, .L32
	.loc 1 60 0 is_stmt 1
	call8	free
.LVL97:
	.loc 1 61 0
	movi.n	a8, 0
	l32r	a2, .LC38
	s32i.n	a8, a2, 0
.L32:
	.loc 1 63 0
	l32r	a8, .LC39
	l8ui	a8, a8, 0
	beqz.n	a8, .L33
	.loc 1 65 0
	l32r	a2, .LC37
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 36
	l32i.n	a10, a2, 48
	beqz.n	a10, .L34
	.loc 1 65 0 is_stmt 0 discriminator 1
	call8	spi_lobo_dmaworkaround_idle
.LVL98:
.L34:
	.loc 1 68 0 is_stmt 1
	l32r	a2, .LC37
	l32i.n	a8, a2, 0
	l32i.n	a2, a8, 36
	l32i.n	a2, a2, 28
	memw
	l32i	a10, a2, 256
	movi.n	a9, 0x3c
	or	a9, a10, a9
	memw
	s32i	a9, a2, 256
	.loc 1 69 0
	l32i.n	a2, a8, 36
	l32i.n	a2, a2, 28
	memw
	l32i	a11, a2, 260
	l32r	a9, .LC40
	and	a10, a11, a9
	memw
	s32i	a10, a2, 260
	.loc 1 70 0
	l32i.n	a2, a8, 36
	l32i.n	a2, a2, 28
	memw
	l32i	a10, a2, 264
	and	a9, a10, a9
	memw
	s32i	a9, a2, 264
	.loc 1 71 0
	l32i.n	a2, a8, 36
	l32i.n	a2, a2, 28
	memw
	l32i	a10, a2, 256
	movi	a9, -0x3d
	and	a9, a10, a9
	memw
	s32i	a9, a2, 256
	.loc 1 72 0
	l32i.n	a2, a8, 36
	l32i.n	a2, a2, 28
	memw
	l32i	a9, a2, 256
	l32r	a8, .LC41
	or	a8, a9, a8
	memw
	s32i	a8, a2, 256
	.loc 1 73 0
	movi.n	a8, 0
	l32r	a2, .LC39
	s8i	a8, a2, 0
.L33:
	.loc 1 76 0
	movi.n	a2, 0
	retw.n
.LFE17:
	.size	wait_trans_finish, .-wait_trans_finish
	.literal_position
	.literal .LC42, disp_spi
	.literal .LC43, -16777216
	.literal .LC44, 262144
	.literal .LC45, gray_scale
	.literal .LC47, _width
	.literal .LC48, trans_cline
	.align	4
	.type	_TFT_pushColorRep, @function
_TFT_pushColorRep:
.LFB28:
	.loc 1 362 0
.LVL99:
	entry	sp, 48
.LCFI9:
	.loc 1 363 0
	beqz.n	a3, .L35
	.loc 1 364 0
	l32r	a6, .LC42
	l32i.n	a6, a6, 0
	l32i.n	a6, a6, 20
	bbci	a6, 4, .L35
	.loc 1 367 0
	movi.n	a11, 0
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL100:
	.loc 1 368 0
	l32r	a6, .LC42
	l32i.n	a7, a6, 0
	l32i.n	a6, a7, 36
	l32i.n	a6, a6, 28
	movi.n	a8, 0x2c
	memw
	s32i	a8, a6, 128
	.loc 1 369 0
	l32i.n	a6, a7, 36
	l32i.n	a9, a6, 28
	memw
	l32i.n	a8, a9, 40
	l32r	a6, .LC43
	and	a8, a8, a6
	movi.n	a6, 7
	or	a6, a8, a6
	memw
	s32i.n	a6, a9, 40
	.loc 1 370 0
	l32i.n	a6, a7, 36
	l32i.n	a7, a6, 28
	memw
	l32i.n	a8, a7, 0
	l32r	a6, .LC44
	or	a6, a8, a6
	memw
	s32i.n	a6, a7, 0
.L37:
	.loc 1 371 0 discriminator 1
	l32r	a8, .LC42
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L37
	.loc 1 373 0
	movi.n	a11, 1
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL101:
	.loc 1 375 0
	addx2	a7, a3, a3
	slli	a6, a7, 3
	movi	a7, 0x200
	bltu	a7, a6, .L38
	.loc 1 377 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_direct_send
.LVL102:
	j	.L39
.L38:
	.loc 1 380 0
	bnez.n	a4, .L40
	.loc 1 383 0
	l32r	a4, .LC45
.LVL103:
	l8ui	a4, a4, 0
	bnez.n	a4, .L52
.LBB6:
	j	.L42
.LVL104:
.L43:
	.loc 1 385 0 discriminator 3
	addx2	a4, a6, a6
	add.n	a4, a2, a4
	l8ui	a8, a4, 0
	l8ui	a7, a4, 1
	slli	a7, a7, 8
	or	a7, a7, a8
	l8ui	a10, a4, 2
	slli	a10, a10, 16
	or	a10, a10, a7
	call8	color2gs
.LVL105:
	s8i	a10, a4, 0
	extui	a7, a10, 8, 8
	s8i	a7, a4, 1
	extui	a10, a10, 16, 8
	s8i	a10, a4, 2
	.loc 1 384 0 discriminator 3
	addi.n	a6, a6, 1
.LVL106:
	j	.L41
.LVL107:
.L52:
.LBE6:
	movi.n	a6, 0
.L41:
.LVL108:
.LBB7:
	.loc 1 384 0 is_stmt 0 discriminator 1
	bltu	a6, a3, .L43
.LVL109:
.L42:
.LBE7:
	.loc 1 389 0 is_stmt 1
	addx2	a11, a3, a3
	mov.n	a10, a2
	call8	_dma_send
.LVL110:
	j	.L39
.LVL111:
.L40:
.LBB8:
	.loc 1 407 0
	l32r	a4, .LC47
.LVL112:
	l32i.n	a4, a4, 0
	slli	a4, a4, 1
	minu	a4, a3, a4
.LVL113:
	.loc 1 408 0
	addx2	a6, a4, a4
.LVL114:
	.loc 1 411 0
	movi.n	a11, 8
	mov.n	a10, a6
	call8	heap_caps_malloc
.LVL115:
	mov.n	a7, a10
	l32r	a8, .LC48
	s32i.n	a10, a8, 0
	.loc 1 412 0
	beqz.n	a10, .L35
	.loc 1 415 0
	l32r	a8, .LC45
	l8ui	a8, a8, 0
	beqz.n	a8, .L45
	.loc 1 415 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 0
	l8ui	a9, a2, 1
	slli	a9, a9, 8
	or	a8, a9, a8
	l8ui	a10, a2, 2
	slli	a10, a10, 16
	or	a10, a10, a8
	call8	color2gs
.LVL116:
	s8i	a10, sp, 0
	extui	a2, a10, 8, 8
.LVL117:
	s8i	a2, sp, 1
	extui	a10, a10, 16, 8
	s8i	a10, sp, 2
.L47:
.LBE8:
	movi.n	a8, 0
	j	.L46
.LVL118:
.L45:
.LBB10:
	.loc 1 416 0 is_stmt 1
	l8ui	a9, a2, 0
	l8ui	a8, a2, 1
	s8i	a9, sp, 0
	l8ui	a2, a2, 2
.LVL119:
	s8i	a8, sp, 1
	s8i	a2, sp, 2
	j	.L47
.LVL120:
.L48:
.LBB9:
	.loc 1 420 0 discriminator 3
	addx2	a2, a8, a8
	add.n	a2, a7, a2
	l8ui	a9, sp, 0
	s8i	a9, a2, 0
	l8ui	a9, sp, 1
	s8i	a9, a2, 1
	l8ui	a9, sp, 2
	s8i	a9, a2, 2
	.loc 1 419 0 discriminator 3
	addi.n	a8, a8, 1
.LVL121:
.L46:
	.loc 1 419 0 is_stmt 0 discriminator 1
	bltu	a8, a4, .L48
.LVL122:
.LBE9:
	.loc 1 425 0 is_stmt 1
	j	.L49
.LVL123:
.L51:
	.loc 1 426 0
	movi.n	a10, 0
	call8	wait_trans_finish
.LVL124:
	.loc 1 427 0
	l32r	a2, .LC48
	l32i.n	a10, a2, 0
	mov.n	a2, a3
	bltu	a4, a3, .L53
.LVL125:
	.loc 1 427 0 is_stmt 0 discriminator 1
	addx2	a11, a3, a3
	j	.L50
.L53:
	.loc 1 427 0
	mov.n	a11, a6
.L50:
	.loc 1 427 0 discriminator 4
	call8	_dma_send
.LVL126:
	.loc 1 428 0 is_stmt 1 discriminator 4
	sub	a3, a2, a4
.LVL127:
.L49:
	.loc 1 425 0
	bgei	a3, 1, .L51
.LVL128:
.L39:
.LBE10:
	.loc 1 432 0
	beqz.n	a5, .L35
	.loc 1 432 0 is_stmt 0 discriminator 1
	movi.n	a10, 1
	call8	wait_trans_finish
.LVL129:
.L35:
	retw.n
.LFE28:
	.size	_TFT_pushColorRep, .-_TFT_pushColorRep
	.literal_position
	.literal .LC49, disp_spi
	.align	4
	.global	disp_select
	.type	disp_select, @function
disp_select:
.LFB18:
	.loc 1 80 0 is_stmt 1
	entry	sp, 32
.LCFI10:
	.loc 1 81 0
	movi.n	a10, 1
	call8	wait_trans_finish
.LVL130:
	.loc 1 82 0
	movi.n	a11, 0
	l32r	a8, .LC49
	l32i.n	a10, a8, 0
	call8	spi_lobo_device_select
.LVL131:
	.loc 1 83 0
	mov.n	a2, a10
	retw.n
.LFE18:
	.size	disp_select, .-disp_select
	.literal_position
	.literal .LC50, disp_spi
	.align	4
	.global	disp_deselect
	.type	disp_deselect, @function
disp_deselect:
.LFB19:
	.loc 1 87 0
	entry	sp, 32
.LCFI11:
	.loc 1 88 0
	movi.n	a10, 1
	call8	wait_trans_finish
.LVL132:
	.loc 1 89 0
	l32r	a8, .LC50
	l32i.n	a10, a8, 0
	call8	spi_lobo_device_deselect
.LVL133:
	.loc 1 90 0
	mov.n	a2, a10
	retw.n
.LFE19:
	.size	disp_deselect, .-disp_deselect
	.literal_position
	.literal .LC51, disp_spi
	.align	4
	.global	disp_spi_transfer_cmd
	.type	disp_spi_transfer_cmd, @function
disp_spi_transfer_cmd:
.LFB21:
	.loc 1 114 0
.LVL134:
	entry	sp, 32
.LCFI12:
	extui	a2, a2, 0, 8
.L57:
	.loc 1 116 0 discriminator 1
	l32r	a8, .LC51
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L57
	.loc 1 119 0
	movi.n	a11, 0
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL135:
	.loc 1 121 0
	l32r	a8, .LC51
	l32i.n	a10, a8, 0
	l32i.n	a8, a10, 36
	l32i.n	a8, a8, 28
	sext	a2, a2, 7
.LVL136:
	memw
	s32i	a2, a8, 128
	.loc 1 122 0
	movi.n	a12, 0
	movi.n	a11, 8
	call8	_spi_transfer_start
.LVL137:
	retw.n
.LFE21:
	.size	disp_spi_transfer_cmd, .-disp_spi_transfer_cmd
	.literal_position
	.literal .LC52, disp_spi
	.align	4
	.global	disp_spi_transfer_cmd_data
	.type	disp_spi_transfer_cmd_data, @function
disp_spi_transfer_cmd_data:
.LFB22:
	.loc 1 127 0
.LVL138:
	entry	sp, 32
.LCFI13:
	extui	a2, a2, 0, 8
.L59:
	.loc 1 129 0 discriminator 1
	l32r	a8, .LC52
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L59
	.loc 1 132 0
	movi.n	a11, 0
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL139:
	.loc 1 134 0
	l32r	a5, .LC52
	l32i.n	a10, a5, 0
	l32i.n	a5, a10, 36
	l32i.n	a5, a5, 28
	sext	a2, a2, 7
.LVL140:
	memw
	s32i	a2, a5, 128
	.loc 1 135 0
	movi.n	a12, 0
	movi.n	a11, 8
	call8	_spi_transfer_start
.LVL141:
	.loc 1 137 0
	movi.n	a2, 1
	movi.n	a8, 0
	mov.n	a5, a8
	moveqz	a5, a2, a4
	movnez	a2, a8, a3
	or	a2, a2, a5
	bne	a2, a8, .L58
	.loc 1 140 0
	movi.n	a11, 1
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL142:
	.loc 1 145 0
	movi.n	a5, 0
	.loc 1 144 0
	mov.n	a2, a5
	.loc 1 143 0
	mov.n	a11, a5
	.loc 1 142 0
	mov.n	a8, a5
	mov.n	a10, a5
	.loc 1 146 0
	j	.L61
.LVL143:
.L66:
	.loc 1 148 0
	add.n	a9, a3, a2
	l8ui	a9, a9, 0
	ssl	a8
	sll	a9, a9
	or	a5, a5, a9
.LVL144:
	.loc 1 149 0
	addi.n	a2, a2, 1
.LVL145:
	.loc 1 150 0
	addi.n	a11, a11, 8
.LVL146:
	.loc 1 151 0
	addi.n	a8, a8, 8
.LVL147:
	extui	a8, a8, 0, 8
.LVL148:
	.loc 1 152 0
	bne	a4, a2, .L62
	.loc 1 153 0
	l32r	a2, .LC52
.LVL149:
	l32i.n	a2, a2, 0
	l32i.n	a2, a2, 36
	l32i.n	a2, a2, 28
	addi	a10, a10, 32
.LVL150:
	addx4	a10, a10, a2
.LVL151:
	memw
	s32i.n	a5, a10, 0
	.loc 1 154 0
	j	.L63
.LVL152:
.L62:
	.loc 1 156 0
	bnei	a8, 32, .L64
	.loc 1 157 0
	l32r	a8, .LC52
.LVL153:
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a9, a8, 28
	addi	a8, a10, 32
	addx4	a8, a8, a9
	memw
	s32i.n	a5, a8, 0
	.loc 1 158 0
	addi.n	a10, a10, 1
.LVL154:
	extui	a10, a10, 0, 8
.LVL155:
	.loc 1 160 0
	movi.n	a5, 0
	.loc 1 159 0
	mov.n	a8, a5
.LVL156:
.L64:
	.loc 1 162 0
	bnei	a10, 16, .L61
	.loc 1 164 0
	movi.n	a12, 0
	l32r	a8, .LC52
.LVL157:
	l32i.n	a10, a8, 0
.LVL158:
	call8	_spi_transfer_start
.LVL159:
	.loc 1 166 0
	movi.n	a11, 0
	.loc 1 168 0
	mov.n	a8, a11
	.loc 1 167 0
	mov.n	a10, a11
.LVL160:
.L61:
	.loc 1 146 0
	bltu	a2, a4, .L66
.LVL161:
.L63:
	.loc 1 171 0
	beqz.n	a11, .L58
	.loc 1 171 0 is_stmt 0 discriminator 1
	movi.n	a12, 0
	l32r	a2, .LC52
	l32i.n	a10, a2, 0
	call8	_spi_transfer_start
.LVL162:
.L58:
	retw.n
.LFE22:
	.size	disp_spi_transfer_cmd_data, .-disp_spi_transfer_cmd_data
	.section	.text.commandList,"ax",@progbits
	.literal_position
	.literal .LC53, -858993459
	.align	4
	.type	commandList, @function
commandList:
.LFB41:
	.loc 1 742 0 is_stmt 1
.LVL163:
	entry	sp, 32
.LCFI14:
	.loc 1 746 0
	addi.n	a12, a3, 1
.LVL164:
	l8ui	a2, a3, 0
.LVL165:
	.loc 1 747 0
	j	.L68
.LVL166:
.L71:
	.loc 1 748 0
	l8ui	a10, a12, 0
.LVL167:
	.loc 1 749 0
	addi.n	a4, a12, 2
.LVL168:
	l8ui	a3, a12, 1
.LVL169:
	.loc 1 751 0
	extui	a2, a3, 0, 7
.LVL170:
	.loc 1 753 0
	mov.n	a12, a2
.LVL171:
	mov.n	a11, a4
	sext	a10, a10, 7
	call8	disp_spi_transfer_cmd_data
.LVL172:
	.loc 1 755 0
	add.n	a12, a4, a2
.LVL173:
	.loc 1 757 0
	movi	a2, -0x80
.LVL174:
	bnone	a3, a2, .L69
	.loc 1 758 0
	addi.n	a3, a12, 1
.LVL175:
	l8ui	a10, a12, 0
.LVL176:
	.loc 1 759 0
	movi	a2, 0xff
	bne	a10, a2, .L70
	movi	a10, 0x1f4
.LVL177:
.L70:
	.loc 1 760 0
	l32r	a2, .LC53
	muluh	a10, a10, a2
.LVL178:
	srli	a10, a10, 3
	call8	vTaskDelay
.LVL179:
	.loc 1 758 0
	mov.n	a12, a3
.LVL180:
.L69:
	mov.n	a2, a5
.LVL181:
.L68:
	.loc 1 747 0
	addi.n	a3, a2, -1
	extui	a5, a3, 0, 8
.LVL182:
	bnez.n	a2, .L71
	.loc 1 763 0
	retw.n
.LFE41:
	.size	commandList, .-commandList
	.section	.iram1
	.literal_position
	.literal .LC54, disp_spi
	.literal .LC55, gray_scale
	.literal .LC56, -16777216
	.literal .LC57, 262144
	.align	4
	.global	drawPixel
	.type	drawPixel, @function
drawPixel:
.LFB25:
	.loc 1 243 0
.LVL183:
	entry	sp, 64
.LCFI15:
	s32i.n	a4, sp, 16
	sext	a2, a2, 15
	sext	a3, a3, 15
	extui	a5, a5, 0, 8
	.loc 1 244 0
	l32r	a8, .LC54
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 20
	bbci	a8, 4, .L73
	.loc 1 246 0
	beqz.n	a5, .L75
	.loc 1 247 0
	call8	disp_select
.LVL184:
	bnez.n	a10, .L73
	j	.L76
.L75:
	.loc 1 249 0
	movi.n	a10, 1
	call8	wait_trans_finish
.LVL185:
.L76:
	.loc 1 252 0
	l16ui	a8, sp, 16
	s16i	a8, sp, 0
	l8ui	a8, sp, 18
	s8i	a8, sp, 2
	.loc 1 253 0
	l32r	a8, .LC55
	l8ui	a8, a8, 0
	beqz.n	a8, .L77
	.loc 1 253 0 is_stmt 0 discriminator 1
	l32i.n	a10, sp, 16
	call8	color2gs
.LVL186:
	s8i	a10, sp, 0
	extui	a8, a10, 8, 8
	s8i	a8, sp, 1
	extui	a10, a10, 16, 8
	s8i	a10, sp, 2
.L77:
.LBB11:
	.loc 1 255 0 is_stmt 1
#APP
# 255 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/tft/tftspi.c" 1
	rsil	a8, 3

# 0 "" 2
.LVL187:
#NO_APP
.LBE11:
	.loc 1 256 0
	extui	a10, a2, 0, 16
	extui	a12, a3, 0, 16
	addi.n	a13, a12, 1
	addi.n	a11, a10, 1
	extui	a13, a13, 0, 16
	extui	a11, a11, 0, 16
	call8	disp_spi_transfer_addrwin
.LVL188:
	.loc 1 259 0
	movi.n	a11, 0
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL189:
	.loc 1 260 0
	l32r	a2, .LC54
.LVL190:
	l32i.n	a3, a2, 0
.LVL191:
	l32i.n	a2, a3, 36
	l32i.n	a2, a2, 28
	movi.n	a8, 0x2c
	memw
	s32i	a8, a2, 128
	.loc 1 261 0
	l32i.n	a2, a3, 36
	l32i.n	a9, a2, 28
	memw
	l32i.n	a8, a9, 40
	l32r	a2, .LC56
	and	a8, a8, a2
	movi.n	a2, 7
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 40
	.loc 1 262 0
	l32i.n	a2, a3, 36
	l32i.n	a3, a2, 28
	memw
	l32i.n	a8, a3, 0
	l32r	a2, .LC57
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
.L78:
	.loc 1 263 0 discriminator 1
	l32r	a8, .LC54
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L78
	.loc 1 265 0
	l8ui	a3, sp, 0
.LVL192:
	.loc 1 266 0
	l8ui	a2, sp, 1
	slli	a2, a2, 8
	or	a3, a3, a2
.LVL193:
	.loc 1 267 0
	l8ui	a2, sp, 2
	slli	a2, a2, 16
	or	a2, a3, a2
.LVL194:
	.loc 1 270 0
	movi.n	a11, 1
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL195:
	.loc 1 272 0
	l32r	a3, .LC54
	l32i.n	a3, a3, 0
	l32i.n	a8, a3, 36
	l32i.n	a8, a8, 28
	memw
	s32i	a2, a8, 128
	.loc 1 273 0
	l32i.n	a2, a3, 36
.LVL196:
	l32i.n	a9, a2, 28
	memw
	l32i.n	a8, a9, 40
.LVL197:
	l32r	a2, .LC56
	and	a8, a8, a2
	movi.n	a2, 0x17
	or	a2, a8, a2
	memw
	s32i.n	a2, a9, 40
.LVL198:
	.loc 1 274 0
	l32i.n	a2, a3, 36
	l32i.n	a3, a2, 28
	memw
	l32i.n	a8, a3, 0
	l32r	a2, .LC57
	or	a2, a8, a2
	memw
	s32i.n	a2, a3, 0
.L79:
	.loc 1 275 0 discriminator 1
	l32r	a8, .LC54
	l32i.n	a8, a8, 0
	l32i.n	a8, a8, 36
	l32i.n	a8, a8, 28
	memw
	l32i.n	a8, a8, 0
	bbsi	a8, 18, .L79
.LBB12:
	.loc 1 277 0
#APP
# 277 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/tft/tftspi.c" 1
	rsil	a2, 0

# 0 "" 2
.LVL199:
#NO_APP
.LBE12:
	.loc 1 278 0
	beqz.n	a5, .L73
	.loc 1 278 0 is_stmt 0 discriminator 1
	call8	disp_deselect
.LVL200:
.L73:
	retw.n
.LFE25:
	.size	drawPixel, .-drawPixel
	.align	4
	.global	TFT_pushColorRep
	.type	TFT_pushColorRep, @function
TFT_pushColorRep:
.LFB29:
	.loc 1 438 0 is_stmt 1
.LVL201:
	entry	sp, 48
.LCFI16:
	s32i.n	a6, sp, 0
	.loc 1 439 0
	call8	disp_select
.LVL202:
	bnez.n	a10, .L82
	.loc 1 442 0
	extui	a13, a5, 0, 16
	extui	a12, a3, 0, 16
	extui	a11, a4, 0, 16
	extui	a10, a2, 0, 16
	call8	disp_spi_transfer_addrwin
.LVL203:
	.loc 1 444 0
	movi.n	a13, 1
	mov.n	a12, a13
	mov.n	a11, a7
	mov.n	a10, sp
	call8	_TFT_pushColorRep
.LVL204:
	.loc 1 446 0
	call8	disp_deselect
.LVL205:
.L82:
	retw.n
.LFE29:
	.size	TFT_pushColorRep, .-TFT_pushColorRep
	.align	4
	.global	send_data
	.type	send_data, @function
send_data:
.LFB30:
	.loc 1 453 0
.LVL206:
	entry	sp, 32
.LCFI17:
	.loc 1 455 0
	extui	a13, a5, 0, 16
	extui	a12, a3, 0, 16
	extui	a11, a4, 0, 16
	extui	a10, a2, 0, 16
	call8	disp_spi_transfer_addrwin
.LVL207:
	.loc 1 456 0
	movi.n	a13, 0
	mov.n	a12, a13
	mov.n	a11, a6
	mov.n	a10, a7
	call8	_TFT_pushColorRep
.LVL208:
	retw.n
.LFE30:
	.size	send_data, .-send_data
	.literal_position
	.literal .LC58, disp_spi
	.literal .LC59, max_rdclock
	.align	4
	.global	read_data
	.type	read_data, @function
read_data:
.LFB31:
	.loc 1 464 0
.LVL209:
	entry	sp, 96
.LCFI18:
	l8ui	a8, sp, 96
	s32i.n	a8, sp, 48
.LVL210:
	.loc 1 468 0
	movi.n	a11, 0
	s32i.n	a11, sp, 0
	s32i.n	a11, sp, 4
	s32i.n	a11, sp, 8
	s32i.n	a11, sp, 12
	s32i.n	a11, sp, 16
	s32i.n	a11, sp, 20
	s32i.n	a11, sp, 24
	s32i.n	a11, sp, 28
	s32i.n	a11, sp, 32
	s32i.n	a11, sp, 36
	.loc 1 469 0
	addx2	a12, a6, a6
	mov.n	a10, a7
	call8	memset
.LVL211:
	.loc 1 471 0
	l32i.n	a8, sp, 48
	beqz.n	a8, .L88
	.loc 1 472 0
	call8	disp_deselect
.LVL212:
	bnez.n	a10, .L89
	.loc 1 474 0
	l32r	a8, .LC58
	l32i.n	a10, a8, 0
	call8	spi_lobo_get_speed
.LVL213:
	s32i.n	a10, sp, 52
.LVL214:
	.loc 1 475 0
	l32r	a8, .LC59
	l32i.n	a11, a8, 0
	bgeu	a11, a10, .L86
	.loc 1 475 0 is_stmt 0 discriminator 1
	l32r	a8, .LC58
	l32i.n	a10, a8, 0
.LVL215:
	call8	spi_lobo_set_speed
.LVL216:
	j	.L86
.LVL217:
.L88:
	.loc 1 466 0 is_stmt 1
	movi.n	a8, 0
	s32i.n	a8, sp, 52
.LVL218:
.L86:
	.loc 1 478 0
	call8	disp_select
.LVL219:
	bnez.n	a10, .L90
	.loc 1 481 0
	extui	a13, a5, 0, 16
	extui	a12, a3, 0, 16
	extui	a11, a4, 0, 16
	extui	a10, a2, 0, 16
	call8	disp_spi_transfer_addrwin
.LVL220:
	.loc 1 484 0
	movi.n	a10, 0x2e
	call8	disp_spi_transfer_cmd
.LVL221:
	.loc 1 486 0
	movi.n	a2, 0
.LVL222:
	s32i.n	a2, sp, 16
	.loc 1 487 0
	s32i.n	a2, sp, 28
	.loc 1 488 0
	addx2	a6, a6, a6
.LVL223:
	slli	a2, a6, 3
	mov.n	a6, a2
	addi.n	a2, a2, 8
	s32i.n	a2, sp, 20
	.loc 1 489 0
	s32i.n	a7, sp, 32
	.loc 1 492 0
	mov.n	a11, sp
	l32r	a2, .LC58
	l32i.n	a10, a2, 0
	call8	spi_lobo_transfer_data
.LVL224:
	mov.n	a2, a10
.LVL225:
	.loc 1 494 0
	call8	disp_deselect
.LVL226:
	.loc 1 496 0
	l32i.n	a3, sp, 48
.LVL227:
	beqz.n	a3, .L87
	.loc 1 498 0
	l32r	a3, .LC59
	l32i.n	a3, a3, 0
	l32i.n	a4, sp, 52
.LVL228:
	bgeu	a3, a4, .L87
	.loc 1 498 0 is_stmt 0 discriminator 1
	mov.n	a11, a4
	l32r	a3, .LC58
	l32i.n	a10, a3, 0
	call8	spi_lobo_set_speed
.LVL229:
	retw.n
.LVL230:
.L89:
	.loc 1 472 0 is_stmt 1
	movi.n	a2, -1
.LVL231:
	retw.n
.LVL232:
.L90:
	.loc 1 478 0
	movi.n	a2, -2
.LVL233:
.L87:
	.loc 1 502 0
	retw.n
.LFE31:
	.size	read_data, .-read_data
	.literal_position
	.align	4
	.global	readPixel
	.type	readPixel, @function
readPixel:
.LFB32:
	.loc 1 507 0
.LVL234:
	entry	sp, 64
.LCFI19:
	sext	a10, a2, 15
	sext	a11, a3, 15
	.loc 1 508 0
	movi.n	a8, 0
	s8i	a8, sp, 19
	s8i	a8, sp, 20
	s8i	a8, sp, 21
	s8i	a8, sp, 22
	.loc 1 510 0
	movi.n	a14, 1
	s32i.n	a14, sp, 0
	addi	a15, sp, 19
	add.n	a13, a11, a14
	add.n	a12, a10, a14
	call8	read_data
.LVL235:
	.loc 1 516 0
	l8ui	a9, sp, 20
	l8ui	a8, sp, 21
	slli	a8, a8, 8
	l8ui	a2, sp, 22
.LVL236:
	slli	a2, a2, 16
	or	a8, a9, a8
	.loc 1 517 0
	or	a2, a8, a2
	retw.n
.LFE32:
	.size	readPixel, .-readPixel
	.literal_position
	.literal .LC62, ts_spi
	.align	4
	.global	touch_get_data
	.type	touch_get_data, @function
touch_get_data:
.LFB33:
	.loc 1 523 0
.LVL237:
	entry	sp, 32
.LCFI20:
	extui	a2, a2, 0, 8
	.loc 1 540 0
	l32r	a3, .LC62
	movi.n	a11, 0
	l32i.n	a10, a3, 0
	call8	spi_lobo_device_select
.LVL238:
	.loc 1 542 0
	l32i.n	a10, a3, 0
	l32i.n	a8, a10, 36
	l32i.n	a8, a8, 28
	memw
	s32i	a2, a8, 128
	.loc 1 543 0
	movi.n	a12, 0x18
	mov.n	a11, a12
	call8	_spi_transfer_start
.LVL239:
	.loc 1 544 0
	l32i.n	a10, a3, 0
	l32i.n	a2, a10, 36
.LVL240:
	l32i.n	a2, a2, 28
	memw
	l32i	a2, a2, 128
	srli	a2, a2, 8
.LVL241:
	.loc 1 546 0
	call8	spi_lobo_device_deselect
.LVL242:
	.loc 1 549 0
	extui	a2, a2, 0, 16
.LVL243:
	retw.n
.LFE33:
	.size	touch_get_data, .-touch_get_data
	.section	.text.stmpe610_getID,"ax",@progbits
	.align	4
	.global	stmpe610_getID
	.type	stmpe610_getID, @function
stmpe610_getID:
.LFB37:
	.loc 1 595 0
	entry	sp, 32
.LCFI21:
	.loc 1 596 0
	movi.n	a10, 0
	call8	stmpe610_read_word
.LVL244:
	mov.n	a2, a10
.LVL245:
	.loc 1 597 0
	movi.n	a10, 2
	call8	stmpe610_read_byte
.LVL246:
	.loc 1 598 0
	slli	a2, a2, 8
.LVL247:
	.loc 1 599 0
	or	a2, a10, a2
	retw.n
.LFE37:
	.size	stmpe610_getID, .-stmpe610_getID
	.section	.text.stmpe610_Init,"ax",@progbits
	.align	4
	.global	stmpe610_Init
	.type	stmpe610_Init, @function
stmpe610_Init:
.LFB38:
	.loc 1 603 0
	entry	sp, 32
.LCFI22:
	.loc 1 604 0
	movi.n	a11, 2
	movi.n	a10, 3
	call8	stmpe610_write_reg
.LVL248:
	.loc 1 605 0
	movi.n	a10, 1
	call8	vTaskDelay
.LVL249:
	.loc 1 607 0
	movi.n	a11, 4
	mov.n	a10, a11
	call8	stmpe610_write_reg
.LVL250:
	.loc 1 609 0
	movi.n	a11, 0
	movi.n	a10, 0xa
	call8	stmpe610_write_reg
.LVL251:
	.loc 1 611 0
	movi.n	a11, 0x48
	movi.n	a10, 0x20
	call8	stmpe610_write_reg
.LVL252:
	.loc 1 612 0
	movi.n	a10, 0
	call8	vTaskDelay
.LVL253:
	.loc 1 613 0
	movi.n	a11, 1
	movi.n	a10, 0x21
	call8	stmpe610_write_reg
.LVL254:
	.loc 1 614 0
	movi.n	a11, 0
	movi.n	a10, 0x17
	call8	stmpe610_write_reg
.LVL255:
	.loc 1 615 0
	movi	a11, 0xe3
	movi.n	a10, 0x41
	call8	stmpe610_write_reg
.LVL256:
	.loc 1 616 0
	movi.n	a11, 1
	movi.n	a10, 0x4a
	call8	stmpe610_write_reg
.LVL257:
	.loc 1 617 0
	movi.n	a11, 1
	movi.n	a10, 0x4b
	call8	stmpe610_write_reg
.LVL258:
	.loc 1 618 0
	movi.n	a11, 0
	movi.n	a10, 0x4b
	call8	stmpe610_write_reg
.LVL259:
	.loc 1 619 0
	movi.n	a11, 7
	movi.n	a10, 0x56
	call8	stmpe610_write_reg
.LVL260:
	.loc 1 620 0
	movi.n	a11, 1
	movi.n	a10, 0x58
	call8	stmpe610_write_reg
.LVL261:
	.loc 1 621 0
	movi.n	a11, 0x30
	movi.n	a10, 0x40
	call8	stmpe610_write_reg
.LVL262:
	.loc 1 622 0
	movi.n	a11, 0x31
	movi.n	a10, 0x40
	call8	stmpe610_write_reg
.LVL263:
	.loc 1 623 0
	movi	a11, 0xff
	movi.n	a10, 0xb
	call8	stmpe610_write_reg
.LVL264:
	.loc 1 624 0
	movi.n	a11, 0
	movi.n	a10, 9
	call8	stmpe610_write_reg
.LVL265:
	retw.n
.LFE38:
	.size	stmpe610_Init, .-stmpe610_Init
	.section	.text.stmpe610_get_touch,"ax",@progbits
	.literal_position
	.literal .LC63, 4096
	.align	4
	.global	stmpe610_get_touch
	.type	stmpe610_get_touch, @function
stmpe610_get_touch:
.LFB39:
	.loc 1 629 0
.LVL266:
	entry	sp, 32
.LCFI23:
	.loc 1 630 0
	movi.n	a10, 0x40
	call8	stmpe610_read_byte
.LVL267:
	bbci	a10, 7, .L105
	.loc 1 633 0
	movi.n	a10, 0x4c
	call8	stmpe610_read_byte
.LVL268:
	mov.n	a5, a10
.LVL269:
	.loc 1 634 0
	j	.L99
.L100:
	.loc 1 635 0
	movi.n	a10, 0x40
	call8	stmpe610_read_byte
.LVL270:
	bbci	a10, 7, .L106
	.loc 1 636 0
	movi.n	a10, 0x4c
	call8	stmpe610_read_byte
.LVL271:
	mov.n	a5, a10
.LVL272:
.L99:
	.loc 1 634 0
	bltui	a5, 2, .L100
	j	.L101
.L102:
	.loc 1 639 0
	movi.n	a10, 0x40
	call8	stmpe610_read_byte
.LVL273:
	bbci	a10, 7, .L107
	.loc 1 640 0
	movi.n	a10, 0x4d
	call8	stmpe610_read_word
.LVL274:
	s16i	a10, a2, 0
	.loc 1 641 0
	movi.n	a10, 0x4f
	call8	stmpe610_read_word
.LVL275:
	s16i	a10, a3, 0
	.loc 1 642 0
	movi.n	a10, 0x51
	call8	stmpe610_read_byte
.LVL276:
	s16i	a10, a4, 0
	.loc 1 643 0
	movi.n	a10, 0x4c
	call8	stmpe610_read_byte
.LVL277:
	mov.n	a5, a10
.LVL278:
.L101:
	.loc 1 638 0
	movi	a6, 0x78
	bltu	a6, a5, .L102
	movi.n	a6, 0
	j	.L103
.LVL279:
.L104:
.LBB13:
	.loc 1 646 0 discriminator 3
	movi.n	a10, 0x4d
	call8	stmpe610_read_word
.LVL280:
	s16i	a10, a2, 0
	.loc 1 647 0 discriminator 3
	movi.n	a10, 0x4f
	call8	stmpe610_read_word
.LVL281:
	s16i	a10, a3, 0
	.loc 1 648 0 discriminator 3
	movi.n	a10, 0x51
	call8	stmpe610_read_byte
.LVL282:
	s16i	a10, a4, 0
	.loc 1 645 0 discriminator 3
	addi.n	a6, a6, 1
.LVL283:
	extui	a6, a6, 0, 8
.LVL284:
.L103:
	.loc 1 645 0 is_stmt 0 discriminator 1
	addi.n	a8, a5, -1
	blt	a6, a8, .L104
.LBE13:
	.loc 1 651 0 is_stmt 1
	l16ui	a4, a2, 0
.LVL285:
	l32r	a3, .LC63
.LVL286:
	sub	a3, a3, a4
	s16i	a3, a2, 0
	.loc 1 659 0
	movi.n	a2, 1
.LVL287:
	retw.n
.LVL288:
.L105:
	.loc 1 630 0
	movi.n	a2, 0
.LVL289:
	retw.n
.LVL290:
.L106:
	.loc 1 635 0
	movi.n	a2, 0
.LVL291:
	retw.n
.LVL292:
.L107:
	.loc 1 639 0
	movi.n	a2, 0
.LVL293:
	.loc 1 660 0
	retw.n
.LFE39:
	.size	stmpe610_get_touch, .-stmpe610_get_touch
	.section	.rodata
	.align	4
.LC0:
	.byte	-20
	.byte	-88
	.byte	116
	.section	.text.find_rd_speed,"ax",@progbits
	.literal_position
	.literal .LC64, 2000000
	.literal .LC65, 1000000
	.literal .LC66, gray_scale
	.literal .LC67, disp_spi
	.literal .LC68, _width
	.literal .LC69, .LC0
	.literal .LC70, _height
	.align	4
	.global	find_rd_speed
	.type	find_rd_speed, @function
find_rd_speed:
.LFB40:
	.loc 1 669 0
	entry	sp, 80
.LCFI24:
.LVL294:
	.loc 1 677 0
	l32r	a2, .LC66
	l8ui	a3, a2, 0
	s32i.n	a3, sp, 32
.LVL295:
	.loc 1 679 0
	movi.n	a3, 0
	s8i	a3, a2, 0
	.loc 1 680 0
	l32r	a2, .LC67
	l32i.n	a10, a2, 0
	call8	spi_lobo_get_speed
.LVL296:
	mov.n	a7, a10
.LVL297:
	.loc 1 682 0
	l32r	a2, .LC68
	l32i.n	a10, a2, 0
	addx2	a2, a10, a10
	mov.n	a10, a2
	call8	malloc
.LVL298:
	mov.n	a3, a10
.LVL299:
	.loc 1 683 0
	beqz.n	a10, .L120
	.loc 1 685 0
	addi.n	a10, a2, 1
	call8	malloc
.LVL300:
	mov.n	a6, a10
.LVL301:
	.loc 1 686 0
	beqz.n	a10, .L121
	.loc 1 688 0
	addi.n	a4, a10, 1
.LVL302:
	.loc 1 691 0
	l32r	a2, .LC69
	l8ui	a8, a2, 0
	l8ui	a5, a2, 1
	s8i	a8, sp, 16
	l8ui	a2, a2, 2
	s8i	a5, sp, 17
	s8i	a2, sp, 18
.LVL303:
.LBB14:
	.loc 1 692 0
	movi.n	a5, 0
	j	.L110
.LVL304:
.L111:
	.loc 1 693 0 discriminator 3
	addx2	a2, a5, a5
	add.n	a2, a3, a2
	l8ui	a8, sp, 16
	s8i	a8, a2, 0
	l8ui	a8, sp, 17
	s8i	a8, a2, 1
	l8ui	a8, sp, 18
	s8i	a8, a2, 2
	.loc 1 692 0 discriminator 3
	addi.n	a5, a5, 1
.LVL305:
.L110:
	.loc 1 692 0 is_stmt 0 discriminator 1
	l32r	a2, .LC68
	l32i.n	a2, a2, 0
	blt	a5, a2, .L111
	l32r	a5, .LC64
.LVL306:
	l32r	a2, .LC65
	j	.L112
.LVL307:
.L117:
.LBE14:
.LBB15:
	.loc 1 698 0 is_stmt 1
	mov.n	a11, a5
	l32r	a8, .LC67
	l32i.n	a10, a8, 0
	call8	spi_lobo_set_speed
.LVL308:
	.loc 1 699 0
	beqz.n	a10, .L109
	.loc 1 701 0
	l32r	a8, .LC68
	l32i.n	a12, a8, 0
	addx2	a12, a12, a12
	addi.n	a12, a12, 1
	movi.n	a11, 0
	mov.n	a10, a6
.LVL309:
	call8	memset
.LVL310:
	.loc 1 703 0
	call8	disp_select
.LVL311:
	bnez.n	a10, .L109
	.loc 1 705 0
	l32r	a8, .LC68
	l32i.n	a12, a8, 0
	l32r	a8, .LC70
	l32i.n	a8, a8, 0
	extui	a11, a8, 31, 1
	add.n	a11, a11, a8
	srai	a11, a11, 1
	mov.n	a15, a3
	mov.n	a14, a12
	mov.n	a13, a11
	addi.n	a12, a12, -1
	call8	send_data
.LVL312:
	.loc 1 706 0
	call8	disp_deselect
.LVL313:
	bnez.n	a10, .L109
	.loc 1 709 0
	l32r	a8, .LC68
	l32i.n	a12, a8, 0
	l32r	a8, .LC70
	l32i.n	a8, a8, 0
	extui	a11, a8, 31, 1
	add.n	a11, a11, a8
	srai	a11, a11, 1
	s32i.n	a10, sp, 0
	mov.n	a15, a6
	mov.n	a14, a12
	mov.n	a13, a11
	addi.n	a12, a12, -1
	call8	read_data
.LVL314:
	.loc 1 713 0
	beqz.n	a10, .L122
	j	.L114
.LVL315:
.L116:
.LBB16:
	.loc 1 715 0
	addx2	a8, a9, a9
	add.n	a12, a3, a8
	l8ui	a13, a12, 0
	add.n	a8, a4, a8
	l8ui	a11, a8, 0
	xor	a11, a13, a11
	movi.n	a13, -4
	bany	a11, a13, .L123
	.loc 1 716 0
	l8ui	a13, a12, 1
	l8ui	a11, a8, 1
	xor	a11, a13, a11
	movi.n	a13, -4
	bany	a11, a13, .L124
	.loc 1 717 0
	l8ui	a11, a12, 2
	l8ui	a8, a8, 2
	xor	a8, a11, a8
	mov.n	a11, a13
	bany	a8, a11, .L125
	j	.L115
.L123:
	.loc 1 715 0
	movi.n	a10, 1
.LVL316:
	j	.L115
.LVL317:
.L124:
	.loc 1 716 0
	movi.n	a10, 1
.LVL318:
	j	.L115
.LVL319:
.L125:
	.loc 1 717 0
	movi.n	a10, 1
.LVL320:
.L115:
	.loc 1 718 0
	bnez.n	a10, .L114
	.loc 1 714 0 discriminator 2
	addi.n	a9, a9, 1
.LVL321:
	j	.L113
.LVL322:
.L122:
.LBE16:
	movi.n	a9, 0
.LVL323:
.L113:
.LBB17:
	.loc 1 714 0 is_stmt 0 discriminator 1
	l32r	a8, .LC68
	l32i.n	a8, a8, 0
	blt	a9, a8, .L116
.LVL324:
.L114:
.LBE17:
	.loc 1 723 0 is_stmt 1
	bnez.n	a10, .L109
.LVL325:
	.loc 1 724 0 discriminator 2
	mov.n	a2, a5
	.loc 1 697 0 discriminator 2
	l32r	a8, .LC65
	add.n	a5, a5, a8
.LVL326:
.L112:
	.loc 1 697 0 is_stmt 0 discriminator 1
	bgeu	a7, a5, .L117
	j	.L109
.LVL327:
.L120:
.LBE15:
	.loc 1 676 0 is_stmt 1
	movi.n	a6, 0
	.loc 1 672 0
	l32r	a2, .LC65
	j	.L109
.LVL328:
.L121:
	l32r	a2, .LC65
.LVL329:
.L109:
	.loc 1 728 0
	l32r	a4, .LC66
	l32i.n	a5, sp, 32
	s8i	a5, a4, 0
	.loc 1 729 0
	beqz.n	a6, .L118
	.loc 1 729 0 is_stmt 0 discriminator 1
	mov.n	a10, a6
	call8	free
.LVL330:
.L118:
	.loc 1 730 0 is_stmt 1
	beqz.n	a3, .L119
	.loc 1 730 0 is_stmt 0 discriminator 1
	mov.n	a10, a3
	call8	free
.LVL331:
.L119:
	.loc 1 733 0 is_stmt 1
	mov.n	a11, a7
	l32r	a3, .LC67
.LVL332:
	l32i.n	a10, a3, 0
	call8	spi_lobo_set_speed
.LVL333:
	.loc 1 736 0
	retw.n
.LFE40:
	.size	find_rd_speed, .-find_rd_speed
	.section	.text._tft_setRotation,"ax",@progbits
	.literal_position
	.literal .LC71, _width
	.literal .LC72, _height
	.align	4
	.global	_tft_setRotation
	.type	_tft_setRotation, @function
_tft_setRotation:
.LFB42:
	.loc 1 766 0
.LVL334:
	entry	sp, 48
.LCFI25:
	extui	a2, a2, 0, 8
	.loc 1 767 0
	extui	a8, a2, 0, 2
.LVL335:
	.loc 1 769 0
	movi.n	a9, 0
	s8i	a9, sp, 0
	.loc 1 772 0
	bbci	a2, 0, .L127
	.loc 1 774 0
	l32r	a2, .LC71
.LVL336:
	l32i.n	a2, a2, 0
	l32r	a9, .LC72
	l32i.n	a9, a9, 0
	bge	a2, a9, .L128
.LVL337:
	.loc 1 776 0
	l32r	a10, .LC71
	s32i.n	a9, a10, 0
	.loc 1 777 0
	extui	a2, a2, 0, 16
.LVL338:
	l32r	a9, .LC72
	s32i.n	a2, a9, 0
	j	.L128
.L127:
	.loc 1 782 0
	l32r	a2, .LC71
	l32i.n	a2, a2, 0
	l32r	a9, .LC72
	l32i.n	a9, a9, 0
	bge	a9, a2, .L128
.LVL339:
	.loc 1 784 0
	l32r	a10, .LC71
	s32i.n	a9, a10, 0
	.loc 1 785 0
	extui	a2, a2, 0, 16
.LVL340:
	l32r	a9, .LC72
	s32i.n	a2, a9, 0
.L128:
	.loc 1 804 0
	beqi	a8, 1, .L130
	beqz.n	a8, .L131
	beqi	a8, 3, .L132
	j	.L129
.L131:
	.loc 1 806 0
	movi	a2, -0x40
	s8i	a2, sp, 0
	.loc 1 807 0
	j	.L129
.L130:
	.loc 1 809 0
	movi	a2, -0x60
	s8i	a2, sp, 0
	.loc 1 810 0
	j	.L129
.L132:
	.loc 1 815 0
	movi	a2, 0x60
	s8i	a2, sp, 0
.L129:
	.loc 1 850 0
	call8	disp_select
.LVL341:
	bnez.n	a10, .L126
	.loc 1 851 0
	movi.n	a12, 1
	mov.n	a11, sp
	movi.n	a10, 0x36
	call8	disp_spi_transfer_cmd_data
.LVL342:
	.loc 1 852 0
	call8	disp_deselect
.LVL343:
.L126:
	retw.n
.LFE42:
	.size	_tft_setRotation, .-_tft_setRotation
	.section	.text.TFT_PinsInit,"ax",@progbits
	.align	4
	.global	TFT_PinsInit
	.type	TFT_PinsInit, @function
TFT_PinsInit:
.LFB43:
	.loc 1 860 0
	entry	sp, 32
.LCFI26:
	.loc 1 862 0
	movi.n	a10, 5
	call8	gpio_pad_select_gpio
.LVL344:
	.loc 1 863 0
	movi.n	a10, 0x13
	call8	gpio_pad_select_gpio
.LVL345:
	.loc 1 864 0
	movi.n	a10, 0x17
	call8	gpio_pad_select_gpio
.LVL346:
	.loc 1 865 0
	movi.n	a10, 0x12
	call8	gpio_pad_select_gpio
.LVL347:
	.loc 1 866 0
	movi.n	a10, 0x10
	call8	gpio_pad_select_gpio
.LVL348:
	.loc 1 868 0
	movi.n	a11, 1
	movi.n	a10, 0x13
	call8	gpio_set_direction
.LVL349:
	.loc 1 869 0
	movi.n	a11, 0
	movi.n	a10, 0x13
	call8	gpio_set_pull_mode
.LVL350:
	.loc 1 870 0
	movi.n	a11, 2
	movi.n	a10, 5
	call8	gpio_set_direction
.LVL351:
	.loc 1 871 0
	movi.n	a11, 2
	movi.n	a10, 0x17
	call8	gpio_set_direction
.LVL352:
	.loc 1 872 0
	movi.n	a11, 2
	movi.n	a10, 0x12
	call8	gpio_set_direction
.LVL353:
	.loc 1 873 0
	movi.n	a11, 2
	movi.n	a10, 0x10
	call8	gpio_set_direction
.LVL354:
	.loc 1 874 0
	movi.n	a11, 0
	movi.n	a10, 0x10
	call8	gpio_set_level
.LVL355:
	.loc 1 886 0
	movi.n	a10, 0x11
	call8	gpio_pad_select_gpio
.LVL356:
	.loc 1 887 0
	movi.n	a11, 2
	movi.n	a10, 0x11
	call8	gpio_set_direction
.LVL357:
	.loc 1 888 0
	movi.n	a11, 0
	movi.n	a10, 0x11
	call8	gpio_set_level
.LVL358:
	retw.n
.LFE43:
	.size	TFT_PinsInit, .-TFT_PinsInit
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC73:
	.string	"ret==ESP_OK"
	.align	4
.LC76:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/tft/tftspi.c"
	.align	4
.LC88:
	.string	"0"
	.section	.text.TFT_display_init,"ax",@progbits
	.literal_position
	.literal .LC74, .LC73
	.literal .LC75, __func__$6501
	.literal .LC77, .LC76
	.literal .LC78, tft_disp_type
	.literal .LC79, ILI9341_init
	.literal .LC80, disp_spi
	.literal .LC81, ILI9488_init
	.literal .LC82, ST7789V_init
	.literal .LC83, STP7735_init
	.literal .LC84, STP7735R_init
	.literal .LC85, Rcmd2green
	.literal .LC86, Rcmd3
	.literal .LC87, Rcmd2red
	.literal .LC89, .LC88
	.literal .LC90, _width
	.literal .LC91, _height
	.align	4
	.global	TFT_display_init
	.type	TFT_display_init, @function
TFT_display_init:
.LFB44:
	.loc 1 895 0
	entry	sp, 48
.LCFI27:
	.loc 1 900 0
	movi.n	a11, 0
	movi.n	a10, 0x11
	call8	gpio_set_level
.LVL359:
	.loc 1 901 0
	movi.n	a10, 2
	call8	vTaskDelay
.LVL360:
	.loc 1 902 0
	movi.n	a11, 1
	movi.n	a10, 0x11
	call8	gpio_set_level
.LVL361:
	.loc 1 903 0
	movi.n	a10, 0xf
	call8	vTaskDelay
.LVL362:
	.loc 1 906 0
	call8	disp_select
.LVL363:
	.loc 1 907 0
	beqz.n	a10, .L136
	.loc 1 907 0 is_stmt 0 discriminator 1
	l32r	a13, .LC74
	l32r	a12, .LC75
	movi	a11, 0x38b
	l32r	a10, .LC77
.LVL364:
	call8	__assert_func
.LVL365:
.L136:
	.loc 1 909 0 is_stmt 1
	l32r	a8, .LC78
	l8ui	a8, a8, 0
	bnez.n	a8, .L137
	.loc 1 910 0
	l32r	a11, .LC79
	l32r	a2, .LC80
	l32i.n	a10, a2, 0
.LVL366:
	call8	commandList
.LVL367:
	j	.L138
.LVL368:
.L137:
	.loc 1 912 0
	bnei	a8, 1, .L139
	.loc 1 913 0
	l32r	a11, .LC81
	l32r	a2, .LC80
	l32i.n	a10, a2, 0
.LVL369:
	call8	commandList
.LVL370:
	j	.L138
.LVL371:
.L139:
	.loc 1 915 0
	bnei	a8, 2, .L140
	.loc 1 916 0
	l32r	a11, .LC82
	l32r	a2, .LC80
	l32i.n	a10, a2, 0
.LVL372:
	call8	commandList
.LVL373:
	j	.L138
.LVL374:
.L140:
	.loc 1 918 0
	bnei	a8, 3, .L141
	.loc 1 919 0
	l32r	a11, .LC83
	l32r	a2, .LC80
	l32i.n	a10, a2, 0
.LVL375:
	call8	commandList
.LVL376:
	j	.L138
.LVL377:
.L141:
	.loc 1 921 0
	bnei	a8, 4, .L142
	.loc 1 922 0
	l32r	a2, .LC80
	l32r	a11, .LC84
	l32i.n	a10, a2, 0
.LVL378:
	call8	commandList
.LVL379:
	.loc 1 923 0
	l32r	a11, .LC85
	l32i.n	a10, a2, 0
	call8	commandList
.LVL380:
	.loc 1 924 0
	l32r	a11, .LC86
	l32i.n	a10, a2, 0
	call8	commandList
.LVL381:
	j	.L138
.LVL382:
.L142:
	.loc 1 926 0
	bnei	a8, 5, .L143
.LBB18:
	.loc 1 927 0
	l32r	a2, .LC80
	l32r	a11, .LC84
	l32i.n	a10, a2, 0
.LVL383:
	call8	commandList
.LVL384:
	.loc 1 928 0
	l32r	a11, .LC87
	l32i.n	a10, a2, 0
	call8	commandList
.LVL385:
	.loc 1 929 0
	l32r	a11, .LC86
	l32i.n	a10, a2, 0
	call8	commandList
.LVL386:
	.loc 1 930 0
	movi	a2, -0x40
	s8i	a2, sp, 3
	.loc 1 931 0
	movi.n	a12, 1
	addi.n	a11, sp, 3
	movi.n	a10, 0x36
	call8	disp_spi_transfer_cmd_data
.LVL387:
.LBE18:
	j	.L138
.LVL388:
.L143:
	.loc 1 933 0
	l32r	a13, .LC89
	l32r	a12, .LC75
	movi	a11, 0x3a5
	l32r	a10, .LC77
.LVL389:
	call8	__assert_func
.LVL390:
.L138:
	.loc 1 935 0
	call8	disp_deselect
.LVL391:
	.loc 1 936 0
	beqz.n	a10, .L144
	.loc 1 936 0 is_stmt 0 discriminator 1
	l32r	a13, .LC74
	l32r	a12, .LC75
	movi	a11, 0x3a8
	l32r	a10, .LC77
.LVL392:
	call8	__assert_func
.LVL393:
.L144:
	.loc 1 939 0 is_stmt 1
	movi.n	a10, 0
.LVL394:
	call8	_tft_setRotation
.LVL395:
	.loc 1 940 0
	l32r	a8, .LC90
	l32i.n	a12, a8, 0
	l32r	a8, .LC91
	l32i.n	a13, a8, 0
	movi.n	a8, 0
	s8i	a8, sp, 0
	s8i	a8, sp, 1
	s8i	a8, sp, 2
	mull	a15, a12, a13
	l32i.n	a14, sp, 0
	addi.n	a13, a13, -1
	addi.n	a12, a12, -1
	movi.n	a11, 0
	mov.n	a10, a11
	call8	TFT_pushColorRep
.LVL396:
	retw.n
.LFE44:
	.size	TFT_display_init, .-TFT_display_init
	.section	.rodata.__func__$6501,"a",@progbits
	.align	4
	.type	__func__$6501, @object
	.size	__func__$6501, 17
__func__$6501:
	.string	"TFT_display_init"
	.section	.bss._dma_sending,"aw",@nobits
	.type	_dma_sending, @object
	.size	_dma_sending, 1
_dma_sending:
	.zero	1
	.section	.bss.trans_cline,"aw",@nobits
	.align	4
	.type	trans_cline, @object
	.size	trans_cline, 4
trans_cline:
	.zero	4
	.global	ts_spi
	.section	.bss.ts_spi,"aw",@nobits
	.align	4
	.type	ts_spi, @object
	.size	ts_spi, 4
ts_spi:
	.zero	4
	.global	disp_spi
	.section	.bss.disp_spi,"aw",@nobits
	.align	4
	.type	disp_spi, @object
	.size	disp_spi, 4
disp_spi:
	.zero	4
	.global	tft_disp_type
	.section	.data.tft_disp_type,"aw",@progbits
	.type	tft_disp_type, @object
	.size	tft_disp_type, 1
tft_disp_type:
	.byte	2
	.global	_height
	.section	.data._height,"aw",@progbits
	.align	4
	.type	_height, @object
	.size	_height, 4
_height:
	.word	320
	.global	_width
	.section	.data._width,"aw",@progbits
	.align	4
	.type	_width, @object
	.size	_width, 4
_width:
	.word	240
	.global	max_rdclock
	.section	.data.max_rdclock,"aw",@progbits
	.align	4
	.type	max_rdclock, @object
	.size	max_rdclock, 4
max_rdclock:
	.word	8000000
	.global	gray_scale
	.section	.bss.gray_scale,"aw",@nobits
	.type	gray_scale, @object
	.size	gray_scale, 1
gray_scale:
	.zero	1
	.section	.rodata.Rcmd3,"a",@progbits
	.align	4
	.type	Rcmd3, @object
	.size	Rcmd3, 43
Rcmd3:
	.byte	4
	.byte	-32
	.byte	16
	.byte	2
	.byte	28
	.byte	7
	.byte	18
	.byte	55
	.byte	50
	.byte	41
	.byte	45
	.byte	41
	.byte	37
	.byte	43
	.byte	57
	.byte	0
	.byte	1
	.byte	3
	.byte	16
	.byte	-31
	.byte	16
	.byte	3
	.byte	29
	.byte	7
	.byte	6
	.byte	46
	.byte	44
	.byte	41
	.byte	45
	.byte	46
	.byte	46
	.byte	55
	.byte	63
	.byte	0
	.byte	0
	.byte	2
	.byte	16
	.byte	19
	.byte	-128
	.byte	10
	.byte	41
	.byte	-128
	.byte	100
	.section	.rodata.Rcmd2red,"a",@progbits
	.align	4
	.type	Rcmd2red, @object
	.size	Rcmd2red, 13
Rcmd2red:
	.byte	2
	.byte	42
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	127
	.byte	43
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	-97
	.section	.rodata.Rcmd2green,"a",@progbits
	.align	4
	.type	Rcmd2green, @object
	.size	Rcmd2green, 13
Rcmd2green:
	.byte	2
	.byte	42
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	-127
	.byte	43
	.byte	4
	.byte	0
	.byte	1
	.byte	0
	.byte	-96
	.section	.rodata.STP7735R_init,"a",@progbits
	.align	4
	.type	STP7735R_init, @object
	.size	STP7735R_init, 57
STP7735R_init:
	.byte	14
	.byte	17
	.byte	-128
	.byte	-1
	.byte	-79
	.byte	3
	.byte	1
	.byte	44
	.byte	45
	.byte	-78
	.byte	3
	.byte	1
	.byte	44
	.byte	45
	.byte	-77
	.byte	6
	.byte	1
	.byte	44
	.byte	45
	.byte	1
	.byte	44
	.byte	45
	.byte	-76
	.byte	1
	.byte	7
	.byte	-64
	.byte	3
	.byte	-94
	.byte	2
	.byte	-124
	.byte	-63
	.byte	1
	.byte	-59
	.byte	-62
	.byte	2
	.byte	10
	.byte	0
	.byte	-61
	.byte	2
	.byte	-118
	.byte	42
	.byte	-60
	.byte	2
	.byte	-118
	.byte	-18
	.byte	-59
	.byte	1
	.byte	14
	.byte	32
	.byte	0
	.byte	54
	.byte	1
	.byte	-64
	.byte	58
	.byte	-127
	.byte	6
	.byte	10
	.section	.rodata.STP7735_init,"a",@progbits
	.align	4
	.type	STP7735_init, @object
	.size	STP7735_init, 97
STP7735_init:
	.byte	16
	.byte	58
	.byte	-127
	.byte	6
	.byte	10
	.byte	-79
	.byte	-125
	.byte	0
	.byte	6
	.byte	3
	.byte	10
	.byte	54
	.byte	1
	.byte	8
	.byte	-74
	.byte	2
	.byte	21
	.byte	2
	.byte	-76
	.byte	1
	.byte	0
	.byte	-64
	.byte	-126
	.byte	2
	.byte	112
	.byte	10
	.byte	-63
	.byte	1
	.byte	5
	.byte	-62
	.byte	2
	.byte	1
	.byte	2
	.byte	-59
	.byte	-126
	.byte	60
	.byte	56
	.byte	10
	.byte	-4
	.byte	2
	.byte	17
	.byte	21
	.byte	-32
	.byte	16
	.byte	9
	.byte	22
	.byte	9
	.byte	32
	.byte	33
	.byte	27
	.byte	19
	.byte	25
	.byte	23
	.byte	21
	.byte	30
	.byte	43
	.byte	4
	.byte	5
	.byte	2
	.byte	14
	.byte	-31
	.byte	-112
	.byte	11
	.byte	20
	.byte	8
	.byte	30
	.byte	34
	.byte	29
	.byte	24
	.byte	30
	.byte	27
	.byte	26
	.byte	36
	.byte	43
	.byte	6
	.byte	6
	.byte	2
	.byte	15
	.byte	10
	.byte	42
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	-127
	.byte	43
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	-127
	.byte	19
	.byte	-128
	.byte	10
	.byte	41
	.byte	-128
	.byte	-1
	.section	.rodata.ILI9488_init,"a",@progbits
	.align	4
	.type	ILI9488_init, @object
	.size	ILI9488_init, 86
ILI9488_init:
	.byte	17
	.byte	-32
	.byte	15
	.byte	0
	.byte	3
	.byte	9
	.byte	8
	.byte	22
	.byte	10
	.byte	63
	.byte	120
	.byte	76
	.byte	9
	.byte	10
	.byte	8
	.byte	22
	.byte	26
	.byte	15
	.byte	-31
	.byte	15
	.byte	0
	.byte	22
	.byte	25
	.byte	3
	.byte	15
	.byte	5
	.byte	50
	.byte	69
	.byte	70
	.byte	4
	.byte	14
	.byte	13
	.byte	53
	.byte	55
	.byte	15
	.byte	-64
	.byte	2
	.byte	23
	.byte	21
	.byte	-63
	.byte	1
	.byte	65
	.byte	-59
	.byte	3
	.byte	0
	.byte	18
	.byte	-128
	.byte	54
	.byte	1
	.byte	64
	.byte	58
	.byte	1
	.byte	102
	.byte	-80
	.byte	1
	.byte	0
	.byte	-79
	.byte	1
	.byte	-96
	.byte	-76
	.byte	1
	.byte	2
	.byte	-74
	.byte	2
	.byte	2
	.byte	2
	.byte	-23
	.byte	1
	.byte	0
	.byte	83
	.byte	1
	.byte	40
	.byte	81
	.byte	1
	.byte	127
	.byte	-9
	.byte	4
	.byte	-87
	.byte	81
	.byte	44
	.byte	2
	.byte	17
	.byte	-128
	.byte	120
	.byte	41
	.byte	0
	.section	.rodata.ILI9341_init,"a",@progbits
	.align	4
	.type	ILI9341_init, @object
	.size	ILI9341_init, 119
ILI9341_init:
	.byte	23
	.byte	-53
	.byte	5
	.byte	57
	.byte	44
	.byte	0
	.byte	52
	.byte	2
	.byte	-49
	.byte	3
	.byte	0
	.byte	-63
	.byte	48
	.byte	-17
	.byte	3
	.byte	3
	.byte	-128
	.byte	2
	.byte	-24
	.byte	3
	.byte	-123
	.byte	0
	.byte	120
	.byte	-22
	.byte	2
	.byte	0
	.byte	0
	.byte	-19
	.byte	4
	.byte	100
	.byte	3
	.byte	18
	.byte	-127
	.byte	-9
	.byte	1
	.byte	32
	.byte	-64
	.byte	1
	.byte	35
	.byte	-63
	.byte	1
	.byte	16
	.byte	-59
	.byte	2
	.byte	62
	.byte	40
	.byte	-57
	.byte	1
	.byte	-122
	.byte	54
	.byte	1
	.byte	64
	.byte	58
	.byte	1
	.byte	102
	.byte	32
	.byte	0
	.byte	-79
	.byte	2
	.byte	0
	.byte	24
	.byte	-74
	.byte	4
	.byte	8
	.byte	-126
	.byte	39
	.byte	0
	.byte	48
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	63
	.byte	-14
	.byte	1
	.byte	0
	.byte	38
	.byte	1
	.byte	1
	.byte	-32
	.byte	15
	.byte	15
	.byte	49
	.byte	43
	.byte	12
	.byte	14
	.byte	8
	.byte	78
	.byte	-15
	.byte	55
	.byte	7
	.byte	16
	.byte	3
	.byte	14
	.byte	9
	.byte	0
	.byte	-31
	.byte	15
	.byte	0
	.byte	14
	.byte	20
	.byte	3
	.byte	17
	.byte	7
	.byte	49
	.byte	-63
	.byte	72
	.byte	8
	.byte	15
	.byte	12
	.byte	49
	.byte	54
	.byte	15
	.byte	17
	.byte	-128
	.byte	-56
	.byte	41
	.byte	-128
	.byte	-56
	.section	.rodata.ST7789V_init,"a",@progbits
	.align	4
	.type	ST7789V_init, @object
	.size	ST7789V_init, 80
ST7789V_init:
	.byte	16
	.byte	-78
	.byte	5
	.byte	12
	.byte	12
	.byte	0
	.byte	51
	.byte	51
	.byte	-73
	.byte	1
	.byte	69
	.byte	-69
	.byte	1
	.byte	43
	.byte	-64
	.byte	1
	.byte	44
	.byte	-62
	.byte	2
	.byte	1
	.byte	-1
	.byte	-61
	.byte	1
	.byte	17
	.byte	-60
	.byte	1
	.byte	32
	.byte	-58
	.byte	1
	.byte	15
	.byte	-48
	.byte	2
	.byte	-92
	.byte	-95
	.byte	-32
	.byte	14
	.byte	-48
	.byte	0
	.byte	5
	.byte	14
	.byte	21
	.byte	13
	.byte	55
	.byte	67
	.byte	71
	.byte	9
	.byte	21
	.byte	18
	.byte	22
	.byte	25
	.byte	-31
	.byte	14
	.byte	-48
	.byte	0
	.byte	5
	.byte	13
	.byte	12
	.byte	6
	.byte	45
	.byte	68
	.byte	64
	.byte	14
	.byte	28
	.byte	24
	.byte	22
	.byte	25
	.byte	54
	.byte	1
	.byte	64
	.byte	58
	.byte	1
	.byte	102
	.byte	32
	.byte	0
	.byte	17
	.byte	-128
	.byte	120
	.byte	41
	.byte	-128
	.byte	120
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI1-.LFB24
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI2-.LFB27
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI3-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI4-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI5-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI6-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI7-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI8-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI9-.LFB28
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI10-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI11-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI12-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI13-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI14-.LFB41
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI15-.LFB25
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI16-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI17-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI18-.LFB31
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI19-.LFB32
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI20-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI21-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI22-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI23-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI24-.LFB40
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI25-.LFB42
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI26-.LFB43
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI27-.LFB44
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE54:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_intr_alloc.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/queue.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/spi_struct.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/lldesc.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/spidriver/spi_master_lobo.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/tft/tftspi.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
	.file 16 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/task.h"
	.file 17 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/gpio.h"
	.file 18 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x420d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF642
	.byte	0xc
	.4byte	.LASF643
	.4byte	.LASF644
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF2
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
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x11
	.4byte	0x50
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x12
	.4byte	0x62
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x15
	.4byte	0x74
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x16
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x19
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1e
	.4byte	0xae
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x14
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x15
	.4byte	0x57
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x20
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x21
	.4byte	0x7b
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2c
	.4byte	0x86
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x2d
	.4byte	0x91
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x39
	.4byte	0xa3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x126
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x18
	.4byte	0xff
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x76
	.4byte	0x10a
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x56
	.4byte	0x14f
	.uleb128 0x8
	.4byte	.LASF29
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0x57
	.4byte	0x15f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x144
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0xbb
	.4byte	0x196
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
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0x8
	.byte	0xd9
	.4byte	0x1bb
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf4
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0x58
	.4byte	0xc3
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x17
	.4byte	0x2d4
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0xa
	.byte	0x18
	.4byte	0x10a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0xa
	.byte	0x19
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0xa
	.byte	0x1a
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.string	"usr"
	.byte	0xa
	.byte	0x1b
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0xa
	.byte	0x1c
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0xa
	.byte	0x1d
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0xa
	.byte	0x1e
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0xa
	.byte	0x1f
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0xa
	.byte	0x20
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0xa
	.byte	0x21
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0xa
	.byte	0x22
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0xa
	.byte	0x23
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0xa
	.byte	0x24
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0xa
	.byte	0x25
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0xa
	.byte	0x26
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0xa
	.byte	0x27
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0xa
	.byte	0x28
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.4byte	0x2ed
	.uleb128 0xf
	.4byte	0x1cc
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0x2a
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x2e
	.4byte	0x3e5
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0xa
	.byte	0x2f
	.4byte	0x10a
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0xa
	.byte	0x30
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0xa
	.byte	0x31
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0xa
	.byte	0x32
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0xa
	.byte	0x33
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0xa
	.byte	0x34
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0xa
	.byte	0x35
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0xa
	.byte	0x36
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0xa
	.byte	0x37
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.string	"wp"
	.byte	0xa
	.byte	0x38
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0xa
	.byte	0x39
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0xa
	.byte	0x3a
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0xa
	.byte	0x3b
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0xa
	.byte	0x3c
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0xa
	.byte	0x3d
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0xa
	.byte	0x3e
	.4byte	0x10a
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x2d
	.4byte	0x3fe
	.uleb128 0xf
	.4byte	0x2ed
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0x40
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x43
	.4byte	0x434
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0xa
	.byte	0x44
	.4byte	0x10a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0xa
	.byte	0x45
	.4byte	0x10a
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0xa
	.byte	0x46
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x42
	.4byte	0x44d
	.uleb128 0xf
	.4byte	0x3fe
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0x48
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x4b
	.4byte	0x483
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0xa
	.byte	0x4c
	.4byte	0x10a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0xa
	.byte	0x4d
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0xa
	.byte	0x4e
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x4a
	.4byte	0x49c
	.uleb128 0xf
	.4byte	0x44d
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0x50
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x53
	.4byte	0x53b
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0xa
	.byte	0x54
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0xa
	.byte	0x55
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0xa
	.byte	0x56
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0xa
	.byte	0x57
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0xa
	.byte	0x58
	.4byte	0x10a
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0xa
	.byte	0x59
	.4byte	0x10a
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0xa
	.byte	0x5a
	.4byte	0x10a
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0xa
	.byte	0x5b
	.4byte	0x10a
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0xa
	.byte	0x5c
	.4byte	0x10a
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0xa
	.byte	0x5d
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x52
	.4byte	0x554
	.uleb128 0xf
	.4byte	0x49c
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0x5f
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x62
	.4byte	0x5a8
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0xa
	.byte	0x63
	.4byte	0x10a
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0xa
	.byte	0x64
	.4byte	0x10a
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0xa
	.byte	0x65
	.4byte	0x10a
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0xa
	.byte	0x66
	.4byte	0x10a
	.byte	0x4
	.byte	0xd
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0xa
	.byte	0x67
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x61
	.4byte	0x5c1
	.uleb128 0xf
	.4byte	0x554
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0x69
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x6c
	.4byte	0x77d
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0xa
	.byte	0x6d
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0xa
	.byte	0x6e
	.4byte	0x10a
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0xa
	.byte	0x6f
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0xa
	.byte	0x70
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0xa
	.byte	0x71
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0xa
	.byte	0x72
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0xa
	.byte	0x73
	.4byte	0x10a
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0xa
	.byte	0x74
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0xa
	.byte	0x75
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0xa
	.byte	0x76
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0xa
	.byte	0x77
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0xa
	.byte	0x78
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0xa
	.byte	0x79
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.string	"sio"
	.byte	0xa
	.byte	0x7a
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0xa
	.byte	0x7b
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0xa
	.byte	0x7c
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0xa
	.byte	0x7d
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0xa
	.byte	0x7e
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0xa
	.byte	0x7f
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0xa
	.byte	0x80
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0xa
	.byte	0x81
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0xa
	.byte	0x82
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0xa
	.byte	0x83
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0xa
	.byte	0x84
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0xa
	.byte	0x85
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0xa
	.byte	0x86
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0xa
	.byte	0x87
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0xa
	.byte	0x88
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0xa
	.byte	0x89
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x6b
	.4byte	0x796
	.uleb128 0xf
	.4byte	0x5c1
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0x8b
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x8e
	.4byte	0x7cc
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0xa
	.byte	0x8f
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0xa
	.byte	0x90
	.4byte	0x10a
	.byte	0x4
	.byte	0x12
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0xa
	.byte	0x91
	.4byte	0x10a
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x8d
	.4byte	0x7e5
	.uleb128 0xf
	.4byte	0x796
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0x93
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x96
	.4byte	0x81b
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0xa
	.byte	0x97
	.4byte	0x10a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0xa
	.byte	0x98
	.4byte	0x10a
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0xa
	.byte	0x99
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x95
	.4byte	0x834
	.uleb128 0xf
	.4byte	0x7e5
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0x9b
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x9e
	.4byte	0x85b
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0xa
	.byte	0x9f
	.4byte	0x10a
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0xa
	.byte	0xa0
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0x9d
	.4byte	0x874
	.uleb128 0xf
	.4byte	0x834
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0xa2
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0xa5
	.4byte	0x89b
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0xa
	.byte	0xa6
	.4byte	0x10a
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0xa
	.byte	0xa7
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0xa4
	.4byte	0x8b4
	.uleb128 0xf
	.4byte	0x874
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0xa9
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0xad
	.4byte	0x971
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0xa
	.byte	0xae
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0xa
	.byte	0xaf
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0xa
	.byte	0xb0
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0xa
	.byte	0xb1
	.4byte	0x10a
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xa
	.byte	0xb2
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xa
	.byte	0xb3
	.4byte	0x10a
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0xa
	.byte	0xb4
	.4byte	0x10a
	.byte	0x4
	.byte	0x2
	.byte	0x15
	.byte	0
	.uleb128 0xc
	.4byte	.LASF134
	.byte	0xa
	.byte	0xb5
	.4byte	0x10a
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xa
	.byte	0xb6
	.4byte	0x10a
	.byte	0x4
	.byte	0xf
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0xa
	.byte	0xb7
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0xa
	.byte	0xb8
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF138
	.byte	0xa
	.byte	0xb9
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0xac
	.4byte	0x98a
	.uleb128 0xf
	.4byte	0x8b4
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0xbb
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0xbe
	.4byte	0xabf
	.uleb128 0xc
	.4byte	.LASF139
	.byte	0xa
	.byte	0xbf
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF140
	.byte	0xa
	.byte	0xc0
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0xa
	.byte	0xc1
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF142
	.byte	0xa
	.byte	0xc2
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF143
	.byte	0xa
	.byte	0xc3
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF144
	.byte	0xa
	.byte	0xc4
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0xa
	.byte	0xc5
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0xa
	.byte	0xc6
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF147
	.byte	0xa
	.byte	0xc7
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.4byte	.LASF148
	.byte	0xa
	.byte	0xc8
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF149
	.byte	0xa
	.byte	0xc9
	.4byte	0x10a
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF150
	.byte	0xa
	.byte	0xca
	.4byte	0x10a
	.byte	0x4
	.byte	0x5
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF151
	.byte	0xa
	.byte	0xcb
	.4byte	0x10a
	.byte	0x4
	.byte	0x3
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF152
	.byte	0xa
	.byte	0xcc
	.4byte	0x10a
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF153
	.byte	0xa
	.byte	0xcd
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF154
	.byte	0xa
	.byte	0xce
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF155
	.byte	0xa
	.byte	0xcf
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF156
	.byte	0xa
	.byte	0xd0
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF157
	.byte	0xa
	.byte	0xd1
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0xa
	.byte	0xd2
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0xbd
	.4byte	0xad8
	.uleb128 0xf
	.4byte	0x98a
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0xd4
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0xd7
	.4byte	0xb77
	.uleb128 0xc
	.4byte	.LASF159
	.byte	0xa
	.byte	0xd8
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF160
	.byte	0xa
	.byte	0xd9
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF161
	.byte	0xa
	.byte	0xda
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xc
	.4byte	.LASF162
	.byte	0xa
	.byte	0xdb
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF163
	.byte	0xa
	.byte	0xdc
	.4byte	0x10a
	.byte	0x4
	.byte	0x6
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.4byte	.LASF164
	.byte	0xa
	.byte	0xdd
	.4byte	0x10a
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0xa
	.byte	0xde
	.4byte	0x10a
	.byte	0x4
	.byte	0x9
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0xa
	.byte	0xdf
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF166
	.byte	0xa
	.byte	0xe0
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF167
	.byte	0xa
	.byte	0xe1
	.4byte	0x10a
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0xd6
	.4byte	0xb90
	.uleb128 0xf
	.4byte	0xad8
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0xe3
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0xe6
	.4byte	0xbd5
	.uleb128 0xc
	.4byte	.LASF168
	.byte	0xa
	.byte	0xe7
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF169
	.byte	0xa
	.byte	0xe8
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0xa
	.byte	0xe9
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF171
	.byte	0xa
	.byte	0xea
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0xe5
	.4byte	0xbee
	.uleb128 0xf
	.4byte	0xb90
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0xec
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0xef
	.4byte	0xc33
	.uleb128 0xc
	.4byte	.LASF172
	.byte	0xa
	.byte	0xf0
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF173
	.byte	0xa
	.byte	0xf1
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	.LASF174
	.byte	0xa
	.byte	0xf2
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF175
	.byte	0xa
	.byte	0xf3
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0xee
	.4byte	0xc4c
	.uleb128 0xf
	.4byte	0xbee
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0xf5
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0xf8
	.4byte	0xc73
	.uleb128 0xc
	.4byte	.LASF176
	.byte	0xa
	.byte	0xf9
	.4byte	0x10a
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0xa
	.byte	0xfa
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0xf7
	.4byte	0xc8c
	.uleb128 0xf
	.4byte	0xc4c
	.uleb128 0x10
	.string	"val"
	.byte	0xa
	.byte	0xfc
	.4byte	0x10a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0xff
	.4byte	0xcb5
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0xa
	.2byte	0x100
	.4byte	0x10a
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x101
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xa
	.byte	0xfe
	.4byte	0xccf
	.uleb128 0xf
	.4byte	0xc8c
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x103
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x106
	.4byte	0xd29
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0xa
	.2byte	0x107
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0xa
	.2byte	0x108
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0xa
	.2byte	0x109
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0xa
	.2byte	0x10a
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0xa
	.2byte	0x10b
	.4byte	0x10a
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x105
	.4byte	0xd44
	.uleb128 0xf
	.4byte	0xccf
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x10d
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x110
	.4byte	0xdfe
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0xa
	.2byte	0x111
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0xa
	.2byte	0x112
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0xa
	.2byte	0x113
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0xa
	.2byte	0x114
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF185
	.byte	0xa
	.2byte	0x115
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF186
	.byte	0xa
	.2byte	0x116
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0xa
	.2byte	0x117
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0xa
	.2byte	0x118
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0xa
	.byte	0
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0xa
	.2byte	0x119
	.4byte	0x10a
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0xa
	.2byte	0x11a
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF191
	.byte	0xa
	.2byte	0x11b
	.4byte	0x10a
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x10f
	.4byte	0xe19
	.uleb128 0xf
	.4byte	0xd44
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x11d
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x120
	.4byte	0xe73
	.uleb128 0x15
	.string	"dio"
	.byte	0xa
	.2byte	0x121
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.string	"qio"
	.byte	0xa
	.2byte	0x122
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0xa
	.2byte	0x123
	.4byte	0x10a
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0xa
	.2byte	0x124
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF194
	.byte	0xa
	.2byte	0x125
	.4byte	0x10a
	.byte	0x4
	.byte	0x1b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x11f
	.4byte	0xe8e
	.uleb128 0xf
	.4byte	0xe19
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x127
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x12a
	.4byte	0xec8
	.uleb128 0x11
	.4byte	.LASF195
	.byte	0xa
	.2byte	0x12b
	.4byte	0x10a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x12c
	.4byte	0x10a
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF196
	.byte	0xa
	.2byte	0x12d
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x129
	.4byte	0xee3
	.uleb128 0xf
	.4byte	0xe8e
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x12f
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x132
	.4byte	0xf1d
	.uleb128 0x11
	.4byte	.LASF197
	.byte	0xa
	.2byte	0x133
	.4byte	0x10a
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0xa
	.2byte	0x134
	.4byte	0x10a
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF198
	.byte	0xa
	.2byte	0x135
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x131
	.4byte	0xf38
	.uleb128 0xf
	.4byte	0xee3
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x137
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x13a
	.4byte	0xf62
	.uleb128 0x11
	.4byte	.LASF199
	.byte	0xa
	.2byte	0x13b
	.4byte	0x10a
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x13c
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x139
	.4byte	0xf7d
	.uleb128 0xf
	.4byte	0xf38
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x13e
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x154
	.4byte	0xfd7
	.uleb128 0x11
	.4byte	.LASF200
	.byte	0xa
	.2byte	0x155
	.4byte	0x10a
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x156
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF201
	.byte	0xa
	.2byte	0x157
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF202
	.byte	0xa
	.2byte	0x158
	.4byte	0x10a
	.byte	0x4
	.byte	0xb
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF203
	.byte	0xa
	.2byte	0x159
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x153
	.4byte	0xff2
	.uleb128 0xf
	.4byte	0xf7d
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x15b
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x15e
	.4byte	0x104c
	.uleb128 0x11
	.4byte	.LASF204
	.byte	0xa
	.2byte	0x15f
	.4byte	0x10a
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xa
	.2byte	0x160
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF205
	.byte	0xa
	.2byte	0x161
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF202
	.byte	0xa
	.2byte	0x162
	.4byte	0x10a
	.byte	0x4
	.byte	0xb
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF206
	.byte	0xa
	.2byte	0x163
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x15d
	.4byte	0x1067
	.uleb128 0xf
	.4byte	0xff2
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x165
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x168
	.4byte	0x1090
	.uleb128 0x15
	.string	"st"
	.byte	0xa
	.2byte	0x169
	.4byte	0x10a
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x16a
	.4byte	0x10a
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x167
	.4byte	0x10ab
	.uleb128 0xf
	.4byte	0x1067
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x16c
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x16f
	.4byte	0x10d5
	.uleb128 0x11
	.4byte	.LASF207
	.byte	0xa
	.2byte	0x170
	.4byte	0x10a
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0xa
	.2byte	0x171
	.4byte	0x10a
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x16e
	.4byte	0x10f0
	.uleb128 0xf
	.4byte	0x10ab
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x173
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x176
	.4byte	0x120a
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0xa
	.2byte	0x177
	.4byte	0x10a
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF208
	.byte	0xa
	.2byte	0x178
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF209
	.byte	0xa
	.2byte	0x179
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF210
	.byte	0xa
	.2byte	0x17a
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF211
	.byte	0xa
	.2byte	0x17b
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF212
	.byte	0xa
	.2byte	0x17c
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF213
	.byte	0xa
	.2byte	0x17d
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF214
	.byte	0xa
	.2byte	0x17e
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF215
	.byte	0xa
	.2byte	0x17f
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF216
	.byte	0xa
	.2byte	0x180
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.4byte	.LASF217
	.byte	0xa
	.2byte	0x181
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0xa
	.2byte	0x182
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.4byte	.LASF219
	.byte	0xa
	.2byte	0x183
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF220
	.byte	0xa
	.2byte	0x184
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x11
	.4byte	.LASF221
	.byte	0xa
	.2byte	0x185
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.4byte	.LASF222
	.byte	0xa
	.2byte	0x186
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.4byte	.LASF223
	.byte	0xa
	.2byte	0x187
	.4byte	0x10a
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x175
	.4byte	0x1225
	.uleb128 0xf
	.4byte	0x10f0
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x189
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x18c
	.4byte	0x128f
	.uleb128 0x11
	.4byte	.LASF224
	.byte	0xa
	.2byte	0x18d
	.4byte	0x10a
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF202
	.byte	0xa
	.2byte	0x18e
	.4byte	0x10a
	.byte	0x4
	.byte	0x8
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF225
	.byte	0xa
	.2byte	0x18f
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF226
	.byte	0xa
	.2byte	0x190
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF227
	.byte	0xa
	.2byte	0x191
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x192
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x18b
	.4byte	0x12aa
	.uleb128 0xf
	.4byte	0x1225
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x194
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x197
	.4byte	0x1324
	.uleb128 0x11
	.4byte	.LASF224
	.byte	0xa
	.2byte	0x198
	.4byte	0x10a
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF228
	.byte	0xa
	.2byte	0x199
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x11
	.4byte	.LASF229
	.byte	0xa
	.2byte	0x19a
	.4byte	0x10a
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF225
	.byte	0xa
	.2byte	0x19b
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF226
	.byte	0xa
	.2byte	0x19c
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF227
	.byte	0xa
	.2byte	0x19d
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x19e
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x196
	.4byte	0x133f
	.uleb128 0xf
	.4byte	0x12aa
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x1a0
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x1a3
	.4byte	0x1379
	.uleb128 0x11
	.4byte	.LASF230
	.byte	0xa
	.2byte	0x1a4
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF231
	.byte	0xa
	.2byte	0x1a5
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0xa
	.2byte	0x1a6
	.4byte	0x10a
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x1a2
	.4byte	0x1394
	.uleb128 0xf
	.4byte	0x133f
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x1a8
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x1ab
	.4byte	0x143e
	.uleb128 0x11
	.4byte	.LASF232
	.byte	0xa
	.2byte	0x1ac
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF233
	.byte	0xa
	.2byte	0x1ad
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF234
	.byte	0xa
	.2byte	0x1ae
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0xa
	.2byte	0x1af
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0xa
	.2byte	0x1b0
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0xa
	.2byte	0x1b1
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0xa
	.2byte	0x1b2
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0xa
	.2byte	0x1b3
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0xa
	.2byte	0x1b4
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x1b5
	.4byte	0x10a
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x1aa
	.4byte	0x1459
	.uleb128 0xf
	.4byte	0x1394
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x1b7
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x1ba
	.4byte	0x1503
	.uleb128 0x11
	.4byte	.LASF232
	.byte	0xa
	.2byte	0x1bb
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF233
	.byte	0xa
	.2byte	0x1bc
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF234
	.byte	0xa
	.2byte	0x1bd
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0xa
	.2byte	0x1be
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0xa
	.2byte	0x1bf
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0xa
	.2byte	0x1c0
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0xa
	.2byte	0x1c1
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0xa
	.2byte	0x1c2
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0xa
	.2byte	0x1c3
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x1c4
	.4byte	0x10a
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x1b9
	.4byte	0x151e
	.uleb128 0xf
	.4byte	0x1459
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x1c6
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x1c9
	.4byte	0x15c8
	.uleb128 0x11
	.4byte	.LASF232
	.byte	0xa
	.2byte	0x1ca
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF233
	.byte	0xa
	.2byte	0x1cb
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF234
	.byte	0xa
	.2byte	0x1cc
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0xa
	.2byte	0x1cd
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0xa
	.2byte	0x1ce
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0xa
	.2byte	0x1cf
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0xa
	.2byte	0x1d0
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0xa
	.2byte	0x1d1
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0xa
	.2byte	0x1d2
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x1d3
	.4byte	0x10a
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x1c8
	.4byte	0x15e3
	.uleb128 0xf
	.4byte	0x151e
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x1d5
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x1d8
	.4byte	0x168d
	.uleb128 0x11
	.4byte	.LASF232
	.byte	0xa
	.2byte	0x1d9
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF233
	.byte	0xa
	.2byte	0x1da
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF234
	.byte	0xa
	.2byte	0x1db
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF235
	.byte	0xa
	.2byte	0x1dc
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF236
	.byte	0xa
	.2byte	0x1dd
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x11
	.4byte	.LASF237
	.byte	0xa
	.2byte	0x1de
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.4byte	.LASF238
	.byte	0xa
	.2byte	0x1df
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF239
	.byte	0xa
	.2byte	0x1e0
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.4byte	.LASF240
	.byte	0xa
	.2byte	0x1e1
	.4byte	0x10a
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x1e2
	.4byte	0x10a
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x1d7
	.4byte	0x16a8
	.uleb128 0xf
	.4byte	0x15e3
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x1e4
	.4byte	0x10a
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0xa
	.2byte	0x29e
	.4byte	0x16d2
	.uleb128 0x11
	.4byte	.LASF241
	.byte	0xa
	.2byte	0x29f
	.4byte	0x10a
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF242
	.byte	0xa
	.2byte	0x2a0
	.4byte	0x10a
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0xa
	.2byte	0x29d
	.4byte	0x16ed
	.uleb128 0xf
	.4byte	0x16a8
	.uleb128 0x12
	.string	"val"
	.byte	0xa
	.2byte	0x2a2
	.4byte	0x10a
	.byte	0
	.uleb128 0x16
	.2byte	0x400
	.byte	0xa
	.byte	0x15
	.4byte	0x23e1
	.uleb128 0x17
	.string	"cmd"
	.byte	0xa
	.byte	0x2b
	.4byte	0x2d4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF224
	.byte	0xa
	.byte	0x2c
	.4byte	0x10a
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF243
	.byte	0xa
	.byte	0x41
	.4byte	0x3e5
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF244
	.byte	0xa
	.byte	0x49
	.4byte	0x434
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF245
	.byte	0xa
	.byte	0x51
	.4byte	0x483
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF246
	.byte	0xa
	.byte	0x60
	.4byte	0x53b
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF247
	.byte	0xa
	.byte	0x6a
	.4byte	0x5a8
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF248
	.byte	0xa
	.byte	0x8c
	.4byte	0x77d
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF249
	.byte	0xa
	.byte	0x94
	.4byte	0x7cc
	.byte	0x20
	.uleb128 0x18
	.4byte	.LASF250
	.byte	0xa
	.byte	0x9c
	.4byte	0x81b
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF251
	.byte	0xa
	.byte	0xa3
	.4byte	0x85b
	.byte	0x28
	.uleb128 0x18
	.4byte	.LASF252
	.byte	0xa
	.byte	0xaa
	.4byte	0x89b
	.byte	0x2c
	.uleb128 0x18
	.4byte	.LASF253
	.byte	0xa
	.byte	0xab
	.4byte	0x10a
	.byte	0x30
	.uleb128 0x17
	.string	"pin"
	.byte	0xa
	.byte	0xbc
	.4byte	0x971
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF254
	.byte	0xa
	.byte	0xd5
	.4byte	0xabf
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF255
	.byte	0xa
	.byte	0xe4
	.4byte	0xb77
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF256
	.byte	0xa
	.byte	0xed
	.4byte	0xbd5
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF257
	.byte	0xa
	.byte	0xf6
	.4byte	0xc33
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF258
	.byte	0xa
	.byte	0xfd
	.4byte	0xc73
	.byte	0x48
	.uleb128 0x19
	.4byte	.LASF259
	.byte	0xa
	.2byte	0x104
	.4byte	0xcb5
	.byte	0x4c
	.uleb128 0x19
	.4byte	.LASF260
	.byte	0xa
	.2byte	0x10e
	.4byte	0xd29
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF261
	.byte	0xa
	.2byte	0x11e
	.4byte	0xdfe
	.byte	0x54
	.uleb128 0x19
	.4byte	.LASF262
	.byte	0xa
	.2byte	0x128
	.4byte	0xe73
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF263
	.byte	0xa
	.2byte	0x130
	.4byte	0xec8
	.byte	0x5c
	.uleb128 0x19
	.4byte	.LASF264
	.byte	0xa
	.2byte	0x138
	.4byte	0xf1d
	.byte	0x60
	.uleb128 0x19
	.4byte	.LASF265
	.byte	0xa
	.2byte	0x13f
	.4byte	0xf62
	.byte	0x64
	.uleb128 0x19
	.4byte	.LASF266
	.byte	0xa
	.2byte	0x140
	.4byte	0x10a
	.byte	0x68
	.uleb128 0x19
	.4byte	.LASF267
	.byte	0xa
	.2byte	0x141
	.4byte	0x10a
	.byte	0x6c
	.uleb128 0x19
	.4byte	.LASF268
	.byte	0xa
	.2byte	0x142
	.4byte	0x10a
	.byte	0x70
	.uleb128 0x19
	.4byte	.LASF269
	.byte	0xa
	.2byte	0x143
	.4byte	0x10a
	.byte	0x74
	.uleb128 0x19
	.4byte	.LASF270
	.byte	0xa
	.2byte	0x144
	.4byte	0x10a
	.byte	0x78
	.uleb128 0x19
	.4byte	.LASF271
	.byte	0xa
	.2byte	0x145
	.4byte	0x10a
	.byte	0x7c
	.uleb128 0x19
	.4byte	.LASF272
	.byte	0xa
	.2byte	0x146
	.4byte	0x23e1
	.byte	0x80
	.uleb128 0x19
	.4byte	.LASF273
	.byte	0xa
	.2byte	0x147
	.4byte	0x10a
	.byte	0xc0
	.uleb128 0x19
	.4byte	.LASF274
	.byte	0xa
	.2byte	0x148
	.4byte	0x10a
	.byte	0xc4
	.uleb128 0x19
	.4byte	.LASF275
	.byte	0xa
	.2byte	0x149
	.4byte	0x10a
	.byte	0xc8
	.uleb128 0x19
	.4byte	.LASF276
	.byte	0xa
	.2byte	0x14a
	.4byte	0x10a
	.byte	0xcc
	.uleb128 0x19
	.4byte	.LASF277
	.byte	0xa
	.2byte	0x14b
	.4byte	0x10a
	.byte	0xd0
	.uleb128 0x19
	.4byte	.LASF278
	.byte	0xa
	.2byte	0x14c
	.4byte	0x10a
	.byte	0xd4
	.uleb128 0x19
	.4byte	.LASF279
	.byte	0xa
	.2byte	0x14d
	.4byte	0x10a
	.byte	0xd8
	.uleb128 0x19
	.4byte	.LASF280
	.byte	0xa
	.2byte	0x14e
	.4byte	0x10a
	.byte	0xdc
	.uleb128 0x19
	.4byte	.LASF281
	.byte	0xa
	.2byte	0x14f
	.4byte	0x10a
	.byte	0xe0
	.uleb128 0x19
	.4byte	.LASF282
	.byte	0xa
	.2byte	0x150
	.4byte	0x10a
	.byte	0xe4
	.uleb128 0x19
	.4byte	.LASF283
	.byte	0xa
	.2byte	0x151
	.4byte	0x10a
	.byte	0xe8
	.uleb128 0x19
	.4byte	.LASF284
	.byte	0xa
	.2byte	0x152
	.4byte	0x10a
	.byte	0xec
	.uleb128 0x19
	.4byte	.LASF285
	.byte	0xa
	.2byte	0x15c
	.4byte	0xfd7
	.byte	0xf0
	.uleb128 0x19
	.4byte	.LASF286
	.byte	0xa
	.2byte	0x166
	.4byte	0x104c
	.byte	0xf4
	.uleb128 0x19
	.4byte	.LASF287
	.byte	0xa
	.2byte	0x16d
	.4byte	0x1090
	.byte	0xf8
	.uleb128 0x19
	.4byte	.LASF288
	.byte	0xa
	.2byte	0x174
	.4byte	0x10d5
	.byte	0xfc
	.uleb128 0x1a
	.4byte	.LASF289
	.byte	0xa
	.2byte	0x18a
	.4byte	0x120a
	.2byte	0x100
	.uleb128 0x1a
	.4byte	.LASF290
	.byte	0xa
	.2byte	0x195
	.4byte	0x128f
	.2byte	0x104
	.uleb128 0x1a
	.4byte	.LASF291
	.byte	0xa
	.2byte	0x1a1
	.4byte	0x1324
	.2byte	0x108
	.uleb128 0x1a
	.4byte	.LASF292
	.byte	0xa
	.2byte	0x1a9
	.4byte	0x1379
	.2byte	0x10c
	.uleb128 0x1a
	.4byte	.LASF293
	.byte	0xa
	.2byte	0x1b8
	.4byte	0x143e
	.2byte	0x110
	.uleb128 0x1a
	.4byte	.LASF294
	.byte	0xa
	.2byte	0x1c7
	.4byte	0x1503
	.2byte	0x114
	.uleb128 0x1a
	.4byte	.LASF295
	.byte	0xa
	.2byte	0x1d6
	.4byte	0x15c8
	.2byte	0x118
	.uleb128 0x1a
	.4byte	.LASF296
	.byte	0xa
	.2byte	0x1e5
	.4byte	0x168d
	.2byte	0x11c
	.uleb128 0x1a
	.4byte	.LASF297
	.byte	0xa
	.2byte	0x1e6
	.4byte	0x10a
	.2byte	0x120
	.uleb128 0x1a
	.4byte	.LASF298
	.byte	0xa
	.2byte	0x1e7
	.4byte	0x10a
	.2byte	0x124
	.uleb128 0x1a
	.4byte	.LASF299
	.byte	0xa
	.2byte	0x1e8
	.4byte	0x10a
	.2byte	0x128
	.uleb128 0x1a
	.4byte	.LASF300
	.byte	0xa
	.2byte	0x1e9
	.4byte	0x10a
	.2byte	0x12c
	.uleb128 0x1a
	.4byte	.LASF301
	.byte	0xa
	.2byte	0x1ea
	.4byte	0x10a
	.2byte	0x130
	.uleb128 0x1a
	.4byte	.LASF302
	.byte	0xa
	.2byte	0x1eb
	.4byte	0x10a
	.2byte	0x134
	.uleb128 0x1a
	.4byte	.LASF303
	.byte	0xa
	.2byte	0x1ec
	.4byte	0x10a
	.2byte	0x138
	.uleb128 0x1a
	.4byte	.LASF304
	.byte	0xa
	.2byte	0x1ed
	.4byte	0x10a
	.2byte	0x13c
	.uleb128 0x1a
	.4byte	.LASF305
	.byte	0xa
	.2byte	0x1ee
	.4byte	0x10a
	.2byte	0x140
	.uleb128 0x1a
	.4byte	.LASF306
	.byte	0xa
	.2byte	0x1ef
	.4byte	0x10a
	.2byte	0x144
	.uleb128 0x1a
	.4byte	.LASF307
	.byte	0xa
	.2byte	0x1f0
	.4byte	0x10a
	.2byte	0x148
	.uleb128 0x1a
	.4byte	.LASF308
	.byte	0xa
	.2byte	0x1f1
	.4byte	0x10a
	.2byte	0x14c
	.uleb128 0x1a
	.4byte	.LASF309
	.byte	0xa
	.2byte	0x1f2
	.4byte	0x10a
	.2byte	0x150
	.uleb128 0x1a
	.4byte	.LASF310
	.byte	0xa
	.2byte	0x1f3
	.4byte	0x10a
	.2byte	0x154
	.uleb128 0x1a
	.4byte	.LASF311
	.byte	0xa
	.2byte	0x1f4
	.4byte	0x10a
	.2byte	0x158
	.uleb128 0x1a
	.4byte	.LASF312
	.byte	0xa
	.2byte	0x1f5
	.4byte	0x10a
	.2byte	0x15c
	.uleb128 0x1a
	.4byte	.LASF313
	.byte	0xa
	.2byte	0x1f6
	.4byte	0x10a
	.2byte	0x160
	.uleb128 0x1a
	.4byte	.LASF314
	.byte	0xa
	.2byte	0x1f7
	.4byte	0x10a
	.2byte	0x164
	.uleb128 0x1a
	.4byte	.LASF315
	.byte	0xa
	.2byte	0x1f8
	.4byte	0x10a
	.2byte	0x168
	.uleb128 0x1a
	.4byte	.LASF316
	.byte	0xa
	.2byte	0x1f9
	.4byte	0x10a
	.2byte	0x16c
	.uleb128 0x1a
	.4byte	.LASF317
	.byte	0xa
	.2byte	0x1fa
	.4byte	0x10a
	.2byte	0x170
	.uleb128 0x1a
	.4byte	.LASF318
	.byte	0xa
	.2byte	0x1fb
	.4byte	0x10a
	.2byte	0x174
	.uleb128 0x1a
	.4byte	.LASF319
	.byte	0xa
	.2byte	0x1fc
	.4byte	0x10a
	.2byte	0x178
	.uleb128 0x1a
	.4byte	.LASF320
	.byte	0xa
	.2byte	0x1fd
	.4byte	0x10a
	.2byte	0x17c
	.uleb128 0x1a
	.4byte	.LASF321
	.byte	0xa
	.2byte	0x1fe
	.4byte	0x10a
	.2byte	0x180
	.uleb128 0x1a
	.4byte	.LASF322
	.byte	0xa
	.2byte	0x1ff
	.4byte	0x10a
	.2byte	0x184
	.uleb128 0x1a
	.4byte	.LASF323
	.byte	0xa
	.2byte	0x200
	.4byte	0x10a
	.2byte	0x188
	.uleb128 0x1a
	.4byte	.LASF324
	.byte	0xa
	.2byte	0x201
	.4byte	0x10a
	.2byte	0x18c
	.uleb128 0x1a
	.4byte	.LASF325
	.byte	0xa
	.2byte	0x202
	.4byte	0x10a
	.2byte	0x190
	.uleb128 0x1a
	.4byte	.LASF326
	.byte	0xa
	.2byte	0x203
	.4byte	0x10a
	.2byte	0x194
	.uleb128 0x1a
	.4byte	.LASF327
	.byte	0xa
	.2byte	0x204
	.4byte	0x10a
	.2byte	0x198
	.uleb128 0x1a
	.4byte	.LASF328
	.byte	0xa
	.2byte	0x205
	.4byte	0x10a
	.2byte	0x19c
	.uleb128 0x1a
	.4byte	.LASF329
	.byte	0xa
	.2byte	0x206
	.4byte	0x10a
	.2byte	0x1a0
	.uleb128 0x1a
	.4byte	.LASF330
	.byte	0xa
	.2byte	0x207
	.4byte	0x10a
	.2byte	0x1a4
	.uleb128 0x1a
	.4byte	.LASF331
	.byte	0xa
	.2byte	0x208
	.4byte	0x10a
	.2byte	0x1a8
	.uleb128 0x1a
	.4byte	.LASF332
	.byte	0xa
	.2byte	0x209
	.4byte	0x10a
	.2byte	0x1ac
	.uleb128 0x1a
	.4byte	.LASF333
	.byte	0xa
	.2byte	0x20a
	.4byte	0x10a
	.2byte	0x1b0
	.uleb128 0x1a
	.4byte	.LASF334
	.byte	0xa
	.2byte	0x20b
	.4byte	0x10a
	.2byte	0x1b4
	.uleb128 0x1a
	.4byte	.LASF335
	.byte	0xa
	.2byte	0x20c
	.4byte	0x10a
	.2byte	0x1b8
	.uleb128 0x1a
	.4byte	.LASF336
	.byte	0xa
	.2byte	0x20d
	.4byte	0x10a
	.2byte	0x1bc
	.uleb128 0x1a
	.4byte	.LASF337
	.byte	0xa
	.2byte	0x20e
	.4byte	0x10a
	.2byte	0x1c0
	.uleb128 0x1a
	.4byte	.LASF338
	.byte	0xa
	.2byte	0x20f
	.4byte	0x10a
	.2byte	0x1c4
	.uleb128 0x1a
	.4byte	.LASF339
	.byte	0xa
	.2byte	0x210
	.4byte	0x10a
	.2byte	0x1c8
	.uleb128 0x1a
	.4byte	.LASF340
	.byte	0xa
	.2byte	0x211
	.4byte	0x10a
	.2byte	0x1cc
	.uleb128 0x1a
	.4byte	.LASF341
	.byte	0xa
	.2byte	0x212
	.4byte	0x10a
	.2byte	0x1d0
	.uleb128 0x1a
	.4byte	.LASF342
	.byte	0xa
	.2byte	0x213
	.4byte	0x10a
	.2byte	0x1d4
	.uleb128 0x1a
	.4byte	.LASF343
	.byte	0xa
	.2byte	0x214
	.4byte	0x10a
	.2byte	0x1d8
	.uleb128 0x1a
	.4byte	.LASF344
	.byte	0xa
	.2byte	0x215
	.4byte	0x10a
	.2byte	0x1dc
	.uleb128 0x1a
	.4byte	.LASF345
	.byte	0xa
	.2byte	0x216
	.4byte	0x10a
	.2byte	0x1e0
	.uleb128 0x1a
	.4byte	.LASF346
	.byte	0xa
	.2byte	0x217
	.4byte	0x10a
	.2byte	0x1e4
	.uleb128 0x1a
	.4byte	.LASF347
	.byte	0xa
	.2byte	0x218
	.4byte	0x10a
	.2byte	0x1e8
	.uleb128 0x1a
	.4byte	.LASF348
	.byte	0xa
	.2byte	0x219
	.4byte	0x10a
	.2byte	0x1ec
	.uleb128 0x1a
	.4byte	.LASF349
	.byte	0xa
	.2byte	0x21a
	.4byte	0x10a
	.2byte	0x1f0
	.uleb128 0x1a
	.4byte	.LASF350
	.byte	0xa
	.2byte	0x21b
	.4byte	0x10a
	.2byte	0x1f4
	.uleb128 0x1a
	.4byte	.LASF351
	.byte	0xa
	.2byte	0x21c
	.4byte	0x10a
	.2byte	0x1f8
	.uleb128 0x1a
	.4byte	.LASF352
	.byte	0xa
	.2byte	0x21d
	.4byte	0x10a
	.2byte	0x1fc
	.uleb128 0x1a
	.4byte	.LASF353
	.byte	0xa
	.2byte	0x21e
	.4byte	0x10a
	.2byte	0x200
	.uleb128 0x1a
	.4byte	.LASF354
	.byte	0xa
	.2byte	0x21f
	.4byte	0x10a
	.2byte	0x204
	.uleb128 0x1a
	.4byte	.LASF355
	.byte	0xa
	.2byte	0x220
	.4byte	0x10a
	.2byte	0x208
	.uleb128 0x1a
	.4byte	.LASF356
	.byte	0xa
	.2byte	0x221
	.4byte	0x10a
	.2byte	0x20c
	.uleb128 0x1a
	.4byte	.LASF357
	.byte	0xa
	.2byte	0x222
	.4byte	0x10a
	.2byte	0x210
	.uleb128 0x1a
	.4byte	.LASF358
	.byte	0xa
	.2byte	0x223
	.4byte	0x10a
	.2byte	0x214
	.uleb128 0x1a
	.4byte	.LASF359
	.byte	0xa
	.2byte	0x224
	.4byte	0x10a
	.2byte	0x218
	.uleb128 0x1a
	.4byte	.LASF360
	.byte	0xa
	.2byte	0x225
	.4byte	0x10a
	.2byte	0x21c
	.uleb128 0x1a
	.4byte	.LASF361
	.byte	0xa
	.2byte	0x226
	.4byte	0x10a
	.2byte	0x220
	.uleb128 0x1a
	.4byte	.LASF362
	.byte	0xa
	.2byte	0x227
	.4byte	0x10a
	.2byte	0x224
	.uleb128 0x1a
	.4byte	.LASF363
	.byte	0xa
	.2byte	0x228
	.4byte	0x10a
	.2byte	0x228
	.uleb128 0x1a
	.4byte	.LASF364
	.byte	0xa
	.2byte	0x229
	.4byte	0x10a
	.2byte	0x22c
	.uleb128 0x1a
	.4byte	.LASF365
	.byte	0xa
	.2byte	0x22a
	.4byte	0x10a
	.2byte	0x230
	.uleb128 0x1a
	.4byte	.LASF366
	.byte	0xa
	.2byte	0x22b
	.4byte	0x10a
	.2byte	0x234
	.uleb128 0x1a
	.4byte	.LASF367
	.byte	0xa
	.2byte	0x22c
	.4byte	0x10a
	.2byte	0x238
	.uleb128 0x1a
	.4byte	.LASF368
	.byte	0xa
	.2byte	0x22d
	.4byte	0x10a
	.2byte	0x23c
	.uleb128 0x1a
	.4byte	.LASF369
	.byte	0xa
	.2byte	0x22e
	.4byte	0x10a
	.2byte	0x240
	.uleb128 0x1a
	.4byte	.LASF370
	.byte	0xa
	.2byte	0x22f
	.4byte	0x10a
	.2byte	0x244
	.uleb128 0x1a
	.4byte	.LASF371
	.byte	0xa
	.2byte	0x230
	.4byte	0x10a
	.2byte	0x248
	.uleb128 0x1a
	.4byte	.LASF372
	.byte	0xa
	.2byte	0x231
	.4byte	0x10a
	.2byte	0x24c
	.uleb128 0x1a
	.4byte	.LASF373
	.byte	0xa
	.2byte	0x232
	.4byte	0x10a
	.2byte	0x250
	.uleb128 0x1a
	.4byte	.LASF374
	.byte	0xa
	.2byte	0x233
	.4byte	0x10a
	.2byte	0x254
	.uleb128 0x1a
	.4byte	.LASF375
	.byte	0xa
	.2byte	0x234
	.4byte	0x10a
	.2byte	0x258
	.uleb128 0x1a
	.4byte	.LASF376
	.byte	0xa
	.2byte	0x235
	.4byte	0x10a
	.2byte	0x25c
	.uleb128 0x1a
	.4byte	.LASF377
	.byte	0xa
	.2byte	0x236
	.4byte	0x10a
	.2byte	0x260
	.uleb128 0x1a
	.4byte	.LASF378
	.byte	0xa
	.2byte	0x237
	.4byte	0x10a
	.2byte	0x264
	.uleb128 0x1a
	.4byte	.LASF379
	.byte	0xa
	.2byte	0x238
	.4byte	0x10a
	.2byte	0x268
	.uleb128 0x1a
	.4byte	.LASF380
	.byte	0xa
	.2byte	0x239
	.4byte	0x10a
	.2byte	0x26c
	.uleb128 0x1a
	.4byte	.LASF381
	.byte	0xa
	.2byte	0x23a
	.4byte	0x10a
	.2byte	0x270
	.uleb128 0x1a
	.4byte	.LASF382
	.byte	0xa
	.2byte	0x23b
	.4byte	0x10a
	.2byte	0x274
	.uleb128 0x1a
	.4byte	.LASF383
	.byte	0xa
	.2byte	0x23c
	.4byte	0x10a
	.2byte	0x278
	.uleb128 0x1a
	.4byte	.LASF384
	.byte	0xa
	.2byte	0x23d
	.4byte	0x10a
	.2byte	0x27c
	.uleb128 0x1a
	.4byte	.LASF385
	.byte	0xa
	.2byte	0x23e
	.4byte	0x10a
	.2byte	0x280
	.uleb128 0x1a
	.4byte	.LASF386
	.byte	0xa
	.2byte	0x23f
	.4byte	0x10a
	.2byte	0x284
	.uleb128 0x1a
	.4byte	.LASF387
	.byte	0xa
	.2byte	0x240
	.4byte	0x10a
	.2byte	0x288
	.uleb128 0x1a
	.4byte	.LASF388
	.byte	0xa
	.2byte	0x241
	.4byte	0x10a
	.2byte	0x28c
	.uleb128 0x1a
	.4byte	.LASF389
	.byte	0xa
	.2byte	0x242
	.4byte	0x10a
	.2byte	0x290
	.uleb128 0x1a
	.4byte	.LASF390
	.byte	0xa
	.2byte	0x243
	.4byte	0x10a
	.2byte	0x294
	.uleb128 0x1a
	.4byte	.LASF391
	.byte	0xa
	.2byte	0x244
	.4byte	0x10a
	.2byte	0x298
	.uleb128 0x1a
	.4byte	.LASF392
	.byte	0xa
	.2byte	0x245
	.4byte	0x10a
	.2byte	0x29c
	.uleb128 0x1a
	.4byte	.LASF393
	.byte	0xa
	.2byte	0x246
	.4byte	0x10a
	.2byte	0x2a0
	.uleb128 0x1a
	.4byte	.LASF394
	.byte	0xa
	.2byte	0x247
	.4byte	0x10a
	.2byte	0x2a4
	.uleb128 0x1a
	.4byte	.LASF395
	.byte	0xa
	.2byte	0x248
	.4byte	0x10a
	.2byte	0x2a8
	.uleb128 0x1a
	.4byte	.LASF396
	.byte	0xa
	.2byte	0x249
	.4byte	0x10a
	.2byte	0x2ac
	.uleb128 0x1a
	.4byte	.LASF397
	.byte	0xa
	.2byte	0x24a
	.4byte	0x10a
	.2byte	0x2b0
	.uleb128 0x1a
	.4byte	.LASF398
	.byte	0xa
	.2byte	0x24b
	.4byte	0x10a
	.2byte	0x2b4
	.uleb128 0x1a
	.4byte	.LASF399
	.byte	0xa
	.2byte	0x24c
	.4byte	0x10a
	.2byte	0x2b8
	.uleb128 0x1a
	.4byte	.LASF400
	.byte	0xa
	.2byte	0x24d
	.4byte	0x10a
	.2byte	0x2bc
	.uleb128 0x1a
	.4byte	.LASF401
	.byte	0xa
	.2byte	0x24e
	.4byte	0x10a
	.2byte	0x2c0
	.uleb128 0x1a
	.4byte	.LASF402
	.byte	0xa
	.2byte	0x24f
	.4byte	0x10a
	.2byte	0x2c4
	.uleb128 0x1a
	.4byte	.LASF403
	.byte	0xa
	.2byte	0x250
	.4byte	0x10a
	.2byte	0x2c8
	.uleb128 0x1a
	.4byte	.LASF404
	.byte	0xa
	.2byte	0x251
	.4byte	0x10a
	.2byte	0x2cc
	.uleb128 0x1a
	.4byte	.LASF405
	.byte	0xa
	.2byte	0x252
	.4byte	0x10a
	.2byte	0x2d0
	.uleb128 0x1a
	.4byte	.LASF406
	.byte	0xa
	.2byte	0x253
	.4byte	0x10a
	.2byte	0x2d4
	.uleb128 0x1a
	.4byte	.LASF407
	.byte	0xa
	.2byte	0x254
	.4byte	0x10a
	.2byte	0x2d8
	.uleb128 0x1a
	.4byte	.LASF408
	.byte	0xa
	.2byte	0x255
	.4byte	0x10a
	.2byte	0x2dc
	.uleb128 0x1a
	.4byte	.LASF409
	.byte	0xa
	.2byte	0x256
	.4byte	0x10a
	.2byte	0x2e0
	.uleb128 0x1a
	.4byte	.LASF410
	.byte	0xa
	.2byte	0x257
	.4byte	0x10a
	.2byte	0x2e4
	.uleb128 0x1a
	.4byte	.LASF411
	.byte	0xa
	.2byte	0x258
	.4byte	0x10a
	.2byte	0x2e8
	.uleb128 0x1a
	.4byte	.LASF412
	.byte	0xa
	.2byte	0x259
	.4byte	0x10a
	.2byte	0x2ec
	.uleb128 0x1a
	.4byte	.LASF413
	.byte	0xa
	.2byte	0x25a
	.4byte	0x10a
	.2byte	0x2f0
	.uleb128 0x1a
	.4byte	.LASF414
	.byte	0xa
	.2byte	0x25b
	.4byte	0x10a
	.2byte	0x2f4
	.uleb128 0x1a
	.4byte	.LASF415
	.byte	0xa
	.2byte	0x25c
	.4byte	0x10a
	.2byte	0x2f8
	.uleb128 0x1a
	.4byte	.LASF416
	.byte	0xa
	.2byte	0x25d
	.4byte	0x10a
	.2byte	0x2fc
	.uleb128 0x1a
	.4byte	.LASF417
	.byte	0xa
	.2byte	0x25e
	.4byte	0x10a
	.2byte	0x300
	.uleb128 0x1a
	.4byte	.LASF418
	.byte	0xa
	.2byte	0x25f
	.4byte	0x10a
	.2byte	0x304
	.uleb128 0x1a
	.4byte	.LASF419
	.byte	0xa
	.2byte	0x260
	.4byte	0x10a
	.2byte	0x308
	.uleb128 0x1a
	.4byte	.LASF420
	.byte	0xa
	.2byte	0x261
	.4byte	0x10a
	.2byte	0x30c
	.uleb128 0x1a
	.4byte	.LASF421
	.byte	0xa
	.2byte	0x262
	.4byte	0x10a
	.2byte	0x310
	.uleb128 0x1a
	.4byte	.LASF422
	.byte	0xa
	.2byte	0x263
	.4byte	0x10a
	.2byte	0x314
	.uleb128 0x1a
	.4byte	.LASF423
	.byte	0xa
	.2byte	0x264
	.4byte	0x10a
	.2byte	0x318
	.uleb128 0x1a
	.4byte	.LASF424
	.byte	0xa
	.2byte	0x265
	.4byte	0x10a
	.2byte	0x31c
	.uleb128 0x1a
	.4byte	.LASF425
	.byte	0xa
	.2byte	0x266
	.4byte	0x10a
	.2byte	0x320
	.uleb128 0x1a
	.4byte	.LASF426
	.byte	0xa
	.2byte	0x267
	.4byte	0x10a
	.2byte	0x324
	.uleb128 0x1a
	.4byte	.LASF427
	.byte	0xa
	.2byte	0x268
	.4byte	0x10a
	.2byte	0x328
	.uleb128 0x1a
	.4byte	.LASF428
	.byte	0xa
	.2byte	0x269
	.4byte	0x10a
	.2byte	0x32c
	.uleb128 0x1a
	.4byte	.LASF429
	.byte	0xa
	.2byte	0x26a
	.4byte	0x10a
	.2byte	0x330
	.uleb128 0x1a
	.4byte	.LASF430
	.byte	0xa
	.2byte	0x26b
	.4byte	0x10a
	.2byte	0x334
	.uleb128 0x1a
	.4byte	.LASF431
	.byte	0xa
	.2byte	0x26c
	.4byte	0x10a
	.2byte	0x338
	.uleb128 0x1a
	.4byte	.LASF432
	.byte	0xa
	.2byte	0x26d
	.4byte	0x10a
	.2byte	0x33c
	.uleb128 0x1a
	.4byte	.LASF433
	.byte	0xa
	.2byte	0x26e
	.4byte	0x10a
	.2byte	0x340
	.uleb128 0x1a
	.4byte	.LASF434
	.byte	0xa
	.2byte	0x26f
	.4byte	0x10a
	.2byte	0x344
	.uleb128 0x1a
	.4byte	.LASF435
	.byte	0xa
	.2byte	0x270
	.4byte	0x10a
	.2byte	0x348
	.uleb128 0x1a
	.4byte	.LASF436
	.byte	0xa
	.2byte	0x271
	.4byte	0x10a
	.2byte	0x34c
	.uleb128 0x1a
	.4byte	.LASF437
	.byte	0xa
	.2byte	0x272
	.4byte	0x10a
	.2byte	0x350
	.uleb128 0x1a
	.4byte	.LASF438
	.byte	0xa
	.2byte	0x273
	.4byte	0x10a
	.2byte	0x354
	.uleb128 0x1a
	.4byte	.LASF439
	.byte	0xa
	.2byte	0x274
	.4byte	0x10a
	.2byte	0x358
	.uleb128 0x1a
	.4byte	.LASF440
	.byte	0xa
	.2byte	0x275
	.4byte	0x10a
	.2byte	0x35c
	.uleb128 0x1a
	.4byte	.LASF441
	.byte	0xa
	.2byte	0x276
	.4byte	0x10a
	.2byte	0x360
	.uleb128 0x1a
	.4byte	.LASF442
	.byte	0xa
	.2byte	0x277
	.4byte	0x10a
	.2byte	0x364
	.uleb128 0x1a
	.4byte	.LASF443
	.byte	0xa
	.2byte	0x278
	.4byte	0x10a
	.2byte	0x368
	.uleb128 0x1a
	.4byte	.LASF444
	.byte	0xa
	.2byte	0x279
	.4byte	0x10a
	.2byte	0x36c
	.uleb128 0x1a
	.4byte	.LASF445
	.byte	0xa
	.2byte	0x27a
	.4byte	0x10a
	.2byte	0x370
	.uleb128 0x1a
	.4byte	.LASF446
	.byte	0xa
	.2byte	0x27b
	.4byte	0x10a
	.2byte	0x374
	.uleb128 0x1a
	.4byte	.LASF447
	.byte	0xa
	.2byte	0x27c
	.4byte	0x10a
	.2byte	0x378
	.uleb128 0x1a
	.4byte	.LASF448
	.byte	0xa
	.2byte	0x27d
	.4byte	0x10a
	.2byte	0x37c
	.uleb128 0x1a
	.4byte	.LASF449
	.byte	0xa
	.2byte	0x27e
	.4byte	0x10a
	.2byte	0x380
	.uleb128 0x1a
	.4byte	.LASF450
	.byte	0xa
	.2byte	0x27f
	.4byte	0x10a
	.2byte	0x384
	.uleb128 0x1a
	.4byte	.LASF451
	.byte	0xa
	.2byte	0x280
	.4byte	0x10a
	.2byte	0x388
	.uleb128 0x1a
	.4byte	.LASF452
	.byte	0xa
	.2byte	0x281
	.4byte	0x10a
	.2byte	0x38c
	.uleb128 0x1a
	.4byte	.LASF453
	.byte	0xa
	.2byte	0x282
	.4byte	0x10a
	.2byte	0x390
	.uleb128 0x1a
	.4byte	.LASF454
	.byte	0xa
	.2byte	0x283
	.4byte	0x10a
	.2byte	0x394
	.uleb128 0x1a
	.4byte	.LASF455
	.byte	0xa
	.2byte	0x284
	.4byte	0x10a
	.2byte	0x398
	.uleb128 0x1a
	.4byte	.LASF456
	.byte	0xa
	.2byte	0x285
	.4byte	0x10a
	.2byte	0x39c
	.uleb128 0x1a
	.4byte	.LASF457
	.byte	0xa
	.2byte	0x286
	.4byte	0x10a
	.2byte	0x3a0
	.uleb128 0x1a
	.4byte	.LASF458
	.byte	0xa
	.2byte	0x287
	.4byte	0x10a
	.2byte	0x3a4
	.uleb128 0x1a
	.4byte	.LASF459
	.byte	0xa
	.2byte	0x288
	.4byte	0x10a
	.2byte	0x3a8
	.uleb128 0x1a
	.4byte	.LASF460
	.byte	0xa
	.2byte	0x289
	.4byte	0x10a
	.2byte	0x3ac
	.uleb128 0x1a
	.4byte	.LASF461
	.byte	0xa
	.2byte	0x28a
	.4byte	0x10a
	.2byte	0x3b0
	.uleb128 0x1a
	.4byte	.LASF462
	.byte	0xa
	.2byte	0x28b
	.4byte	0x10a
	.2byte	0x3b4
	.uleb128 0x1a
	.4byte	.LASF463
	.byte	0xa
	.2byte	0x28c
	.4byte	0x10a
	.2byte	0x3b8
	.uleb128 0x1a
	.4byte	.LASF464
	.byte	0xa
	.2byte	0x28d
	.4byte	0x10a
	.2byte	0x3bc
	.uleb128 0x1a
	.4byte	.LASF465
	.byte	0xa
	.2byte	0x28e
	.4byte	0x10a
	.2byte	0x3c0
	.uleb128 0x1a
	.4byte	.LASF466
	.byte	0xa
	.2byte	0x28f
	.4byte	0x10a
	.2byte	0x3c4
	.uleb128 0x1a
	.4byte	.LASF467
	.byte	0xa
	.2byte	0x290
	.4byte	0x10a
	.2byte	0x3c8
	.uleb128 0x1a
	.4byte	.LASF468
	.byte	0xa
	.2byte	0x291
	.4byte	0x10a
	.2byte	0x3cc
	.uleb128 0x1a
	.4byte	.LASF469
	.byte	0xa
	.2byte	0x292
	.4byte	0x10a
	.2byte	0x3d0
	.uleb128 0x1a
	.4byte	.LASF470
	.byte	0xa
	.2byte	0x293
	.4byte	0x10a
	.2byte	0x3d4
	.uleb128 0x1a
	.4byte	.LASF471
	.byte	0xa
	.2byte	0x294
	.4byte	0x10a
	.2byte	0x3d8
	.uleb128 0x1a
	.4byte	.LASF472
	.byte	0xa
	.2byte	0x295
	.4byte	0x10a
	.2byte	0x3dc
	.uleb128 0x1a
	.4byte	.LASF473
	.byte	0xa
	.2byte	0x296
	.4byte	0x10a
	.2byte	0x3e0
	.uleb128 0x1a
	.4byte	.LASF474
	.byte	0xa
	.2byte	0x297
	.4byte	0x10a
	.2byte	0x3e4
	.uleb128 0x1a
	.4byte	.LASF475
	.byte	0xa
	.2byte	0x298
	.4byte	0x10a
	.2byte	0x3e8
	.uleb128 0x1a
	.4byte	.LASF476
	.byte	0xa
	.2byte	0x299
	.4byte	0x10a
	.2byte	0x3ec
	.uleb128 0x1a
	.4byte	.LASF477
	.byte	0xa
	.2byte	0x29a
	.4byte	0x10a
	.2byte	0x3f0
	.uleb128 0x1a
	.4byte	.LASF478
	.byte	0xa
	.2byte	0x29b
	.4byte	0x10a
	.2byte	0x3f4
	.uleb128 0x1a
	.4byte	.LASF479
	.byte	0xa
	.2byte	0x29c
	.4byte	0x10a
	.2byte	0x3f8
	.uleb128 0x1a
	.4byte	.LASF241
	.byte	0xa
	.2byte	0x2a3
	.4byte	0x16d2
	.2byte	0x3fc
	.byte	0
	.uleb128 0x1b
	.4byte	0x10a
	.4byte	0x23f1
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0xf
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF480
	.byte	0xa
	.2byte	0x2a4
	.4byte	0x23fd
	.uleb128 0x1e
	.4byte	0x16ed
	.uleb128 0xb
	.byte	0x4
	.byte	0xb
	.byte	0x4d
	.4byte	0x2417
	.uleb128 0x18
	.4byte	.LASF481
	.byte	0xb
	.byte	0x4d
	.4byte	0x2490
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF501
	.byte	0xc
	.byte	0xb
	.byte	0x43
	.4byte	0x2490
	.uleb128 0xc
	.4byte	.LASF482
	.byte	0xb
	.byte	0x44
	.4byte	0x24b4
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.4byte	.LASF483
	.byte	0xb
	.byte	0x45
	.4byte	0x24b4
	.byte	0x4
	.byte	0xc
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF484
	.byte	0xb
	.byte	0x46
	.4byte	0x24b4
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF485
	.byte	0xb
	.byte	0x47
	.4byte	0x24b4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"eof"
	.byte	0xb
	.byte	0x48
	.4byte	0x24b4
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF486
	.byte	0xb
	.byte	0x49
	.4byte	0x24b4
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.string	"buf"
	.byte	0xb
	.byte	0x4a
	.4byte	0x24b9
	.byte	0x4
	.uleb128 0x20
	.4byte	0x2496
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2417
	.uleb128 0xe
	.byte	0x4
	.byte	0xb
	.byte	0x4b
	.4byte	0x24b4
	.uleb128 0x21
	.4byte	.LASF487
	.byte	0xb
	.byte	0x4c
	.4byte	0x24b4
	.uleb128 0x10
	.string	"qe"
	.byte	0xb
	.byte	0x4d
	.4byte	0x2402
	.byte	0
	.uleb128 0x1e
	.4byte	0x10a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24bf
	.uleb128 0x1e
	.4byte	0xde
	.uleb128 0x3
	.4byte	.LASF488
	.byte	0xb
	.byte	0x4f
	.4byte	0x2417
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24c4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x37
	.byte	0xc
	.byte	0x29
	.4byte	0x24f4
	.uleb128 0xa
	.4byte	.LASF489
	.byte	0
	.uleb128 0xa
	.4byte	.LASF490
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF491
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF492
	.byte	0xc
	.byte	0x2d
	.4byte	0x24d5
	.uleb128 0xb
	.byte	0x18
	.byte	0xc
	.byte	0x37
	.4byte	0x2550
	.uleb128 0x18
	.4byte	.LASF493
	.byte	0xc
	.byte	0x38
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	.LASF494
	.byte	0xc
	.byte	0x39
	.4byte	0x25
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF495
	.byte	0xc
	.byte	0x3a
	.4byte	0x25
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF496
	.byte	0xc
	.byte	0x3b
	.4byte	0x25
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF497
	.byte	0xc
	.byte	0x3c
	.4byte	0x25
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF498
	.byte	0xc
	.byte	0x3d
	.4byte	0x25
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF499
	.byte	0xc
	.byte	0x3e
	.4byte	0x24ff
	.uleb128 0x3
	.4byte	.LASF500
	.byte	0xc
	.byte	0x4b
	.4byte	0x2566
	.uleb128 0x1f
	.4byte	.LASF500
	.byte	0x28
	.byte	0xc
	.byte	0x6c
	.4byte	0x25c7
	.uleb128 0x18
	.4byte	.LASF502
	.byte	0xc
	.byte	0x6d
	.4byte	0x10a
	.byte	0
	.uleb128 0x18
	.4byte	.LASF503
	.byte	0xc
	.byte	0x6e
	.4byte	0xf4
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF504
	.byte	0xc
	.byte	0x6f
	.4byte	0x115
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF483
	.byte	0xc
	.byte	0x70
	.4byte	0x2c
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF505
	.byte	0xc
	.byte	0x71
	.4byte	0x2c
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF248
	.byte	0xc
	.byte	0x72
	.4byte	0xc3
	.byte	0x18
	.uleb128 0x20
	.4byte	0x26a5
	.byte	0x1c
	.uleb128 0x20
	.4byte	0x26d4
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF506
	.byte	0xc
	.byte	0x4c
	.4byte	0x25d2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25d8
	.uleb128 0x22
	.4byte	0x25e3
	.uleb128 0x23
	.4byte	0x25e3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x255b
	.uleb128 0xb
	.byte	0x24
	.byte	0xc
	.byte	0x51
	.4byte	0x269a
	.uleb128 0x18
	.4byte	.LASF507
	.byte	0xc
	.byte	0x52
	.4byte	0xde
	.byte	0
	.uleb128 0x18
	.4byte	.LASF508
	.byte	0xc
	.byte	0x53
	.4byte	0xde
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF509
	.byte	0xc
	.byte	0x54
	.4byte	0xde
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF510
	.byte	0xc
	.byte	0x55
	.4byte	0xde
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF511
	.byte	0xc
	.byte	0x56
	.4byte	0xde
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF512
	.byte	0xc
	.byte	0x57
	.4byte	0xde
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF513
	.byte	0xc
	.byte	0x58
	.4byte	0xde
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF514
	.byte	0xc
	.byte	0x59
	.4byte	0x25
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF515
	.byte	0xc
	.byte	0x5a
	.4byte	0x25
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF516
	.byte	0xc
	.byte	0x5b
	.4byte	0x25
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF502
	.byte	0xc
	.byte	0x5c
	.4byte	0x10a
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF517
	.byte	0xc
	.byte	0x5d
	.4byte	0x25c7
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF518
	.byte	0xc
	.byte	0x5e
	.4byte	0x25c7
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF519
	.byte	0xc
	.byte	0x5f
	.4byte	0xde
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF520
	.byte	0xc
	.byte	0x60
	.4byte	0x25e9
	.uleb128 0xe
	.byte	0x4
	.byte	0xc
	.byte	0x73
	.4byte	0x26c4
	.uleb128 0x21
	.4byte	.LASF521
	.byte	0xc
	.byte	0x74
	.4byte	0x120
	.uleb128 0x21
	.4byte	.LASF522
	.byte	0xc
	.byte	0x75
	.4byte	0x26c4
	.byte	0
	.uleb128 0x1b
	.4byte	0xde
	.4byte	0x26d4
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xc
	.byte	0x77
	.4byte	0x26f3
	.uleb128 0x21
	.4byte	.LASF523
	.byte	0xc
	.byte	0x78
	.4byte	0xc3
	.uleb128 0x21
	.4byte	.LASF524
	.byte	0xc
	.byte	0x79
	.4byte	0x26c4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF525
	.byte	0xc
	.byte	0x81
	.4byte	0x26fe
	.uleb128 0x1f
	.4byte	.LASF525
	.byte	0x44
	.byte	0xc
	.byte	0x92
	.4byte	0x273b
	.uleb128 0x17
	.string	"cfg"
	.byte	0xc
	.byte	0x93
	.4byte	0x269a
	.byte	0
	.uleb128 0x18
	.4byte	.LASF526
	.byte	0xc
	.byte	0x94
	.4byte	0x27ee
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF527
	.byte	0xc
	.byte	0x95
	.4byte	0x2550
	.byte	0x28
	.uleb128 0x18
	.4byte	.LASF528
	.byte	0xc
	.byte	0x96
	.4byte	0x24f4
	.byte	0x40
	.byte	0
	.uleb128 0xb
	.byte	0x54
	.byte	0xc
	.byte	0x83
	.4byte	0x27c7
	.uleb128 0x18
	.4byte	.LASF529
	.byte	0xc
	.byte	0x84
	.4byte	0x27c7
	.byte	0
	.uleb128 0x18
	.4byte	.LASF530
	.byte	0xc
	.byte	0x85
	.4byte	0x154
	.byte	0x18
	.uleb128 0x17
	.string	"hw"
	.byte	0xc
	.byte	0x86
	.4byte	0x27dd
	.byte	0x1c
	.uleb128 0x18
	.4byte	.LASF531
	.byte	0xc
	.byte	0x88
	.4byte	0x25
	.byte	0x20
	.uleb128 0x18
	.4byte	.LASF532
	.byte	0xc
	.byte	0x89
	.4byte	0x24cf
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF533
	.byte	0xc
	.byte	0x8a
	.4byte	0x24cf
	.byte	0x28
	.uleb128 0x18
	.4byte	.LASF534
	.byte	0xc
	.byte	0x8b
	.4byte	0x132
	.byte	0x2c
	.uleb128 0x18
	.4byte	.LASF535
	.byte	0xc
	.byte	0x8c
	.4byte	0x25
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF498
	.byte	0xc
	.byte	0x8d
	.4byte	0x25
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF536
	.byte	0xc
	.byte	0x8e
	.4byte	0x1c1
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF537
	.byte	0xc
	.byte	0x8f
	.4byte	0x2550
	.byte	0x3c
	.byte	0
	.uleb128 0x1b
	.4byte	0x27d7
	.4byte	0x27d7
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x26f3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23f1
	.uleb128 0x3
	.4byte	.LASF538
	.byte	0xc
	.byte	0x90
	.4byte	0x273b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27e3
	.uleb128 0x3
	.4byte	.LASF539
	.byte	0xc
	.byte	0x99
	.4byte	0x27d7
	.uleb128 0xb
	.byte	0x3
	.byte	0xd
	.byte	0xe4
	.4byte	0x2826
	.uleb128 0x17
	.string	"r"
	.byte	0xd
	.byte	0xe6
	.4byte	0xde
	.byte	0
	.uleb128 0x17
	.string	"g"
	.byte	0xd
	.byte	0xe7
	.4byte	0xde
	.byte	0x1
	.uleb128 0x17
	.string	"b"
	.byte	0xd
	.byte	0xe8
	.4byte	0xde
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF540
	.byte	0xd
	.byte	0xe9
	.4byte	0x27ff
	.uleb128 0x24
	.4byte	.LASF548
	.byte	0x1
	.byte	0x5d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2872
	.uleb128 0x25
	.4byte	.LASF541
	.byte	0x1
	.byte	0x5d
	.4byte	0x27f4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.4byte	.LASF542
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.4byte	.LLST0
	.uleb128 0x26
	.4byte	.LASF543
	.byte	0x1
	.byte	0x5d
	.4byte	0x25
	.4byte	.LLST1
	.byte	0
	.uleb128 0x27
	.4byte	.LASF554
	.byte	0x1
	.byte	0xe3
	.4byte	0x2826
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28b7
	.uleb128 0x25
	.4byte	.LASF544
	.byte	0x1
	.byte	0xe3
	.4byte	0x2826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.4byte	.LASF545
	.byte	0x1
	.byte	0xe5
	.4byte	0x2826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x29
	.4byte	.LASF546
	.byte	0x1
	.byte	0xe6
	.4byte	0x28b7
	.4byte	.LLST2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF547
	.uleb128 0x2a
	.4byte	.LASF549
	.byte	0x1
	.2byte	0x12c
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29a9
	.uleb128 0x2b
	.4byte	.LASF544
	.byte	0x1
	.2byte	0x12c
	.4byte	0x29a9
	.4byte	.LLST3
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x10a
	.4byte	.LLST4
	.uleb128 0x2c
	.string	"rep"
	.byte	0x1
	.2byte	0x12c
	.4byte	0xde
	.4byte	.LLST5
	.uleb128 0x2d
	.4byte	.LASF550
	.byte	0x1
	.2byte	0x12e
	.4byte	0x10a
	.4byte	.LLST6
	.uleb128 0x2e
	.string	"wd"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x10a
	.4byte	.LLST7
	.uleb128 0x2e
	.string	"idx"
	.byte	0x1
	.2byte	0x130
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	.LASF551
	.byte	0x1
	.2byte	0x131
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x2d
	.4byte	.LASF552
	.byte	0x1
	.2byte	0x132
	.4byte	0x25
	.4byte	.LLST10
	.uleb128 0x2f
	.4byte	.LASF545
	.byte	0x1
	.2byte	0x135
	.4byte	0x2826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x297c
	.uleb128 0x31
	.4byte	.LASF553
	.byte	0x1
	.2byte	0x134
	.4byte	0x37
	.byte	0
	.uleb128 0x30
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x2996
	.uleb128 0x31
	.4byte	.LASF553
	.byte	0x1
	.2byte	0x15f
	.4byte	0x37
	.byte	0
	.uleb128 0x32
	.4byte	.LVL19
	.4byte	0x2872
	.uleb128 0x32
	.4byte	.LVL21
	.4byte	0x2872
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2826
	.uleb128 0x33
	.4byte	.LASF555
	.byte	0x1
	.2byte	0x245
	.4byte	0xf4
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a1e
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.2byte	0x245
	.4byte	0xde
	.4byte	.LLST11
	.uleb128 0x34
	.string	"res"
	.byte	0x1
	.2byte	0x24a
	.4byte	0xf4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.4byte	.LVL52
	.4byte	0x4144
	.4byte	0x29fa
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL54
	.4byte	0x2831
	.4byte	0x2a14
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x32
	.4byte	.LVL57
	.4byte	0x414f
	.byte	0
	.uleb128 0x33
	.4byte	.LASF556
	.byte	0x1
	.2byte	0x239
	.4byte	0xde
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a8b
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.2byte	0x239
	.4byte	0xde
	.4byte	.LLST12
	.uleb128 0x34
	.string	"res"
	.byte	0x1
	.2byte	0x23e
	.4byte	0xde
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.4byte	.LVL59
	.4byte	0x4144
	.4byte	0x2a69
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL61
	.4byte	0x2831
	.4byte	0x2a81
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x32
	.4byte	.LVL63
	.4byte	0x414f
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF557
	.byte	0x1
	.2byte	0x22e
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2af6
	.uleb128 0x2c
	.string	"reg"
	.byte	0x1
	.2byte	0x22e
	.4byte	0xde
	.4byte	.LLST13
	.uleb128 0x2c
	.string	"val"
	.byte	0x1
	.2byte	0x22e
	.4byte	0xde
	.4byte	.LLST14
	.uleb128 0x35
	.4byte	.LVL65
	.4byte	0x4144
	.4byte	0x2ad4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL68
	.4byte	0x2831
	.4byte	0x2aec
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.4byte	.LVL69
	.4byte	0x414f
	.byte	0
	.uleb128 0x24
	.4byte	.LASF558
	.byte	0x1
	.byte	0xb0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2be0
	.uleb128 0x37
	.string	"x1"
	.byte	0x1
	.byte	0xb0
	.4byte	0xf4
	.4byte	.LLST15
	.uleb128 0x37
	.string	"x2"
	.byte	0x1
	.byte	0xb0
	.4byte	0xf4
	.4byte	.LLST16
	.uleb128 0x37
	.string	"y1"
	.byte	0x1
	.byte	0xb0
	.4byte	0xf4
	.4byte	.LLST17
	.uleb128 0x37
	.string	"y2"
	.byte	0x1
	.byte	0xb0
	.4byte	0xf4
	.4byte	.LLST18
	.uleb128 0x38
	.string	"wd"
	.byte	0x1
	.byte	0xb1
	.4byte	0x10a
	.4byte	.LLST19
	.uleb128 0x30
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x2b6a
	.uleb128 0x39
	.4byte	.LASF553
	.byte	0x1
	.byte	0xb3
	.4byte	0x37
	.byte	0
	.uleb128 0x30
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x2b83
	.uleb128 0x39
	.4byte	.LASF553
	.byte	0x1
	.byte	0xde
	.4byte	0x37
	.byte	0
	.uleb128 0x35
	.4byte	.LVL72
	.4byte	0x415a
	.4byte	0x2b9b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL79
	.4byte	0x415a
	.4byte	0x2bb3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL81
	.4byte	0x415a
	.4byte	0x2bcb
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL88
	.4byte	0x415a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF559
	.byte	0x1
	.2byte	0x11a
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c39
	.uleb128 0x3b
	.4byte	.LASF560
	.byte	0x1
	.2byte	0x11a
	.4byte	0x2c39
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.4byte	.LASF482
	.byte	0x1
	.2byte	0x11a
	.4byte	0x10a
	.4byte	.LLST20
	.uleb128 0x32
	.4byte	.LVL92
	.4byte	0x4166
	.uleb128 0x3a
	.4byte	.LVL93
	.4byte	0x4172
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xde
	.uleb128 0x3c
	.4byte	.LASF579
	.byte	0x1
	.byte	0x37
	.4byte	0x127
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c7a
	.uleb128 0x26
	.4byte	.LASF561
	.byte	0x1
	.byte	0x37
	.4byte	0xde
	.4byte	.LLST21
	.uleb128 0x32
	.4byte	.LVL97
	.4byte	0x417e
	.uleb128 0x32
	.4byte	.LVL98
	.4byte	0x4189
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x169
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e11
	.uleb128 0x2b
	.4byte	.LASF544
	.byte	0x1
	.2byte	0x169
	.4byte	0x29a9
	.4byte	.LLST22
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.2byte	0x169
	.4byte	0x10a
	.4byte	.LLST23
	.uleb128 0x2c
	.string	"rep"
	.byte	0x1
	.2byte	0x169
	.4byte	0xde
	.4byte	.LLST24
	.uleb128 0x3b
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x169
	.4byte	0xde
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0
	.4byte	0x2cef
	.uleb128 0x2e
	.string	"n"
	.byte	0x1
	.2byte	0x180
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x32
	.4byte	.LVL105
	.4byte	0x2872
	.byte	0
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x2d92
	.uleb128 0x2f
	.4byte	.LASF545
	.byte	0x1
	.2byte	0x18a
	.4byte	0x2826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.4byte	.LASF564
	.byte	0x1
	.2byte	0x18b
	.4byte	0x10a
	.4byte	.LLST26
	.uleb128 0x2d
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x18c
	.4byte	0x25
	.4byte	.LLST27
	.uleb128 0x2d
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x18c
	.4byte	0x25
	.4byte	.LLST28
	.uleb128 0x30
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x2d53
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x10a
	.4byte	.LLST29
	.byte	0
	.uleb128 0x35
	.4byte	.LVL115
	.4byte	0x4195
	.4byte	0x2d6c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x32
	.4byte	.LVL116
	.4byte	0x2872
	.uleb128 0x35
	.4byte	.LVL124
	.4byte	0x2c3f
	.4byte	0x2d88
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.4byte	.LVL126
	.4byte	0x2be0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL100
	.4byte	0x415a
	.4byte	0x2daa
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL101
	.4byte	0x415a
	.4byte	0x2dc2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL102
	.4byte	0x28be
	.4byte	0x2de2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL110
	.4byte	0x2be0
	.4byte	0x2e01
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL129
	.4byte	0x2c3f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF567
	.byte	0x1
	.byte	0x4f
	.4byte	0x127
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e4d
	.uleb128 0x35
	.4byte	.LVL130
	.4byte	0x2c3f
	.4byte	0x2e3d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL131
	.4byte	0x4144
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF568
	.byte	0x1
	.byte	0x56
	.4byte	0x127
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e83
	.uleb128 0x35
	.4byte	.LVL132
	.4byte	0x2c3f
	.4byte	0x2e79
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.4byte	.LVL133
	.4byte	0x414f
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF569
	.byte	0x1
	.byte	0x72
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ed4
	.uleb128 0x37
	.string	"cmd"
	.byte	0x1
	.byte	0x72
	.4byte	0xd3
	.4byte	.LLST30
	.uleb128 0x35
	.4byte	.LVL135
	.4byte	0x415a
	.4byte	0x2ebf
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL137
	.4byte	0x2831
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF570
	.byte	0x1
	.byte	0x7f
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fc7
	.uleb128 0x37
	.string	"cmd"
	.byte	0x1
	.byte	0x7f
	.4byte	0xd3
	.4byte	.LLST31
	.uleb128 0x25
	.4byte	.LASF560
	.byte	0x1
	.byte	0x7f
	.4byte	0x2c39
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x40
	.string	"len"
	.byte	0x1
	.byte	0x7f
	.4byte	0x10a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x38
	.string	"idx"
	.byte	0x1
	.byte	0x8e
	.4byte	0xde
	.4byte	.LLST32
	.uleb128 0x29
	.4byte	.LASF571
	.byte	0x1
	.byte	0x8e
	.4byte	0xde
	.4byte	.LLST33
	.uleb128 0x29
	.4byte	.LASF551
	.byte	0x1
	.byte	0x8f
	.4byte	0x10a
	.4byte	.LLST34
	.uleb128 0x29
	.4byte	.LASF572
	.byte	0x1
	.byte	0x90
	.4byte	0x10a
	.4byte	.LLST35
	.uleb128 0x38
	.string	"wd"
	.byte	0x1
	.byte	0x91
	.4byte	0x10a
	.4byte	.LLST36
	.uleb128 0x35
	.4byte	.LVL139
	.4byte	0x415a
	.4byte	0x2f74
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL141
	.4byte	0x2831
	.4byte	0x2f8c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL142
	.4byte	0x415a
	.4byte	0x2fa4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL159
	.4byte	0x2831
	.4byte	0x2fb7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL162
	.4byte	0x2831
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF573
	.byte	0x1
	.2byte	0x2e6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3060
	.uleb128 0x2c
	.string	"spi"
	.byte	0x1
	.2byte	0x2e6
	.4byte	0x27f4
	.4byte	.LLST37
	.uleb128 0x2b
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x2e6
	.4byte	0x3060
	.4byte	.LLST38
	.uleb128 0x2d
	.4byte	.LASF574
	.byte	0x1
	.2byte	0x2e7
	.4byte	0xde
	.4byte	.LLST39
	.uleb128 0x2d
	.4byte	.LASF575
	.byte	0x1
	.2byte	0x2e7
	.4byte	0xde
	.4byte	.LLST40
	.uleb128 0x2e
	.string	"cmd"
	.byte	0x1
	.2byte	0x2e7
	.4byte	0xde
	.4byte	.LLST41
	.uleb128 0x2e
	.string	"ms"
	.byte	0x1
	.2byte	0x2e8
	.4byte	0xf4
	.4byte	.LLST42
	.uleb128 0x35
	.4byte	.LVL172
	.4byte	0x2ed4
	.4byte	0x3056
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL179
	.4byte	0x41a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3066
	.uleb128 0x41
	.4byte	0xde
	.uleb128 0x3f
	.4byte	.LASF576
	.byte	0x1
	.byte	0xf2
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31a5
	.uleb128 0x37
	.string	"x"
	.byte	0x1
	.byte	0xf2
	.4byte	0xe9
	.4byte	.LLST43
	.uleb128 0x37
	.string	"y"
	.byte	0x1
	.byte	0xf2
	.4byte	0xe9
	.4byte	.LLST44
	.uleb128 0x25
	.4byte	.LASF544
	.byte	0x1
	.byte	0xf2
	.4byte	0x2826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x40
	.string	"sel"
	.byte	0x1
	.byte	0xf2
	.4byte	0xde
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x38
	.string	"wd"
	.byte	0x1
	.byte	0xfb
	.4byte	0x10a
	.4byte	.LLST45
	.uleb128 0x28
	.4byte	.LASF545
	.byte	0x1
	.byte	0xfc
	.4byte	0x2826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x30ea
	.uleb128 0x39
	.4byte	.LASF553
	.byte	0x1
	.byte	0xff
	.4byte	0x37
	.byte	0
	.uleb128 0x30
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x3104
	.uleb128 0x31
	.4byte	.LASF553
	.byte	0x1
	.2byte	0x115
	.4byte	0x37
	.byte	0
	.uleb128 0x32
	.4byte	.LVL184
	.4byte	0x2e11
	.uleb128 0x35
	.4byte	.LVL185
	.4byte	0x2c3f
	.4byte	0x3120
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.4byte	.LVL186
	.4byte	0x2872
	.uleb128 0x35
	.4byte	.LVL188
	.4byte	0x2af6
	.4byte	0x316b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xc
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xc
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x35
	.4byte	.LVL189
	.4byte	0x415a
	.4byte	0x3183
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL195
	.4byte	0x415a
	.4byte	0x319b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.4byte	.LVL200
	.4byte	0x2e4d
	.byte	0
	.uleb128 0x42
	.4byte	.LASF577
	.byte	0x1
	.2byte	0x1b5
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3279
	.uleb128 0x43
	.string	"x1"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x43
	.string	"y1"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x43
	.string	"x2"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x43
	.string	"y2"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3b
	.4byte	.LASF544
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x2826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x43
	.string	"len"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x10a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x32
	.4byte	.LVL202
	.4byte	0x2e11
	.uleb128 0x35
	.4byte	.LVL203
	.4byte	0x2af6
	.4byte	0x324b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x35
	.4byte	.LVL204
	.4byte	0x2c7a
	.4byte	0x326f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.4byte	.LVL205
	.4byte	0x2e4d
	.byte	0
	.uleb128 0x42
	.4byte	.LASF578
	.byte	0x1
	.2byte	0x1c4
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3336
	.uleb128 0x43
	.string	"x1"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x43
	.string	"y1"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x43
	.string	"x2"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x43
	.string	"y2"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x43
	.string	"len"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x10a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x43
	.string	"buf"
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x29a9
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x35
	.4byte	.LVL207
	.4byte	0x2af6
	.4byte	0x3315
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL208
	.4byte	0x2c7a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF580
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34a6
	.uleb128 0x2c
	.string	"x1"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25
	.4byte	.LLST46
	.uleb128 0x2c
	.string	"y1"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25
	.4byte	.LLST47
	.uleb128 0x2c
	.string	"x2"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25
	.4byte	.LLST48
	.uleb128 0x43
	.string	"y2"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x25
	.4byte	.LLST49
	.uleb128 0x43
	.string	"buf"
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x2c39
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x3b
	.4byte	.LASF581
	.byte	0x1
	.2byte	0x1cf
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.string	"t"
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x255b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.4byte	.LASF582
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x10a
	.4byte	.LLST50
	.uleb128 0x2e
	.string	"res"
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x127
	.4byte	.LLST51
	.uleb128 0x35
	.4byte	.LVL211
	.4byte	0x41ac
	.4byte	0x3409
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0
	.uleb128 0x32
	.4byte	.LVL212
	.4byte	0x2e4d
	.uleb128 0x32
	.4byte	.LVL213
	.4byte	0x41b5
	.uleb128 0x32
	.4byte	.LVL216
	.4byte	0x41c0
	.uleb128 0x32
	.4byte	.LVL219
	.4byte	0x2e11
	.uleb128 0x35
	.4byte	.LVL220
	.4byte	0x2af6
	.4byte	0x3463
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x6
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x35
	.4byte	.LVL221
	.4byte	0x2e83
	.4byte	0x3477
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.uleb128 0x35
	.4byte	.LVL224
	.4byte	0x41cb
	.4byte	0x348c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x32
	.4byte	.LVL226
	.4byte	0x2e4d
	.uleb128 0x3a
	.4byte	.LVL229
	.4byte	0x41c0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF583
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x2826
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3540
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xe9
	.4byte	.LLST52
	.uleb128 0x43
	.string	"y"
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xe9
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF584
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x26c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x2f
	.4byte	.LASF544
	.byte	0x1
	.2byte	0x200
	.4byte	0x2826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x3a
	.4byte	.LVL235
	.4byte	0x3336
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x6
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x8
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF585
	.byte	0x1
	.2byte	0x20a
	.4byte	0x25
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35af
	.uleb128 0x2b
	.4byte	.LASF586
	.byte	0x1
	.2byte	0x20a
	.4byte	0xde
	.4byte	.LLST53
	.uleb128 0x2e
	.string	"res"
	.byte	0x1
	.2byte	0x220
	.4byte	0xf4
	.4byte	.LLST54
	.uleb128 0x35
	.4byte	.LVL238
	.4byte	0x4144
	.4byte	0x358d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL239
	.4byte	0x2831
	.4byte	0x35a5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x32
	.4byte	.LVL242
	.4byte	0x414f
	.byte	0
	.uleb128 0x45
	.4byte	.LASF587
	.byte	0x1
	.2byte	0x252
	.4byte	0x10a
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x360a
	.uleb128 0x2e
	.string	"tid"
	.byte	0x1
	.2byte	0x254
	.4byte	0xf4
	.4byte	.LLST55
	.uleb128 0x2f
	.4byte	.LASF588
	.byte	0x1
	.2byte	0x255
	.4byte	0xde
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x35
	.4byte	.LVL244
	.4byte	0x29af
	.4byte	0x35fa
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL246
	.4byte	0x2a1e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.LASF604
	.byte	0x1
	.2byte	0x25a
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x37d2
	.uleb128 0x35
	.4byte	.LVL248
	.4byte	0x2a8b
	.4byte	0x3638
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x35
	.4byte	.LVL249
	.4byte	0x41a0
	.4byte	0x364b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL250
	.4byte	0x2a8b
	.4byte	0x3663
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x35
	.4byte	.LVL251
	.4byte	0x2a8b
	.4byte	0x367b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL252
	.4byte	0x2a8b
	.4byte	0x3695
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x48
	.byte	0
	.uleb128 0x35
	.4byte	.LVL253
	.4byte	0x41a0
	.4byte	0x36a8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL254
	.4byte	0x2a8b
	.4byte	0x36c1
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x21
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL255
	.4byte	0x2a8b
	.4byte	0x36d9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL256
	.4byte	0x2a8b
	.4byte	0x36f3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xe3
	.byte	0
	.uleb128 0x35
	.4byte	.LVL257
	.4byte	0x2a8b
	.4byte	0x370c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL258
	.4byte	0x2a8b
	.4byte	0x3725
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL259
	.4byte	0x2a8b
	.4byte	0x373e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL260
	.4byte	0x2a8b
	.4byte	0x3757
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x35
	.4byte	.LVL261
	.4byte	0x2a8b
	.4byte	0x3770
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x58
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL262
	.4byte	0x2a8b
	.4byte	0x378a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL263
	.4byte	0x2a8b
	.4byte	0x37a4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL264
	.4byte	0x2a8b
	.4byte	0x37bd
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL265
	.4byte	0x2a8b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF589
	.byte	0x1
	.2byte	0x274
	.4byte	0x25
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x392b
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.2byte	0x274
	.4byte	0x1bb
	.4byte	.LLST56
	.uleb128 0x2c
	.string	"y"
	.byte	0x1
	.2byte	0x274
	.4byte	0x1bb
	.4byte	.LLST57
	.uleb128 0x2c
	.string	"z"
	.byte	0x1
	.2byte	0x274
	.4byte	0x1bb
	.4byte	.LLST58
	.uleb128 0x2d
	.4byte	.LASF590
	.byte	0x1
	.2byte	0x279
	.4byte	0xde
	.4byte	.LLST59
	.uleb128 0x30
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x387a
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x285
	.4byte	0xde
	.4byte	.LLST60
	.uleb128 0x35
	.4byte	.LVL280
	.4byte	0x29af
	.4byte	0x3855
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4d
	.byte	0
	.uleb128 0x35
	.4byte	.LVL281
	.4byte	0x29af
	.4byte	0x3869
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL282
	.4byte	0x2a1e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL267
	.4byte	0x2a1e
	.4byte	0x388e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x35
	.4byte	.LVL268
	.4byte	0x2a1e
	.4byte	0x38a2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.uleb128 0x35
	.4byte	.LVL270
	.4byte	0x2a1e
	.4byte	0x38b6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x35
	.4byte	.LVL271
	.4byte	0x2a1e
	.4byte	0x38ca
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.uleb128 0x35
	.4byte	.LVL273
	.4byte	0x2a1e
	.4byte	0x38de
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x35
	.4byte	.LVL274
	.4byte	0x29af
	.4byte	0x38f2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4d
	.byte	0
	.uleb128 0x35
	.4byte	.LVL275
	.4byte	0x29af
	.4byte	0x3906
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.uleb128 0x35
	.4byte	.LVL276
	.4byte	0x2a1e
	.4byte	0x391a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL277
	.4byte	0x2a1e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.byte	0
	.uleb128 0x45
	.4byte	.LASF591
	.byte	0x1
	.2byte	0x29c
	.4byte	0x10a
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b0b
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x29e
	.4byte	0x127
	.4byte	.LLST61
	.uleb128 0x2f
	.4byte	.LASF544
	.byte	0x1
	.2byte	0x29f
	.4byte	0x2826
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.4byte	.LASF592
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x10a
	.4byte	.LLST62
	.uleb128 0x2d
	.4byte	.LASF593
	.byte	0x1
	.2byte	0x2a1
	.4byte	0x10a
	.4byte	.LLST63
	.uleb128 0x2f
	.4byte	.LASF594
	.byte	0x1
	.2byte	0x2a1
	.4byte	0x10a
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x2d
	.4byte	.LASF595
	.byte	0x1
	.2byte	0x2a2
	.4byte	0x25
	.4byte	.LLST64
	.uleb128 0x2d
	.4byte	.LASF596
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x29a9
	.4byte	.LLST65
	.uleb128 0x2d
	.4byte	.LASF597
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x2c39
	.4byte	.LLST66
	.uleb128 0x34
	.string	"gs"
	.byte	0x1
	.2byte	0x2a5
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x47
	.4byte	.LASF645
	.byte	0x1
	.2byte	0x2d7
	.4byte	.L109
	.uleb128 0x2d
	.4byte	.LASF598
	.byte	0x1
	.2byte	0x2b0
	.4byte	0x29a9
	.4byte	.LLST67
	.uleb128 0x30
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x3a08
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x25
	.4byte	.LLST68
	.byte	0
	.uleb128 0x30
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x3aa1
	.uleb128 0x2d
	.4byte	.LASF599
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x10a
	.4byte	.LLST69
	.uleb128 0x3d
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x3a3d
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x25
	.4byte	.LLST70
	.byte	0
	.uleb128 0x35
	.4byte	.LVL308
	.4byte	0x41c0
	.4byte	0x3a51
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL310
	.4byte	0x41ac
	.4byte	0x3a6a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.4byte	.LVL311
	.4byte	0x2e11
	.uleb128 0x35
	.4byte	.LVL312
	.4byte	0x3279
	.4byte	0x3a87
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL313
	.4byte	0x2e4d
	.uleb128 0x3a
	.4byte	.LVL314
	.4byte	0x3336
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL296
	.4byte	0x41b5
	.uleb128 0x35
	.4byte	.LVL298
	.4byte	0x41d7
	.4byte	0x3abe
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL300
	.4byte	0x41d7
	.4byte	0x3ad2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 1
	.byte	0
	.uleb128 0x35
	.4byte	.LVL330
	.4byte	0x417e
	.4byte	0x3ae6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL331
	.4byte	0x417e
	.4byte	0x3afa
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL333
	.4byte	0x41c0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	.LASF600
	.byte	0x1
	.2byte	0x2fe
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b9f
	.uleb128 0x2c
	.string	"rot"
	.byte	0x1
	.2byte	0x2fe
	.4byte	0xde
	.4byte	.LLST71
	.uleb128 0x2d
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x2ff
	.4byte	0xde
	.4byte	.LLST72
	.uleb128 0x48
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x300
	.4byte	0xde
	.byte	0x1
	.uleb128 0x2f
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x301
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.string	"tmp"
	.byte	0x1
	.2byte	0x302
	.4byte	0xf4
	.4byte	.LLST73
	.uleb128 0x32
	.4byte	.LVL341
	.4byte	0x2e11
	.uleb128 0x35
	.4byte	.LVL342
	.4byte	0x2ed4
	.4byte	0x3b95
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.4byte	.LVL343
	.4byte	0x2e4d
	.byte	0
	.uleb128 0x46
	.4byte	.LASF605
	.byte	0x1
	.2byte	0x35b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cfc
	.uleb128 0x35
	.4byte	.LVL344
	.4byte	0x41e2
	.4byte	0x3bc8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x35
	.4byte	.LVL345
	.4byte	0x41e2
	.4byte	0x3bdb
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x43
	.byte	0
	.uleb128 0x35
	.4byte	.LVL346
	.4byte	0x41e2
	.4byte	0x3bee
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x47
	.byte	0
	.uleb128 0x35
	.4byte	.LVL347
	.4byte	0x41e2
	.4byte	0x3c01
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.byte	0
	.uleb128 0x35
	.4byte	.LVL348
	.4byte	0x41e2
	.4byte	0x3c14
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x35
	.4byte	.LVL349
	.4byte	0x41ed
	.4byte	0x3c2c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL350
	.4byte	0x41f9
	.4byte	0x3c44
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL351
	.4byte	0x41ed
	.4byte	0x3c5c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x35
	.4byte	.LVL352
	.4byte	0x41ed
	.4byte	0x3c74
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x47
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x35
	.4byte	.LVL353
	.4byte	0x41ed
	.4byte	0x3c8c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x35
	.4byte	.LVL354
	.4byte	0x41ed
	.4byte	0x3ca4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x35
	.4byte	.LVL355
	.4byte	0x415a
	.4byte	0x3cbc
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL356
	.4byte	0x41e2
	.4byte	0x3ccf
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.uleb128 0x35
	.4byte	.LVL357
	.4byte	0x41ed
	.4byte	0x3ce7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL358
	.4byte	0x415a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.LASF606
	.byte	0x1
	.2byte	0x37e
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f6e
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.2byte	0x380
	.4byte	0x127
	.4byte	.LLST74
	.uleb128 0x49
	.4byte	.LASF607
	.4byte	0x3f7e
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6501
	.uleb128 0x30
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x3dad
	.uleb128 0x34
	.string	"dt"
	.byte	0x1
	.2byte	0x3a2
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x35
	.4byte	.LVL384
	.4byte	0x2fc7
	.4byte	0x3d63
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	STP7735R_init
	.byte	0
	.uleb128 0x35
	.4byte	.LVL385
	.4byte	0x2fc7
	.4byte	0x3d7a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	Rcmd2red
	.byte	0
	.uleb128 0x35
	.4byte	.LVL386
	.4byte	0x2fc7
	.4byte	0x3d91
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	Rcmd3
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL387
	.4byte	0x2ed4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL359
	.4byte	0x415a
	.4byte	0x3dc5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL360
	.4byte	0x41a0
	.4byte	0x3dd8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x35
	.4byte	.LVL361
	.4byte	0x415a
	.4byte	0x3df0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x35
	.4byte	.LVL362
	.4byte	0x41a0
	.4byte	0x3e03
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x32
	.4byte	.LVL363
	.4byte	0x2e11
	.uleb128 0x35
	.4byte	.LVL365
	.4byte	0x4205
	.4byte	0x3e3c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x38b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6501
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.byte	0
	.uleb128 0x35
	.4byte	.LVL367
	.4byte	0x2fc7
	.4byte	0x3e53
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ILI9341_init
	.byte	0
	.uleb128 0x35
	.4byte	.LVL370
	.4byte	0x2fc7
	.4byte	0x3e6a
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ILI9488_init
	.byte	0
	.uleb128 0x35
	.4byte	.LVL373
	.4byte	0x2fc7
	.4byte	0x3e81
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	ST7789V_init
	.byte	0
	.uleb128 0x35
	.4byte	.LVL376
	.4byte	0x2fc7
	.4byte	0x3e98
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	STP7735_init
	.byte	0
	.uleb128 0x35
	.4byte	.LVL379
	.4byte	0x2fc7
	.4byte	0x3eaf
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	STP7735R_init
	.byte	0
	.uleb128 0x35
	.4byte	.LVL380
	.4byte	0x2fc7
	.4byte	0x3ec6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	Rcmd2green
	.byte	0
	.uleb128 0x35
	.4byte	.LVL381
	.4byte	0x2fc7
	.4byte	0x3edd
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	Rcmd3
	.byte	0
	.uleb128 0x35
	.4byte	.LVL390
	.4byte	0x4205
	.4byte	0x3f0d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3a5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6501
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC88
	.byte	0
	.uleb128 0x32
	.4byte	.LVL391
	.4byte	0x2e4d
	.uleb128 0x35
	.4byte	.LVL393
	.4byte	0x4205
	.4byte	0x3f46
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC76
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3a8
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6501
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC73
	.byte	0
	.uleb128 0x35
	.4byte	.LVL395
	.4byte	0x3b0b
	.4byte	0x3f59
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL396
	.4byte	0x31a5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0xcc
	.4byte	0x3f7e
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0x10
	.byte	0
	.uleb128 0x41
	.4byte	0x3f6e
	.uleb128 0x1b
	.4byte	0xde
	.4byte	0x3f93
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0x4f
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF608
	.byte	0xd
	.2byte	0x157
	.4byte	0x3fa5
	.uleb128 0x5
	.byte	0x3
	.4byte	ST7789V_init
	.uleb128 0x41
	.4byte	0x3f83
	.uleb128 0x1b
	.4byte	0xde
	.4byte	0x3fba
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0x76
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF609
	.byte	0xd
	.2byte	0x177
	.4byte	0x3fcc
	.uleb128 0x5
	.byte	0x3
	.4byte	ILI9341_init
	.uleb128 0x41
	.4byte	0x3faa
	.uleb128 0x1b
	.4byte	0xde
	.4byte	0x3fe1
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0x55
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF610
	.byte	0xd
	.2byte	0x1a3
	.4byte	0x3ff3
	.uleb128 0x5
	.byte	0x3
	.4byte	ILI9488_init
	.uleb128 0x41
	.4byte	0x3fd1
	.uleb128 0x1b
	.4byte	0xde
	.4byte	0x4008
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0x60
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF611
	.byte	0xd
	.2byte	0x1e8
	.4byte	0x401a
	.uleb128 0x5
	.byte	0x3
	.4byte	STP7735_init
	.uleb128 0x41
	.4byte	0x3ff8
	.uleb128 0x1b
	.4byte	0xde
	.4byte	0x402f
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0x38
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF612
	.byte	0xd
	.2byte	0x228
	.4byte	0x4041
	.uleb128 0x5
	.byte	0x3
	.4byte	STP7735R_init
	.uleb128 0x41
	.4byte	0x401f
	.uleb128 0x1b
	.4byte	0xde
	.4byte	0x4056
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0xc
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF613
	.byte	0xd
	.2byte	0x259
	.4byte	0x4068
	.uleb128 0x5
	.byte	0x3
	.4byte	Rcmd2green
	.uleb128 0x41
	.4byte	0x4046
	.uleb128 0x2f
	.4byte	.LASF614
	.byte	0xd
	.2byte	0x265
	.4byte	0x407f
	.uleb128 0x5
	.byte	0x3
	.4byte	Rcmd2red
	.uleb128 0x41
	.4byte	0x4046
	.uleb128 0x1b
	.4byte	0xde
	.4byte	0x4094
	.uleb128 0x1c
	.4byte	0xbc
	.byte	0x2a
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF615
	.byte	0xd
	.2byte	0x271
	.4byte	0x40a6
	.uleb128 0x5
	.byte	0x3
	.4byte	Rcmd3
	.uleb128 0x41
	.4byte	0x4084
	.uleb128 0x28
	.4byte	.LASF616
	.byte	0x1
	.byte	0x29
	.4byte	0x29a9
	.uleb128 0x5
	.byte	0x3
	.4byte	trans_cline
	.uleb128 0x28
	.4byte	.LASF617
	.byte	0x1
	.byte	0x2a
	.4byte	0xde
	.uleb128 0x5
	.byte	0x3
	.4byte	_dma_sending
	.uleb128 0x4a
	.4byte	.LASF618
	.byte	0x1
	.byte	0x17
	.4byte	0xde
	.uleb128 0x5
	.byte	0x3
	.4byte	gray_scale
	.uleb128 0x4a
	.4byte	.LASF619
	.byte	0x1
	.byte	0x19
	.4byte	0x10a
	.uleb128 0x5
	.byte	0x3
	.4byte	max_rdclock
	.uleb128 0x4a
	.4byte	.LASF620
	.byte	0x1
	.byte	0x1c
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	_width
	.uleb128 0x4a
	.4byte	.LASF621
	.byte	0x1
	.byte	0x1d
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	_height
	.uleb128 0x4a
	.4byte	.LASF622
	.byte	0x1
	.byte	0x20
	.4byte	0xde
	.uleb128 0x5
	.byte	0x3
	.4byte	tft_disp_type
	.uleb128 0x4a
	.4byte	.LASF623
	.byte	0x1
	.byte	0x23
	.4byte	0x27f4
	.uleb128 0x5
	.byte	0x3
	.4byte	disp_spi
	.uleb128 0x4a
	.4byte	.LASF624
	.byte	0x1
	.byte	0x24
	.4byte	0x27f4
	.uleb128 0x5
	.byte	0x3
	.4byte	ts_spi
	.uleb128 0x4b
	.4byte	.LASF625
	.4byte	.LASF625
	.byte	0xc
	.byte	0xed
	.uleb128 0x4b
	.4byte	.LASF626
	.4byte	.LASF626
	.byte	0xc
	.byte	0xfc
	.uleb128 0x4c
	.4byte	.LASF627
	.4byte	.LASF627
	.byte	0x8
	.2byte	0x13b
	.uleb128 0x4c
	.4byte	.LASF628
	.4byte	.LASF628
	.byte	0xc
	.2byte	0x15c
	.uleb128 0x4c
	.4byte	.LASF629
	.4byte	.LASF629
	.byte	0xc
	.2byte	0x144
	.uleb128 0x4b
	.4byte	.LASF630
	.4byte	.LASF630
	.byte	0xe
	.byte	0x5a
	.uleb128 0x4c
	.4byte	.LASF631
	.4byte	.LASF631
	.byte	0xc
	.2byte	0x154
	.uleb128 0x4b
	.4byte	.LASF632
	.4byte	.LASF632
	.byte	0xf
	.byte	0x37
	.uleb128 0x4c
	.4byte	.LASF633
	.4byte	.LASF633
	.byte	0x10
	.2byte	0x32e
	.uleb128 0x4d
	.4byte	.LASF646
	.4byte	.LASF646
	.uleb128 0x4b
	.4byte	.LASF634
	.4byte	.LASF634
	.byte	0xc
	.byte	0xcd
	.uleb128 0x4b
	.4byte	.LASF635
	.4byte	.LASF635
	.byte	0xc
	.byte	0xdc
	.uleb128 0x4c
	.4byte	.LASF636
	.4byte	.LASF636
	.byte	0xc
	.2byte	0x12c
	.uleb128 0x4b
	.4byte	.LASF637
	.4byte	.LASF637
	.byte	0xe
	.byte	0x65
	.uleb128 0x4b
	.4byte	.LASF638
	.4byte	.LASF638
	.byte	0x11
	.byte	0xf6
	.uleb128 0x4c
	.4byte	.LASF639
	.4byte	.LASF639
	.byte	0x8
	.2byte	0x158
	.uleb128 0x4c
	.4byte	.LASF640
	.4byte	.LASF640
	.byte	0x8
	.2byte	0x167
	.uleb128 0x4b
	.4byte	.LASF641
	.4byte	.LASF641
	.byte	0x12
	.byte	0x29
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
	.uleb128 0xd
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
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x17
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LFE20
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL49
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL70
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL70
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL86
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL99
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL119
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL99
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL112
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL113
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL114
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x3
	.byte	0x7a
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x3
	.byte	0x7a
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x3
	.byte	0x78
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL159-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x3
	.byte	0x7c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL175
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL180
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL166
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL182
	.4byte	.LFE41
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x2
	.byte	0x7c
	.sleb128 1
	.4byte	.LVL170
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL167
	.4byte	.LVL171
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL171
	.4byte	.LVL172-1
	.2byte	0x2
	.byte	0x74
	.sleb128 -2
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL169
	.4byte	.LVL175
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x9
	.byte	0x80
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL183
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL183
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL191
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL185
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL194
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x3
	.byte	0x78
	.sleb128 128
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1c
	.byte	0x91
	.sleb128 -63
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x91
	.sleb128 -62
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 -64
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL209
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL222
	.4byte	.LVL230
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL233
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL209
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL227
	.4byte	.LVL230
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL233
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL209
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL228
	.4byte	.LVL230
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL233
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL209
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL223
	.4byte	.LVL230
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL233
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL210
	.4byte	.LVL214
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL215
	.4byte	.LVL217
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL217
	.4byte	.LVL218
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL218
	.4byte	.LVL230
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL230
	.4byte	.LVL232
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LFE31
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL225
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL234
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL236
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL237
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL240
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL241
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL245
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL266
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LVL289
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL291
	.4byte	.LVL292
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL292
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL293
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL266
	.4byte	.LVL286
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL266
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL285
	.4byte	.LVL288
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL288
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL269
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL290
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL279
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL284
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL322
	.4byte	.LVL323
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL294
	.4byte	.LVL307
	.2byte	0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.4byte	.LVL307
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL326
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL327
	.4byte	.LVL329
	.2byte	0x6
	.byte	0xc
	.4byte	0xf4240
	.byte	0x9f
	.4byte	.LVL329
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL308
	.4byte	.LVL309
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL314
	.4byte	.LVL315
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL315
	.4byte	.LVL316
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL317
	.4byte	.LVL318
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL319
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL322
	.4byte	.LVL323
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL323
	.4byte	.LVL326
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL294
	.4byte	.LVL299
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL299
	.4byte	.LVL332
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL294
	.4byte	.LVL301
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL327
	.4byte	.LVL328
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL328
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL302
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL303
	.4byte	.LVL304
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL304
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL307
	.4byte	.LVL325
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL325
	.4byte	.LVL326
	.2byte	0x5
	.byte	0x75
	.sleb128 1000000
	.byte	0x9f
	.4byte	.LVL326
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL315
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL334
	.4byte	.LVL336
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL336
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL335
	.4byte	.LVL341-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL341-1
	.4byte	.LFE42
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL337
	.4byte	.LVL338
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL339
	.4byte	.LVL340
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL363
	.4byte	.LVL364
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL365
	.4byte	.LVL366
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL371
	.4byte	.LVL372
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL374
	.4byte	.LVL375
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL377
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL382
	.4byte	.LVL383
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL388
	.4byte	.LVL389
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL391
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL393
	.4byte	.LVL394
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
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
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB25
	.4byte	.LFE25
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
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF129:
	.string	"cs2_dis"
.LASF552:
	.string	"wbits"
.LASF81:
	.string	"miso_delay_mode"
.LASF218:
	.string	"out_data_burst_en"
.LASF19:
	.string	"int8_t"
.LASF303:
	.string	"dma_out_eof_des_addr"
.LASF2:
	.string	"size_t"
.LASF16:
	.string	"sizetype"
.LASF90:
	.string	"clkdiv_pre"
.LASF226:
	.string	"start"
.LASF37:
	.string	"GPIO_PULLUP_ONLY"
.LASF440:
	.string	"reserved_35c"
.LASF595:
	.string	"line_check"
.LASF140:
	.string	"wr_buf_done"
.LASF486:
	.string	"owner"
.LASF604:
	.string	"stmpe610_Init"
.LASF250:
	.string	"user2"
.LASF441:
	.string	"reserved_360"
.LASF442:
	.string	"reserved_364"
.LASF385:
	.string	"reserved_280"
.LASF443:
	.string	"reserved_368"
.LASF248:
	.string	"user"
.LASF142:
	.string	"wr_sta_done"
.LASF77:
	.string	"setup_time"
.LASF212:
	.string	"in_loop_test"
.LASF23:
	.string	"int32_t"
.LASF330:
	.string	"reserved_1a4"
.LASF511:
	.string	"duty_cycle_pos"
.LASF331:
	.string	"reserved_1a8"
.LASF610:
	.string	"ILI9488_init"
.LASF35:
	.string	"GPIO_MODE_INPUT_OUTPUT_OD"
.LASF80:
	.string	"ck_out_high_mode"
.LASF83:
	.string	"mosi_delay_mode"
.LASF581:
	.string	"set_sp"
.LASF231:
	.string	"tx_en"
.LASF52:
	.string	"flash_wrsr"
.LASF444:
	.string	"reserved_36c"
.LASF607:
	.string	"__func__"
.LASF414:
	.string	"reserved_2f4"
.LASF500:
	.string	"spi_lobo_transaction_t"
.LASF445:
	.string	"reserved_370"
.LASF332:
	.string	"reserved_1ac"
.LASF447:
	.string	"reserved_378"
.LASF545:
	.string	"_color"
.LASF38:
	.string	"GPIO_PULLDOWN_ONLY"
.LASF571:
	.string	"bidx"
.LASF252:
	.string	"miso_dlen"
.LASF333:
	.string	"reserved_1b0"
.LASF334:
	.string	"reserved_1b4"
.LASF176:
	.string	"bit_len"
.LASF582:
	.string	"current_clock"
.LASF293:
	.string	"dma_int_ena"
.LASF603:
	.string	"madctl"
.LASF99:
	.string	"rd_byte_order"
.LASF448:
	.string	"reserved_37c"
.LASF488:
	.string	"lldesc_t"
.LASF506:
	.string	"spi_lobo_transaction_cb_t"
.LASF573:
	.string	"commandList"
.LASF172:
	.string	"rdbuf_cmd_value"
.LASF196:
	.string	"usr_rd_cmd_bitlen"
.LASF86:
	.string	"cs_delay_num"
.LASF586:
	.string	"type"
.LASF279:
	.string	"reserved_d8"
.LASF449:
	.string	"reserved_380"
.LASF336:
	.string	"reserved_1bc"
.LASF285:
	.string	"ext0"
.LASF286:
	.string	"ext1"
.LASF259:
	.string	"slv_rdbuf_dlen"
.LASF288:
	.string	"ext3"
.LASF254:
	.string	"slave"
.LASF513:
	.string	"cs_ena_posttrans"
.LASF337:
	.string	"reserved_1c0"
.LASF266:
	.string	"reserved_68"
.LASF570:
	.string	"disp_spi_transfer_cmd_data"
.LASF338:
	.string	"reserved_1c4"
.LASF187:
	.string	"sram_bytes_len"
.LASF600:
	.string	"_tft_setRotation"
.LASF154:
	.string	"cmd_define"
.LASF146:
	.string	"rd_sta_inten"
.LASF431:
	.string	"reserved_338"
.LASF452:
	.string	"reserved_38c"
.LASF51:
	.string	"flash_pp"
.LASF618:
	.string	"gray_scale"
.LASF136:
	.string	"ck_idle_edge"
.LASF558:
	.string	"disp_spi_transfer_addrwin"
.LASF262:
	.string	"sram_cmd"
.LASF267:
	.string	"reserved_6c"
.LASF5:
	.string	"__uint8_t"
.LASF453:
	.string	"reserved_390"
.LASF340:
	.string	"reserved_1cc"
.LASF455:
	.string	"reserved_398"
.LASF515:
	.string	"spics_io_num"
.LASF588:
	.string	"tver"
.LASF200:
	.string	"t_pp_time"
.LASF269:
	.string	"reserved_74"
.LASF565:
	.string	"buf_bytes"
.LASF341:
	.string	"reserved_1d0"
.LASF270:
	.string	"reserved_78"
.LASF342:
	.string	"reserved_1d4"
.LASF300:
	.string	"dma_inlink_dscr_bf0"
.LASF301:
	.string	"dma_inlink_dscr_bf1"
.LASF287:
	.string	"ext2"
.LASF392:
	.string	"reserved_29c"
.LASF561:
	.string	"free_line"
.LASF615:
	.string	"Rcmd3"
.LASF15:
	.string	"long int"
.LASF456:
	.string	"reserved_39c"
.LASF505:
	.string	"rxlength"
.LASF237:
	.string	"in_suc_eof"
.LASF128:
	.string	"cs1_dis"
.LASF531:
	.string	"cur_device"
.LASF643:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/components/tft/tftspi.c"
.LASF152:
	.string	"last_state"
.LASF344:
	.string	"reserved_1dc"
.LASF79:
	.string	"ck_out_low_mode"
.LASF546:
	.string	"gs_clr"
.LASF614:
	.string	"Rcmd2red"
.LASF168:
	.string	"rdsta_dummy_cyclelen"
.LASF345:
	.string	"reserved_1e0"
.LASF69:
	.string	"rd_bit_order"
.LASF156:
	.string	"wr_rd_buf_en"
.LASF184:
	.string	"usr_wr_sram_dummy"
.LASF306:
	.string	"dma_outlink_dscr_bf1"
.LASF347:
	.string	"reserved_1e8"
.LASF433:
	.string	"reserved_340"
.LASF102:
	.string	"fwrite_quad"
.LASF348:
	.string	"reserved_1ec"
.LASF522:
	.string	"tx_data"
.LASF527:
	.string	"bus_config"
.LASF32:
	.string	"GPIO_MODE_INPUT"
.LASF349:
	.string	"reserved_1f0"
.LASF350:
	.string	"reserved_1f4"
.LASF43:
	.string	"flash_per"
.LASF44:
	.string	"flash_pes"
.LASF351:
	.string	"reserved_1f8"
.LASF41:
	.string	"QueueHandle_t"
.LASF4:
	.string	"signed char"
.LASF590:
	.string	"fifo_size"
.LASF20:
	.string	"uint8_t"
.LASF510:
	.string	"mode"
.LASF50:
	.string	"flash_se"
.LASF162:
	.string	"wrsta_dummy_en"
.LASF574:
	.string	"numCommands"
.LASF104:
	.string	"fwrite_qio"
.LASF352:
	.string	"reserved_1fc"
.LASF171:
	.string	"wrbuf_dummy_cyclelen"
.LASF6:
	.string	"unsigned char"
.LASF264:
	.string	"sram_dwr_cmd"
.LASF296:
	.string	"dma_int_clr"
.LASF393:
	.string	"reserved_2a0"
.LASF289:
	.string	"dma_conf"
.LASF394:
	.string	"reserved_2a4"
.LASF520:
	.string	"spi_lobo_device_interface_config_t"
.LASF395:
	.string	"reserved_2a8"
.LASF33:
	.string	"GPIO_MODE_OUTPUT"
.LASF523:
	.string	"rx_buffer"
.LASF464:
	.string	"reserved_3bc"
.LASF73:
	.string	"cs_hold_delay"
.LASF525:
	.string	"spi_lobo_device_t"
.LASF530:
	.string	"intr"
.LASF113:
	.string	"usr_mosi_highpart"
.LASF210:
	.string	"ahbm_fifo_rst"
.LASF27:
	.string	"_Bool"
.LASF165:
	.string	"status_readback"
.LASF295:
	.string	"dma_int_st"
.LASF144:
	.string	"rd_buf_inten"
.LASF396:
	.string	"reserved_2ac"
.LASF589:
	.string	"stmpe610_get_touch"
.LASF18:
	.string	"char"
.LASF467:
	.string	"reserved_3c8"
.LASF397:
	.string	"reserved_2b0"
.LASF398:
	.string	"reserved_2b4"
.LASF399:
	.string	"reserved_2b8"
.LASF63:
	.string	"resandres"
.LASF147:
	.string	"wr_sta_inten"
.LASF141:
	.string	"rd_sta_done"
.LASF294:
	.string	"dma_int_raw"
.LASF577:
	.string	"TFT_pushColorRep"
.LASF117:
	.string	"usr_dummy"
.LASF9:
	.string	"__uint16_t"
.LASF203:
	.string	"t_pp_ena"
.LASF635:
	.string	"spi_lobo_set_speed"
.LASF161:
	.string	"rdsta_dummy_en"
.LASF400:
	.string	"reserved_2bc"
.LASF549:
	.string	"_direct_send"
.LASF541:
	.string	"spi_dev"
.LASF639:
	.string	"gpio_set_direction"
.LASF106:
	.string	"usr_dout_hold"
.LASF401:
	.string	"reserved_2c0"
.LASF402:
	.string	"reserved_2c4"
.LASF57:
	.string	"flash_read"
.LASF502:
	.string	"flags"
.LASF403:
	.string	"reserved_2c8"
.LASF492:
	.string	"spi_lobo_host_device_t"
.LASF127:
	.string	"cs0_dis"
.LASF468:
	.string	"reserved_3cc"
.LASF477:
	.string	"reserved_3f0"
.LASF616:
	.string	"trans_cline"
.LASF583:
	.string	"readPixel"
.LASF329:
	.string	"reserved_1a0"
.LASF304:
	.string	"dma_outlink_dscr"
.LASF183:
	.string	"usr_sram_qio"
.LASF148:
	.string	"trans_inten"
.LASF567:
	.string	"disp_select"
.LASF612:
	.string	"STP7735R_init"
.LASF646:
	.string	"memset"
.LASF62:
	.string	"fread_dual"
.LASF533:
	.string	"dmadesc_rx"
.LASF404:
	.string	"reserved_2cc"
.LASF470:
	.string	"reserved_3d4"
.LASF132:
	.string	"master_cs_pol"
.LASF70:
	.string	"wr_bit_order"
.LASF406:
	.string	"reserved_2d4"
.LASF407:
	.string	"reserved_2d8"
.LASF84:
	.string	"mosi_delay_num"
.LASF240:
	.string	"out_total_eof"
.LASF307:
	.string	"dma_rx_status"
.LASF539:
	.string	"spi_lobo_device_handle_t"
.LASF211:
	.string	"ahbm_rst"
.LASF637:
	.string	"malloc"
.LASF31:
	.string	"GPIO_MODE_DISABLE"
.LASF186:
	.string	"cache_sram_usr_rcmd"
.LASF185:
	.string	"usr_rd_sram_dummy"
.LASF178:
	.string	"usr_cmd_4byte"
.LASF576:
	.string	"drawPixel"
.LASF230:
	.string	"rx_en"
.LASF261:
	.string	"cache_sctrl"
.LASF584:
	.string	"color_buf"
.LASF408:
	.string	"reserved_2dc"
.LASF512:
	.string	"cs_ena_pretrans"
.LASF599:
	.string	"speed"
.LASF54:
	.string	"flash_rdid"
.LASF34:
	.string	"GPIO_MODE_OUTPUT_OD"
.LASF409:
	.string	"reserved_2e0"
.LASF244:
	.string	"ctrl1"
.LASF246:
	.string	"ctrl2"
.LASF411:
	.string	"reserved_2e8"
.LASF260:
	.string	"cache_fctrl"
.LASF537:
	.string	"cur_bus_config"
.LASF174:
	.string	"rdsta_cmd_value"
.LASF75:
	.string	"wb_mode"
.LASF227:
	.string	"restart"
.LASF107:
	.string	"usr_din_hold"
.LASF82:
	.string	"miso_delay_num"
.LASF598:
	.string	"rdline"
.LASF641:
	.string	"__assert_func"
.LASF335:
	.string	"reserved_1b8"
.LASF412:
	.string	"reserved_2ec"
.LASF629:
	.string	"spi_lobo_setup_dma_desc_links"
.LASF499:
	.string	"spi_lobo_bus_config_t"
.LASF209:
	.string	"out_rst"
.LASF475:
	.string	"reserved_3e8"
.LASF413:
	.string	"reserved_2f0"
.LASF233:
	.string	"outlink_dscr_error"
.LASF630:
	.string	"free"
.LASF489:
	.string	"TFT_SPI_HOST"
.LASF415:
	.string	"reserved_2f8"
.LASF66:
	.string	"wrsr_2b"
.LASF621:
	.string	"_height"
.LASF169:
	.string	"wrsta_dummy_cyclelen"
.LASF554:
	.string	"color2gs"
.LASF13:
	.string	"__uint64_t"
.LASF593:
	.string	"change_speed"
.LASF17:
	.string	"long unsigned int"
.LASF96:
	.string	"ck_i_edge"
.LASF487:
	.string	"empty"
.LASF636:
	.string	"spi_lobo_transfer_data"
.LASF78:
	.string	"hold_time"
.LASF74:
	.string	"status"
.LASF416:
	.string	"reserved_2fc"
.LASF597:
	.string	"line_rdbuf"
.LASF126:
	.string	"usr_miso_dbitlen"
.LASF480:
	.string	"spi_dev_t"
.LASF496:
	.string	"quadwp_io_num"
.LASF450:
	.string	"reserved_384"
.LASF457:
	.string	"reserved_3a0"
.LASF562:
	.string	"_TFT_pushColorRep"
.LASF458:
	.string	"reserved_3a4"
.LASF451:
	.string	"reserved_388"
.LASF459:
	.string	"reserved_3a8"
.LASF569:
	.string	"disp_spi_transfer_cmd"
.LASF517:
	.string	"pre_cb"
.LASF189:
	.string	"sram_addr_bitlen"
.LASF177:
	.string	"req_en"
.LASF247:
	.string	"clock"
.LASF644:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\tft"
.LASF339:
	.string	"reserved_1c8"
.LASF197:
	.string	"usr_wr_cmd_value"
.LASF460:
	.string	"reserved_3ac"
.LASF68:
	.string	"fread_qio"
.LASF461:
	.string	"reserved_3b0"
.LASF462:
	.string	"reserved_3b4"
.LASF297:
	.string	"dma_in_err_eof_des_addr"
.LASF463:
	.string	"reserved_3b8"
.LASF534:
	.string	"no_gpio_matrix"
.LASF620:
	.string	"_width"
.LASF437:
	.string	"reserved_350"
.LASF606:
	.string	"TFT_display_init"
.LASF116:
	.string	"usr_miso"
.LASF85:
	.string	"cs_delay_mode"
.LASF92:
	.string	"doutdin"
.LASF602:
	.string	"send"
.LASF206:
	.string	"t_erase_ena"
.LASF11:
	.string	"__uint32_t"
.LASF238:
	.string	"out_done"
.LASF12:
	.string	"long long int"
.LASF61:
	.string	"fastrd_mode"
.LASF221:
	.string	"dma_tx_stop"
.LASF454:
	.string	"reserved_394"
.LASF465:
	.string	"reserved_3c0"
.LASF245:
	.string	"rd_status"
.LASF466:
	.string	"reserved_3c4"
.LASF29:
	.string	"intr_handle_data_t"
.LASF255:
	.string	"slave1"
.LASF256:
	.string	"slave2"
.LASF257:
	.string	"slave3"
.LASF108:
	.string	"usr_dummy_hold"
.LASF528:
	.string	"host_dev"
.LASF516:
	.string	"spics_ext_io_num"
.LASF173:
	.string	"wrbuf_cmd_value"
.LASF88:
	.string	"clkcnt_h"
.LASF36:
	.string	"GPIO_MODE_INPUT_OUTPUT"
.LASF87:
	.string	"clkcnt_l"
.LASF627:
	.string	"gpio_set_level"
.LASF89:
	.string	"clkcnt_n"
.LASF26:
	.string	"esp_err_t"
.LASF343:
	.string	"reserved_1d8"
.LASF601:
	.string	"rotation"
.LASF222:
	.string	"dma_continue"
.LASF122:
	.string	"usr_command_value"
.LASF632:
	.string	"heap_caps_malloc"
.LASF469:
	.string	"reserved_3d0"
.LASF642:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF471:
	.string	"reserved_3d8"
.LASF543:
	.string	"rdbits"
.LASF150:
	.string	"reserved12"
.LASF219:
	.string	"reserved13"
.LASF135:
	.string	"reserved14"
.LASF64:
	.string	"reserved16"
.LASF223:
	.string	"reserved17"
.LASF564:
	.string	"buf_colors"
.LASF572:
	.string	"count"
.LASF225:
	.string	"stop"
.LASF224:
	.string	"addr"
.LASF55:
	.string	"flash_wrdi"
.LASF625:
	.string	"spi_lobo_device_select"
.LASF518:
	.string	"post_cb"
.LASF0:
	.string	"unsigned int"
.LASF472:
	.string	"reserved_3dc"
.LASF228:
	.string	"auto_ret"
.LASF473:
	.string	"reserved_3e0"
.LASF550:
	.string	"cidx"
.LASF474:
	.string	"reserved_3e4"
.LASF204:
	.string	"t_erase_time"
.LASF202:
	.string	"reserved20"
.LASF229:
	.string	"reserved21"
.LASF359:
	.string	"reserved_218"
.LASF617:
	.string	"_dma_sending"
.LASF125:
	.string	"reserved24"
.LASF112:
	.string	"usr_miso_highpart"
.LASF71:
	.string	"reserved27"
.LASF242:
	.string	"reserved28"
.LASF191:
	.string	"reserved29"
.LASF166:
	.string	"status_fast_en"
.LASF524:
	.string	"rx_data"
.LASF553:
	.string	"__tmp"
.LASF346:
	.string	"reserved_1e4"
.LASF56:
	.string	"flash_wren"
.LASF109:
	.string	"usr_addr_hold"
.LASF309:
	.string	"reserved_150"
.LASF310:
	.string	"reserved_154"
.LASF40:
	.string	"GPIO_FLOATING"
.LASF311:
	.string	"reserved_158"
.LASF476:
	.string	"reserved_3ec"
.LASF164:
	.string	"rd_addr_bitlen"
.LASF613:
	.string	"Rcmd2green"
.LASF276:
	.string	"reserved_cc"
.LASF253:
	.string	"slv_wr_status"
.LASF103:
	.string	"fwrite_dio"
.LASF478:
	.string	"reserved_3f4"
.LASF207:
	.string	"int_hold_ena"
.LASF504:
	.string	"address"
.LASF46:
	.string	"flash_res"
.LASF479:
	.string	"reserved_3f8"
.LASF580:
	.string	"read_data"
.LASF138:
	.string	"reserved31"
.LASF277:
	.string	"reserved_d0"
.LASF626:
	.string	"spi_lobo_device_deselect"
.LASF243:
	.string	"ctrl"
.LASF498:
	.string	"max_transfer_sz"
.LASF195:
	.string	"usr_rd_cmd_value"
.LASF312:
	.string	"reserved_15c"
.LASF201:
	.string	"t_pp_shift"
.LASF519:
	.string	"selected"
.LASF272:
	.string	"data_buf"
.LASF619:
	.string	"max_rdclock"
.LASF313:
	.string	"reserved_160"
.LASF220:
	.string	"dma_rx_stop"
.LASF101:
	.string	"fwrite_dual"
.LASF314:
	.string	"reserved_164"
.LASF315:
	.string	"reserved_168"
.LASF353:
	.string	"reserved_200"
.LASF124:
	.string	"usr_mosi_dbitlen"
.LASF354:
	.string	"reserved_204"
.LASF30:
	.string	"intr_handle_t"
.LASF355:
	.string	"reserved_208"
.LASF280:
	.string	"reserved_dc"
.LASF634:
	.string	"spi_lobo_get_speed"
.LASF239:
	.string	"out_eof"
.LASF281:
	.string	"reserved_e0"
.LASF282:
	.string	"reserved_e4"
.LASF139:
	.string	"rd_buf_done"
.LASF217:
	.string	"indscr_burst_en"
.LASF316:
	.string	"reserved_16c"
.LASF482:
	.string	"size"
.LASF123:
	.string	"usr_command_bitlen"
.LASF234:
	.string	"inlink_dscr_error"
.LASF143:
	.string	"trans_done"
.LASF356:
	.string	"reserved_20c"
.LASF49:
	.string	"flash_be"
.LASF317:
	.string	"reserved_170"
.LASF163:
	.string	"wr_addr_bitlen"
.LASF318:
	.string	"reserved_174"
.LASF532:
	.string	"dmadesc_tx"
.LASF319:
	.string	"reserved_178"
.LASF357:
	.string	"reserved_210"
.LASF358:
	.string	"reserved_214"
.LASF215:
	.string	"out_eof_mode"
.LASF290:
	.string	"dma_out_link"
.LASF284:
	.string	"reserved_ec"
.LASF485:
	.string	"sosf"
.LASF263:
	.string	"sram_drd_cmd"
.LASF633:
	.string	"vTaskDelay"
.LASF216:
	.string	"outdscr_burst_en"
.LASF320:
	.string	"reserved_17c"
.LASF563:
	.string	"wait"
.LASF551:
	.string	"bits"
.LASF3:
	.string	"__int8_t"
.LASF446:
	.string	"reserved_374"
.LASF360:
	.string	"reserved_21c"
.LASF48:
	.string	"flash_ce"
.LASF153:
	.string	"trans_cnt"
.LASF529:
	.string	"device"
.LASF321:
	.string	"reserved_180"
.LASF188:
	.string	"sram_dummy_cyclelen"
.LASF322:
	.string	"reserved_184"
.LASF14:
	.string	"long long unsigned int"
.LASF115:
	.string	"usr_mosi"
.LASF323:
	.string	"reserved_188"
.LASF361:
	.string	"reserved_220"
.LASF67:
	.string	"fread_dio"
.LASF362:
	.string	"reserved_224"
.LASF119:
	.string	"usr_command"
.LASF363:
	.string	"reserved_228"
.LASF483:
	.string	"length"
.LASF22:
	.string	"uint16_t"
.LASF182:
	.string	"usr_sram_dio"
.LASF53:
	.string	"flash_rdsr"
.LASF559:
	.string	"_dma_send"
.LASF291:
	.string	"dma_in_link"
.LASF324:
	.string	"reserved_18c"
.LASF364:
	.string	"reserved_22c"
.LASF131:
	.string	"ck_dis"
.LASF631:
	.string	"spi_lobo_dmaworkaround_idle"
.LASF325:
	.string	"reserved_190"
.LASF326:
	.string	"reserved_194"
.LASF47:
	.string	"flash_dp"
.LASF327:
	.string	"reserved_198"
.LASF365:
	.string	"reserved_230"
.LASF145:
	.string	"wr_buf_inten"
.LASF366:
	.string	"reserved_234"
.LASF591:
	.string	"find_rd_speed"
.LASF137:
	.string	"cs_keep_active"
.LASF367:
	.string	"reserved_238"
.LASF28:
	.string	"TickType_t"
.LASF91:
	.string	"clk_equ_sysclk"
.LASF59:
	.string	"tx_crc_en"
.LASF167:
	.string	"status_bitlen"
.LASF587:
	.string	"stmpe610_getID"
.LASF328:
	.string	"reserved_19c"
.LASF579:
	.string	"wait_trans_finish"
.LASF208:
	.string	"in_rst"
.LASF557:
	.string	"stmpe610_write_reg"
.LASF265:
	.string	"slv_rd_bit"
.LASF7:
	.string	"__int16_t"
.LASF157:
	.string	"slave_mode"
.LASF368:
	.string	"reserved_23c"
.LASF179:
	.string	"flash_usr_cmd"
.LASF640:
	.string	"gpio_set_pull_mode"
.LASF481:
	.string	"stqe_next"
.LASF369:
	.string	"reserved_240"
.LASF509:
	.string	"dummy_bits"
.LASF370:
	.string	"reserved_244"
.LASF305:
	.string	"dma_outlink_dscr_bf0"
.LASF544:
	.string	"color"
.LASF151:
	.string	"last_command"
.LASF645:
	.string	"exit"
.LASF547:
	.string	"float"
.LASF493:
	.string	"mosi_io_num"
.LASF58:
	.string	"fcs_crc_en"
.LASF542:
	.string	"wrbits"
.LASF274:
	.string	"reserved_c4"
.LASF372:
	.string	"reserved_24c"
.LASF484:
	.string	"offset"
.LASF308:
	.string	"dma_tx_status"
.LASF371:
	.string	"reserved_248"
.LASF275:
	.string	"reserved_c8"
.LASF535:
	.string	"dma_chan"
.LASF373:
	.string	"reserved_250"
.LASF568:
	.string	"disp_deselect"
.LASF374:
	.string	"reserved_254"
.LASF526:
	.string	"host"
.LASF536:
	.string	"spi_lobo_bus_mutex"
.LASF114:
	.string	"usr_dummy_idle"
.LASF39:
	.string	"GPIO_PULLUP_PULLDOWN"
.LASF578:
	.string	"send_data"
.LASF540:
	.string	"color_t"
.LASF624:
	.string	"ts_spi"
.LASF376:
	.string	"reserved_25c"
.LASF503:
	.string	"command"
.LASF8:
	.string	"short int"
.LASF497:
	.string	"quadhd_io_num"
.LASF110:
	.string	"usr_cmd_hold"
.LASF25:
	.string	"uint64_t"
.LASF76:
	.string	"status_ext"
.LASF235:
	.string	"in_done"
.LASF377:
	.string	"reserved_260"
.LASF205:
	.string	"t_erase_shift"
.LASF378:
	.string	"reserved_264"
.LASF379:
	.string	"reserved_268"
.LASF60:
	.string	"wait_flash_idle_en"
.LASF418:
	.string	"reserved_304"
.LASF21:
	.string	"int16_t"
.LASF419:
	.string	"reserved_308"
.LASF622:
	.string	"tft_disp_type"
.LASF375:
	.string	"reserved_258"
.LASF594:
	.string	"cur_speed"
.LASF120:
	.string	"usr_dummy_cyclelen"
.LASF585:
	.string	"touch_get_data"
.LASF548:
	.string	"_spi_transfer_start"
.LASF278:
	.string	"reserved_d4"
.LASF134:
	.string	"master_ck_sel"
.LASF42:
	.string	"reserved0"
.LASF93:
	.string	"reserved1"
.LASF192:
	.string	"reserved2"
.LASF130:
	.string	"reserved3"
.LASF181:
	.string	"reserved4"
.LASF194:
	.string	"reserved5"
.LASF420:
	.string	"reserved_30c"
.LASF98:
	.string	"reserved8"
.LASF133:
	.string	"reserved9"
.LASF381:
	.string	"reserved_270"
.LASF302:
	.string	"dma_out_eof_bfr_des_addr"
.LASF382:
	.string	"reserved_274"
.LASF383:
	.string	"reserved_278"
.LASF421:
	.string	"reserved_310"
.LASF422:
	.string	"reserved_314"
.LASF423:
	.string	"reserved_318"
.LASF251:
	.string	"mosi_dlen"
.LASF628:
	.string	"spi_lobo_dmaworkaround_transfer_active"
.LASF490:
	.string	"TFT_HSPI_HOST"
.LASF566:
	.string	"to_send"
.LASF190:
	.string	"cache_sram_usr_wcmd"
.LASF273:
	.string	"tx_crc"
.LASF556:
	.string	"stmpe610_read_byte"
.LASF94:
	.string	"cs_hold"
.LASF384:
	.string	"reserved_27c"
.LASF155:
	.string	"wr_rd_sta_en"
.LASF575:
	.string	"numArgs"
.LASF268:
	.string	"reserved_70"
.LASF95:
	.string	"cs_setup"
.LASF424:
	.string	"reserved_31c"
.LASF521:
	.string	"tx_buffer"
.LASF232:
	.string	"inlink_dscr_empty"
.LASF65:
	.string	"fread_quad"
.LASF514:
	.string	"clock_speed_hz"
.LASF199:
	.string	"slv_rdata_bit"
.LASF386:
	.string	"reserved_284"
.LASF387:
	.string	"reserved_288"
.LASF425:
	.string	"reserved_320"
.LASF426:
	.string	"reserved_324"
.LASF100:
	.string	"wr_byte_order"
.LASF427:
	.string	"reserved_328"
.LASF507:
	.string	"command_bits"
.LASF198:
	.string	"usr_wr_cmd_bitlen"
.LASF24:
	.string	"uint32_t"
.LASF538:
	.string	"spi_lobo_host_t"
.LASF417:
	.string	"reserved_300"
.LASF175:
	.string	"wrsta_cmd_value"
.LASF159:
	.string	"rdbuf_dummy_en"
.LASF214:
	.string	"out_auto_wrback"
.LASF388:
	.string	"reserved_28c"
.LASF160:
	.string	"wrbuf_dummy_en"
.LASF283:
	.string	"reserved_e8"
.LASF428:
	.string	"reserved_32c"
.LASF623:
	.string	"disp_spi"
.LASF405:
	.string	"reserved_2d0"
.LASF389:
	.string	"reserved_290"
.LASF118:
	.string	"usr_addr"
.LASF609:
	.string	"ILI9341_init"
.LASF390:
	.string	"reserved_294"
.LASF298:
	.string	"dma_in_suc_eof_des_addr"
.LASF158:
	.string	"sync_reset"
.LASF391:
	.string	"reserved_298"
.LASF429:
	.string	"reserved_330"
.LASF430:
	.string	"reserved_334"
.LASF193:
	.string	"rst_io"
.LASF1:
	.string	"short unsigned int"
.LASF299:
	.string	"dma_inlink_dscr"
.LASF271:
	.string	"reserved_7c"
.LASF213:
	.string	"out_loop_test"
.LASF380:
	.string	"reserved_26c"
.LASF45:
	.string	"flash_hpm"
.LASF608:
	.string	"ST7789V_init"
.LASF432:
	.string	"reserved_33c"
.LASF10:
	.string	"__int32_t"
.LASF111:
	.string	"usr_prep_hold"
.LASF236:
	.string	"in_err_eof"
.LASF180:
	.string	"flash_pes_en"
.LASF495:
	.string	"sclk_io_num"
.LASF434:
	.string	"reserved_344"
.LASF97:
	.string	"ck_out_edge"
.LASF435:
	.string	"reserved_348"
.LASF491:
	.string	"TFT_VSPI_HOST"
.LASF596:
	.string	"color_line"
.LASF501:
	.string	"lldesc_s"
.LASF605:
	.string	"TFT_PinsInit"
.LASF258:
	.string	"slv_wrbuf_dlen"
.LASF249:
	.string	"user1"
.LASF121:
	.string	"usr_addr_bitlen"
.LASF560:
	.string	"data"
.LASF638:
	.string	"gpio_pad_select_gpio"
.LASF592:
	.string	"max_speed"
.LASF241:
	.string	"date"
.LASF72:
	.string	"cs_hold_delay_res"
.LASF105:
	.string	"usr_hold_pol"
.LASF611:
	.string	"STP7735_init"
.LASF170:
	.string	"rdbuf_dummy_cyclelen"
.LASF436:
	.string	"reserved_34c"
.LASF508:
	.string	"address_bits"
.LASF555:
	.string	"stmpe610_read_word"
.LASF410:
	.string	"reserved_2e4"
.LASF149:
	.string	"cs_i_mode"
.LASF438:
	.string	"reserved_354"
.LASF494:
	.string	"miso_io_num"
.LASF292:
	.string	"dma_status"
.LASF439:
	.string	"reserved_358"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
