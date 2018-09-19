	.file	"spiffs_cache.c"
	.text
.Ltext0:
	.section	.text.spiffs_cache_page_get,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_get, @function
spiffs_cache_page_get:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs/src/spiffs_cache.c"
	.loc 1 14 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 15 0
	l32i	a10, a2, 88
.LVL1:
	.loc 1 16 0
	l32i.n	a12, a10, 8
	l32i.n	a8, a10, 12
	bnone	a12, a8, .L6
	movi.n	a9, 0
	j	.L3
.LVL2:
.L5:
.LBB2:
	.loc 1 19 0
	l32i.n	a11, a10, 16
	l32i.n	a8, a2, 28
	addi	a8, a8, 20
	mull	a8, a8, a9
	add.n	a8, a11, a8
.LVL3:
	.loc 1 20 0
	bbc	a12, a9, .L4
	.loc 1 21 0 discriminator 1
	l8ui	a11, a8, 0
	.loc 1 20 0 discriminator 1
	sext	a11, a11, 7
	bltz	a11, .L4
	.loc 1 22 0
	l16ui	a11, a8, 8
	.loc 1 21 0
	bne	a11, a3, .L4
	.loc 1 24 0
	l32i.n	a2, a10, 4
.LVL4:
	s32i.n	a2, a8, 4
	.loc 1 25 0
	mov.n	a2, a8
	retw.n
.LVL5:
.L4:
.LBE2:
	.loc 1 18 0 discriminator 2
	addi.n	a9, a9, 1
.LVL6:
.L3:
	.loc 1 18 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 0
	blt	a9, a8, .L5
	.loc 1 29 0 is_stmt 1
	movi.n	a2, 0
.LVL7:
	retw.n
.LVL8:
.L6:
	.loc 1 16 0
	movi.n	a2, 0
.LVL9:
	.loc 1 30 0
	retw.n
.LFE0:
	.size	spiffs_cache_page_get, .-spiffs_cache_page_get
	.section	.text.spiffs_cache_page_free,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_free, @function
spiffs_cache_page_free:
.LFB1:
	.loc 1 33 0
.LVL10:
	entry	sp, 32
.LCFI1:
.LVL11:
	.loc 1 35 0
	l32i	a5, a2, 88
.LVL12:
	.loc 1 36 0
	l32i.n	a13, a5, 16
	l32i.n	a12, a2, 28
	addi	a8, a12, 20
	mull	a8, a8, a3
	add.n	a6, a13, a8
.LVL13:
	.loc 1 37 0
	l32i.n	a9, a5, 8
	movi.n	a10, 1
	ssl	a3
	sll	a3, a10
.LVL14:
	bnone	a3, a9, .L10
	.loc 1 38 0
	beqz.n	a4, .L11
	.loc 1 39 0 discriminator 1
	l8ui	a4, a6, 0
.LVL15:
	.loc 1 38 0 discriminator 1
	sext	a9, a4, 7
	bltz	a9, .L12
	.loc 1 39 0
	bbci	a4, 0, .L13
.LBB3:
	.loc 1 41 0
	addi	a8, a8, 20
.LVL16:
	.loc 1 43 0
	l32i.n	a9, a2, 4
	l32i.n	a11, a2, 16
	l16ui	a4, a6, 8
	mull	a4, a4, a12
	add.n	a13, a13, a8
.LVL17:
	add.n	a11, a11, a4
	mov.n	a10, a2
	callx8	a9
.LVL18:
	mov.n	a2, a10
.LVL19:
	j	.L9
.LVL20:
.L11:
.LBE3:
	.loc 1 34 0
	movi.n	a2, 0
.LVL21:
	j	.L9
.LVL22:
.L12:
	movi.n	a2, 0
.LVL23:
	j	.L9
.LVL24:
.L13:
	movi.n	a2, 0
.LVL25:
.L9:
	.loc 1 54 0
	movi.n	a4, -1
	xor	a3, a4, a3
	l32i.n	a4, a5, 8
	and	a3, a4, a3
	s32i.n	a3, a5, 8
	.loc 1 55 0
	movi.n	a3, 0
	s8i	a3, a6, 0
	retw.n
.LVL26:
.L10:
	.loc 1 34 0
	movi.n	a2, 0
.LVL27:
	.loc 1 59 0
	retw.n
.LFE1:
	.size	spiffs_cache_page_free, .-spiffs_cache_page_free
	.section	.text.spiffs_cache_page_remove_oldest,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_remove_oldest, @function
spiffs_cache_page_remove_oldest:
.LFB2:
	.loc 1 62 0
.LVL28:
	entry	sp, 32
.LCFI2:
.LVL29:
	.loc 1 64 0
	l32i	a13, a2, 88
.LVL30:
	.loc 1 66 0
	l32i.n	a8, a13, 8
	l32i.n	a9, a13, 12
	and	a8, a8, a9
	bne	a9, a8, .L19
	movi.n	a10, 0
	movi.n	a11, -1
	mov.n	a9, a10
	j	.L16
.LVL31:
.L18:
.LBB4:
	.loc 1 76 0
	l32i.n	a12, a13, 16
	l32i.n	a8, a2, 28
	addi	a8, a8, 20
	mull	a8, a8, a9
	add.n	a8, a12, a8
.LVL32:
	.loc 1 77 0
	l32i.n	a12, a13, 4
	l32i.n	a14, a8, 4
	sub	a12, a12, a14
	bgeu	a10, a12, .L17
	.loc 1 78 0 discriminator 1
	l8ui	a8, a8, 0
.LVL33:
	and	a8, a8, a3
	.loc 1 77 0 discriminator 1
	bne	a8, a4, .L17
	.loc 1 79 0
	mov.n	a10, a12
.LVL34:
	.loc 1 80 0
	mov.n	a11, a9
.LVL35:
.L17:
.LBE4:
	.loc 1 75 0 discriminator 2
	addi.n	a9, a9, 1
.LVL36:
.L16:
	.loc 1 75 0 is_stmt 0 discriminator 1
	l8ui	a8, a13, 0
	blt	a9, a8, .L18
	.loc 1 84 0 is_stmt 1
	bltz	a11, .L21
	.loc 1 85 0
	movi.n	a12, 1
	mov.n	a10, a2
.LVL37:
	call8	spiffs_cache_page_free
.LVL38:
	mov.n	a2, a10
.LVL39:
	retw.n
.LVL40:
.L19:
	.loc 1 68 0
	movi.n	a2, 0
.LVL41:
	retw.n
.LVL42:
.L21:
	.loc 1 63 0
	movi.n	a2, 0
.LVL43:
	.loc 1 89 0
	retw.n
.LFE2:
	.size	spiffs_cache_page_remove_oldest, .-spiffs_cache_page_remove_oldest
	.section	.text.spiffs_cache_page_allocate,"ax",@progbits
	.align	4
	.type	spiffs_cache_page_allocate, @function
spiffs_cache_page_allocate:
.LFB3:
	.loc 1 92 0
.LVL44:
	entry	sp, 32
.LCFI3:
	.loc 1 93 0
	l32i	a11, a2, 88
.LVL45:
	.loc 1 94 0
	l32i.n	a12, a11, 8
	beqi	a12, -1, .L27
	movi.n	a8, 0
	j	.L24
.LVL46:
.L26:
	.loc 1 100 0
	movi.n	a9, 1
	ssl	a8
	sll	a9, a9
	bany	a12, a9, .L25
.LBB5:
	.loc 1 101 0
	l32i.n	a13, a11, 16
	l32i.n	a10, a2, 28
	addi	a10, a10, 20
	mull	a8, a10, a8
.LVL47:
	add.n	a2, a13, a8
.LVL48:
	.loc 1 102 0
	or	a9, a12, a9
	s32i.n	a9, a11, 8
	.loc 1 103 0
	l32i.n	a8, a11, 4
	s32i.n	a8, a2, 4
	.loc 1 105 0
	retw.n
.LVL49:
.L25:
.LBE5:
	.loc 1 99 0 discriminator 2
	addi.n	a8, a8, 1
.LVL50:
.L24:
	.loc 1 99 0 is_stmt 0 discriminator 1
	l8ui	a10, a11, 0
	blt	a8, a10, .L26
	.loc 1 109 0 is_stmt 1
	movi.n	a2, 0
.LVL51:
	retw.n
.LVL52:
.L27:
	.loc 1 96 0
	movi.n	a2, 0
.LVL53:
	.loc 1 110 0
	retw.n
.LFE3:
	.size	spiffs_cache_page_allocate, .-spiffs_cache_page_allocate
	.section	.text.spiffs_cache_drop_page,"ax",@progbits
	.align	4
	.global	spiffs_cache_drop_page
	.type	spiffs_cache_drop_page, @function
spiffs_cache_drop_page:
.LFB4:
	.loc 1 113 0
.LVL54:
	entry	sp, 32
.LCFI4:
	.loc 1 114 0
	extui	a11, a3, 0, 16
	mov.n	a10, a2
	call8	spiffs_cache_page_get
.LVL55:
	.loc 1 115 0
	beqz.n	a10, .L28
	.loc 1 116 0
	movi.n	a12, 0
	l8ui	a11, a10, 1
	mov.n	a10, a2
.LVL56:
	call8	spiffs_cache_page_free
.LVL57:
.L28:
	retw.n
.LFE4:
	.size	spiffs_cache_drop_page, .-spiffs_cache_drop_page
	.section	.text.spiffs_phys_rd,"ax",@progbits
	.align	4
	.global	spiffs_phys_rd
	.type	spiffs_phys_rd, @function
spiffs_phys_rd:
.LFB5:
	.loc 1 129 0
.LVL58:
	entry	sp, 48
.LCFI5:
	extui	a3, a3, 0, 8
.LVL59:
	.loc 1 132 0
	l32i	a4, a2, 88
.LVL60:
	.loc 1 133 0
	l32i.n	a11, a2, 16
	sub	a11, a5, a11
	l32i.n	a8, a2, 28
	quou	a11, a11, a8
	extui	a11, a11, 0, 16
	mov.n	a10, a2
	call8	spiffs_cache_page_get
.LVL61:
	.loc 1 134 0
	l32i.n	a8, a4, 4
	addi.n	a8, a8, 1
	s32i.n	a8, a4, 4
	.loc 1 135 0
	beqz.n	a10, .L31
.LBB6:
	.loc 1 140 0
	s32i.n	a8, a10, 4
	.loc 1 141 0
	l32i.n	a11, a4, 16
	l8ui	a8, a10, 1
	l32i.n	a4, a2, 28
.LVL62:
	addi	a3, a4, 20
.LVL63:
	mull	a3, a8, a3
	addi	a3, a3, 20
.LVL64:
	.loc 1 142 0
	l32i.n	a2, a2, 16
.LVL65:
	sub	a5, a5, a2
.LVL66:
	remu	a5, a5, a4
	add.n	a5, a3, a5
	mov.n	a12, a6
	add.n	a11, a11, a5
.LVL67:
	mov.n	a10, a7
.LVL68:
	call8	memcpy
.LVL69:
.LBE6:
	.loc 1 131 0
	movi.n	a2, 0
	retw.n
.LVL70:
.L31:
	.loc 1 144 0
	extui	a3, a3, 0, 2
	bnei	a3, 1, .L33
	.loc 1 146 0
	l32i.n	a3, a2, 0
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a2
.LVL71:
	callx8	a3
.LVL72:
	mov.n	a2, a10
.LVL73:
	retw.n
.LVL74:
.L33:
	.loc 1 153 0
	movi.n	a12, 0
	movi	a11, 0x80
	mov.n	a10, a2
.LVL75:
	call8	spiffs_cache_page_remove_oldest
.LVL76:
	s32i.n	a10, sp, 4
.LVL77:
	.loc 1 155 0
	mov.n	a10, a2
.LVL78:
	call8	spiffs_cache_page_allocate
.LVL79:
	mov.n	a3, a10
.LVL80:
	.loc 1 156 0
	beqz.n	a10, .L34
.LBB7:
	.loc 1 157 0
	movi.n	a8, 2
	s8i	a8, a10, 0
	.loc 1 158 0
	l32i.n	a8, a2, 16
	sub	a8, a5, a8
	l32i.n	a9, a2, 28
	quou	a8, a8, a9
	s16i	a8, a10, 8
	.loc 1 161 0
	l32i.n	a9, a2, 0
	l32i.n	a11, a2, 16
	sub	a11, a5, a11
	l32i.n	a12, a2, 28
	remu	a11, a11, a12
	l32i.n	a13, a4, 16
	l8ui	a10, a10, 1
	addi	a8, a12, 20
	mull	a8, a10, a8
	addi	a8, a8, 20
	add.n	a13, a13, a8
	sub	a11, a5, a11
	mov.n	a10, a2
	callx8	a9
.LVL81:
	s32i.n	a10, sp, 0
.LVL82:
	.loc 1 165 0
	bnez.n	a10, .L35
.LBE7:
	.loc 1 153 0
	l32i.n	a8, sp, 4
	s32i.n	a8, sp, 0
.L35:
.LVL83:
.LBB8:
	.loc 1 169 0
	l32i.n	a11, a4, 16
	l8ui	a8, a3, 1
	l32i.n	a4, a2, 28
.LVL84:
	addi	a3, a4, 20
.LVL85:
	mull	a3, a8, a3
	addi	a3, a3, 20
.LVL86:
	.loc 1 170 0
	l32i.n	a2, a2, 16
.LVL87:
	sub	a5, a5, a2
.LVL88:
	remu	a5, a5, a4
	add.n	a5, a3, a5
	mov.n	a12, a6
	add.n	a11, a11, a5
.LVL89:
	mov.n	a10, a7
.LVL90:
	call8	memcpy
.LVL91:
.LBE8:
	l32i.n	a2, sp, 0
	retw.n
.LVL92:
.L34:
.LBB9:
	.loc 1 173 0
	l32i.n	a3, a2, 0
.LVL93:
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a2
.LVL94:
	callx8	a3
.LVL95:
	.loc 1 174 0
	bnez.n	a10, .L36
.LBE9:
	.loc 1 153 0
	l32i.n	a2, sp, 4
.LVL96:
	retw.n
.LVL97:
.L36:
.LBB10:
	.loc 1 176 0
	mov.n	a2, a10
.LVL98:
.LBE10:
	.loc 1 181 0
	retw.n
.LFE5:
	.size	spiffs_phys_rd, .-spiffs_phys_rd
	.section	.text.spiffs_phys_wr,"ax",@progbits
	.align	4
	.global	spiffs_phys_wr
	.type	spiffs_phys_wr, @function
spiffs_phys_wr:
.LFB6:
	.loc 1 190 0
.LVL99:
	entry	sp, 48
.LCFI6:
	extui	a3, a3, 0, 8
	s32i.n	a3, sp, 0
	.loc 1 192 0
	l32i.n	a11, a2, 16
	sub	a11, a5, a11
	l32i.n	a3, a2, 28
.LVL100:
	quou	a11, a11, a3
.LVL101:
	.loc 1 193 0
	l32i	a3, a2, 88
.LVL102:
	.loc 1 194 0
	extui	a11, a11, 0, 16
.LVL103:
	mov.n	a10, a2
	call8	spiffs_cache_page_get
.LVL104:
	mov.n	a4, a10
.LVL105:
	.loc 1 196 0
	beqz.n	a10, .L38
	movi.n	a8, 0x1c
	l32i.n	a9, sp, 0
	and	a8, a9, a8
	.loc 1 196 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x18
	beq	a8, a9, .L38
.LBB11:
	.loc 1 200 0 is_stmt 1
	bnez.n	a8, .L39
	.loc 1 200 0 is_stmt 0 discriminator 1
	l32i.n	a9, sp, 0
	extui	a8, a9, 0, 2
	beqz.n	a8, .L39
	.loc 1 203 0 is_stmt 1
	movi.n	a12, 0
	l8ui	a11, a10, 1
	mov.n	a10, a2
	call8	spiffs_cache_page_free
.LVL106:
	.loc 1 204 0
	l32i.n	a3, a2, 4
.LVL107:
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a2
	callx8	a3
.LVL108:
	mov.n	a2, a10
.LVL109:
	retw.n
.LVL110:
.L39:
	.loc 1 207 0
	l32i.n	a10, a3, 16
	l8ui	a11, a4, 1
	l32i.n	a8, a2, 28
	addi	a9, a8, 20
	mull	a11, a11, a9
	addi	a11, a11, 20
.LVL111:
	.loc 1 208 0
	l32i.n	a9, a2, 16
	sub	a9, a5, a9
	remu	a8, a9, a8
	add.n	a8, a11, a8
	mov.n	a12, a6
	mov.n	a11, a7
.LVL112:
	add.n	a10, a10, a8
.LVL113:
	call8	memcpy
.LVL114:
	.loc 1 210 0
	l32i.n	a8, a3, 4
	addi.n	a8, a8, 1
	s32i.n	a8, a3, 4
	.loc 1 211 0
	s32i.n	a8, a4, 4
	.loc 1 213 0
	l8ui	a3, a4, 0
.LVL115:
	bbci	a3, 1, .L41
	.loc 1 215 0
	l32i.n	a3, a2, 4
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a2
	callx8	a3
.LVL116:
	mov.n	a2, a10
.LVL117:
	retw.n
.LVL118:
.L38:
.LBE11:
	.loc 1 221 0
	l32i.n	a3, a2, 4
.LVL119:
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a5
	mov.n	a10, a2
	callx8	a3
.LVL120:
	mov.n	a2, a10
.LVL121:
	retw.n
.LVL122:
.L41:
.LBB12:
	.loc 1 217 0
	movi.n	a2, 0
.LVL123:
.LBE12:
	.loc 1 223 0
	retw.n
.LFE6:
	.size	spiffs_phys_wr, .-spiffs_phys_wr
	.section	.text.spiffs_cache_page_get_by_fd,"ax",@progbits
	.align	4
	.global	spiffs_cache_page_get_by_fd
	.type	spiffs_cache_page_get_by_fd, @function
spiffs_cache_page_get_by_fd:
.LFB7:
	.loc 1 227 0
.LVL124:
	entry	sp, 32
.LCFI7:
	.loc 1 228 0
	l32i	a10, a2, 88
.LVL125:
	.loc 1 230 0
	l32i.n	a12, a10, 8
	l32i.n	a8, a10, 12
	bnone	a12, a8, .L47
	movi.n	a9, 0
	j	.L44
.LVL126:
.L46:
.LBB13:
	.loc 1 237 0
	l32i.n	a11, a10, 16
	l32i.n	a8, a2, 28
	addi	a8, a8, 20
	mull	a8, a8, a9
	add.n	a8, a11, a8
.LVL127:
	.loc 1 238 0
	bbc	a12, a9, .L45
	.loc 1 239 0 discriminator 1
	l8ui	a11, a8, 0
	.loc 1 238 0 discriminator 1
	sext	a11, a11, 7
	bgez	a11, .L45
	.loc 1 240 0
	l16ui	a13, a8, 8
	l16ui	a11, a3, 6
	.loc 1 239 0
	beq	a13, a11, .L48
.L45:
.LBE13:
	.loc 1 236 0 discriminator 2
	addi.n	a9, a9, 1
.LVL128:
.L44:
	.loc 1 236 0 is_stmt 0 discriminator 1
	l8ui	a8, a10, 0
	blt	a9, a8, .L46
	.loc 1 245 0 is_stmt 1
	movi.n	a2, 0
.LVL129:
	retw.n
.LVL130:
.L47:
	.loc 1 232 0
	movi.n	a2, 0
.LVL131:
	retw.n
.LVL132:
.L48:
.LBB14:
	.loc 1 241 0
	mov.n	a2, a8
.LVL133:
.LBE14:
	.loc 1 246 0
	retw.n
.LFE7:
	.size	spiffs_cache_page_get_by_fd, .-spiffs_cache_page_get_by_fd
	.section	.text.spiffs_cache_page_allocate_by_fd,"ax",@progbits
	.align	4
	.global	spiffs_cache_page_allocate_by_fd
	.type	spiffs_cache_page_allocate_by_fd, @function
spiffs_cache_page_allocate_by_fd:
.LFB8:
	.loc 1 250 0
.LVL134:
	entry	sp, 32
.LCFI8:
	.loc 1 253 0
	movi.n	a12, 0
	movi	a11, 0x80
	mov.n	a10, a2
	call8	spiffs_cache_page_remove_oldest
.LVL135:
	.loc 1 254 0
	mov.n	a10, a2
	call8	spiffs_cache_page_allocate
.LVL136:
	.loc 1 255 0
	beqz.n	a10, .L51
	.loc 1 260 0
	movi	a2, -0x80
.LVL137:
	s8i	a2, a10, 0
	.loc 1 261 0
	l16ui	a2, a3, 6
	s16i	a2, a10, 8
	.loc 1 262 0
	s32i.n	a10, a3, 32
	.loc 1 264 0
	mov.n	a2, a10
	retw.n
.LVL138:
.L51:
	.loc 1 257 0
	movi.n	a2, 0
.LVL139:
	.loc 1 265 0
	retw.n
.LFE8:
	.size	spiffs_cache_page_allocate_by_fd, .-spiffs_cache_page_allocate_by_fd
	.section	.text.spiffs_cache_fd_release,"ax",@progbits
	.align	4
	.global	spiffs_cache_fd_release
	.type	spiffs_cache_fd_release, @function
spiffs_cache_fd_release:
.LFB9:
	.loc 1 268 0
.LVL140:
	entry	sp, 32
.LCFI9:
	.loc 1 269 0
	beqz.n	a3, .L52
	.loc 1 271 0
	l32i.n	a10, a2, 60
.LVL141:
	.loc 1 272 0
	movi.n	a9, 0
	j	.L54
.LVL142:
.L56:
.LBB15:
	.loc 1 273 0
	addx2	a11, a9, a9
	slli	a8, a11, 4
	add.n	a8, a10, a8
.LVL143:
	.loc 1 274 0
	l16si	a11, a8, 4
	beqz.n	a11, .L55
	.loc 1 274 0 is_stmt 0 discriminator 1
	l32i.n	a11, a8, 32
	bne	a3, a11, .L55
	.loc 1 275 0 is_stmt 1
	movi.n	a11, 0
	s32i.n	a11, a8, 32
.L55:
.LBE15:
	.loc 1 272 0 discriminator 2
	addi.n	a9, a9, 1
.LVL144:
.L54:
	.loc 1 272 0 is_stmt 0 discriminator 1
	l32i	a8, a2, 64
	bltu	a9, a8, .L56
	.loc 1 278 0 is_stmt 1
	movi.n	a12, 0
	l8ui	a11, a3, 1
	mov.n	a10, a2
.LVL145:
	call8	spiffs_cache_page_free
.LVL146:
	.loc 1 280 0
	movi.n	a2, 0
.LVL147:
	s16i	a2, a3, 8
.L52:
	retw.n
.LFE9:
	.size	spiffs_cache_fd_release, .-spiffs_cache_fd_release
	.section	.text.spiffs_cache_init,"ax",@progbits
	.align	4
	.global	spiffs_cache_init
	.type	spiffs_cache_init, @function
spiffs_cache_init:
.LFB10:
	.loc 1 286 0
.LVL148:
	entry	sp, 64
.LCFI10:
	.loc 1 287 0
	l32i	a10, a2, 88
	beqz.n	a10, .L57
	.loc 1 288 0
	l32i	a11, a2, 92
.LVL149:
	.loc 1 292 0
	addi	a3, a11, -20
	l32i.n	a11, a2, 28
.LVL150:
	addi	a11, a11, 20
	quou	a11, a3, a11
	.loc 1 291 0
	mov.n	a9, a11
.LVL151:
	.loc 1 293 0
	blti	a11, 1, .L57
	movi.n	a4, 0
	mov.n	a3, a4
	j	.L59
.LVL152:
.L60:
	.loc 1 296 0 discriminator 3
	slli	a3, a3, 1
.LVL153:
	.loc 1 297 0 discriminator 3
	movi.n	a8, 1
	or	a3, a3, a8
.LVL154:
	.loc 1 295 0 discriminator 3
	add.n	a4, a4, a8
.LVL155:
.L59:
	.loc 1 295 0 is_stmt 0 discriminator 1
	blt	a4, a9, .L60
	.loc 1 301 0 is_stmt 1
	movi.n	a4, 0
.LVL156:
	s32i.n	a4, sp, 0
	s32i.n	a4, sp, 4
	.loc 1 302 0
	s8i	a11, sp, 0
	.loc 1 303 0
	addi	a5, a10, 20
	s32i.n	a5, sp, 16
	.loc 1 305 0
	movi.n	a5, -1
	s32i.n	a5, sp, 8
	.loc 1 306 0
	s32i.n	a3, sp, 12
	.loc 1 307 0
	movi.n	a12, 0x14
	mov.n	a11, sp
	call8	memcpy
.LVL157:
	.loc 1 309 0
	l32i	a3, a2, 88
.LVL158:
	.loc 1 311 0
	l8ui	a12, a3, 0
	l32i.n	a8, a2, 28
	addi	a8, a8, 20
	mull	a12, a12, a8
	mov.n	a11, a4
	l32i.n	a10, a3, 16
	call8	memset
.LVL159:
	.loc 1 313 0
	l32i.n	a8, a3, 12
	xor	a8, a5, a8
	l32i.n	a5, a3, 8
	and	a8, a5, a8
	s32i.n	a8, a3, 8
.LVL160:
	.loc 1 314 0
	mov.n	a11, a4
	j	.L61
.LVL161:
.L62:
	.loc 1 315 0 discriminator 3
	l32i.n	a4, a3, 16
	l32i.n	a8, a2, 28
	addi	a8, a8, 20
	mull	a8, a8, a11
	add.n	a8, a4, a8
	s8i	a11, a8, 1
	.loc 1 314 0 discriminator 3
	addi.n	a11, a11, 1
.LVL162:
.L61:
	.loc 1 314 0 is_stmt 0 discriminator 1
	l8ui	a4, sp, 0
	blt	a11, a4, .L62
.LVL163:
.L57:
	retw.n
.LFE10:
	.size	spiffs_cache_init, .-spiffs_cache_init
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
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI10-.LFB10
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE20:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/include/spiffs_config.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs/src/spiffs.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs/src/spiffs_nucleus.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdd5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xc
	.4byte	.LASF123
	.4byte	.LASF124
	.4byte	.Ldebug_ranges0+0x60
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
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x36
	.4byte	0x48
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0x37
	.4byte	0x25
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.byte	0x38
	.4byte	0x3a
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.byte	0x39
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x3b
	.4byte	0x33
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x12f
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x2
	.2byte	0x132
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x2
	.2byte	0x136
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x13a
	.4byte	0x9c
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x3
	.byte	0x48
	.4byte	0x91
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x3
	.byte	0x4a
	.4byte	0x9c
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x3
	.byte	0x55
	.4byte	0x103
	.uleb128 0x7
	.byte	0x4
	.4byte	0x109
	.uleb128 0x8
	.4byte	0x7b
	.4byte	0x127
	.uleb128 0x9
	.4byte	0x127
	.uleb128 0x9
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x25b
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x12d
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0x74
	.byte	0x3
	.byte	0xe7
	.4byte	0x25b
	.uleb128 0xb
	.string	"cfg"
	.byte	0x3
	.byte	0xe9
	.4byte	0x3f0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x3
	.byte	0xeb
	.4byte	0x86
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x3
	.byte	0xee
	.4byte	0xb2
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x3
	.byte	0xf0
	.4byte	0x48
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x3
	.byte	0xf2
	.4byte	0xb2
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x3
	.byte	0xf4
	.4byte	0x48
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x3
	.byte	0xf7
	.4byte	0x25b
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x3
	.byte	0xf9
	.4byte	0x25b
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x3
	.byte	0xfb
	.4byte	0x25b
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x3
	.byte	0xfd
	.4byte	0x86
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x3
	.2byte	0x100
	.4byte	0x7b
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x103
	.4byte	0x86
	.byte	0x48
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x105
	.4byte	0x86
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x3
	.2byte	0x107
	.4byte	0x86
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x3
	.2byte	0x109
	.4byte	0xa7
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x3
	.2byte	0x10b
	.4byte	0xca
	.byte	0x56
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x3
	.2byte	0x113
	.4byte	0x5d
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x3
	.2byte	0x115
	.4byte	0x86
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x3
	.2byte	0x11d
	.4byte	0x302
	.byte	0x60
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x3
	.2byte	0x11f
	.4byte	0x35c
	.byte	0x64
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x3
	.2byte	0x121
	.4byte	0xa7
	.byte	0x68
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x3
	.2byte	0x123
	.4byte	0x5d
	.byte	0x6c
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x3
	.2byte	0x125
	.4byte	0x86
	.byte	0x70
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x5
	.4byte	.LASF45
	.byte	0x3
	.byte	0x57
	.4byte	0x103
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x3
	.byte	0x59
	.4byte	0x277
	.uleb128 0x7
	.byte	0x4
	.4byte	0x27d
	.uleb128 0x8
	.4byte	0x7b
	.4byte	0x296
	.uleb128 0x9
	.4byte	0x127
	.uleb128 0x9
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x86
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x25
	.byte	0x3
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
	.uleb128 0x5
	.4byte	.LASF50
	.byte	0x3
	.byte	0x6a
	.4byte	0x296
	.uleb128 0xe
	.byte	0x4
	.4byte	0x25
	.byte	0x3
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
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x3
	.byte	0x75
	.4byte	0x2c0
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x3
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
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x86
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x25
	.byte	0x3
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
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0x3
	.byte	0x88
	.4byte	0x332
	.uleb128 0x5
	.4byte	.LASF64
	.byte	0x3
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
	.4byte	0xca
	.uleb128 0x9
	.4byte	0xbe
	.byte	0
	.uleb128 0x11
	.byte	0x20
	.byte	0x3
	.byte	0xc8
	.4byte	0x3f0
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x3
	.byte	0xca
	.4byte	0xf8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x3
	.byte	0xcc
	.4byte	0x261
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x3
	.byte	0xce
	.4byte	0x26c
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x3
	.byte	0xd1
	.4byte	0x86
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x3
	.byte	0xd4
	.4byte	0x86
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x3
	.byte	0xd6
	.4byte	0x86
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x3
	.byte	0xdb
	.4byte	0x86
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x3
	.byte	0xde
	.4byte	0x86
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x3
	.byte	0xe5
	.4byte	0x387
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x3
	.2byte	0x126
	.4byte	0x12d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3fb
	.uleb128 0x12
	.byte	0xc
	.byte	0x3
	.2byte	0x147
	.4byte	0x44b
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x3
	.2byte	0x149
	.4byte	0x44b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x3
	.2byte	0x14b
	.4byte	0x86
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x3
	.2byte	0x14d
	.4byte	0xd6
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x3
	.2byte	0x14f
	.4byte	0xd6
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0x3
	.2byte	0x150
	.4byte	0x40d
	.uleb128 0x12
	.byte	0x2
	.byte	0x4
	.2byte	0x19a
	.4byte	0x474
	.uleb128 0x13
	.string	"pix"
	.byte	0x4
	.2byte	0x19c
	.4byte	0xbe
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0xc
	.byte	0x4
	.2byte	0x1a0
	.4byte	0x4a5
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x1a2
	.4byte	0xca
	.byte	0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x1a4
	.4byte	0x86
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x1a6
	.4byte	0x9c
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.byte	0xc
	.byte	0x4
	.2byte	0x198
	.4byte	0x4b9
	.uleb128 0x15
	.4byte	0x45d
	.uleb128 0x15
	.4byte	0x474
	.byte	0
	.uleb128 0x12
	.byte	0x14
	.byte	0x4
	.2byte	0x191
	.4byte	0x4ef
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x193
	.4byte	0xa7
	.byte	0
	.uleb128 0x13
	.string	"ix"
	.byte	0x4
	.2byte	0x195
	.4byte	0xa7
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x197
	.4byte	0x86
	.byte	0x4
	.uleb128 0x16
	.4byte	0x4a5
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x1aa
	.4byte	0x4b9
	.uleb128 0x12
	.byte	0x14
	.byte	0x4
	.2byte	0x1ad
	.4byte	0x546
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x1ae
	.4byte	0xa7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x1af
	.4byte	0x86
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x1b0
	.4byte	0x86
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x1b1
	.4byte	0x86
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x1b2
	.4byte	0x25b
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x1b3
	.4byte	0x4fb
	.uleb128 0x12
	.byte	0x30
	.byte	0x4
	.2byte	0x1b9
	.4byte	0x611
	.uleb128 0x13
	.string	"fs"
	.byte	0x4
	.2byte	0x1bb
	.4byte	0x407
	.byte	0
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x1bd
	.4byte	0xe2
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x1bf
	.4byte	0xca
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x1c1
	.4byte	0x86
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x1c3
	.4byte	0xbe
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x1c5
	.4byte	0xbe
	.byte	0xe
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x1c7
	.4byte	0xd6
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x1c9
	.4byte	0x86
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x1cb
	.4byte	0x86
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x1cd
	.4byte	0xed
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x1cf
	.4byte	0x611
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x1d3
	.4byte	0x86
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x1d5
	.4byte	0x9c
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x1d9
	.4byte	0x617
	.byte	0x2c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x4ef
	.uleb128 0x7
	.byte	0x4
	.4byte	0x451
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x1db
	.4byte	0x552
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x1
	.byte	0xe
	.4byte	0x611
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x690
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0xe
	.4byte	0x407
	.4byte	.LLST0
	.uleb128 0x19
	.string	"pix"
	.byte	0x1
	.byte	0xe
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0xf
	.4byte	0x690
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x11
	.4byte	0x48
	.4byte	.LLST1
	.uleb128 0x1c
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0x13
	.4byte	0x611
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x546
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x1
	.byte	0x21
	.4byte	0x7b
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x728
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0x21
	.4byte	0x407
	.4byte	.LLST3
	.uleb128 0x18
	.string	"ix"
	.byte	0x1
	.byte	0x21
	.4byte	0x48
	.4byte	.LLST4
	.uleb128 0x1d
	.4byte	.LASF102
	.byte	0x1
	.byte	0x21
	.4byte	0xa7
	.4byte	.LLST5
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x22
	.4byte	0x7b
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0x23
	.4byte	0x690
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1e
	.string	"cp"
	.byte	0x1
	.byte	0x24
	.4byte	0x611
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1c
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x1b
	.string	"mem"
	.byte	0x1
	.byte	0x29
	.4byte	0x25b
	.4byte	.LLST7
	.uleb128 0x1f
	.4byte	.LVL18
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x1
	.byte	0x3e
	.4byte	0x7b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e4
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0x3e
	.4byte	0x407
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	.LASF104
	.byte	0x1
	.byte	0x3e
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF82
	.byte	0x1
	.byte	0x3e
	.4byte	0xa7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x3f
	.4byte	0x7b
	.4byte	.LLST9
	.uleb128 0x22
	.4byte	.LASF38
	.byte	0x1
	.byte	0x40
	.4byte	0x690
	.4byte	.LLST10
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x48
	.4byte	0x48
	.4byte	.LLST11
	.uleb128 0x22
	.4byte	.LASF105
	.byte	0x1
	.byte	0x49
	.4byte	0x48
	.4byte	.LLST12
	.uleb128 0x22
	.4byte	.LASF106
	.byte	0x1
	.byte	0x4a
	.4byte	0x86
	.4byte	.LLST13
	.uleb128 0x23
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x7ce
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0x4c
	.4byte	0x611
	.4byte	.LLST14
	.byte	0
	.uleb128 0x24
	.4byte	.LVL38
	.4byte	0x696
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF107
	.byte	0x1
	.byte	0x5c
	.4byte	0x611
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83e
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0x5c
	.4byte	0x407
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0x5d
	.4byte	0x690
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x62
	.4byte	0x48
	.4byte	.LLST16
	.uleb128 0x1c
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0x65
	.4byte	0x611
	.4byte	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF114
	.byte	0x1
	.byte	0x71
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ae
	.uleb128 0x19
	.string	"fs"
	.byte	0x1
	.byte	0x71
	.4byte	0x407
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.string	"pix"
	.byte	0x1
	.byte	0x71
	.4byte	0xbe
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0x72
	.4byte	0x611
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	.LVL55
	.4byte	0x629
	.4byte	0x898
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x6
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x24
	.4byte	.LVL57
	.4byte	0x696
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF110
	.byte	0x1
	.byte	0x7b
	.4byte	0x7b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa68
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0x7c
	.4byte	0x407
	.4byte	.LLST19
	.uleb128 0x18
	.string	"op"
	.byte	0x1
	.byte	0x7d
	.4byte	0xa7
	.4byte	.LLST20
	.uleb128 0x18
	.string	"fh"
	.byte	0x1
	.byte	0x7e
	.4byte	0xe2
	.4byte	.LLST21
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0x1
	.byte	0x7f
	.4byte	0x86
	.4byte	.LLST22
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0x80
	.4byte	0x86
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.string	"dst"
	.byte	0x1
	.byte	0x81
	.4byte	0x25b
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"res"
	.byte	0x1
	.byte	0x83
	.4byte	0x7b
	.4byte	.LLST23
	.uleb128 0x22
	.4byte	.LASF38
	.byte	0x1
	.byte	0x84
	.4byte	0x690
	.4byte	.LLST24
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0x85
	.4byte	0x611
	.4byte	.LLST25
	.uleb128 0x23
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x979
	.uleb128 0x1b
	.string	"mem"
	.byte	0x1
	.byte	0x8d
	.4byte	0x25b
	.4byte	.LLST26
	.uleb128 0x24
	.4byte	.LVL69
	.4byte	0xdc6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.4byte	0x9c7
	.uleb128 0x22
	.4byte	.LASF109
	.byte	0x1
	.byte	0xa1
	.4byte	0x7b
	.4byte	.LLST27
	.uleb128 0x1b
	.string	"mem"
	.byte	0x1
	.byte	0xa9
	.4byte	0x25b
	.4byte	.LLST28
	.uleb128 0x29
	.4byte	.LVL81
	.4byte	0x9b0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL91
	.4byte	0xdc6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x9ff
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x1
	.byte	0xad
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2a
	.4byte	.LVL95
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL61
	.4byte	0x629
	.4byte	0xa13
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL72
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0xa38
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL76
	.4byte	0x728
	.4byte	0xa57
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL79
	.4byte	0x7e4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF111
	.byte	0x1
	.byte	0xb8
	.4byte	0x7b
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc4
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0xb9
	.4byte	0x407
	.4byte	.LLST29
	.uleb128 0x18
	.string	"op"
	.byte	0x1
	.byte	0xba
	.4byte	0xa7
	.4byte	.LLST30
	.uleb128 0x18
	.string	"fh"
	.byte	0x1
	.byte	0xbb
	.4byte	0xe2
	.4byte	.LLST31
	.uleb128 0x21
	.4byte	.LASF108
	.byte	0x1
	.byte	0xbc
	.4byte	0x86
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0xbd
	.4byte	0x86
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.string	"src"
	.byte	0x1
	.byte	0xbe
	.4byte	0x25b
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1b
	.string	"pix"
	.byte	0x1
	.byte	0xc0
	.4byte	0xbe
	.4byte	.LLST32
	.uleb128 0x22
	.4byte	.LASF38
	.byte	0x1
	.byte	0xc1
	.4byte	0x690
	.4byte	.LLST33
	.uleb128 0x1e
	.string	"cp"
	.byte	0x1
	.byte	0xc2
	.4byte	0x611
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xb8e
	.uleb128 0x1b
	.string	"mem"
	.byte	0x1
	.byte	0xcf
	.4byte	0x25b
	.4byte	.LLST34
	.uleb128 0x26
	.4byte	.LVL106
	.4byte	0x696
	.4byte	0xb2d
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL108
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0xb52
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL114
	.4byte	0xdc6
	.4byte	0xb6c
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL116
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL104
	.4byte	0x629
	.4byte	0xba2
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL120
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF112
	.byte	0x1
	.byte	0xe3
	.4byte	0x611
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc26
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0xe3
	.4byte	0x407
	.4byte	.LLST35
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.byte	0xe3
	.4byte	0xc26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0xe4
	.4byte	0x690
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xeb
	.4byte	0x48
	.4byte	.LLST36
	.uleb128 0x2c
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x1b
	.string	"cp"
	.byte	0x1
	.byte	0xed
	.4byte	0x611
	.4byte	.LLST37
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x61d
	.uleb128 0x27
	.4byte	.LASF113
	.byte	0x1
	.byte	0xfa
	.4byte	0x611
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc9b
	.uleb128 0x18
	.string	"fs"
	.byte	0x1
	.byte	0xfa
	.4byte	0x407
	.4byte	.LLST38
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.byte	0xfa
	.4byte	0xc26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.string	"cp"
	.byte	0x1
	.byte	0xfe
	.4byte	0x611
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x26
	.4byte	.LVL135
	.4byte	0x728
	.4byte	0xc8a
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL136
	.4byte	0x7e4
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x10c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1f
	.uleb128 0x2e
	.string	"fs"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x407
	.4byte	.LLST39
	.uleb128 0x2f
	.string	"cp"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x611
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x86
	.4byte	.LLST40
	.uleb128 0x30
	.string	"fds"
	.byte	0x1
	.2byte	0x10f
	.4byte	0xc26
	.4byte	.LLST41
	.uleb128 0x23
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0xd09
	.uleb128 0x31
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x111
	.4byte	0xc26
	.4byte	.LLST42
	.byte	0
	.uleb128 0x24
	.4byte	.LVL146
	.4byte	0x696
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x11e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc6
	.uleb128 0x2f
	.string	"fs"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x407
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x30
	.string	"sz"
	.byte	0x1
	.2byte	0x120
	.4byte	0x86
	.4byte	.LLST43
	.uleb128 0x31
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x121
	.4byte	0x86
	.4byte	.LLST44
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x122
	.4byte	0x48
	.4byte	.LLST45
	.uleb128 0x31
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x123
	.4byte	0x48
	.4byte	.LLST46
	.uleb128 0x32
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x12c
	.4byte	0x546
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.string	"c"
	.byte	0x1
	.2byte	0x135
	.4byte	0x690
	.4byte	.LLST47
	.uleb128 0x26
	.4byte	.LVL157
	.4byte	0xdc6
	.4byte	0xdb5
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x24
	.4byte	.LVL159
	.4byte	0xdcf
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF120
	.4byte	.LASF120
	.uleb128 0x33
	.4byte	.LASF121
	.4byte	.LASF121
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
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
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL20
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
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x7d
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL40
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
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL40
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0xd
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x79
	.sleb128 0
	.byte	0x1e
	.byte	0x7d
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL49
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
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL58
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL98
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL58
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL66
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL59
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL83
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL92
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL61
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL82
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL99
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
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
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL99
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL105
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x11
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL102
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x13
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x74
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114-1
	.2byte	0x14
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x74
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL124
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
	.4byte	.LVL132
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL133
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL126
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL132
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL132
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL140
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL146-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL141
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL150
	.4byte	.LVL157-1
	.2byte	0x3
	.byte	0x72
	.sleb128 92
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL149
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL152
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL151
	.4byte	.LVL157-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL158
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
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
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"fd_count"
.LASF122:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF21:
	.string	"spiffs_flags"
.LASF91:
	.string	"objix_hdr_pix"
.LASF41:
	.string	"file_cb_f"
.LASF82:
	.string	"flags"
.LASF68:
	.string	"phys_size"
.LASF0:
	.string	"unsigned int"
.LASF94:
	.string	"fdoffset"
.LASF49:
	.string	"SPIFFS_CHECK_PAGE"
.LASF58:
	.string	"spiffs_check_report"
.LASF14:
	.string	"u16_t"
.LASF103:
	.string	"spiffs_cache_page_remove_oldest"
.LASF115:
	.string	"spiffs_cache_fd_release"
.LASF74:
	.string	"spiffs"
.LASF90:
	.string	"file_nbr"
.LASF6:
	.string	"long long unsigned int"
.LASF59:
	.string	"spiffs_check_callback"
.LASF69:
	.string	"phys_addr"
.LASF22:
	.string	"spiffs_read"
.LASF37:
	.string	"max_erase_count"
.LASF105:
	.string	"cand_ix"
.LASF55:
	.string	"SPIFFS_CHECK_DELETE_ORPHANED_INDEX"
.LASF99:
	.string	"spiffs_fd"
.LASF72:
	.string	"log_page_size"
.LASF83:
	.string	"last_access"
.LASF76:
	.string	"offset"
.LASF35:
	.string	"stats_p_deleted"
.LASF30:
	.string	"fd_space"
.LASF80:
	.string	"obj_id"
.LASF18:
	.string	"spiffs_obj_id"
.LASF66:
	.string	"hal_write_f"
.LASF34:
	.string	"stats_p_allocated"
.LASF11:
	.string	"s32_t"
.LASF70:
	.string	"phys_erase_block"
.LASF24:
	.string	"free_cursor_block_ix"
.LASF10:
	.string	"char"
.LASF62:
	.string	"SPIFFS_CB_DELETED"
.LASF75:
	.string	"map_buf"
.LASF100:
	.string	"spiffs_cache_page_get"
.LASF95:
	.string	"cache_page"
.LASF106:
	.string	"oldest_val"
.LASF32:
	.string	"err_code"
.LASF56:
	.string	"SPIFFS_CHECK_DELETE_PAGE"
.LASF25:
	.string	"free_cursor_obj_lu_entry"
.LASF43:
	.string	"user_data"
.LASF40:
	.string	"check_cb_f"
.LASF97:
	.string	"score"
.LASF5:
	.string	"long long int"
.LASF125:
	.string	"spiffs_t"
.LASF118:
	.string	"cache_mask"
.LASF15:
	.string	"u8_t"
.LASF77:
	.string	"start_spix"
.LASF71:
	.string	"log_block_size"
.LASF63:
	.string	"spiffs_fileop_type"
.LASF85:
	.string	"cpage_count"
.LASF51:
	.string	"SPIFFS_CHECK_PROGRESS"
.LASF121:
	.string	"memset"
.LASF112:
	.string	"spiffs_cache_page_get_by_fd"
.LASF81:
	.string	"size"
.LASF73:
	.string	"spiffs_config"
.LASF89:
	.string	"spiffs_cache"
.LASF45:
	.string	"spiffs_write"
.LASF27:
	.string	"cursor_obj_lu_entry"
.LASF39:
	.string	"cache_size"
.LASF38:
	.string	"cache"
.LASF107:
	.string	"spiffs_cache_page_allocate"
.LASF46:
	.string	"spiffs_erase"
.LASF113:
	.string	"spiffs_cache_page_allocate_by_fd"
.LASF67:
	.string	"hal_erase_f"
.LASF79:
	.string	"spiffs_ix_map"
.LASF78:
	.string	"end_spix"
.LASF20:
	.string	"spiffs_file"
.LASF23:
	.string	"block_count"
.LASF16:
	.string	"spiffs_block_ix"
.LASF64:
	.string	"spiffs_file_callback"
.LASF12:
	.string	"u32_t"
.LASF3:
	.string	"short int"
.LASF65:
	.string	"hal_read_f"
.LASF7:
	.string	"long int"
.LASF111:
	.string	"spiffs_phys_wr"
.LASF17:
	.string	"spiffs_page_ix"
.LASF29:
	.string	"work"
.LASF28:
	.string	"lu_work"
.LASF123:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/spiffs/spiffs/src/spiffs_cache.c"
.LASF98:
	.string	"ix_map"
.LASF92:
	.string	"cursor_objix_pix"
.LASF26:
	.string	"cursor_block_ix"
.LASF8:
	.string	"sizetype"
.LASF9:
	.string	"long unsigned int"
.LASF52:
	.string	"SPIFFS_CHECK_ERROR"
.LASF57:
	.string	"SPIFFS_CHECK_DELETE_BAD_FILE"
.LASF13:
	.string	"s16_t"
.LASF124:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\spiffs"
.LASF50:
	.string	"spiffs_check_type"
.LASF117:
	.string	"spiffs_cache_init"
.LASF96:
	.string	"name_hash"
.LASF54:
	.string	"SPIFFS_CHECK_FIX_LOOKUP"
.LASF2:
	.string	"unsigned char"
.LASF104:
	.string	"flag_mask"
.LASF84:
	.string	"spiffs_cache_page"
.LASF42:
	.string	"mounted"
.LASF19:
	.string	"spiffs_span_ix"
.LASF53:
	.string	"SPIFFS_CHECK_FIX_INDEX"
.LASF114:
	.string	"spiffs_cache_drop_page"
.LASF101:
	.string	"spiffs_cache_page_free"
.LASF108:
	.string	"addr"
.LASF60:
	.string	"SPIFFS_CB_CREATED"
.LASF48:
	.string	"SPIFFS_CHECK_INDEX"
.LASF109:
	.string	"res2"
.LASF44:
	.string	"config_magic"
.LASF116:
	.string	"cur_fd"
.LASF86:
	.string	"cpage_use_map"
.LASF33:
	.string	"free_blocks"
.LASF1:
	.string	"signed char"
.LASF4:
	.string	"short unsigned int"
.LASF93:
	.string	"cursor_objix_spix"
.LASF120:
	.string	"memcpy"
.LASF110:
	.string	"spiffs_phys_rd"
.LASF47:
	.string	"SPIFFS_CHECK_LOOKUP"
.LASF88:
	.string	"cpages"
.LASF87:
	.string	"cpage_use_mask"
.LASF36:
	.string	"cleaning"
.LASF102:
	.string	"write_back"
.LASF61:
	.string	"SPIFFS_CB_UPDATED"
.LASF119:
	.string	"cache_entries"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
