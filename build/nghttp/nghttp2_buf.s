	.file	"nghttp2_buf.c"
	.text
.Ltext0:
	.section	.text.nghttp2_buf_init,"ax",@progbits
	.align	4
	.global	nghttp2_buf_init
	.type	nghttp2_buf_init, @function
nghttp2_buf_init:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_buf.c"
	.loc 1 32 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 33 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 34 0
	s32i.n	a8, a2, 4
	.loc 1 35 0
	s32i.n	a8, a2, 8
	.loc 1 36 0
	s32i.n	a8, a2, 12
	.loc 1 37 0
	s32i.n	a8, a2, 16
	retw.n
.LFE0:
	.size	nghttp2_buf_init, .-nghttp2_buf_init
	.section	.text.nghttp2_buf_free,"ax",@progbits
	.align	4
	.global	nghttp2_buf_free
	.type	nghttp2_buf_free, @function
nghttp2_buf_free:
.LFB2:
	.loc 1 45 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 46 0
	beqz.n	a2, .L2
	.loc 1 50 0
	l32i.n	a11, a2, 0
	mov.n	a10, a3
	call8	nghttp2_mem_free
.LVL2:
	.loc 1 51 0
	movi.n	a3, 0
.LVL3:
	s32i.n	a3, a2, 0
.L2:
	retw.n
.LFE2:
	.size	nghttp2_buf_free, .-nghttp2_buf_free
	.section	.text.buf_chain_del,"ax",@progbits
	.align	4
	.type	buf_chain_del, @function
buf_chain_del:
.LFB7:
	.loc 1 109 0
.LVL4:
	entry	sp, 32
.LCFI2:
	.loc 1 110 0
	mov.n	a11, a3
	addi.n	a10, a2, 4
	call8	nghttp2_buf_free
.LVL5:
	.loc 1 111 0
	mov.n	a11, a2
	mov.n	a10, a3
	call8	nghttp2_mem_free
.LVL6:
	retw.n
.LFE7:
	.size	buf_chain_del, .-buf_chain_del
	.section	.text.nghttp2_buf_reserve,"ax",@progbits
	.align	4
	.global	nghttp2_buf_reserve
	.type	nghttp2_buf_reserve, @function
nghttp2_buf_reserve:
.LFB3:
	.loc 1 54 0
.LVL7:
	entry	sp, 32
.LCFI3:
	.loc 1 58 0
	l32i.n	a8, a2, 4
	l32i.n	a11, a2, 0
	sub	a8, a8, a11
.LVL8:
	.loc 1 60 0
	bgeu	a8, a3, .L7
	.loc 1 64 0
	slli	a8, a8, 1
.LVL9:
	maxu	a3, a3, a8
.LVL10:
	.loc 1 66 0
	mov.n	a12, a3
	mov.n	a10, a4
	call8	nghttp2_mem_realloc
.LVL11:
	.loc 1 67 0
	beqz.n	a10, .L8
	.loc 1 71 0
	l32i.n	a9, a2, 8
	l32i.n	a11, a2, 0
	sub	a9, a9, a11
	add.n	a9, a10, a9
	s32i.n	a9, a2, 8
	.loc 1 72 0
	l32i.n	a9, a2, 12
	sub	a9, a9, a11
	add.n	a9, a10, a9
	s32i.n	a9, a2, 12
	.loc 1 73 0
	l32i.n	a8, a2, 16
	sub	a8, a8, a11
	add.n	a8, a10, a8
	s32i.n	a8, a2, 16
	.loc 1 74 0
	s32i.n	a10, a2, 0
	.loc 1 75 0
	add.n	a3, a10, a3
.LVL12:
	s32i.n	a3, a2, 4
	.loc 1 77 0
	movi.n	a2, 0
.LVL13:
	retw.n
.LVL14:
.L7:
	.loc 1 61 0
	movi.n	a2, 0
.LVL15:
	retw.n
.LVL16:
.L8:
	.loc 1 68 0
	movi	a2, -0x385
.LVL17:
	.loc 1 78 0
	retw.n
.LFE3:
	.size	nghttp2_buf_reserve, .-nghttp2_buf_reserve
	.section	.text.nghttp2_buf_init2,"ax",@progbits
	.align	4
	.global	nghttp2_buf_init2
	.type	nghttp2_buf_init2, @function
nghttp2_buf_init2:
.LFB1:
	.loc 1 40 0
.LVL18:
	entry	sp, 32
.LCFI4:
	.loc 1 41 0
	mov.n	a10, a2
	call8	nghttp2_buf_init
.LVL19:
	.loc 1 42 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_buf_reserve
.LVL20:
	.loc 1 43 0
	mov.n	a2, a10
.LVL21:
	retw.n
.LFE1:
	.size	nghttp2_buf_init2, .-nghttp2_buf_init2
	.section	.text.buf_chain_new,"ax",@progbits
	.align	4
	.type	buf_chain_new, @function
buf_chain_new:
.LFB6:
	.loc 1 90 0
.LVL22:
	entry	sp, 32
.LCFI5:
	.loc 1 93 0
	movi.n	a11, 0x18
	mov.n	a10, a4
	call8	nghttp2_mem_malloc
.LVL23:
	s32i.n	a10, a2, 0
	.loc 1 94 0
	beqz.n	a10, .L12
	.loc 1 98 0
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	.loc 1 100 0
	l32i.n	a10, a2, 0
	mov.n	a12, a4
	mov.n	a11, a3
	addi.n	a10, a10, 4
	call8	nghttp2_buf_init2
.LVL24:
	.loc 1 101 0
	beqz.n	a10, .L13
	.loc 1 102 0
	l32i.n	a11, a2, 0
	mov.n	a10, a4
.LVL25:
	call8	nghttp2_mem_free
.LVL26:
	.loc 1 103 0
	movi	a2, -0x385
.LVL27:
	retw.n
.LVL28:
.L12:
	.loc 1 95 0
	movi	a2, -0x385
.LVL29:
	retw.n
.LVL30:
.L13:
	.loc 1 106 0
	movi.n	a2, 0
.LVL31:
	.loc 1 107 0
	retw.n
.LFE6:
	.size	buf_chain_new, .-buf_chain_new
	.section	.text.bufs_alloc_chain,"ax",@progbits
	.align	4
	.type	bufs_alloc_chain, @function
bufs_alloc_chain:
.LFB18:
	.loc 1 301 0
.LVL32:
	entry	sp, 48
.LCFI6:
	.loc 1 305 0
	l32i.n	a8, a2, 4
	l32i.n	a8, a8, 0
	beqz.n	a8, .L15
	.loc 1 306 0
	s32i.n	a8, a2, 4
	.loc 1 308 0
	movi.n	a2, 0
.LVL33:
	retw.n
.LVL34:
.L15:
	.loc 1 311 0
	l32i.n	a9, a2, 16
	l32i.n	a8, a2, 20
	beq	a9, a8, .L17
	.loc 1 315 0
	l32i.n	a12, a2, 8
	l32i.n	a11, a2, 12
	mov.n	a10, sp
	call8	buf_chain_new
.LVL35:
	.loc 1 316 0
	bnez.n	a10, .L18
	.loc 1 323 0
	l32i.n	a8, a2, 20
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 20
	.loc 1 325 0
	l32i.n	a8, a2, 4
	l32i.n	a9, sp, 0
	s32i.n	a9, a8, 0
	.loc 1 326 0
	l32i.n	a8, sp, 0
	s32i.n	a8, a2, 4
	.loc 1 328 0
	l32i.n	a10, a8, 12
.LVL36:
	l32i.n	a9, a2, 28
	add.n	a9, a10, a9
	s32i.n	a9, a8, 12
	l32i.n	a8, a2, 4
	l32i.n	a9, a8, 16
	l32i.n	a2, a2, 28
.LVL37:
	add.n	a2, a9, a2
	s32i.n	a2, a8, 16
	.loc 1 330 0
	movi.n	a2, 0
	retw.n
.LVL38:
.L17:
	.loc 1 312 0
	movi	a2, -0x1f6
.LVL39:
	retw.n
.LVL40:
.L18:
	.loc 1 317 0
	mov.n	a2, a10
.LVL41:
	.loc 1 331 0
	retw.n
.LFE18:
	.size	bufs_alloc_chain, .-bufs_alloc_chain
	.section	.text.bufs_ensure_addb,"ax",@progbits
	.align	4
	.type	bufs_ensure_addb, @function
bufs_ensure_addb:
.LFB20:
	.loc 1 361 0
.LVL42:
	entry	sp, 32
.LCFI7:
	.loc 1 365 0
	l32i.n	a8, a2, 4
.LVL43:
	.loc 1 367 0
	l32i.n	a9, a8, 8
	l32i.n	a8, a8, 16
.LVL44:
	bne	a9, a8, .L21
	.loc 1 371 0
	mov.n	a10, a2
	call8	bufs_alloc_chain
.LVL45:
	.loc 1 372 0
	bnez.n	a10, .L22
	.loc 1 376 0
	movi.n	a2, 0
.LVL46:
	retw.n
.LVL47:
.L21:
	.loc 1 368 0
	movi.n	a2, 0
.LVL48:
	retw.n
.LVL49:
.L22:
	.loc 1 373 0
	mov.n	a2, a10
.LVL50:
	.loc 1 377 0
	retw.n
.LFE20:
	.size	bufs_ensure_addb, .-bufs_ensure_addb
	.section	.text.nghttp2_buf_reset,"ax",@progbits
	.align	4
	.global	nghttp2_buf_reset
	.type	nghttp2_buf_reset, @function
nghttp2_buf_reset:
.LFB4:
	.loc 1 80 0
.LVL51:
	entry	sp, 32
.LCFI8:
	.loc 1 81 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a2, 16
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 8
	retw.n
.LFE4:
	.size	nghttp2_buf_reset, .-nghttp2_buf_reset
	.section	.text.nghttp2_buf_wrap_init,"ax",@progbits
	.align	4
	.global	nghttp2_buf_wrap_init
	.type	nghttp2_buf_wrap_init, @function
nghttp2_buf_wrap_init:
.LFB5:
	.loc 1 84 0
.LVL52:
	entry	sp, 32
.LCFI9:
	.loc 1 85 0
	s32i.n	a3, a2, 16
	s32i.n	a3, a2, 12
	s32i.n	a3, a2, 8
	s32i.n	a3, a2, 0
	.loc 1 86 0
	add.n	a4, a3, a4
.LVL53:
	s32i.n	a4, a2, 4
	retw.n
.LFE5:
	.size	nghttp2_buf_wrap_init, .-nghttp2_buf_wrap_init
	.section	.text.nghttp2_bufs_init3,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_init3
	.type	nghttp2_bufs_init3, @function
nghttp2_bufs_init3:
.LFB10:
	.loc 1 127 0
.LVL54:
	entry	sp, 48
.LCFI10:
	.loc 1 131 0
	movi.n	a8, 1
	movi.n	a9, 0
	moveqz	a9, a8, a5
	extui	a9, a9, 0, 8
	bltu	a4, a5, .L26
	movi.n	a8, 0
.L26:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L28
	.loc 1 131 0 is_stmt 0 discriminator 1
	bltu	a3, a6, .L29
	.loc 1 135 0 is_stmt 1
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, sp
	call8	buf_chain_new
.LVL55:
	.loc 1 136 0
	bnez.n	a10, .L30
	.loc 1 140 0
	s32i.n	a7, a2, 8
	.loc 1 141 0
	s32i.n	a6, a2, 28
	.loc 1 143 0
	l32i.n	a7, sp, 0
.LVL56:
	s32i.n	a7, a2, 0
	.loc 1 144 0
	s32i.n	a7, a2, 4
	.loc 1 146 0
	l32i.n	a8, a7, 12
	add.n	a8, a8, a6
	s32i.n	a8, a7, 12
.LVL57:
	l32i.n	a7, a2, 4
	l32i.n	a8, a7, 16
	add.n	a6, a8, a6
.LVL58:
	s32i.n	a6, a7, 16
	.loc 1 148 0
	s32i.n	a3, a2, 12
	.loc 1 149 0
	movi.n	a3, 1
.LVL59:
	s32i.n	a3, a2, 20
	.loc 1 150 0
	s32i.n	a4, a2, 16
	.loc 1 151 0
	s32i.n	a5, a2, 24
	.loc 1 153 0
	movi.n	a2, 0
.LVL60:
	retw.n
.LVL61:
.L28:
	.loc 1 132 0
	movi	a2, -0x1f5
.LVL62:
	retw.n
.LVL63:
.L29:
	movi	a2, -0x1f5
.LVL64:
	retw.n
.LVL65:
.L30:
	.loc 1 137 0
	mov.n	a2, a10
.LVL66:
	.loc 1 154 0
	retw.n
.LFE10:
	.size	nghttp2_bufs_init3, .-nghttp2_bufs_init3
	.section	.text.nghttp2_bufs_init2,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_init2
	.type	nghttp2_bufs_init2, @function
nghttp2_bufs_init2:
.LFB9:
	.loc 1 120 0
.LVL67:
	entry	sp, 32
.LCFI11:
	mov.n	a12, a4
	.loc 1 121 0
	mov.n	a15, a6
	mov.n	a14, a5
	mov.n	a13, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_bufs_init3
.LVL68:
	.loc 1 123 0
	mov.n	a2, a10
.LVL69:
	retw.n
.LFE9:
	.size	nghttp2_bufs_init2, .-nghttp2_bufs_init2
	.section	.text.nghttp2_bufs_init,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_init
	.type	nghttp2_bufs_init, @function
nghttp2_bufs_init:
.LFB8:
	.loc 1 115 0
.LVL70:
	entry	sp, 32
.LCFI12:
	.loc 1 116 0
	mov.n	a14, a5
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nghttp2_bufs_init2
.LVL71:
	.loc 1 117 0
	mov.n	a2, a10
.LVL72:
	retw.n
.LFE8:
	.size	nghttp2_bufs_init, .-nghttp2_bufs_init
	.section	.text.nghttp2_bufs_free,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_free
	.type	nghttp2_bufs_free, @function
nghttp2_bufs_free:
.LFB12:
	.loc 1 182 0
.LVL73:
	entry	sp, 32
.LCFI13:
	.loc 1 185 0
	beqz.n	a2, .L33
	.loc 1 189 0
	l32i.n	a10, a2, 0
.LVL74:
	j	.L35
.L36:
	.loc 1 190 0
	l32i.n	a3, a10, 0
.LVL75:
	.loc 1 192 0
	l32i.n	a11, a2, 8
	call8	buf_chain_del
.LVL76:
	.loc 1 194 0
	mov.n	a10, a3
.LVL77:
.L35:
	.loc 1 189 0 discriminator 1
	bnez.n	a10, .L36
	.loc 1 197 0
	movi.n	a3, 0
	s32i.n	a3, a2, 0
.LVL78:
.L33:
	retw.n
.LFE12:
	.size	nghttp2_bufs_free, .-nghttp2_bufs_free
	.section	.text.nghttp2_bufs_realloc,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_realloc
	.type	nghttp2_bufs_realloc, @function
nghttp2_bufs_realloc:
.LFB11:
	.loc 1 156 0
.LVL79:
	entry	sp, 48
.LCFI14:
	.loc 1 160 0
	l32i.n	a8, a2, 28
	bltu	a3, a8, .L39
	.loc 1 164 0
	l32i.n	a12, a2, 8
	mov.n	a11, a3
	mov.n	a10, sp
	call8	buf_chain_new
.LVL80:
	.loc 1 165 0
	bnez.n	a10, .L40
	.loc 1 169 0
	mov.n	a10, a2
.LVL81:
	call8	nghttp2_bufs_free
.LVL82:
	.loc 1 171 0
	l32i.n	a8, sp, 0
	s32i.n	a8, a2, 0
	.loc 1 172 0
	s32i.n	a8, a2, 4
	.loc 1 174 0
	l32i.n	a10, a8, 12
	l32i.n	a9, a2, 28
	add.n	a9, a10, a9
	s32i.n	a9, a8, 12
	l32i.n	a9, a2, 4
	l32i.n	a10, a9, 16
	l32i.n	a8, a2, 28
	add.n	a8, a10, a8
	s32i.n	a8, a9, 16
	.loc 1 176 0
	s32i.n	a3, a2, 12
	.loc 1 177 0
	movi.n	a3, 1
.LVL83:
	s32i.n	a3, a2, 20
	.loc 1 179 0
	movi.n	a2, 0
.LVL84:
	retw.n
.LVL85:
.L39:
	.loc 1 161 0
	movi	a2, -0x1f5
.LVL86:
	retw.n
.LVL87:
.L40:
	.loc 1 166 0
	mov.n	a2, a10
.LVL88:
	.loc 1 180 0
	retw.n
.LFE11:
	.size	nghttp2_bufs_realloc, .-nghttp2_bufs_realloc
	.section	.text.nghttp2_bufs_wrap_init,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_wrap_init
	.type	nghttp2_bufs_wrap_init, @function
nghttp2_bufs_wrap_init:
.LFB13:
	.loc 1 201 0
.LVL89:
	entry	sp, 32
.LCFI15:
	.loc 1 204 0
	movi.n	a11, 0x18
	mov.n	a10, a5
	call8	nghttp2_mem_malloc
.LVL90:
	mov.n	a6, a10
.LVL91:
	.loc 1 205 0
	beqz.n	a10, .L43
	.loc 1 209 0
	movi.n	a7, 0
	s32i.n	a7, a10, 0
	.loc 1 211 0
	mov.n	a12, a4
	mov.n	a11, a3
	addi.n	a10, a10, 4
	call8	nghttp2_buf_wrap_init
.LVL92:
	.loc 1 213 0
	s32i.n	a5, a2, 8
	.loc 1 214 0
	s32i.n	a7, a2, 28
	.loc 1 216 0
	s32i.n	a6, a2, 0
	.loc 1 217 0
	s32i.n	a6, a2, 4
	.loc 1 219 0
	s32i.n	a4, a2, 12
	.loc 1 220 0
	movi.n	a6, 1
.LVL93:
	s32i.n	a6, a2, 20
	.loc 1 221 0
	s32i.n	a6, a2, 16
	.loc 1 222 0
	s32i.n	a6, a2, 24
	.loc 1 224 0
	mov.n	a2, a7
.LVL94:
	retw.n
.LVL95:
.L43:
	.loc 1 206 0
	movi	a2, -0x385
.LVL96:
	.loc 1 225 0
	retw.n
.LFE13:
	.size	nghttp2_bufs_wrap_init, .-nghttp2_bufs_wrap_init
	.section	.text.nghttp2_bufs_wrap_init2,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_wrap_init2
	.type	nghttp2_bufs_wrap_init2, @function
nghttp2_bufs_wrap_init2:
.LFB14:
	.loc 1 228 0
.LVL97:
	entry	sp, 64
.LCFI16:
	s32i.n	a5, sp, 16
.LVL98:
	.loc 1 234 0
	bnez.n	a4, .L45
	.loc 1 235 0
	mov.n	a13, a5
	movi.n	a12, 0
	mov.n	a11, a12
	mov.n	a10, a2
	call8	nghttp2_bufs_wrap_init
.LVL99:
	mov.n	a2, a10
.LVL100:
	retw.n
.LVL101:
.L45:
	.loc 1 238 0
	addx2	a5, a4, a4
.LVL102:
	slli	a11, a5, 3
	mov.n	a5, a11
	l32i.n	a10, sp, 16
	call8	nghttp2_mem_malloc
.LVL103:
	s32i.n	a10, sp, 0
	.loc 1 239 0
	beqz.n	a10, .L49
	mov.n	a7, sp
.LVL104:
	movi.n	a6, 0
	j	.L47
.LVL105:
.L48:
	.loc 1 244 0 discriminator 3
	addx2	a8, a6, a6
	slli	a5, a8, 3
	l32i.n	a8, sp, 0
	add.n	a5, a8, a5
.LVL106:
	.loc 1 245 0 discriminator 3
	movi.n	a8, 0
	s32i.n	a8, a5, 0
	.loc 1 246 0 discriminator 3
	addx8	a8, a6, a3
	l32i.n	a12, a8, 4
	l32i.n	a11, a8, 0
	addi.n	a10, a5, 4
	call8	nghttp2_buf_wrap_init
.LVL107:
	.loc 1 248 0 discriminator 3
	s32i.n	a5, a7, 0
	.loc 1 249 0 discriminator 3
	mov.n	a7, a5
.LVL108:
	.loc 1 243 0 discriminator 3
	addi.n	a6, a6, 1
.LVL109:
.L47:
	.loc 1 243 0 is_stmt 0 discriminator 1
	bltu	a6, a4, .L48
	.loc 1 252 0 is_stmt 1
	l32i.n	a3, sp, 16
.LVL110:
	s32i.n	a3, a2, 8
	.loc 1 253 0
	movi.n	a10, 0
	s32i.n	a10, a2, 28
	.loc 1 255 0
	l32i.n	a3, sp, 0
	s32i.n	a3, a2, 0
	.loc 1 256 0
	s32i.n	a3, a2, 4
	.loc 1 259 0
	s32i.n	a10, a2, 12
	.loc 1 260 0
	s32i.n	a4, a2, 20
	.loc 1 261 0
	s32i.n	a4, a2, 16
	.loc 1 262 0
	s32i.n	a4, a2, 24
	.loc 1 264 0
	mov.n	a2, a10
.LVL111:
	retw.n
.LVL112:
.L49:
	.loc 1 240 0
	movi	a2, -0x385
.LVL113:
	.loc 1 265 0
	retw.n
.LFE14:
	.size	nghttp2_bufs_wrap_init2, .-nghttp2_bufs_wrap_init2
	.section	.text.nghttp2_bufs_wrap_free,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_wrap_free
	.type	nghttp2_bufs_wrap_free, @function
nghttp2_bufs_wrap_free:
.LFB15:
	.loc 1 267 0
.LVL114:
	entry	sp, 32
.LCFI17:
	.loc 1 268 0
	beqz.n	a2, .L50
	.loc 1 272 0
	l32i.n	a11, a2, 0
	beqz.n	a11, .L50
	.loc 1 273 0
	l32i.n	a10, a2, 8
	call8	nghttp2_mem_free
.LVL115:
.L50:
	retw.n
.LFE15:
	.size	nghttp2_bufs_wrap_free, .-nghttp2_bufs_wrap_free
	.section	.text.nghttp2_bufs_seek_last_present,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_seek_last_present
	.type	nghttp2_bufs_seek_last_present, @function
nghttp2_bufs_seek_last_present:
.LFB16:
	.loc 1 277 0
.LVL116:
	entry	sp, 32
.LCFI18:
	.loc 1 280 0
	l32i.n	a8, a2, 4
.LVL117:
	j	.L53
.L55:
	.loc 1 281 0
	l32i.n	a10, a8, 16
	l32i.n	a9, a8, 12
	beq	a10, a9, .L52
	.loc 1 284 0 discriminator 2
	s32i.n	a8, a2, 4
	.loc 1 280 0 discriminator 2
	l32i.n	a8, a8, 0
.LVL118:
.L53:
	.loc 1 280 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L55
.L52:
	retw.n
.LFE16:
	.size	nghttp2_bufs_seek_last_present, .-nghttp2_bufs_seek_last_present
	.section	.text.nghttp2_bufs_len,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_len
	.type	nghttp2_bufs_len, @function
nghttp2_bufs_len:
.LFB17:
	.loc 1 289 0 is_stmt 1
.LVL119:
	entry	sp, 32
.LCFI19:
.LVL120:
	.loc 1 294 0
	l32i.n	a8, a2, 0
.LVL121:
	.loc 1 293 0
	movi.n	a2, 0
.LVL122:
	.loc 1 294 0
	j	.L57
.LVL123:
.L58:
	.loc 1 295 0 discriminator 3
	l32i.n	a9, a8, 16
	l32i.n	a10, a8, 12
	sub	a9, a9, a10
	add.n	a2, a2, a9
.LVL124:
	.loc 1 294 0 discriminator 3
	l32i.n	a8, a8, 0
.LVL125:
.L57:
	.loc 1 294 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L58
	.loc 1 299 0 is_stmt 1
	retw.n
.LFE17:
	.size	nghttp2_bufs_len, .-nghttp2_bufs_len
	.section	.text.nghttp2_bufs_add,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_add
	.type	nghttp2_bufs_add, @function
nghttp2_bufs_add:
.LFB19:
	.loc 1 333 0
.LVL126:
	entry	sp, 32
.LCFI20:
.LVL127:
	.loc 1 341 0
	j	.L60
.LVL128:
.L64:
	.loc 1 342 0
	l32i.n	a6, a2, 4
.LVL129:
	.loc 1 344 0
	l32i.n	a5, a6, 8
	l32i.n	a10, a6, 16
	sub	a5, a5, a10
	minu	a5, a4, a5
.LVL130:
	.loc 1 345 0
	bnez.n	a5, .L61
	.loc 1 346 0
	mov.n	a10, a2
	call8	bufs_alloc_chain
.LVL131:
	.loc 1 347 0
	beqz.n	a10, .L60
	j	.L65
.LVL132:
.L61:
	.loc 1 353 0
	mov.n	a12, a5
	mov.n	a11, a3
	call8	nghttp2_cpymem
.LVL133:
	s32i.n	a10, a6, 16
	.loc 1 354 0
	add.n	a3, a3, a5
.LVL134:
	.loc 1 355 0
	sub	a4, a4, a5
.LVL135:
.L60:
	.loc 1 341 0
	bnez.n	a4, .L64
	.loc 1 358 0
	movi.n	a2, 0
.LVL136:
	retw.n
.LVL137:
.L65:
	.loc 1 348 0
	mov.n	a2, a10
.LVL138:
	.loc 1 359 0
	retw.n
.LFE19:
	.size	nghttp2_bufs_add, .-nghttp2_bufs_add
	.section	.text.nghttp2_bufs_addb,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_addb
	.type	nghttp2_bufs_addb, @function
nghttp2_bufs_addb:
.LFB21:
	.loc 1 379 0
.LVL139:
	entry	sp, 32
.LCFI21:
	extui	a3, a3, 0, 8
	.loc 1 382 0
	mov.n	a10, a2
	call8	bufs_ensure_addb
.LVL140:
	.loc 1 383 0
	bnez.n	a10, .L68
	.loc 1 387 0
	l32i.n	a8, a2, 4
	l32i.n	a2, a8, 16
.LVL141:
	addi.n	a9, a2, 1
	s32i.n	a9, a8, 16
	s8i	a3, a2, 0
	.loc 1 389 0
	movi.n	a2, 0
	retw.n
.LVL142:
.L68:
	.loc 1 384 0
	mov.n	a2, a10
.LVL143:
	.loc 1 390 0
	retw.n
.LFE21:
	.size	nghttp2_bufs_addb, .-nghttp2_bufs_addb
	.section	.text.nghttp2_bufs_addb_hold,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_addb_hold
	.type	nghttp2_bufs_addb_hold, @function
nghttp2_bufs_addb_hold:
.LFB22:
	.loc 1 392 0
.LVL144:
	entry	sp, 32
.LCFI22:
	extui	a3, a3, 0, 8
	.loc 1 395 0
	mov.n	a10, a2
	call8	bufs_ensure_addb
.LVL145:
	.loc 1 396 0
	bnez.n	a10, .L71
	.loc 1 400 0
	l32i.n	a2, a2, 4
.LVL146:
	l32i.n	a2, a2, 16
	s8i	a3, a2, 0
	.loc 1 402 0
	movi.n	a2, 0
	retw.n
.LVL147:
.L71:
	.loc 1 397 0
	mov.n	a2, a10
.LVL148:
	.loc 1 403 0
	retw.n
.LFE22:
	.size	nghttp2_bufs_addb_hold, .-nghttp2_bufs_addb_hold
	.section	.text.nghttp2_bufs_orb,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_orb
	.type	nghttp2_bufs_orb, @function
nghttp2_bufs_orb:
.LFB23:
	.loc 1 405 0
.LVL149:
	entry	sp, 32
.LCFI23:
	extui	a3, a3, 0, 8
	.loc 1 408 0
	mov.n	a10, a2
	call8	bufs_ensure_addb
.LVL150:
	.loc 1 409 0
	bnez.n	a10, .L74
	.loc 1 413 0
	l32i.n	a8, a2, 4
	l32i.n	a2, a8, 16
.LVL151:
	addi.n	a9, a2, 1
	s32i.n	a9, a8, 16
	l8ui	a8, a2, 0
	or	a3, a3, a8
.LVL152:
	s8i	a3, a2, 0
	.loc 1 415 0
	movi.n	a2, 0
	retw.n
.LVL153:
.L74:
	.loc 1 410 0
	mov.n	a2, a10
.LVL154:
	.loc 1 416 0
	retw.n
.LFE23:
	.size	nghttp2_bufs_orb, .-nghttp2_bufs_orb
	.section	.text.nghttp2_bufs_orb_hold,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_orb_hold
	.type	nghttp2_bufs_orb_hold, @function
nghttp2_bufs_orb_hold:
.LFB24:
	.loc 1 418 0
.LVL155:
	entry	sp, 32
.LCFI24:
	extui	a3, a3, 0, 8
	.loc 1 421 0
	mov.n	a10, a2
	call8	bufs_ensure_addb
.LVL156:
	.loc 1 422 0
	bnez.n	a10, .L77
	.loc 1 426 0
	l32i.n	a2, a2, 4
.LVL157:
	l32i.n	a8, a2, 16
	l8ui	a2, a8, 0
	or	a3, a3, a2
.LVL158:
	s8i	a3, a8, 0
	.loc 1 428 0
	movi.n	a2, 0
	retw.n
.LVL159:
.L77:
	.loc 1 423 0
	mov.n	a2, a10
.LVL160:
	.loc 1 429 0
	retw.n
.LFE24:
	.size	nghttp2_bufs_orb_hold, .-nghttp2_bufs_orb_hold
	.section	.text.nghttp2_bufs_remove,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_remove
	.type	nghttp2_bufs_remove, @function
nghttp2_bufs_remove:
.LFB25:
	.loc 1 431 0
.LVL161:
	entry	sp, 64
.LCFI25:
.LVL162:
	.loc 1 440 0
	l32i.n	a8, a2, 0
.LVL163:
	.loc 1 438 0
	movi.n	a4, 0
	.loc 1 440 0
	j	.L79
.LVL164:
.L80:
	.loc 1 441 0 discriminator 3
	l32i.n	a9, a8, 16
	l32i.n	a10, a8, 12
	sub	a9, a9, a10
	add.n	a4, a4, a9
.LVL165:
	.loc 1 440 0 discriminator 3
	l32i.n	a8, a8, 0
.LVL166:
.L79:
	.loc 1 440 0 is_stmt 0 discriminator 1
	bnez.n	a8, .L80
	.loc 1 444 0 is_stmt 1
	beqz.n	a4, .L84
	.loc 1 449 0
	mov.n	a11, a4
	l32i.n	a10, a2, 8
	call8	nghttp2_mem_malloc
.LVL167:
	mov.n	a5, a10
.LVL168:
	.loc 1 450 0
	beqz.n	a10, .L85
	.loc 1 454 0
	mov.n	a12, a4
	mov.n	a11, a10
	mov.n	a10, sp
	call8	nghttp2_buf_wrap_init
.LVL169:
	.loc 1 456 0
	l32i.n	a2, a2, 0
.LVL170:
	j	.L82
.L83:
.LVL171:
	.loc 1 458 0 discriminator 3
	l32i.n	a12, a2, 16
	l32i.n	a11, a2, 12
	sub	a12, a12, a11
	l32i.n	a10, sp, 12
	call8	nghttp2_cpymem
.LVL172:
	s32i.n	a10, sp, 12
	.loc 1 456 0 discriminator 3
	l32i.n	a2, a2, 0
.LVL173:
.L82:
	.loc 1 456 0 is_stmt 0 discriminator 1
	bnez.n	a2, .L83
	.loc 1 461 0 is_stmt 1
	s32i.n	a5, a3, 0
	.loc 1 463 0
	mov.n	a2, a4
.LVL174:
	retw.n
.LVL175:
.L84:
	.loc 1 446 0
	movi.n	a2, 0
.LVL176:
	retw.n
.LVL177:
.L85:
	.loc 1 451 0
	movi	a2, -0x385
.LVL178:
	.loc 1 464 0
	retw.n
.LFE25:
	.size	nghttp2_bufs_remove, .-nghttp2_bufs_remove
	.section	.text.nghttp2_bufs_remove_copy,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_remove_copy
	.type	nghttp2_bufs_remove_copy, @function
nghttp2_bufs_remove_copy:
.LFB26:
	.loc 1 466 0
.LVL179:
	entry	sp, 64
.LCFI26:
	mov.n	a4, a2
	.loc 1 472 0
	mov.n	a10, a2
	call8	nghttp2_bufs_len
.LVL180:
	mov.n	a2, a10
.LVL181:
	.loc 1 474 0
	mov.n	a12, a10
	mov.n	a11, a3
	mov.n	a10, sp
	call8	nghttp2_buf_wrap_init
.LVL182:
	.loc 1 476 0
	l32i.n	a3, a4, 0
.LVL183:
	j	.L87
.L88:
.LVL184:
	.loc 1 478 0 discriminator 3
	l32i.n	a12, a3, 16
	l32i.n	a11, a3, 12
	sub	a12, a12, a11
	l32i.n	a10, sp, 12
	call8	nghttp2_cpymem
.LVL185:
	s32i.n	a10, sp, 12
	.loc 1 476 0 discriminator 3
	l32i.n	a3, a3, 0
.LVL186:
.L87:
	.loc 1 476 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L88
	.loc 1 482 0 is_stmt 1
	retw.n
.LFE26:
	.size	nghttp2_bufs_remove_copy, .-nghttp2_bufs_remove_copy
	.section	.text.nghttp2_bufs_reset,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_reset
	.type	nghttp2_bufs_reset, @function
nghttp2_bufs_reset:
.LFB27:
	.loc 1 484 0
.LVL187:
	entry	sp, 32
.LCFI27:
	.loc 1 488 0
	l32i.n	a4, a2, 24
.LVL188:
	.loc 1 490 0
	l32i.n	a3, a2, 0
.LVL189:
	j	.L90
.L92:
	.loc 1 491 0
	addi.n	a10, a3, 4
	call8	nghttp2_buf_reset
.LVL190:
	.loc 1 492 0
	l32i.n	a9, a3, 12
	l32i.n	a8, a2, 28
	add.n	a8, a9, a8
	s32i.n	a8, a3, 12
	l32i.n	a9, a3, 16
	l32i.n	a8, a2, 28
	add.n	a8, a9, a8
	s32i.n	a8, a3, 16
	.loc 1 494 0
	addi.n	a4, a4, -1
.LVL191:
	beqz.n	a4, .L91
	.loc 1 490 0 discriminator 2
	l32i.n	a3, a3, 0
.LVL192:
.L90:
	.loc 1 490 0 is_stmt 0 discriminator 1
	bnez.n	a3, .L92
.L91:
	.loc 1 499 0 is_stmt 1
	beqz.n	a3, .L93
	.loc 1 500 0
	l32i.n	a10, a3, 0
.LVL193:
	.loc 1 501 0
	movi.n	a4, 0
.LVL194:
	s32i.n	a4, a3, 0
.LVL195:
	.loc 1 503 0
	j	.L94
.L95:
	.loc 1 504 0
	l32i.n	a3, a10, 0
.LVL196:
	.loc 1 506 0
	l32i.n	a11, a2, 8
	call8	buf_chain_del
.LVL197:
	.loc 1 508 0
	mov.n	a10, a3
.LVL198:
.L94:
	.loc 1 503 0 discriminator 1
	bnez.n	a10, .L95
	.loc 1 511 0
	l32i.n	a3, a2, 24
	s32i.n	a3, a2, 20
.LVL199:
.L93:
	.loc 1 514 0
	l32i.n	a3, a2, 0
	s32i.n	a3, a2, 4
	retw.n
.LFE27:
	.size	nghttp2_bufs_reset, .-nghttp2_bufs_reset
	.section	.text.nghttp2_bufs_advance,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_advance
	.type	nghttp2_bufs_advance, @function
nghttp2_bufs_advance:
.LFB28:
	.loc 1 517 0
.LVL200:
	entry	sp, 32
.LCFI28:
	.loc 1 517 0
	mov.n	a10, a2
	call8	bufs_alloc_chain
.LVL201:
	mov.n	a2, a10
.LVL202:
	retw.n
.LFE28:
	.size	nghttp2_bufs_advance, .-nghttp2_bufs_advance
	.section	.text.nghttp2_bufs_next_present,"ax",@progbits
	.align	4
	.global	nghttp2_bufs_next_present
	.type	nghttp2_bufs_next_present, @function
nghttp2_bufs_next_present:
.LFB29:
	.loc 1 519 0
.LVL203:
	entry	sp, 32
.LCFI29:
	.loc 1 522 0
	l32i.n	a8, a2, 4
	l32i.n	a8, a8, 0
.LVL204:
	.loc 1 524 0
	beqz.n	a8, .L99
	.loc 1 524 0 is_stmt 0 discriminator 1
	l32i.n	a9, a8, 16
	l32i.n	a2, a8, 12
.LVL205:
	bne	a9, a2, .L100
	.loc 1 524 0
	movi.n	a2, 0
	retw.n
.LVL206:
.L99:
	movi.n	a2, 0
.LVL207:
	retw.n
.L100:
	movi.n	a2, 1
	.loc 1 525 0 is_stmt 1
	retw.n
.LFE29:
	.size	nghttp2_bufs_next_present, .-nghttp2_bufs_next_present
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI2-.LFB7
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI4-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI5-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI7-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI8-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI9-.LFB5
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
	.uleb128 0x30
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI11-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI12-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI13-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI14-.LFB11
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI15-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI16-.LFB14
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI17-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI18-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI19-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI20-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI21-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI22-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI23-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI24-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI25-.LFB25
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI26-.LFB26
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI27-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI28-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI29-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_buf.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_mem.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_helper.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x109c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xc
	.4byte	.LASF126
	.4byte	.LASF127
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF7
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0xd8
	.4byte	0x53
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x37
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xcb
	.4byte	0x7c
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x6
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4c
	.byte	0x7
	.byte	0xe7
	.4byte	0x1d7
	.uleb128 0x9
	.4byte	.LASF16
	.sleb128 -501
	.uleb128 0x9
	.4byte	.LASF17
	.sleb128 -502
	.uleb128 0x9
	.4byte	.LASF18
	.sleb128 -503
	.uleb128 0x9
	.4byte	.LASF19
	.sleb128 -504
	.uleb128 0x9
	.4byte	.LASF20
	.sleb128 -505
	.uleb128 0x9
	.4byte	.LASF21
	.sleb128 -506
	.uleb128 0x9
	.4byte	.LASF22
	.sleb128 -507
	.uleb128 0x9
	.4byte	.LASF23
	.sleb128 -508
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 -509
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 -510
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 -511
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 -512
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 -513
	.uleb128 0x9
	.4byte	.LASF29
	.sleb128 -514
	.uleb128 0x9
	.4byte	.LASF30
	.sleb128 -515
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 -516
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 -517
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 -518
	.uleb128 0x9
	.4byte	.LASF34
	.sleb128 -519
	.uleb128 0x9
	.4byte	.LASF35
	.sleb128 -521
	.uleb128 0x9
	.4byte	.LASF36
	.sleb128 -522
	.uleb128 0x9
	.4byte	.LASF37
	.sleb128 -523
	.uleb128 0x9
	.4byte	.LASF38
	.sleb128 -524
	.uleb128 0x9
	.4byte	.LASF39
	.sleb128 -525
	.uleb128 0x9
	.4byte	.LASF40
	.sleb128 -526
	.uleb128 0x9
	.4byte	.LASF41
	.sleb128 -527
	.uleb128 0x9
	.4byte	.LASF42
	.sleb128 -528
	.uleb128 0x9
	.4byte	.LASF43
	.sleb128 -529
	.uleb128 0x9
	.4byte	.LASF44
	.sleb128 -530
	.uleb128 0x9
	.4byte	.LASF45
	.sleb128 -531
	.uleb128 0x9
	.4byte	.LASF46
	.sleb128 -532
	.uleb128 0x9
	.4byte	.LASF47
	.sleb128 -533
	.uleb128 0x9
	.4byte	.LASF48
	.sleb128 -534
	.uleb128 0x9
	.4byte	.LASF49
	.sleb128 -535
	.uleb128 0x9
	.4byte	.LASF50
	.sleb128 -900
	.uleb128 0x9
	.4byte	.LASF51
	.sleb128 -901
	.uleb128 0x9
	.4byte	.LASF52
	.sleb128 -902
	.uleb128 0x9
	.4byte	.LASF53
	.sleb128 -903
	.uleb128 0x9
	.4byte	.LASF54
	.sleb128 -904
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.2byte	0x1ac
	.4byte	0x1fb
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.2byte	0x1b0
	.4byte	0x1fb
	.byte	0
	.uleb128 0xc
	.string	"len"
	.byte	0x7
	.2byte	0x1b4
	.4byte	0x68
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xae
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x7
	.2byte	0x1b5
	.4byte	0x1d7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x213
	.uleb128 0xe
	.4byte	0xae
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x8df
	.4byte	0x224
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22a
	.uleb128 0xf
	.4byte	0x73
	.4byte	0x23e
	.uleb128 0x10
	.4byte	0x68
	.uleb128 0x10
	.4byte	0x73
	.byte	0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x8e7
	.4byte	0x24a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x250
	.uleb128 0x11
	.4byte	0x260
	.uleb128 0x10
	.4byte	0x73
	.uleb128 0x10
	.4byte	0x73
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x7
	.2byte	0x8ef
	.4byte	0x26c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x272
	.uleb128 0xf
	.4byte	0x73
	.4byte	0x28b
	.uleb128 0x10
	.4byte	0x68
	.uleb128 0x10
	.4byte	0x68
	.uleb128 0x10
	.4byte	0x73
	.byte	0
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x7
	.2byte	0x8f7
	.4byte	0x297
	.uleb128 0x6
	.byte	0x4
	.4byte	0x29d
	.uleb128 0xf
	.4byte	0x73
	.4byte	0x2b6
	.uleb128 0x10
	.4byte	0x73
	.uleb128 0x10
	.4byte	0x68
	.uleb128 0x10
	.4byte	0x73
	.byte	0
	.uleb128 0xa
	.byte	0x14
	.byte	0x7
	.2byte	0x920
	.4byte	0x301
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x7
	.2byte	0x925
	.4byte	0x73
	.byte	0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x929
	.4byte	0x218
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.2byte	0x92d
	.4byte	0x23e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.2byte	0x931
	.4byte	0x260
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x935
	.4byte	0x28b
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x7
	.2byte	0x936
	.4byte	0x2b6
	.uleb128 0x12
	.byte	0x14
	.byte	0x8
	.byte	0x25
	.4byte	0x352
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x8
	.byte	0x28
	.4byte	0x1fb
	.byte	0
	.uleb128 0x14
	.string	"end"
	.byte	0x8
	.byte	0x2b
	.4byte	0x1fb
	.byte	0x4
	.uleb128 0x14
	.string	"pos"
	.byte	0x8
	.byte	0x2e
	.4byte	0x1fb
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x8
	.byte	0x31
	.4byte	0x1fb
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x8
	.byte	0x33
	.4byte	0x1fb
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x8
	.byte	0x34
	.4byte	0x30d
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x8
	.byte	0x7c
	.4byte	0x368
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x18
	.byte	0x8
	.byte	0x7f
	.4byte	0x38d
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x8
	.byte	0x82
	.4byte	0x38d
	.byte	0
	.uleb128 0x14
	.string	"buf"
	.byte	0x8
	.byte	0x83
	.4byte	0x352
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x35d
	.uleb128 0x12
	.byte	0x20
	.byte	0x8
	.byte	0x86
	.4byte	0x3fc
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x8
	.byte	0x88
	.4byte	0x38d
	.byte	0
	.uleb128 0x14
	.string	"cur"
	.byte	0x8
	.byte	0x8a
	.4byte	0x38d
	.byte	0x4
	.uleb128 0x14
	.string	"mem"
	.byte	0x8
	.byte	0x8c
	.4byte	0x3fc
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x8
	.byte	0x90
	.4byte	0x68
	.byte	0xc
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x8
	.byte	0x92
	.4byte	0x68
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x8
	.byte	0x94
	.4byte	0x68
	.byte	0x14
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x8
	.byte	0x96
	.4byte	0x68
	.byte	0x18
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x8
	.byte	0x9a
	.4byte	0x68
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x301
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x8
	.byte	0x9b
	.4byte	0x393
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x1
	.byte	0x20
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x430
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x20
	.4byte	0x430
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x352
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x478
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x2d
	.4byte	0x430
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.string	"mem"
	.byte	0x1
	.byte	0x2d
	.4byte	0x3fc
	.4byte	.LLST0
	.uleb128 0x19
	.4byte	.LVL2
	.4byte	0x1073
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x1
	.byte	0x6d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d8
	.uleb128 0x1c
	.4byte	.LASF82
	.byte	0x1
	.byte	0x6d
	.4byte	0x38d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.string	"mem"
	.byte	0x1
	.byte	0x6d
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LVL5
	.4byte	0x436
	.4byte	0x4c1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0x1073
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
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF84
	.byte	0x1
	.byte	0x36
	.4byte	0x4c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x551
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0x36
	.4byte	0x430
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LASF83
	.byte	0x1
	.byte	0x36
	.4byte	0x68
	.4byte	.LLST2
	.uleb128 0x17
	.string	"mem"
	.byte	0x1
	.byte	0x36
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.string	"ptr"
	.byte	0x1
	.byte	0x37
	.4byte	0x1fb
	.4byte	.LLST3
	.uleb128 0x20
	.string	"cap"
	.byte	0x1
	.byte	0x38
	.4byte	0x68
	.4byte	.LLST4
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0x107e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF85
	.byte	0x1
	.byte	0x28
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c4
	.uleb128 0x18
	.string	"buf"
	.byte	0x1
	.byte	0x28
	.4byte	0x430
	.4byte	.LLST5
	.uleb128 0x1c
	.4byte	.LASF86
	.byte	0x1
	.byte	0x28
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"mem"
	.byte	0x1
	.byte	0x28
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LVL19
	.4byte	0x40d
	.4byte	0x5a7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0x4d8
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF87
	.byte	0x1
	.byte	0x59
	.4byte	0x4c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x658
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x1
	.byte	0x59
	.4byte	0x658
	.4byte	.LLST6
	.uleb128 0x1c
	.4byte	.LASF74
	.byte	0x1
	.byte	0x59
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"mem"
	.byte	0x1
	.byte	0x5a
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x20
	.string	"rv"
	.byte	0x1
	.byte	0x5b
	.4byte	0x4c
	.4byte	.LLST7
	.uleb128 0x1d
	.4byte	.LVL23
	.4byte	0x1089
	.4byte	0x62d
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
	.byte	0x48
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL24
	.4byte	0x551
	.4byte	0x647
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL26
	.4byte	0x1073
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x38d
	.uleb128 0x22
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x12d
	.4byte	0x4c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b7
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x12d
	.4byte	0x6b7
	.4byte	.LLST8
	.uleb128 0x24
	.string	"rv"
	.byte	0x1
	.2byte	0x12e
	.4byte	0x4c
	.4byte	.LLST9
	.uleb128 0x25
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x12f
	.4byte	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL35
	.4byte	0x5c4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x402
	.uleb128 0x22
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x169
	.4byte	0x4c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x717
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x169
	.4byte	0x6b7
	.4byte	.LLST10
	.uleb128 0x24
	.string	"rv"
	.byte	0x1
	.2byte	0x16a
	.4byte	0x4c
	.4byte	.LLST11
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.2byte	0x16b
	.4byte	0x430
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LVL45
	.4byte	0x65e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x1
	.byte	0x50
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73a
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x50
	.4byte	0x430
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x1
	.byte	0x54
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x779
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0x54
	.4byte	0x430
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x1
	.byte	0x54
	.4byte	0x1fb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0x54
	.4byte	0x68
	.4byte	.LLST13
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x1
	.byte	0x7d
	.4byte	0x4c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x821
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.byte	0x7d
	.4byte	0x6b7
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	.LASF74
	.byte	0x1
	.byte	0x7d
	.4byte	0x68
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	.LASF75
	.byte	0x1
	.byte	0x7e
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x1
	.byte	0x7e
	.4byte	0x68
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1f
	.4byte	.LASF78
	.byte	0x1
	.byte	0x7e
	.4byte	0x68
	.4byte	.LLST16
	.uleb128 0x18
	.string	"mem"
	.byte	0x1
	.byte	0x7f
	.4byte	0x3fc
	.4byte	.LLST17
	.uleb128 0x20
	.string	"rv"
	.byte	0x1
	.byte	0x80
	.4byte	0x4c
	.4byte	.LLST18
	.uleb128 0x26
	.4byte	.LASF82
	.byte	0x1
	.byte	0x81
	.4byte	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.4byte	.LVL55
	.4byte	0x5c4
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF94
	.byte	0x1
	.byte	0x77
	.4byte	0x4c
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ac
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.byte	0x77
	.4byte	0x6b7
	.4byte	.LLST19
	.uleb128 0x1c
	.4byte	.LASF74
	.byte	0x1
	.byte	0x77
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF75
	.byte	0x1
	.byte	0x78
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0x1
	.byte	0x78
	.4byte	0x68
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x17
	.string	"mem"
	.byte	0x1
	.byte	0x78
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x19
	.4byte	.LVL68
	.4byte	0x779
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
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
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF95
	.byte	0x1
	.byte	0x72
	.4byte	0x4c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x923
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.byte	0x72
	.4byte	0x6b7
	.4byte	.LLST20
	.uleb128 0x1c
	.4byte	.LASF74
	.byte	0x1
	.byte	0x72
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF75
	.byte	0x1
	.byte	0x72
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"mem"
	.byte	0x1
	.byte	0x73
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x19
	.4byte	.LVL71
	.4byte	0x821
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
	.byte	0x73
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x1
	.byte	0xb6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96d
	.uleb128 0x1c
	.4byte	.LASF89
	.byte	0x1
	.byte	0xb6
	.4byte	0x6b7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x27
	.4byte	.LASF82
	.byte	0x1
	.byte	0xb7
	.4byte	0x38d
	.4byte	.LLST21
	.uleb128 0x27
	.4byte	.LASF97
	.byte	0x1
	.byte	0xb7
	.4byte	0x38d
	.4byte	.LLST22
	.uleb128 0x28
	.4byte	.LVL76
	.4byte	0x478
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF98
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9eb
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.byte	0x9c
	.4byte	0x6b7
	.4byte	.LLST23
	.uleb128 0x1f
	.4byte	.LASF74
	.byte	0x1
	.byte	0x9c
	.4byte	0x68
	.4byte	.LLST24
	.uleb128 0x20
	.string	"rv"
	.byte	0x1
	.byte	0x9d
	.4byte	0x4c
	.4byte	.LLST25
	.uleb128 0x26
	.4byte	.LASF82
	.byte	0x1
	.byte	0x9e
	.4byte	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.4byte	.LVL80
	.4byte	0x5c4
	.4byte	0x9da
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL82
	.4byte	0x923
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF99
	.byte	0x1
	.byte	0xc8
	.4byte	0x4c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7f
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.byte	0xc8
	.4byte	0x6b7
	.4byte	.LLST26
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x1
	.byte	0xc8
	.4byte	0x1fb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0xc8
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"mem"
	.byte	0x1
	.byte	0xc9
	.4byte	0x3fc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x27
	.4byte	.LASF82
	.byte	0x1
	.byte	0xca
	.4byte	0x38d
	.4byte	.LLST27
	.uleb128 0x1d
	.4byte	.LVL90
	.4byte	0x1089
	.4byte	0xa62
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x19
	.4byte	.LVL92
	.4byte	0x73a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 4
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
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.byte	0xe3
	.4byte	0x4c
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5b
	.uleb128 0x1f
	.4byte	.LASF89
	.byte	0x1
	.byte	0xe3
	.4byte	0x6b7
	.4byte	.LLST28
	.uleb128 0x18
	.string	"vec"
	.byte	0x1
	.byte	0xe3
	.4byte	0xb5b
	.4byte	.LLST29
	.uleb128 0x1c
	.4byte	.LASF101
	.byte	0x1
	.byte	0xe4
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x18
	.string	"mem"
	.byte	0x1
	.byte	0xe4
	.4byte	0x3fc
	.4byte	.LLST30
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0xe5
	.4byte	0x68
	.4byte	.LLST31
	.uleb128 0x27
	.4byte	.LASF102
	.byte	0x1
	.byte	0xe6
	.4byte	0x38d
	.4byte	.LLST32
	.uleb128 0x26
	.4byte	.LASF103
	.byte	0x1
	.byte	0xe7
	.4byte	0x38d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.4byte	.LASF104
	.byte	0x1
	.byte	0xe8
	.4byte	0x658
	.4byte	.LLST33
	.uleb128 0x1d
	.4byte	.LVL99
	.4byte	0x9eb
	.4byte	0xb2f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL103
	.4byte	0x1089
	.4byte	0xb4a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL107
	.4byte	0x73a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb61
	.uleb128 0xe
	.4byte	0x201
	.uleb128 0x29
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x10b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb94
	.uleb128 0x2a
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x10b
	.4byte	0x6b7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x28
	.4byte	.LVL115
	.4byte	0x1073
	.byte	0
	.uleb128 0x29
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x115
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc6
	.uleb128 0x2a
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x115
	.4byte	0x6b7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2b
	.string	"ci"
	.byte	0x1
	.2byte	0x116
	.4byte	0x38d
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x121
	.4byte	0x68
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0e
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x121
	.4byte	0x6b7
	.4byte	.LLST34
	.uleb128 0x2b
	.string	"ci"
	.byte	0x1
	.2byte	0x122
	.4byte	0x38d
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.2byte	0x123
	.4byte	0x68
	.4byte	.LLST35
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x14d
	.4byte	0x4c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbe
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x14d
	.4byte	0x6b7
	.4byte	.LLST36
	.uleb128 0x23
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x14d
	.4byte	0xa7
	.4byte	.LLST37
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x68
	.4byte	.LLST38
	.uleb128 0x24
	.string	"rv"
	.byte	0x1
	.2byte	0x14e
	.4byte	0x4c
	.4byte	.LLST39
	.uleb128 0x2e
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x14f
	.4byte	0x68
	.4byte	.LLST40
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.2byte	0x150
	.4byte	0x430
	.4byte	.LLST41
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.2byte	0x151
	.4byte	0x20d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LVL131
	.4byte	0x65e
	.4byte	0xca7
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL133
	.4byte	0x1094
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x17b
	.4byte	0x4c
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd12
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x17b
	.4byte	0x6b7
	.4byte	.LLST42
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.2byte	0x17b
	.4byte	0xae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"rv"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x19
	.4byte	.LVL140
	.4byte	0x6bd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x188
	.4byte	0x4c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd66
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x188
	.4byte	0x6b7
	.4byte	.LLST43
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.2byte	0x188
	.4byte	0xae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2b
	.string	"rv"
	.byte	0x1
	.2byte	0x189
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x19
	.4byte	.LVL145
	.4byte	0x6bd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x195
	.4byte	0x4c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdbc
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x195
	.4byte	0x6b7
	.4byte	.LLST44
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.2byte	0x195
	.4byte	0xae
	.4byte	.LLST45
	.uleb128 0x2b
	.string	"rv"
	.byte	0x1
	.2byte	0x196
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x19
	.4byte	.LVL150
	.4byte	0x6bd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x4c
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe12
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x6b7
	.4byte	.LLST46
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.2byte	0x1a2
	.4byte	0xae
	.4byte	.LLST47
	.uleb128 0x2b
	.string	"rv"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x19
	.4byte	.LVL156
	.4byte	0x6bd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1af
	.4byte	0x9c
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed7
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1af
	.4byte	0x6b7
	.4byte	.LLST48
	.uleb128 0x2f
	.string	"out"
	.byte	0x1
	.2byte	0x1af
	.4byte	0xed7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x68
	.4byte	.LLST49
	.uleb128 0x2e
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x38d
	.4byte	.LLST50
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x430
	.4byte	.LLST51
	.uleb128 0x24
	.string	"res"
	.byte	0x1
	.2byte	0x1b3
	.4byte	0x1fb
	.4byte	.LLST52
	.uleb128 0x25
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.4byte	.LVL167
	.4byte	0x1089
	.4byte	0xead
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL169
	.4byte	0x73a
	.4byte	0xecd
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL172
	.4byte	0x1094
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fb
	.uleb128 0x2c
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x68
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf90
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x6b7
	.4byte	.LLST53
	.uleb128 0x2d
	.string	"out"
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x1fb
	.4byte	.LLST54
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x68
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x38d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x430
	.4byte	.LLST55
	.uleb128 0x25
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.4byte	.LVL180
	.4byte	0xbc6
	.4byte	0xf66
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL182
	.4byte	0x73a
	.4byte	0xf86
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
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
	.byte	0
	.uleb128 0x28
	.4byte	.LVL185
	.4byte	0x1094
	.byte	0
	.uleb128 0x29
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1e4
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfff
	.uleb128 0x2a
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x6b7
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2e
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x38d
	.4byte	.LLST56
	.uleb128 0x24
	.string	"ci"
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x38d
	.4byte	.LLST57
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x68
	.4byte	.LLST58
	.uleb128 0x1d
	.4byte	.LVL190
	.4byte	0x717
	.4byte	0xff5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.byte	0
	.uleb128 0x28
	.4byte	.LVL197
	.4byte	0x478
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x205
	.4byte	0x4c
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x103a
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x205
	.4byte	0x6b7
	.4byte	.LLST59
	.uleb128 0x19
	.4byte	.LVL201
	.4byte	0x65e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x207
	.4byte	0x4c
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1073
	.uleb128 0x23
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x207
	.4byte	0x6b7
	.4byte	.LLST60
	.uleb128 0x25
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x208
	.4byte	0x38d
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x30
	.4byte	.LASF121
	.4byte	.LASF121
	.byte	0x9
	.byte	0x28
	.uleb128 0x30
	.4byte	.LASF122
	.4byte	.LASF122
	.byte	0x9
	.byte	0x2b
	.uleb128 0x30
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x9
	.byte	0x27
	.uleb128 0x30
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0xa
	.byte	0x78
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
	.uleb128 0xd
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1c
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x7
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
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
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL38
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
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42
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
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x78
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x6
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x72
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL66
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0xc
	.4byte	.LVL61
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x72
	.sleb128 8
	.4byte	.LVL57
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL74
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL79
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL88
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL79
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x72
	.sleb128 12
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0xc
	.4byte	.LVL85
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL89
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.4byte	.LVL95
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL113
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL97
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL97
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL102
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL98
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL112
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL98
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL112
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL126
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL138
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL128
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL126
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL135
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL130
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL137
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL129
	.4byte	.LVL135
	.2byte	0x3
	.byte	0x76
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE19
	.2byte	0x3
	.byte	0x76
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL148
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL149
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL152
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL157
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL161
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170
	.4byte	.LVL175
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL163
	.4byte	.LVL167-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL170
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL168
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL177
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL179
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL179
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL183
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL193
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL196
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL189
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL195
	.4byte	.LVL197-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL188
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL200
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL203
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
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x104
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF107:
	.string	"nghttp2_bufs_len"
.LASF102:
	.string	"cur_chain"
.LASF100:
	.string	"nghttp2_bufs_wrap_init2"
.LASF68:
	.string	"last"
.LASF125:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF51:
	.string	"NGHTTP2_ERR_NOMEM"
.LASF46:
	.string	"NGHTTP2_ERR_HTTP_MESSAGING"
.LASF91:
	.string	"nghttp2_buf_reset"
.LASF113:
	.string	"nghttp2_bufs_orb"
.LASF21:
	.string	"NGHTTP2_ERR_INVALID_FRAME"
.LASF97:
	.string	"next_chain"
.LASF41:
	.string	"NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS"
.LASF66:
	.string	"nghttp2_mem"
.LASF39:
	.string	"NGHTTP2_ERR_INSUFF_BUFSIZE"
.LASF86:
	.string	"initial"
.LASF4:
	.string	"unsigned int"
.LASF72:
	.string	"next"
.LASF73:
	.string	"head"
.LASF94:
	.string	"nghttp2_bufs_init2"
.LASF93:
	.string	"nghttp2_bufs_init3"
.LASF38:
	.string	"NGHTTP2_ERR_FLOW_CONTROL"
.LASF35:
	.string	"NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE"
.LASF71:
	.string	"nghttp2_buf_chain"
.LASF34:
	.string	"NGHTTP2_ERR_INVALID_STATE"
.LASF48:
	.string	"NGHTTP2_ERR_INTERNAL"
.LASF59:
	.string	"nghttp2_calloc"
.LASF64:
	.string	"calloc"
.LASF47:
	.string	"NGHTTP2_ERR_REFUSED_STREAM"
.LASF124:
	.string	"nghttp2_cpymem"
.LASF53:
	.string	"NGHTTP2_ERR_BAD_CLIENT_MAGIC"
.LASF74:
	.string	"chunk_length"
.LASF57:
	.string	"nghttp2_malloc"
.LASF105:
	.string	"nghttp2_bufs_wrap_free"
.LASF98:
	.string	"nghttp2_bufs_realloc"
.LASF62:
	.string	"malloc"
.LASF75:
	.string	"max_chunk"
.LASF55:
	.string	"base"
.LASF6:
	.string	"long long unsigned int"
.LASF50:
	.string	"NGHTTP2_ERR_FATAL"
.LASF106:
	.string	"nghttp2_bufs_seek_last_present"
.LASF31:
	.string	"NGHTTP2_ERR_START_STREAM_NOT_ALLOWED"
.LASF23:
	.string	"NGHTTP2_ERR_DEFERRED"
.LASF116:
	.string	"resbuf"
.LASF26:
	.string	"NGHTTP2_ERR_STREAM_CLOSING"
.LASF85:
	.string	"nghttp2_buf_init2"
.LASF89:
	.string	"bufs"
.LASF8:
	.string	"size_t"
.LASF126:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_buf.c"
.LASF78:
	.string	"offset"
.LASF40:
	.string	"NGHTTP2_ERR_PAUSE"
.LASF49:
	.string	"NGHTTP2_ERR_CANCEL"
.LASF103:
	.string	"head_chain"
.LASF63:
	.string	"free"
.LASF87:
	.string	"buf_chain_new"
.LASF95:
	.string	"nghttp2_bufs_init"
.LASF81:
	.string	"nghttp2_buf_free"
.LASF79:
	.string	"nghttp2_bufs"
.LASF22:
	.string	"NGHTTP2_ERR_EOF"
.LASF128:
	.string	"buf_chain_del"
.LASF29:
	.string	"NGHTTP2_ERR_INVALID_STREAM_STATE"
.LASF13:
	.string	"char"
.LASF101:
	.string	"veclen"
.LASF58:
	.string	"nghttp2_free"
.LASF117:
	.string	"nghttp2_bufs_remove_copy"
.LASF16:
	.string	"NGHTTP2_ERR_INVALID_ARGUMENT"
.LASF119:
	.string	"nghttp2_bufs_advance"
.LASF109:
	.string	"data"
.LASF14:
	.string	"ssize_t"
.LASF111:
	.string	"nghttp2_bufs_addb"
.LASF15:
	.string	"uint8_t"
.LASF60:
	.string	"nghttp2_realloc"
.LASF112:
	.string	"nghttp2_bufs_addb_hold"
.LASF30:
	.string	"NGHTTP2_ERR_DEFERRED_DATA_EXIST"
.LASF45:
	.string	"NGHTTP2_ERR_HTTP_HEADER"
.LASF122:
	.string	"nghttp2_mem_realloc"
.LASF5:
	.string	"long long int"
.LASF69:
	.string	"mark"
.LASF123:
	.string	"nghttp2_mem_malloc"
.LASF88:
	.string	"bufs_alloc_chain"
.LASF108:
	.string	"nghttp2_bufs_add"
.LASF42:
	.string	"NGHTTP2_ERR_PUSH_DISABLED"
.LASF115:
	.string	"nghttp2_bufs_remove"
.LASF77:
	.string	"chunk_keep"
.LASF37:
	.string	"NGHTTP2_ERR_HEADER_COMP"
.LASF120:
	.string	"nghttp2_bufs_next_present"
.LASF27:
	.string	"NGHTTP2_ERR_STREAM_SHUT_WR"
.LASF56:
	.string	"nghttp2_vec"
.LASF121:
	.string	"nghttp2_mem_free"
.LASF99:
	.string	"nghttp2_bufs_wrap_init"
.LASF36:
	.string	"NGHTTP2_ERR_FRAME_SIZE_ERROR"
.LASF18:
	.string	"NGHTTP2_ERR_UNSUPPORTED_VERSION"
.LASF17:
	.string	"NGHTTP2_ERR_BUFFER_ERROR"
.LASF104:
	.string	"dst_chain"
.LASF2:
	.string	"short int"
.LASF61:
	.string	"mem_user_data"
.LASF43:
	.string	"NGHTTP2_ERR_DATA_EXIST"
.LASF9:
	.string	"long int"
.LASF110:
	.string	"nwrite"
.LASF84:
	.string	"nghttp2_buf_reserve"
.LASF24:
	.string	"NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE"
.LASF70:
	.string	"nghttp2_buf"
.LASF7:
	.string	"__uint8_t"
.LASF19:
	.string	"NGHTTP2_ERR_WOULDBLOCK"
.LASF92:
	.string	"nghttp2_buf_wrap_init"
.LASF32:
	.string	"NGHTTP2_ERR_GOAWAY_ALREADY_SENT"
.LASF90:
	.string	"bufs_ensure_addb"
.LASF11:
	.string	"sizetype"
.LASF12:
	.string	"long unsigned int"
.LASF80:
	.string	"nghttp2_buf_init"
.LASF118:
	.string	"nghttp2_bufs_reset"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"NGHTTP2_ERR_PROTO"
.LASF33:
	.string	"NGHTTP2_ERR_INVALID_HEADER_BLOCK"
.LASF54:
	.string	"NGHTTP2_ERR_FLOODED"
.LASF127:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\nghttp"
.LASF44:
	.string	"NGHTTP2_ERR_SESSION_CLOSING"
.LASF52:
	.string	"NGHTTP2_ERR_CALLBACK_FAILURE"
.LASF65:
	.string	"realloc"
.LASF76:
	.string	"chunk_used"
.LASF25:
	.string	"NGHTTP2_ERR_STREAM_CLOSED"
.LASF10:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF3:
	.string	"short unsigned int"
.LASF67:
	.string	"begin"
.LASF82:
	.string	"chain"
.LASF114:
	.string	"nghttp2_bufs_orb_hold"
.LASF28:
	.string	"NGHTTP2_ERR_INVALID_STREAM_ID"
.LASF96:
	.string	"nghttp2_bufs_free"
.LASF83:
	.string	"new_cap"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
