	.file	"crypto_scrypt-common.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.text.encode64_uint32,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.align	4
	.type	encode64_uint32, @function
encode64_uint32:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt-common.c"
	.loc 1 35 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 38 0
	movi.n	a9, 0
	j	.L2
.LVL2:
.L4:
	.loc 1 39 0
	beqz.n	a3, .L5
.LVL3:
	.loc 1 42 0 discriminator 2
	extui	a10, a4, 0, 6
	l32r	a8, .LC1
	add.n	a8, a10, a8
	l8ui	a8, a8, 0
	s8i	a8, a2, 0
	.loc 1 43 0 discriminator 2
	addi.n	a3, a3, -1
.LVL4:
	.loc 1 44 0 discriminator 2
	srli	a4, a4, 6
.LVL5:
	.loc 1 38 0 discriminator 2
	addi.n	a9, a9, 6
.LVL6:
	.loc 1 42 0 discriminator 2
	addi.n	a2, a2, 1
.LVL7:
.L2:
	.loc 1 38 0 discriminator 1
	bltu	a9, a5, .L4
	retw.n
.L5:
	.loc 1 40 0
	movi.n	a2, 0
.LVL8:
	.loc 1 47 0
	retw.n
.LFE12:
	.size	encode64_uint32, .-encode64_uint32
	.section	.text.encode64,"ax",@progbits
	.align	4
	.type	encode64, @function
encode64:
.LFB13:
	.loc 1 51 0
.LVL9:
	entry	sp, 32
.LCFI1:
.LVL10:
	.loc 1 54 0
	movi.n	a8, 0
	j	.L7
.LVL11:
.L13:
	movi.n	a13, 0
	mov.n	a12, a13
.L10:
.LVL12:
.LBB2:
	.loc 1 59 0 discriminator 1
	addi.n	a6, a8, 1
.LVL13:
	add.n	a8, a4, a8
	l8ui	a8, a8, 0
	ssl	a13
	sll	a8, a8
	or	a12, a12, a8
.LVL14:
	.loc 1 60 0 discriminator 1
	addi.n	a13, a13, 8
.LVL15:
	.loc 1 61 0 discriminator 1
	movi.n	a8, 1
	movi.n	a9, 0x17
	bgeu	a9, a13, .L8
	movi.n	a8, 0
.L8:
	extui	a9, a8, 0, 8
	movi.n	a10, 1
	bltu	a6, a5, .L9
	movi.n	a10, 0
.L9:
	.loc 1 59 0 discriminator 1
	mov.n	a8, a6
	.loc 1 61 0 discriminator 1
	bany	a9, a10, .L10
	.loc 1 63 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	encode64_uint32
.LVL16:
	.loc 1 64 0
	beqz.n	a10, .L12
	.loc 1 67 0
	sub	a2, a2, a10
.LVL17:
	add.n	a3, a3, a2
.LVL18:
	.loc 1 59 0
	mov.n	a8, a6
	.loc 1 68 0
	mov.n	a2, a10
.LVL19:
.L7:
.LBE2:
	.loc 1 54 0 discriminator 1
	bltu	a8, a5, .L13
	retw.n
.LVL20:
.L12:
.LBB3:
	.loc 1 65 0
	movi.n	a2, 0
.LVL21:
.LBE3:
	.loc 1 71 0
	retw.n
.LFE13:
	.size	encode64, .-encode64
	.section	.text.decode64_one,"ax",@progbits
	.literal_position
	.literal .LC2, .LC0
	.align	4
	.type	decode64_one, @function
decode64_one:
.LFB14:
	.loc 1 75 0
.LVL22:
	entry	sp, 32
.LCFI2:
	.loc 1 76 0
	mov.n	a11, a3
	l32r	a10, .LC2
	call8	strchr
.LVL23:
	.loc 1 78 0
	beqz.n	a10, .L15
	.loc 1 79 0
	l32r	a8, .LC2
	sub	a10, a10, a8
.LVL24:
	s32i.n	a10, a2, 0
	.loc 1 80 0
	movi.n	a2, 0
.LVL25:
	retw.n
.LVL26:
.L15:
	.loc 1 82 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 84 0
	movi.n	a2, -1
.LVL27:
	.loc 1 85 0
	retw.n
.LFE14:
	.size	decode64_one, .-decode64_one
	.section	.text.decode64_uint32,"ax",@progbits
	.align	4
	.type	decode64_uint32, @function
decode64_uint32:
.LFB15:
	.loc 1 89 0
.LVL28:
	entry	sp, 48
.LCFI3:
.LVL29:
	.loc 1 93 0
	movi.n	a6, 0
	.loc 1 94 0
	mov.n	a5, a6
	j	.L18
.LVL30:
.L21:
.LBB4:
	.loc 1 96 0
	l8ui	a11, a4, 0
	mov.n	a10, sp
	call8	decode64_one
.LVL31:
	beqz.n	a10, .L19
	.loc 1 97 0
	movi.n	a4, 0
.LVL32:
	s32i.n	a4, a2, 0
	.loc 1 98 0
	mov.n	a2, a4
.LVL33:
	retw.n
.LVL34:
.L19:
	.loc 1 100 0
	addi.n	a4, a4, 1
.LVL35:
	.loc 1 101 0
	l32i.n	a8, sp, 0
	ssl	a5
	sll	a8, a8
	or	a6, a6, a8
.LVL36:
.LBE4:
	.loc 1 94 0
	addi.n	a5, a5, 6
.LVL37:
.L18:
	.loc 1 94 0 is_stmt 0 discriminator 1
	bltu	a5, a3, .L21
	.loc 1 103 0 is_stmt 1
	s32i.n	a6, a2, 0
	.loc 1 105 0
	mov.n	a2, a4
.LVL38:
	.loc 1 106 0
	retw.n
.LFE15:
	.size	decode64_uint32, .-decode64_uint32
	.section	.text.escrypt_r,"ax",@progbits
	.align	4
	.global	escrypt_r
	.type	escrypt_r, @function
escrypt_r:
.LFB16:
	.loc 1 111 0
.LVL39:
	entry	sp, 144
.LCFI4:
	s32i	a7, sp, 96
	.loc 1 125 0
	l8ui	a9, a5, 0
	movi.n	a8, 0x24
	bne	a9, a8, .L28
	.loc 1 125 0 is_stmt 0 discriminator 1
	l8ui	a9, a5, 1
	movi.n	a8, 0x37
	bne	a9, a8, .L29
	.loc 1 125 0 discriminator 2
	l8ui	a9, a5, 2
	movi.n	a8, 0x24
	bne	a9, a8, .L30
.LVL40:
	.loc 1 130 0 is_stmt 1
	l8ui	a11, a5, 3
	addi	a10, sp, 64
	call8	decode64_one
.LVL41:
	bnez.n	a10, .L31
.LVL42:
	.loc 1 134 0
	l32i	a10, sp, 64
	movi.n	a8, 0x20
	and	a8, a10, a8
	movi.n	a9, 0
	movi.n	a11, 1
	ssl	a10
	sll	a11, a11
	s32i	a11, sp, 88
	moveqz	a11, a9, a8
	s32i	a11, sp, 92
	l32i	a10, sp, 88
	movnez	a10, a9, a8
	s32i	a10, sp, 88
.LVL43:
	.loc 1 136 0
	addi.n	a12, a5, 4
.LVL44:
	movi.n	a11, 0x1e
.LVL45:
	addi	a10, sp, 68
.LVL46:
	call8	decode64_uint32
.LVL47:
	.loc 1 137 0
	beqz.n	a10, .L32
	.loc 1 140 0
	mov.n	a12, a10
	movi.n	a11, 0x1e
	addi	a10, sp, 72
.LVL48:
	call8	decode64_uint32
.LVL49:
	s32i	a10, sp, 84
.LVL50:
	.loc 1 141 0
	beqz.n	a10, .L33
	.loc 1 144 0
	sub	a11, a10, a5
	s32i	a11, sp, 80
.LVL51:
	.loc 1 147 0
	movi.n	a11, 0x24
.LVL52:
	call8	strrchr
.LVL53:
	.loc 1 148 0
	beqz.n	a10, .L24
	.loc 1 149 0
	l32i	a8, sp, 84
	sub	a14, a10, a8
.LVL54:
	j	.L25
.LVL55:
.L24:
	.loc 1 151 0
	l32i	a10, sp, 84
.LVL56:
	call8	strlen
.LVL57:
	mov.n	a14, a10
.LVL58:
.L25:
	.loc 1 153 0
	l32i	a9, sp, 80
	add.n	a9, a14, a9
	s32i	a9, sp, 80
.LVL59:
	addi	a10, a9, 45
.LVL60:
	.loc 1 155 0
	movi.n	a8, 1
	l32i	a11, sp, 96
	bltu	a11, a10, .L26
	movi.n	a8, 0
.L26:
	extui	a9, a8, 0, 8
	movi.n	a8, 1
	bltu	a10, a14, .L27
	movi.n	a8, 0
.L27:
	extui	a8, a8, 0, 8
	or	a8, a9, a8
	bnez.n	a8, .L34
.LVL61:
	.loc 1 164 0
	movi.n	a8, 0x20
	s32i.n	a8, sp, 20
	add.n	a8, sp, a8
	s32i.n	a8, sp, 16
	l32i	a8, sp, 72
	s32i.n	a8, sp, 12
	l32i	a8, sp, 68
	s32i.n	a8, sp, 8
	l32i	a8, sp, 88
	s32i.n	a8, sp, 0
	l32i	a9, sp, 92
	s32i.n	a9, sp, 4
	l32i	a13, sp, 84
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL62:
	call8	escrypt_kdf_nosse
.LVL63:
	bnez.n	a10, .L35
.LVL64:
	.loc 1 169 0
	l32i	a12, sp, 80
	mov.n	a11, a5
	mov.n	a10, a6
	call8	memcpy
.LVL65:
	.loc 1 170 0
	l32i	a3, sp, 80
.LVL66:
	add.n	a2, a6, a3
.LVL67:
	.loc 1 171 0
	addi.n	a10, a3, 1
	add.n	a10, a6, a10
.LVL68:
	movi.n	a3, 0x24
	s8i	a3, a2, 0
	.loc 1 173 0
	sub	a11, a6, a10
	movi.n	a13, 0x20
	add.n	a12, sp, a13
	add.n	a11, a7, a11
	call8	encode64
.LVL69:
	mov.n	a2, a10
.LVL70:
	.loc 1 174 0
	movi.n	a11, 0x20
	add.n	a10, sp, a11
	call8	sodium_memzero
.LVL71:
	.loc 1 175 0
	beqz.n	a2, .L36
	.loc 1 175 0 is_stmt 0 discriminator 1
	add.n	a7, a6, a7
.LVL72:
	bgeu	a2, a7, .L37
	.loc 1 178 0 is_stmt 1
	movi.n	a3, 0
	s8i	a3, a2, 0
	.loc 1 180 0
	mov.n	a2, a6
.LVL73:
	retw.n
.LVL74:
.L28:
	.loc 1 126 0
	movi.n	a2, 0
.LVL75:
	retw.n
.LVL76:
.L29:
	movi.n	a2, 0
.LVL77:
	retw.n
.LVL78:
.L30:
	movi.n	a2, 0
.LVL79:
	retw.n
.LVL80:
.L31:
	.loc 1 131 0
	movi.n	a2, 0
.LVL81:
	retw.n
.LVL82:
.L32:
	.loc 1 138 0
	movi.n	a2, 0
.LVL83:
	retw.n
.LVL84:
.L33:
	.loc 1 142 0
	movi.n	a2, 0
.LVL85:
	retw.n
.LVL86:
.L34:
	.loc 1 156 0
	movi.n	a2, 0
.LVL87:
	retw.n
.LVL88:
.L35:
	.loc 1 166 0
	movi.n	a2, 0
.LVL89:
	retw.n
.LVL90:
.L36:
	.loc 1 176 0
	movi.n	a2, 0
.LVL91:
	retw.n
.LVL92:
.L37:
	movi.n	a2, 0
.LVL93:
	.loc 1 181 0
	retw.n
.LFE16:
	.size	escrypt_r, .-escrypt_r
	.section	.text.escrypt_gensalt_r,"ax",@progbits
	.literal_position
	.literal .LC3, -1431655765
	.literal .LC4, 1073741823
	.literal .LC5, .LC0
	.align	4
	.global	escrypt_gensalt_r
	.type	escrypt_gensalt_r, @function
escrypt_gensalt_r:
.LFB17:
	.loc 1 186 0
.LVL94:
	entry	sp, 32
.LCFI5:
	mov.n	a12, a3
	l32i.n	a3, sp, 32
.LVL95:
	.loc 1 190 0
	slli	a8, a6, 3
	addi.n	a8, a8, 5
	l32r	a9, .LC3
	muluh	a8, a8, a9
	srli	a8, a8, 2
.LVL96:
	.loc 1 193 0
	addi.n	a11, a8, 15
.LVL97:
	.loc 1 194 0
	movi.n	a9, 1
	bltu	a3, a11, .L39
	movi.n	a9, 0
.L39:
	extui	a10, a9, 0, 8
	movi.n	a9, 1
	bltu	a11, a8, .L40
	movi.n	a9, 0
.L40:
	extui	a9, a9, 0, 8
	or	a9, a10, a9
	bnez.n	a9, .L43
	.loc 1 194 0 is_stmt 0 discriminator 1
	bltu	a8, a6, .L44
	.loc 1 197 0 is_stmt 1
	movi.n	a8, 0x3f
.LVL98:
	bltu	a8, a2, .L45
	.loc 1 197 0 is_stmt 0 discriminator 1
	muluh	a8, a12, a4
	mull	a9, a12, a4
	bnez.n	a8, .L46
	bnez.n	a8, .L51
	l32r	a8, .LC4
	bltu	a8, a9, .L46
.L51:
.LVL99:
	.loc 1 201 0 is_stmt 1
	movi.n	a8, 0x24
	s8i	a8, a7, 0
.LVL100:
	.loc 1 202 0
	movi.n	a9, 0x37
	s8i	a9, a7, 1
.LVL101:
	.loc 1 203 0
	s8i	a8, a7, 2
.LVL102:
	.loc 1 205 0
	l32r	a8, .LC5
	add.n	a2, a2, a8
.LVL103:
	l8ui	a2, a2, 0
.LVL104:
	s8i	a2, a7, 3
	.loc 1 207 0
	movi.n	a13, 0x1e
	addi	a11, a3, -4
.LVL105:
	addi.n	a10, a7, 4
.LVL106:
	call8	encode64_uint32
.LVL107:
	.loc 1 208 0
	beqz.n	a10, .L47
	.loc 1 211 0
	sub	a11, a7, a10
	movi.n	a13, 0x1e
	mov.n	a12, a4
	add.n	a11, a3, a11
	call8	encode64_uint32
.LVL108:
	.loc 1 212 0
	beqz.n	a10, .L48
	.loc 1 215 0
	sub	a11, a7, a10
	mov.n	a13, a6
	mov.n	a12, a5
	add.n	a11, a3, a11
	call8	encode64
.LVL109:
	.loc 1 216 0
	beqz.n	a10, .L49
	.loc 1 216 0 is_stmt 0 discriminator 1
	add.n	a3, a7, a3
	bgeu	a10, a3, .L50
	.loc 1 219 0 is_stmt 1
	movi.n	a2, 0
	s8i	a2, a10, 0
	.loc 1 221 0
	mov.n	a2, a7
	retw.n
.LVL110:
.L43:
	.loc 1 195 0
	movi.n	a2, 0
.LVL111:
	retw.n
.LVL112:
.L44:
	movi.n	a2, 0
.LVL113:
	retw.n
.LVL114:
.L45:
	.loc 1 198 0
	movi.n	a2, 0
.LVL115:
	retw.n
.LVL116:
.L46:
	movi.n	a2, 0
.LVL117:
	retw.n
.LVL118:
.L47:
	.loc 1 209 0
	movi.n	a2, 0
	retw.n
.L48:
	.loc 1 213 0
	movi.n	a2, 0
	retw.n
.L49:
	.loc 1 217 0
	movi.n	a2, 0
	retw.n
.L50:
	movi.n	a2, 0
	.loc 1 222 0
	retw.n
.LFE17:
	.size	escrypt_gensalt_r, .-escrypt_gensalt_r
	.section	.text.crypto_pwhash_scryptsalsa208sha256_ll,"ax",@progbits
	.align	4
	.global	crypto_pwhash_scryptsalsa208sha256_ll
	.type	crypto_pwhash_scryptsalsa208sha256_ll, @function
crypto_pwhash_scryptsalsa208sha256_ll:
.LFB18:
	.loc 1 229 0
.LVL119:
	entry	sp, 80
.LCFI6:
	.loc 1 234 0
	addi	a10, sp, 32
	call8	escrypt_init_local
.LVL120:
	bnez.n	a10, .L54
.LVL121:
	.loc 1 243 0
	l32i	a8, sp, 92
	s32i.n	a8, sp, 20
	l32i	a8, sp, 88
	s32i.n	a8, sp, 16
	l32i	a8, sp, 84
	s32i.n	a8, sp, 12
	l32i	a8, sp, 80
	s32i.n	a8, sp, 8
	s32i.n	a6, sp, 0
	s32i.n	a7, sp, 4
	mov.n	a14, a5
	mov.n	a13, a4
	mov.n	a12, a3
	mov.n	a11, a2
	addi	a10, sp, 32
	call8	escrypt_kdf_nosse
.LVL122:
	mov.n	a2, a10
.LVL123:
	.loc 1 245 0
	addi	a10, sp, 32
	call8	escrypt_free_local
.LVL124:
	beqz.n	a10, .L53
	.loc 1 246 0
	movi.n	a2, -1
.LVL125:
	retw.n
.LVL126:
.L54:
	.loc 1 235 0
	movi.n	a2, -1
.LVL127:
.L53:
	.loc 1 249 0
	retw.n
.LFE18:
	.size	crypto_pwhash_scryptsalsa208sha256_ll, .-crypto_pwhash_scryptsalsa208sha256_ll
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x30
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
	.uleb128 0x90
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
	.uleb128 0x50
	.align	4
.LEFDE12:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/include/sodium/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x84e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x12
	.4byte	0x41
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x28
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x1e
	.4byte	0x21
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x15
	.4byte	0x36
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2d
	.4byte	0x5d
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x39
	.4byte	0x6f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.4byte	0x28
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
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
	.4byte	0xca
	.uleb128 0x7
	.4byte	0xbd
	.uleb128 0x8
	.byte	0xc
	.byte	0x5
	.byte	0x34
	.4byte	0xfc
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x35
	.4byte	0xb4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x35
	.4byte	0xb4
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x36
	.4byte	0x9b
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x37
	.4byte	0xcf
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3e
	.4byte	0xfc
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x47
	.4byte	0x11d
	.uleb128 0x6
	.byte	0x4
	.4byte	0x123
	.uleb128 0xa
	.4byte	0x56
	.4byte	0x15f
	.uleb128 0xb
	.4byte	0x15f
	.uleb128 0xb
	.4byte	0x165
	.uleb128 0xb
	.4byte	0x9b
	.uleb128 0xb
	.4byte	0x165
	.uleb128 0xb
	.4byte	0x9b
	.uleb128 0xb
	.4byte	0x90
	.uleb128 0xb
	.4byte	0x85
	.uleb128 0xb
	.4byte	0x85
	.uleb128 0xb
	.4byte	0x170
	.uleb128 0xb
	.4byte	0x9b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x107
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16b
	.uleb128 0x7
	.4byte	0x7a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7a
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x22
	.4byte	0x170
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d9
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.byte	0x22
	.4byte	0x170
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x22
	.4byte	0x9b
	.4byte	.LLST1
	.uleb128 0xd
	.string	"src"
	.byte	0x1
	.byte	0x22
	.4byte	0x85
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x22
	.4byte	0x85
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.string	"bit"
	.byte	0x1
	.byte	0x24
	.4byte	0x85
	.4byte	.LLST3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x32
	.4byte	0x170
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x281
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.byte	0x32
	.4byte	0x170
	.4byte	.LLST4
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x32
	.4byte	0x9b
	.4byte	.LLST5
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x32
	.4byte	0x165
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0x32
	.4byte	0x9b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x34
	.4byte	0x9b
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0x37
	.4byte	0x170
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x38
	.4byte	0x85
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x38
	.4byte	0x85
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LVL16
	.4byte	0x176
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x4a
	.4byte	0x56
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2df
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.byte	0x4a
	.4byte	0x2df
	.4byte	.LLST10
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x4a
	.4byte	0x7a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"ptr"
	.byte	0x1
	.byte	0x4c
	.4byte	0xc4
	.4byte	.LLST11
	.uleb128 0x14
	.4byte	.LVL23
	.4byte	0x7fb
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x85
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x58
	.4byte	0x165
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x370
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.byte	0x58
	.4byte	0x2df
	.4byte	.LLST12
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x58
	.4byte	0x85
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.string	"src"
	.byte	0x1
	.byte	0x58
	.4byte	0x165
	.4byte	.LLST13
	.uleb128 0x10
	.string	"bit"
	.byte	0x1
	.byte	0x5a
	.4byte	0x85
	.4byte	.LLST14
	.uleb128 0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5b
	.4byte	0x85
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x17
	.string	"one"
	.byte	0x1
	.byte	0x5f
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.4byte	.LVL31
	.4byte	0x281
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0x1
	.byte	0x6d
	.4byte	0x170
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5a7
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6d
	.4byte	0x15f
	.4byte	.LLST16
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6d
	.4byte	0x165
	.4byte	.LLST17
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x6d
	.4byte	0x9b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x6e
	.4byte	0x165
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x6e
	.4byte	0x170
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0x6e
	.4byte	0x9b
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0x70
	.4byte	0x5a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.4byte	.LASF49
	.byte	0x1
	.byte	0x71
	.4byte	0x112
	.uleb128 0x10
	.string	"src"
	.byte	0x1
	.byte	0x72
	.4byte	0x165
	.4byte	.LLST19
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.byte	0x73
	.4byte	0x165
	.4byte	.LLST20
	.uleb128 0x10
	.string	"dst"
	.byte	0x1
	.byte	0x74
	.4byte	0x170
	.4byte	.LLST21
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x75
	.4byte	0x9b
	.4byte	.LLST22
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x76
	.4byte	0x9b
	.4byte	.LLST23
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x77
	.4byte	0x9b
	.4byte	.LLST24
	.uleb128 0x10
	.string	"N"
	.byte	0x1
	.byte	0x78
	.4byte	0x90
	.4byte	.LLST25
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0x79
	.4byte	0x85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"r"
	.byte	0x1
	.byte	0x7a
	.4byte	0x85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x7b
	.4byte	0x85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.4byte	.LVL41
	.4byte	0x281
	.4byte	0x49c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL47
	.4byte	0x2e5
	.4byte	0x4bc
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4e
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL49
	.4byte	0x2e5
	.4byte	0x4d6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL53
	.4byte	0x806
	.4byte	0x4f1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL57
	.4byte	0x811
	.4byte	0x506
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL63
	.4byte	0x81c
	.4byte	0x53c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL65
	.4byte	0x827
	.4byte	0x55d
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL69
	.4byte	0x1d9
	.4byte	0x58f
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x8
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x7
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x20
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.4byte	.LVL71
	.4byte	0x830
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0x7a
	.4byte	0x5b7
	.uleb128 0x1d
	.4byte	0xad
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0xb8
	.4byte	0x170
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b8
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb8
	.4byte	0x85
	.4byte	.LLST26
	.uleb128 0xd
	.string	"r"
	.byte	0x1
	.byte	0xb8
	.4byte	0x85
	.4byte	.LLST27
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0xb8
	.4byte	0x85
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0xb8
	.4byte	0x165
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.byte	0xb9
	.4byte	0x9b
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0xb9
	.4byte	0x170
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0xb9
	.4byte	0x9b
	.4byte	.LLST28
	.uleb128 0x10
	.string	"dst"
	.byte	0x1
	.byte	0xbb
	.4byte	0x170
	.4byte	.LLST29
	.uleb128 0x1e
	.4byte	.LASF42
	.byte	0x1
	.byte	0xbc
	.4byte	0x9b
	.byte	0xe
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0xbe
	.4byte	0x9b
	.4byte	.LLST30
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0xbf
	.4byte	0x9b
	.4byte	.LLST31
	.uleb128 0x1b
	.4byte	.LVL107
	.4byte	0x176
	.4byte	0x688
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x34
	.byte	0x1c
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL108
	.4byte	0x176
	.4byte	0x6a1
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x14
	.4byte	.LVL109
	.4byte	0x1d9
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0xe1
	.4byte	0x56
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7e4
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0xe1
	.4byte	0x165
	.4byte	.LLST32
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0xe1
	.4byte	0x9b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe2
	.4byte	0x165
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0xe2
	.4byte	0x9b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x11
	.string	"N"
	.byte	0x1
	.byte	0xe3
	.4byte	0x90
	.uleb128 0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x11
	.string	"r"
	.byte	0x1
	.byte	0xe3
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0xe3
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0xe4
	.4byte	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe4
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.4byte	.LASF49
	.byte	0x1
	.byte	0xe6
	.4byte	0x112
	.uleb128 0x19
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe7
	.4byte	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0xe8
	.4byte	0x56
	.4byte	.LLST33
	.uleb128 0x1b
	.4byte	.LVL120
	.4byte	0x83b
	.4byte	0x787
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL122
	.4byte	0x81c
	.4byte	0x7d3
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x15
	.uleb128 0x2
	.byte	0x71
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.4byte	.LVL124
	.4byte	0x846
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF51
	.byte	0x1
	.byte	0x1e
	.4byte	0x7f6
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.uleb128 0x7
	.4byte	0xc4
	.uleb128 0x1f
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x6
	.byte	0x1b
	.uleb128 0x1f
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.byte	0x26
	.uleb128 0x1f
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x6
	.byte	0x21
	.uleb128 0x1f
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x5
	.byte	0x4c
	.uleb128 0x20
	.4byte	.LASF61
	.4byte	.LASF61
	.uleb128 0x1f
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x7
	.byte	0x16
	.uleb128 0x1f
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x5
	.byte	0x40
	.uleb128 0x1f
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x5
	.byte	0x42
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
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
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0x3
	.4byte	.LC0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
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
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67
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
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL80
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
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
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
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL39
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL39
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL74
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL92
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x75
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47-1
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-1
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x3
	.byte	0x75
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL51
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53-1
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	.LVL86
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x91
	.sleb128 -60
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69-1
	.4byte	.LVL70
	.2byte	0x9
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL59
	.4byte	.LVL74
	.2byte	0x7
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE16
	.2byte	0x7
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL58
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL74
	.2byte	0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x23
	.uleb128 0x2d
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LFE16
	.2byte	0x6
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x23
	.uleb128 0x2d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x7
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL46
	.4byte	.LVL74
	.2byte	0x8
	.byte	0x91
	.sleb128 -56
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL82
	.4byte	.LFE16
	.2byte	0x8
	.byte	0x91
	.sleb128 -56
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL94
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	.LC0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL110
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
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL95
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL107-1
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL118
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL94
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL110
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x77
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x77
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107-1
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL109-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL118
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL98
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x7b
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL110
	.2byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x5
	.byte	0xf7
	.uleb128 0x28
	.byte	0xf7
	.uleb128 0x21
	.byte	0xf4
	.uleb128 0x21
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x21
	.byte	0x25
	.byte	0xf7
	.uleb128 0x28
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x3
	.byte	0x7b
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LFE17
	.2byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x5
	.byte	0xf7
	.uleb128 0x28
	.byte	0xf7
	.uleb128 0x21
	.byte	0xf4
	.uleb128 0x21
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x21
	.byte	0x25
	.byte	0xf7
	.uleb128 0x28
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL97
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL105
	.4byte	.LVL110
	.2byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x5
	.byte	0xf7
	.uleb128 0x28
	.byte	0xf7
	.uleb128 0x21
	.byte	0xf4
	.uleb128 0x21
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x21
	.byte	0x25
	.byte	0xf7
	.uleb128 0x28
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0xf
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL118
	.4byte	.LFE17
	.2byte	0x22
	.byte	0x76
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x23
	.uleb128 0x5
	.byte	0xf7
	.uleb128 0x28
	.byte	0xf7
	.uleb128 0x21
	.byte	0xf4
	.uleb128 0x21
	.byte	0x8
	.8byte	0xaaaaaaab
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x21
	.byte	0x25
	.byte	0xf7
	.uleb128 0x28
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0xf
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL119
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LVL126
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"decode64_one"
.LASF41:
	.string	"salt"
.LASF26:
	.string	"encode64_uint32"
.LASF13:
	.string	"size_t"
.LASF42:
	.string	"prefixlen"
.LASF12:
	.string	"uint64_t"
.LASF6:
	.string	"__uint8_t"
.LASF23:
	.string	"escrypt_kdf_t"
.LASF0:
	.string	"long long unsigned int"
.LASF57:
	.string	"escrypt_init_local"
.LASF8:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF24:
	.string	"dstlen"
.LASF22:
	.string	"escrypt_local_t"
.LASF48:
	.string	"crypto_pwhash_scryptsalsa208sha256_ll"
.LASF35:
	.string	"local"
.LASF31:
	.string	"bits"
.LASF14:
	.string	"long int"
.LASF33:
	.string	"decode64_uint32"
.LASF61:
	.string	"memcpy"
.LASF50:
	.string	"retval"
.LASF51:
	.string	"itoa64"
.LASF49:
	.string	"escrypt_kdf"
.LASF19:
	.string	"aligned"
.LASF45:
	.string	"N_log2"
.LASF7:
	.string	"__uint32_t"
.LASF30:
	.string	"value"
.LASF1:
	.string	"unsigned int"
.LASF54:
	.string	"strlen"
.LASF16:
	.string	"long unsigned int"
.LASF52:
	.string	"strchr"
.LASF20:
	.string	"size"
.LASF5:
	.string	"short unsigned int"
.LASF47:
	.string	"escrypt_gensalt_r"
.LASF43:
	.string	"saltlen"
.LASF46:
	.string	"escrypt_r"
.LASF18:
	.string	"base"
.LASF15:
	.string	"sizetype"
.LASF58:
	.string	"escrypt_free_local"
.LASF55:
	.string	"escrypt_kdf_nosse"
.LASF53:
	.string	"strrchr"
.LASF60:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/crypto_scrypt-common.c"
.LASF56:
	.string	"sodium_memzero"
.LASF9:
	.string	"__uint64_t"
.LASF44:
	.string	"need"
.LASF34:
	.string	"dstbits"
.LASF3:
	.string	"unsigned char"
.LASF59:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF4:
	.string	"short int"
.LASF36:
	.string	"passwd"
.LASF39:
	.string	"buflen"
.LASF27:
	.string	"encode64"
.LASF28:
	.string	"srclen"
.LASF11:
	.string	"uint32_t"
.LASF17:
	.string	"char"
.LASF21:
	.string	"escrypt_region_t"
.LASF40:
	.string	"hash"
.LASF25:
	.string	"srcbits"
.LASF37:
	.string	"passwdlen"
.LASF10:
	.string	"uint8_t"
.LASF38:
	.string	"setting"
.LASF29:
	.string	"dnext"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
