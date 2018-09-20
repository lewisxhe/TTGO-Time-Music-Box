	.file	"spiffs_gc.c"
	.text
.Ltext0:
	.section	.text.spiffs_gc_erase_block,"ax",@progbits
	.align	4
	.type	spiffs_gc_erase_block, @function
spiffs_gc_erase_block:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs/src/spiffs_gc.c"
	.loc 1 11 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 15 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	spiffs_erase_block
.LVL1:
	mov.n	a5, a10
.LVL2:
	.loc 1 16 0
	bltz	a10, .L2
	movi.n	a4, 0
	j	.L3
.LVL3:
.L4:
.LBB2:
	.loc 1 22 0 discriminator 3
	mul16u	a11, a11, a3
	add.n	a11, a11, a4
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	spiffs_cache_drop_page
.LVL4:
	.loc 1 21 0 discriminator 3
	addi.n	a4, a4, 1
.LVL5:
.L3:
	.loc 1 21 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 24
	l32i.n	a11, a2, 28
	quou	a11, a8, a11
	bltu	a4, a11, .L4
.LVL6:
.L2:
.LBE2:
	.loc 1 27 0 is_stmt 1
	mov.n	a2, a5
.LVL7:
	retw.n
.LFE0:
	.size	spiffs_gc_erase_block, .-spiffs_gc_erase_block
	.section	.text.spiffs_gc_quick,"ax",@progbits
	.literal_position
	.literal .LC0, -10029
	.literal .LC1, 65535
	.align	4
	.global	spiffs_gc_quick
	.type	spiffs_gc_quick, @function
spiffs_gc_quick:
.LFB1:
	.loc 1 33 0
.LVL8:
	entry	sp, 64
.LCFI1:
	extui	a3, a3, 0, 16
	s32i.n	a3, sp, 8
.LVL9:
	.loc 1 35 0
	l32i.n	a3, a2, 32
.LVL10:
	.loc 1 39 0
	l32i.n	a4, a2, 52
	s32i.n	a4, sp, 12
.LVL11:
	.loc 1 46 0
	l32i.n	a4, a2, 28
.LVL12:
	srli	a6, a4, 1
.LVL13:
	.loc 1 37 0
	movi.n	a5, 0
	s32i.n	a5, sp, 4
	.loc 1 36 0
	s32i.n	a5, sp, 20
	.loc 1 34 0
	s32i.n	a5, sp, 16
	.loc 1 50 0
	j	.L6
.LVL14:
.L16:
.LBB3:
.LBB4:
	.loc 1 57 0
	l32i.n	a8, sp, 0
	mull	a5, a8, a6
.LVL15:
	.loc 1 58 0
	l32i.n	a13, a2, 16
	mull	a8, a8, a14
	add.n	a13, a13, a8
	l32i.n	a15, a2, 52
	l32i.n	a9, sp, 4
	add.n	a13, a9, a13
	movi.n	a12, 0
	movi.n	a11, 0x14
	mov.n	a10, a2
.LVL16:
	call8	spiffs_phys_rd
.LVL17:
	l32i.n	a12, sp, 12
	l32i.n	a13, sp, 8
	.loc 1 61 0
	j	.L7
.L13:
.LBB5:
	.loc 1 64 0
	addx2	a9, a9, a12
	l16ui	a8, a9, 0
.LVL18:
	.loc 1 65 0
	bnez.n	a8, .L8
	.loc 1 66 0
	addi.n	a7, a7, 1
.LVL19:
	extui	a7, a7, 0, 16
.LVL20:
	j	.L9
.L8:
	.loc 1 67 0
	l32r	a9, .LC1
.LVL21:
	bne	a8, a9, .L10
	.loc 1 69 0
	addi.n	a4, a4, 1
.LVL22:
	extui	a4, a4, 0, 16
.LVL23:
	.loc 1 70 0
	bgeu	a13, a4, .L9
	.loc 1 71 0
	beqz.n	a11, .L23
	.loc 1 71 0 is_stmt 0 discriminator 1
	s32i.n	a11, sp, 0
.LVL24:
	.loc 1 72 0 is_stmt 1 discriminator 1
	movi.n	a10, 1
.LVL25:
	j	.L11
.LVL26:
.L10:
	.loc 1 77 0
	beqz.n	a11, .L24
	.loc 1 77 0 is_stmt 0 discriminator 1
	s32i.n	a11, sp, 0
.LVL27:
	.loc 1 78 0 is_stmt 1 discriminator 1
	movi.n	a10, 1
.LVL28:
	j	.L11
.LVL29:
.L9:
	.loc 1 81 0
	addi.n	a3, a3, 1
.LVL30:
.L7:
.LBE5:
	.loc 1 61 0
	bnez.n	a10, .L11
	.loc 1 62 0 discriminator 1
	sub	a9, a3, a5
	.loc 1 61 0 discriminator 1
	bge	a9, a6, .L11
	.loc 1 63 0
	l32i.n	a8, a2, 24
	l32i.n	a11, a2, 28
	quou	a8, a8, a11
	slli	a14, a8, 1
	quou	a11, a14, a11
	bnez.n	a11, .L25
	movi.n	a14, 1
	j	.L12
.L25:
	mov.n	a14, a11
.L12:
	.loc 1 63 0 is_stmt 0 discriminator 4
	sub	a8, a8, a14
	.loc 1 62 0 is_stmt 1 discriminator 4
	blt	a3, a8, .L13
	j	.L11
.LVL31:
.L23:
.LBB6:
	.loc 1 71 0
	movi.n	a5, 1
.LVL32:
	s32i.n	a5, sp, 0
.LVL33:
	.loc 1 72 0
	mov.n	a10, a5
.LVL34:
	j	.L11
.LVL35:
.L24:
	.loc 1 77 0
	movi.n	a5, 1
.LVL36:
	s32i.n	a5, sp, 0
.LVL37:
	.loc 1 78 0
	mov.n	a10, a5
.LVL38:
.L11:
.LBE6:
	.loc 1 83 0
	l32i.n	a5, sp, 0
	addi.n	a5, a5, 1
	s32i.n	a5, sp, 0
.LVL39:
	j	.L22
.LVL40:
.L27:
.LBE4:
.LBE3:
	l32i.n	a10, sp, 16
	movi.n	a3, 0
	s32i.n	a3, sp, 0
	mov.n	a4, a3
.LVL41:
	mov.n	a7, a3
.LVL42:
.L22:
.LBB7:
	.loc 1 56 0
	bnez.n	a10, .L14
	.loc 1 56 0 is_stmt 0 discriminator 1
	l32i.n	a5, a2, 24
	l32i.n	a14, a2, 28
	quou	a5, a5, a14
	slli	a5, a5, 1
	quou	a5, a5, a14
	bnez.n	a5, .L15
	.loc 1 56 0
	movi.n	a5, 1
.L15:
	.loc 1 56 0 discriminator 5
	l32i.n	a8, sp, 0
	blt	a8, a5, .L16
.L14:
	.loc 1 85 0 is_stmt 1
	beqi	a10, 1, .L17
	s32i.n	a10, sp, 16
.L17:
.LVL43:
	.loc 1 87 0
	l32i.n	a3, sp, 16
.LVL44:
	bnez.n	a3, .L18
	.loc 1 88 0
	add.n	a9, a7, a4
	l32i.n	a3, a2, 24
	l32i.n	a8, a2, 28
	quou	a3, a3, a8
	slli	a5, a3, 1
	quou	a5, a5, a8
	bnez.n	a5, .L19
	movi.n	a5, 1
.L19:
	.loc 1 88 0 is_stmt 0 discriminator 4
	sub	a3, a3, a5
	.loc 1 87 0 is_stmt 1 discriminator 4
	bne	a9, a3, .L18
	.loc 1 88 0
	l32i.n	a5, sp, 8
	bltu	a5, a4, .L18
	.loc 1 91 0
	l32i	a3, a2, 80
	sub	a3, a3, a7
	s32i	a3, a2, 80
	.loc 1 92 0
	l32i.n	a11, sp, 20
	mov.n	a10, a2
	call8	spiffs_gc_erase_block
.LVL45:
	mov.n	a2, a10
.LVL46:
	.loc 1 93 0
	retw.n
.LVL47:
.L18:
	.loc 1 97 0
	l32i.n	a4, sp, 20
.LVL48:
	addi.n	a3, a4, 1
	extui	a3, a3, 0, 16
	s32i.n	a3, sp, 20
.LVL49:
	.loc 1 98 0
	l32i.n	a3, a2, 24
	l32i.n	a5, sp, 4
	add.n	a5, a5, a3
	s32i.n	a5, sp, 4
.LVL50:
.LBE7:
	.loc 1 50 0
	l32i.n	a3, sp, 24
.LVL51:
.L6:
	l32i.n	a4, sp, 16
	bnez.n	a4, .L21
	.loc 1 50 0 is_stmt 0 discriminator 1
	addi.n	a5, a3, -1
	s32i.n	a5, sp, 24
.LVL52:
	bnez.n	a3, .L27
.LVL53:
.L21:
	.loc 1 101 0 is_stmt 1
	l32i.n	a2, sp, 16
.LVL54:
	bnez.n	a2, .L20
	.loc 1 102 0
	l32r	a2, .LC0
.L20:
	.loc 1 105 0
	retw.n
.LFE1:
	.size	spiffs_gc_quick, .-spiffs_gc_quick
	.section	.text.spiffs_gc_erase_page_stats,"ax",@progbits
	.literal_position
	.literal .LC2, 65535
	.align	4
	.global	spiffs_gc_erase_page_stats
	.type	spiffs_gc_erase_page_stats, @function
spiffs_gc_erase_page_stats:
.LFB3:
	.loc 1 201 0
.LVL55:
	entry	sp, 48
.LCFI2:
	extui	a3, a3, 0, 16
	s32i.n	a3, sp, 8
.LVL56:
	.loc 1 204 0
	l32i.n	a4, a2, 28
	srli	a4, a4, 1
.LVL57:
	.loc 1 205 0
	l32i.n	a6, a2, 52
.LVL58:
	.loc 1 208 0
	movi.n	a7, 0
	.loc 1 207 0
	s32i.n	a7, sp, 4
	.loc 1 206 0
	mov.n	a3, a7
.LVL59:
	.loc 1 203 0
	s32i.n	a7, sp, 0
	.loc 1 202 0
	mov.n	a10, a7
	.loc 1 211 0
	j	.L32
.LVL60:
.L41:
.LBB8:
	.loc 1 212 0
	l32i.n	a9, sp, 0
	mull	a5, a9, a4
.LVL61:
	.loc 1 213 0
	l32i.n	a13, a2, 16
	l32i.n	a10, sp, 8
.LVL62:
	mull	a8, a10, a8
	mull	a9, a9, a14
	add.n	a8, a8, a9
	l32i.n	a15, a2, 52
	add.n	a13, a13, a8
	movi.n	a12, 0
	movi.n	a11, 0x14
	mov.n	a10, a2
	call8	spiffs_phys_rd
.LVL63:
	l32i.n	a12, sp, 4
	.loc 1 216 0
	j	.L33
.LVL64:
.L38:
.LBB9:
	.loc 1 218 0
	addx2	a11, a11, a6
	l16ui	a8, a11, 0
.LVL65:
	.loc 1 219 0
	l32r	a9, .LC2
	beq	a8, a9, .L34
	.loc 1 220 0
	bnez.n	a8, .L35
	.loc 1 221 0
	addi.n	a12, a12, 1
.LVL66:
	j	.L34
.L35:
	.loc 1 223 0
	addi.n	a7, a7, 1
.LVL67:
.L34:
	.loc 1 225 0
	addi.n	a3, a3, 1
.LVL68:
.L33:
.LBE9:
	.loc 1 216 0
	bnez.n	a10, .L36
	.loc 1 217 0 discriminator 1
	sub	a11, a3, a5
	.loc 1 216 0 discriminator 1
	bge	a11, a4, .L36
	.loc 1 217 0
	l32i.n	a8, a2, 24
	l32i.n	a13, a2, 28
	quou	a8, a8, a13
	slli	a9, a8, 1
	quou	a9, a9, a13
	bnez.n	a9, .L37
	movi.n	a9, 1
.L37:
	.loc 1 217 0 is_stmt 0 discriminator 4
	sub	a8, a8, a9
	blt	a3, a8, .L38
.L36:
	s32i.n	a12, sp, 4
	.loc 1 227 0 is_stmt 1
	l32i.n	a5, sp, 0
.LVL69:
	addi.n	a5, a5, 1
	s32i.n	a5, sp, 0
.LVL70:
.L32:
.LBE8:
	.loc 1 211 0
	bnez.n	a10, .L39
	.loc 1 211 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 24
	l32i.n	a14, a2, 28
	quou	a5, a8, a14
	slli	a5, a5, 1
	quou	a5, a5, a14
	bnez.n	a5, .L40
	.loc 1 211 0
	movi.n	a5, 1
.L40:
	.loc 1 211 0 discriminator 5
	l32i.n	a9, sp, 0
	blt	a9, a5, .L41
.L39:
	.loc 1 230 0 is_stmt 1
	l32i	a3, a2, 76
.LVL71:
	sub	a7, a3, a7
.LVL72:
	s32i	a7, a2, 76
	.loc 1 231 0
	l32i	a3, a2, 80
	l32i.n	a4, sp, 4
.LVL73:
	sub	a3, a3, a4
	s32i	a3, a2, 80
	.loc 1 233 0
	mov.n	a2, a10
.LVL74:
	retw.n
.LFE3:
	.size	spiffs_gc_erase_page_stats, .-spiffs_gc_erase_page_stats
	.section	.text.spiffs_gc_find_candidate,"ax",@progbits
	.literal_position
	.literal .LC3, -1431655765
	.literal .LC4, 65535
	.align	4
	.global	spiffs_gc_find_candidate
	.type	spiffs_gc_find_candidate, @function
spiffs_gc_find_candidate:
.LFB4:
	.loc 1 240 0
.LVL75:
	entry	sp, 96
.LCFI3:
	s32i.n	a4, sp, 40
	extui	a5, a5, 0, 8
	s32i.n	a5, sp, 56
.LVL76:
	.loc 1 242 0
	l32i.n	a4, a2, 32
.LVL77:
	.loc 1 245 0
	l32i.n	a5, a2, 52
.LVL78:
	s32i.n	a5, sp, 24
.LVL79:
	.loc 1 249 0
	l32i.n	a5, a2, 28
.LVL80:
	addi	a6, a5, -8
	l32r	a5, .LC3
	muluh	a5, a6, a5
	srli	a5, a5, 2
	minu	a5, a4, a5
	s32i.n	a5, sp, 48
.LVL81:
	.loc 1 250 0
	movi.n	a5, 0
.LVL82:
	l32i.n	a6, sp, 40
	s32i.n	a5, a6, 0
.LVL83:
	.loc 1 251 0
	l32i.n	a12, a2, 28
	movi	a11, 0xff
	l32i.n	a10, a2, 56
	call8	memset
.LVL84:
	.loc 1 254 0
	l32i.n	a6, a2, 56
	s32i.n	a6, sp, 44
.LVL85:
	.loc 1 255 0
	l32i.n	a8, sp, 48
	addx2	a6, a8, a6
.LVL86:
	.loc 1 258 0
	addi.n	a6, a6, 3
.LVL87:
	movi.n	a7, -4
	and	a6, a6, a7
.LVL88:
	s32i.n	a6, sp, 52
.LVL89:
	.loc 1 260 0
	l32i.n	a6, sp, 44
.LVL90:
	s32i.n	a6, a3, 0
.LVL91:
	.loc 1 262 0
	l32i.n	a3, a2, 28
.LVL92:
	srli	a7, a3, 1
.LVL93:
	.loc 1 244 0
	s32i.n	a5, sp, 20
	.loc 1 243 0
	s32i.n	a5, sp, 32
	.loc 1 241 0
	s32i.n	a5, sp, 28
	.loc 1 265 0
	j	.L44
.LVL94:
.L53:
.LBB10:
.LBB11:
	.loc 1 272 0
	l32i.n	a8, sp, 16
	mull	a6, a8, a7
.LVL95:
	.loc 1 273 0
	l32i.n	a13, a2, 16
	mull	a8, a8, a14
	add.n	a13, a13, a8
	l32i.n	a15, a2, 52
	l32i.n	a9, sp, 20
	add.n	a13, a9, a13
	movi.n	a12, 0
	movi.n	a11, 0x14
	mov.n	a10, a2
.LVL96:
	call8	spiffs_phys_rd
.LVL97:
	l32i.n	a12, sp, 24
	.loc 1 276 0
	j	.L45
.L50:
.LBB12:
	.loc 1 279 0
	addx2	a11, a11, a12
	l16ui	a8, a11, 0
.LVL98:
	.loc 1 280 0
	l32r	a9, .LC4
	beq	a8, a9, .L70
	.loc 1 284 0
	bnez.n	a8, .L47
	.loc 1 285 0
	addi.n	a4, a4, 1
.LVL99:
	extui	a4, a4, 0, 16
.LVL100:
	j	.L48
.L47:
	.loc 1 287 0
	addi.n	a5, a5, 1
.LVL101:
	extui	a5, a5, 0, 16
.LVL102:
.L48:
	.loc 1 289 0
	addi.n	a3, a3, 1
.LVL103:
.L45:
.LBE12:
	.loc 1 276 0
	bnez.n	a10, .L46
	.loc 1 277 0 discriminator 1
	sub	a11, a3, a6
	.loc 1 276 0 discriminator 1
	bge	a11, a7, .L46
	.loc 1 278 0
	l32i.n	a8, a2, 24
	l32i.n	a13, a2, 28
	quou	a8, a8, a13
	slli	a9, a8, 1
	quou	a9, a9, a13
	bnez.n	a9, .L49
	movi.n	a9, 1
.L49:
	.loc 1 278 0 is_stmt 0 discriminator 4
	sub	a8, a8, a9
	.loc 1 277 0 is_stmt 1 discriminator 4
	blt	a3, a8, .L50
	j	.L46
.LVL104:
.L70:
.LBB13:
	.loc 1 282 0
	movi.n	a10, 1
.LVL105:
.L46:
.LBE13:
	.loc 1 291 0
	l32i.n	a6, sp, 16
.LVL106:
	addi.n	a6, a6, 1
	s32i.n	a6, sp, 16
.LVL107:
	j	.L69
.LVL108:
.L73:
.LBE11:
.LBE10:
	l32i.n	a10, sp, 28
	movi.n	a3, 0
.LVL109:
	s32i.n	a3, sp, 16
	mov.n	a5, a3
.LVL110:
	mov.n	a4, a3
.LVL111:
.L69:
.LBB16:
	.loc 1 271 0
	bnez.n	a10, .L51
	.loc 1 271 0 is_stmt 0 discriminator 1
	l32i.n	a6, a2, 24
	l32i.n	a14, a2, 28
	quou	a6, a6, a14
	slli	a6, a6, 1
	quou	a6, a6, a14
	bnez.n	a6, .L52
	.loc 1 271 0
	movi.n	a6, 1
.L52:
	.loc 1 271 0 discriminator 5
	l32i.n	a8, sp, 16
	blt	a8, a6, .L53
.L51:
	.loc 1 293 0 is_stmt 1
	beqi	a10, 1, .L54
	s32i.n	a10, sp, 28
.L54:
.LVL112:
	.loc 1 297 0
	l32i.n	a3, sp, 28
.LVL113:
	bnez.n	a3, .L55
.LBB14:
	.loc 1 300 0
	l32i.n	a9, a2, 16
	l32i.n	a6, a2, 24
	l32i.n	a8, a2, 28
	quou	a3, a6, a8
	slli	a3, a3, 1
	quou	a3, a3, a8
	bnez.n	a3, .L56
	movi.n	a3, 1
.L56:
	.loc 1 300 0 is_stmt 0 discriminator 4
	mull	a3, a3, a8
	l32i.n	a8, sp, 32
	mull	a6, a8, a6
	add.n	a3, a3, a6
	add.n	a13, a3, a9
	mov.n	a15, sp
	movi.n	a14, 2
	addi	a13, a13, -2
	movi.n	a12, 0
	movi.n	a11, 0x15
	mov.n	a10, a2
	call8	spiffs_phys_rd
.LVL114:
	s32i.n	a10, sp, 28
.LVL115:
	.loc 1 303 0 is_stmt 1 discriminator 4
	bltz	a10, .L58
	.loc 1 306 0
	l16ui	a3, a2, 86
	l16ui	a6, sp, 0
	bgeu	a6, a3, .L59
	.loc 1 307 0
	sub	a3, a3, a6
	extui	a3, a3, 0, 16
.LVL116:
	j	.L60
.LVL117:
.L59:
	.loc 1 309 0
	sub	a3, a3, a6
	addi.n	a3, a3, -1
	extui	a3, a3, 0, 16
.LVL118:
.L60:
	.loc 1 313 0
	addx4	a4, a4, a4
.LVL119:
	sub	a5, a4, a5
.LVL120:
	.loc 1 315 0
	l32i.n	a4, sp, 56
	beqz.n	a4, .L72
	movi.n	a4, 0
	j	.L61
.L72:
	movi.n	a4, 0x32
.L61:
	.loc 1 315 0 is_stmt 0 discriminator 4
	mull	a3, a4, a3
.LVL121:
	.loc 1 312 0 is_stmt 1 discriminator 4
	add.n	a5, a5, a3
.LVL122:
	.loc 1 316 0 discriminator 4
	movi.n	a3, 0
	l32i.n	a10, sp, 48
.LVL123:
	l32i.n	a11, sp, 44
	l32i.n	a12, sp, 52
	.loc 1 318 0 discriminator 4
	j	.L62
.LVL124:
.L68:
	.loc 1 319 0
	mov.n	a9, a3
	addx2	a4, a3, a11
	l16ui	a8, a4, 0
	l32r	a6, .LC4
	bne	a8, a6, .L63
	.loc 1 320 0
	l32i.n	a6, sp, 32
	s16i	a6, a4, 0
	.loc 1 321 0
	l32i.n	a3, sp, 52
.LVL125:
	addx4	a9, a9, a3
.LVL126:
	s32i.n	a5, a9, 0
	.loc 1 322 0
	j	.L64
.LVL127:
.L63:
	.loc 1 323 0
	addx4	a6, a3, a12
	l32i.n	a8, a6, 0
	bge	a8, a5, .L65
.LBB15:
	.loc 1 324 0
	l32i.n	a9, sp, 48
	addi	a8, a9, -2
.LVL128:
	l32i.n	a10, sp, 44
	l32i.n	a11, sp, 52
	.loc 1 325 0
	j	.L66
.L67:
	.loc 1 326 0
	addi.n	a9, a8, 1
	addx2	a12, a9, a10
	addx2	a13, a8, a10
	l16ui	a13, a13, 0
	s16i	a13, a12, 0
	.loc 1 327 0
	addx4	a9, a9, a11
	addx4	a12, a8, a11
	l32i.n	a12, a12, 0
	s32i.n	a12, a9, 0
	.loc 1 328 0
	addi.n	a8, a8, -1
.LVL129:
.L66:
	.loc 1 325 0
	bge	a8, a3, .L67
	.loc 1 330 0
	l32i.n	a3, sp, 32
.LVL130:
	s16i	a3, a4, 0
	.loc 1 331 0
	s32i.n	a5, a6, 0
	.loc 1 332 0
	j	.L64
.LVL131:
.L65:
.LBE15:
	.loc 1 334 0
	addi.n	a3, a3, 1
.LVL132:
.L62:
	.loc 1 318 0
	blt	a3, a10, .L68
.LVL133:
.L64:
	.loc 1 336 0
	l32i.n	a4, sp, 40
	l32i.n	a3, a4, 0
	addi.n	a3, a3, 1
	s32i.n	a3, a4, 0
.LVL134:
.L55:
.LBE14:
	.loc 1 340 0
	l32i.n	a5, sp, 32
	addi.n	a3, a5, 1
	extui	a3, a3, 0, 16
	s32i.n	a3, sp, 32
.LVL135:
	.loc 1 341 0
	l32i.n	a3, a2, 24
	l32i.n	a6, sp, 20
	add.n	a6, a6, a3
	s32i.n	a6, sp, 20
.LVL136:
.LBE16:
	.loc 1 265 0
	l32i.n	a4, sp, 36
.LVL137:
.L44:
	l32i.n	a3, sp, 28
	bnez.n	a3, .L58
	.loc 1 265 0 is_stmt 0 discriminator 1
	addi.n	a5, a4, -1
	s32i.n	a5, sp, 36
.LVL138:
	bnez.n	a4, .L73
.LVL139:
.L58:
	.loc 1 345 0 is_stmt 1
	l32i.n	a2, sp, 28
.LVL140:
	retw.n
.LFE4:
	.size	spiffs_gc_find_candidate, .-spiffs_gc_find_candidate
	.section	.text.spiffs_gc_clean,"ax",@progbits
	.literal_position
	.literal .LC5, -10012
	.literal .LC6, -10004
	.literal .LC7, -10005
	.literal .LC8, -10006
	.literal .LC9, -10013
	.literal .LC10, 32766
	.literal .LC11, -32768
	.literal .LC12, -10002
	.align	4
	.global	spiffs_gc_clean
	.type	spiffs_gc_clean, @function
spiffs_gc_clean:
.LFB5:
	.loc 1 377 0
.LVL141:
	entry	sp, 112
.LCFI4:
	mov.n	a7, a2
	extui	a3, a3, 0, 16
	s32i.n	a3, sp, 48
.LVL142:
	.loc 1 379 0
	l32i.n	a2, a2, 28
.LVL143:
	srli	a2, a2, 1
	s32i.n	a2, sp, 56
.LVL144:
	.loc 1 382 0
	l32i.n	a2, a7, 52
.LVL145:
	s32i.n	a2, sp, 60
.LVL146:
	.loc 1 385 0
	l32i.n	a3, a7, 56
.LVL147:
	s32i	a3, sp, 76
.LVL148:
	.loc 1 390 0
	movi.n	a2, 0
.LVL149:
	s32i.n	a2, sp, 16
	s32i.n	a2, sp, 20
	s32i.n	a2, sp, 24
	s32i.n	a2, sp, 28
	s32i.n	a2, sp, 32
	.loc 1 393 0
	l16ui	a2, a7, 36
	l32i.n	a4, sp, 48
	bne	a2, a4, .L77
	.loc 1 395 0
	addi.n	a2, a4, 1
	l32i.n	a3, a7, 32
.LVL150:
	remu	a2, a2, a3
	s16i	a2, a7, 36
	.loc 1 396 0
	movi.n	a2, 0
	s32i.n	a2, a7, 40
.L77:
.LBB17:
	.loc 1 596 0
	movi.n	a2, 0
	s32i.n	a2, sp, 52
	mov.n	a5, a2
	mov.n	a2, a7
	mov.n	a7, a5
.LVL151:
	mov.n	a6, a2
	j	.L78
.LVL152:
.L117:
	.loc 1 402 0
	movi.n	a2, 0
	s8i	a2, sp, 32
	.loc 1 405 0
	l32i.n	a3, sp, 56
	quos	a3, a5, a3
	s32i	a3, sp, 64
.LVL153:
	.loc 1 406 0
	movi.n	a4, 1
	l32i.n	a2, sp, 52
	.loc 1 408 0
	j	.L79
.LVL154:
.L105:
.LBB18:
	.loc 1 409 0
	l32i	a3, sp, 64
	l32i.n	a9, sp, 56
	mull	a3, a3, a9
	s32i.n	a3, sp, 52
.LVL155:
	.loc 1 410 0
	l32i.n	a13, a6, 16
	l32i.n	a3, sp, 48
.LVL156:
	s32i	a3, sp, 68
	mull	a8, a8, a3
	l32i	a3, sp, 64
	s32i	a3, sp, 72
	mull	a3, a14, a3
	add.n	a8, a8, a3
	l32i.n	a15, a6, 52
	add.n	a13, a13, a8
	movi.n	a12, 0
	movi.n	a11, 0x14
	mov.n	a10, a6
	call8	spiffs_phys_rd
.LVL157:
	mov.n	a7, a10
.LVL158:
	.loc 1 414 0
	j	.L80
.L102:
.LBB19:
	.loc 1 416 0
	l32i.n	a2, sp, 60
.LVL159:
	addx2	a3, a3, a2
	l16ui	a3, a3, 0
.LVL160:
	.loc 1 417 0
	l32i.n	a2, sp, 48
.LVL161:
	mul16u	a9, a9, a2
	extui	a9, a9, 0, 16
	beqz.n	a8, .L118
	.loc 1 417 0 is_stmt 0 discriminator 1
	extui	a2, a8, 0, 16
	j	.L81
.L118:
	.loc 1 417 0
	movi.n	a2, 1
.L81:
	.loc 1 417 0 discriminator 4
	add.n	a2, a2, a5
	add.n	a9, a9, a2
	extui	a2, a9, 0, 16
.LVL162:
	.loc 1 420 0 is_stmt 1 discriminator 4
	l32i.n	a8, sp, 16
	beqi	a8, 1, .L83
	beqz.n	a8, .L84
	beqi	a8, 2, .L85
	j	.L145
.L84:
	.loc 1 423 0
	sext	a8, a3, 15
	blti	a8, 1, .L82
	.loc 1 427 0
	movi.n	a4, 1
.LVL163:
	s8i	a4, sp, 32
.LVL164:
	.loc 1 428 0
	s16i	a3, sp, 20
	.loc 1 429 0
	s16i	a2, sp, 26
.LVL165:
	.loc 1 430 0
	movi.n	a4, 0
	j	.L82
.LVL166:
.L83:
	.loc 1 436 0
	l16ui	a8, sp, 20
	bne	a3, a8, .L82
.LBB20:
	.loc 1 438 0
	l32i.n	a13, a6, 16
	mull	a10, a2, a10
	addi	a15, sp, 36
	movi.n	a14, 5
	add.n	a13, a13, a10
	movi.n	a12, 0
	movi.n	a11, 0x15
	mov.n	a10, a6
	call8	spiffs_phys_rd
.LVL167:
	mov.n	a7, a10
.LVL168:
	.loc 1 440 0
	bltz	a10, .L120
	.loc 1 442 0
	l16ui	a8, sp, 38
	l32i.n	a10, a6, 28
	addi	a9, a10, -49
	srli	a9, a9, 1
	bltu	a8, a9, .L121
	.loc 1 442 0 is_stmt 0 discriminator 1
	sub	a8, a8, a9
	addi	a9, a10, -8
	srli	a9, a9, 1
	quou	a8, a8, a9
	addi.n	a8, a8, 1
	j	.L87
.L121:
	.loc 1 442 0
	movi.n	a8, 0
.L87:
	.loc 1 442 0 discriminator 4
	l16ui	a9, sp, 22
	bne	a8, a9, .L82
.LBB21:
	.loc 1 446 0 is_stmt 1
	l8ui	a7, sp, 40
.LVL169:
	sext	a7, a7, 7
	bgez	a7, .L89
	.loc 1 448 0
	addi	a7, sp, 42
	s32i.n	a7, sp, 0
	mov.n	a15, a2
	addi	a14, sp, 36
	mov.n	a13, a3
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a6
	call8	spiffs_page_move
.LVL170:
	.loc 1 450 0
	bltz	a10, .L122
	.loc 1 452 0
	l32i.n	a13, a6, 16
	l32i.n	a3, a6, 24
.LVL171:
	l32i	a8, sp, 68
	mull	a7, a8, a3
	l32i.n	a14, a6, 28
	l32i	a9, sp, 72
	mull	a3, a9, a14
	add.n	a3, a7, a3
	l32i.n	a15, a6, 52
	add.n	a13, a13, a3
	movi.n	a12, 0
	movi.n	a11, 0x14
	mov.n	a10, a6
.LVL172:
	call8	spiffs_phys_rd
.LVL173:
	mov.n	a7, a10
.LVL174:
	.loc 1 455 0
	bgez	a10, .L91
	mov.n	a6, a10
.LVL175:
	mov.n	a2, a10
.LVL176:
	retw.n
.LVL177:
.L89:
	.loc 1 461 0
	mov.n	a11, a2
	mov.n	a10, a6
	call8	spiffs_page_delete
.LVL178:
	mov.n	a7, a10
.LVL179:
	.loc 1 462 0
	bltz	a10, .L124
	.loc 1 463 0
	movi.n	a3, -1
.LVL180:
	s16i	a3, sp, 42
.L91:
	.loc 1 466 0
	l16ui	a3, sp, 22
	bnez.n	a3, .L92
	.loc 1 468 0
	l16ui	a3, sp, 38
	slli	a3, a3, 1
	addi	a3, a3, 49
	l32i	a8, sp, 76
	add.n	a3, a8, a3
	l16ui	a8, sp, 42
	s16i	a8, a3, 0
	j	.L82
.L92:
	.loc 1 472 0
	l16ui	a3, sp, 38
	l32i.n	a8, a6, 28
	addi	a9, a8, -49
	srli	a9, a9, 1
	bgeu	a3, a9, .L94
	.loc 1 472 0 is_stmt 0 discriminator 1
	addi.n	a3, a3, 4
	slli	a3, a3, 1
	j	.L95
.L94:
	.loc 1 472 0 discriminator 2
	sub	a3, a3, a9
	addi	a8, a8, -8
	srli	a8, a8, 1
	remu	a3, a3, a8
	addi.n	a3, a3, 4
	slli	a3, a3, 1
.L95:
	.loc 1 472 0 discriminator 4
	l32i	a9, sp, 76
	add.n	a3, a9, a3
	l16ui	a8, sp, 42
	s16i	a8, a3, 0
	j	.L82
.LVL181:
.L122:
	.loc 1 450 0 is_stmt 1
	mov.n	a2, a10
.LVL182:
	retw.n
.LVL183:
.L124:
	mov.n	a6, a10
.LVL184:
	.loc 1 462 0
	mov.n	a2, a10
.LVL185:
	retw.n
.LVL186:
.L120:
	mov.n	a6, a10
.LVL187:
.LBE21:
	.loc 1 440 0
	mov.n	a2, a10
.LVL188:
	retw.n
.LVL189:
.L85:
.LBE20:
	.loc 1 480 0
	addmi	a8, a3, -0x8000
	extui	a8, a8, 0, 16
	l32r	a9, .LC10
.LVL190:
	bltu	a9, a8, .L82
.LBB22:
	.loc 1 486 0
	l32i.n	a13, a6, 16
	mull	a10, a2, a10
	addi	a15, sp, 36
	movi.n	a14, 5
	add.n	a13, a13, a10
	movi.n	a12, 0
	movi.n	a11, 0x15
	mov.n	a10, a6
	call8	spiffs_phys_rd
.LVL191:
	.loc 1 488 0
	bltz	a10, .L125
	.loc 1 489 0
	l8ui	a7, sp, 40
	sext	a7, a7, 7
	bgez	a7, .L98
	.loc 1 491 0
	addi	a7, sp, 42
	s32i.n	a7, sp, 0
	mov.n	a15, a2
	addi	a14, sp, 36
	mov.n	a13, a3
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a6
.LVL192:
	call8	spiffs_page_move
.LVL193:
	.loc 1 493 0
	bltz	a10, .L126
	.loc 1 495 0
	l16ui	a14, sp, 38
	.loc 1 494 0
	l16ui	a15, sp, 42
	movi.n	a7, 0
	s32i.n	a7, sp, 0
	mov.n	a13, a3
	movi.n	a12, 3
	addi	a11, sp, 36
	mov.n	a10, a6
.LVL194:
	call8	spiffs_cb_object_event
.LVL195:
	.loc 1 497 0
	l32i.n	a13, a6, 16
	l32i.n	a3, a6, 24
.LVL196:
	l32i	a9, sp, 68
	mull	a8, a9, a3
	l32i.n	a14, a6, 28
	l32i	a9, sp, 72
	mull	a3, a9, a14
	add.n	a3, a8, a3
	l32i.n	a15, a6, 52
	add.n	a13, a13, a3
	mov.n	a12, a7
	movi.n	a11, 0x14
	mov.n	a10, a6
	call8	spiffs_phys_rd
.LVL197:
	mov.n	a7, a10
.LVL198:
	.loc 1 500 0
	bgez	a10, .L99
	mov.n	a6, a10
.LVL199:
	mov.n	a2, a10
.LVL200:
	retw.n
.LVL201:
.L98:
	.loc 1 506 0
	mov.n	a11, a2
	mov.n	a10, a6
.LVL202:
	call8	spiffs_page_delete
.LVL203:
	mov.n	a7, a10
.LVL204:
	.loc 1 507 0
	bnez.n	a10, .L99
	.loc 1 509 0
	l16ui	a14, sp, 38
	.loc 1 508 0
	movi.n	a11, 0
	s32i.n	a11, sp, 0
	mov.n	a15, a2
	mov.n	a13, a3
	movi.n	a12, 2
	mov.n	a10, a6
	call8	spiffs_cb_object_event
.LVL205:
.L99:
	.loc 1 512 0
	bgez	a7, .L82
	mov.n	a6, a7
.LVL206:
	mov.n	a2, a7
.LVL207:
	retw.n
.LVL208:
.L125:
	.loc 1 488 0
	mov.n	a2, a10
.LVL209:
	retw.n
.LVL210:
.L126:
	.loc 1 493 0
	mov.n	a2, a10
.LVL211:
	retw.n
.LVL212:
.L145:
.LBE22:
	.loc 1 516 0
	movi.n	a4, 0
.LVL213:
.L82:
	.loc 1 519 0
	addi.n	a5, a5, 1
.LVL214:
.L80:
.LBE19:
	.loc 1 414 0
	movi.n	a8, 0
	movi.n	a3, 1
	movnez	a3, a8, a7
	bnone	a3, a4, .L100
	.loc 1 415 0 discriminator 1
	l32i.n	a8, sp, 52
	sub	a3, a5, a8
	.loc 1 414 0 discriminator 1
	l32i.n	a9, sp, 56
	bge	a3, a9, .L100
	.loc 1 415 0
	l32i.n	a9, a6, 24
	l32i.n	a10, a6, 28
	quou	a9, a9, a10
	slli	a8, a9, 1
	quou	a8, a8, a10
	bnez.n	a8, .L129
	movi.n	a11, 1
	j	.L101
.L129:
	mov.n	a11, a8
.L101:
	.loc 1 415 0 is_stmt 0 discriminator 4
	sub	a11, a9, a11
	blt	a5, a11, .L102
.L100:
	.loc 1 521 0 is_stmt 1
	l32i	a3, sp, 64
	addi.n	a3, a3, 1
	s32i	a3, sp, 64
.LVL215:
.L79:
.LBE18:
	.loc 1 408 0
	movi.n	a8, 0
	movi.n	a3, 1
	movnez	a3, a8, a7
	bnone	a3, a4, .L103
	.loc 1 408 0 is_stmt 0 discriminator 1
	l32i.n	a8, a6, 24
	l32i.n	a14, a6, 28
	quou	a3, a8, a14
	slli	a3, a3, 1
	quou	a3, a3, a14
	bnez.n	a3, .L104
	.loc 1 408 0
	movi.n	a3, 1
.L104:
	.loc 1 408 0 discriminator 5
	l32i	a9, sp, 64
	blt	a9, a3, .L105
.L103:
	s32i.n	a2, sp, 52
	.loc 1 523 0 is_stmt 1
	bnez.n	a7, .L131
	.loc 1 526 0
	l32i.n	a2, sp, 16
.LVL216:
	beqi	a2, 1, .L107
	beqz.n	a2, .L108
	beqi	a2, 2, .L109
	j	.L146
.L108:
	.loc 1 528 0
	l8ui	a2, sp, 32
	beqz.n	a2, .L110
.LBB23:
	.loc 1 533 0
	s32i.n	a5, sp, 28
.LVL217:
	.loc 1 535 0
	movi.n	a2, 1
	s32i.n	a2, sp, 16
	.loc 1 536 0
	l32i.n	a13, a6, 16
	l32i.n	a2, a6, 28
	l32i.n	a3, sp, 52
	mull	a2, a3, a2
	addi	a15, sp, 36
	movi.n	a14, 5
	add.n	a13, a13, a2
	movi.n	a12, 0
	movi.n	a11, 0x15
	mov.n	a10, a6
	call8	spiffs_phys_rd
.LVL218:
	.loc 1 538 0
	bltz	a10, .L133
	.loc 1 539 0
	l16ui	a2, sp, 38
	l32i.n	a3, a6, 28
	addi	a12, a3, -49
	srli	a12, a12, 1
	bltu	a2, a12, .L134
	.loc 1 539 0 is_stmt 0 discriminator 1
	sub	a2, a2, a12
	addi	a12, a3, -8
	srli	a12, a12, 1
	quou	a12, a2, a12
	addi.n	a12, a12, 1
	extui	a12, a12, 0, 16
	j	.L112
.L134:
	.loc 1 539 0
	movi.n	a12, 0
.L112:
	.loc 1 539 0 discriminator 4
	s16i	a12, sp, 22
	.loc 1 541 0 is_stmt 1 discriminator 4
	l16ui	a11, sp, 20
	l32r	a2, .LC11
	or	a11, a11, a2
	addi	a14, sp, 42
	movi.n	a13, 0
	extui	a11, a11, 0, 16
	mov.n	a10, a6
.LVL219:
	call8	spiffs_obj_lu_find_id_and_span
.LVL220:
	.loc 1 542 0 discriminator 4
	l32r	a2, .LC12
	bne	a10, a2, .L113
	.loc 1 547 0
	l16ui	a11, sp, 26
	mov.n	a10, a6
.LVL221:
	call8	spiffs_page_delete
.LVL222:
	mov.n	a7, a10
.LVL223:
	.loc 1 548 0
	bltz	a10, .L135
	.loc 1 550 0
	l32i.n	a5, sp, 28
.LVL224:
	.loc 1 551 0
	movi.n	a2, 0
	s32i.n	a2, sp, 16
	j	.L78
.LVL225:
.L113:
	.loc 1 554 0
	bltz	a10, .L136
	.loc 1 556 0
	l32i.n	a13, a6, 16
	l32i.n	a14, a6, 28
	l16ui	a2, sp, 42
	mull	a2, a2, a14
	l32i.n	a15, a6, 56
	add.n	a13, a13, a2
	movi.n	a12, 0
	movi.n	a11, 0x15
	mov.n	a10, a6
.LVL226:
	call8	spiffs_phys_rd
.LVL227:
	mov.n	a7, a10
.LVL228:
	.loc 1 558 0
	bltz	a10, .L137
	.loc 1 561 0
	l32i	a4, sp, 76
.LVL229:
	l8ui	a2, a4, 4
	bbsi	a2, 0, .L138
	.loc 1 561 0 is_stmt 0 discriminator 2
	sext	a3, a2, 7
	bgez	a3, .L139
	.loc 1 561 0 discriminator 4
	bbsi	a2, 1, .L140
	.loc 1 561 0 discriminator 6
	bbsi	a2, 2, .L141
	.loc 1 561 0 discriminator 8
	l16ui	a3, sp, 20
	l32r	a2, .LC11
	or	a2, a3, a2
	bbci	a2, 15, .L142
	.loc 1 561 0 discriminator 10
	l8ui	a2, a4, 2
	l8ui	a3, a4, 3
	slli	a3, a3, 8
	or	a2, a3, a2
	l16ui	a3, sp, 22
	bne	a2, a3, .L143
	.loc 1 562 0 is_stmt 1
	l16ui	a2, sp, 42
	s16i	a2, sp, 24
	.loc 1 534 0
	movi.n	a5, 0
.LBE23:
	j	.L78
.LVL230:
.L133:
.LBB24:
	.loc 1 538 0
	mov.n	a2, a10
	retw.n
.LVL231:
.L135:
	mov.n	a6, a10
.LVL232:
	.loc 1 548 0
	mov.n	a2, a10
	retw.n
.LVL233:
.L136:
	.loc 1 554 0
	mov.n	a2, a10
	retw.n
.LVL234:
.L137:
	mov.n	a6, a10
.LVL235:
	.loc 1 558 0
	mov.n	a2, a10
	retw.n
.LVL236:
.L138:
	.loc 1 561 0
	l32r	a2, .LC5
	retw.n
.L139:
	l32r	a2, .LC6
	retw.n
.L140:
	l32r	a2, .LC7
	retw.n
.L141:
	l32r	a2, .LC8
	retw.n
.L142:
	l32r	a2, .LC8
	retw.n
.L143:
	l32r	a2, .LC9
	retw.n
.LVL237:
.L110:
.LBE24:
	.loc 1 565 0
	movi.n	a2, 2
	s32i.n	a2, sp, 16
.LVL238:
	.loc 1 566 0
	movi.n	a5, 0
	j	.L78
.LVL239:
.L107:
.LBB25:
	.loc 1 574 0
	movi.n	a2, 0
	s32i.n	a2, sp, 16
	.loc 1 575 0
	l32i.n	a5, sp, 28
.LVL240:
	.loc 1 576 0
	l16ui	a2, sp, 22
	bnez.n	a2, .L114
	.loc 1 578 0
	l16ui	a12, sp, 20
	l32r	a2, .LC11
	or	a12, a12, a2
	l16ui	a13, sp, 24
	l32i.n	a14, a6, 56
	addi	a2, sp, 36
	s32i.n	a2, sp, 8
	movi.n	a11, 0
	s32i.n	a11, sp, 4
	s32i.n	a11, sp, 0
	mov.n	a15, a11
	extui	a12, a12, 0, 16
	mov.n	a10, a6
	call8	spiffs_object_update_index_hdr
.LVL241:
	mov.n	a7, a10
.LVL242:
	.loc 1 580 0
	bgez	a10, .L78
	mov.n	a6, a10
.LVL243:
	j	.L115
.LVL244:
.L114:
	.loc 1 583 0
	l32i.n	a12, a6, 56
	l16ui	a13, sp, 20
	l32r	a2, .LC11
	or	a13, a13, a2
	l16ui	a15, sp, 24
	addi	a2, sp, 36
	s32i.n	a2, sp, 0
	movi.n	a14, 0
	extui	a13, a13, 0, 16
	mov.n	a11, a14
	mov.n	a10, a6
	call8	spiffs_page_move
.LVL245:
	mov.n	a7, a10
.LVL246:
	.loc 1 585 0
	bltz	a10, .L147
	.loc 1 586 0
	l32i.n	a11, a6, 56
	.loc 1 587 0
	l16ui	a13, sp, 20
	l32i	a2, sp, 76
	l8ui	a14, a2, 2
	l8ui	a2, a2, 3
	slli	a2, a2, 8
	.loc 1 586 0
	l16ui	a15, sp, 36
	movi.n	a12, 0
	s32i.n	a12, sp, 0
	or	a14, a2, a14
	mov.n	a10, a6
	call8	spiffs_cb_object_event
.LVL247:
.LBE25:
	.loc 1 590 0
	j	.L78
.L147:
	mov.n	a6, a10
.LVL248:
.L115:
.LBB26:
	.loc 1 580 0 discriminator 2
	mov.n	a2, a6
	retw.n
.LVL249:
.L109:
.LBE26:
	.loc 1 593 0
	movi.n	a2, 3
	s32i.n	a2, sp, 16
	.loc 1 594 0
	j	.L78
.L146:
	.loc 1 596 0
	movi.n	a5, 0
.LVL250:
.L78:
.LBE17:
	.loc 1 400 0
	bnez.n	a7, .L144
	.loc 1 400 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 16
	bnei	a2, 3, .L117
	mov.n	a6, a7
.LVL251:
	mov.n	a2, a7
	retw.n
.LVL252:
.L131:
	mov.n	a6, a7
.LVL253:
	mov.n	a2, a7
.LVL254:
	retw.n
.LVL255:
.L144:
	mov.n	a6, a7
.LVL256:
	mov.n	a2, a7
	.loc 1 604 0 is_stmt 1
	retw.n
.LFE5:
	.size	spiffs_gc_clean, .-spiffs_gc_clean
	.section	.text.spiffs_gc_check,"ax",@progbits
	.literal_position
	.literal .LC13, -10001
	.align	4
	.global	spiffs_gc_check
	.type	spiffs_gc_check, @function
spiffs_gc_check:
.LFB2:
	.loc 1 111 0
.LVL257:
	entry	sp, 64
.LCFI5:
	mov.n	a4, a2
	mov.n	a2, a3
.LVL258:
	.loc 1 114 0
	l32i.n	a5, a4, 24
	l32i.n	a6, a4, 28
	quou	a5, a5, a6
	slli	a3, a5, 1
.LVL259:
	quou	a3, a3, a6
	bnez.n	a3, .L149
	movi.n	a3, 1
.L149:
	.loc 1 114 0 is_stmt 0 discriminator 4
	sub	a5, a5, a3
	l32i.n	a3, a4, 32
	addi	a3, a3, -2
	mull	a3, a5, a3
	.loc 1 115 0 is_stmt 1 discriminator 4
	l32i	a5, a4, 76
	sub	a3, a3, a5
	l32i	a5, a4, 80
	sub	a5, a3, a5
.LVL260:
	.loc 1 118 0 discriminator 4
	l32i	a7, a4, 72
	bltui	a7, 4, .L150
	.loc 1 119 0 discriminator 1
	addi	a7, a6, -5
	mull	a7, a5, a7
	.loc 1 118 0 discriminator 1
	blt	a2, a7, .L160
.L150:
	.loc 1 123 0
	add.n	a7, a6, a2
	addi	a7, a7, -6
	addi	a6, a6, -5
.LVL261:
	.loc 1 128 0
	quou	a6, a7, a6
.LVL262:
	s32i.n	a6, sp, 16
	blt	a3, a6, .L161
	movi.n	a3, 0
	j	.L158
.LVL263:
.L167:
	mov.n	a5, a7
	j	.L158
.L168:
	mov.n	a5, a7
.LVL264:
.L158:
.LBB27:
	.loc 1 144 0
	addi.n	a6, a5, -1
	or	a6, a5, a6
	extui	a6, a6, 31, 1
	mov.n	a13, a6
	mov.n	a12, sp
	addi.n	a11, sp, 4
	mov.n	a10, a4
	call8	spiffs_gc_find_candidate
.LVL265:
	.loc 1 145 0
	bltz	a10, .L151
	.loc 1 146 0
	l32i.n	a10, sp, 0
.LVL266:
	bnez.n	a10, .L153
	.loc 1 148 0
	l32i.n	a2, sp, 16
.LVL267:
	bge	a2, a5, .L163
	j	.L151
.LVL268:
.L153:
	.loc 1 153 0
	l32i.n	a7, sp, 4
	l16ui	a7, a7, 0
.LVL269:
	.loc 1 154 0
	movi.n	a8, 1
	s8i	a8, a4, 84
.LVL270:
	.loc 1 156 0
	mov.n	a11, a7
	mov.n	a10, a4
	call8	spiffs_gc_clean
.LVL271:
	.loc 1 157 0
	movi.n	a8, 0
	s8i	a8, a4, 84
	.loc 1 163 0
	bltz	a10, .L151
	.loc 1 165 0
	mov.n	a11, a7
	mov.n	a10, a4
.LVL272:
	call8	spiffs_gc_erase_page_stats
.LVL273:
	.loc 1 166 0
	bltz	a10, .L151
	.loc 1 168 0
	mov.n	a11, a7
	mov.n	a10, a4
.LVL274:
	call8	spiffs_gc_erase_block
.LVL275:
	.loc 1 169 0
	bltz	a10, .L151
	.loc 1 172 0
	l32i.n	a8, a4, 24
	l32i.n	a9, a4, 28
	quou	a8, a8, a9
	slli	a7, a8, 1
.LVL276:
	quou	a7, a7, a9
	bnez.n	a7, .L154
	movi.n	a7, 1
.L154:
	.loc 1 172 0 is_stmt 0 discriminator 4
	sub	a8, a8, a7
	l32i.n	a7, a4, 32
	addi	a7, a7, -2
	mull	a7, a8, a7
	.loc 1 173 0 is_stmt 1 discriminator 4
	l32i	a8, a4, 76
	sub	a7, a7, a8
	l32i	a8, a4, 80
	sub	a7, a7, a8
.LVL277:
	.loc 1 175 0 discriminator 4
	sub	a8, a5, a7
	movi.n	a5, 0
.LVL278:
	movi.n	a11, 1
	moveqz	a5, a11, a8
	bany	a5, a6, .L157
.LBE27:
	.loc 1 182 0
	add.n	a3, a3, a11
.LVL279:
	movi.n	a5, 9
	bge	a5, a3, .L156
	j	.L157
.LVL280:
.L163:
.LBB28:
	.loc 1 148 0
	l32r	a10, .LC13
	j	.L151
.LVL281:
.L156:
.LBE28:
	.loc 1 181 0
	l32i	a5, a4, 72
	bltui	a5, 3, .L167
	.loc 1 182 0 discriminator 1
	addi	a9, a9, -5
	mull	a9, a7, a9
	.loc 1 181 0 discriminator 1
	blt	a9, a2, .L168
.L157:
	.loc 1 185 0
	l32i.n	a3, a4, 24
.LVL282:
	l32i.n	a6, a4, 28
	quou	a3, a3, a6
	slli	a5, a3, 1
	quou	a5, a5, a6
	bnez.n	a5, .L159
	movi.n	a5, 1
.L159:
	.loc 1 185 0 is_stmt 0 discriminator 4
	sub	a3, a3, a5
	l32i.n	a5, a4, 32
	addi	a5, a5, -2
	mull	a5, a3, a5
	.loc 1 186 0 is_stmt 1 discriminator 4
	l32i	a3, a4, 76
	sub	a5, a5, a3
	l32i	a3, a4, 80
	sub	a3, a5, a3
.LVL283:
	.loc 1 187 0 discriminator 4
	addi	a6, a6, -5
	mull	a3, a3, a6
.LVL284:
	blt	a3, a2, .L169
	j	.L151
.LVL285:
.L160:
	.loc 1 120 0
	movi.n	a10, 0
	j	.L151
.LVL286:
.L161:
	.loc 1 130 0
	l32r	a10, .LC13
	j	.L151
.LVL287:
.L169:
	.loc 1 188 0
	l32r	a10, .LC13
.LVL288:
.L151:
	.loc 1 196 0
	mov.n	a2, a10
	retw.n
.LFE2:
	.size	spiffs_gc_check, .-spiffs_gc_check
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI5-.LFB2
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/include/spiffs_config.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs/src/spiffs.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs/src/spiffs_nucleus.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1076
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xc
	.4byte	.LASF155
	.4byte	.LASF156
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0xa9
	.4byte	0x5d
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x36
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x37
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x4
	.byte	0x39
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3b
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x12f
	.4byte	0xa7
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x132
	.4byte	0xa7
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x136
	.4byte	0xa7
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x13a
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4e
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x55
	.4byte	0x103
	.uleb128 0x7
	.byte	0x4
	.4byte	0x109
	.uleb128 0x8
	.4byte	0x91
	.4byte	0x127
	.uleb128 0x9
	.4byte	0x127
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0x25b
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x12d
	.uleb128 0xa
	.4byte	.LASF157
	.byte	0x74
	.byte	0x5
	.byte	0xe7
	.4byte	0x25b
	.uleb128 0xb
	.string	"cfg"
	.byte	0x5
	.byte	0xe9
	.4byte	0x3f0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0xeb
	.4byte	0x9c
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0xee
	.4byte	0xbd
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0xf0
	.4byte	0x48
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0xf2
	.4byte	0xbd
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0xf4
	.4byte	0x48
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0xf7
	.4byte	0x25b
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0xf9
	.4byte	0x25b
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0xfb
	.4byte	0x25b
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0xfd
	.4byte	0x9c
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x100
	.4byte	0x91
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x103
	.4byte	0x9c
	.byte	0x48
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x105
	.4byte	0x9c
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x107
	.4byte	0x9c
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x109
	.4byte	0xb2
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x10b
	.4byte	0xd5
	.byte	0x56
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x113
	.4byte	0x68
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x115
	.4byte	0x9c
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x11d
	.4byte	0x302
	.byte	0x60
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x11f
	.4byte	0x35c
	.byte	0x64
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x121
	.4byte	0xb2
	.byte	0x68
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x123
	.4byte	0x68
	.byte	0x6c
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x125
	.4byte	0x9c
	.byte	0x70
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb2
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x5
	.byte	0x57
	.4byte	0x103
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x5
	.byte	0x59
	.4byte	0x277
	.uleb128 0x7
	.byte	0x4
	.4byte	0x27d
	.uleb128 0x8
	.4byte	0x91
	.4byte	0x296
	.uleb128 0x9
	.4byte	0x127
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0x9c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x66
	.4byte	0x2b5
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x5
	.byte	0x6a
	.4byte	0x296
	.uleb128 0xe
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x6d
	.4byte	0x2f7
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0
	.uleb128 0xf
	.4byte	.LASF52
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x5
	.byte	0x75
	.4byte	0x2c0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x5
	.byte	0x79
	.4byte	0x30d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x313
	.uleb128 0x10
	.4byte	0x332
	.uleb128 0x9
	.4byte	0x127
	.uleb128 0x9
	.4byte	0x2b5
	.uleb128 0x9
	.4byte	0x2f7
	.uleb128 0x9
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0x9c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x81
	.4byte	0x351
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x5
	.byte	0x88
	.4byte	0x332
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x5
	.byte	0x8b
	.4byte	0x367
	.uleb128 0x7
	.byte	0x4
	.4byte	0x36d
	.uleb128 0x10
	.4byte	0x387
	.uleb128 0x9
	.4byte	0x127
	.uleb128 0x9
	.4byte	0x351
	.uleb128 0x9
	.4byte	0xd5
	.uleb128 0x9
	.4byte	0xc9
	.byte	0
	.uleb128 0x11
	.byte	0x20
	.byte	0x5
	.byte	0xc8
	.4byte	0x3f0
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x5
	.byte	0xca
	.4byte	0xf8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x5
	.byte	0xcc
	.4byte	0x261
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x5
	.byte	0xce
	.4byte	0x26c
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x5
	.byte	0xd1
	.4byte	0x9c
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x5
	.byte	0xd4
	.4byte	0x9c
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x5
	.byte	0xd6
	.4byte	0x9c
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x5
	.byte	0xdb
	.4byte	0x9c
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x5
	.byte	0xde
	.4byte	0x9c
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x5
	.byte	0xe5
	.4byte	0x387
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x126
	.4byte	0x12d
	.uleb128 0x12
	.4byte	0xb2
	.4byte	0x417
	.uleb128 0x13
	.4byte	0x71
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	0x427
	.uleb128 0x13
	.4byte	0x71
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3fb
	.uleb128 0x14
	.byte	0x5
	.byte	0x6
	.2byte	0x1e3
	.4byte	0x45e
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x1e5
	.4byte	0xd5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x1e7
	.4byte	0xe1
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x1e9
	.4byte	0xb2
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x1ea
	.4byte	0x42d
	.uleb128 0x14
	.byte	0x31
	.byte	0x6
	.2byte	0x1ed
	.4byte	0x4c2
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1f3
	.4byte	0x45e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x1f5
	.4byte	0x4c2
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x1f7
	.4byte	0x9c
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x1f9
	.4byte	0xed
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x1fb
	.4byte	0x407
	.byte	0xd
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x1fe
	.4byte	0x417
	.byte	0x2d
	.byte	0
	.uleb128 0x12
	.4byte	0xb2
	.4byte	0x4d2
	.uleb128 0x13
	.4byte	0x71
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x200
	.4byte	0x46a
	.uleb128 0x14
	.byte	0x8
	.byte	0x6
	.2byte	0x203
	.4byte	0x502
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x204
	.4byte	0x45e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x205
	.4byte	0x4c2
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x206
	.4byte	0x4de
	.uleb128 0x15
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.2byte	0x15b
	.4byte	0x534
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x160
	.4byte	0x50e
	.uleb128 0x14
	.byte	0x14
	.byte	0x1
	.2byte	0x162
	.4byte	0x5a5
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x163
	.4byte	0x534
	.byte	0
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x164
	.4byte	0xd5
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x165
	.4byte	0xe1
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x166
	.4byte	0xc9
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x167
	.4byte	0xc9
	.byte	0xa
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x168
	.4byte	0x48
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x169
	.4byte	0xb2
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x16a
	.4byte	0x540
	.uleb128 0x16
	.4byte	.LASF158
	.byte	0x1
	.byte	0x9
	.4byte	0x91
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x634
	.uleb128 0x17
	.string	"fs"
	.byte	0x1
	.byte	0xa
	.4byte	0x427
	.4byte	.LLST0
	.uleb128 0x18
	.string	"bix"
	.byte	0x1
	.byte	0xb
	.4byte	0xbd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.string	"res"
	.byte	0x1
	.byte	0xc
	.4byte	0x91
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x61d
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x14
	.4byte	0x9c
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LVL4
	.4byte	0x100e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL1
	.4byte	0x101a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0x1
	.byte	0x20
	.4byte	0x91
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76c
	.uleb128 0x17
	.string	"fs"
	.byte	0x1
	.byte	0x21
	.4byte	0x427
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x1
	.byte	0x21
	.4byte	0xa7
	.4byte	.LLST3
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x22
	.4byte	0x91
	.4byte	.LLST4
	.uleb128 0x20
	.4byte	.LASF101
	.byte	0x1
	.byte	0x23
	.4byte	0x9c
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF102
	.byte	0x1
	.byte	0x24
	.4byte	0xbd
	.4byte	.LLST6
	.uleb128 0x20
	.4byte	.LASF103
	.byte	0x1
	.byte	0x25
	.4byte	0x9c
	.4byte	.LLST7
	.uleb128 0x20
	.4byte	.LASF104
	.byte	0x1
	.byte	0x26
	.4byte	0x48
	.4byte	.LLST8
	.uleb128 0x20
	.4byte	.LASF105
	.byte	0x1
	.byte	0x27
	.4byte	0x76c
	.4byte	.LLST9
	.uleb128 0x21
	.4byte	.LASF106
	.byte	0x1
	.byte	0x2e
	.4byte	0x48
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x20
	.4byte	.LASF107
	.byte	0x1
	.byte	0x33
	.4byte	0xa7
	.4byte	.LLST10
	.uleb128 0x20
	.4byte	.LASF108
	.byte	0x1
	.byte	0x34
	.4byte	0xa7
	.4byte	.LLST11
	.uleb128 0x20
	.4byte	.LASF109
	.byte	0x1
	.byte	0x36
	.4byte	0x48
	.4byte	.LLST12
	.uleb128 0x1a
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x753
	.uleb128 0x20
	.4byte	.LASF110
	.byte	0x1
	.byte	0x39
	.4byte	0x48
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x738
	.uleb128 0x20
	.4byte	.LASF75
	.byte	0x1
	.byte	0x40
	.4byte	0xd5
	.4byte	.LLST14
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL17
	.4byte	0x1026
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL45
	.4byte	0x5b1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x1e
	.4byte	.LASF112
	.byte	0x1
	.byte	0xc7
	.4byte	0x91
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x860
	.uleb128 0x17
	.string	"fs"
	.byte	0x1
	.byte	0xc8
	.4byte	0x427
	.4byte	.LLST15
	.uleb128 0x17
	.string	"bix"
	.byte	0x1
	.byte	0xc9
	.4byte	0xbd
	.4byte	.LLST16
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0xca
	.4byte	0x91
	.4byte	.LLST17
	.uleb128 0x20
	.4byte	.LASF109
	.byte	0x1
	.byte	0xcb
	.4byte	0x48
	.4byte	.LLST18
	.uleb128 0x20
	.4byte	.LASF106
	.byte	0x1
	.byte	0xcc
	.4byte	0x48
	.4byte	.LLST19
	.uleb128 0x21
	.4byte	.LASF105
	.byte	0x1
	.byte	0xcd
	.4byte	0x76c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.4byte	.LASF104
	.byte	0x1
	.byte	0xce
	.4byte	0x48
	.4byte	.LLST20
	.uleb128 0x20
	.4byte	.LASF113
	.byte	0x1
	.byte	0xcf
	.4byte	0x9c
	.4byte	.LLST21
	.uleb128 0x20
	.4byte	.LASF114
	.byte	0x1
	.byte	0xd0
	.4byte	0x9c
	.4byte	.LLST22
	.uleb128 0x24
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x20
	.4byte	.LASF110
	.byte	0x1
	.byte	0xd4
	.4byte	0x48
	.4byte	.LLST23
	.uleb128 0x1a
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x844
	.uleb128 0x20
	.4byte	.LASF75
	.byte	0x1
	.byte	0xda
	.4byte	0xd5
	.4byte	.LLST24
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL63
	.4byte	0x1026
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF115
	.byte	0x1
	.byte	0xec
	.4byte	0x91
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa74
	.uleb128 0x17
	.string	"fs"
	.byte	0x1
	.byte	0xed
	.4byte	0x427
	.4byte	.LLST25
	.uleb128 0x1f
	.4byte	.LASF116
	.byte	0x1
	.byte	0xee
	.4byte	0xa74
	.4byte	.LLST26
	.uleb128 0x1f
	.4byte	.LASF117
	.byte	0x1
	.byte	0xef
	.4byte	0xa80
	.4byte	.LLST27
	.uleb128 0x1f
	.4byte	.LASF118
	.byte	0x1
	.byte	0xf0
	.4byte	0x7f
	.4byte	.LLST28
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0xf1
	.4byte	0x91
	.4byte	.LLST29
	.uleb128 0x20
	.4byte	.LASF101
	.byte	0x1
	.byte	0xf2
	.4byte	0x9c
	.4byte	.LLST30
	.uleb128 0x20
	.4byte	.LASF102
	.byte	0x1
	.byte	0xf3
	.4byte	0xbd
	.4byte	.LLST31
	.uleb128 0x20
	.4byte	.LASF103
	.byte	0x1
	.byte	0xf4
	.4byte	0x9c
	.4byte	.LLST32
	.uleb128 0x20
	.4byte	.LASF105
	.byte	0x1
	.byte	0xf5
	.4byte	0x76c
	.4byte	.LLST33
	.uleb128 0x20
	.4byte	.LASF104
	.byte	0x1
	.byte	0xf6
	.4byte	0x48
	.4byte	.LLST34
	.uleb128 0x20
	.4byte	.LASF119
	.byte	0x1
	.byte	0xf9
	.4byte	0x48
	.4byte	.LLST35
	.uleb128 0x20
	.4byte	.LASF120
	.byte	0x1
	.byte	0xfe
	.4byte	0xa7a
	.4byte	.LLST36
	.uleb128 0x20
	.4byte	.LASF121
	.byte	0x1
	.byte	0xff
	.4byte	0xa86
	.4byte	.LLST37
	.uleb128 0x25
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x106
	.4byte	0x48
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xa63
	.uleb128 0x26
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x10a
	.4byte	0xa7
	.4byte	.LLST38
	.uleb128 0x26
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x10b
	.4byte	0xa7
	.4byte	.LLST39
	.uleb128 0x26
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x10d
	.4byte	0x48
	.4byte	.LLST40
	.uleb128 0x1a
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x9d4
	.uleb128 0x26
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x110
	.4byte	0x48
	.4byte	.LLST41
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x9b9
	.uleb128 0x26
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x117
	.4byte	0xd5
	.4byte	.LLST42
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL97
	.4byte	0x1026
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.uleb128 0x25
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x12b
	.4byte	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x131
	.4byte	0xd5
	.4byte	.LLST43
	.uleb128 0x26
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x138
	.4byte	0x91
	.4byte	.LLST44
	.uleb128 0x26
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x13c
	.4byte	0x48
	.4byte	.LLST45
	.uleb128 0x1a
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0xa3b
	.uleb128 0x26
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x144
	.4byte	0x48
	.4byte	.LLST46
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL114
	.4byte	0x1026
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL84
	.4byte	0x1032
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa7a
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x7
	.byte	0x4
	.4byte	0x48
	.uleb128 0x7
	.byte	0x4
	.4byte	0x91
	.uleb128 0x27
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x179
	.4byte	0x91
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeda
	.uleb128 0x28
	.string	"fs"
	.byte	0x1
	.2byte	0x179
	.4byte	0x427
	.4byte	.LLST47
	.uleb128 0x28
	.string	"bix"
	.byte	0x1
	.2byte	0x179
	.4byte	0xbd
	.4byte	.LLST48
	.uleb128 0x29
	.string	"res"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x91
	.4byte	.LLST49
	.uleb128 0x26
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x17b
	.4byte	0xeda
	.4byte	.LLST50
	.uleb128 0x26
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x17d
	.4byte	0x48
	.4byte	.LLST51
	.uleb128 0x26
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x17e
	.4byte	0x76c
	.4byte	.LLST52
	.uleb128 0x2a
	.string	"gc"
	.byte	0x1
	.2byte	0x17f
	.4byte	0x5a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x180
	.4byte	0xc9
	.4byte	.LLST53
	.uleb128 0x26
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x181
	.4byte	0xedf
	.4byte	.LLST54
	.uleb128 0x26
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x182
	.4byte	0xee5
	.4byte	.LLST54
	.uleb128 0x24
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x26
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x195
	.4byte	0x48
	.4byte	.LLST56
	.uleb128 0x26
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x196
	.4byte	0xb2
	.4byte	.LLST57
	.uleb128 0x1a
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0xdaf
	.uleb128 0x26
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x199
	.4byte	0x48
	.4byte	.LLST58
	.uleb128 0x1a
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0xd94
	.uleb128 0x26
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xd5
	.4byte	.LLST59
	.uleb128 0x1a
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0xc75
	.uleb128 0x25
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x45e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1a
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0xc4e
	.uleb128 0x25
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x2b
	.4byte	.LVL170
	.4byte	0x103d
	.4byte	0xc19
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL173
	.4byte	0x1026
	.4byte	0xc37
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL178
	.4byte	0x1049
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL167
	.4byte	0x1026
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.uleb128 0x25
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x45e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x1e4
	.4byte	0xc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x2b
	.4byte	.LVL191
	.4byte	0x1026
	.4byte	0xcc8
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL193
	.4byte	0x103d
	.4byte	0xd00
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL195
	.4byte	0x1055
	.4byte	0xd2d
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL197
	.4byte	0x1026
	.4byte	0xd4c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL203
	.4byte	0x1049
	.4byte	0xd66
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL205
	.4byte	0x1055
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL157
	.4byte	0x1026
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0xe51
	.uleb128 0x25
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x213
	.4byte	0x45e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x214
	.4byte	0xc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x2b
	.4byte	.LVL218
	.4byte	0x1026
	.4byte	0xe02
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL220
	.4byte	0x1061
	.4byte	0xe22
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL222
	.4byte	0x1049
	.4byte	0xe36
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL227
	.4byte	0x1026
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x45
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x25
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x23d
	.4byte	0xc9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2b
	.4byte	.LVL241
	.4byte	0x106d
	.4byte	0xe97
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL245
	.4byte	0x103d
	.4byte	0xebc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL247
	.4byte	0x1055
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x48
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4d2
	.uleb128 0x7
	.byte	0x4
	.4byte	0x502
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x1
	.byte	0x6d
	.4byte	0x91
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x100e
	.uleb128 0x17
	.string	"fs"
	.byte	0x1
	.byte	0x6e
	.4byte	0x427
	.4byte	.LLST60
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0x6f
	.4byte	0x9c
	.4byte	.LLST61
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x70
	.4byte	0x91
	.4byte	.LLST62
	.uleb128 0x20
	.4byte	.LASF138
	.byte	0x1
	.byte	0x71
	.4byte	0x91
	.4byte	.LLST63
	.uleb128 0x20
	.4byte	.LASF139
	.byte	0x1
	.byte	0x74
	.4byte	0x48
	.4byte	.LLST64
	.uleb128 0x20
	.4byte	.LASF140
	.byte	0x1
	.byte	0x7b
	.4byte	0x9c
	.4byte	.LLST65
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0x1
	.byte	0x8b
	.4byte	0xa7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.4byte	.LASF142
	.byte	0x1
	.byte	0x8c
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.4byte	.LASF143
	.byte	0x1
	.byte	0x8d
	.4byte	0xbd
	.4byte	.LLST66
	.uleb128 0x20
	.4byte	.LASF144
	.byte	0x1
	.byte	0x8e
	.4byte	0x91
	.4byte	.LLST67
	.uleb128 0x2b
	.4byte	.LVL265
	.4byte	0x860
	.4byte	0xfc2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL271
	.4byte	0xa8c
	.4byte	0xfdc
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL273
	.4byte	0x772
	.4byte	0xff6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL275
	.4byte	0x5b1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x6
	.2byte	0x319
	.uleb128 0x2d
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x6
	.2byte	0x24c
	.uleb128 0x2d
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x6
	.2byte	0x222
	.uleb128 0x2e
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x7
	.byte	0x19
	.uleb128 0x2d
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x6
	.2byte	0x288
	.uleb128 0x2d
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x6
	.2byte	0x291
	.uleb128 0x2d
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x6
	.2byte	0x2b4
	.uleb128 0x2d
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x6
	.2byte	0x26e
	.uleb128 0x2d
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x6
	.2byte	0x29f
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x17
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL47
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL51
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x72
	.sleb128 52
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL42
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL14
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL15
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x7
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x7
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL21
	.4byte	.LVL30
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL55
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL57
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL64
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL70
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL61
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x7
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL75
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL75
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL78
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL76
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	.LVL115
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LFE4
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL77
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL94
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL110
	.4byte	.LVL137
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL77
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL77
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL137
	.4byte	.LFE4
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x72
	.sleb128 52
	.4byte	.LVL83
	.4byte	.LFE4
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL79
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134
	.4byte	.LVL139
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL86
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x72
	.sleb128 56
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL94
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x76
	.sleb128 -3
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x9
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 56
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL90
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL94
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL111
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL94
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL111
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL94
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL111
	.4byte	.LVL137
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL95
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x8
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL98
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL122
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL127
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL175
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL199
	.4byte	.LVL201
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL206
	.4byte	.LVL208
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL233
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL244
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL252
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL253
	.4byte	.LVL255
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL256
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL141
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL142
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL170
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL179
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL181
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL198
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL204
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL212
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL223
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL225
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL228
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL231
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL234
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL249
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL144
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL217
	.4byte	.LVL224
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL225
	.4byte	.LVL237
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL238
	.4byte	.LVL239
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL239
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x77
	.sleb128 52
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x72
	.sleb128 52
	.4byte	.LVL152
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL146
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL154
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162
	.4byte	.LVL167-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL167-1
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL177
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL186
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL190
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL201
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL213
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LVL252
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL252
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL254
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x77
	.sleb128 56
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x72
	.sleb128 56
	.4byte	.LVL152
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL154
	.4byte	.LVL250
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL252
	.4byte	.LVL255
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL230
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL237
	.4byte	.LVL250
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL252
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156
	.4byte	.LVL215
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0xc
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x22
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL166
	.4byte	.LVL167-1
	.2byte	0xc
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x22
	.4byte	.LVL167-1
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL181
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL189
	.4byte	.LVL191-1
	.2byte	0xc
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x22
	.4byte	.LVL191-1
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL201
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0xc
	.byte	0x75
	.sleb128 0
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL257
	.4byte	.LVL258
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL258
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL257
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL259
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL267
	.4byte	.LVL268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL268
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL281
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL288
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL275
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL281
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL260
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL264
	.4byte	.LVL277
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL277
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL281
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL284
	.4byte	.LVL285
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 80
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL285
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 80
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL260
	.4byte	.LVL263
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL285
	.4byte	.LVL287
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL261
	.4byte	.LVL262
	.2byte	0xc
	.byte	0x77
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x76
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL262
	.4byte	.LVL263
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL263
	.4byte	.LVL285
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL286
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.4byte	.LVL270
	.4byte	.LVL276
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL264
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x55
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF80:
	.string	"_align"
.LASF129:
	.string	"cur_pix"
.LASF31:
	.string	"fd_count"
.LASF137:
	.string	"spiffs_gc_check"
.LASF154:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF130:
	.string	"objix_hdr"
.LASF126:
	.string	"cand_ix"
.LASF41:
	.string	"file_cb_f"
.LASF77:
	.string	"flags"
.LASF68:
	.string	"phys_size"
.LASF124:
	.string	"erase_age"
.LASF0:
	.string	"unsigned int"
.LASF49:
	.string	"SPIFFS_CHECK_PAGE"
.LASF58:
	.string	"spiffs_check_report"
.LASF15:
	.string	"u16_t"
.LASF97:
	.string	"stored_scan_entry_index"
.LASF138:
	.string	"free_pages"
.LASF21:
	.string	"spiffs_obj_type"
.LASF11:
	.string	"__intptr_t"
.LASF152:
	.string	"spiffs_obj_lu_find_id_and_span"
.LASF127:
	.string	"reorder_cand_ix"
.LASF74:
	.string	"spiffs"
.LASF128:
	.string	"spiffs_gc_clean"
.LASF144:
	.string	"prev_free_pages"
.LASF98:
	.string	"obj_id_found"
.LASF123:
	.string	"erase_count"
.LASF105:
	.string	"obj_lu_buf"
.LASF84:
	.string	"meta"
.LASF111:
	.string	"spiffs_gc_quick"
.LASF142:
	.string	"count"
.LASF133:
	.string	"new_data_pix"
.LASF6:
	.string	"long long unsigned int"
.LASF151:
	.string	"spiffs_cb_object_event"
.LASF59:
	.string	"spiffs_check_callback"
.LASF69:
	.string	"phys_addr"
.LASF22:
	.string	"spiffs_read"
.LASF91:
	.string	"spiffs_gc_clean_state"
.LASF37:
	.string	"max_erase_count"
.LASF86:
	.string	"spiffs_page_object_ix"
.LASF55:
	.string	"SPIFFS_CHECK_DELETE_ORPHANED_INDEX"
.LASF72:
	.string	"log_page_size"
.LASF107:
	.string	"deleted_pages_in_block"
.LASF35:
	.string	"stats_p_deleted"
.LASF30:
	.string	"fd_space"
.LASF140:
	.string	"needed_pages"
.LASF75:
	.string	"obj_id"
.LASF87:
	.string	"FIND_OBJ_DATA"
.LASF19:
	.string	"spiffs_obj_id"
.LASF66:
	.string	"hal_write_f"
.LASF34:
	.string	"stats_p_allocated"
.LASF13:
	.string	"s32_t"
.LASF99:
	.string	"spiffs_gc"
.LASF70:
	.string	"phys_erase_block"
.LASF149:
	.string	"spiffs_page_move"
.LASF112:
	.string	"spiffs_gc_erase_page_stats"
.LASF24:
	.string	"free_cursor_block_ix"
.LASF90:
	.string	"FINISHED"
.LASF10:
	.string	"char"
.LASF115:
	.string	"spiffs_gc_find_candidate"
.LASF117:
	.string	"candidate_count"
.LASF62:
	.string	"SPIFFS_CB_DELETED"
.LASF32:
	.string	"err_code"
.LASF82:
	.string	"type"
.LASF122:
	.string	"used_pages_in_block"
.LASF56:
	.string	"SPIFFS_CHECK_DELETE_PAGE"
.LASF119:
	.string	"max_candidates"
.LASF25:
	.string	"free_cursor_obj_lu_entry"
.LASF146:
	.string	"spiffs_erase_block"
.LASF143:
	.string	"cand"
.LASF43:
	.string	"user_data"
.LASF40:
	.string	"check_cb_f"
.LASF125:
	.string	"score"
.LASF5:
	.string	"long long int"
.LASF157:
	.string	"spiffs_t"
.LASF113:
	.string	"dele"
.LASF116:
	.string	"block_candidates"
.LASF110:
	.string	"entry_offset"
.LASF85:
	.string	"spiffs_page_object_ix_header"
.LASF16:
	.string	"u8_t"
.LASF71:
	.string	"log_block_size"
.LASF136:
	.string	"new_objix_pix"
.LASF63:
	.string	"spiffs_fileop_type"
.LASF93:
	.string	"cur_obj_id"
.LASF135:
	.string	"objix_pix"
.LASF51:
	.string	"SPIFFS_CHECK_PROGRESS"
.LASF148:
	.string	"memset"
.LASF132:
	.string	"scan"
.LASF158:
	.string	"spiffs_gc_erase_block"
.LASF106:
	.string	"entries_per_page"
.LASF81:
	.string	"size"
.LASF73:
	.string	"spiffs_config"
.LASF114:
	.string	"allo"
.LASF45:
	.string	"spiffs_write"
.LASF139:
	.string	"tries"
.LASF109:
	.string	"obj_lookup_page"
.LASF27:
	.string	"cursor_obj_lu_entry"
.LASF101:
	.string	"blocks"
.LASF39:
	.string	"cache_size"
.LASF38:
	.string	"cache"
.LASF46:
	.string	"spiffs_erase"
.LASF95:
	.string	"cur_objix_pix"
.LASF67:
	.string	"hal_erase_f"
.LASF12:
	.string	"intptr_t"
.LASF78:
	.string	"spiffs_page_header"
.LASF103:
	.string	"cur_block_addr"
.LASF79:
	.string	"p_hdr"
.LASF23:
	.string	"block_count"
.LASF17:
	.string	"spiffs_block_ix"
.LASF64:
	.string	"spiffs_file_callback"
.LASF14:
	.string	"u32_t"
.LASF3:
	.string	"short int"
.LASF120:
	.string	"cand_blocks"
.LASF134:
	.string	"new_pix"
.LASF65:
	.string	"hal_read_f"
.LASF7:
	.string	"long int"
.LASF121:
	.string	"cand_scores"
.LASF94:
	.string	"cur_objix_spix"
.LASF88:
	.string	"MOVE_OBJ_DATA"
.LASF18:
	.string	"spiffs_page_ix"
.LASF141:
	.string	"cands"
.LASF89:
	.string	"MOVE_OBJ_IX"
.LASF29:
	.string	"work"
.LASF28:
	.string	"lu_work"
.LASF118:
	.string	"fs_crammed"
.LASF83:
	.string	"name"
.LASF108:
	.string	"free_pages_in_block"
.LASF26:
	.string	"cursor_block_ix"
.LASF8:
	.string	"sizetype"
.LASF76:
	.string	"span_ix"
.LASF9:
	.string	"long unsigned int"
.LASF52:
	.string	"SPIFFS_CHECK_ERROR"
.LASF57:
	.string	"SPIFFS_CHECK_DELETE_BAD_FILE"
.LASF156:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\spiffs"
.LASF50:
	.string	"spiffs_check_type"
.LASF102:
	.string	"cur_block"
.LASF54:
	.string	"SPIFFS_CHECK_FIX_LOOKUP"
.LASF2:
	.string	"unsigned char"
.LASF42:
	.string	"mounted"
.LASF20:
	.string	"spiffs_span_ix"
.LASF53:
	.string	"SPIFFS_CHECK_FIX_INDEX"
.LASF145:
	.string	"spiffs_cache_drop_page"
.LASF131:
	.string	"objix"
.LASF60:
	.string	"SPIFFS_CB_CREATED"
.LASF92:
	.string	"state"
.LASF48:
	.string	"SPIFFS_CHECK_INDEX"
.LASF44:
	.string	"config_magic"
.LASF150:
	.string	"spiffs_page_delete"
.LASF104:
	.string	"cur_entry"
.LASF33:
	.string	"free_blocks"
.LASF1:
	.string	"signed char"
.LASF100:
	.string	"max_free_pages"
.LASF4:
	.string	"short unsigned int"
.LASF147:
	.string	"spiffs_phys_rd"
.LASF47:
	.string	"SPIFFS_CHECK_LOOKUP"
.LASF155:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs/src/spiffs_gc.c"
.LASF96:
	.string	"cur_data_pix"
.LASF36:
	.string	"cleaning"
.LASF153:
	.string	"spiffs_object_update_index_hdr"
.LASF61:
	.string	"SPIFFS_CB_UPDATED"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
