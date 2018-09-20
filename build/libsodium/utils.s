	.file	"utils.c"
	.text
.Ltext0:
	.section	.text._mprotect_noaccess,"ax",@progbits
	.align	4
	.type	_mprotect_noaccess, @function
_mprotect_noaccess:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/sodium/utils.c"
	.loc 1 428 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 435 0
	call8	__errno
.LVL1:
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
	.loc 1 438 0
	movi.n	a2, -1
.LVL2:
	retw.n
.LFE14:
	.size	_mprotect_noaccess, .-_mprotect_noaccess
	.section	.text._sodium_mprotect,"ax",@progbits
	.align	4
	.type	_sodium_mprotect, @function
_sodium_mprotect:
.LFB21:
	.loc 1 663 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 666 0
	call8	__errno
.LVL4:
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
	.loc 1 668 0
	movi.n	a2, -1
.LVL5:
	retw.n
.LFE21:
	.size	_sodium_mprotect, .-_sodium_mprotect
	.section	.text._mprotect_readonly,"ax",@progbits
	.align	4
	.type	_mprotect_readonly, @function
_mprotect_readonly:
.LFB15:
	.loc 1 442 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 449 0
	call8	__errno
.LVL7:
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
	.loc 1 452 0
	movi.n	a2, -1
.LVL8:
	retw.n
.LFE15:
	.size	_mprotect_readonly, .-_mprotect_readonly
	.section	.text._mprotect_readwrite,"ax",@progbits
	.align	4
	.type	_mprotect_readwrite, @function
_mprotect_readwrite:
.LFB16:
	.loc 1 456 0
.LVL9:
	entry	sp, 32
.LCFI3:
	.loc 1 463 0
	call8	__errno
.LVL10:
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
	.loc 1 466 0
	movi.n	a2, -1
.LVL11:
	retw.n
.LFE16:
	.size	_mprotect_readwrite, .-_mprotect_readwrite
	.section	.text._sodium_malloc,"ax",@progbits
	.align	4
	.type	_sodium_malloc, @function
_sodium_malloc:
.LFB17:
	.loc 1 547 0
.LVL12:
	entry	sp, 32
.LCFI4:
	.loc 1 548 0
	bnez.n	a2, .L7
	movi.n	a10, 1
	j	.L6
.L7:
	mov.n	a10, a2
.L6:
	.loc 1 548 0 is_stmt 0 discriminator 4
	call8	malloc
.LVL13:
	.loc 1 549 0 is_stmt 1 discriminator 4
	mov.n	a2, a10
.LVL14:
	retw.n
.LFE17:
	.size	_sodium_malloc, .-_sodium_malloc
	.section	.text._sodium_memzero_as_a_weak_symbol_to_prevent_lto,"ax",@progbits
	.align	4
	.weak	_sodium_memzero_as_a_weak_symbol_to_prevent_lto
	.type	_sodium_memzero_as_a_weak_symbol_to_prevent_lto, @function
_sodium_memzero_as_a_weak_symbol_to_prevent_lto:
.LFB0:
	.loc 1 69 0
.LVL15:
	entry	sp, 32
.LCFI5:
.LVL16:
	.loc 1 71 0
	movi.n	a8, 0
	.loc 1 73 0
	j	.L9
.LVL17:
.L10:
	.loc 1 74 0
	add.n	a9, a2, a8
	movi.n	a10, 0
	s8i	a10, a9, 0
	addi.n	a8, a8, 1
.LVL18:
.L9:
	.loc 1 73 0
	bltu	a8, a3, .L10
	.loc 1 76 0
	retw.n
.LFE0:
	.size	_sodium_memzero_as_a_weak_symbol_to_prevent_lto, .-_sodium_memzero_as_a_weak_symbol_to_prevent_lto
	.section	.text.sodium_memzero,"ax",@progbits
	.align	4
	.global	sodium_memzero
	.type	sodium_memzero, @function
sodium_memzero:
.LFB1:
	.loc 1 81 0
.LVL19:
	entry	sp, 32
.LCFI6:
	.loc 1 91 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_sodium_memzero_as_a_weak_symbol_to_prevent_lto
.LVL20:
	retw.n
.LFE1:
	.size	sodium_memzero, .-sodium_memzero
	.section	.text._sodium_dummy_symbol_to_prevent_memcmp_lto,"ax",@progbits
	.align	4
	.weak	_sodium_dummy_symbol_to_prevent_memcmp_lto
	.type	_sodium_dummy_symbol_to_prevent_memcmp_lto, @function
_sodium_dummy_symbol_to_prevent_memcmp_lto:
.LFB2:
	.loc 1 108 0
.LVL21:
	entry	sp, 32
.LCFI7:
	retw.n
.LFE2:
	.size	_sodium_dummy_symbol_to_prevent_memcmp_lto, .-_sodium_dummy_symbol_to_prevent_memcmp_lto
	.section	.text.sodium_memcmp,"ax",@progbits
	.align	4
	.global	sodium_memcmp
	.type	sodium_memcmp, @function
sodium_memcmp:
.LFB3:
	.loc 1 117 0
.LVL22:
	.loc 1 117 0
	entry	sp, 32
.LCFI8:
.LVL23:
	.loc 1 131 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_sodium_dummy_symbol_to_prevent_memcmp_lto
.LVL24:
	.loc 1 128 0
	movi.n	a10, 0
	.loc 1 133 0
	mov.n	a8, a10
	j	.L14
.LVL25:
.L15:
	.loc 1 134 0 discriminator 3
	add.n	a9, a2, a8
	l8ui	a11, a9, 0
	add.n	a9, a3, a8
	l8ui	a9, a9, 0
	xor	a9, a11, a9
	or	a10, a10, a9
.LVL26:
	.loc 1 133 0 discriminator 3
	addi.n	a8, a8, 1
.LVL27:
.L14:
	.loc 1 133 0 is_stmt 0 discriminator 1
	bltu	a8, a4, .L15
	.loc 1 136 0 is_stmt 1
	addi.n	a2, a10, -1
.LVL28:
	extui	a2, a2, 8, 1
	.loc 1 137 0
	addi.n	a2, a2, -1
	retw.n
.LFE3:
	.size	sodium_memcmp, .-sodium_memcmp
	.section	.text._sodium_dummy_symbol_to_prevent_compare_lto,"ax",@progbits
	.align	4
	.weak	_sodium_dummy_symbol_to_prevent_compare_lto
	.type	_sodium_dummy_symbol_to_prevent_compare_lto, @function
_sodium_dummy_symbol_to_prevent_compare_lto:
.LFB4:
	.loc 1 144 0
.LVL29:
	entry	sp, 32
.LCFI9:
	retw.n
.LFE4:
	.size	_sodium_dummy_symbol_to_prevent_compare_lto, .-_sodium_dummy_symbol_to_prevent_compare_lto
	.section	.text.sodium_compare,"ax",@progbits
	.align	4
	.global	sodium_compare
	.type	sodium_compare, @function
sodium_compare:
.LFB5:
	.loc 1 153 0
.LVL30:
	.loc 1 153 0
	entry	sp, 32
.LCFI10:
.LVL31:
	.loc 1 168 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	_sodium_dummy_symbol_to_prevent_compare_lto
.LVL32:
	.loc 1 164 0
	movi.n	a11, 1
	.loc 1 163 0
	movi.n	a12, 0
	.loc 1 171 0
	j	.L18
.LVL33:
.L19:
	.loc 1 172 0
	addi.n	a4, a4, -1
.LVL34:
	.loc 1 173 0
	add.n	a8, a3, a4
	l8ui	a9, a8, 0
	add.n	a8, a2, a4
	l8ui	a8, a8, 0
	sub	a10, a9, a8
	srai	a10, a10, 8
	extui	a11, a11, 0, 8
.LVL35:
	and	a10, a10, a11
	or	a12, a10, a12
.LVL36:
	.loc 1 174 0
	xor	a9, a9, a8
	addi.n	a9, a9, -1
	srai	a9, a9, 8
	and	a8, a11, a9
	extui	a11, a8, 0, 8
.LVL37:
.L18:
	.loc 1 171 0
	bnez.n	a4, .L19
	.loc 1 176 0
	addx2	a2, a12, a11
.LVL38:
	.loc 1 177 0
	addi.n	a2, a2, -1
	retw.n
.LFE5:
	.size	sodium_compare, .-sodium_compare
	.section	.text.sodium_is_zero,"ax",@progbits
	.align	4
	.global	sodium_is_zero
	.type	sodium_is_zero, @function
sodium_is_zero:
.LFB6:
	.loc 1 181 0
.LVL39:
	entry	sp, 32
.LCFI11:
.LVL40:
	.loc 1 183 0
	movi.n	a9, 0
	.loc 1 185 0
	mov.n	a8, a9
	j	.L21
.LVL41:
.L22:
	.loc 1 186 0 discriminator 3
	add.n	a10, a2, a8
	l8ui	a10, a10, 0
	or	a9, a9, a10
.LVL42:
	.loc 1 185 0 discriminator 3
	addi.n	a8, a8, 1
.LVL43:
.L21:
	.loc 1 185 0 is_stmt 0 discriminator 1
	bltu	a8, a3, .L22
	.loc 1 188 0 is_stmt 1
	addi.n	a2, a9, -1
.LVL44:
	.loc 1 189 0
	extui	a2, a2, 8, 1
	retw.n
.LFE6:
	.size	sodium_is_zero, .-sodium_is_zero
	.section	.text.sodium_increment,"ax",@progbits
	.align	4
	.global	sodium_increment
	.type	sodium_increment, @function
sodium_increment:
.LFB7:
	.loc 1 193 0
.LVL45:
	entry	sp, 32
.LCFI12:
.LVL46:
	.loc 1 195 0
	movi.n	a8, 1
	.loc 1 194 0
	movi.n	a9, 0
	.loc 1 231 0
	j	.L24
.LVL47:
.L25:
	.loc 1 232 0 discriminator 2
	add.n	a10, a2, a9
	l8ui	a11, a10, 0
	add.n	a8, a8, a11
.LVL48:
	.loc 1 233 0 discriminator 2
	s8i	a8, a10, 0
	.loc 1 234 0 discriminator 2
	srli	a8, a8, 8
.LVL49:
	.loc 1 231 0 discriminator 2
	addi.n	a9, a9, 1
.LVL50:
.L24:
	.loc 1 231 0 is_stmt 0 discriminator 1
	bltu	a9, a3, .L25
	.loc 1 236 0 is_stmt 1
	retw.n
.LFE7:
	.size	sodium_increment, .-sodium_increment
	.section	.text.sodium_add,"ax",@progbits
	.align	4
	.global	sodium_add
	.type	sodium_add, @function
sodium_add:
.LFB8:
	.loc 1 240 0
.LVL51:
	entry	sp, 32
.LCFI13:
.LVL52:
	.loc 1 242 0
	movi.n	a9, 0
	.loc 1 241 0
	mov.n	a8, a9
	.loc 1 280 0
	j	.L27
.LVL53:
.L28:
	.loc 1 281 0 discriminator 2
	add.n	a11, a2, a8
	l8ui	a12, a11, 0
	add.n	a10, a3, a8
	l8ui	a10, a10, 0
	add.n	a10, a12, a10
	add.n	a9, a9, a10
.LVL54:
	.loc 1 282 0 discriminator 2
	s8i	a9, a11, 0
	.loc 1 283 0 discriminator 2
	srli	a9, a9, 8
.LVL55:
	.loc 1 280 0 discriminator 2
	addi.n	a8, a8, 1
.LVL56:
.L27:
	.loc 1 280 0 is_stmt 0 discriminator 1
	bltu	a8, a4, .L28
	.loc 1 285 0 is_stmt 1
	retw.n
.LFE8:
	.size	sodium_add, .-sodium_add
	.section	.text.sodium_bin2hex,"ax",@progbits
	.literal_position
	.literal .LC0, 2147483646
	.align	4
	.global	sodium_bin2hex
	.type	sodium_bin2hex, @function
sodium_bin2hex:
.LFB9:
	.loc 1 291 0
.LVL57:
	entry	sp, 32
.LCFI14:
.LVL58:
	.loc 1 297 0
	l32r	a8, .LC0
	bltu	a8, a5, .L30
	.loc 1 297 0 is_stmt 0 discriminator 1
	slli	a8, a5, 1
	bltu	a8, a3, .L33
.L30:
	.loc 1 298 0 is_stmt 1
	call8	abort
.LVL59:
.L32:
	.loc 1 301 0
	add.n	a8, a4, a11
	l8ui	a12, a8, 0
	extui	a8, a12, 0, 4
.LVL60:
	.loc 1 302 0
	srli	a12, a12, 4
.LVL61:
	.loc 1 303 0
	addi	a9, a8, -10
	srli	a9, a9, 8
	movi	a10, -0x27
	and	a9, a9, a10
	add.n	a8, a8, a9
.LVL62:
	addi	a8, a8, 87
	extui	a8, a8, 0, 8
	slli	a9, a8, 8
	.loc 1 304 0
	addi	a8, a12, -10
	srli	a8, a8, 8
	and	a10, a8, a10
	add.n	a8, a12, a10
	addi	a8, a8, 87
	extui	a8, a8, 0, 8
	.loc 1 303 0
	or	a8, a8, a9
.LVL63:
	.loc 1 305 0
	slli	a9, a11, 1
	add.n	a10, a2, a9
	s8i	a8, a10, 0
.LVL64:
	.loc 1 307 0
	addi.n	a9, a9, 1
	add.n	a9, a2, a9
	srli	a8, a8, 8
.LVL65:
	s8i	a8, a9, 0
	.loc 1 308 0
	addi.n	a11, a11, 1
.LVL66:
	j	.L31
.LVL67:
.L33:
	movi.n	a11, 0
.LVL68:
.L31:
	.loc 1 300 0
	bltu	a11, a5, .L32
	.loc 1 310 0
	addx2	a11, a11, a2
.LVL69:
	movi.n	a4, 0
.LVL70:
	s8i	a4, a11, 0
	.loc 1 313 0
	retw.n
.LFE9:
	.size	sodium_bin2hex, .-sodium_bin2hex
	.section	.text.sodium_hex2bin,"ax",@progbits
	.align	4
	.global	sodium_hex2bin
	.type	sodium_hex2bin, @function
sodium_hex2bin:
.LFB10:
	.loc 1 320 0
.LVL71:
	entry	sp, 64
.LCFI15:
	s32i.n	a7, sp, 12
	s32i.n	a2, sp, 8
	s32i.n	a3, sp, 0
	l32i.n	a2, sp, 12
.LVL72:
	s32i.n	a2, sp, 16
.LVL73:
	.loc 1 329 0
	movi.n	a3, 0
.LVL74:
	.loc 1 325 0
	s32i.n	a3, sp, 4
	.loc 1 322 0
	mov.n	a7, a3
.LVL75:
	.loc 1 321 0
	mov.n	a2, a3
.LVL76:
	.loc 1 331 0
	j	.L35
.LVL77:
.L42:
	.loc 1 332 0
	add.n	a8, a4, a7
	l8ui	a11, a8, 0
.LVL78:
	.loc 1 333 0
	movi.n	a12, 0x30
	xor	a12, a11, a12
	extui	a12, a12, 0, 8
.LVL79:
	.loc 1 334 0
	addi	a13, a12, -10
	extui	a13, a13, 8, 8
.LVL80:
	.loc 1 335 0
	movi	a8, -0x21
.LVL81:
	and	a8, a11, a8
	addi	a8, a8, -55
	extui	a8, a8, 0, 8
.LVL82:
	.loc 1 336 0
	addi	a9, a8, -10
	addi	a10, a8, -16
	xor	a9, a9, a10
	extui	a9, a9, 8, 8
.LVL83:
	.loc 1 337 0
	or	a10, a13, a9
	bnez.n	a10, .L36
	.loc 1 338 0
	movi.n	a8, 1
.LVL84:
	movi.n	a9, 0
.LVL85:
	mov.n	a10, a9
	movnez	a10, a8, a6
	.loc 1 338 0
	movnez	a8, a9, a3
	.loc 1 338 0
	bnone	a8, a10, .L46
	.loc 1 338 0 discriminator 1
	mov.n	a10, a6
	call8	strchr
.LVL86:
	beqz.n	a10, .L47
	.loc 1 339 0
	addi.n	a7, a7, 1
.LVL87:
	.loc 1 340 0
	j	.L35
.LVL88:
.L36:
	.loc 1 344 0
	and	a12, a12, a13
.LVL89:
	and	a8, a8, a9
.LVL90:
	or	a8, a12, a8
.LVL91:
	.loc 1 345 0
	l32i.n	a9, sp, 0
.LVL92:
	bltu	a2, a9, .L39
.LVL93:
	.loc 1 347 0
	call8	__errno
.LVL94:
	movi.n	a5, 0x22
.LVL95:
	s32i.n	a5, a10, 0
	.loc 1 346 0
	movi.n	a5, -1
	.loc 1 348 0
	j	.L37
.LVL96:
.L39:
	.loc 1 350 0
	bnez.n	a3, .L40
	.loc 1 351 0
	slli	a8, a8, 4
.LVL97:
	extui	a8, a8, 0, 8
	s32i.n	a8, sp, 4
.LVL98:
	j	.L41
.LVL99:
.L40:
	.loc 1 353 0
	l32i.n	a10, sp, 8
	add.n	a9, a10, a2
	l32i.n	a10, sp, 4
	or	a8, a10, a8
.LVL100:
	s8i	a8, a9, 0
.LVL101:
	addi.n	a2, a2, 1
.LVL102:
.L41:
	.loc 1 355 0
	movi.n	a8, -1
	xor	a3, a8, a3
.LVL103:
	extui	a3, a3, 0, 8
.LVL104:
	.loc 1 356 0
	addi.n	a7, a7, 1
.LVL105:
.L35:
	.loc 1 331 0
	bltu	a7, a5, .L42
	.loc 1 323 0
	movi.n	a5, 0
.LVL106:
	j	.L37
.LVL107:
.L46:
	movi.n	a5, 0
.LVL108:
	j	.L37
.LVL109:
.L47:
	movi.n	a5, 0
.LVL110:
.L37:
	.loc 1 358 0
	beqz.n	a3, .L43
	.loc 1 359 0
	addi.n	a7, a7, -1
.LVL111:
.L43:
	.loc 1 361 0
	l32i	a3, sp, 64
.LVL112:
	beqz.n	a3, .L44
	.loc 1 362 0
	add.n	a4, a4, a7
.LVL113:
	s32i.n	a4, a3, 0
.L44:
	.loc 1 364 0
	l32i.n	a3, sp, 16
	beqz.n	a3, .L45
	.loc 1 365 0
	l32i.n	a9, sp, 12
	s32i.n	a2, a9, 0
.L45:
	.loc 1 368 0
	mov.n	a2, a5
.LVL114:
	retw.n
.LFE10:
	.size	sodium_hex2bin, .-sodium_hex2bin
	.section	.text._sodium_alloc_init,"ax",@progbits
	.literal_position
	.literal .LC1, canary
	.align	4
	.global	_sodium_alloc_init
	.type	_sodium_alloc_init, @function
_sodium_alloc_init:
.LFB11:
	.loc 1 372 0
	entry	sp, 32
.LCFI16:
	.loc 1 388 0
	movi.n	a11, 0x10
	l32r	a10, .LC1
	call8	randombytes_buf
.LVL115:
	.loc 1 391 0
	movi.n	a2, 0
	retw.n
.LFE11:
	.size	_sodium_alloc_init, .-_sodium_alloc_init
	.section	.text.sodium_mlock,"ax",@progbits
	.align	4
	.global	sodium_mlock
	.type	sodium_mlock, @function
sodium_mlock:
.LFB12:
	.loc 1 395 0
.LVL116:
	entry	sp, 32
.LCFI17:
	.loc 1 404 0
	call8	__errno
.LVL117:
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
	.loc 1 407 0
	movi.n	a2, -1
.LVL118:
	retw.n
.LFE12:
	.size	sodium_mlock, .-sodium_mlock
	.section	.text.sodium_munlock,"ax",@progbits
	.align	4
	.global	sodium_munlock
	.type	sodium_munlock, @function
sodium_munlock:
.LFB13:
	.loc 1 411 0
.LVL119:
	entry	sp, 32
.LCFI18:
	.loc 1 412 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	sodium_memzero
.LVL120:
	.loc 1 421 0
	call8	__errno
.LVL121:
	movi.n	a8, 0x58
	s32i.n	a8, a10, 0
	.loc 1 424 0
	movi.n	a2, -1
.LVL122:
	retw.n
.LFE13:
	.size	sodium_munlock, .-sodium_munlock
	.section	.text.sodium_malloc,"ax",@progbits
	.align	4
	.global	sodium_malloc
	.type	sodium_malloc, @function
sodium_malloc:
.LFB18:
	.loc 1 596 0
.LVL123:
	entry	sp, 32
.LCFI19:
	.loc 1 599 0
	mov.n	a10, a2
	call8	_sodium_malloc
.LVL124:
	mov.n	a3, a10
.LVL125:
	beqz.n	a10, .L53
	.loc 1 602 0
	mov.n	a12, a2
	movi	a11, 0xdb
	call8	memset
.LVL126:
	.loc 1 604 0
	mov.n	a2, a3
.LVL127:
	retw.n
.LVL128:
.L53:
	.loc 1 600 0
	movi.n	a2, 0
.LVL129:
	.loc 1 605 0
	retw.n
.LFE18:
	.size	sodium_malloc, .-sodium_malloc
	.section	.text.sodium_allocarray,"ax",@progbits
	.align	4
	.global	sodium_allocarray
	.type	sodium_allocarray, @function
sodium_allocarray:
.LFB19:
	.loc 1 609 0
.LVL130:
	entry	sp, 32
.LCFI20:
	.loc 1 612 0
	beqz.n	a2, .L55
	.loc 1 612 0 is_stmt 0 discriminator 1
	movi.n	a8, -1
	quou	a8, a8, a2
	bltu	a3, a8, .L55
	.loc 1 613 0 is_stmt 1
	call8	__errno
.LVL131:
	movi.n	a2, 0xc
.LVL132:
	s32i.n	a2, a10, 0
	.loc 1 614 0
	movi.n	a2, 0
	retw.n
.LVL133:
.L55:
	.loc 1 618 0
	mull	a10, a2, a3
.LVL134:
	call8	sodium_malloc
.LVL135:
	mov.n	a2, a10
.LVL136:
	.loc 1 619 0
	retw.n
.LFE19:
	.size	sodium_allocarray, .-sodium_allocarray
	.section	.text.sodium_free,"ax",@progbits
	.align	4
	.global	sodium_free
	.type	sodium_free, @function
sodium_free:
.LFB20:
	.loc 1 624 0
.LVL137:
	entry	sp, 32
.LCFI21:
	.loc 1 625 0
	mov.n	a10, a2
	call8	free
.LVL138:
	retw.n
.LFE20:
	.size	sodium_free, .-sodium_free
	.section	.text.sodium_mprotect_noaccess,"ax",@progbits
	.literal_position
	.literal .LC2, _mprotect_noaccess
	.align	4
	.global	sodium_mprotect_noaccess
	.type	sodium_mprotect_noaccess, @function
sodium_mprotect_noaccess:
.LFB22:
	.loc 1 687 0
.LVL139:
	entry	sp, 32
.LCFI22:
	.loc 1 688 0
	l32r	a11, .LC2
	mov.n	a10, a2
	call8	_sodium_mprotect
.LVL140:
	.loc 1 689 0
	mov.n	a2, a10
.LVL141:
	retw.n
.LFE22:
	.size	sodium_mprotect_noaccess, .-sodium_mprotect_noaccess
	.section	.text.sodium_mprotect_readonly,"ax",@progbits
	.literal_position
	.literal .LC3, _mprotect_readonly
	.align	4
	.global	sodium_mprotect_readonly
	.type	sodium_mprotect_readonly, @function
sodium_mprotect_readonly:
.LFB23:
	.loc 1 693 0
.LVL142:
	entry	sp, 32
.LCFI23:
	.loc 1 694 0
	l32r	a11, .LC3
	mov.n	a10, a2
	call8	_sodium_mprotect
.LVL143:
	.loc 1 695 0
	mov.n	a2, a10
.LVL144:
	retw.n
.LFE23:
	.size	sodium_mprotect_readonly, .-sodium_mprotect_readonly
	.section	.text.sodium_mprotect_readwrite,"ax",@progbits
	.literal_position
	.literal .LC4, _mprotect_readwrite
	.align	4
	.global	sodium_mprotect_readwrite
	.type	sodium_mprotect_readwrite, @function
sodium_mprotect_readwrite:
.LFB24:
	.loc 1 699 0
.LVL145:
	entry	sp, 32
.LCFI24:
	.loc 1 700 0
	l32r	a11, .LC4
	mov.n	a10, a2
	call8	_sodium_mprotect
.LVL146:
	.loc 1 701 0
	mov.n	a2, a10
.LVL147:
	retw.n
.LFE24:
	.size	sodium_mprotect_readwrite, .-sodium_mprotect_readwrite
	.section	.bss.canary,"aw",@nobits
	.align	4
	.type	canary, @object
	.size	canary, 16
canary:
	.zero	16
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI3-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI4-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI5-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI6-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI7-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI8-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI9-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI10-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI11-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI12-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI13-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI14-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI15-.LFB10
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI16-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI17-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI18-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI19-.LFB18
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI21-.LFB20
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
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/errno.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa67
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x2
	.byte	0xd8
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48
	.uleb128 0x6
	.byte	0x4
	.4byte	0x87
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x4
	.4byte	0x94
	.uleb128 0x7
	.4byte	0x87
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x8
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x55
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x72
	.uleb128 0x7
	.4byte	0x21
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x3a
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf7
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x72
	.4byte	.LLST0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LVL1
	.4byte	0xa1d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x296
	.4byte	0x3a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x138
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.2byte	0x296
	.4byte	0x72
	.4byte	.LLST1
	.uleb128 0xd
	.string	"cb"
	.byte	0x1
	.2byte	0x296
	.4byte	0x14c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LVL4
	.4byte	0xa1d
	.byte	0
	.uleb128 0xe
	.4byte	0x3a
	.4byte	0x14c
	.uleb128 0xf
	.4byte	0x72
	.uleb128 0xf
	.4byte	0x21
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x138
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x3a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x194
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x72
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LVL7
	.4byte	0xa1d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x3a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d6
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x72
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LVL10
	.4byte	0xa1d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x222
	.4byte	0x72
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20a
	.uleb128 0x10
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x222
	.4byte	0xb0
	.4byte	.LLST4
	.uleb128 0xc
	.4byte	.LVL13
	.4byte	0xa28
	.byte	0
	.uleb128 0x11
	.4byte	.LASF20
	.byte	0x1
	.byte	0x43
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x254
	.uleb128 0x12
	.string	"pnt"
	.byte	0x1
	.byte	0x43
	.4byte	0xab
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x44
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x46
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x47
	.4byte	0x21
	.4byte	.LLST5
	.byte	0
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x50
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x29a
	.uleb128 0x12
	.string	"pnt"
	.byte	0x1
	.byte	0x50
	.4byte	0xab
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x50
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x15
	.4byte	.LVL20
	.4byte	0x20a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x69
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d5
	.uleb128 0x12
	.string	"b1"
	.byte	0x1
	.byte	0x69
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.string	"b2"
	.byte	0x1
	.byte	0x6a
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x6b
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2db
	.uleb128 0x7
	.4byte	0x48
	.uleb128 0x17
	.4byte	.LASF24
	.byte	0x1
	.byte	0x74
	.4byte	0x3a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x373
	.uleb128 0x18
	.string	"b1_"
	.byte	0x1
	.byte	0x74
	.4byte	0x373
	.4byte	.LLST6
	.uleb128 0x12
	.string	"b2_"
	.byte	0x1
	.byte	0x74
	.4byte	0x373
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x74
	.4byte	0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"b1"
	.byte	0x1
	.byte	0x77
	.4byte	0x2d5
	.4byte	.LLST7
	.uleb128 0x19
	.string	"b2"
	.byte	0x1
	.byte	0x78
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x7f
	.4byte	0x21
	.4byte	.LLST8
	.uleb128 0x14
	.string	"d"
	.byte	0x1
	.byte	0x80
	.4byte	0x48
	.4byte	.LLST9
	.uleb128 0x15
	.4byte	.LVL24
	.4byte	0x29a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x99
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b3
	.uleb128 0x12
	.string	"b1"
	.byte	0x1
	.byte	0x8d
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.string	"b2"
	.byte	0x1
	.byte	0x8e
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x8f
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x17
	.4byte	.LASF25
	.byte	0x1
	.byte	0x98
	.4byte	0x3a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x455
	.uleb128 0x18
	.string	"b1_"
	.byte	0x1
	.byte	0x98
	.4byte	0x2d5
	.4byte	.LLST10
	.uleb128 0x12
	.string	"b2_"
	.byte	0x1
	.byte	0x98
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0x98
	.4byte	0x21
	.4byte	.LLST11
	.uleb128 0x14
	.string	"b1"
	.byte	0x1
	.byte	0x9b
	.4byte	0x2d5
	.4byte	.LLST12
	.uleb128 0x19
	.string	"b2"
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"gt"
	.byte	0x1
	.byte	0xa3
	.4byte	0x48
	.4byte	.LLST13
	.uleb128 0x14
	.string	"eq"
	.byte	0x1
	.byte	0xa4
	.4byte	0x48
	.4byte	.LLST14
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.4byte	0x21
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0x378
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF26
	.byte	0x1
	.byte	0xb4
	.4byte	0x3a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4a3
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.byte	0xb4
	.4byte	0x2d5
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LASF27
	.byte	0x1
	.byte	0xb4
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xb6
	.4byte	0x21
	.4byte	.LLST16
	.uleb128 0x14
	.string	"d"
	.byte	0x1
	.byte	0xb7
	.4byte	0x48
	.4byte	.LLST17
	.byte	0
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4eb
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0xc0
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF27
	.byte	0x1
	.byte	0xc0
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xc2
	.4byte	0x21
	.4byte	.LLST18
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0xc3
	.4byte	0xa0
	.4byte	.LLST19
	.byte	0
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0xef
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x53e
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0xef
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0xef
	.4byte	0x2d5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0xef
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xf1
	.4byte	0x21
	.4byte	.LLST20
	.uleb128 0x14
	.string	"c"
	.byte	0x1
	.byte	0xf2
	.4byte	0xa0
	.4byte	.LLST21
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x121
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d4
	.uleb128 0xd
	.string	"hex"
	.byte	0x1
	.2byte	0x121
	.4byte	0x5d4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x121
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.string	"bin"
	.byte	0x1
	.2byte	0x122
	.4byte	0x5d9
	.4byte	.LLST22
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x122
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.2byte	0x124
	.4byte	0x21
	.4byte	.LLST23
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.2byte	0x125
	.4byte	0x2c
	.4byte	.LLST24
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.2byte	0x126
	.4byte	0x3a
	.4byte	.LLST25
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.2byte	0x127
	.4byte	0x3a
	.4byte	.LLST26
	.uleb128 0xc
	.4byte	.LVL59
	.4byte	0xa33
	.byte	0
	.uleb128 0x7
	.4byte	0x81
	.uleb128 0x7
	.4byte	0x2d5
	.uleb128 0x1b
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x13c
	.4byte	0x3a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x731
	.uleb128 0xa
	.string	"bin"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x731
	.4byte	.LLST27
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x13c
	.4byte	0xb0
	.4byte	.LLST28
	.uleb128 0xa
	.string	"hex"
	.byte	0x1
	.2byte	0x13d
	.4byte	0x736
	.4byte	.LLST29
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x13d
	.4byte	0xb0
	.4byte	.LLST30
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x13e
	.4byte	0x736
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x13e
	.4byte	0x741
	.4byte	.LLST31
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x13f
	.4byte	0x74c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x141
	.4byte	0x21
	.4byte	.LLST32
	.uleb128 0x1d
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x142
	.4byte	0x21
	.4byte	.LLST33
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.2byte	0x143
	.4byte	0x3a
	.4byte	.LLST34
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.2byte	0x144
	.4byte	0x48
	.4byte	.LLST35
	.uleb128 0x1d
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x145
	.4byte	0x48
	.4byte	.LLST36
	.uleb128 0x1d
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x146
	.4byte	0x48
	.4byte	.LLST37
	.uleb128 0x1d
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x146
	.4byte	0x48
	.4byte	.LLST38
	.uleb128 0x1d
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x147
	.4byte	0x48
	.4byte	.LLST39
	.uleb128 0x1d
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x147
	.4byte	0x48
	.4byte	.LLST40
	.uleb128 0x1d
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x148
	.4byte	0x48
	.4byte	.LLST41
	.uleb128 0x1d
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x149
	.4byte	0x48
	.4byte	.LLST42
	.uleb128 0x1e
	.4byte	.LVL86
	.4byte	0xa3e
	.4byte	0x727
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL94
	.4byte	0xa1d
	.byte	0
	.uleb128 0x7
	.4byte	0x7b
	.uleb128 0x7
	.4byte	0x8e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21
	.uleb128 0x7
	.4byte	0x73b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x8e
	.uleb128 0x7
	.4byte	0x746
	.uleb128 0x1b
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x173
	.4byte	0x3a
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x784
	.uleb128 0x15
	.4byte	.LVL115
	.4byte	0xa49
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	canary
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x18a
	.4byte	0x3a
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c6
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x18a
	.4byte	0xab
	.4byte	.LLST43
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.2byte	0x18a
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LVL117
	.4byte	0xa1d
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x19a
	.4byte	0x3a
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x822
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x19a
	.4byte	0xab
	.4byte	.LLST44
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.2byte	0x19a
	.4byte	0xb0
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LVL120
	.4byte	0x254
	.4byte	0x818
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL121
	.4byte	0xa1d
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x253
	.4byte	0x72
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88b
	.uleb128 0x10
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x253
	.4byte	0xb0
	.4byte	.LLST45
	.uleb128 0x1f
	.string	"ptr"
	.byte	0x1
	.2byte	0x255
	.4byte	0x72
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.4byte	.LVL124
	.4byte	0x1d6
	.4byte	0x86e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL126
	.4byte	0xa54
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
	.byte	0x8
	.byte	0xdb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x260
	.4byte	0x72
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f0
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x260
	.4byte	0x21
	.4byte	.LLST46
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x260
	.4byte	0x21
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x262
	.4byte	0x21
	.4byte	.LLST47
	.uleb128 0xc
	.4byte	.LVL131
	.4byte	0xa1d
	.uleb128 0x15
	.4byte	.LVL135
	.4byte	0x822
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x26f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x925
	.uleb128 0xd
	.string	"ptr"
	.byte	0x1
	.2byte	0x26f
	.4byte	0x72
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.4byte	.LVL138
	.4byte	0xa5f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x2ae
	.4byte	0x3a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x969
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.2byte	0x2ae
	.4byte	0x72
	.4byte	.LLST48
	.uleb128 0x15
	.4byte	.LVL140
	.4byte	0xf7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_mprotect_noaccess
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x3a
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ad
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x72
	.4byte	.LLST49
	.uleb128 0x15
	.4byte	.LVL143
	.4byte	0xf7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_mprotect_readonly
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x3a
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f1
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.2byte	0x2ba
	.4byte	0x72
	.4byte	.LLST50
	.uleb128 0x15
	.4byte	.LVL146
	.4byte	0xf7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_mprotect_readwrite
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF69
	.byte	0x1
	.byte	0x3e
	.4byte	0x21
	.uleb128 0x22
	.4byte	0x48
	.4byte	0xa0c
	.uleb128 0x23
	.4byte	0x6b
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.byte	0x3f
	.4byte	0x9fc
	.uleb128 0x5
	.byte	0x3
	.4byte	canary
	.uleb128 0x24
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x4
	.byte	0xf
	.uleb128 0x24
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x5
	.byte	0x65
	.uleb128 0x24
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x5
	.byte	0x47
	.uleb128 0x24
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x6
	.byte	0x1b
	.uleb128 0x24
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x7
	.byte	0x21
	.uleb128 0x24
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x6
	.byte	0x19
	.uleb128 0x24
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x5
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
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
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL57
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL72
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL71
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL71
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL110
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL71
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL73
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL81
	.4byte	.LVL86-1
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.4byte	.LVL88
	.4byte	.LVL94-1
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.4byte	.LVL96
	.4byte	.LVL101
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.4byte	.LVL101
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL80
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL88
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL96
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL79
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL91
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL123
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
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL136
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135-1
	.4byte	.LVL136
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LFE19
	.2byte	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL141
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xdc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
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
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"count"
.LASF61:
	.string	"malloc"
.LASF30:
	.string	"sodium_bin2hex"
.LASF64:
	.string	"randombytes_buf"
.LASF11:
	.string	"size_t"
.LASF69:
	.string	"page_size"
.LASF24:
	.string	"sodium_memcmp"
.LASF60:
	.string	"__errno"
.LASF6:
	.string	"long long unsigned int"
.LASF35:
	.string	"hex_len"
.LASF49:
	.string	"addr"
.LASF38:
	.string	"bin_pos"
.LASF54:
	.string	"total_size"
.LASF57:
	.string	"sodium_mprotect_readonly"
.LASF5:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF46:
	.string	"state"
.LASF7:
	.string	"long int"
.LASF33:
	.string	"sodium_hex2bin"
.LASF18:
	.string	"_sodium_malloc"
.LASF51:
	.string	"sodium_malloc"
.LASF28:
	.string	"sodium_increment"
.LASF58:
	.string	"sodium_mprotect_readwrite"
.LASF0:
	.string	"unsigned int"
.LASF29:
	.string	"sodium_add"
.LASF27:
	.string	"nlen"
.LASF9:
	.string	"long unsigned int"
.LASF25:
	.string	"sodium_compare"
.LASF63:
	.string	"strchr"
.LASF13:
	.string	"size"
.LASF1:
	.string	"short unsigned int"
.LASF17:
	.string	"_mprotect_readwrite"
.LASF59:
	.string	"canary"
.LASF43:
	.string	"c_num0"
.LASF50:
	.string	"sodium_munlock"
.LASF55:
	.string	"sodium_free"
.LASF68:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/sodium/utils.c"
.LASF8:
	.string	"sizetype"
.LASF32:
	.string	"bin_len"
.LASF37:
	.string	"hex_end"
.LASF14:
	.string	"_mprotect_noaccess"
.LASF31:
	.string	"hex_maxlen"
.LASF21:
	.string	"sodium_memzero"
.LASF15:
	.string	"_sodium_mprotect"
.LASF12:
	.string	"uint_fast16_t"
.LASF36:
	.string	"ignore"
.LASF26:
	.string	"sodium_is_zero"
.LASF3:
	.string	"unsigned char"
.LASF67:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"_sodium_dummy_symbol_to_prevent_compare_lto"
.LASF39:
	.string	"hex_pos"
.LASF19:
	.string	"pnt_"
.LASF22:
	.string	"_sodium_dummy_symbol_to_prevent_memcmp_lto"
.LASF56:
	.string	"sodium_mprotect_noaccess"
.LASF47:
	.string	"_sodium_alloc_init"
.LASF10:
	.string	"char"
.LASF34:
	.string	"bin_maxlen"
.LASF62:
	.string	"abort"
.LASF20:
	.string	"_sodium_memzero_as_a_weak_symbol_to_prevent_lto"
.LASF52:
	.string	"sodium_allocarray"
.LASF66:
	.string	"free"
.LASF41:
	.string	"c_alpha0"
.LASF48:
	.string	"sodium_mlock"
.LASF45:
	.string	"c_val"
.LASF65:
	.string	"memset"
.LASF40:
	.string	"c_acc"
.LASF44:
	.string	"c_num"
.LASF42:
	.string	"c_alpha"
.LASF16:
	.string	"_mprotect_readonly"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
