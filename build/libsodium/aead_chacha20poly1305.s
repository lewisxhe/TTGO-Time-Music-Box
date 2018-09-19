	.file	"aead_chacha20poly1305.c"
	.text
.Ltext0:
	.section	.text.crypto_aead_chacha20poly1305_encrypt_detached,"ax",@progbits
	.literal_position
	.literal .LC0, 64, 0
	.literal .LC1, 8, 0
	.literal .LC2, 1, 0
	.literal .LC3, 16, 0
	.align	4
	.global	crypto_aead_chacha20poly1305_encrypt_detached
	.type	crypto_aead_chacha20poly1305_encrypt_detached, @function
crypto_aead_chacha20poly1305_encrypt_detached:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c"
	.loc 1 29 0
.LVL0:
	entry	sp, 416
.LCFI0:
	s32i	a3, sp, 364
	s32i	a4, sp, 360
	s32i	a5, sp, 368
	l32i	a4, sp, 424
.LVL1:
	l32i	a5, sp, 428
.LVL2:
	.loc 1 35 0
	addi	a8, sp, 16
	addmi	a3, a8, 0x100
.LVL3:
	l32i	a15, sp, 440
	l32i	a14, sp, 436
	l32r	a12, .LC0
	l32r	a13, .LC0+4
	mov.n	a10, a3
	call8	crypto_stream_chacha20
.LVL4:
	.loc 1 36 0
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL5:
	.loc 1 37 0
	movi.n	a11, 0x40
	mov.n	a10, a3
	call8	sodium_memzero
.LVL6:
	.loc 1 39 0
	mov.n	a12, a4
	mov.n	a13, a5
	l32i	a11, sp, 416
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL7:
.LBB18:
.LBB19:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/private/common.h"
	.loc 2 64 0
	s32i	a4, sp, 352
	s32i	a5, sp, 356
	addi	a5, a3, 64
.LVL8:
	l32i	a8, a3, 84
	s32i	a4, a3, 64
	s32i	a8, a3, 68
.LBE19:
.LBE18:
	.loc 1 41 0
	movi	a4, 0x140
.LVL9:
	addi	a8, sp, 16
	add.n	a4, a8, a4
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	mov.n	a11, a4
	mov.n	a10, a8
	call8	crypto_onetimeauth_poly1305_update
.LVL10:
	.loc 1 43 0
	l32i	a8, sp, 440
	s32i.n	a8, sp, 8
	l32r	a8, .LC2
	l32r	a9, .LC2+4
	s32i.n	a8, sp, 0
	s32i.n	a9, sp, 4
	l32i	a14, sp, 436
	mov.n	a12, a6
	mov.n	a13, a7
	l32i	a11, sp, 368
	mov.n	a10, a2
	call8	crypto_stream_chacha20_xor_ic
.LVL11:
	.loc 1 45 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL12:
.LBB20:
.LBB21:
	.loc 2 64 0
	s32i	a6, sp, 352
	s32i	a7, sp, 356
	s32i	a6, a3, 64
	s32i	a7, a3, 68
.LBE21:
.LBE20:
	.loc 1 47 0
	l32r	a12, .LC1
	l32r	a13, .LC1+4
	mov.n	a11, a4
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL13:
	.loc 1 49 0
	l32i	a11, sp, 364
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL14:
	.loc 1 50 0
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL15:
	.loc 1 52 0
	l32i	a2, sp, 360
.LVL16:
	beqz.n	a2, .L2
	.loc 1 53 0
	l32r	a2, .LC3
	l32r	a3, .LC3+4
	l32i	a4, sp, 360
	s32i.n	a2, a4, 0
	s32i.n	a3, a4, 4
.L2:
	.loc 1 56 0
	movi.n	a2, 0
	retw.n
.LFE12:
	.size	crypto_aead_chacha20poly1305_encrypt_detached, .-crypto_aead_chacha20poly1305_encrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_encrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_aead_chacha20poly1305_encrypt
	.type	crypto_aead_chacha20poly1305_encrypt, @function
crypto_aead_chacha20poly1305_encrypt:
.LFB13:
	.loc 1 68 0
.LVL17:
	entry	sp, 64
.LCFI1:
	mov.n	a5, a6
.LVL18:
	.loc 1 72 0
	bnei	a7, -1, .L4
	movi.n	a8, -0x11
	bgeu	a8, a6, .L4
	.loc 1 73 0
	call8	abort
.LVL19:
.L4:
	.loc 1 75 0
	l32i	a8, sp, 88
	s32i.n	a8, sp, 24
	l32i	a8, sp, 84
	s32i.n	a8, sp, 20
	l32i	a8, sp, 80
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	l32i	a9, sp, 76
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 12
	l32i	a8, sp, 64
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a15, a7
	mov.n	a13, a4
	movi.n	a12, 0
	add.n	a11, a2, a6
	mov.n	a10, a2
	call8	crypto_aead_chacha20poly1305_encrypt_detached
.LVL20:
	.loc 1 80 0
	beqz.n	a3, .L6
	.loc 1 81 0
	bnez.n	a10, .L9
	.loc 1 82 0
	addi	a6, a6, 16
.LVL21:
	movi.n	a9, 1
	bltu	a6, a5, .L8
	movi.n	a9, 0
.L8:
	mov.n	a8, a6
	add.n	a5, a9, a7
.LVL22:
	j	.L7
.LVL23:
.L9:
	.loc 1 69 0
	movi.n	a8, 0
	mov.n	a5, a8
.LVL24:
.L7:
	.loc 1 84 0
	s32i.n	a8, a3, 0
	s32i.n	a5, a3, 4
.LVL25:
.L6:
	.loc 1 87 0
	mov.n	a2, a10
.LVL26:
	retw.n
.LFE13:
	.size	crypto_aead_chacha20poly1305_encrypt, .-crypto_aead_chacha20poly1305_encrypt
	.section	.text.crypto_aead_chacha20poly1305_ietf_encrypt_detached,"ax",@progbits
	.literal_position
	.literal .LC6, 64, 0
	.literal .LC8, _pad0
	.literal .LC9, 8, 0
	.literal .LC10, 16, 0
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_encrypt_detached
	.type	crypto_aead_chacha20poly1305_ietf_encrypt_detached, @function
crypto_aead_chacha20poly1305_ietf_encrypt_detached:
.LFB14:
	.loc 1 100 0
.LVL27:
	entry	sp, 416
.LCFI2:
	s32i	a3, sp, 364
	s32i	a4, sp, 360
	s32i	a5, sp, 368
	l32i	a3, sp, 424
.LVL28:
	l32i	a4, sp, 428
.LVL29:
	.loc 1 106 0
	addi	a8, sp, 16
	addmi	a5, a8, 0x100
.LVL30:
	l32i	a15, sp, 440
	l32i	a14, sp, 436
	l32r	a12, .LC6
	l32r	a13, .LC6+4
	mov.n	a10, a5
	call8	crypto_stream_chacha20_ietf
.LVL31:
	.loc 1 107 0
	mov.n	a11, a5
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL32:
	.loc 1 108 0
	movi.n	a11, 0x40
	mov.n	a10, a5
	call8	sodium_memzero
.LVL33:
	.loc 1 110 0
	mov.n	a12, a3
	mov.n	a13, a4
	l32i	a11, sp, 416
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL34:
	.loc 1 111 0
	neg	a12, a3
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	l32r	a11, .LC8
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL35:
	.loc 1 113 0
	l32i	a5, sp, 440
	s32i.n	a5, sp, 0
	movi.n	a15, 1
	l32i	a14, sp, 436
	mov.n	a12, a6
	mov.n	a13, a7
	l32i	a11, sp, 368
	mov.n	a10, a2
	call8	crypto_stream_chacha20_ietf_xor_ic
.LVL36:
	.loc 1 115 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL37:
	.loc 1 116 0
	neg	a12, a6
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	l32r	a11, .LC8
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL38:
.LBB22:
.LBB23:
	.loc 2 64 0
	addi	a8, sp, 16
	addmi	a2, a8, 0x100
.LVL39:
	s32i	a3, sp, 352
	s32i	a4, sp, 356
	addi	a5, a2, 64
	s32i	a3, sp, 336
	s32i	a4, sp, 340
.LBE23:
.LBE22:
	.loc 1 119 0
	movi	a3, 0x140
.LVL40:
	add.n	a3, a8, a3
	l32r	a12, .LC9
	l32r	a13, .LC9+4
	mov.n	a11, a3
	mov.n	a10, a8
	call8	crypto_onetimeauth_poly1305_update
.LVL41:
.LBB24:
.LBB25:
	.loc 2 64 0
	s32i	a6, sp, 352
	s32i	a7, sp, 356
	s32i	a6, a2, 64
	s32i	a7, a2, 68
.LBE25:
.LBE24:
	.loc 1 122 0
	l32r	a12, .LC9
	l32r	a13, .LC9+4
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL42:
	.loc 1 124 0
	l32i	a11, sp, 364
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_final
.LVL43:
	.loc 1 125 0
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL44:
	.loc 1 127 0
	l32i	a2, sp, 360
	beqz.n	a2, .L14
	.loc 1 128 0
	l32r	a2, .LC10
	l32r	a3, .LC10+4
	l32i	a4, sp, 360
.LVL45:
	s32i.n	a2, a4, 0
	s32i.n	a3, a4, 4
.L14:
	.loc 1 131 0
	movi.n	a2, 0
	retw.n
.LFE14:
	.size	crypto_aead_chacha20poly1305_ietf_encrypt_detached, .-crypto_aead_chacha20poly1305_ietf_encrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_ietf_encrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_encrypt
	.type	crypto_aead_chacha20poly1305_ietf_encrypt, @function
crypto_aead_chacha20poly1305_ietf_encrypt:
.LFB15:
	.loc 1 143 0
.LVL46:
	entry	sp, 64
.LCFI3:
	mov.n	a5, a6
.LVL47:
	.loc 1 147 0
	bnei	a7, -1, .L16
	movi.n	a8, -0x11
	bgeu	a8, a6, .L16
	.loc 1 148 0
	call8	abort
.LVL48:
.L16:
	.loc 1 150 0
	l32i	a8, sp, 88
	s32i.n	a8, sp, 24
	l32i	a8, sp, 84
	s32i.n	a8, sp, 20
	l32i	a8, sp, 80
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	l32i	a9, sp, 76
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 12
	l32i	a8, sp, 64
	s32i.n	a8, sp, 0
	mov.n	a14, a6
	mov.n	a15, a7
	mov.n	a13, a4
	movi.n	a12, 0
	add.n	a11, a2, a6
	mov.n	a10, a2
	call8	crypto_aead_chacha20poly1305_ietf_encrypt_detached
.LVL49:
	.loc 1 155 0
	beqz.n	a3, .L18
	.loc 1 156 0
	bnez.n	a10, .L21
	.loc 1 157 0
	addi	a6, a6, 16
.LVL50:
	movi.n	a9, 1
	bltu	a6, a5, .L20
	movi.n	a9, 0
.L20:
	mov.n	a8, a6
	add.n	a5, a9, a7
.LVL51:
	j	.L19
.LVL52:
.L21:
	.loc 1 144 0
	movi.n	a8, 0
	mov.n	a5, a8
.LVL53:
.L19:
	.loc 1 159 0
	s32i.n	a8, a3, 0
	s32i.n	a5, a3, 4
.LVL54:
.L18:
	.loc 1 162 0
	mov.n	a2, a10
.LVL55:
	retw.n
.LFE15:
	.size	crypto_aead_chacha20poly1305_ietf_encrypt, .-crypto_aead_chacha20poly1305_ietf_encrypt
	.section	.text.crypto_aead_chacha20poly1305_decrypt_detached,"ax",@progbits
	.literal_position
	.literal .LC13, 64, 0
	.literal .LC14, 8, 0
	.literal .LC15, 1, 0
	.align	4
	.global	crypto_aead_chacha20poly1305_decrypt_detached
	.type	crypto_aead_chacha20poly1305_decrypt_detached, @function
crypto_aead_chacha20poly1305_decrypt_detached:
.LFB16:
	.loc 1 174 0
.LVL56:
	entry	sp, 416
.LCFI4:
	s32i	a2, sp, 376
	l32i	a3, sp, 424
.LVL57:
	l32i	a5, sp, 428
	.loc 1 183 0
	addi	a8, sp, 16
	addmi	a2, a8, 0x100
.LVL58:
	l32i	a15, sp, 436
	l32i	a14, sp, 432
	l32r	a12, .LC13
	l32r	a13, .LC13+4
	mov.n	a10, a2
	call8	crypto_stream_chacha20
.LVL59:
	.loc 1 184 0
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL60:
	.loc 1 185 0
	movi.n	a11, 0x40
	mov.n	a10, a2
	call8	sodium_memzero
.LVL61:
	.loc 1 187 0
	mov.n	a12, a3
	mov.n	a13, a5
	l32i	a11, sp, 420
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL62:
.LBB26:
.LBB27:
	.loc 2 64 0
	s32i	a3, sp, 368
	s32i	a5, sp, 372
	addi	a5, a2, 64
.LVL63:
	l32i	a8, a2, 100
	s32i	a3, a2, 64
	s32i	a8, a2, 68
.LBE27:
.LBE26:
	.loc 1 189 0
	movi	a3, 0x140
.LVL64:
	addi	a8, sp, 16
	add.n	a3, a8, a3
	l32r	a12, .LC14
	l32r	a13, .LC14+4
	mov.n	a11, a3
	mov.n	a10, a8
	call8	crypto_onetimeauth_poly1305_update
.LVL65:
	.loc 1 192 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL66:
.LBB28:
.LBB29:
	.loc 2 64 0
	s32i	a6, sp, 368
	s32i	a7, sp, 372
	s32i	a6, a2, 64
	s32i	a7, a2, 68
.LBE29:
.LBE28:
	.loc 1 194 0
	l32r	a12, .LC14
	l32r	a13, .LC14+4
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL67:
	.loc 1 196 0
	movi	a3, 0x148
	addi	a2, sp, 16
	add.n	a3, a2, a3
	mov.n	a11, a3
	mov.n	a10, a2
	call8	crypto_onetimeauth_poly1305_final
.LVL68:
	.loc 1 197 0
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL69:
	.loc 1 200 0
	l32i	a11, sp, 416
	mov.n	a10, a3
	call8	crypto_verify_16
.LVL70:
	mov.n	a2, a10
.LVL71:
	.loc 1 201 0
	movi.n	a11, 0x10
	mov.n	a10, a3
	call8	sodium_memzero
.LVL72:
	.loc 1 202 0
	l32i	a3, sp, 376
	beqz.n	a3, .L24
	.loc 1 205 0
	beqz.n	a2, .L25
	.loc 1 206 0
	mov.n	a12, a6
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL73:
	.loc 1 207 0
	movi.n	a2, -1
.LVL74:
	retw.n
.LVL75:
.L25:
	.loc 1 209 0
	l32i	a2, sp, 436
.LVL76:
	s32i.n	a2, sp, 8
	l32r	a2, .LC15
	l32r	a3, .LC15+4
	s32i.n	a2, sp, 0
	s32i.n	a3, sp, 4
	l32i	a14, sp, 432
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	l32i	a10, sp, 376
	call8	crypto_stream_chacha20_xor_ic
.LVL77:
	.loc 1 211 0
	movi.n	a2, 0
.L24:
	.loc 1 212 0
	retw.n
.LFE16:
	.size	crypto_aead_chacha20poly1305_decrypt_detached, .-crypto_aead_chacha20poly1305_decrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_decrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_aead_chacha20poly1305_decrypt
	.type	crypto_aead_chacha20poly1305_decrypt, @function
crypto_aead_chacha20poly1305_decrypt:
.LFB17:
	.loc 1 224 0
.LVL78:
	entry	sp, 64
.LCFI5:
	mov.n	a11, a4
	mov.n	a4, a6
.LVL79:
	.loc 1 228 0
	bnez.n	a7, .L36
	bnez.n	a7, .L34
	movi.n	a8, 0xf
	bgeu	a8, a6, .L34
.L36:
	.loc 1 229 0
	addi	a14, a6, -16
	movi.n	a15, 1
	bltu	a14, a4, .L30
	movi.n	a15, 0
.L30:
	addi.n	a8, a7, -1
	add.n	a15, a15, a8
	.loc 1 232 0
	addi	a10, a6, -16
	.loc 1 229 0
	add.n	a10, a5, a10
	l32i	a8, sp, 84
	s32i.n	a8, sp, 20
	l32i	a8, sp, 80
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	l32i	a9, sp, 76
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 12
	l32i	a8, sp, 64
	s32i.n	a8, sp, 4
	s32i.n	a10, sp, 0
	mov.n	a12, a5
	mov.n	a10, a2
	call8	crypto_aead_chacha20poly1305_decrypt_detached
.LVL80:
	mov.n	a2, a10
.LVL81:
	j	.L28
.LVL82:
.L34:
	.loc 1 226 0
	movi.n	a2, -1
.LVL83:
.L28:
	.loc 1 235 0
	beqz.n	a3, .L31
	.loc 1 236 0
	bnez.n	a2, .L35
	.loc 1 237 0
	addi	a6, a6, -16
.LVL84:
	movi.n	a5, 1
.LVL85:
	bltu	a6, a4, .L33
	movi.n	a5, 0
.L33:
	addi.n	a7, a7, -1
	add.n	a4, a5, a7
	mov.n	a7, a6
	mov.n	a5, a4
.LVL86:
	j	.L32
.LVL87:
.L35:
	.loc 1 225 0
	movi.n	a7, 0
	mov.n	a5, a7
.LVL88:
.L32:
	.loc 1 239 0
	s32i.n	a7, a3, 0
	s32i.n	a5, a3, 4
.LVL89:
.L31:
	.loc 1 242 0
	retw.n
.LFE17:
	.size	crypto_aead_chacha20poly1305_decrypt, .-crypto_aead_chacha20poly1305_decrypt
	.section	.text.crypto_aead_chacha20poly1305_ietf_decrypt_detached,"ax",@progbits
	.literal_position
	.literal .LC18, 64, 0
	.literal .LC20, _pad0
	.literal .LC21, 8, 0
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_decrypt_detached
	.type	crypto_aead_chacha20poly1305_ietf_decrypt_detached, @function
crypto_aead_chacha20poly1305_ietf_decrypt_detached:
.LFB18:
	.loc 1 254 0
.LVL90:
	entry	sp, 416
.LCFI6:
	s32i	a2, sp, 380
	l32i	a2, sp, 424
.LVL91:
	l32i	a5, sp, 428
	.loc 1 263 0
	addi	a8, sp, 16
	addmi	a3, a8, 0x100
.LVL92:
	l32i	a15, sp, 436
	l32i	a14, sp, 432
	l32r	a12, .LC18
	l32r	a13, .LC18+4
	mov.n	a10, a3
	call8	crypto_stream_chacha20_ietf
.LVL93:
	.loc 1 264 0
	mov.n	a11, a3
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_init
.LVL94:
	.loc 1 265 0
	movi.n	a11, 0x40
	mov.n	a10, a3
	call8	sodium_memzero
.LVL95:
	.loc 1 267 0
	mov.n	a12, a2
	mov.n	a13, a5
	l32i	a11, sp, 420
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL96:
	.loc 1 268 0
	neg	a12, a2
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	l32r	a11, .LC20
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL97:
	.loc 1 271 0
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL98:
	.loc 1 272 0
	neg	a12, a6
	extui	a12, a12, 0, 4
	movi.n	a13, 0
	l32r	a11, .LC20
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL99:
.LBB30:
.LBB31:
	.loc 2 64 0
	addi	a8, sp, 16
	addmi	a3, a8, 0x100
	s32i	a2, sp, 368
	s32i	a5, sp, 372
	addi	a8, a3, 64
	s32i	a8, sp, 376
	s32i	a2, a3, 64
	s32i	a5, a3, 68
.LBE31:
.LBE30:
	.loc 1 275 0
	movi	a2, 0x140
.LVL100:
	addi	a5, sp, 16
.LVL101:
	add.n	a2, a5, a2
	l32r	a12, .LC21
	l32r	a13, .LC21+4
	mov.n	a11, a2
	mov.n	a10, a5
	call8	crypto_onetimeauth_poly1305_update
.LVL102:
.LBB32:
.LBB33:
	.loc 2 64 0
	s32i	a6, sp, 368
	s32i	a7, sp, 372
	s32i	a6, a3, 64
	l32i	a3, sp, 376
	s32i.n	a7, a3, 4
.LBE33:
.LBE32:
	.loc 1 278 0
	l32r	a12, .LC21
	l32r	a13, .LC21+4
	mov.n	a11, a2
	addi	a10, sp, 16
	call8	crypto_onetimeauth_poly1305_update
.LVL103:
	.loc 1 280 0
	movi	a3, 0x148
	addi	a5, sp, 16
	add.n	a3, a5, a3
	mov.n	a11, a3
	mov.n	a10, a5
	call8	crypto_onetimeauth_poly1305_final
.LVL104:
	.loc 1 281 0
	movi	a11, 0x100
	addi	a10, sp, 16
	call8	sodium_memzero
.LVL105:
	.loc 1 284 0
	l32i	a11, sp, 416
	mov.n	a10, a3
	call8	crypto_verify_16
.LVL106:
	mov.n	a2, a10
.LVL107:
	.loc 1 285 0
	movi.n	a11, 0x10
	mov.n	a10, a3
	call8	sodium_memzero
.LVL108:
	.loc 1 286 0
	l32i	a3, sp, 380
	beqz.n	a3, .L40
	.loc 1 289 0
	beqz.n	a2, .L41
	.loc 1 290 0
	mov.n	a12, a6
	movi.n	a11, 0
	mov.n	a10, a3
	call8	memset
.LVL109:
	.loc 1 291 0
	movi.n	a2, -1
.LVL110:
	retw.n
.LVL111:
.L41:
	.loc 1 293 0
	l32i	a5, sp, 436
	s32i.n	a5, sp, 0
	movi.n	a15, 1
	l32i	a14, sp, 432
	mov.n	a12, a6
	mov.n	a13, a7
	mov.n	a11, a4
	l32i	a10, sp, 380
	call8	crypto_stream_chacha20_ietf_xor_ic
.LVL112:
	.loc 1 295 0
	movi.n	a2, 0
.LVL113:
.L40:
	.loc 1 296 0
	retw.n
.LFE18:
	.size	crypto_aead_chacha20poly1305_ietf_decrypt_detached, .-crypto_aead_chacha20poly1305_ietf_decrypt_detached
	.section	.text.crypto_aead_chacha20poly1305_ietf_decrypt,"ax",@progbits
	.literal_position
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_decrypt
	.type	crypto_aead_chacha20poly1305_ietf_decrypt, @function
crypto_aead_chacha20poly1305_ietf_decrypt:
.LFB19:
	.loc 1 308 0
.LVL114:
	entry	sp, 64
.LCFI7:
	mov.n	a11, a4
	mov.n	a4, a6
.LVL115:
	.loc 1 312 0
	bnez.n	a7, .L52
	bnez.n	a7, .L50
	movi.n	a8, 0xf
	bgeu	a8, a6, .L50
.L52:
	.loc 1 313 0
	addi	a14, a6, -16
	movi.n	a15, 1
	bltu	a14, a4, .L46
	movi.n	a15, 0
.L46:
	addi.n	a8, a7, -1
	add.n	a15, a15, a8
	.loc 1 316 0
	addi	a10, a6, -16
	.loc 1 313 0
	add.n	a10, a5, a10
	l32i	a8, sp, 84
	s32i.n	a8, sp, 20
	l32i	a8, sp, 80
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	l32i	a9, sp, 76
	s32i.n	a8, sp, 8
	s32i.n	a9, sp, 12
	l32i	a8, sp, 64
	s32i.n	a8, sp, 4
	s32i.n	a10, sp, 0
	mov.n	a12, a5
	mov.n	a10, a2
	call8	crypto_aead_chacha20poly1305_ietf_decrypt_detached
.LVL116:
	mov.n	a2, a10
.LVL117:
	j	.L44
.LVL118:
.L50:
	.loc 1 310 0
	movi.n	a2, -1
.LVL119:
.L44:
	.loc 1 319 0
	beqz.n	a3, .L47
	.loc 1 320 0
	bnez.n	a2, .L51
	.loc 1 321 0
	addi	a6, a6, -16
.LVL120:
	movi.n	a5, 1
.LVL121:
	bltu	a6, a4, .L49
	movi.n	a5, 0
.L49:
	addi.n	a7, a7, -1
	add.n	a4, a5, a7
	mov.n	a7, a6
	mov.n	a5, a4
.LVL122:
	j	.L48
.LVL123:
.L51:
	.loc 1 309 0
	movi.n	a7, 0
	mov.n	a5, a7
.LVL124:
.L48:
	.loc 1 323 0
	s32i.n	a7, a3, 0
	s32i.n	a5, a3, 4
.LVL125:
.L47:
	.loc 1 326 0
	retw.n
.LFE19:
	.size	crypto_aead_chacha20poly1305_ietf_decrypt, .-crypto_aead_chacha20poly1305_ietf_decrypt
	.section	.text.crypto_aead_chacha20poly1305_ietf_keybytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_keybytes
	.type	crypto_aead_chacha20poly1305_ietf_keybytes, @function
crypto_aead_chacha20poly1305_ietf_keybytes:
.LFB20:
	.loc 1 330 0
	entry	sp, 32
.LCFI8:
	.loc 1 332 0
	movi.n	a2, 0x20
	retw.n
.LFE20:
	.size	crypto_aead_chacha20poly1305_ietf_keybytes, .-crypto_aead_chacha20poly1305_ietf_keybytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_npubbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_npubbytes
	.type	crypto_aead_chacha20poly1305_ietf_npubbytes, @function
crypto_aead_chacha20poly1305_ietf_npubbytes:
.LFB21:
	.loc 1 336 0
	entry	sp, 32
.LCFI9:
	.loc 1 338 0
	movi.n	a2, 0xc
	retw.n
.LFE21:
	.size	crypto_aead_chacha20poly1305_ietf_npubbytes, .-crypto_aead_chacha20poly1305_ietf_npubbytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_nsecbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_nsecbytes
	.type	crypto_aead_chacha20poly1305_ietf_nsecbytes, @function
crypto_aead_chacha20poly1305_ietf_nsecbytes:
.LFB22:
	.loc 1 342 0
	entry	sp, 32
.LCFI10:
	.loc 1 344 0
	movi.n	a2, 0
	retw.n
.LFE22:
	.size	crypto_aead_chacha20poly1305_ietf_nsecbytes, .-crypto_aead_chacha20poly1305_ietf_nsecbytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_abytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_abytes
	.type	crypto_aead_chacha20poly1305_ietf_abytes, @function
crypto_aead_chacha20poly1305_ietf_abytes:
.LFB23:
	.loc 1 348 0
	entry	sp, 32
.LCFI11:
	.loc 1 350 0
	movi.n	a2, 0x10
	retw.n
.LFE23:
	.size	crypto_aead_chacha20poly1305_ietf_abytes, .-crypto_aead_chacha20poly1305_ietf_abytes
	.section	.text.crypto_aead_chacha20poly1305_ietf_keygen,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_ietf_keygen
	.type	crypto_aead_chacha20poly1305_ietf_keygen, @function
crypto_aead_chacha20poly1305_ietf_keygen:
.LFB24:
	.loc 1 354 0
.LVL126:
	entry	sp, 32
.LCFI12:
	.loc 1 355 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL127:
	retw.n
.LFE24:
	.size	crypto_aead_chacha20poly1305_ietf_keygen, .-crypto_aead_chacha20poly1305_ietf_keygen
	.section	.text.crypto_aead_chacha20poly1305_keybytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_keybytes
	.type	crypto_aead_chacha20poly1305_keybytes, @function
crypto_aead_chacha20poly1305_keybytes:
.LFB25:
	.loc 1 360 0
	entry	sp, 32
.LCFI13:
	.loc 1 362 0
	movi.n	a2, 0x20
	retw.n
.LFE25:
	.size	crypto_aead_chacha20poly1305_keybytes, .-crypto_aead_chacha20poly1305_keybytes
	.section	.text.crypto_aead_chacha20poly1305_npubbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_npubbytes
	.type	crypto_aead_chacha20poly1305_npubbytes, @function
crypto_aead_chacha20poly1305_npubbytes:
.LFB26:
	.loc 1 366 0
	entry	sp, 32
.LCFI14:
	.loc 1 368 0
	movi.n	a2, 8
	retw.n
.LFE26:
	.size	crypto_aead_chacha20poly1305_npubbytes, .-crypto_aead_chacha20poly1305_npubbytes
	.section	.text.crypto_aead_chacha20poly1305_nsecbytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_nsecbytes
	.type	crypto_aead_chacha20poly1305_nsecbytes, @function
crypto_aead_chacha20poly1305_nsecbytes:
.LFB27:
	.loc 1 372 0
	entry	sp, 32
.LCFI15:
	.loc 1 374 0
	movi.n	a2, 0
	retw.n
.LFE27:
	.size	crypto_aead_chacha20poly1305_nsecbytes, .-crypto_aead_chacha20poly1305_nsecbytes
	.section	.text.crypto_aead_chacha20poly1305_abytes,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_abytes
	.type	crypto_aead_chacha20poly1305_abytes, @function
crypto_aead_chacha20poly1305_abytes:
.LFB28:
	.loc 1 378 0
	entry	sp, 32
.LCFI16:
	.loc 1 380 0
	movi.n	a2, 0x10
	retw.n
.LFE28:
	.size	crypto_aead_chacha20poly1305_abytes, .-crypto_aead_chacha20poly1305_abytes
	.section	.text.crypto_aead_chacha20poly1305_keygen,"ax",@progbits
	.align	4
	.global	crypto_aead_chacha20poly1305_keygen
	.type	crypto_aead_chacha20poly1305_keygen, @function
crypto_aead_chacha20poly1305_keygen:
.LFB29:
	.loc 1 384 0
.LVL128:
	entry	sp, 32
.LCFI17:
	.loc 1 385 0
	movi.n	a11, 0x20
	mov.n	a10, a2
	call8	randombytes_buf
.LVL129:
	retw.n
.LFE29:
	.size	crypto_aead_chacha20poly1305_keygen, .-crypto_aead_chacha20poly1305_keygen
	.section	.rodata._pad0,"a",@progbits
	.align	4
	.type	_pad0, @object
	.size	_pad0, 16
_pad0:
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x1a0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x1a0
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x1a0
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x1a0
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI8-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI9-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI10-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI11-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI12-.LFB24
	.byte	0xe
	.uleb128 0x20
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI14-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI15-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI16-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI17-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE34:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_onetimeauth_poly1305.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_stream_chacha20.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/crypto_verify_16.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/randombytes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1161
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x12
	.4byte	0x3e
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1e
	.4byte	0x25
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x15
	.4byte	0x33
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x39
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0xd8
	.4byte	0x5a
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	.LASF16
	.2byte	0x100
	.byte	0x6
	.byte	0x13
	.4byte	0xd0
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x6
	.byte	0x14
	.4byte	0xd0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0xe0
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xff
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x15
	.4byte	0xb6
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.4byte	0x10c
	.uleb128 0xb
	.string	"dst"
	.byte	0x2
	.byte	0x3d
	.4byte	0x10c
	.uleb128 0xb
	.string	"w"
	.byte	0x2
	.byte	0x3d
	.4byte	0x7e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x13
	.4byte	0x53
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x359
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x13
	.4byte	0xa9
	.4byte	.LLST0
	.uleb128 0xd
	.string	"mac"
	.byte	0x1
	.byte	0x14
	.4byte	0xa9
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x15
	.4byte	0x359
	.4byte	.LLST2
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x16
	.4byte	0x35f
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x17
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0x18
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x19
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1a
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1b
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x1c
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1e
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1f
	.4byte	0x36a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x20
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x28
	.4byte	0x20c
	.uleb128 0x13
	.4byte	0x102
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x2e
	.4byte	0x236
	.uleb128 0x14
	.4byte	0x102
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x10e2
	.4byte	0x258
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x10ed
	.4byte	0x273
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL6
	.4byte	0x10f8
	.4byte	0x28d
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
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0x1103
	.4byte	0x2a9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0x1103
	.4byte	0x2c4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0x110e
	.4byte	0x2ee
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL12
	.4byte	0x1103
	.4byte	0x309
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL13
	.4byte	0x1103
	.4byte	0x324
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL14
	.4byte	0x1119
	.4byte	0x340
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL15
	.4byte	0x10f8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x74
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x25
	.uleb128 0x5
	.byte	0x4
	.4byte	0x365
	.uleb128 0x18
	.4byte	0x3e
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x37a
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0x38a
	.uleb128 0x9
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3b
	.4byte	0x53
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x484
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x3b
	.4byte	0xa9
	.4byte	.LLST5
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3c
	.4byte	0x359
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"m"
	.byte	0x1
	.byte	0x3d
	.4byte	0x35f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3e
	.4byte	0x25
	.4byte	.LLST6
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0x3f
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x40
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x41
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x42
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x43
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x45
	.4byte	0x25
	.4byte	.LLST7
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x46
	.4byte	0x53
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.4byte	.LVL19
	.4byte	0x1124
	.uleb128 0x17
	.4byte	.LVL20
	.4byte	0x112
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
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5a
	.4byte	0x53
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70b
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x5a
	.4byte	0xa9
	.4byte	.LLST8
	.uleb128 0xd
	.string	"mac"
	.byte	0x1
	.byte	0x5b
	.4byte	0xa9
	.4byte	.LLST9
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x1
	.byte	0x5c
	.4byte	0x359
	.4byte	.LLST10
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0x5d
	.4byte	0x35f
	.4byte	.LLST11
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x1
	.byte	0x5e
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0x5f
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x60
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x61
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x62
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x63
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x65
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x66
	.4byte	0x36a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x67
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x76
	.4byte	0x57e
	.uleb128 0x13
	.4byte	0x102
	.4byte	.LLST12
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x79
	.4byte	0x5a8
	.uleb128 0x14
	.4byte	0x102
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.4byte	.LVL31
	.4byte	0x112f
	.4byte	0x5ca
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL32
	.4byte	0x10ed
	.4byte	0x5e5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL33
	.4byte	0x10f8
	.4byte	0x5ff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL34
	.4byte	0x1103
	.4byte	0x61b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL35
	.4byte	0x1103
	.4byte	0x639
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x75
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL36
	.4byte	0x113a
	.4byte	0x667
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL37
	.4byte	0x1103
	.4byte	0x682
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0x1103
	.4byte	0x6a0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL41
	.4byte	0x1103
	.4byte	0x6bb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL42
	.4byte	0x1103
	.4byte	0x6d6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL43
	.4byte	0x1119
	.4byte	0x6f2
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL44
	.4byte	0x10f8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x86
	.4byte	0x53
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x805
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0x86
	.4byte	0xa9
	.4byte	.LLST13
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x87
	.4byte	0x359
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"m"
	.byte	0x1
	.byte	0x88
	.4byte	0x35f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x89
	.4byte	0x25
	.4byte	.LLST14
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0x8a
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x8b
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x8c
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8d
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0x8e
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x90
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x91
	.4byte	0x53
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1b
	.4byte	.LVL48
	.4byte	0x1124
	.uleb128 0x17
	.4byte	.LVL49
	.4byte	0x484
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
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 24
	.uleb128 0x3
	.byte	0x91
	.sleb128 24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0xa5
	.4byte	0x53
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xabb
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0xa5
	.4byte	0xa9
	.4byte	.LLST16
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa6
	.4byte	0xa9
	.4byte	.LLST17
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0xa7
	.4byte	0x35f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa8
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"mac"
	.byte	0x1
	.byte	0xa9
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0xaa
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xab
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xac
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0xad
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0xaf
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0xb0
	.4byte	0x36a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0xb1
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0xb2
	.4byte	0xabb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb3
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0xb4
	.4byte	0x53
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0xbc
	.4byte	0x91e
	.uleb128 0x13
	.4byte	0x102
	.4byte	.LLST19
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x12
	.4byte	0xeb
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0xc1
	.4byte	0x948
	.uleb128 0x14
	.4byte	0x102
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.4byte	.LVL59
	.4byte	0x10e2
	.4byte	0x96a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL60
	.4byte	0x10ed
	.4byte	0x985
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL61
	.4byte	0x10f8
	.4byte	0x99f
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
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL62
	.4byte	0x1103
	.4byte	0x9bb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x72
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL65
	.4byte	0x1103
	.4byte	0x9d6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL66
	.4byte	0x1103
	.4byte	0x9f1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL67
	.4byte	0x1103
	.4byte	0xa0c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -320
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL68
	.4byte	0x1119
	.4byte	0xa26
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
	.uleb128 0x15
	.4byte	.LVL69
	.4byte	0x10f8
	.4byte	0xa41
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x15
	.4byte	.LVL70
	.4byte	0x1145
	.4byte	0xa5c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL72
	.4byte	0x10f8
	.4byte	0xa75
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL73
	.4byte	0x1150
	.4byte	0xa94
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL77
	.4byte	0x110e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x3e
	.4byte	0xacb
	.uleb128 0x9
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0xd7
	.4byte	0x53
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb7
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0xd7
	.4byte	0xa9
	.4byte	.LLST20
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0xd8
	.4byte	0x359
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0xd9
	.4byte	0xa9
	.4byte	.LLST21
	.uleb128 0xd
	.string	"c"
	.byte	0x1
	.byte	0xda
	.4byte	0x35f
	.4byte	.LLST22
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0xdb
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0xdc
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xdd
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xde
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0xdf
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x19
	.4byte	.LASF18
	.byte	0x1
	.byte	0xe1
	.4byte	0x25
	.4byte	.LLST24
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.byte	0xe2
	.4byte	0x53
	.4byte	.LLST25
	.uleb128 0x17
	.4byte	.LVL80
	.4byte	0x805
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x1c
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0xf5
	.4byte	0x53
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb2
	.uleb128 0xd
	.string	"m"
	.byte	0x1
	.byte	0xf5
	.4byte	0xa9
	.4byte	.LLST26
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf6
	.4byte	0xa9
	.4byte	.LLST27
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0xf7
	.4byte	0x35f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xf8
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x10
	.string	"mac"
	.byte	0x1
	.byte	0xf9
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"ad"
	.byte	0x1
	.byte	0xfa
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0xfb
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xfc
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.string	"k"
	.byte	0x1
	.byte	0xfd
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0xff
	.4byte	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x1d
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x100
	.4byte	0x36a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1d
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x101
	.4byte	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x102
	.4byte	0xabb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x103
	.4byte	0x25
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x104
	.4byte	0x53
	.4byte	.LLST28
	.uleb128 0x1f
	.4byte	0xeb
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.2byte	0x112
	.4byte	0xcd6
	.uleb128 0x13
	.4byte	0x102
	.4byte	.LLST29
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x1f
	.4byte	0xeb
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x115
	.4byte	0xd01
	.uleb128 0x14
	.4byte	0x102
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x14
	.4byte	0xf7
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x9f
	.byte	0
	.uleb128 0x15
	.4byte	.LVL93
	.4byte	0x112f
	.4byte	0xd23
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL94
	.4byte	0x10ed
	.4byte	0xd3e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL95
	.4byte	0x10f8
	.4byte	0xd58
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
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL96
	.4byte	0x1103
	.4byte	0xd74
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL97
	.4byte	0x1103
	.4byte	0xd92
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL98
	.4byte	0x1103
	.4byte	0xdad
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL99
	.4byte	0x1103
	.4byte	0xdcb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x73
	.sleb128 -256
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL102
	.4byte	0x1103
	.4byte	0xde5
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL103
	.4byte	0x1103
	.4byte	0xdff
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL104
	.4byte	0x1119
	.4byte	0xe19
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL105
	.4byte	0x10f8
	.4byte	0xe34
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.uleb128 0x15
	.4byte	.LVL106
	.4byte	0x1145
	.4byte	0xe4f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.4byte	.LVL108
	.4byte	0x10f8
	.4byte	0xe68
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x15
	.4byte	.LVL109
	.4byte	0x1150
	.4byte	0xe87
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL112
	.4byte	0x113a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x12b
	.4byte	0x53
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfaa
	.uleb128 0x21
	.string	"m"
	.byte	0x1
	.2byte	0x12b
	.4byte	0xa9
	.4byte	.LLST30
	.uleb128 0x22
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x12c
	.4byte	0x359
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x12d
	.4byte	0xa9
	.4byte	.LLST31
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.2byte	0x12e
	.4byte	0x35f
	.4byte	.LLST32
	.uleb128 0x23
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x12f
	.4byte	0x25
	.4byte	.LLST33
	.uleb128 0x24
	.string	"ad"
	.byte	0x1
	.2byte	0x130
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x131
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x132
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.2byte	0x133
	.4byte	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x25
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x135
	.4byte	0x25
	.4byte	.LLST34
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.2byte	0x136
	.4byte	0x53
	.4byte	.LLST35
	.uleb128 0x17
	.4byte	.LVL116
	.4byte	0xbb7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x1c
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x149
	.4byte	0x89
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x14f
	.4byte	0x89
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x155
	.4byte	0x89
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x15b
	.4byte	0x89
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x161
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x103b
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.2byte	0x161
	.4byte	0xa9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL127
	.4byte	0x1159
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x167
	.4byte	0x89
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x16d
	.4byte	0x89
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x173
	.4byte	0x89
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x179
	.4byte	0x89
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x17f
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10cc
	.uleb128 0x24
	.string	"k"
	.byte	0x1
	.2byte	0x17f
	.4byte	0xa9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL129
	.4byte	0x1159
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
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF47
	.byte	0x1
	.byte	0x10
	.4byte	0x10dd
	.uleb128 0x5
	.byte	0x3
	.4byte	_pad0
	.uleb128 0x18
	.4byte	0xabb
	.uleb128 0x28
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x7
	.byte	0x22
	.uleb128 0x28
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x6
	.byte	0x30
	.uleb128 0x28
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.byte	0x16
	.uleb128 0x28
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x6
	.byte	0x34
	.uleb128 0x28
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x7
	.byte	0x2b
	.uleb128 0x28
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.byte	0x39
	.uleb128 0x28
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x9
	.byte	0x47
	.uleb128 0x28
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x7
	.byte	0x3e
	.uleb128 0x28
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.byte	0x47
	.uleb128 0x28
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0xa
	.byte	0x10
	.uleb128 0x29
	.4byte	.LASF64
	.4byte	.LASF64
	.uleb128 0x28
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0xb
	.byte	0x21
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x7
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x21
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x29
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
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL2
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x7
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL9
	.4byte	.LFE12
	.2byte	0x8
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL24
	.4byte	.LFE13
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x91
	.sleb128 -52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL45
	.4byte	.LFE14
	.2byte	0x8
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL46
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL53
	.4byte	.LFE15
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x7
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL64
	.4byte	.LFE16
	.2byte	0x8
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL81
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
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL80-1
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL83
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL78
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL88
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL78
	.4byte	.LVL84
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL88
	.4byte	.LFE17
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL79
	.4byte	.LVL86
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x7
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL101
	.4byte	.LFE18
	.2byte	0x8
	.byte	0x91
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL114
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
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115
	.4byte	.LVL116-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL116-1
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL119
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL114
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL124
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL114
	.4byte	.LVL120
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL124
	.4byte	.LFE19
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL115
	.4byte	.LVL122
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x6
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
	.4byte	.LFB12
	.4byte	.LFE12
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
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
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
.LASF25:
	.string	"crypto_aead_chacha20poly1305_encrypt_detached"
.LASF45:
	.string	"crypto_aead_chacha20poly1305_ietf_keygen"
.LASF58:
	.string	"randombytes_buf"
.LASF11:
	.string	"size_t"
.LASF10:
	.string	"uint64_t"
.LASF60:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/aead_chacha20poly1305.c"
.LASF56:
	.string	"crypto_stream_chacha20_ietf_xor_ic"
.LASF7:
	.string	"__uint8_t"
.LASF20:
	.string	"nsec"
.LASF62:
	.string	"opaque"
.LASF0:
	.string	"long long unsigned int"
.LASF24:
	.string	"slen"
.LASF27:
	.string	"clen_p"
.LASF6:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF22:
	.string	"state"
.LASF12:
	.string	"long int"
.LASF44:
	.string	"crypto_aead_chacha20poly1305_abytes"
.LASF37:
	.string	"crypto_aead_chacha20poly1305_ietf_keybytes"
.LASF48:
	.string	"crypto_stream_chacha20"
.LASF53:
	.string	"crypto_onetimeauth_poly1305_final"
.LASF34:
	.string	"mlen_p"
.LASF55:
	.string	"crypto_stream_chacha20_ietf"
.LASF30:
	.string	"crypto_aead_chacha20poly1305_ietf_encrypt"
.LASF51:
	.string	"crypto_onetimeauth_poly1305_update"
.LASF43:
	.string	"crypto_aead_chacha20poly1305_nsecbytes"
.LASF5:
	.string	"unsigned int"
.LASF41:
	.string	"crypto_aead_chacha20poly1305_keybytes"
.LASF23:
	.string	"block0"
.LASF14:
	.string	"long unsigned int"
.LASF19:
	.string	"adlen"
.LASF4:
	.string	"short unsigned int"
.LASF49:
	.string	"crypto_onetimeauth_poly1305_init"
.LASF26:
	.string	"crypto_aead_chacha20poly1305_encrypt"
.LASF35:
	.string	"crypto_aead_chacha20poly1305_ietf_decrypt_detached"
.LASF18:
	.string	"mlen"
.LASF16:
	.string	"crypto_onetimeauth_poly1305_state"
.LASF13:
	.string	"sizetype"
.LASF47:
	.string	"_pad0"
.LASF46:
	.string	"crypto_aead_chacha20poly1305_keygen"
.LASF28:
	.string	"clen"
.LASF50:
	.string	"sodium_memzero"
.LASF8:
	.string	"__uint64_t"
.LASF29:
	.string	"crypto_aead_chacha20poly1305_ietf_encrypt_detached"
.LASF42:
	.string	"crypto_aead_chacha20poly1305_npubbytes"
.LASF2:
	.string	"unsigned char"
.LASF59:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF3:
	.string	"short int"
.LASF40:
	.string	"crypto_aead_chacha20poly1305_ietf_abytes"
.LASF21:
	.string	"npub"
.LASF36:
	.string	"crypto_aead_chacha20poly1305_ietf_decrypt"
.LASF61:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\libsodium"
.LASF57:
	.string	"crypto_verify_16"
.LASF15:
	.string	"char"
.LASF39:
	.string	"crypto_aead_chacha20poly1305_ietf_nsecbytes"
.LASF32:
	.string	"computed_mac"
.LASF63:
	.string	"store64_le"
.LASF17:
	.string	"maclen_p"
.LASF38:
	.string	"crypto_aead_chacha20poly1305_ietf_npubbytes"
.LASF52:
	.string	"crypto_stream_chacha20_xor_ic"
.LASF31:
	.string	"crypto_aead_chacha20poly1305_decrypt_detached"
.LASF64:
	.string	"memset"
.LASF9:
	.string	"uint8_t"
.LASF33:
	.string	"crypto_aead_chacha20poly1305_decrypt"
.LASF54:
	.string	"abort"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
