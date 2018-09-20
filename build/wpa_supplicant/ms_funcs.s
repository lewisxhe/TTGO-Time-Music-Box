	.file	"ms_funcs.c"
	.text
.Ltext0:
	.section	.text.utf8_to_ucs2,"ax",@progbits
	.align	4
	.type	utf8_to_ucs2, @function
utf8_to_ucs2:
.LFB34:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/ms_funcs.c"
	.loc 1 29 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 32 0
	movi.n	a9, 0
	mov.n	a8, a9
	j	.L2
.LVL2:
.L7:
.LBB2:
	.loc 1 33 0
	add.n	a10, a2, a8
	l8ui	a10, a10, 0
.LVL3:
	.loc 1 34 0
	bgeu	a9, a5, .L8
	.loc 1 38 0
	sext	a11, a10, 7
	bltz	a11, .L4
	.loc 1 39 0
	addi.n	a11, a9, 1
	add.n	a11, a4, a11
	srai	a12, a10, 8
	s8i	a12, a11, 0
.LVL4:
	add.n	a11, a4, a9
	s8i	a10, a11, 0
	.loc 1 40 0
	addi.n	a9, a9, 2
.LVL5:
	j	.L5
.LVL6:
.L4:
	.loc 1 41 0
	addi.n	a11, a3, -1
	beq	a8, a11, .L9
	.loc 1 42 0 discriminator 1
	addi.n	a14, a5, -1
	.loc 1 41 0 discriminator 1
	bgeu	a9, a14, .L10
.LBB3:
	.loc 1 46 0
	addi.n	a13, a8, 1
.LVL7:
	add.n	a11, a2, a13
	l8ui	a11, a11, 0
.LVL8:
	.loc 1 47 0
	movi.n	a12, -0x20
	and	a12, a10, a12
	movi	a15, 0xc0
	bne	a12, a15, .L6
	.loc 1 49 0
	addi.n	a8, a9, 1
.LVL9:
	add.n	a8, a4, a8
	extui	a10, a10, 0, 5
	slli	a10, a10, 6
	srli	a12, a10, 8
	s8i	a12, a8, 0
.LVL10:
	add.n	a8, a4, a9
	extui	a11, a11, 0, 6
.LVL11:
	or	a10, a11, a10
	s8i	a10, a8, 0
	.loc 1 51 0
	addi.n	a9, a9, 2
.LVL12:
	.loc 1 46 0
	mov.n	a8, a13
	j	.L5
.LVL13:
.L6:
	.loc 1 52 0
	beq	a3, a13, .L11
	.loc 1 52 0 is_stmt 0 discriminator 1
	bgeu	a9, a14, .L12
.LBB4:
	.loc 1 58 0 is_stmt 1
	addi.n	a8, a8, 2
.LVL14:
	add.n	a12, a2, a8
	l8ui	a13, a12, 0
.LVL15:
	.loc 1 59 0
	addi.n	a14, a9, 1
	add.n	a14, a4, a14
	slli	a10, a10, 12
	extui	a12, a11, 0, 6
.LVL16:
	slli	a11, a12, 6
	or	a12, a10, a11
	extui	a12, a12, 8, 8
	s8i	a12, a14, 0
.LVL17:
	add.n	a12, a4, a9
	or	a11, a10, a11
	extui	a10, a13, 0, 6
	or	a11, a11, a10
	s8i	a11, a12, 0
.LVL18:
.L5:
.LBE4:
.LBE3:
.LBE2:
	.loc 1 32 0 discriminator 2
	addi.n	a8, a8, 1
.LVL19:
.L2:
	.loc 1 32 0 is_stmt 0 discriminator 1
	bltu	a8, a3, .L7
	.loc 1 66 0 is_stmt 1
	beqz.n	a6, .L13
	.loc 1 67 0
	srli	a9, a9, 1
.LVL20:
	s32i.n	a9, a6, 0
	.loc 1 68 0
	movi.n	a2, 0
.LVL21:
	retw.n
.LVL22:
.L8:
.LBB6:
	.loc 1 36 0
	movi.n	a2, -1
.LVL23:
	retw.n
.LVL24:
.L9:
	.loc 1 44 0
	movi.n	a2, -1
.LVL25:
	retw.n
.LVL26:
.L10:
	movi.n	a2, -1
.LVL27:
	retw.n
.LVL28:
.L11:
.LBB5:
	.loc 1 55 0
	movi.n	a2, -1
.LVL29:
	retw.n
.LVL30:
.L12:
	movi.n	a2, -1
.LVL31:
	retw.n
.LVL32:
.L13:
.LBE5:
.LBE6:
	.loc 1 68 0
	movi.n	a2, 0
.LVL33:
	.loc 1 69 0
	retw.n
.LFE34:
	.size	utf8_to_ucs2, .-utf8_to_ucs2
	.section	.text.challenge_hash,"ax",@progbits
	.align	4
	.type	challenge_hash, @function
challenge_hash:
.LFB35:
	.loc 1 84 0
.LVL34:
	entry	sp, 80
.LCFI1:
	.loc 1 89 0
	s32i.n	a2, sp, 20
	.loc 1 90 0
	movi.n	a2, 0x10
.LVL35:
	s32i.n	a2, sp, 32
	.loc 1 91 0
	s32i.n	a3, sp, 24
	.loc 1 92 0
	s32i.n	a2, sp, 36
	.loc 1 93 0
	s32i.n	a4, sp, 28
	.loc 1 94 0
	s32i.n	a5, sp, 40
	.loc 1 96 0
	mov.n	a13, sp
	addi	a12, sp, 32
	addi	a11, sp, 20
.LVL36:
	movi.n	a10, 3
	call8	sha1_vector
.LVL37:
	mov.n	a2, a10
	bnez.n	a10, .L16
	.loc 1 98 0
	movi.n	a12, 8
	mov.n	a11, sp
	mov.n	a10, a6
	call8	memcpy
.LVL38:
	.loc 1 99 0
	retw.n
.L16:
	.loc 1 97 0
	movi.n	a2, -1
	.loc 1 100 0
	retw.n
.LFE35:
	.size	challenge_hash, .-challenge_hash
	.section	.text.nt_password_hash,"ax",@progbits
	.align	4
	.global	nt_password_hash
	.type	nt_password_hash, @function
nt_password_hash:
.LFB36:
	.loc 1 112 0
.LVL39:
	entry	sp, 560
.LCFI2:
.LVL40:
	.loc 1 117 0
	movi	a14, 0x204
	add.n	a14, sp, a14
	movi	a13, 0x200
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	utf8_to_ucs2
.LVL41:
	bltz	a10, .L19
	.loc 1 120 0
	l32i	a8, sp, 516
	slli	a8, a8, 1
	s32i	a8, sp, 516
	.loc 1 121 0
	s32i	sp, sp, 512
	.loc 1 122 0
	mov.n	a13, a4
	movi	a12, 0x204
	add.n	a12, sp, a12
	addmi	a11, sp, 0x200
	movi.n	a10, 1
	call8	md4_vector
.LVL42:
	mov.n	a2, a10
.LVL43:
	retw.n
.LVL44:
.L19:
	.loc 1 118 0
	movi.n	a2, -1
.LVL45:
	.loc 1 123 0
	retw.n
.LFE36:
	.size	nt_password_hash, .-nt_password_hash
	.section	.text.hash_nt_password_hash,"ax",@progbits
	.align	4
	.global	hash_nt_password_hash
	.type	hash_nt_password_hash, @function
hash_nt_password_hash:
.LFB37:
	.loc 1 133 0
.LVL46:
	entry	sp, 64
.LCFI3:
	s32i.n	a2, sp, 16
	.loc 1 134 0
	movi.n	a8, 0x10
	s32i.n	a8, sp, 0
	.loc 1 135 0
	mov.n	a13, a3
	mov.n	a12, sp
	add.n	a11, sp, a8
	movi.n	a10, 1
	call8	md4_vector
.LVL47:
	.loc 1 136 0
	mov.n	a2, a10
.LVL48:
	retw.n
.LFE37:
	.size	hash_nt_password_hash, .-hash_nt_password_hash
	.section	.text.challenge_response,"ax",@progbits
	.align	4
	.global	challenge_response
	.type	challenge_response, @function
challenge_response:
.LFB38:
	.loc 1 147 0
.LVL49:
	entry	sp, 48
.LCFI4:
	.loc 1 149 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	des_encrypt
.LVL50:
	.loc 1 150 0
	addi.n	a12, a4, 8
	addi.n	a11, a3, 7
	mov.n	a10, a2
	call8	des_encrypt
.LVL51:
	.loc 1 151 0
	l8ui	a8, a3, 14
	s8i	a8, sp, 0
	.loc 1 152 0
	l8ui	a3, a3, 15
.LVL52:
	s8i	a3, sp, 1
	.loc 1 153 0
	movi.n	a3, 0
	s16i	a3, sp, 2
	s16i	a3, sp, 4
	s8i	a3, sp, 6
	.loc 1 154 0
	addi	a12, a4, 16
	mov.n	a11, sp
	mov.n	a10, a2
	call8	des_encrypt
.LVL53:
	retw.n
.LFE38:
	.size	challenge_response, .-challenge_response
	.section	.text.generate_nt_response,"ax",@progbits
	.align	4
	.global	generate_nt_response
	.type	generate_nt_response, @function
generate_nt_response:
.LFB39:
	.loc 1 173 0
.LVL54:
	entry	sp, 64
.LCFI5:
	.loc 1 177 0
	mov.n	a14, sp
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a2
	mov.n	a10, a3
	call8	challenge_hash
.LVL55:
	bnez.n	a10, .L24
	.loc 1 180 0
	addi.n	a12, sp, 8
	mov.n	a11, a7
	mov.n	a10, a6
	call8	nt_password_hash
.LVL56:
	mov.n	a2, a10
.LVL57:
	bnez.n	a10, .L25
	.loc 1 182 0
	l32i	a12, sp, 64
	addi.n	a11, sp, 8
	mov.n	a10, sp
	call8	challenge_response
.LVL58:
	.loc 1 183 0
	retw.n
.LVL59:
.L24:
	.loc 1 179 0
	movi.n	a2, -1
.LVL60:
	retw.n
.L25:
	.loc 1 181 0
	movi.n	a2, -1
	.loc 1 184 0
	retw.n
.LFE39:
	.size	generate_nt_response, .-generate_nt_response
	.section	.text.generate_nt_response_pwhash,"ax",@progbits
	.align	4
	.global	generate_nt_response_pwhash
	.type	generate_nt_response_pwhash, @function
generate_nt_response_pwhash:
.LFB40:
	.loc 1 202 0
.LVL61:
	entry	sp, 48
.LCFI6:
	.loc 1 205 0
	mov.n	a14, sp
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a2
	mov.n	a10, a3
	call8	challenge_hash
.LVL62:
	mov.n	a2, a10
.LVL63:
	bnez.n	a10, .L28
	.loc 1 209 0
	mov.n	a12, a7
	mov.n	a11, a6
	mov.n	a10, sp
	call8	challenge_response
.LVL64:
	.loc 1 210 0
	retw.n
.L28:
	.loc 1 208 0
	movi.n	a2, -1
	.loc 1 211 0
	retw.n
.LFE40:
	.size	generate_nt_response_pwhash, .-generate_nt_response_pwhash
	.section	.rodata
	.align	4
.LC0:
	.word	16
	.word	24
	.word	39
	.align	4
.LC1:
	.word	20
	.word	8
	.word	41
	.section	.text.generate_authenticator_response_pwhash,"ax",@progbits
	.literal_position
	.literal .LC4, .LC0
	.literal .LC5, .LC1
	.literal .LC6, magic1$3986
	.literal .LC7, magic2$3987
	.align	4
	.global	generate_authenticator_response_pwhash
	.type	generate_authenticator_response_pwhash, @function
generate_authenticator_response_pwhash:
.LFB41:
	.loc 1 231 0
.LVL65:
	entry	sp, 112
.LCFI7:
	mov.n	a9, a7
	l32i	a7, sp, 112
.LVL66:
	.loc 1 248 0
	l32r	a8, .LC4
	l32i.n	a11, a8, 0
	l32i.n	a10, a8, 4
	s32i.n	a11, sp, 36
	l32i.n	a8, a8, 8
	s32i.n	a10, sp, 40
	s32i.n	a8, sp, 44
	.loc 1 250 0
	l32r	a8, .LC5
	l32i.n	a11, a8, 0
	l32i.n	a10, a8, 4
	s32i.n	a11, sp, 60
	l32i.n	a8, a8, 8
	s32i	a10, sp, 64
	s32i	a8, sp, 68
	.loc 1 252 0
	s32i.n	sp, sp, 24
	.loc 1 253 0
	s32i.n	a9, sp, 28
	.loc 1 254 0
	l32r	a8, .LC6
	s32i.n	a8, sp, 32
	.loc 1 256 0
	s32i.n	a7, sp, 48
	.loc 1 257 0
	addi	a8, sp, 16
	s32i.n	a8, sp, 52
	.loc 1 258 0
	l32r	a8, .LC7
	s32i.n	a8, sp, 56
	.loc 1 260 0
	mov.n	a11, sp
	mov.n	a10, a2
	call8	hash_nt_password_hash
.LVL67:
	bnez.n	a10, .L31
	.loc 1 262 0
	mov.n	a13, a7
	addi	a12, sp, 36
	addi	a11, sp, 24
	movi.n	a10, 3
	call8	sha1_vector
.LVL68:
	bnez.n	a10, .L32
	.loc 1 265 0
	addi	a14, sp, 16
	mov.n	a13, a6
	mov.n	a12, a5
	mov.n	a11, a4
	mov.n	a10, a3
	call8	challenge_hash
.LVL69:
	bnez.n	a10, .L33
	.loc 1 268 0
	mov.n	a13, a7
	addi	a12, sp, 60
	addi	a11, sp, 48
	movi.n	a10, 3
	call8	sha1_vector
.LVL70:
	mov.n	a2, a10
.LVL71:
	retw.n
.LVL72:
.L31:
	.loc 1 261 0
	movi.n	a2, -1
.LVL73:
	retw.n
.LVL74:
.L32:
	.loc 1 263 0
	movi.n	a2, -1
.LVL75:
	retw.n
.LVL76:
.L33:
	.loc 1 267 0
	movi.n	a2, -1
.LVL77:
	.loc 1 269 0
	retw.n
.LFE41:
	.size	generate_authenticator_response_pwhash, .-generate_authenticator_response_pwhash
	.section	.text.generate_authenticator_response,"ax",@progbits
	.align	4
	.global	generate_authenticator_response
	.type	generate_authenticator_response, @function
generate_authenticator_response:
.LFB42:
	.loc 1 290 0
.LVL78:
	entry	sp, 64
.LCFI8:
	.loc 1 292 0
	addi	a12, sp, 16
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nt_password_hash
.LVL79:
	bnez.n	a10, .L36
	.loc 1 294 0
	l32i	a2, sp, 68
.LVL80:
	s32i.n	a2, sp, 0
	l32i	a15, sp, 64
	mov.n	a14, a7
	mov.n	a13, a6
	mov.n	a12, a5
	mov.n	a11, a4
	addi	a10, sp, 16
	call8	generate_authenticator_response_pwhash
.LVL81:
	mov.n	a2, a10
	retw.n
.LVL82:
.L36:
	.loc 1 293 0
	movi.n	a2, -1
.LVL83:
	.loc 1 297 0
	retw.n
.LFE42:
	.size	generate_authenticator_response, .-generate_authenticator_response
	.section	.text.nt_challenge_response,"ax",@progbits
	.align	4
	.global	nt_challenge_response
	.type	nt_challenge_response, @function
nt_challenge_response:
.LFB43:
	.loc 1 310 0
.LVL84:
	entry	sp, 48
.LCFI9:
	mov.n	a6, a2
	.loc 1 312 0
	mov.n	a12, sp
	mov.n	a11, a4
	mov.n	a10, a3
	call8	nt_password_hash
.LVL85:
	mov.n	a2, a10
.LVL86:
	bnez.n	a10, .L39
	.loc 1 314 0
	mov.n	a12, a5
	mov.n	a11, sp
	mov.n	a10, a6
	call8	challenge_response
.LVL87:
	.loc 1 315 0
	retw.n
.L39:
	.loc 1 313 0
	movi.n	a2, -1
	.loc 1 316 0
	retw.n
.LFE43:
	.size	nt_challenge_response, .-nt_challenge_response
	.section	.rodata
	.align	4
.LC2:
	.word	16
	.word	24
	.word	27
	.section	.text.get_master_key,"ax",@progbits
	.literal_position
	.literal .LC8, .LC2
	.literal .LC9, magic1$4017
	.align	4
	.global	get_master_key
	.type	get_master_key, @function
get_master_key:
.LFB44:
	.loc 1 328 0
.LVL88:
	entry	sp, 80
.LCFI10:
	.loc 1 335 0
	l32r	a8, .LC8
	l32i.n	a10, a8, 0
	l32i.n	a9, a8, 4
	s32i.n	a10, sp, 12
	l32i.n	a8, a8, 8
	s32i.n	a9, sp, 16
	s32i.n	a8, sp, 20
	.loc 1 338 0
	s32i.n	a2, sp, 0
	.loc 1 339 0
	s32i.n	a3, sp, 4
	.loc 1 340 0
	l32r	a2, .LC9
.LVL89:
	s32i.n	a2, sp, 8
	.loc 1 342 0
	addi	a13, sp, 24
	addi.n	a12, sp, 12
	mov.n	a11, sp
.LVL90:
	movi.n	a10, 3
	call8	sha1_vector
.LVL91:
	mov.n	a2, a10
	bnez.n	a10, .L42
	.loc 1 344 0
	movi.n	a12, 0x10
	addi	a11, sp, 24
	mov.n	a10, a4
	call8	memcpy
.LVL92:
	.loc 1 345 0
	retw.n
.L42:
	.loc 1 343 0
	movi.n	a2, -1
	.loc 1 346 0
	retw.n
.LFE44:
	.size	get_master_key, .-get_master_key
	.section	.rodata
	.align	4
.LC3:
	.word	16
	.word	40
	.word	84
	.word	40
	.section	.text.get_asymetric_start_key,"ax",@progbits
	.literal_position
	.literal .LC10, magic3$4029
	.literal .LC11, magic2$4028
	.literal .LC12, .LC3
	.literal .LC13, shs_pad1$4030
	.literal .LC14, shs_pad2$4031
	.align	4
	.global	get_asymetric_start_key
	.type	get_asymetric_start_key, @function
get_asymetric_start_key:
.LFB45:
	.loc 1 361 0
.LVL93:
	entry	sp, 96
.LCFI11:
	.loc 1 399 0
	l32r	a8, .LC12
	l32i.n	a9, a8, 0
	l32i.n	a10, a8, 4
	s32i.n	a9, sp, 36
	l32i.n	a9, a8, 8
	s32i.n	a10, sp, 40
	l32i.n	a8, a8, 12
	s32i.n	a9, sp, 44
	s32i.n	a8, sp, 48
	.loc 1 401 0
	s32i.n	a2, sp, 20
	.loc 1 402 0
	l32r	a2, .LC13
.LVL94:
	s32i.n	a2, sp, 24
	.loc 1 403 0
	beqz.n	a5, .L44
	.loc 1 404 0
	beqz.n	a6, .L50
	l32r	a2, .LC10
	j	.L45
.L50:
	l32r	a2, .LC11
.L45:
	.loc 1 404 0 is_stmt 0 discriminator 4
	s32i.n	a2, sp, 28
	j	.L46
.L44:
	.loc 1 406 0 is_stmt 1
	beqz.n	a6, .L51
	l32r	a2, .LC11
	j	.L47
.L51:
	l32r	a2, .LC10
.L47:
	.loc 1 406 0 is_stmt 0 discriminator 4
	s32i.n	a2, sp, 28
.L46:
	.loc 1 408 0 is_stmt 1
	l32r	a2, .LC14
	s32i.n	a2, sp, 32
	.loc 1 410 0
	mov.n	a13, sp
	addi	a12, sp, 36
	addi	a11, sp, 20
.LVL95:
	movi.n	a10, 4
	call8	sha1_vector
.LVL96:
	mov.n	a2, a10
	bnez.n	a10, .L52
	.loc 1 413 0
	movi.n	a6, 0x14
.LVL97:
	bgeu	a6, a4, .L49
	.loc 1 414 0
	mov.n	a4, a6
.LVL98:
.L49:
	.loc 1 415 0
	mov.n	a12, a4
	mov.n	a11, sp
	mov.n	a10, a3
	call8	memcpy
.LVL99:
	.loc 1 416 0
	retw.n
.LVL100:
.L52:
	.loc 1 411 0
	movi.n	a2, -1
	.loc 1 417 0
	retw.n
.LFE45:
	.size	get_asymetric_start_key, .-get_asymetric_start_key
	.section	.text.encrypt_pw_block_with_password_hash,"ax",@progbits
	.align	4
	.global	encrypt_pw_block_with_password_hash
	.type	encrypt_pw_block_with_password_hash, @function
encrypt_pw_block_with_password_hash:
.LFB46:
	.loc 1 433 0
.LVL101:
	entry	sp, 48
.LCFI12:
	.loc 1 437 0
	movi	a12, 0x204
	movi.n	a11, 0
	mov.n	a10, a5
	call8	memset
.LVL102:
	.loc 1 439 0
	mov.n	a14, sp
	movi	a13, 0x200
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	utf8_to_ucs2
.LVL103:
	bltz	a10, .L57
	.loc 1 442 0
	l32i.n	a12, sp, 0
	movi	a2, 0x100
.LVL104:
	bltu	a2, a12, .L58
	.loc 1 445 0
	slli	a2, a12, 31
	sub	a2, a2, a12
	slli	a11, a2, 1
	addmi	a2, a11, 0x200
.LVL105:
	.loc 1 446 0
	beqz.n	a2, .L56
	.loc 1 447 0
	slli	a12, a12, 1
	mov.n	a11, a5
	add.n	a10, a5, a2
	call8	memmove
.LVL106:
	.loc 1 448 0
	mov.n	a11, a2
	mov.n	a10, a5
	call8	os_get_random
.LVL107:
	bltz	a10, .L59
.L56:
.LVL108:
	.loc 1 456 0
	addmi	a2, a5, 0x200
.LVL109:
	extui	a8, a3, 7, 8
	s8i	a8, a2, 1
	slli	a3, a3, 1
.LVL110:
	s8i	a3, a2, 0
	.loc 1 457 0
	movi	a14, 0x204
	mov.n	a13, a5
	movi.n	a12, 0
	movi.n	a11, 0x10
	mov.n	a10, a4
	call8	rc4_skip
.LVL111:
	.loc 1 458 0
	movi.n	a2, 0
.LVL112:
	retw.n
.LVL113:
.L57:
	.loc 1 440 0
	movi.n	a2, -1
.LVL114:
	retw.n
.L58:
	.loc 1 443 0
	movi.n	a2, -1
	retw.n
.LVL115:
.L59:
	.loc 1 449 0
	movi.n	a2, -1
.LVL116:
	.loc 1 459 0
	retw.n
.LFE46:
	.size	encrypt_pw_block_with_password_hash, .-encrypt_pw_block_with_password_hash
	.section	.text.new_password_encrypted_with_old_nt_password_hash,"ax",@progbits
	.align	4
	.global	new_password_encrypted_with_old_nt_password_hash
	.type	new_password_encrypted_with_old_nt_password_hash, @function
new_password_encrypted_with_old_nt_password_hash:
.LFB47:
	.loc 1 475 0
.LVL117:
	entry	sp, 48
.LCFI13:
	.loc 1 478 0
	mov.n	a12, sp
	mov.n	a11, a5
	mov.n	a10, a4
	call8	nt_password_hash
.LVL118:
	bnez.n	a10, .L62
	.loc 1 480 0
	mov.n	a13, a6
	mov.n	a12, sp
	mov.n	a11, a3
	mov.n	a10, a2
	call8	encrypt_pw_block_with_password_hash
.LVL119:
	mov.n	a2, a10
.LVL120:
	beqz.n	a10, .L61
	.loc 1 483 0
	movi.n	a2, -1
	retw.n
.LVL121:
.L62:
	.loc 1 479 0
	movi.n	a2, -1
.LVL122:
.L61:
	.loc 1 485 0
	retw.n
.LFE47:
	.size	new_password_encrypted_with_old_nt_password_hash, .-new_password_encrypted_with_old_nt_password_hash
	.section	.text.nt_password_hash_encrypted_with_block,"ax",@progbits
	.align	4
	.global	nt_password_hash_encrypted_with_block
	.type	nt_password_hash_encrypted_with_block, @function
nt_password_hash_encrypted_with_block:
.LFB48:
	.loc 1 496 0
.LVL123:
	entry	sp, 32
.LCFI14:
	.loc 1 497 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	des_encrypt
.LVL124:
	.loc 1 498 0
	addi.n	a12, a4, 8
	addi.n	a11, a3, 7
	addi.n	a10, a2, 8
	call8	des_encrypt
.LVL125:
	retw.n
.LFE48:
	.size	nt_password_hash_encrypted_with_block, .-nt_password_hash_encrypted_with_block
	.section	.text.old_nt_password_hash_encrypted_with_new_nt_password_hash,"ax",@progbits
	.align	4
	.global	old_nt_password_hash_encrypted_with_new_nt_password_hash
	.type	old_nt_password_hash_encrypted_with_new_nt_password_hash, @function
old_nt_password_hash_encrypted_with_new_nt_password_hash:
.LFB49:
	.loc 1 515 0
.LVL126:
	entry	sp, 64
.LCFI15:
	.loc 1 518 0
	mov.n	a12, sp
	mov.n	a11, a5
	mov.n	a10, a4
	call8	nt_password_hash
.LVL127:
	bnez.n	a10, .L66
	.loc 1 520 0
	addi	a12, sp, 16
	mov.n	a11, a3
	mov.n	a10, a2
	call8	nt_password_hash
.LVL128:
	mov.n	a2, a10
.LVL129:
	.loc 1 519 0
	bnez.n	a10, .L67
	.loc 1 523 0
	mov.n	a12, a6
	addi	a11, sp, 16
	mov.n	a10, sp
	call8	nt_password_hash_encrypted_with_block
.LVL130:
	.loc 1 526 0
	retw.n
.LVL131:
.L66:
	.loc 1 522 0
	movi.n	a2, -1
.LVL132:
	retw.n
.L67:
	movi.n	a2, -1
	.loc 1 527 0
	retw.n
.LFE49:
	.size	old_nt_password_hash_encrypted_with_new_nt_password_hash, .-old_nt_password_hash_encrypted_with_new_nt_password_hash
	.section	.rodata.shs_pad2$4031,"a",@progbits
	.align	4
	.type	shs_pad2$4031, @object
	.size	shs_pad2$4031, 40
shs_pad2$4031:
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.byte	-14
	.section	.rodata.magic2$4028,"a",@progbits
	.align	4
	.type	magic2$4028, @object
	.size	magic2$4028, 84
magic2$4028:
	.byte	79
	.byte	110
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	99
	.byte	108
	.byte	105
	.byte	101
	.byte	110
	.byte	116
	.byte	32
	.byte	115
	.byte	105
	.byte	100
	.byte	101
	.byte	44
	.byte	32
	.byte	116
	.byte	104
	.byte	105
	.byte	115
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	115
	.byte	101
	.byte	110
	.byte	100
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	59
	.byte	32
	.byte	111
	.byte	110
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	115
	.byte	101
	.byte	114
	.byte	118
	.byte	101
	.byte	114
	.byte	32
	.byte	115
	.byte	105
	.byte	100
	.byte	101
	.byte	44
	.byte	32
	.byte	105
	.byte	116
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	114
	.byte	101
	.byte	99
	.byte	101
	.byte	105
	.byte	118
	.byte	101
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	46
	.section	.rodata.magic3$4029,"a",@progbits
	.align	4
	.type	magic3$4029, @object
	.size	magic3$4029, 84
magic3$4029:
	.byte	79
	.byte	110
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	99
	.byte	108
	.byte	105
	.byte	101
	.byte	110
	.byte	116
	.byte	32
	.byte	115
	.byte	105
	.byte	100
	.byte	101
	.byte	44
	.byte	32
	.byte	116
	.byte	104
	.byte	105
	.byte	115
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	114
	.byte	101
	.byte	99
	.byte	101
	.byte	105
	.byte	118
	.byte	101
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	59
	.byte	32
	.byte	111
	.byte	110
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	115
	.byte	101
	.byte	114
	.byte	118
	.byte	101
	.byte	114
	.byte	32
	.byte	115
	.byte	105
	.byte	100
	.byte	101
	.byte	44
	.byte	32
	.byte	105
	.byte	116
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	115
	.byte	101
	.byte	110
	.byte	100
	.byte	32
	.byte	107
	.byte	101
	.byte	121
	.byte	46
	.section	.rodata.shs_pad1$4030,"a",@progbits
	.align	4
	.type	shs_pad1$4030, @object
	.size	shs_pad1$4030, 40
shs_pad1$4030:
	.zero	40
	.section	.rodata.magic1$4017,"a",@progbits
	.align	4
	.type	magic1$4017, @object
	.size	magic1$4017, 27
magic1$4017:
	.byte	84
	.byte	104
	.byte	105
	.byte	115
	.byte	32
	.byte	105
	.byte	115
	.byte	32
	.byte	116
	.byte	104
	.byte	101
	.byte	32
	.byte	77
	.byte	80
	.byte	80
	.byte	69
	.byte	32
	.byte	77
	.byte	97
	.byte	115
	.byte	116
	.byte	101
	.byte	114
	.byte	32
	.byte	75
	.byte	101
	.byte	121
	.section	.rodata.magic2$3987,"a",@progbits
	.align	4
	.type	magic2$3987, @object
	.size	magic2$3987, 41
magic2$3987:
	.byte	80
	.byte	97
	.byte	100
	.byte	32
	.byte	116
	.byte	111
	.byte	32
	.byte	109
	.byte	97
	.byte	107
	.byte	101
	.byte	32
	.byte	105
	.byte	116
	.byte	32
	.byte	100
	.byte	111
	.byte	32
	.byte	109
	.byte	111
	.byte	114
	.byte	101
	.byte	32
	.byte	116
	.byte	104
	.byte	97
	.byte	110
	.byte	32
	.byte	111
	.byte	110
	.byte	101
	.byte	32
	.byte	105
	.byte	116
	.byte	101
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.section	.rodata.magic1$3986,"a",@progbits
	.align	4
	.type	magic1$3986, @object
	.size	magic1$3986, 39
magic1$3986:
	.byte	77
	.byte	97
	.byte	103
	.byte	105
	.byte	99
	.byte	32
	.byte	115
	.byte	101
	.byte	114
	.byte	118
	.byte	101
	.byte	114
	.byte	32
	.byte	116
	.byte	111
	.byte	32
	.byte	99
	.byte	108
	.byte	105
	.byte	101
	.byte	110
	.byte	116
	.byte	32
	.byte	115
	.byte	105
	.byte	103
	.byte	110
	.byte	105
	.byte	110
	.byte	103
	.byte	32
	.byte	99
	.byte	111
	.byte	110
	.byte	115
	.byte	116
	.byte	97
	.byte	110
	.byte	116
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
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI0-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI1-.LFB35
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI2-.LFB36
	.byte	0xe
	.uleb128 0x230
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI3-.LFB37
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI4-.LFB38
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI5-.LFB39
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI6-.LFB40
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI7-.LFB41
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI8-.LFB42
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI9-.LFB43
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI10-.LFB44
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI11-.LFB45
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI12-.LFB46
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI13-.LFB47
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI14-.LFB48
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI15-.LFB49
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE30:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/wpa/common.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/include/crypto/crypto.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/port/include/os.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xfab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.4byte	.LASF89
	.4byte	.LASF90
	.4byte	.Ldebug_ranges0+0x30
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0xd8
	.4byte	0x5e
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x15
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x21
	.4byte	0x45
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x5
	.string	"u16"
	.byte	0x5
	.byte	0x1b
	.4byte	0x89
	.uleb128 0x5
	.string	"u8"
	.byte	0x5
	.byte	0x1c
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1a
	.4byte	0x57
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x181
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1a
	.4byte	0x181
	.4byte	.LLST0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1a
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1b
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1b
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1c
	.4byte	0x18c
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x1e
	.4byte	0x73
	.4byte	.LLST1
	.uleb128 0xa
	.string	"j"
	.byte	0x1
	.byte	0x1e
	.4byte	0x73
	.4byte	.LLST2
	.uleb128 0xb
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xa
	.string	"c"
	.byte	0x1
	.byte	0x21
	.4byte	0xbb
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0xa
	.string	"c2"
	.byte	0x1
	.byte	0x2e
	.4byte	0xbb
	.4byte	.LLST4
	.uleb128 0xc
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0xa
	.string	"c3"
	.byte	0x1
	.byte	0x3a
	.4byte	0xbb
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x187
	.uleb128 0xd
	.4byte	0xbb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x73
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x51
	.4byte	0x57
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25c
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x51
	.4byte	0x181
	.4byte	.LLST6
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x51
	.4byte	0x181
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x52
	.4byte	0x181
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x52
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x53
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x55
	.4byte	0x25c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x56
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x57
	.4byte	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LVL37
	.4byte	0xf59
	.4byte	0x23f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x12
	.4byte	.LVL38
	.4byte	0xf64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xbb
	.4byte	0x26c
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.4byte	0x27c
	.4byte	0x27c
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x282
	.uleb128 0xd
	.4byte	0x37
	.uleb128 0x13
	.4byte	0x73
	.4byte	0x297
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6e
	.4byte	0x57
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x361
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6e
	.4byte	0x181
	.4byte	.LLST7
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x6e
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6f
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.byte	0x71
	.4byte	0x361
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.byte	0x71
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x72
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x72
	.4byte	0x73
	.2byte	0x200
	.uleb128 0x10
	.4byte	.LVL41
	.4byte	0xcb
	.4byte	0x33f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x12
	.4byte	.LVL42
	.4byte	0xf6d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xbb
	.4byte	0x372
	.uleb128 0x17
	.4byte	0x9b
	.2byte	0x1ff
	.byte	0
	.uleb128 0x15
	.4byte	.LASF35
	.byte	0x1
	.byte	0x84
	.4byte	0x57
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d7
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.byte	0x84
	.4byte	0x181
	.4byte	.LLST8
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x84
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x86
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.4byte	.LVL47
	.4byte	0xf6d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x1
	.byte	0x91
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x480
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x91
	.4byte	0x181
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.byte	0x91
	.4byte	0x181
	.4byte	.LLST9
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.byte	0x92
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x94
	.4byte	0x480
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LVL50
	.4byte	0xf78
	.4byte	0x443
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL51
	.4byte	0xf78
	.4byte	0x463
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x12
	.4byte	.LVL53
	.4byte	0xf78
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xbb
	.4byte	0x490
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x1
	.byte	0xa9
	.4byte	0x57
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x58d
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa9
	.4byte	0x181
	.4byte	.LLST10
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa9
	.4byte	0x181
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0xaa
	.4byte	0x181
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0xaa
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0xab
	.4byte	0x181
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0xab
	.4byte	0x73
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.byte	0xac
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0xae
	.4byte	0x58d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0xaf
	.4byte	0x59d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.4byte	.LVL55
	.4byte	0x192
	.4byte	0x54f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x10
	.4byte	.LVL56
	.4byte	0x297
	.4byte	0x56f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x12
	.4byte	.LVL58
	.4byte	0x3d7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xbb
	.4byte	0x59d
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.4byte	0xbb
	.4byte	0x5ad
	.uleb128 0x14
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x1
	.byte	0xc5
	.4byte	0x57
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66d
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x1
	.byte	0xc5
	.4byte	0x181
	.4byte	.LLST11
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0xc6
	.4byte	0x181
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0xc7
	.4byte	0x181
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc7
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc8
	.4byte	0x181
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc9
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0xcb
	.4byte	0x58d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LVL62
	.4byte	0x192
	.4byte	0x650
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.4byte	.LVL64
	.4byte	0x3d7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe2
	.4byte	0x57
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f3
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x1
	.byte	0xe3
	.4byte	0x181
	.4byte	.LLST12
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe4
	.4byte	0x181
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe4
	.4byte	0x181
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0xe5
	.4byte	0x181
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0xe5
	.4byte	0x73
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x1
	.byte	0xe6
	.4byte	0x181
	.4byte	.LLST13
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.byte	0xe6
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.byte	0xe8
	.4byte	0x803
	.uleb128 0x5
	.byte	0x3
	.4byte	magic1$3986
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x1
	.byte	0xee
	.4byte	0x818
	.uleb128 0x5
	.byte	0x3
	.4byte	magic2$3987
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0xf6
	.4byte	0x59d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0xf6
	.4byte	0x58d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0xf7
	.4byte	0x26c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf8
	.4byte	0x81d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x1
	.byte	0xf9
	.4byte	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x1
	.byte	0xfa
	.4byte	0x822
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.4byte	.LVL67
	.4byte	0x372
	.4byte	0x77b
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x10
	.4byte	.LVL68
	.4byte	0xf59
	.4byte	0x7a3
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x10
	.4byte	.LVL69
	.4byte	0x192
	.4byte	0x7d0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x12
	.4byte	.LVL70
	.4byte	0xf59
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xbb
	.4byte	0x803
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x26
	.byte	0
	.uleb128 0xd
	.4byte	0x7f3
	.uleb128 0x13
	.4byte	0xbb
	.4byte	0x818
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.4byte	0x808
	.uleb128 0xd
	.4byte	0x287
	.uleb128 0xd
	.4byte	0x287
	.uleb128 0x19
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x11d
	.4byte	0x57
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x91b
	.uleb128 0x1a
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x11d
	.4byte	0x181
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x11d
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x11e
	.4byte	0x181
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x11f
	.4byte	0x181
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x120
	.4byte	0x181
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x120
	.4byte	0x73
	.uleb128 0x1
	.byte	0x57
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x121
	.4byte	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x121
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x123
	.4byte	0x59d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LVL79
	.4byte	0x297
	.4byte	0x8e4
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.4byte	.LVL81
	.4byte	0x66d
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x134
	.4byte	0x57
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bb
	.uleb128 0x1a
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x134
	.4byte	0x181
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x134
	.4byte	0x181
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x135
	.4byte	0x73
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x135
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x137
	.4byte	0x59d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LVL85
	.4byte	0x297
	.4byte	0x99e
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.4byte	.LVL87
	.4byte	0x3d7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x146
	.4byte	0x57
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa85
	.uleb128 0x1a
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x146
	.4byte	0x181
	.4byte	.LLST16
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x146
	.4byte	0x181
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x147
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x149
	.4byte	0xa95
	.uleb128 0x5
	.byte	0x3
	.4byte	magic1$4017
	.uleb128 0x1c
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x14e
	.4byte	0x26c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.2byte	0x14f
	.4byte	0xa9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x150
	.4byte	0x25c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.4byte	.LVL91
	.4byte	0xf59
	.4byte	0xa69
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x12
	.4byte	.LVL92
	.4byte	0xf64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xbb
	.4byte	0xa95
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.4byte	0xa85
	.uleb128 0xd
	.4byte	0x287
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x166
	.4byte	0x57
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc1
	.uleb128 0x1a
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x166
	.4byte	0x181
	.4byte	.LLST17
	.uleb128 0x1b
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x166
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1a
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x167
	.4byte	0x73
	.4byte	.LLST18
	.uleb128 0x1b
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x167
	.4byte	0x57
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x168
	.4byte	0x57
	.4byte	.LLST19
	.uleb128 0x1c
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x16a
	.4byte	0xbd1
	.uleb128 0x5
	.byte	0x3
	.4byte	magic2$4028
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x175
	.4byte	0xbd6
	.uleb128 0x5
	.byte	0x3
	.4byte	magic3$4029
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x180
	.4byte	0xbeb
	.uleb128 0x5
	.byte	0x3
	.4byte	shs_pad1$4030
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x187
	.4byte	0xbf0
	.uleb128 0x5
	.byte	0x3
	.4byte	shs_pad2$4031
	.uleb128 0x1c
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x18d
	.4byte	0x25c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x18e
	.4byte	0xbf5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.2byte	0x18f
	.4byte	0xc15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.4byte	.LVL96
	.4byte	0xf59
	.4byte	0xba3
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x12
	.4byte	.LVL99
	.4byte	0xf64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0xbb
	.4byte	0xbd1
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x53
	.byte	0
	.uleb128 0xd
	.4byte	0xbc1
	.uleb128 0xd
	.4byte	0xbc1
	.uleb128 0x13
	.4byte	0xbb
	.4byte	0xbeb
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x27
	.byte	0
	.uleb128 0xd
	.4byte	0xbdb
	.uleb128 0xd
	.4byte	0xbdb
	.uleb128 0x13
	.4byte	0x27c
	.4byte	0xc05
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.4byte	0x73
	.4byte	0xc15
	.uleb128 0x14
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	0xc05
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1ae
	.4byte	0x57
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4b
	.uleb128 0x1a
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1af
	.4byte	0x181
	.4byte	.LLST20
	.uleb128 0x1a
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1af
	.4byte	0x73
	.4byte	.LLST21
	.uleb128 0x1b
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x181
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1b0
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x73
	.4byte	.LLST22
	.uleb128 0x1f
	.string	"pos"
	.byte	0x1
	.2byte	0x1b3
	.4byte	0xc5
	.4byte	.LLST23
	.uleb128 0x10
	.4byte	.LVL102
	.4byte	0xf83
	.4byte	0xcbf
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x204
	.byte	0
	.uleb128 0x10
	.4byte	.LVL103
	.4byte	0xcb
	.4byte	0xcec
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x10
	.4byte	.LVL106
	.4byte	0xf8c
	.4byte	0xd09
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL107
	.4byte	0xf97
	.4byte	0xd23
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL111
	.4byte	0xfa2
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0xa
	.2byte	0x204
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x57
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdff
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x181
	.4byte	.LLST24
	.uleb128 0x1b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x181
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1da
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1c
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x59d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LVL118
	.4byte	0x297
	.4byte	0xddc
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.4byte	.LVL119
	.4byte	0xc1a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1ee
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7c
	.uleb128 0x1b
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x181
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1b
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x181
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1ef
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LVL124
	.4byte	0xf78
	.4byte	0xe5f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL125
	.4byte	0xf78
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 7
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x57
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf59
	.uleb128 0x1a
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x200
	.4byte	0x181
	.4byte	.LLST25
	.uleb128 0x1b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x200
	.4byte	0x73
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x201
	.4byte	0x181
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x201
	.4byte	0x73
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x202
	.4byte	0xc5
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x204
	.4byte	0x59d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x204
	.4byte	0x59d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LVL127
	.4byte	0x297
	.4byte	0xf1c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x10
	.4byte	.LVL128
	.4byte	0x297
	.4byte	0xf3c
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x12
	.4byte	.LVL130
	.4byte	0xdff
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x6
	.byte	0x4c
	.uleb128 0x22
	.4byte	.LASF83
	.4byte	.LASF83
	.uleb128 0x21
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x6
	.byte	0x28
	.uleb128 0x21
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x6
	.byte	0x7a
	.uleb128 0x22
	.4byte	.LASF84
	.4byte	.LASF84
	.uleb128 0x21
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x7
	.byte	0x18
	.uleb128 0x21
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x8
	.byte	0x63
	.uleb128 0x23
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x25e
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
	.uleb128 0x16
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
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
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL14
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL32
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x7d
	.sleb128 0
	.byte	0x22
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x7c
	.sleb128 0
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL37-1
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL60
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL65
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
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL67-1
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL83
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL90
	.4byte	.LVL91-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL91-1
	.4byte	.LFE44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL96-1
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL93
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LFE45
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL104
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL101
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL105
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0x75
	.sleb128 512
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0x75
	.sleb128 512
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LFE47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL132
	.4byte	.LFE49
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF82:
	.string	"des_encrypt"
.LASF27:
	.string	"challenge"
.LASF45:
	.string	"addr1"
.LASF47:
	.string	"addr2"
.LASF33:
	.string	"max_len"
.LASF79:
	.string	"new_password_hash"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF13:
	.string	"sizetype"
.LASF70:
	.string	"old_password_len"
.LASF18:
	.string	"ucs2_buffer"
.LASF32:
	.string	"password_hash"
.LASF30:
	.string	"password"
.LASF4:
	.string	"__uint16_t"
.LASF83:
	.string	"memcpy"
.LASF50:
	.string	"nt_challenge_response"
.LASF54:
	.string	"session_key"
.LASF10:
	.string	"uint8_t"
.LASF23:
	.string	"peer_challenge"
.LASF35:
	.string	"hash_nt_password_hash"
.LASF69:
	.string	"old_password"
.LASF55:
	.string	"session_key_len"
.LASF72:
	.string	"challenge_response"
.LASF20:
	.string	"ucs2_string_size"
.LASF7:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF59:
	.string	"shs_pad1"
.LASF60:
	.string	"shs_pad2"
.LASF84:
	.string	"memset"
.LASF90:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\wpa_supplicant"
.LASF12:
	.string	"long int"
.LASF77:
	.string	"encrypted_password_hash"
.LASF71:
	.string	"encrypted_pw_block"
.LASF43:
	.string	"magic1"
.LASF89:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/wpa_supplicant/src/crypto/ms_funcs.c"
.LASF57:
	.string	"is_server"
.LASF3:
	.string	"__uint8_t"
.LASF74:
	.string	"block"
.LASF25:
	.string	"username"
.LASF53:
	.string	"get_asymetric_start_key"
.LASF19:
	.string	"ucs2_buffer_size"
.LASF21:
	.string	"utf8_to_ucs2"
.LASF85:
	.string	"memmove"
.LASF1:
	.string	"unsigned char"
.LASF31:
	.string	"password_len"
.LASF68:
	.string	"new_password_len"
.LASF51:
	.string	"get_master_key"
.LASF0:
	.string	"signed char"
.LASF46:
	.string	"len1"
.LASF48:
	.string	"len2"
.LASF6:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF14:
	.string	"long unsigned int"
.LASF17:
	.string	"utf8_string_len"
.LASF49:
	.string	"generate_authenticator_response"
.LASF80:
	.string	"sha1_vector"
.LASF5:
	.string	"short unsigned int"
.LASF65:
	.string	"offset"
.LASF61:
	.string	"digest"
.LASF62:
	.string	"encrypt_pw_block_with_password_hash"
.LASF42:
	.string	"nt_response"
.LASF15:
	.string	"char"
.LASF66:
	.string	"new_password_encrypted_with_old_nt_password_hash"
.LASF24:
	.string	"auth_challenge"
.LASF40:
	.string	"generate_nt_response_pwhash"
.LASF29:
	.string	"addr"
.LASF39:
	.string	"generate_nt_response"
.LASF36:
	.string	"password_hash_hash"
.LASF56:
	.string	"is_send"
.LASF41:
	.string	"generate_authenticator_response_pwhash"
.LASF44:
	.string	"magic2"
.LASF58:
	.string	"magic3"
.LASF34:
	.string	"nt_password_hash"
.LASF37:
	.string	"response"
.LASF64:
	.string	"ucs2_len"
.LASF75:
	.string	"cypher"
.LASF22:
	.string	"challenge_hash"
.LASF81:
	.string	"md4_vector"
.LASF76:
	.string	"old_nt_password_hash_encrypted_with_new_nt_password_hash"
.LASF73:
	.string	"nt_password_hash_encrypted_with_block"
.LASF63:
	.string	"pw_block"
.LASF87:
	.string	"rc4_skip"
.LASF78:
	.string	"old_password_hash"
.LASF86:
	.string	"os_get_random"
.LASF52:
	.string	"master_key"
.LASF16:
	.string	"utf8_string"
.LASF88:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF26:
	.string	"username_len"
.LASF67:
	.string	"new_password"
.LASF28:
	.string	"hash"
.LASF38:
	.string	"zpwd"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
