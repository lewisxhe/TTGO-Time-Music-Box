	.file	"x509_create.c"
	.text
.Ltext0:
	.section	.text.x509_at_oid_from_name,"ax",@progbits
	.literal_position
	.literal .LC0, x509_attrs
	.align	4
	.type	x509_at_oid_from_name, @function
x509_at_oid_from_name:
.LFB10:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/x509_create.c"
	.loc 1 78 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 81 0
	l32r	a4, .LC0
	j	.L2
.LVL2:
.L5:
	.loc 1 82 0
	l32i.n	a8, a4, 4
	bne	a8, a3, .L3
	.loc 1 83 0 discriminator 1
	mov.n	a12, a3
	mov.n	a11, a2
	call8	strncmp
.LVL3:
	.loc 1 82 0 discriminator 1
	beqz.n	a10, .L4
.L3:
	.loc 1 81 0 discriminator 2
	addi.n	a4, a4, 12
.LVL4:
.L2:
	.loc 1 81 0 discriminator 1
	l32i.n	a10, a4, 0
	bnez.n	a10, .L5
.L4:
	.loc 1 87 0
	l32i.n	a2, a4, 8
.LVL5:
	retw.n
.LFE10:
	.size	x509_at_oid_from_name, .-x509_at_oid_from_name
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"*\206H\206\367\r\001\t\001"
	.section	.text.x509_write_name,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.align	4
	.type	x509_write_name, @function
x509_write_name:
.LFB13:
	.loc 1 198 0
.LVL6:
	entry	sp, 32
.LCFI1:
.LVL7:
	.loc 1 204 0
	movi.n	a8, 9
	bne	a5, a8, .L7
	.loc 1 205 0 discriminator 1
	mov.n	a12, a5
	l32r	a11, .LC2
	mov.n	a10, a4
	call8	memcmp
.LVL8:
	.loc 1 204 0 discriminator 1
	bnez.n	a10, .L7
	.loc 1 207 0
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_ia5_string
.LVL9:
	bltz	a10, .L10
	.loc 1 207 0 is_stmt 0 discriminator 2
	mov.n	a7, a10
.LVL10:
	j	.L9
.LVL11:
.L7:
	.loc 1 213 0 is_stmt 1
	mov.n	a13, a7
	mov.n	a12, a6
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_printable_string
.LVL12:
	bltz	a10, .L11
	.loc 1 213 0 is_stmt 0 discriminator 2
	mov.n	a7, a10
.LVL13:
.L9:
	.loc 1 220 0 is_stmt 1
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_oid
.LVL14:
	bltz	a10, .L12
	.loc 1 220 0 is_stmt 0 discriminator 2
	add.n	a4, a10, a7
.LVL15:
	.loc 1 222 0 is_stmt 1 discriminator 2
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL16:
	call8	mbedtls_asn1_write_len
.LVL17:
	bltz	a10, .L13
	add.n	a4, a10, a4
.LVL18:
	.loc 1 223 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a2
.LVL19:
	call8	mbedtls_asn1_write_tag
.LVL20:
	bltz	a10, .L14
	add.n	a4, a10, a4
.LVL21:
	.loc 1 226 0 discriminator 2
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL22:
	call8	mbedtls_asn1_write_len
.LVL23:
	bltz	a10, .L15
	add.n	a4, a10, a4
.LVL24:
	.loc 1 227 0 discriminator 2
	movi.n	a12, 0x31
	mov.n	a11, a3
	mov.n	a10, a2
.LVL25:
	call8	mbedtls_asn1_write_tag
.LVL26:
	bltz	a10, .L16
	add.n	a2, a10, a4
.LVL27:
	.loc 1 230 0 discriminator 2
	retw.n
.LVL28:
.L10:
	.loc 1 207 0
	mov.n	a2, a10
.LVL29:
	retw.n
.LVL30:
.L11:
	.loc 1 213 0
	mov.n	a2, a10
.LVL31:
	retw.n
.LVL32:
.L12:
	.loc 1 220 0
	mov.n	a2, a10
.LVL33:
	retw.n
.LVL34:
.L13:
	.loc 1 222 0
	mov.n	a2, a10
.LVL35:
	retw.n
.LVL36:
.L14:
	.loc 1 223 0
	mov.n	a2, a10
.LVL37:
	retw.n
.LVL38:
.L15:
	.loc 1 226 0
	mov.n	a2, a10
.LVL39:
	retw.n
.LVL40:
.L16:
	.loc 1 227 0
	mov.n	a2, a10
.LVL41:
	.loc 1 231 0
	retw.n
.LFE13:
	.size	x509_write_name, .-x509_write_name
	.section	.text.x509_write_extension,"ax",@progbits
	.align	4
	.type	x509_write_extension, @function
x509_write_extension:
.LFB16:
	.loc 1 288 0
.LVL42:
	entry	sp, 32
.LCFI2:
.LVL43:
	.loc 1 292 0
	l32i.n	a12, a4, 20
	l32i.n	a13, a4, 16
	addi.n	a13, a13, -1
	addi.n	a12, a12, 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_raw_buffer
.LVL44:
	mov.n	a5, a10
.LVL45:
	bltz	a10, .L20
.LVL46:
	.loc 1 294 0 discriminator 2
	l32i.n	a12, a4, 16
	addi.n	a12, a12, -1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL47:
	bltz	a10, .L21
	add.n	a5, a10, a5
.LVL48:
	.loc 1 295 0 discriminator 2
	movi.n	a12, 4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL49:
	call8	mbedtls_asn1_write_tag
.LVL50:
	bltz	a10, .L22
	add.n	a5, a10, a5
.LVL51:
	.loc 1 297 0 discriminator 2
	l32i.n	a8, a4, 20
	l8ui	a8, a8, 0
	beqz.n	a8, .L19
	.loc 1 299 0
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a2
.LVL52:
	call8	mbedtls_asn1_write_bool
.LVL53:
	bltz	a10, .L23
	.loc 1 299 0 is_stmt 0 discriminator 2
	add.n	a5, a5, a10
.LVL54:
.L19:
	.loc 1 302 0 is_stmt 1
	l32i.n	a13, a4, 4
	l32i.n	a12, a4, 8
	mov.n	a11, a3
	mov.n	a10, a2
.LVL55:
	call8	mbedtls_asn1_write_raw_buffer
.LVL56:
	bltz	a10, .L24
	.loc 1 302 0 is_stmt 0 discriminator 2
	add.n	a5, a10, a5
.LVL57:
	.loc 1 304 0 is_stmt 1 discriminator 2
	l32i.n	a12, a4, 4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL58:
	call8	mbedtls_asn1_write_len
.LVL59:
	bltz	a10, .L25
	add.n	a5, a10, a5
.LVL60:
	.loc 1 305 0 discriminator 2
	movi.n	a12, 6
	mov.n	a11, a3
	mov.n	a10, a2
.LVL61:
	call8	mbedtls_asn1_write_tag
.LVL62:
	bltz	a10, .L26
	add.n	a5, a10, a5
.LVL63:
	.loc 1 307 0 discriminator 2
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
.LVL64:
	call8	mbedtls_asn1_write_len
.LVL65:
	bltz	a10, .L27
	add.n	a5, a10, a5
.LVL66:
	.loc 1 308 0 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a2
.LVL67:
	call8	mbedtls_asn1_write_tag
.LVL68:
	bltz	a10, .L28
	add.n	a2, a10, a5
.LVL69:
	.loc 1 311 0 discriminator 2
	retw.n
.LVL70:
.L20:
	.loc 1 292 0
	mov.n	a2, a10
.LVL71:
	retw.n
.LVL72:
.L21:
	.loc 1 294 0
	mov.n	a2, a10
.LVL73:
	retw.n
.LVL74:
.L22:
	.loc 1 295 0
	mov.n	a2, a10
.LVL75:
	retw.n
.LVL76:
.L23:
	.loc 1 299 0
	mov.n	a2, a10
.LVL77:
	retw.n
.LVL78:
.L24:
	.loc 1 302 0
	mov.n	a2, a10
.LVL79:
	retw.n
.LVL80:
.L25:
	.loc 1 304 0
	mov.n	a2, a10
.LVL81:
	retw.n
.LVL82:
.L26:
	.loc 1 305 0
	mov.n	a2, a10
.LVL83:
	retw.n
.LVL84:
.L27:
	.loc 1 307 0
	mov.n	a2, a10
.LVL85:
	retw.n
.LVL86:
.L28:
	.loc 1 308 0
	mov.n	a2, a10
.LVL87:
	.loc 1 312 0
	retw.n
.LFE16:
	.size	x509_write_extension, .-x509_write_extension
	.section	.text.mbedtls_x509_string_to_names,"ax",@progbits
	.literal_position
	.literal .LC3, -10368
	.literal .LC4, -9088
	.literal .LC5, -8448
	.align	4
	.global	mbedtls_x509_string_to_names
	.type	mbedtls_x509_string_to_names, @function
mbedtls_x509_string_to_names:
.LFB11:
	.loc 1 90 0
.LVL88:
	entry	sp, 288
.LCFI3:
.LVL89:
	.loc 1 93 0
	mov.n	a10, a3
	call8	strlen
.LVL90:
	add.n	a5, a3, a10
.LVL91:
	.loc 1 100 0
	mov.n	a10, a2
	call8	mbedtls_asn1_free_named_data_list
.LVL92:
	.loc 1 92 0
	mov.n	a4, a3
	.loc 1 97 0
	mov.n	a6, sp
.LVL93:
	.loc 1 95 0
	movi.n	a8, 1
	.loc 1 94 0
	movi.n	a7, 0
	.loc 1 102 0
	j	.L30
.LVL94:
.L40:
	.loc 1 104 0
	beqz.n	a8, .L31
	.loc 1 104 0 is_stmt 0 discriminator 1
	l8ui	a10, a4, 0
	movi.n	a9, 0x3d
	bne	a10, a9, .L31
	.loc 1 106 0 is_stmt 1
	sub	a11, a4, a3
	mov.n	a10, a3
	call8	x509_at_oid_from_name
.LVL95:
	mov.n	a7, a10
.LVL96:
	beqz.n	a10, .L41
	.loc 1 112 0
	addi.n	a3, a4, 1
.LVL97:
	.loc 1 114 0
	mov.n	a6, sp
.LVL98:
	.loc 1 113 0
	movi.n	a8, 0
.LVL99:
.L31:
	.loc 1 117 0
	bnez.n	a8, .L33
	.loc 1 117 0 is_stmt 0 discriminator 1
	l8ui	a10, a4, 0
	movi.n	a9, 0x5c
	bne	a10, a9, .L33
	.loc 1 117 0 discriminator 2
	beq	a4, a5, .L33
	.loc 1 119 0 is_stmt 1
	addi.n	a9, a4, 1
.LVL100:
	.loc 1 122 0
	beq	a5, a9, .L42
	.loc 1 122 0 is_stmt 0 discriminator 1
	l8ui	a10, a4, 1
	movi.n	a4, 0x2c
	bne	a10, a4, .L43
	.loc 1 119 0 is_stmt 1
	mov.n	a4, a9
	j	.L34
.LVL101:
.L33:
	.loc 1 128 0
	bnez.n	a8, .L34
	.loc 1 128 0 is_stmt 0 discriminator 1
	l8ui	a10, a4, 0
	movi.n	a9, 0x2c
	beq	a10, a9, .L35
	.loc 1 128 0 discriminator 2
	bne	a4, a5, .L34
.L35:
	.loc 1 130 0 is_stmt 1
	mov.n	a10, a7
	call8	strlen
.LVL102:
	sub	a14, a6, sp
	mov.n	a13, sp
	mov.n	a12, a10
	mov.n	a11, a7
	mov.n	a10, a2
	call8	mbedtls_asn1_store_named_data
.LVL103:
	bnez.n	a10, .L36
	j	.L44
.LVL104:
.L38:
	.loc 1 138 0
	addi.n	a4, a4, 1
.LVL105:
.L36:
	.loc 1 137 0
	bgeu	a4, a5, .L37
	.loc 1 137 0 is_stmt 0 discriminator 1
	l8ui	a3, a4, 1
	beqi	a3, 32, .L38
.L37:
	.loc 1 140 0 is_stmt 1
	addi.n	a3, a4, 1
.LVL106:
	.loc 1 141 0
	movi.n	a8, 1
.LVL107:
.L34:
	.loc 1 144 0
	bnez.n	a8, .L39
	.loc 1 144 0 is_stmt 0 discriminator 1
	addi.n	a9, a4, 1
	beq	a3, a9, .L39
	.loc 1 146 0 is_stmt 1
	addi.n	a9, a6, 1
.LVL108:
	l8ui	a10, a4, 0
	s8i	a10, a6, 0
	.loc 1 148 0
	sub	a6, a9, sp
	beqi	a6, 256, .L45
	.loc 1 146 0
	mov.n	a6, a9
.LVL109:
.L39:
	.loc 1 155 0
	addi.n	a4, a4, 1
.LVL110:
.L30:
	.loc 1 102 0
	bgeu	a5, a4, .L40
	.loc 1 91 0
	movi.n	a2, 0
.LVL111:
	retw.n
.LVL112:
.L41:
	.loc 1 108 0
	l32r	a2, .LC5
.LVL113:
	retw.n
.LVL114:
.L42:
	.loc 1 124 0
	l32r	a2, .LC4
.LVL115:
	retw.n
.LVL116:
.L43:
	l32r	a2, .LC4
.LVL117:
	retw.n
.LVL118:
.L44:
	.loc 1 134 0
	l32r	a2, .LC3
.LVL119:
	retw.n
.LVL120:
.L45:
	.loc 1 150 0
	l32r	a2, .LC4
.LVL121:
	.loc 1 161 0
	retw.n
.LFE11:
	.size	mbedtls_x509_string_to_names, .-mbedtls_x509_string_to_names
	.section	.text.mbedtls_x509_set_extension,"ax",@progbits
	.literal_position
	.literal .LC6, -10368
	.align	4
	.global	mbedtls_x509_set_extension
	.type	mbedtls_x509_set_extension, @function
mbedtls_x509_set_extension:
.LFB12:
	.loc 1 168 0
.LVL122:
	entry	sp, 32
.LCFI4:
	.loc 1 171 0
	addi.n	a14, a7, 1
	movi.n	a13, 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_store_named_data
.LVL123:
	beqz.n	a10, .L48
	.loc 1 177 0
	l32i.n	a2, a10, 20
.LVL124:
	s8i	a5, a2, 0
	.loc 1 178 0
	l32i.n	a10, a10, 20
.LVL125:
	mov.n	a12, a7
	mov.n	a11, a6
	addi.n	a10, a10, 1
	call8	memcpy
.LVL126:
	.loc 1 180 0
	movi.n	a2, 0
	retw.n
.LVL127:
.L48:
	.loc 1 174 0
	l32r	a2, .LC6
.LVL128:
	.loc 1 181 0
	retw.n
.LFE12:
	.size	mbedtls_x509_set_extension, .-mbedtls_x509_set_extension
	.section	.text.mbedtls_x509_write_names,"ax",@progbits
	.align	4
	.global	mbedtls_x509_write_names
	.type	mbedtls_x509_write_names, @function
mbedtls_x509_write_names:
.LFB14:
	.loc 1 235 0
.LVL129:
	entry	sp, 32
.LCFI5:
.LVL130:
	.loc 1 237 0
	movi.n	a5, 0
	.loc 1 240 0
	j	.L50
.LVL131:
.L52:
	.loc 1 242 0
	l32i.n	a15, a4, 16
	l32i.n	a14, a4, 20
	l32i.n	a13, a4, 4
	l32i.n	a12, a4, 8
	mov.n	a11, a3
	mov.n	a10, a2
	call8	x509_write_name
.LVL132:
	bltz	a10, .L53
	.loc 1 242 0 is_stmt 0 discriminator 2
	add.n	a5, a5, a10
.LVL133:
	.loc 1 245 0 is_stmt 1 discriminator 2
	l32i.n	a4, a4, 24
.LVL134:
.L50:
	.loc 1 240 0
	bnez.n	a4, .L52
	.loc 1 248 0
	mov.n	a12, a5
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL135:
	bltz	a10, .L54
	.loc 1 248 0 is_stmt 0 discriminator 2
	add.n	a5, a10, a5
.LVL136:
	.loc 1 249 0 is_stmt 1 discriminator 2
	movi.n	a12, 0x30
	mov.n	a11, a3
	mov.n	a10, a2
.LVL137:
	call8	mbedtls_asn1_write_tag
.LVL138:
	bltz	a10, .L55
	add.n	a2, a10, a5
.LVL139:
	.loc 1 252 0 discriminator 2
	retw.n
.LVL140:
.L53:
	.loc 1 242 0
	mov.n	a2, a10
.LVL141:
	retw.n
.LVL142:
.L54:
	.loc 1 248 0
	mov.n	a2, a10
.LVL143:
	retw.n
.LVL144:
.L55:
	.loc 1 249 0
	mov.n	a2, a10
.LVL145:
	.loc 1 253 0
	retw.n
.LFE14:
	.size	mbedtls_x509_write_names, .-mbedtls_x509_write_names
	.section	.text.mbedtls_x509_write_sig,"ax",@progbits
	.align	4
	.global	mbedtls_x509_write_sig
	.type	mbedtls_x509_write_sig, @function
mbedtls_x509_write_sig:
.LFB15:
	.loc 1 258 0
.LVL146:
	entry	sp, 32
.LCFI6:
.LVL147:
	.loc 1 262 0
	l32i.n	a10, a2, 0
	bltu	a10, a3, .L58
	.loc 1 262 0 is_stmt 0 discriminator 1
	sub	a9, a10, a3
	bltu	a9, a7, .L59
.LVL148:
	.loc 1 266 0 is_stmt 1
	sub	a10, a10, a7
	s32i.n	a10, a2, 0
	.loc 1 267 0
	mov.n	a12, a7
	mov.n	a11, a6
	call8	memcpy
.LVL149:
	.loc 1 269 0
	l32i.n	a8, a2, 0
	sub	a6, a8, a3
.LVL150:
	blti	a6, 1, .L60
	.loc 1 272 0
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 0
	movi.n	a6, 0
	s8i	a6, a8, 0
	.loc 1 273 0
	addi.n	a7, a7, 1
.LVL151:
	.loc 1 275 0
	mov.n	a12, a7
	mov.n	a11, a3
	mov.n	a10, a2
	call8	mbedtls_asn1_write_len
.LVL152:
	bltz	a10, .L61
	.loc 1 275 0 is_stmt 0 discriminator 2
	add.n	a7, a10, a7
.LVL153:
	.loc 1 276 0 is_stmt 1 discriminator 2
	movi.n	a12, 3
	mov.n	a11, a3
	mov.n	a10, a2
.LVL154:
	call8	mbedtls_asn1_write_tag
.LVL155:
	bltz	a10, .L62
	add.n	a7, a10, a7
.LVL156:
	.loc 1 280 0 discriminator 2
	movi.n	a14, 0
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
.LVL157:
	call8	mbedtls_asn1_write_algorithm_identifier
.LVL158:
	bltz	a10, .L63
	add.n	a2, a10, a7
.LVL159:
	.loc 1 283 0 discriminator 2
	retw.n
.LVL160:
.L58:
	.loc 1 263 0
	movi	a2, -0x6c
.LVL161:
	retw.n
.LVL162:
.L59:
	movi	a2, -0x6c
.LVL163:
	retw.n
.LVL164:
.L60:
	.loc 1 270 0
	movi	a2, -0x6c
.LVL165:
	retw.n
.LVL166:
.L61:
	.loc 1 275 0
	mov.n	a2, a10
.LVL167:
	retw.n
.LVL168:
.L62:
	.loc 1 276 0
	mov.n	a2, a10
.LVL169:
	retw.n
.LVL170:
.L63:
	.loc 1 280 0
	mov.n	a2, a10
.LVL171:
	.loc 1 284 0
	retw.n
.LFE15:
	.size	mbedtls_x509_write_sig, .-mbedtls_x509_write_sig
	.section	.text.mbedtls_x509_write_extensions,"ax",@progbits
	.align	4
	.global	mbedtls_x509_write_extensions
	.type	mbedtls_x509_write_extensions, @function
mbedtls_x509_write_extensions:
.LFB17:
	.loc 1 326 0
.LVL172:
	entry	sp, 32
.LCFI7:
.LVL173:
	.loc 1 328 0
	movi.n	a5, 0
	.loc 1 331 0
	j	.L65
.LVL174:
.L67:
	.loc 1 333 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	x509_write_extension
.LVL175:
	bltz	a10, .L68
	.loc 1 333 0 is_stmt 0 discriminator 2
	add.n	a5, a5, a10
.LVL176:
	.loc 1 334 0 is_stmt 1 discriminator 2
	l32i.n	a4, a4, 24
.LVL177:
.L65:
	.loc 1 331 0
	bnez.n	a4, .L67
	.loc 1 337 0
	mov.n	a2, a5
.LVL178:
	retw.n
.LVL179:
.L68:
	.loc 1 333 0
	mov.n	a2, a10
.LVL180:
	.loc 1 338 0
	retw.n
.LFE17:
	.size	mbedtls_x509_write_extensions, .-mbedtls_x509_write_extensions
	.section	.rodata.str1.4
	.align	4
.LC7:
	.string	"CN"
	.align	4
.LC8:
	.string	"U\004\003"
	.align	4
.LC9:
	.string	"commonName"
	.align	4
.LC10:
	.string	"C"
	.align	4
.LC11:
	.string	"U\004\006"
	.align	4
.LC12:
	.string	"countryName"
	.align	4
.LC13:
	.string	"O"
	.align	4
.LC14:
	.string	"U\004\n"
	.align	4
.LC15:
	.string	"organizationName"
	.align	4
.LC16:
	.string	"L"
	.align	4
.LC17:
	.string	"U\004\007"
	.align	4
.LC18:
	.string	"locality"
	.align	4
.LC19:
	.string	"R"
	.align	4
.LC20:
	.string	"OU"
	.align	4
.LC21:
	.string	"U\004\013"
	.align	4
.LC22:
	.string	"organizationalUnitName"
	.align	4
.LC23:
	.string	"ST"
	.align	4
.LC24:
	.string	"U\004\b"
	.align	4
.LC25:
	.string	"stateOrProvinceName"
	.align	4
.LC26:
	.string	"emailAddress"
	.align	4
.LC27:
	.string	"serialNumber"
	.align	4
.LC28:
	.string	"U\004\005"
	.align	4
.LC29:
	.string	"postalAddress"
	.align	4
.LC30:
	.string	"U\004\020"
	.align	4
.LC31:
	.string	"postalCode"
	.align	4
.LC32:
	.string	"U\004\021"
	.align	4
.LC33:
	.string	"dnQualifier"
	.align	4
.LC34:
	.string	"U\004."
	.align	4
.LC35:
	.string	"title"
	.align	4
.LC36:
	.string	"U\004\f"
	.align	4
.LC37:
	.string	"surName"
	.align	4
.LC38:
	.string	"U\004\004"
	.align	4
.LC39:
	.string	"SN"
	.align	4
.LC40:
	.string	"givenName"
	.align	4
.LC41:
	.string	"U\004*"
	.align	4
.LC42:
	.string	"GN"
	.align	4
.LC43:
	.string	"initials"
	.align	4
.LC44:
	.string	"U\004+"
	.align	4
.LC45:
	.string	"pseudonym"
	.align	4
.LC46:
	.string	"U\004A"
	.align	4
.LC47:
	.string	"generationQualifier"
	.align	4
.LC48:
	.string	"U\004,"
	.align	4
.LC49:
	.string	"domainComponent"
	.align	4
.LC50:
	.string	"\t\222&\211\223\362,d\001\031"
	.align	4
.LC51:
	.string	"DC"
	.section	.rodata.x509_attrs,"a",@progbits
	.align	4
	.type	x509_attrs, @object
	.size	x509_attrs, 348
x509_attrs:
	.word	.LC7
	.word	2
	.word	.LC8
	.word	.LC9
	.word	10
	.word	.LC8
	.word	.LC10
	.word	1
	.word	.LC11
	.word	.LC12
	.word	11
	.word	.LC11
	.word	.LC13
	.word	1
	.word	.LC14
	.word	.LC15
	.word	16
	.word	.LC14
	.word	.LC16
	.word	1
	.word	.LC17
	.word	.LC18
	.word	8
	.word	.LC17
	.word	.LC19
	.word	1
	.word	.LC1
	.word	.LC20
	.word	2
	.word	.LC21
	.word	.LC22
	.word	22
	.word	.LC21
	.word	.LC23
	.word	2
	.word	.LC24
	.word	.LC25
	.word	19
	.word	.LC24
	.word	.LC26
	.word	12
	.word	.LC1
	.word	.LC27
	.word	12
	.word	.LC28
	.word	.LC29
	.word	13
	.word	.LC30
	.word	.LC31
	.word	10
	.word	.LC32
	.word	.LC33
	.word	11
	.word	.LC34
	.word	.LC35
	.word	5
	.word	.LC36
	.word	.LC37
	.word	7
	.word	.LC38
	.word	.LC39
	.word	2
	.word	.LC38
	.word	.LC40
	.word	9
	.word	.LC41
	.word	.LC42
	.word	2
	.word	.LC41
	.word	.LC43
	.word	8
	.word	.LC44
	.word	.LC45
	.word	9
	.word	.LC46
	.word	.LC47
	.word	19
	.word	.LC48
	.word	.LC49
	.word	15
	.word	.LC50
	.word	.LC51
	.word	2
	.word	.LC50
	.word	0
	.word	0
	.word	0
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI0-.LFB10
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI2-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI3-.LFB11
	.byte	0xe
	.uleb128 0x120
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI5-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI6-.LFB15
	.byte	0xe
	.uleb128 0x20
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
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9f8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xc
	.4byte	.LASF52
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF11
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x89
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x96
	.uleb128 0x6
	.4byte	0x89
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0xc
	.byte	0x2
	.byte	0x86
	.4byte	0xca
	.uleb128 0x8
	.string	"tag"
	.byte	0x2
	.byte	0x88
	.4byte	0x25
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x2
	.byte	0x89
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x8
	.string	"p"
	.byte	0x2
	.byte	0x8a
	.4byte	0x7d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8c
	.4byte	0x9b
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x20
	.byte	0x2
	.byte	0xa6
	.4byte	0x112
	.uleb128 0x8
	.string	"oid"
	.byte	0x2
	.byte	0xa8
	.4byte	0xca
	.byte	0
	.uleb128 0x8
	.string	"val"
	.byte	0x2
	.byte	0xa9
	.4byte	0xca
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0xaa
	.4byte	0x112
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x2
	.byte	0xab
	.4byte	0x4c
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xad
	.4byte	0xd5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x129
	.uleb128 0x6
	.4byte	0x4c
	.uleb128 0xa
	.byte	0xc
	.byte	0x1
	.byte	0x24
	.4byte	0x15b
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x25
	.4byte	0x90
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x26
	.4byte	0x2c
	.byte	0x4
	.uleb128 0x8
	.string	"oid"
	.byte	0x1
	.byte	0x27
	.4byte	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x1
	.byte	0x28
	.4byte	0x12e
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4d
	.4byte	0x90
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c1
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4d
	.4byte	0x90
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4d
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"cur"
	.byte	0x1
	.byte	0x4f
	.4byte	0x1c1
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x962
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c7
	.uleb128 0x6
	.4byte	0x15b
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0xc3
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x367
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0xc3
	.4byte	0x367
	.4byte	.LLST2
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc3
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"oid"
	.byte	0x1
	.byte	0xc4
	.4byte	0x90
	.4byte	.LLST3
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc4
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc5
	.4byte	0x123
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0xc5
	.4byte	0x2c
	.4byte	.LLST4
	.uleb128 0xe
	.string	"ret"
	.byte	0x1
	.byte	0xc7
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.byte	0xc8
	.4byte	0x2c
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LVL8
	.4byte	0x96d
	.4byte	0x278
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL9
	.4byte	0x978
	.4byte	0x29e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL12
	.4byte	0x983
	.4byte	0x2c4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL14
	.4byte	0x98e
	.4byte	0x2ea
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL17
	.4byte	0x999
	.4byte	0x30a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL20
	.4byte	0x9a4
	.4byte	0x32a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.4byte	.LVL23
	.4byte	0x999
	.4byte	0x34a
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL26
	.4byte	0x9a4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x11e
	.4byte	0x25
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d3
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x367
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x11e
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"ext"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x4d3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.2byte	0x121
	.4byte	0x25
	.4byte	.LLST8
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.2byte	0x122
	.4byte	0x2c
	.4byte	.LLST9
	.uleb128 0x12
	.4byte	.LVL44
	.4byte	0x9af
	.4byte	0x3eb
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL47
	.4byte	0x999
	.4byte	0x405
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL50
	.4byte	0x9a4
	.4byte	0x424
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x12
	.4byte	.LVL53
	.4byte	0x9ba
	.4byte	0x443
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x12
	.4byte	.LVL56
	.4byte	0x9af
	.4byte	0x45d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL59
	.4byte	0x999
	.4byte	0x477
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL62
	.4byte	0x9a4
	.4byte	0x496
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x12
	.4byte	.LVL65
	.4byte	0x999
	.4byte	0x4b6
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL68
	.4byte	0x9a4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x118
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.byte	0x59
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x607
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x59
	.4byte	0x607
	.4byte	.LLST10
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x59
	.4byte	0x90
	.4byte	.LLST11
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0x5b
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0x5c
	.4byte	0x90
	.4byte	.LLST12
	.uleb128 0xe
	.string	"c"
	.byte	0x1
	.byte	0x5c
	.4byte	0x90
	.4byte	.LLST13
	.uleb128 0x1a
	.string	"end"
	.byte	0x1
	.byte	0x5d
	.4byte	0x90
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xe
	.string	"oid"
	.byte	0x1
	.byte	0x5e
	.4byte	0x90
	.4byte	.LLST14
	.uleb128 0x1b
	.4byte	.LASF25
	.byte	0x1
	.byte	0x5f
	.4byte	0x25
	.4byte	.LLST15
	.uleb128 0x1c
	.4byte	.LASF26
	.byte	0x1
	.byte	0x60
	.4byte	0x60d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0xe
	.string	"d"
	.byte	0x1
	.byte	0x61
	.4byte	0x83
	.4byte	.LLST16
	.uleb128 0x1d
	.4byte	.LASF54
	.byte	0x1
	.byte	0x9e
	.uleb128 0x12
	.4byte	.LVL90
	.4byte	0x9c5
	.4byte	0x598
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL92
	.4byte	0x9d0
	.4byte	0x5ac
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL95
	.4byte	0x166
	.4byte	0x5c9
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.4byte	.LVL102
	.4byte	0x9c5
	.4byte	0x5dd
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL103
	.4byte	0x9dc
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x8
	.byte	0x76
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x120
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4d3
	.uleb128 0x1e
	.4byte	0x89
	.4byte	0x61d
	.uleb128 0x1f
	.4byte	0x6f
	.byte	0xff
	.byte	0
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa6
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d7
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa6
	.4byte	0x607
	.4byte	.LLST17
	.uleb128 0x20
	.string	"oid"
	.byte	0x1
	.byte	0xa6
	.4byte	0x90
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa6
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0xa7
	.4byte	0x25
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.string	"val"
	.byte	0x1
	.byte	0xa7
	.4byte	0x123
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0xa7
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x57
	.uleb128 0xe
	.string	"cur"
	.byte	0x1
	.byte	0xa9
	.4byte	0x4d3
	.4byte	.LLST18
	.uleb128 0x12
	.4byte	.LVL123
	.4byte	0x9dc
	.4byte	0x6c0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x77
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.4byte	.LVL126
	.4byte	0x9e7
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0xe9
	.4byte	0x25
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79b
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0xe9
	.4byte	0x367
	.4byte	.LLST19
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0xe9
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0xea
	.4byte	0x4d3
	.4byte	.LLST20
	.uleb128 0xe
	.string	"ret"
	.byte	0x1
	.byte	0xec
	.4byte	0x25
	.4byte	.LLST21
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.byte	0xed
	.4byte	0x2c
	.4byte	.LLST22
	.uleb128 0x1a
	.string	"cur"
	.byte	0x1
	.byte	0xee
	.4byte	0x4d3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LVL132
	.4byte	0x1cc
	.4byte	0x75e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL135
	.4byte	0x999
	.4byte	0x77e
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL138
	.4byte	0x9a4
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0xff
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ab
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0xff
	.4byte	0x367
	.4byte	.LLST23
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0xff
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"oid"
	.byte	0x1
	.2byte	0x100
	.4byte	0x90
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x100
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x14
	.string	"sig"
	.byte	0x1
	.2byte	0x101
	.4byte	0x7d
	.4byte	.LLST24
	.uleb128 0x21
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x101
	.4byte	0x2c
	.4byte	.LLST25
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.2byte	0x103
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.2byte	0x104
	.4byte	0x2c
	.4byte	.LLST27
	.uleb128 0x12
	.4byte	.LVL149
	.4byte	0x9e7
	.4byte	0x844
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL152
	.4byte	0x999
	.4byte	0x864
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	.LVL155
	.4byte	0x9a4
	.4byte	0x883
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0xf
	.4byte	.LVL158
	.4byte	0x9f0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x144
	.4byte	0x25
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93c
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.2byte	0x144
	.4byte	0x367
	.4byte	.LLST28
	.uleb128 0x15
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x144
	.4byte	0x7d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x21
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x145
	.4byte	0x4d3
	.4byte	.LLST29
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.2byte	0x147
	.4byte	0x25
	.4byte	.LLST30
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.2byte	0x148
	.4byte	0x2c
	.4byte	.LLST31
	.uleb128 0x23
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x149
	.4byte	0x4d3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xf
	.4byte	.LVL175
	.4byte	0x36d
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	0x15b
	.4byte	0x94c
	.uleb128 0x1f
	.4byte	0x6f
	.byte	0x1c
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2c
	.4byte	0x95d
	.uleb128 0x5
	.byte	0x3
	.4byte	x509_attrs
	.uleb128 0x6
	.4byte	0x93c
	.uleb128 0x24
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x4
	.byte	0x23
	.uleb128 0x24
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x4
	.byte	0x16
	.uleb128 0x24
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x5
	.byte	0xb6
	.uleb128 0x24
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0xa7
	.uleb128 0x24
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.byte	0x6f
	.uleb128 0x24
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0x2e
	.uleb128 0x24
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.byte	0x3a
	.uleb128 0x24
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0x48
	.uleb128 0x24
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x5
	.byte	0x8d
	.uleb128 0x24
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x4
	.byte	0x21
	.uleb128 0x25
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x160
	.uleb128 0x24
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x5
	.byte	0xe7
	.uleb128 0x26
	.4byte	.LASF55
	.4byte	.LASF55
	.uleb128 0x24
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x5
	.byte	0x7f
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x8
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE10
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
	.2byte	0x6
	.byte	0x3
	.4byte	x509_attrs
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
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
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL36
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
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL13
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL32
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL15
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL34
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL42
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
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL72
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL88
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
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL121
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL88
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL89
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL89
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL101
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL118
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL120
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL109
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL120
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL128
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL129
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL140
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
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL145
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL131
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL140
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL146
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL168
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
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL171
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL146
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL150
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL164
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL146
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL166
	.4byte	.LVL168
	.2byte	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL158
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL166
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL172
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL180
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL172
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL174
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL175
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL179
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"x509_write_name"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF8:
	.string	"sizetype"
.LASF37:
	.string	"x509_attrs"
.LASF55:
	.string	"memcpy"
.LASF25:
	.string	"in_tag"
.LASF38:
	.string	"strncmp"
.LASF24:
	.string	"head"
.LASF49:
	.string	"mbedtls_asn1_store_named_data"
.LASF31:
	.string	"mbedtls_x509_write_names"
.LASF30:
	.string	"val_len"
.LASF44:
	.string	"mbedtls_asn1_write_tag"
.LASF33:
	.string	"mbedtls_x509_write_sig"
.LASF52:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/x509_create.c"
.LASF17:
	.string	"name_len"
.LASF39:
	.string	"memcmp"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF40:
	.string	"mbedtls_asn1_write_ia5_string"
.LASF41:
	.string	"mbedtls_asn1_write_printable_string"
.LASF23:
	.string	"x509_write_extension"
.LASF16:
	.string	"name"
.LASF54:
	.string	"exit"
.LASF13:
	.string	"mbedtls_asn1_named_data"
.LASF3:
	.string	"unsigned char"
.LASF18:
	.string	"x509_attr_descriptor_t"
.LASF28:
	.string	"mbedtls_x509_set_extension"
.LASF2:
	.string	"signed char"
.LASF45:
	.string	"mbedtls_asn1_write_raw_buffer"
.LASF6:
	.string	"long long unsigned int"
.LASF27:
	.string	"mbedtls_x509_string_to_names"
.LASF0:
	.string	"unsigned int"
.LASF36:
	.string	"cur_ext"
.LASF29:
	.string	"critical"
.LASF12:
	.string	"mbedtls_asn1_buf"
.LASF21:
	.string	"start"
.LASF22:
	.string	"oid_len"
.LASF35:
	.string	"mbedtls_x509_write_extensions"
.LASF10:
	.string	"char"
.LASF47:
	.string	"strlen"
.LASF1:
	.string	"short unsigned int"
.LASF46:
	.string	"mbedtls_asn1_write_bool"
.LASF26:
	.string	"data"
.LASF19:
	.string	"x509_at_oid_from_name"
.LASF9:
	.string	"long unsigned int"
.LASF34:
	.string	"size"
.LASF53:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\mbedtls"
.LASF50:
	.string	"mbedtls_asn1_write_algorithm_identifier"
.LASF48:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF43:
	.string	"mbedtls_asn1_write_len"
.LASF51:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF15:
	.string	"next_merged"
.LASF42:
	.string	"mbedtls_asn1_write_oid"
.LASF14:
	.string	"next"
.LASF32:
	.string	"first"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
