	.file	"gdbstub.c"
	.text
.Ltext0:
	.section	.text.gdbRecvChar,"ax",@progbits
	.literal_position
	.literal .LC1, 1072955420
	.literal .LC2, 1072955392
	.align	4
	.type	gdbRecvChar, @function
gdbRecvChar:
.LFB6:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/gdbstub.c"
	.loc 1 37 0
	entry	sp, 32
.LCFI0:
.L2:
.LBB2:
	.loc 1 39 0 discriminator 1
	l32r	a8, .LC1
	memw
	l32i.n	a8, a8, 0
.LBE2:
	extui	a8, a8, 0, 8
	beqz.n	a8, .L2
.LBB3:
	.loc 1 40 0
	l32r	a2, .LC2
	memw
	l32i.n	a2, a2, 0
.LVL0:
.LBE3:
	.loc 1 42 0
	retw.n
.LFE6:
	.size	gdbRecvChar, .-gdbRecvChar
	.section	.text.gdbSendChar,"ax",@progbits
	.literal_position
	.literal .LC3, 1072955420
	.literal .LC4, 1072955392
	.align	4
	.type	gdbSendChar, @function
gdbSendChar:
.LFB7:
	.loc 1 45 0
.LVL1:
	entry	sp, 32
.LCFI1:
.L4:
.LBB4:
	.loc 1 46 0 discriminator 1
	l32r	a8, .LC3
	memw
	l32i.n	a8, a8, 0
.LBE4:
	extui	a8, a8, 16, 8
	movi	a9, 0x7d
	bltu	a9, a8, .L4
.LBB5:
	.loc 1 47 0
	l32r	a8, .LC4
	memw
	s32i.n	a2, a8, 0
	retw.n
.LBE5:
.LFE7:
	.size	gdbSendChar, .-gdbSendChar
	.section	.text.gdbPacketStart,"ax",@progbits
	.literal_position
	.literal .LC5, chsum
	.align	4
	.type	gdbPacketStart, @function
gdbPacketStart:
.LFB8:
	.loc 1 51 0
	entry	sp, 32
.LCFI2:
	.loc 1 52 0
	movi.n	a9, 0
	l32r	a8, .LC5
	s8i	a9, a8, 0
	.loc 1 53 0
	movi.n	a10, 0x24
	call8	gdbSendChar
.LVL2:
	retw.n
.LFE8:
	.size	gdbPacketStart, .-gdbPacketStart
	.section	.text.gdbPacketChar,"ax",@progbits
	.literal_position
	.literal .LC6, chsum
	.align	4
	.type	gdbPacketChar, @function
gdbPacketChar:
.LFB9:
	.loc 1 57 0
.LVL3:
	entry	sp, 32
.LCFI3:
	.loc 1 58 0
	addi	a9, a2, -35
	movi.n	a8, 1
	extui	a9, a9, 0, 8
	bltui	a9, 2, .L7
	movi.n	a8, 0
.L7:
	extui	a9, a8, 0, 8
	addi	a10, a2, -125
	movi.n	a8, 0
	movi.n	a11, 1
	moveqz	a8, a11, a10
	or	a8, a8, a9
	bnez.n	a8, .L8
	.loc 1 58 0 is_stmt 0 discriminator 1
	movi.n	a8, 0x2a
	bne	a2, a8, .L9
.L8:
	.loc 1 59 0 is_stmt 1
	movi	a10, 0x7d
	call8	gdbSendChar
.LVL4:
	.loc 1 60 0
	movi.n	a8, 0x20
	xor	a2, a2, a8
.LVL5:
	extui	a2, a2, 0, 8
	mov.n	a10, a2
	call8	gdbSendChar
.LVL6:
	.loc 1 61 0
	l32r	a9, .LC6
	l8ui	a8, a9, 0
	add.n	a2, a2, a8
	addi	a2, a2, 125
	s8i	a2, a9, 0
	retw.n
.LVL7:
.L9:
	.loc 1 63 0
	mov.n	a10, a2
	call8	gdbSendChar
.LVL8:
	.loc 1 64 0
	l32r	a9, .LC6
	l8ui	a8, a9, 0
	add.n	a2, a2, a8
.LVL9:
	s8i	a2, a9, 0
	retw.n
.LFE9:
	.size	gdbPacketChar, .-gdbPacketChar
	.section	.text.gdbPacketStr,"ax",@progbits
	.align	4
	.type	gdbPacketStr, @function
gdbPacketStr:
.LFB10:
	.loc 1 69 0
.LVL10:
	entry	sp, 32
.LCFI4:
	.loc 1 70 0
	j	.L12
.L13:
	.loc 1 71 0
	call8	gdbPacketChar
.LVL11:
	.loc 1 72 0
	addi.n	a2, a2, 1
.LVL12:
.L12:
	.loc 1 70 0
	l8ui	a10, a2, 0
	bnez.n	a10, .L13
	.loc 1 74 0
	retw.n
.LFE10:
	.size	gdbPacketStr, .-gdbPacketStr
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC7:
	.string	"0123456789abcdef"
	.section	.text.gdbPacketHex,"ax",@progbits
	.literal_position
	.literal .LC8, .LC7
	.align	4
	.type	gdbPacketHex, @function
gdbPacketHex:
.LFB11:
	.loc 1 77 0
.LVL13:
	entry	sp, 64
.LCFI5:
	.loc 1 78 0
	movi.n	a12, 0x11
	l32r	a11, .LC8
	mov.n	a10, sp
	call8	memcpy
.LVL14:
	.loc 1 80 0
	j	.L15
.LVL15:
.L16:
	.loc 1 81 0 discriminator 3
	addi	a3, a3, -4
.LVL16:
	ssr	a3
	sra	a8, a2
	extui	a8, a8, 0, 4
	add.n	a8, sp, a8
	l8ui	a10, a8, 0
	call8	gdbPacketChar
.LVL17:
.L15:
	.loc 1 80 0 discriminator 1
	bgei	a3, 1, .L16
	.loc 1 83 0
	retw.n
.LFE11:
	.size	gdbPacketHex, .-gdbPacketHex
	.section	.text.gdbPacketEnd,"ax",@progbits
	.literal_position
	.literal .LC9, chsum
	.align	4
	.type	gdbPacketEnd, @function
gdbPacketEnd:
.LFB12:
	.loc 1 86 0
	entry	sp, 32
.LCFI6:
	.loc 1 87 0
	movi.n	a10, 0x23
	call8	gdbSendChar
.LVL18:
	.loc 1 88 0
	movi.n	a11, 8
	l32r	a8, .LC9
	l8ui	a10, a8, 0
	call8	gdbPacketHex
.LVL19:
	retw.n
.LFE12:
	.size	gdbPacketEnd, .-gdbPacketEnd
	.section	.text.gdbGetHexVal,"ax",@progbits
	.align	4
	.type	gdbGetHexVal, @function
gdbGetHexVal:
.LFB13:
	.loc 1 101 0
.LVL20:
	entry	sp, 32
.LCFI7:
	mov.n	a14, a2
.LVL21:
	.loc 1 106 0
	addi.n	a15, a3, 3
	movgez	a15, a3, a3
	srai	a15, a15, 2
.LVL22:
	.loc 1 107 0
	bnei	a3, -1, .L19
	movi.n	a15, 0x40
.LVL23:
.L19:
	.loc 1 104 0
	movi.n	a9, 0
	.loc 1 108 0
	mov.n	a12, a9
	j	.L20
.LVL24:
.L27:
	.loc 1 109 0
	l32i.n	a13, a14, 0
	l8ui	a8, a13, 0
.LVL25:
	.loc 1 110 0
	addi.n	a10, a13, 1
	s32i.n	a10, a14, 0
.LVL26:
	.loc 1 111 0
	addi	a10, a8, -48
	extui	a10, a10, 0, 8
	movi.n	a11, 9
	bltu	a11, a10, .L21
	.loc 1 112 0
	slli	a9, a9, 4
.LVL27:
	.loc 1 113 0
	addi	a8, a8, -48
.LVL28:
	or	a9, a8, a9
.LVL29:
	j	.L22
.LVL30:
.L21:
	.loc 1 114 0
	addi	a10, a8, -65
	extui	a10, a10, 0, 8
	bgeui	a10, 6, .L23
	.loc 1 115 0
	slli	a9, a9, 4
.LVL31:
	.loc 1 116 0
	addi	a8, a8, -55
.LVL32:
	or	a9, a8, a9
.LVL33:
	j	.L22
.LVL34:
.L23:
	.loc 1 117 0
	addi	a2, a8, -97
	extui	a2, a2, 0, 8
	bgeui	a2, 6, .L24
	.loc 1 118 0
	slli	a9, a9, 4
.LVL35:
	.loc 1 119 0
	addi	a8, a8, -87
.LVL36:
	or	a9, a8, a9
.LVL37:
	j	.L22
.LVL38:
.L24:
	.loc 1 120 0
	movi.n	a2, 0x23
	bne	a8, a2, .L25
	.loc 1 121 0
	bnei	a3, -1, .L29
	.loc 1 122 0
	s32i.n	a13, a14, 0
	.loc 1 123 0
	mov.n	a2, a9
	retw.n
.L25:
	.loc 1 127 0
	bnei	a3, -1, .L30
	.loc 1 128 0
	s32i.n	a13, a14, 0
	.loc 1 129 0
	mov.n	a2, a9
	retw.n
.LVL39:
.L22:
	.loc 1 108 0 discriminator 2
	addi.n	a12, a12, 1
.LVL40:
.L20:
	.loc 1 108 0 is_stmt 0 discriminator 1
	blt	a12, a15, .L27
	.loc 1 134 0 is_stmt 1
	mov.n	a2, a9
	retw.n
.LVL41:
.L29:
	.loc 1 125 0
	movi.n	a2, -1
	retw.n
.L30:
	.loc 1 131 0
	movi.n	a2, -2
	.loc 1 135 0
	retw.n
.LFE13:
	.size	gdbGetHexVal, .-gdbGetHexVal
	.section	.text.iswap,"ax",@progbits
	.align	4
	.type	iswap, @function
iswap:
.LFB14:
	.loc 1 138 0
.LVL42:
	entry	sp, 32
.LCFI8:
	.loc 1 140 0
	extui	a9, a2, 24, 8
.LVL43:
	.loc 1 141 0
	srai	a8, a2, 16
	slli	a8, a8, 8
	extui	a8, a8, 0, 16
	or	a8, a9, a8
.LVL44:
	.loc 1 142 0
	extui	a9, a2, 8, 8
	slli	a9, a9, 16
	or	a8, a8, a9
.LVL45:
	.loc 1 143 0
	slli	a2, a2, 24
.LVL46:
	.loc 1 145 0
	or	a2, a8, a2
.LVL47:
	retw.n
.LFE14:
	.size	iswap, .-iswap
	.section	.text.readbyte,"ax",@progbits
	.literal_position
	.literal .LC10, -536870912
	.literal .LC11, 1610612735
	.align	4
	.type	readbyte, @function
readbyte:
.LFB15:
	.loc 1 148 0
.LVL48:
	entry	sp, 32
.LCFI9:
	.loc 1 149 0
	movi.n	a8, -4
	and	a9, a2, a8
.LVL49:
	.loc 1 150 0
	l32r	a8, .LC10
	add.n	a8, a2, a8
	l32r	a10, .LC11
	bltu	a10, a8, .L34
	.loc 1 151 0
	l32i.n	a8, a9, 0
	extui	a2, a2, 0, 2
.LVL50:
	slli	a2, a2, 3
	ssr	a2
	sra	a2, a8
	extui	a2, a2, 0, 8
	retw.n
.LVL51:
.L34:
	.loc 1 150 0
	movi	a2, 0xff
.LVL52:
	.loc 1 152 0
	retw.n
.LFE15:
	.size	readbyte, .-readbyte
	.section	.text.dumpHwToRegfile,"ax",@progbits
	.literal_position
	.literal .LC12, gdbRegFile
	.literal .LC13, -559038737
	.align	4
	.type	dumpHwToRegfile, @function
dumpHwToRegfile:
.LFB16:
	.loc 1 215 0
.LVL53:
	entry	sp, 32
.LCFI10:
	.loc 1 217 0
	addi.n	a12, a2, 12
.LVL54:
	.loc 1 218 0
	l32i.n	a9, a2, 4
	l32r	a8, .LC12
	s32i.n	a9, a8, 0
.LVL55:
	.loc 1 219 0
	movi.n	a9, 0
	j	.L36
.LVL56:
.L37:
	.loc 1 219 0 is_stmt 0 discriminator 3
	slli	a8, a9, 2
	add.n	a10, a12, a8
	l32i.n	a10, a10, 0
	l32r	a11, .LC12
	add.n	a8, a11, a8
	s32i.n	a10, a8, 4
	addi.n	a9, a9, 1
.LVL57:
.L36:
	.loc 1 219 0 discriminator 1
	movi.n	a8, 0xf
	bge	a8, a9, .L37
	movi.n	a8, 0x10
	j	.L38
.LVL58:
.L39:
	.loc 1 220 0 is_stmt 1 discriminator 3
	l32r	a9, .LC12
	addx4	a9, a8, a9
	l32r	a10, .LC13
	s32i.n	a10, a9, 4
	addi.n	a8, a8, 1
.LVL59:
.L38:
	.loc 1 220 0 is_stmt 0 discriminator 1
	movi.n	a9, 0x3f
	bge	a9, a8, .L39
	.loc 1 221 0 is_stmt 1
	l32i	a9, a2, 88
	l32r	a8, .LC12
.LVL60:
	s32i	a9, a8, 260
	.loc 1 222 0
	l32i	a9, a2, 92
	s32i	a9, a8, 264
	.loc 1 223 0
	l32i	a9, a2, 96
	s32i	a9, a8, 268
	.loc 1 224 0
	l32i	a9, a2, 76
	s32i	a9, a8, 272
	.loc 1 226 0
	l32i	a9, a2, 76
	s32i	a9, a8, 272
	.loc 1 227 0
	movi.n	a9, 0
	s32i	a9, a8, 276
	.loc 1 228 0
	movi.n	a9, 1
	s32i	a9, a8, 280
	.loc 1 229 0
	l32r	a9, .LC13
	s32i	a9, a8, 284
	.loc 1 230 0
	s32i	a9, a8, 288
	.loc 1 231 0
	l32i.n	a10, a2, 8
	addi	a10, a10, -16
	s32i	a10, a8, 292
	.loc 1 232 0
	s32i	a9, a8, 296
	.loc 1 233 0
	s32i	a9, a8, 300
	.loc 1 234 0
	s32i	a9, a8, 304
	.loc 1 235 0
	s32i	a9, a8, 308
	.loc 1 236 0
	s32i	a9, a8, 312
	.loc 1 237 0
	s32i	a9, a8, 316
	.loc 1 238 0
	s32i	a9, a8, 320
	.loc 1 239 0
	s32i	a9, a8, 324
	.loc 1 240 0
	s32i	a9, a8, 328
	.loc 1 241 0
	l32i	a2, a2, 80
.LVL61:
	s32i	a2, a8, 332
	retw.n
.LFE16:
	.size	dumpHwToRegfile, .-dumpHwToRegfile
	.section	.rodata
	.align	4
.LC0:
	.byte	4
	.byte	31
	.byte	11
	.byte	11
	.byte	2
	.byte	6
	.byte	8
	.byte	0
	.byte	6
	.byte	7
	.byte	0
	.byte	0
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.section	.text.sendReason,"ax",@progbits
	.literal_position
	.literal .LC14, .LC0
	.literal .LC15, gdbRegFile
	.align	4
	.type	sendReason, @function
sendReason:
.LFB17:
	.loc 1 246 0
	entry	sp, 48
.LCFI11:
	.loc 1 248 0
	movi.n	a12, 0x10
	l32r	a11, .LC14
	mov.n	a10, sp
	call8	memcpy
.LVL62:
	.loc 1 250 0
	call8	gdbPacketStart
.LVL63:
	.loc 1 251 0
	movi.n	a10, 0x54
	call8	gdbPacketChar
.LVL64:
	.loc 1 252 0
	l32r	a8, .LC15
	l32i	a8, a8, 332
	extui	a8, a8, 0, 7
.LVL65:
	.loc 1 253 0
	movi.n	a9, 0xf
	bltu	a9, a8, .L41
	.loc 1 254 0
	add.n	a8, sp, a8
.LVL66:
	movi.n	a11, 8
	l8ui	a10, a8, 0
	call8	gdbPacketHex
.LVL67:
	j	.L42
.LVL68:
.L41:
	.loc 1 256 0
	movi.n	a11, 8
	movi.n	a10, 0xb
	call8	gdbPacketHex
.LVL69:
.L42:
	.loc 1 258 0
	call8	gdbPacketEnd
.LVL70:
	retw.n
.LFE17:
	.size	sendReason, .-sendReason
	.section	.rodata.str1.4
	.align	4
.LC17:
	.string	"OK"
	.section	.text.gdbHandleCommand,"ax",@progbits
	.literal_position
	.literal .LC16, gdbRegFile
	.literal .LC18, .LC17
	.align	4
	.type	gdbHandleCommand, @function
gdbHandleCommand:
.LFB18:
	.loc 1 262 0
.LVL71:
	entry	sp, 48
.LCFI12:
	.loc 1 265 0
	addi.n	a3, a2, 1
.LVL72:
	s32i.n	a3, sp, 0
	.loc 1 266 0
	l8ui	a2, a2, 0
.LVL73:
	movi	a3, 0x67
.LVL74:
	bne	a2, a3, .L44
.LVL75:
.LBB6:
	.loc 1 268 0
	call8	gdbPacketStart
.LVL76:
	.loc 1 267 0
	l32r	a3, .LC16
	.loc 1 269 0
	movi.n	a2, 0
	j	.L45
.LVL77:
.L46:
	.loc 1 269 0 is_stmt 0 discriminator 3
	addi.n	a4, a3, 4
.LVL78:
	l32i.n	a10, a3, 0
	call8	iswap
.LVL79:
	movi.n	a11, 0x20
	call8	gdbPacketHex
.LVL80:
	addi.n	a2, a2, 1
.LVL81:
	mov.n	a3, a4
.LVL82:
.L45:
	.loc 1 269 0 discriminator 1
	movi	a4, 0x68
	bgeu	a4, a2, .L46
	.loc 1 270 0 is_stmt 1
	call8	gdbPacketEnd
.LVL83:
.LBE6:
	.loc 1 294 0
	movi.n	a2, -3
.LVL84:
	retw.n
.LVL85:
.L44:
	.loc 1 271 0
	movi.n	a3, 0x47
	bne	a2, a3, .L56
	j	.L55
.LVL86:
.L50:
.LBB7:
	.loc 1 273 0 discriminator 3
	addi.n	a4, a3, 4
.LVL87:
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	gdbGetHexVal
.LVL88:
	call8	iswap
.LVL89:
	s32i.n	a10, a3, 0
	addi.n	a2, a2, 1
.LVL90:
	mov.n	a3, a4
	j	.L48
.LVL91:
.L55:
.LBE7:
	l32r	a3, .LC16
	movi.n	a2, 0
.L48:
.LVL92:
.LBB8:
	.loc 1 273 0 is_stmt 0 discriminator 1
	movi	a8, 0x68
	bgeu	a8, a2, .L50
	.loc 1 274 0 is_stmt 1
	call8	gdbPacketStart
.LVL93:
	.loc 1 275 0
	l32r	a10, .LC18
	call8	gdbPacketStr
.LVL94:
	.loc 1 276 0
	call8	gdbPacketEnd
.LVL95:
.LBE8:
	.loc 1 294 0
	movi.n	a2, -3
.LVL96:
	retw.n
.LVL97:
.L56:
	.loc 1 277 0
	movi	a3, 0x6d
	bne	a2, a3, .L51
	.loc 1 278 0
	movi.n	a11, -1
	mov.n	a10, sp
	call8	gdbGetHexVal
.LVL98:
	mov.n	a3, a10
.LVL99:
	.loc 1 279 0
	l32i.n	a2, sp, 0
	addi.n	a2, a2, 1
	s32i.n	a2, sp, 0
	.loc 1 280 0
	movi.n	a11, -1
	mov.n	a10, sp
	call8	gdbGetHexVal
.LVL100:
	mov.n	a5, a10
.LVL101:
	.loc 1 281 0
	call8	gdbPacketStart
.LVL102:
	.loc 1 282 0
	movi.n	a2, 0
	j	.L52
.LVL103:
.L53:
	.loc 1 283 0 discriminator 3
	addi.n	a4, a3, 1
.LVL104:
	mov.n	a10, a3
	call8	readbyte
.LVL105:
	movi.n	a11, 8
	call8	gdbPacketHex
.LVL106:
	.loc 1 282 0 discriminator 3
	addi.n	a2, a2, 1
.LVL107:
	.loc 1 283 0 discriminator 3
	mov.n	a3, a4
.LVL108:
.L52:
	.loc 1 282 0 discriminator 1
	blt	a2, a5, .L53
	.loc 1 285 0
	call8	gdbPacketEnd
.LVL109:
	.loc 1 294 0
	movi.n	a2, -3
.LVL110:
	retw.n
.LVL111:
.L51:
	.loc 1 286 0
	movi.n	a3, 0x3f
	bne	a2, a3, .L54
	.loc 1 287 0
	call8	sendReason
.LVL112:
	.loc 1 294 0
	movi.n	a2, -3
	retw.n
.L54:
	.loc 1 290 0
	call8	gdbPacketStart
.LVL113:
	.loc 1 291 0
	call8	gdbPacketEnd
.LVL114:
	.loc 1 292 0
	movi.n	a2, -2
	.loc 1 295 0
	retw.n
.LFE18:
	.size	gdbHandleCommand, .-gdbHandleCommand
	.section	.text.gdbReadCommand,"ax",@progbits
	.literal_position
	.literal .LC19, cmd
	.align	4
	.type	gdbReadCommand, @function
gdbReadCommand:
.LFB19:
	.loc 1 303 0
	entry	sp, 48
.LCFI13:
.LVL115:
	.loc 1 309 0
	call8	gdbRecvChar
.LVL116:
	extui	a3, a10, 0, 8
.LVL117:
	.loc 1 310 0
	movi.n	a2, 0x24
	beq	a3, a2, .L65
	extui	a2, a10, 0, 8
	.loc 1 310 0 is_stmt 0 discriminator 1
	retw.n
.LVL118:
.L66:
	.loc 1 321 0 is_stmt 1
	movi.n	a8, 0
	.loc 1 320 0
	mov.n	a2, a8
.LVL119:
.L63:
	mov.n	a3, a8
	j	.L58
.LVL120:
.L65:
	movi.n	a3, 0
	mov.n	a2, a3
.LVL121:
.L58:
	.loc 1 312 0
	call8	gdbRecvChar
.LVL122:
	extui	a10, a10, 0, 8
.LVL123:
	.loc 1 313 0
	movi.n	a8, 0x23
	bne	a10, a8, .L60
	.loc 1 314 0
	l32r	a8, .LC19
	add.n	a8, a8, a3
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 333 0
	call8	gdbRecvChar
.LVL124:
	s8i	a10, sp, 0
	.loc 1 334 0
	call8	gdbRecvChar
.LVL125:
	s8i	a10, sp, 1
	.loc 1 335 0
	s32i.n	sp, sp, 4
	.loc 1 336 0
	movi.n	a11, 8
	addi.n	a10, sp, 4
	call8	gdbGetHexVal
.LVL126:
	extui	a10, a10, 0, 8
.LVL127:
	.loc 1 337 0
	beq	a2, a10, .L68
	j	.L61
.LVL128:
.L60:
	.loc 1 317 0
	add.n	a2, a2, a10
.LVL129:
	extui	a2, a2, 0, 8
.LVL130:
	.loc 1 318 0
	movi.n	a8, 0x24
	beq	a10, a8, .L66
	.loc 1 324 0
	movi	a8, 0x7d
	bne	a10, a8, .L64
	.loc 1 325 0
	call8	gdbRecvChar
.LVL131:
	extui	a10, a10, 0, 8
.LVL132:
	.loc 1 326 0
	add.n	a2, a2, a10
.LVL133:
	extui	a2, a2, 0, 8
.LVL134:
	.loc 1 327 0
	movi.n	a8, 0x20
	xor	a10, a10, a8
.LVL135:
	extui	a10, a10, 0, 8
.LVL136:
.L64:
	.loc 1 329 0
	addi.n	a8, a3, 1
.LVL137:
	l32r	a11, .LC19
	add.n	a11, a11, a3
	s8i	a10, a11, 0
	.loc 1 330 0
	movi	a3, 0x1ff
	bge	a3, a8, .L63
	j	.L67
.LVL138:
.L61:
	.loc 1 338 0
	movi.n	a10, 0x2d
.LVL139:
	call8	gdbSendChar
.LVL140:
	.loc 1 339 0
	movi.n	a2, -2
.LVL141:
	retw.n
.LVL142:
.L68:
	.loc 1 341 0
	movi.n	a10, 0x2b
.LVL143:
	call8	gdbSendChar
.LVL144:
	.loc 1 342 0
	mov.n	a11, a3
	l32r	a10, .LC19
	call8	gdbHandleCommand
.LVL145:
	mov.n	a2, a10
.LVL146:
	retw.n
.LVL147:
.L67:
	.loc 1 330 0
	movi.n	a2, -2
.LVL148:
	.loc 1 344 0
	retw.n
.LFE19:
	.size	gdbReadCommand, .-gdbReadCommand
	.section	.text.esp_gdbstub_panic_handler,"ax",@progbits
	.literal_position
	.literal .LC20, 1072992388
	.literal .LC21, -28673
	.literal .LC22, 1072992392
	.align	4
	.global	esp_gdbstub_panic_handler
	.type	esp_gdbstub_panic_handler, @function
esp_gdbstub_panic_handler:
.LFB20:
	.loc 1 348 0
.LVL149:
	entry	sp, 32
.LCFI14:
	.loc 1 349 0
	mov.n	a10, a2
	call8	dumpHwToRegfile
.LVL150:
	.loc 1 351 0
	movi.n	a10, 1
	call8	gpio_pullup_dis
.LVL151:
.LBB9:
.LBB10:
	.loc 1 352 0
	l32r	a10, .LC20
	memw
	l32i.n	a9, a10, 0
.LBE10:
	l32r	a8, .LC21
	and	a9, a9, a8
	memw
	s32i.n	a9, a10, 0
.LBE9:
.LBB11:
.LBB12:
	.loc 1 353 0
	l32r	a9, .LC22
	memw
	l32i.n	a10, a9, 0
.LBE12:
	and	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE11:
	.loc 1 355 0
	call8	sendReason
.LVL152:
.L70:
	.loc 1 356 0 discriminator 1
	call8	gdbReadCommand
.LVL153:
	movi.n	a8, -4
	bne	a10, a8, .L70
.L71:
	j	.L71
.LFE20:
	.size	esp_gdbstub_panic_handler, .-esp_gdbstub_panic_handler
	.comm	gdbRegFile,420,4
	.section	.bss.chsum,"aw",@nobits
	.type	chsum, @object
	.size	chsum, 1
chsum:
	.zero	1
	.section	.bss.cmd,"aw",@nobits
	.align	4
	.type	cmd, @object
	.size	cmd, 512
cmd:
	.zero	512
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI2-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI3-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI4-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI5-.LFB11
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI6-.LFB12
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI7-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI8-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI9-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI10-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI11-.LFB17
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI12-.LFB18
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI13-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI14-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/xtensa_context.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/driver/include/driver/gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xac9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xc
	.4byte	.LASF62
	.4byte	.LASF63
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x53
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
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x6
	.4byte	0x8e
	.uleb128 0x7
	.byte	0x70
	.byte	0x4
	.byte	0x67
	.4byte	0x1ed
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4
	.byte	0x68
	.4byte	0x73
	.byte	0
	.uleb128 0x9
	.string	"pc"
	.byte	0x4
	.byte	0x69
	.4byte	0x73
	.byte	0x4
	.uleb128 0x9
	.string	"ps"
	.byte	0x4
	.byte	0x6a
	.4byte	0x73
	.byte	0x8
	.uleb128 0x9
	.string	"a0"
	.byte	0x4
	.byte	0x6b
	.4byte	0x73
	.byte	0xc
	.uleb128 0x9
	.string	"a1"
	.byte	0x4
	.byte	0x6c
	.4byte	0x73
	.byte	0x10
	.uleb128 0x9
	.string	"a2"
	.byte	0x4
	.byte	0x6d
	.4byte	0x73
	.byte	0x14
	.uleb128 0x9
	.string	"a3"
	.byte	0x4
	.byte	0x6e
	.4byte	0x73
	.byte	0x18
	.uleb128 0x9
	.string	"a4"
	.byte	0x4
	.byte	0x6f
	.4byte	0x73
	.byte	0x1c
	.uleb128 0x9
	.string	"a5"
	.byte	0x4
	.byte	0x70
	.4byte	0x73
	.byte	0x20
	.uleb128 0x9
	.string	"a6"
	.byte	0x4
	.byte	0x71
	.4byte	0x73
	.byte	0x24
	.uleb128 0x9
	.string	"a7"
	.byte	0x4
	.byte	0x72
	.4byte	0x73
	.byte	0x28
	.uleb128 0x9
	.string	"a8"
	.byte	0x4
	.byte	0x73
	.4byte	0x73
	.byte	0x2c
	.uleb128 0x9
	.string	"a9"
	.byte	0x4
	.byte	0x74
	.4byte	0x73
	.byte	0x30
	.uleb128 0x9
	.string	"a10"
	.byte	0x4
	.byte	0x75
	.4byte	0x73
	.byte	0x34
	.uleb128 0x9
	.string	"a11"
	.byte	0x4
	.byte	0x76
	.4byte	0x73
	.byte	0x38
	.uleb128 0x9
	.string	"a12"
	.byte	0x4
	.byte	0x77
	.4byte	0x73
	.byte	0x3c
	.uleb128 0x9
	.string	"a13"
	.byte	0x4
	.byte	0x78
	.4byte	0x73
	.byte	0x40
	.uleb128 0x9
	.string	"a14"
	.byte	0x4
	.byte	0x79
	.4byte	0x73
	.byte	0x44
	.uleb128 0x9
	.string	"a15"
	.byte	0x4
	.byte	0x7a
	.4byte	0x73
	.byte	0x48
	.uleb128 0x9
	.string	"sar"
	.byte	0x4
	.byte	0x7b
	.4byte	0x73
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x7c
	.4byte	0x73
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7d
	.4byte	0x73
	.byte	0x54
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x7f
	.4byte	0x73
	.byte	0x58
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x80
	.4byte	0x73
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x81
	.4byte	0x73
	.byte	0x60
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x85
	.4byte	0x73
	.byte	0x64
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x86
	.4byte	0x73
	.byte	0x68
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x87
	.4byte	0x73
	.byte	0x6c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x91
	.4byte	0xa0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ed
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0xa
	.2byte	0x1a4
	.byte	0x1
	.byte	0x9d
	.4byte	0x361
	.uleb128 0x9
	.string	"pc"
	.byte	0x1
	.byte	0x9e
	.4byte	0x68
	.byte	0
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x9f
	.4byte	0x361
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa0
	.4byte	0x68
	.2byte	0x104
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0xa1
	.4byte	0x68
	.2byte	0x108
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0xa2
	.4byte	0x68
	.2byte	0x10c
	.uleb128 0xc
	.string	"sar"
	.byte	0x1
	.byte	0xa3
	.4byte	0x68
	.2byte	0x110
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa4
	.4byte	0x68
	.2byte	0x114
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa5
	.4byte	0x68
	.2byte	0x118
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0xa6
	.4byte	0x68
	.2byte	0x11c
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa7
	.4byte	0x68
	.2byte	0x120
	.uleb128 0xc
	.string	"ps"
	.byte	0x1
	.byte	0xa8
	.4byte	0x68
	.2byte	0x124
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa9
	.4byte	0x68
	.2byte	0x128
	.uleb128 0xc
	.string	"br"
	.byte	0x1
	.byte	0xaa
	.4byte	0x68
	.2byte	0x12c
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0xab
	.4byte	0x68
	.2byte	0x130
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0xac
	.4byte	0x68
	.2byte	0x134
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0xad
	.4byte	0x68
	.2byte	0x138
	.uleb128 0xc
	.string	"m0"
	.byte	0x1
	.byte	0xae
	.4byte	0x68
	.2byte	0x13c
	.uleb128 0xc
	.string	"m1"
	.byte	0x1
	.byte	0xaf
	.4byte	0x68
	.2byte	0x140
	.uleb128 0xc
	.string	"m2"
	.byte	0x1
	.byte	0xb0
	.4byte	0x68
	.2byte	0x144
	.uleb128 0xc
	.string	"m3"
	.byte	0x1
	.byte	0xb1
	.4byte	0x68
	.2byte	0x148
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0xb2
	.4byte	0x68
	.2byte	0x14c
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb3
	.4byte	0x68
	.2byte	0x150
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb4
	.4byte	0x68
	.2byte	0x154
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb5
	.4byte	0x68
	.2byte	0x158
	.uleb128 0xc
	.string	"f"
	.byte	0x1
	.byte	0xb6
	.4byte	0x371
	.2byte	0x15c
	.uleb128 0xc
	.string	"fcr"
	.byte	0x1
	.byte	0xb7
	.4byte	0x68
	.2byte	0x19c
	.uleb128 0xc
	.string	"fsr"
	.byte	0x1
	.byte	0xb8
	.4byte	0x68
	.2byte	0x1a0
	.byte	0
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x371
	.uleb128 0xe
	.4byte	0x7a
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.4byte	0x68
	.4byte	0x381
	.uleb128 0xe
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x1
	.byte	0xb9
	.4byte	0x205
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x25
	.4byte	0x41
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ba
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x26
	.4byte	0x41
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF39
	.4byte	0x3ca
	.byte	0
	.uleb128 0xd
	.4byte	0x8e
	.4byte	0x3ca
	.uleb128 0xe
	.4byte	0x7a
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0x3ba
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x2d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f9
	.uleb128 0x13
	.string	"c"
	.byte	0x1
	.byte	0x2d
	.4byte	0x8e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF39
	.4byte	0x3f9
	.byte	0
	.uleb128 0x6
	.4byte	0x3ba
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x33
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x424
	.uleb128 0x15
	.4byte	.LVL2
	.4byte	0x3cf
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x39
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47f
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.byte	0x39
	.4byte	0x8e
	.4byte	.LLST0
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0x3cf
	.4byte	0x45a
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x7d
	.byte	0
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0x3cf
	.4byte	0x46e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL8
	.4byte	0x3cf
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0x45
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ab
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.byte	0x45
	.4byte	0x95
	.4byte	.LLST1
	.uleb128 0x19
	.4byte	.LVL11
	.4byte	0x424
	.byte	0
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x523
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.byte	0x4d
	.4byte	0x41
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4d
	.4byte	0x41
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	.LASF44
	.byte	0x1
	.byte	0x4e
	.4byte	0x523
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.4byte	0x41
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0xab7
	.4byte	0x519
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0x424
	.byte	0
	.uleb128 0xd
	.4byte	0x8e
	.4byte	0x533
	.uleb128 0xe
	.4byte	0x7a
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0x56
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56c
	.uleb128 0x18
	.4byte	.LVL18
	.4byte	0x3cf
	.4byte	0x55c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x23
	.byte	0
	.uleb128 0x15
	.4byte	.LVL19
	.4byte	0x4ab
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF47
	.byte	0x1
	.byte	0x65
	.4byte	0x73
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d5
	.uleb128 0x17
	.string	"ptr"
	.byte	0x1
	.byte	0x65
	.4byte	0x5d5
	.4byte	.LLST4
	.uleb128 0x1e
	.4byte	.LASF43
	.byte	0x1
	.byte	0x65
	.4byte	0x41
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0x66
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x10
	.string	"no"
	.byte	0x1
	.byte	0x67
	.4byte	0x41
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1c
	.string	"v"
	.byte	0x1
	.byte	0x68
	.4byte	0x53
	.4byte	.LLST6
	.uleb128 0x1c
	.string	"c"
	.byte	0x1
	.byte	0x69
	.4byte	0x8e
	.4byte	.LLST7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x88
	.uleb128 0x1d
	.4byte	.LASF48
	.byte	0x1
	.byte	0x8a
	.4byte	0x41
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60f
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x8a
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x1c
	.string	"r"
	.byte	0x1
	.byte	0x8b
	.4byte	0x41
	.4byte	.LLST9
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0x94
	.4byte	0x2c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x641
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.byte	0x94
	.4byte	0x53
	.4byte	.LLST10
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x95
	.4byte	0x641
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x1
	.byte	0xd7
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x686
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x1
	.byte	0xd7
	.4byte	0x1f8
	.4byte	.LLST11
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xd8
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0x1b
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd9
	.4byte	0x686
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x73
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x1
	.byte	0xf6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x730
	.uleb128 0x1b
	.4byte	.LASF54
	.byte	0x1
	.byte	0xf8
	.4byte	0x730
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.byte	0xf9
	.4byte	0x41
	.4byte	.LLST13
	.uleb128 0x18
	.4byte	.LVL62
	.4byte	0xab7
	.4byte	0x6de
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x19
	.4byte	.LVL63
	.4byte	0x3fe
	.uleb128 0x18
	.4byte	.LVL64
	.4byte	0x424
	.4byte	0x6fb
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x54
	.byte	0
	.uleb128 0x18
	.4byte	.LVL67
	.4byte	0x4ab
	.4byte	0x70e
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x18
	.4byte	.LVL69
	.4byte	0x4ab
	.4byte	0x726
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	.LVL70
	.4byte	0x533
	.byte	0
	.uleb128 0xd
	.4byte	0x8e
	.4byte	0x740
	.uleb128 0xe
	.4byte	0x7a
	.byte	0xf
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x106
	.4byte	0x41
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8eb
	.uleb128 0x20
	.string	"cmd"
	.byte	0x1
	.2byte	0x106
	.4byte	0x88
	.4byte	.LLST14
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.2byte	0x106
	.4byte	0x41
	.4byte	.LLST15
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.2byte	0x108
	.4byte	0x41
	.4byte	.LLST16
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.2byte	0x108
	.4byte	0x41
	.4byte	.LLST17
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.2byte	0x108
	.4byte	0x41
	.4byte	.LLST18
	.uleb128 0x22
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x109
	.4byte	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x7fe
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x641
	.4byte	.LLST19
	.uleb128 0x19
	.4byte	.LVL76
	.4byte	0x3fe
	.uleb128 0x19
	.4byte	.LVL79
	.4byte	0x5db
	.uleb128 0x18
	.4byte	.LVL80
	.4byte	0x4ab
	.4byte	0x7f4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0x533
	.byte	0
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.4byte	0x862
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.2byte	0x110
	.4byte	0x641
	.4byte	.LLST20
	.uleb128 0x18
	.4byte	.LVL88
	.4byte	0x56c
	.4byte	0x82f
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LVL89
	.4byte	0x5db
	.uleb128 0x19
	.4byte	.LVL93
	.4byte	0x3fe
	.uleb128 0x18
	.4byte	.LVL94
	.4byte	0x47f
	.4byte	0x858
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.uleb128 0x19
	.4byte	.LVL95
	.4byte	0x533
	.byte	0
	.uleb128 0x18
	.4byte	.LVL98
	.4byte	0x56c
	.4byte	0x87c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x18
	.4byte	.LVL100
	.4byte	0x56c
	.4byte	0x896
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x19
	.4byte	.LVL102
	.4byte	0x3fe
	.uleb128 0x18
	.4byte	.LVL105
	.4byte	0x60f
	.4byte	0x8b3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL106
	.4byte	0x4ab
	.4byte	0x8c6
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	.LVL109
	.4byte	0x533
	.uleb128 0x19
	.4byte	.LVL112
	.4byte	0x68c
	.uleb128 0x19
	.4byte	.LVL113
	.4byte	0x3fe
	.uleb128 0x19
	.4byte	.LVL114
	.4byte	0x533
	.byte	0
	.uleb128 0x25
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x12f
	.4byte	0x41
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e7
	.uleb128 0x21
	.string	"c"
	.byte	0x1
	.2byte	0x130
	.4byte	0x2c
	.4byte	.LLST21
	.uleb128 0x26
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x131
	.4byte	0x2c
	.4byte	.LLST22
	.uleb128 0x26
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x131
	.4byte	0x2c
	.4byte	.LLST23
	.uleb128 0x22
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x132
	.4byte	0x9e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"p"
	.byte	0x1
	.2byte	0x133
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x27
	.string	"ptr"
	.byte	0x1
	.2byte	0x134
	.4byte	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.4byte	.LVL116
	.4byte	0x38c
	.uleb128 0x19
	.4byte	.LVL122
	.4byte	0x38c
	.uleb128 0x19
	.4byte	.LVL124
	.4byte	0x38c
	.uleb128 0x19
	.4byte	.LVL125
	.4byte	0x38c
	.uleb128 0x18
	.4byte	.LVL126
	.4byte	0x56c
	.4byte	0x99c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	.LVL131
	.4byte	0x38c
	.uleb128 0x18
	.4byte	.LVL140
	.4byte	0x3cf
	.4byte	0x9b9
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.uleb128 0x18
	.4byte	.LVL144
	.4byte	0x3cf
	.4byte	0x9cd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.uleb128 0x15
	.4byte	.LVL145
	.4byte	0x740
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	cmd
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x2c
	.4byte	0x9f7
	.uleb128 0xe
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x28
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x15c
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5e
	.uleb128 0x29
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x15c
	.4byte	0x1f8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x11
	.4byte	.LASF39
	.4byte	0xa6e
	.uleb128 0x18
	.4byte	.LVL150
	.4byte	0x647
	.4byte	0xa38
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL151
	.4byte	0xac0
	.4byte	0xa4b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.4byte	.LVL152
	.4byte	0x68c
	.uleb128 0x19
	.4byte	.LVL153
	.4byte	0x8eb
	.byte	0
	.uleb128 0xd
	.4byte	0x8e
	.4byte	0xa6e
	.uleb128 0xe
	.4byte	0x7a
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	0xa5e
	.uleb128 0xd
	.4byte	0x2c
	.4byte	0xa84
	.uleb128 0x2a
	.4byte	0x7a
	.2byte	0x1ff
	.byte	0
	.uleb128 0x10
	.string	"cmd"
	.byte	0x1
	.byte	0x1f
	.4byte	0xa73
	.uleb128 0x5
	.byte	0x3
	.4byte	cmd
	.uleb128 0x1b
	.4byte	.LASF58
	.byte	0x1
	.byte	0x20
	.4byte	0x8e
	.uleb128 0x5
	.byte	0x3
	.4byte	chsum
	.uleb128 0x2b
	.4byte	.LASF65
	.byte	0x1
	.byte	0xbc
	.4byte	0x381
	.uleb128 0x5
	.byte	0x3
	.4byte	gdbRegFile
	.uleb128 0x2c
	.4byte	.LASF66
	.4byte	.LASF66
	.uleb128 0x2d
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x1af
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x28
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
	.uleb128 0x87
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x78
	.sleb128 48
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x78
	.sleb128 55
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x4
	.byte	0x78
	.sleb128 87
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52
	.4byte	.LFE15
	.2byte	0x7
	.byte	0x78
	.sleb128 536870912
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL53
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LFE16
	.2byte	0x3
	.byte	0x7c
	.sleb128 -12
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0xa
	.byte	0x3
	.4byte	gdbRegFile+332
	.byte	0x6
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL76-1
	.2byte	0x6
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL76-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL99
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL101
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x6
	.byte	0x3
	.4byte	gdbRegFile
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL131-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL132
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL142
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL138
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"gdbRegFile"
.LASF59:
	.string	"rchsum"
.LASF28:
	.string	"threadptr"
.LASF2:
	.string	"short int"
.LASF24:
	.string	"windowbase"
.LASF25:
	.string	"windowstart"
.LASF60:
	.string	"sentchs"
.LASF29:
	.string	"scompare1"
.LASF58:
	.string	"chsum"
.LASF7:
	.string	"__uint32_t"
.LASF64:
	.string	"esp_gdbstub_panic_handler"
.LASF52:
	.string	"frameAregs"
.LASF35:
	.string	"f64s"
.LASF38:
	.string	"gdbSendChar"
.LASF66:
	.string	"memcpy"
.LASF16:
	.string	"lbeg"
.LASF57:
	.string	"gdbReadCommand"
.LASF48:
	.string	"iswap"
.LASF37:
	.string	"gdbRecvChar"
.LASF32:
	.string	"expstate"
.LASF49:
	.string	"readbyte"
.LASF5:
	.string	"long long int"
.LASF43:
	.string	"bits"
.LASF54:
	.string	"exceptionSignal"
.LASF9:
	.string	"long int"
.LASF55:
	.string	"gdbHandleCommand"
.LASF1:
	.string	"unsigned char"
.LASF15:
	.string	"excvaddr"
.LASF51:
	.string	"frame"
.LASF31:
	.string	"acchi"
.LASF13:
	.string	"exit"
.LASF44:
	.string	"hexChars"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF4:
	.string	"unsigned int"
.LASF26:
	.string	"configid0"
.LASF27:
	.string	"configid1"
.LASF45:
	.string	"gdbPacketStart"
.LASF50:
	.string	"dumpHwToRegfile"
.LASF47:
	.string	"gdbGetHexVal"
.LASF3:
	.string	"short unsigned int"
.LASF12:
	.string	"char"
.LASF36:
	.string	"GdbRegFile"
.LASF23:
	.string	"_Bool"
.LASF56:
	.string	"data"
.LASF19:
	.string	"tmp0"
.LASF20:
	.string	"tmp1"
.LASF21:
	.string	"tmp2"
.LASF17:
	.string	"lend"
.LASF14:
	.string	"exccause"
.LASF22:
	.string	"XtExcFrame"
.LASF11:
	.string	"long unsigned int"
.LASF34:
	.string	"f64r_hi"
.LASF67:
	.string	"gpio_pullup_dis"
.LASF42:
	.string	"gdbPacketHex"
.LASF33:
	.string	"f64r_lo"
.LASF46:
	.string	"gdbPacketEnd"
.LASF18:
	.string	"lcount"
.LASF53:
	.string	"sendReason"
.LASF10:
	.string	"sizetype"
.LASF62:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/gdbstub.c"
.LASF30:
	.string	"acclo"
.LASF63:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF41:
	.string	"gdbPacketStr"
.LASF40:
	.string	"gdbPacketChar"
.LASF61:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF39:
	.string	"__func__"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
