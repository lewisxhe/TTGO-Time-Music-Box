	.file	"linenoise.c"
	.text
.Ltext0:
	.section	.text.abInit,"ax",@progbits
	.align	4
	.type	abInit, @function
abInit:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/console/linenoise/linenoise.c"
	.loc 1 390 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 391 0
	movi.n	a8, 0
	s32i.n	a8, a2, 0
	.loc 1 392 0
	s32i.n	a8, a2, 4
	retw.n
.LFE12:
	.size	abInit, .-abInit
	.section	.text.sanitize,"ax",@progbits
	.literal_position
	.literal .LC0, __ctype_ptr__
	.align	4
	.type	sanitize, @function
sanitize:
.LFB32:
	.loc 1 958 0
.LVL1:
	entry	sp, 32
.LCFI1:
.LVL2:
.LBB2:
	.loc 1 960 0
	l8ui	a9, a2, 0
.LVL3:
.LBE2:
	.loc 1 959 0
	mov.n	a11, a2
.LBB3:
	.loc 1 960 0
	j	.L3
.LVL4:
.L5:
	.loc 1 961 0
	l32r	a8, .LC0
	l32i.n	a8, a8, 0
	add.n	a8, a8, a9
	l8ui	a10, a8, 1
	movi	a8, -0x69
	bnone	a10, a8, .L4
	.loc 1 962 0
	s8i	a9, a11, 0
	.loc 1 963 0
	addi.n	a11, a11, 1
.LVL5:
.L4:
	.loc 1 960 0 discriminator 2
	addi.n	a2, a2, 1
.LVL6:
	l8ui	a9, a2, 0
.LVL7:
.L3:
	.loc 1 960 0 is_stmt 0 discriminator 1
	bnez.n	a9, .L5
.LBE3:
	.loc 1 966 0 is_stmt 1
	movi.n	a2, 0
.LVL8:
	s8i	a2, a11, 0
	retw.n
.LFE32:
	.size	sanitize, .-sanitize
	.section	.text.abAppend,"ax",@progbits
	.align	4
	.type	abAppend, @function
abAppend:
.LFB13:
	.loc 1 395 0
.LVL9:
	entry	sp, 32
.LCFI2:
	.loc 1 396 0
	l32i.n	a11, a2, 4
	add.n	a11, a11, a4
	l32i.n	a10, a2, 0
	call8	realloc
.LVL10:
	mov.n	a5, a10
.LVL11:
	.loc 1 398 0
	beqz.n	a10, .L6
	.loc 1 399 0
	l32i.n	a10, a2, 4
	mov.n	a12, a4
	mov.n	a11, a3
	add.n	a10, a5, a10
	call8	memcpy
.LVL12:
	.loc 1 400 0
	s32i.n	a5, a2, 0
	.loc 1 401 0
	l32i.n	a3, a2, 4
.LVL13:
	add.n	a4, a3, a4
.LVL14:
	s32i.n	a4, a2, 4
.L6:
	retw.n
.LFE13:
	.size	abAppend, .-abAppend
	.section	.text.abFree,"ax",@progbits
	.align	4
	.type	abFree, @function
abFree:
.LFB14:
	.loc 1 404 0
.LVL15:
	entry	sp, 32
.LCFI3:
	.loc 1 405 0
	l32i.n	a10, a2, 0
	call8	free
.LVL16:
	retw.n
.LFE14:
	.size	abFree, .-abFree
	.section	.text.freeCompletions,"ax",@progbits
	.align	4
	.type	freeCompletions, @function
freeCompletions:
.LFB6:
	.loc 1 270 0
.LVL17:
	entry	sp, 32
.LCFI4:
.LVL18:
	.loc 1 272 0
	movi.n	a3, 0
	j	.L10
.LVL19:
.L11:
	.loc 1 273 0 discriminator 3
	l32i.n	a8, a2, 4
	addx4	a8, a3, a8
	l32i.n	a10, a8, 0
	call8	free
.LVL20:
	.loc 1 272 0 discriminator 3
	addi.n	a3, a3, 1
.LVL21:
.L10:
	.loc 1 272 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	bltu	a3, a8, .L11
	.loc 1 274 0 is_stmt 1
	l32i.n	a10, a2, 4
	beqz.n	a10, .L9
	.loc 1 275 0
	call8	free
.LVL22:
.L9:
	retw.n
.LFE6:
	.size	freeCompletions, .-freeCompletions
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"\033[6n"
	.align	4
.LC3:
	.string	"%d;%d"
	.section	.text.getCursorPosition,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.align	4
	.type	getCursorPosition, @function
getCursorPosition:
.LFB2:
	.loc 1 207 0
	entry	sp, 80
.LCFI5:
.LVL23:
	.loc 1 213 0
	call8	__getreent
.LVL24:
	l32i.n	a13, a10, 8
	movi.n	a12, 4
	movi.n	a11, 1
	l32r	a10, .LC2
	call8	fwrite
.LVL25:
	.loc 1 210 0
	movi.n	a2, 0
	.loc 1 216 0
	j	.L14
.LVL26:
.L16:
	.loc 1 217 0
	add.n	a3, sp, a2
	call8	__getreent
.LVL27:
	l32i.n	a13, a10, 4
	movi.n	a12, 1
	mov.n	a11, a12
	mov.n	a10, a3
	call8	fread
.LVL28:
	bnei	a10, 1, .L15
	.loc 1 218 0
	add.n	a3, sp, a2
	l8ui	a8, a3, 0
	movi.n	a3, 0x52
	beq	a8, a3, .L15
	.loc 1 219 0
	addi.n	a2, a2, 1
.LVL29:
.L14:
	.loc 1 216 0
	movi.n	a3, 0x1e
	bgeu	a3, a2, .L16
.L15:
	.loc 1 221 0
	add.n	a2, sp, a2
.LVL30:
	movi.n	a3, 0
	s8i	a3, a2, 0
	.loc 1 223 0
	l8ui	a3, sp, 0
	movi.n	a2, 0x1b
	bne	a3, a2, .L18
	.loc 1 223 0 is_stmt 0 discriminator 2
	l8ui	a3, sp, 1
	movi.n	a2, 0x5b
	bne	a3, a2, .L19
	.loc 1 224 0 is_stmt 1
	addi	a13, sp, 32
	addi	a12, sp, 36
	l32r	a11, .LC4
	addi.n	a10, sp, 2
	call8	sscanf
.LVL31:
	bnei	a10, 2, .L20
	.loc 1 225 0
	l32i.n	a2, sp, 32
	retw.n
.L18:
	.loc 1 223 0
	movi.n	a2, -1
	retw.n
.L19:
	movi.n	a2, -1
	retw.n
.L20:
	.loc 1 224 0
	movi.n	a2, -1
	.loc 1 226 0
	retw.n
.LFE2:
	.size	getCursorPosition, .-getCursorPosition
	.section	.rodata.str1.4
	.align	4
.LC5:
	.string	"\033[999C"
	.align	4
.LC7:
	.string	"\033[%dD"
	.section	.text.getColumns,"ax",@progbits
	.literal_position
	.literal .LC6, .LC5
	.literal .LC8, .LC7
	.align	4
	.type	getColumns, @function
getColumns:
.LFB3:
	.loc 1 230 0
	entry	sp, 64
.LCFI6:
	.loc 1 234 0
	call8	getCursorPosition
.LVL32:
	mov.n	a3, a10
.LVL33:
	.loc 1 235 0
	beqi	a10, -1, .L23
	.loc 1 238 0
	call8	__getreent
.LVL34:
	l32i.n	a13, a10, 8
	movi.n	a12, 6
	movi.n	a11, 1
	l32r	a10, .LC6
	call8	fwrite
.LVL35:
	bnei	a10, 6, .L24
	.loc 1 239 0
	call8	getCursorPosition
.LVL36:
	mov.n	a2, a10
.LVL37:
	.loc 1 240 0
	beqi	a10, -1, .L25
	.loc 1 243 0
	bge	a3, a10, .L22
.LBB4:
	.loc 1 245 0
	sub	a13, a10, a3
	l32r	a12, .LC8
	movi.n	a11, 0x20
	mov.n	a10, sp
	call8	snprintf
.LVL38:
	.loc 1 246 0
	mov.n	a10, sp
	call8	strlen
.LVL39:
	mov.n	a3, a10
.LVL40:
	call8	__getreent
.LVL41:
	l32i.n	a13, a10, 8
	mov.n	a12, a3
	movi.n	a11, 1
	mov.n	a10, sp
	call8	fwrite
.LVL42:
	retw.n
.LVL43:
.L23:
.LBE4:
	.loc 1 253 0
	movi.n	a2, 0x50
	retw.n
.L24:
	movi.n	a2, 0x50
	retw.n
.LVL44:
.L25:
	movi.n	a2, 0x50
.LVL45:
.L22:
	.loc 1 254 0
	retw.n
.LFE3:
	.size	getColumns, .-getColumns
	.section	.text.linenoiseBeep,"ax",@progbits
	.align	4
	.type	linenoiseBeep, @function
linenoiseBeep:
.LFB5:
	.loc 1 263 0
	entry	sp, 32
.LCFI7:
	.loc 1 264 0
	call8	__getreent
.LVL46:
	l32i.n	a11, a10, 8
	movi.n	a10, 7
	call8	fputc
.LVL47:
	retw.n
.LFE5:
	.size	linenoiseBeep, .-linenoiseBeep
	.section	.rodata.str1.4
	.align	4
.LC9:
	.string	"\b "
	.section	.text.linenoiseDumb,"ax",@progbits
	.literal_position
	.literal .LC10, .LC9
	.align	4
	.type	linenoiseDumb, @function
linenoiseDumb:
.LFB31:
	.loc 1 932 0
.LVL48:
	entry	sp, 32
.LCFI8:
	mov.n	a5, a2
	.loc 1 934 0
	call8	__getreent
.LVL49:
	l32i.n	a11, a10, 8
	mov.n	a10, a4
	call8	fputs
.LVL50:
	.loc 1 935 0
	movi.n	a2, 0
.LVL51:
	.loc 1 936 0
	j	.L29
.LVL52:
.L35:
.LBB5:
	.loc 1 937 0
	call8	__getreent
.LVL53:
	l32i.n	a10, a10, 4
	call8	fgetc
.LVL54:
	mov.n	a4, a10
.LVL55:
	.loc 1 938 0
	beqi	a10, 10, .L30
	.loc 1 940 0
	addi	a8, a10, -28
	bltui	a8, 4, .L29
	.loc 1 942 0
	addi	a9, a10, -127
	movi.n	a11, 1
	movi.n	a8, 0
	mov.n	a10, a8
	moveqz	a10, a11, a9
	mov.n	a9, a10
	addi	a10, a4, -8
	moveqz	a8, a11, a10
	or	a8, a8, a9
	beqz.n	a8, .L32
	.loc 1 943 0
	blt	a2, a11, .L33
	.loc 1 944 0
	addi.n	a6, a6, -1
	add.n	a6, a5, a6
	movi.n	a8, 0
	s8i	a8, a6, 0
	.loc 1 945 0
	addi.n	a2, a2, -1
.LVL56:
.L33:
	.loc 1 947 0
	call8	__getreent
.LVL57:
	l32i.n	a13, a10, 8
	movi.n	a12, 2
	movi.n	a11, 1
	l32r	a10, .LC10
	call8	fwrite
.LVL58:
	j	.L34
.L32:
	.loc 1 949 0
	add.n	a6, a5, a6
	s8i	a4, a6, 0
	.loc 1 950 0
	addi.n	a2, a2, 1
.LVL59:
.L34:
	.loc 1 952 0
	call8	__getreent
.LVL60:
	l32i.n	a11, a10, 8
	mov.n	a10, a4
	call8	fputc
.LVL61:
.L29:
.LBE5:
	.loc 1 936 0
	mov.n	a6, a2
	bltu	a2, a3, .L35
.L30:
	.loc 1 954 0
	call8	__getreent
.LVL62:
	l32i.n	a11, a10, 8
	movi.n	a10, 0xa
	call8	fputc
.LVL63:
	.loc 1 956 0
	retw.n
.LFE31:
	.size	linenoiseDumb, .-linenoiseDumb
	.section	.text.linenoiseSetMultiLine,"ax",@progbits
	.literal_position
	.literal .LC11, mlmode
	.align	4
	.global	linenoiseSetMultiLine
	.type	linenoiseSetMultiLine, @function
linenoiseSetMultiLine:
.LFB0:
	.loc 1 195 0
.LVL64:
	entry	sp, 32
.LCFI9:
	.loc 1 196 0
	l32r	a8, .LC11
	s32i.n	a2, a8, 0
	retw.n
.LFE0:
	.size	linenoiseSetMultiLine, .-linenoiseSetMultiLine
	.section	.text.linenoiseSetDumbMode,"ax",@progbits
	.literal_position
	.literal .LC12, dumbmode
	.align	4
	.global	linenoiseSetDumbMode
	.type	linenoiseSetDumbMode, @function
linenoiseSetDumbMode:
.LFB1:
	.loc 1 200 0
.LVL65:
	entry	sp, 32
.LCFI10:
	.loc 1 201 0
	l32r	a8, .LC12
	s32i.n	a2, a8, 0
	retw.n
.LFE1:
	.size	linenoiseSetDumbMode, .-linenoiseSetDumbMode
	.section	.rodata.str1.4
	.align	4
.LC13:
	.string	"\033[H\033[2J"
	.section	.text.linenoiseClearScreen,"ax",@progbits
	.literal_position
	.literal .LC14, .LC13
	.align	4
	.global	linenoiseClearScreen
	.type	linenoiseClearScreen, @function
linenoiseClearScreen:
.LFB4:
	.loc 1 257 0
	entry	sp, 32
.LCFI11:
	.loc 1 258 0
	call8	__getreent
.LVL66:
	l32i.n	a13, a10, 8
	movi.n	a12, 7
	movi.n	a11, 1
	l32r	a10, .LC14
	call8	fwrite
.LVL67:
	retw.n
.LFE4:
	.size	linenoiseClearScreen, .-linenoiseClearScreen
	.section	.text.linenoiseSetCompletionCallback,"ax",@progbits
	.literal_position
	.literal .LC15, completionCallback
	.align	4
	.global	linenoiseSetCompletionCallback
	.type	linenoiseSetCompletionCallback, @function
linenoiseSetCompletionCallback:
.LFB8:
	.loc 1 343 0
.LVL68:
	entry	sp, 32
.LCFI12:
	.loc 1 344 0
	l32r	a8, .LC15
	s32i.n	a2, a8, 0
	retw.n
.LFE8:
	.size	linenoiseSetCompletionCallback, .-linenoiseSetCompletionCallback
	.section	.text.linenoiseSetHintsCallback,"ax",@progbits
	.literal_position
	.literal .LC16, hintsCallback
	.align	4
	.global	linenoiseSetHintsCallback
	.type	linenoiseSetHintsCallback, @function
linenoiseSetHintsCallback:
.LFB9:
	.loc 1 349 0
.LVL69:
	entry	sp, 32
.LCFI13:
	.loc 1 350 0
	l32r	a8, .LC16
	s32i.n	a2, a8, 0
	retw.n
.LFE9:
	.size	linenoiseSetHintsCallback, .-linenoiseSetHintsCallback
	.section	.text.linenoiseSetFreeHintsCallback,"ax",@progbits
	.literal_position
	.literal .LC17, freeHintsCallback
	.align	4
	.global	linenoiseSetFreeHintsCallback
	.type	linenoiseSetFreeHintsCallback, @function
linenoiseSetFreeHintsCallback:
.LFB10:
	.loc 1 355 0
.LVL70:
	entry	sp, 32
.LCFI14:
	.loc 1 356 0
	l32r	a8, .LC17
	s32i.n	a2, a8, 0
	retw.n
.LFE10:
	.size	linenoiseSetFreeHintsCallback, .-linenoiseSetFreeHintsCallback
	.section	.text.linenoiseAddCompletion,"ax",@progbits
	.align	4
	.global	linenoiseAddCompletion
	.type	linenoiseAddCompletion, @function
linenoiseAddCompletion:
.LFB11:
	.loc 1 363 0
.LVL71:
	entry	sp, 32
.LCFI15:
	.loc 1 364 0
	mov.n	a10, a3
	call8	strlen
.LVL72:
	.loc 1 367 0
	addi.n	a5, a10, 1
	mov.n	a10, a5
.LVL73:
	call8	malloc
.LVL74:
	mov.n	a4, a10
.LVL75:
	.loc 1 368 0
	beqz.n	a10, .L42
	.loc 1 369 0
	mov.n	a12, a5
	mov.n	a11, a3
	call8	memcpy
.LVL76:
	.loc 1 370 0
	l32i.n	a11, a2, 0
	addi.n	a11, a11, 1
	slli	a11, a11, 2
	l32i.n	a10, a2, 4
	call8	realloc
.LVL77:
	.loc 1 371 0
	bnez.n	a10, .L44
	.loc 1 372 0
	mov.n	a10, a4
.LVL78:
	call8	free
.LVL79:
	.loc 1 373 0
	retw.n
.LVL80:
.L44:
	.loc 1 375 0
	s32i.n	a10, a2, 4
	.loc 1 376 0
	l32i.n	a8, a2, 0
	addi.n	a3, a8, 1
.LVL81:
	s32i.n	a3, a2, 0
	addx4	a8, a8, a10
	s32i.n	a4, a8, 0
.LVL82:
.L42:
	retw.n
.LFE11:
	.size	linenoiseAddCompletion, .-linenoiseAddCompletion
	.section	.rodata.str1.4
	.align	4
.LC19:
	.string	"\033[%d;%d;49m"
	.align	4
.LC21:
	.string	"\033[0m"
	.section	.text.refreshShowHints,"ax",@progbits
	.literal_position
	.literal .LC18, hintsCallback
	.literal .LC20, .LC19
	.literal .LC22, .LC21
	.literal .LC23, freeHintsCallback
	.align	4
	.global	refreshShowHints
	.type	refreshShowHints, @function
refreshShowHints:
.LFB15:
	.loc 1 410 0
.LVL83:
	entry	sp, 112
.LCFI16:
	.loc 1 412 0
	l32r	a8, .LC18
	l32i.n	a9, a8, 0
	beqz.n	a9, .L45
	.loc 1 412 0 is_stmt 0 discriminator 1
	l32i.n	a8, a3, 24
	add.n	a8, a8, a4
	l32i.n	a10, a3, 28
	bgeu	a8, a10, .L45
.LBB6:
	.loc 1 413 0 is_stmt 1
	movi.n	a5, -1
	s32i	a5, sp, 68
	movi.n	a5, 0
	s32i	a5, sp, 64
	.loc 1 414 0
	addi	a12, sp, 64
	addi	a11, sp, 68
	l32i.n	a10, a3, 0
	callx8	a9
.LVL84:
	mov.n	a5, a10
.LVL85:
	.loc 1 415 0
	beqz.n	a10, .L45
.LBB7:
	.loc 1 416 0
	call8	strlen
.LVL86:
	.loc 1 417 0
	l32i.n	a8, a3, 28
	l32i.n	a3, a3, 24
.LVL87:
	add.n	a4, a4, a3
.LVL88:
	sub	a4, a8, a4
.LVL89:
	.loc 1 418 0
	blt	a4, a10, .L48
	.loc 1 416 0
	mov.n	a4, a10
.LVL90:
.L48:
	.loc 1 419 0
	l32i	a13, sp, 64
	bnei	a13, 1, .L49
	.loc 1 419 0 is_stmt 0 discriminator 1
	l32i	a3, sp, 68
.LVL91:
	bnei	a3, -1, .L49
	.loc 1 419 0 discriminator 2
	movi.n	a3, 0x25
	s32i	a3, sp, 68
.L49:
	.loc 1 420 0 is_stmt 1
	l32i	a14, sp, 68
	bnei	a14, -1, .L50
	.loc 1 420 0 is_stmt 0 discriminator 1
	beqz.n	a13, .L51
.L50:
	.loc 1 421 0 is_stmt 1
	l32r	a12, .LC20
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	snprintf
.LVL92:
.L51:
	.loc 1 422 0
	mov.n	a10, sp
	call8	strlen
.LVL93:
	mov.n	a12, a10
	mov.n	a11, sp
	mov.n	a10, a2
	call8	abAppend
.LVL94:
	.loc 1 423 0
	mov.n	a12, a4
	mov.n	a11, a5
	mov.n	a10, a2
	call8	abAppend
.LVL95:
	.loc 1 424 0
	l32i	a3, sp, 68
	bnei	a3, -1, .L52
	.loc 1 424 0 is_stmt 0 discriminator 1
	l32i	a3, sp, 64
	beqz.n	a3, .L53
.L52:
	.loc 1 425 0 is_stmt 1
	movi.n	a12, 4
	l32r	a11, .LC22
	mov.n	a10, a2
	call8	abAppend
.LVL96:
.L53:
	.loc 1 427 0
	l32r	a2, .LC23
.LVL97:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L45
	.loc 1 427 0 is_stmt 0 discriminator 1
	mov.n	a10, a5
	callx8	a2
.LVL98:
.L45:
	retw.n
.LBE7:
.LBE6:
.LFE15:
	.size	refreshShowHints, .-refreshShowHints
	.section	.rodata.str1.4
	.align	4
.LC24:
	.string	"\033[%dB"
	.align	4
.LC26:
	.string	"\r\033[0K\033[1A"
	.align	4
.LC28:
	.string	"\r\033[0K"
	.align	4
.LC30:
	.string	"\n"
	.align	4
.LC32:
	.string	"\033[%dA"
	.align	4
.LC34:
	.string	"\r\033[%dC"
	.section	.text.refreshMultiLine,"ax",@progbits
	.literal_position
	.literal .LC25, .LC24
	.literal .LC27, .LC26
	.literal .LC29, .LC28
	.literal .LC31, .LC30
	.literal .LC33, .LC32
	.literal .LC35, .LC34
	.align	4
	.type	refreshMultiLine, @function
refreshMultiLine:
.LFB17:
	.loc 1 476 0 is_stmt 1
.LVL99:
	entry	sp, 112
.LCFI17:
	.loc 1 478 0
	l32i.n	a6, a2, 12
.LVL100:
	.loc 1 479 0
	l32i.n	a5, a2, 24
	add.n	a5, a6, a5
	l32i.n	a13, a2, 28
	add.n	a5, a5, a13
	addi.n	a5, a5, -1
	quou	a5, a5, a13
	mov.n	a7, a5
.LVL101:
	.loc 1 480 0
	l32i.n	a3, a2, 20
	add.n	a3, a6, a3
	add.n	a3, a13, a3
	quou	a3, a3, a13
.LVL102:
	.loc 1 483 0
	l32i.n	a4, a2, 32
.LVL103:
	.loc 1 488 0
	bge	a4, a5, .L55
	.loc 1 488 0 is_stmt 0 discriminator 1
	s32i.n	a5, a2, 32
.L55:
	.loc 1 492 0 is_stmt 1
	addi	a10, sp, 64
	call8	abInit
.LVL104:
	.loc 1 493 0
	sub	a13, a4, a3
	blti	a13, 1, .L56
	.loc 1 495 0
	l32r	a12, .LC25
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	snprintf
.LVL105:
	.loc 1 496 0
	mov.n	a10, sp
	call8	strlen
.LVL106:
	mov.n	a12, a10
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	abAppend
.LVL107:
.L56:
	.loc 1 476 0 discriminator 1
	movi.n	a3, 0
.LVL108:
	j	.L57
.LVL109:
.L58:
	.loc 1 502 0 discriminator 3
	l32r	a8, .LC27
	l32i.n	a10, a8, 0
	l32i.n	a9, a8, 4
	s32i.n	a10, sp, 0
	l16ui	a8, a8, 8
	s32i.n	a9, sp, 4
	s16i	a8, sp, 8
	.loc 1 503 0 discriminator 3
	mov.n	a10, sp
	call8	strlen
.LVL110:
	mov.n	a12, a10
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	abAppend
.LVL111:
	.loc 1 500 0 discriminator 3
	addi.n	a3, a3, 1
.LVL112:
.L57:
	.loc 1 500 0 is_stmt 0 discriminator 1
	addi.n	a8, a4, -1
	blt	a3, a8, .L58
	.loc 1 508 0 is_stmt 1
	l32r	a3, .LC29
.LVL113:
	l32i.n	a4, a3, 0
.LVL114:
	l16ui	a3, a3, 4
	s32i.n	a4, sp, 0
	s16i	a3, sp, 4
	.loc 1 509 0
	mov.n	a10, sp
	call8	strlen
.LVL115:
	mov.n	a12, a10
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	abAppend
.LVL116:
	.loc 1 512 0
	l32i.n	a3, a2, 8
	mov.n	a10, a3
	call8	strlen
.LVL117:
	mov.n	a12, a10
	mov.n	a11, a3
	addi	a10, sp, 64
	call8	abAppend
.LVL118:
	.loc 1 513 0
	l32i.n	a12, a2, 24
	l32i.n	a11, a2, 0
	addi	a10, sp, 64
	call8	abAppend
.LVL119:
	.loc 1 516 0
	mov.n	a12, a6
	mov.n	a11, a2
	addi	a10, sp, 64
	call8	refreshShowHints
.LVL120:
	.loc 1 520 0
	l32i.n	a3, a2, 16
	beqz.n	a3, .L59
	.loc 1 521 0 discriminator 1
	l32i.n	a4, a2, 24
	.loc 1 520 0 discriminator 1
	bne	a3, a4, .L59
	.loc 1 522 0
	add.n	a3, a6, a3
	l32i.n	a4, a2, 28
	remu	a3, a3, a4
	.loc 1 521 0
	bnez.n	a3, .L59
	.loc 1 525 0
	movi.n	a12, 1
	l32r	a11, .LC31
	addi	a10, sp, 64
	call8	abAppend
.LVL121:
	.loc 1 526 0
	movi.n	a3, 0xd
	s16i	a3, sp, 0
	.loc 1 527 0
	mov.n	a10, sp
	call8	strlen
.LVL122:
	mov.n	a12, a10
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	abAppend
.LVL123:
	.loc 1 528 0
	addi.n	a7, a5, 1
.LVL124:
	.loc 1 529 0
	l32i.n	a3, a2, 32
	bge	a3, a7, .L59
	.loc 1 529 0 is_stmt 0 discriminator 1
	s32i.n	a7, a2, 32
.L59:
	.loc 1 533 0 is_stmt 1
	l32i.n	a3, a2, 16
	add.n	a3, a6, a3
	l32i.n	a13, a2, 28
	add.n	a3, a3, a13
	quou	a13, a3, a13
.LVL125:
	.loc 1 537 0
	sub	a13, a7, a13
.LVL126:
	blti	a13, 1, .L60
	.loc 1 539 0
	l32r	a12, .LC33
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	snprintf
.LVL127:
	.loc 1 540 0
	mov.n	a10, sp
	call8	strlen
.LVL128:
	mov.n	a12, a10
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	abAppend
.LVL129:
.L60:
	.loc 1 544 0
	l32i.n	a13, a2, 16
	add.n	a6, a6, a13
.LVL130:
	l32i.n	a13, a2, 28
	rems	a13, a6, a13
.LVL131:
	.loc 1 546 0
	beqz.n	a13, .L61
	.loc 1 547 0
	l32r	a12, .LC35
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	snprintf
.LVL132:
	j	.L62
.LVL133:
.L61:
	.loc 1 549 0
	movi.n	a3, 0xd
	s16i	a3, sp, 0
.LVL134:
.L62:
	.loc 1 550 0
	mov.n	a10, sp
	call8	strlen
.LVL135:
	mov.n	a12, a10
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	abAppend
.LVL136:
	.loc 1 553 0
	l32i.n	a3, a2, 16
	s32i.n	a3, a2, 20
	.loc 1 555 0
	l32i	a2, sp, 64
.LVL137:
	l32i	a3, sp, 68
	call8	__getreent
.LVL138:
	l32i.n	a13, a10, 8
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	fwrite
.LVL139:
	.loc 1 556 0
	addi	a10, sp, 64
	call8	abFree
.LVL140:
	retw.n
.LFE17:
	.size	refreshMultiLine, .-refreshMultiLine
	.section	.rodata.str1.4
	.align	4
.LC36:
	.string	"\033[0K"
	.section	.text.refreshSingleLine,"ax",@progbits
	.literal_position
	.literal .LC37, .LC36
	.literal .LC38, .LC34
	.align	4
	.type	refreshSingleLine, @function
refreshSingleLine:
.LFB16:
	.loc 1 436 0
.LVL141:
	entry	sp, 112
.LCFI18:
	.loc 1 438 0
	l32i.n	a4, a2, 12
.LVL142:
	.loc 1 439 0
	l32i.n	a6, a2, 0
.LVL143:
	.loc 1 440 0
	l32i.n	a3, a2, 24
.LVL144:
	.loc 1 441 0
	l32i.n	a9, a2, 16
.LVL145:
	.loc 1 444 0
	j	.L64
.L65:
	.loc 1 445 0
	addi.n	a6, a6, 1
.LVL146:
	.loc 1 446 0
	addi.n	a3, a3, -1
.LVL147:
	.loc 1 447 0
	addi.n	a9, a9, -1
.LVL148:
.L64:
	.loc 1 444 0
	add.n	a5, a9, a4
	l32i.n	a8, a2, 28
	bgeu	a5, a8, .L65
	j	.L66
.LVL149:
.L67:
	.loc 1 450 0
	addi.n	a3, a3, -1
.LVL150:
.L66:
	.loc 1 449 0
	add.n	a9, a3, a4
	bltu	a8, a9, .L67
	.loc 1 453 0
	addi	a10, sp, 64
	call8	abInit
.LVL151:
	.loc 1 455 0
	movi.n	a7, 0xd
	s16i	a7, sp, 0
	.loc 1 456 0
	mov.n	a10, sp
	call8	strlen
.LVL152:
	mov.n	a12, a10
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	abAppend
.LVL153:
	.loc 1 458 0
	l32i.n	a7, a2, 8
	mov.n	a10, a7
	call8	strlen
.LVL154:
	mov.n	a12, a10
	mov.n	a11, a7
	addi	a10, sp, 64
	call8	abAppend
.LVL155:
	.loc 1 459 0
	mov.n	a12, a3
	mov.n	a11, a6
	addi	a10, sp, 64
	call8	abAppend
.LVL156:
	.loc 1 461 0
	mov.n	a12, a4
	mov.n	a11, a2
	addi	a10, sp, 64
	call8	refreshShowHints
.LVL157:
	.loc 1 463 0
	l32r	a2, .LC37
.LVL158:
	l32i.n	a3, a2, 0
.LVL159:
	l8ui	a2, a2, 4
	s32i.n	a3, sp, 0
	s8i	a2, sp, 4
	.loc 1 464 0
	mov.n	a10, sp
	call8	strlen
.LVL160:
	mov.n	a12, a10
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	abAppend
.LVL161:
	.loc 1 466 0
	mov.n	a13, a5
	l32r	a12, .LC38
	movi.n	a11, 0x40
	mov.n	a10, sp
	call8	snprintf
.LVL162:
	.loc 1 467 0
	mov.n	a10, sp
	call8	strlen
.LVL163:
	mov.n	a12, a10
	mov.n	a11, sp
	addi	a10, sp, 64
	call8	abAppend
.LVL164:
	.loc 1 468 0
	l32i	a2, sp, 64
	l32i	a3, sp, 68
	call8	__getreent
.LVL165:
	l32i.n	a13, a10, 8
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a2
	call8	fwrite
.LVL166:
	.loc 1 469 0
	addi	a10, sp, 64
	call8	abFree
.LVL167:
	retw.n
.LFE16:
	.size	refreshSingleLine, .-refreshSingleLine
	.section	.text.refreshLine,"ax",@progbits
	.literal_position
	.literal .LC39, mlmode
	.align	4
	.type	refreshLine, @function
refreshLine:
.LFB18:
	.loc 1 561 0
.LVL168:
	entry	sp, 32
.LCFI19:
	mov.n	a10, a2
	.loc 1 562 0
	l32r	a8, .LC39
	l32i.n	a8, a8, 0
	beqz.n	a8, .L69
	.loc 1 563 0
	call8	refreshMultiLine
.LVL169:
	retw.n
.L69:
	.loc 1 565 0
	call8	refreshSingleLine
.LVL170:
	retw.n
.LFE18:
	.size	refreshLine, .-refreshLine
	.section	.rodata.str1.4
	.align	4
.LC41:
	.string	"%s"
	.section	.text.completeLine,"ax",@progbits
	.literal_position
	.literal .LC40, completionCallback
	.literal .LC42, .LC41
	.align	4
	.type	completeLine, @function
completeLine:
.LFB7:
	.loc 1 284 0
.LVL171:
	entry	sp, 96
.LCFI20:
	.loc 1 285 0
	movi.n	a3, 0
	s32i.n	a3, sp, 0
	s32i.n	a3, sp, 4
	.loc 1 287 0
	s8i	a3, sp, 8
	.loc 1 289 0
	l32r	a3, .LC40
	l32i.n	a3, a3, 0
	mov.n	a11, sp
	l32i.n	a10, a2, 0
	callx8	a3
.LVL172:
	.loc 1 290 0
	l32i.n	a3, sp, 0
	bnez.n	a3, .L83
	.loc 1 291 0
	call8	linenoiseBeep
.LVL173:
	j	.L73
.LVL174:
.L82:
.LBB8:
	.loc 1 297 0
	l32i.n	a4, sp, 0
	bgeu	a3, a4, .L74
.LBB9:
	.loc 1 298 0
	movi.n	a12, 0x28
	mov.n	a11, a2
	addi.n	a10, sp, 12
	call8	memcpy
.LVL175:
	.loc 1 300 0
	l32i.n	a4, sp, 4
	addx4	a4, a3, a4
	l32i.n	a10, a4, 0
	call8	strlen
.LVL176:
	s32i.n	a10, a2, 16
	s32i.n	a10, a2, 24
	.loc 1 301 0
	l32i.n	a4, a4, 0
	s32i.n	a4, a2, 0
	.loc 1 302 0
	mov.n	a10, a2
	call8	refreshLine
.LVL177:
	.loc 1 303 0
	l32i.n	a4, sp, 36
	s32i.n	a4, a2, 24
	.loc 1 304 0
	l32i.n	a4, sp, 28
	s32i.n	a4, a2, 16
	.loc 1 305 0
	l32i.n	a4, sp, 12
	s32i.n	a4, a2, 0
.LBE9:
	j	.L75
.L74:
	.loc 1 307 0
	mov.n	a10, a2
	call8	refreshLine
.LVL178:
.L75:
	.loc 1 310 0
	call8	__getreent
.LVL179:
	l32i.n	a13, a10, 4
	movi.n	a12, 1
	mov.n	a11, a12
	addi.n	a10, sp, 8
	call8	fread
.LVL180:
	.loc 1 311 0
	bgei	a10, 1, .L76
	.loc 1 312 0
	mov.n	a10, sp
.LVL181:
	call8	freeCompletions
.LVL182:
	.loc 1 313 0
	movi.n	a2, -1
.LVL183:
	retw.n
.LVL184:
.L76:
	.loc 1 316 0
	l8ui	a8, sp, 8
	movi.n	a4, 9
	beq	a8, a4, .L79
	movi.n	a4, 0x1b
	beq	a8, a4, .L80
	j	.L86
.L79:
	.loc 1 318 0
	addi.n	a3, a3, 1
.LVL185:
	l32i.n	a4, sp, 0
	addi.n	a8, a4, 1
	remu	a3, a3, a8
.LVL186:
	.loc 1 319 0
	bne	a4, a3, .L72
	.loc 1 319 0 is_stmt 0 discriminator 1
	call8	linenoiseBeep
.LVL187:
	j	.L72
.LVL188:
.L80:
	.loc 1 323 0 is_stmt 1
	l32i.n	a4, sp, 0
	bgeu	a3, a4, .L84
	.loc 1 323 0 is_stmt 0 discriminator 1
	mov.n	a10, a2
.LVL189:
	call8	refreshLine
.LVL190:
	.loc 1 324 0 is_stmt 1 discriminator 1
	movi.n	a5, 1
.LVL191:
	j	.L72
.LVL192:
.L86:
	.loc 1 328 0
	l32i.n	a4, sp, 0
	bgeu	a3, a4, .L85
	.loc 1 329 0
	l32i.n	a4, sp, 4
	addx4	a4, a3, a4
	l32i.n	a13, a4, 0
	l32r	a12, .LC42
	l32i.n	a11, a2, 4
	l32i.n	a10, a2, 0
.LVL193:
	call8	snprintf
.LVL194:
	.loc 1 330 0
	s32i.n	a10, a2, 16
	s32i.n	a10, a2, 24
	.loc 1 332 0
	movi.n	a5, 1
.LVL195:
	j	.L72
.LVL196:
.L84:
	.loc 1 324 0
	movi.n	a5, 1
.LVL197:
	j	.L72
.LVL198:
.L85:
	.loc 1 332 0
	movi.n	a5, 1
.LVL199:
	j	.L72
.LVL200:
.L83:
.LBE8:
	movi.n	a3, 0
	mov.n	a5, a3
.L72:
.LVL201:
.LBB10:
	.loc 1 295 0
	beqz.n	a5, .L82
.LVL202:
.L73:
.LBE10:
	.loc 1 338 0
	mov.n	a10, sp
	call8	freeCompletions
.LVL203:
	.loc 1 339 0
	l8ui	a2, sp, 8
.LVL204:
	.loc 1 340 0
	retw.n
.LFE7:
	.size	completeLine, .-completeLine
	.section	.text.linenoiseEditInsert,"ax",@progbits
	.literal_position
	.literal .LC43, mlmode
	.literal .LC44, hintsCallback
	.align	4
	.global	linenoiseEditInsert
	.type	linenoiseEditInsert, @function
linenoiseEditInsert:
.LFB19:
	.loc 1 571 0
.LVL205:
	entry	sp, 48
.LCFI21:
	s8i	a3, sp, 0
	.loc 1 572 0
	l32i.n	a12, a2, 24
	l32i.n	a3, a2, 4
.LVL206:
	bgeu	a12, a3, .L91
	.loc 1 573 0
	l32i.n	a11, a2, 16
	bne	a12, a11, .L89
	.loc 1 574 0
	l32i.n	a3, a2, 0
	add.n	a11, a3, a11
	l8ui	a3, sp, 0
	s8i	a3, a11, 0
.LVL207:
	.loc 1 575 0
	l32i.n	a3, a2, 16
.LVL208:
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 16
	.loc 1 576 0
	l32i.n	a3, a2, 24
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 24
	.loc 1 577 0
	l32i.n	a8, a2, 0
	add.n	a3, a8, a3
	movi.n	a8, 0
	s8i	a8, a3, 0
	.loc 1 578 0
	l32r	a3, .LC43
	l32i.n	a3, a3, 0
	bnez.n	a3, .L90
	.loc 1 578 0 is_stmt 0 discriminator 1
	l32i.n	a9, a2, 12
	l32i.n	a8, a2, 24
	add.n	a8, a9, a8
	l32i.n	a9, a2, 28
	bgeu	a8, a9, .L90
	.loc 1 578 0 discriminator 2
	l32r	a8, .LC44
	l32i.n	a8, a8, 0
	bnez.n	a8, .L90
	.loc 1 581 0 is_stmt 1
	call8	__getreent
.LVL209:
	l32i.n	a13, a10, 8
	movi.n	a12, 1
	mov.n	a11, a12
	mov.n	a10, sp
	call8	fwrite
.LVL210:
	bnei	a10, -1, .L88
	movi.n	a3, -1
	j	.L88
.L90:
	.loc 1 583 0
	mov.n	a10, a2
	call8	refreshLine
.LVL211:
	.loc 1 594 0
	movi.n	a3, 0
	j	.L88
.LVL212:
.L89:
	.loc 1 586 0
	l32i.n	a3, a2, 0
	addi.n	a10, a11, 1
	sub	a12, a12, a11
	add.n	a11, a3, a11
	add.n	a10, a3, a10
	call8	memmove
.LVL213:
	.loc 1 587 0
	l32i.n	a8, a2, 0
	l32i.n	a3, a2, 16
	add.n	a3, a8, a3
	l8ui	a8, sp, 0
	s8i	a8, a3, 0
	.loc 1 588 0
	l32i.n	a3, a2, 24
	addi.n	a3, a3, 1
	s32i.n	a3, a2, 24
	.loc 1 589 0
	l32i.n	a8, a2, 16
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 16
	.loc 1 590 0
	l32i.n	a8, a2, 0
	add.n	a3, a8, a3
	movi.n	a8, 0
	s8i	a8, a3, 0
	.loc 1 591 0
	mov.n	a10, a2
	call8	refreshLine
.LVL214:
	.loc 1 594 0
	movi.n	a3, 0
	j	.L88
.L91:
	movi.n	a3, 0
.LVL215:
.L88:
	.loc 1 595 0
	mov.n	a2, a3
.LVL216:
	retw.n
.LFE19:
	.size	linenoiseEditInsert, .-linenoiseEditInsert
	.section	.text.linenoiseEditMoveLeft,"ax",@progbits
	.align	4
	.global	linenoiseEditMoveLeft
	.type	linenoiseEditMoveLeft, @function
linenoiseEditMoveLeft:
.LFB20:
	.loc 1 598 0
.LVL217:
	entry	sp, 32
.LCFI22:
	.loc 1 599 0
	l32i.n	a8, a2, 16
	beqz.n	a8, .L92
	.loc 1 600 0
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 16
	.loc 1 601 0
	mov.n	a10, a2
	call8	refreshLine
.LVL218:
.L92:
	retw.n
.LFE20:
	.size	linenoiseEditMoveLeft, .-linenoiseEditMoveLeft
	.section	.text.linenoiseEditMoveRight,"ax",@progbits
	.align	4
	.global	linenoiseEditMoveRight
	.type	linenoiseEditMoveRight, @function
linenoiseEditMoveRight:
.LFB21:
	.loc 1 606 0
.LVL219:
	entry	sp, 32
.LCFI23:
	.loc 1 607 0
	l32i.n	a8, a2, 16
	l32i.n	a9, a2, 24
	beq	a8, a9, .L94
	.loc 1 608 0
	addi.n	a8, a8, 1
	s32i.n	a8, a2, 16
	.loc 1 609 0
	mov.n	a10, a2
	call8	refreshLine
.LVL220:
.L94:
	retw.n
.LFE21:
	.size	linenoiseEditMoveRight, .-linenoiseEditMoveRight
	.section	.text.linenoiseEditMoveHome,"ax",@progbits
	.align	4
	.global	linenoiseEditMoveHome
	.type	linenoiseEditMoveHome, @function
linenoiseEditMoveHome:
.LFB22:
	.loc 1 614 0
.LVL221:
	entry	sp, 32
.LCFI24:
	.loc 1 615 0
	l32i.n	a8, a2, 16
	beqz.n	a8, .L96
	.loc 1 616 0
	movi.n	a8, 0
	s32i.n	a8, a2, 16
	.loc 1 617 0
	mov.n	a10, a2
	call8	refreshLine
.LVL222:
.L96:
	retw.n
.LFE22:
	.size	linenoiseEditMoveHome, .-linenoiseEditMoveHome
	.section	.text.linenoiseEditMoveEnd,"ax",@progbits
	.align	4
	.global	linenoiseEditMoveEnd
	.type	linenoiseEditMoveEnd, @function
linenoiseEditMoveEnd:
.LFB23:
	.loc 1 622 0
.LVL223:
	entry	sp, 32
.LCFI25:
	.loc 1 623 0
	l32i.n	a9, a2, 16
	l32i.n	a8, a2, 24
	beq	a9, a8, .L98
	.loc 1 624 0
	s32i.n	a8, a2, 16
	.loc 1 625 0
	mov.n	a10, a2
	call8	refreshLine
.LVL224:
.L98:
	retw.n
.LFE23:
	.size	linenoiseEditMoveEnd, .-linenoiseEditMoveEnd
	.section	.text.linenoiseEditHistoryNext,"ax",@progbits
	.literal_position
	.literal .LC45, history_len
	.literal .LC46, history
	.align	4
	.global	linenoiseEditHistoryNext
	.type	linenoiseEditHistoryNext, @function
linenoiseEditHistoryNext:
.LFB24:
	.loc 1 633 0
.LVL225:
	entry	sp, 32
.LCFI26:
	.loc 1 634 0
	l32r	a4, .LC45
	l32i.n	a5, a4, 0
	blti	a5, 2, .L100
	.loc 1 637 0
	l32r	a4, .LC46
	l32i.n	a6, a4, 0
	addi.n	a4, a5, -1
	l32i.n	a7, a2, 36
	sub	a7, a4, a7
	addx4	a7, a7, a6
	l32i.n	a10, a7, 0
	call8	free
.LVL226:
	.loc 1 638 0
	l32i.n	a7, a2, 36
	sub	a7, a4, a7
	addx4	a7, a7, a6
	l32i.n	a10, a2, 0
	call8	strdup
.LVL227:
	s32i.n	a10, a7, 0
	.loc 1 640 0
	l32i.n	a8, a2, 36
	beqi	a3, 1, .L102
	movi.n	a3, -1
.LVL228:
.L102:
	.loc 1 640 0 is_stmt 0 discriminator 4
	add.n	a8, a3, a8
	s32i.n	a8, a2, 36
	.loc 1 641 0 is_stmt 1 discriminator 4
	bgez	a8, .L103
	.loc 1 642 0
	movi.n	a3, 0
	s32i.n	a3, a2, 36
	.loc 1 643 0
	retw.n
.L103:
	.loc 1 644 0
	blt	a8, a5, .L104
	.loc 1 645 0
	s32i.n	a4, a2, 36
	.loc 1 646 0
	retw.n
.L104:
	.loc 1 648 0
	sub	a8, a4, a8
	addx4	a6, a8, a6
	l32i.n	a12, a2, 4
	l32i.n	a11, a6, 0
	l32i.n	a10, a2, 0
	call8	strncpy
.LVL229:
	.loc 1 649 0
	l32i.n	a4, a2, 0
	l32i.n	a3, a2, 4
	addi.n	a3, a3, -1
	add.n	a3, a4, a3
	movi.n	a4, 0
	s8i	a4, a3, 0
	.loc 1 650 0
	l32i.n	a10, a2, 0
	call8	strlen
.LVL230:
	s32i.n	a10, a2, 16
	s32i.n	a10, a2, 24
	.loc 1 651 0
	mov.n	a10, a2
	call8	refreshLine
.LVL231:
.L100:
	retw.n
.LFE24:
	.size	linenoiseEditHistoryNext, .-linenoiseEditHistoryNext
	.section	.text.linenoiseEditDelete,"ax",@progbits
	.align	4
	.global	linenoiseEditDelete
	.type	linenoiseEditDelete, @function
linenoiseEditDelete:
.LFB25:
	.loc 1 657 0
.LVL232:
	entry	sp, 32
.LCFI27:
	.loc 1 658 0
	l32i.n	a12, a2, 24
	beqz.n	a12, .L106
	.loc 1 658 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 16
	bgeu	a8, a12, .L106
	.loc 1 659 0 is_stmt 1
	l32i.n	a10, a2, 0
	addi.n	a11, a8, 1
	sub	a12, a12, a8
	addi.n	a12, a12, -1
	add.n	a11, a10, a11
	add.n	a10, a10, a8
	call8	memmove
.LVL233:
	.loc 1 660 0
	l32i.n	a8, a2, 24
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 24
	.loc 1 661 0
	l32i.n	a9, a2, 0
	add.n	a8, a9, a8
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 662 0
	mov.n	a10, a2
	call8	refreshLine
.LVL234:
.L106:
	retw.n
.LFE25:
	.size	linenoiseEditDelete, .-linenoiseEditDelete
	.section	.text.linenoiseEditBackspace,"ax",@progbits
	.align	4
	.global	linenoiseEditBackspace
	.type	linenoiseEditBackspace, @function
linenoiseEditBackspace:
.LFB26:
	.loc 1 667 0
.LVL235:
	entry	sp, 32
.LCFI28:
	.loc 1 668 0
	l32i.n	a11, a2, 16
	beqz.n	a11, .L108
	.loc 1 668 0 is_stmt 0 discriminator 1
	l32i.n	a12, a2, 24
	beqz.n	a12, .L108
	.loc 1 669 0 is_stmt 1
	l32i.n	a8, a2, 0
	addi.n	a10, a11, -1
	sub	a12, a12, a11
	add.n	a11, a8, a11
	add.n	a10, a8, a10
	call8	memmove
.LVL236:
	.loc 1 670 0
	l32i.n	a8, a2, 16
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 16
	.loc 1 671 0
	l32i.n	a8, a2, 24
	addi.n	a8, a8, -1
	s32i.n	a8, a2, 24
	.loc 1 672 0
	l32i.n	a9, a2, 0
	add.n	a8, a9, a8
	movi.n	a9, 0
	s8i	a9, a8, 0
	.loc 1 673 0
	mov.n	a10, a2
	call8	refreshLine
.LVL237:
.L108:
	retw.n
.LFE26:
	.size	linenoiseEditBackspace, .-linenoiseEditBackspace
	.section	.text.linenoiseEditDeletePrevWord,"ax",@progbits
	.align	4
	.global	linenoiseEditDeletePrevWord
	.type	linenoiseEditDeletePrevWord, @function
linenoiseEditDeletePrevWord:
.LFB27:
	.loc 1 679 0
.LVL238:
	entry	sp, 32
.LCFI29:
	.loc 1 680 0
	l32i.n	a11, a2, 16
.LVL239:
	.loc 1 683 0
	j	.L111
.L113:
	.loc 1 684 0
	s32i.n	a8, a2, 16
.L111:
	.loc 1 683 0
	l32i.n	a8, a2, 16
	beqz.n	a8, .L112
	.loc 1 683 0 is_stmt 0 discriminator 1
	l32i.n	a9, a2, 0
	addi.n	a8, a8, -1
	add.n	a9, a9, a8
	l8ui	a9, a9, 0
	beqi	a9, 32, .L113
	j	.L112
.L115:
	.loc 1 686 0 is_stmt 1
	s32i.n	a10, a2, 16
.L112:
	.loc 1 685 0
	l32i.n	a9, a2, 16
	beqz.n	a9, .L114
	.loc 1 685 0 is_stmt 0 discriminator 1
	l32i.n	a8, a2, 0
	addi.n	a10, a9, -1
	add.n	a8, a8, a10
	l8ui	a8, a8, 0
	bnei	a8, 32, .L115
.L114:
	.loc 1 687 0 is_stmt 1
	sub	a3, a11, a9
.LVL240:
	.loc 1 688 0
	l32i.n	a10, a2, 0
	l32i.n	a12, a2, 24
	sub	a12, a12, a11
	addi.n	a12, a12, 1
	add.n	a11, a10, a11
.LVL241:
	add.n	a10, a10, a9
	call8	memmove
.LVL242:
	.loc 1 689 0
	l32i.n	a8, a2, 24
	sub	a8, a8, a3
	s32i.n	a8, a2, 24
	.loc 1 690 0
	mov.n	a10, a2
	call8	refreshLine
.LVL243:
	retw.n
.LFE27:
	.size	linenoiseEditDeletePrevWord, .-linenoiseEditDeletePrevWord
	.section	.rodata.str1.4
	.align	4
.LC48:
	.string	"\033[5n"
	.section	.text.linenoiseProbe,"ax",@progbits
	.literal_position
	.literal .LC47, 16384
	.literal .LC49, .LC48
	.literal .LC50, 10000
	.literal .LC51, -16385
	.align	4
	.global	linenoiseProbe
	.type	linenoiseProbe, @function
linenoiseProbe:
.LFB29:
	.loc 1 886 0
	entry	sp, 48
.LCFI30:
	.loc 1 888 0
	movi.n	a11, 3
	movi.n	a10, 0
	call8	fcntl
.LVL244:
	mov.n	a4, a10
.LVL245:
	.loc 1 890 0
	l32r	a12, .LC47
	or	a12, a10, a12
.LVL246:
	movi.n	a11, 4
	movi.n	a10, 0
	call8	fcntl
.LVL247:
	.loc 1 891 0
	bnez.n	a10, .L121
	.loc 1 895 0
	call8	__getreent
.LVL248:
	l32i.n	a13, a10, 8
	movi.n	a12, 4
	movi.n	a11, 1
	l32r	a10, .LC49
	call8	fwrite
.LVL249:
	.loc 1 899 0
	movi.n	a3, 0
	.loc 1 898 0
	movi	a2, 0xc8
	.loc 1 900 0
	j	.L118
.LVL250:
.L120:
.LBB11:
	.loc 1 901 0
	l32r	a10, .LC50
	call8	usleep
.LVL251:
	.loc 1 903 0
	call8	__getreent
.LVL252:
	l32i.n	a13, a10, 4
	movi.n	a12, 1
	mov.n	a11, a12
	mov.n	a10, sp
	call8	fread
.LVL253:
	.loc 1 904 0
	add.n	a3, a3, a10
.LVL254:
	.loc 1 905 0
	addi.n	a2, a2, -1
.LVL255:
.L118:
.LBE11:
	.loc 1 900 0
	srai	a8, a2, 31
	sub	a8, a8, a2
	extui	a8, a8, 31, 1
	movi.n	a9, 1
	bltui	a3, 4, .L119
	movi.n	a9, 0
.L119:
	bany	a8, a9, .L120
.LVL256:
	.loc 1 909 0
	l32r	a12, .LC51
	and	a12, a4, a12
.LVL257:
	movi.n	a11, 4
	movi.n	a10, 0
	call8	fcntl
.LVL258:
	.loc 1 910 0
	bnez.n	a10, .L122
	.loc 1 913 0
	bgeui	a3, 4, .L123
	.loc 1 914 0
	movi.n	a2, -2
.LVL259:
	retw.n
.LVL260:
.L121:
	.loc 1 892 0
	movi.n	a2, -1
	retw.n
.LVL261:
.L122:
	.loc 1 911 0
	movi.n	a2, -1
.LVL262:
	retw.n
.LVL263:
.L123:
	.loc 1 916 0
	movi.n	a2, 0
.LVL264:
	.loc 1 917 0
	retw.n
.LFE29:
	.size	linenoiseProbe, .-linenoiseProbe
	.section	.text.linenoiseFree,"ax",@progbits
	.align	4
	.global	linenoiseFree
	.type	linenoiseFree, @function
linenoiseFree:
.LFB34:
	.loc 1 993 0
.LVL265:
	entry	sp, 32
.LCFI31:
	.loc 1 994 0
	mov.n	a10, a2
	call8	free
.LVL266:
	retw.n
.LFE34:
	.size	linenoiseFree, .-linenoiseFree
	.section	.text.linenoiseHistoryFree,"ax",@progbits
	.literal_position
	.literal .LC52, history
	.literal .LC53, history_len
	.align	4
	.global	linenoiseHistoryFree
	.type	linenoiseHistoryFree, @function
linenoiseHistoryFree:
.LFB35:
	.loc 1 999 0
	entry	sp, 32
.LCFI32:
	.loc 1 1000 0
	l32r	a2, .LC52
	l32i.n	a3, a2, 0
	bnez.n	a3, .L129
	j	.L127
.LVL267:
.L128:
.LBB12:
	.loc 1 1002 0 discriminator 3
	addx4	a8, a2, a3
	l32i.n	a10, a8, 0
	call8	free
.LVL268:
	.loc 1 1001 0 discriminator 3
	addi.n	a2, a2, 1
.LVL269:
	j	.L126
.LVL270:
.L129:
.LBE12:
	movi.n	a2, 0
.L126:
.LVL271:
.LBB13:
	.loc 1 1001 0 is_stmt 0 discriminator 1
	l32r	a8, .LC53
	l32i.n	a8, a8, 0
	blt	a2, a8, .L128
.LBE13:
	.loc 1 1004 0 is_stmt 1
	mov.n	a10, a3
	call8	free
.LVL272:
.L127:
	.loc 1 1006 0
	movi.n	a3, 0
	l32r	a2, .LC52
	s32i.n	a3, a2, 0
	retw.n
.LFE35:
	.size	linenoiseHistoryFree, .-linenoiseHistoryFree
	.section	.text.linenoiseHistoryAdd,"ax",@progbits
	.literal_position
	.literal .LC54, history_max_len
	.literal .LC55, history
	.literal .LC56, history_len
	.literal .LC57, 1073741823
	.align	4
	.global	linenoiseHistoryAdd
	.type	linenoiseHistoryAdd, @function
linenoiseHistoryAdd:
.LFB36:
	.loc 1 1016 0
.LVL273:
	entry	sp, 32
.LCFI33:
	mov.n	a4, a2
	.loc 1 1019 0
	l32r	a2, .LC54
.LVL274:
	l32i.n	a2, a2, 0
	beqz.n	a2, .L131
	.loc 1 1022 0
	l32r	a3, .LC55
	l32i.n	a3, a3, 0
	bnez.n	a3, .L132
	.loc 1 1023 0
	slli	a3, a2, 2
	mov.n	a10, a3
	call8	malloc
.LVL275:
	l32r	a5, .LC55
	s32i.n	a10, a5, 0
	.loc 1 1024 0
	beqz.n	a10, .L135
	.loc 1 1025 0
	mov.n	a12, a3
	movi.n	a11, 0
	call8	memset
.LVL276:
.L132:
	.loc 1 1029 0
	l32r	a3, .LC56
	l32i.n	a3, a3, 0
	beqz.n	a3, .L133
	.loc 1 1029 0 is_stmt 0 discriminator 1
	l32r	a8, .LC57
	add.n	a8, a3, a8
	l32r	a9, .LC55
	l32i.n	a9, a9, 0
	addx4	a8, a8, a9
	mov.n	a11, a4
	l32i.n	a10, a8, 0
	call8	strcmp
.LVL277:
	beqz.n	a10, .L136
.L133:
	.loc 1 1033 0 is_stmt 1
	mov.n	a10, a4
	call8	strdup
.LVL278:
	mov.n	a4, a10
.LVL279:
	.loc 1 1034 0
	beqz.n	a10, .L137
	.loc 1 1035 0
	bne	a2, a3, .L134
	.loc 1 1036 0
	l32r	a5, .LC55
	l32i.n	a5, a5, 0
	l32i.n	a10, a5, 0
	call8	free
.LVL280:
	.loc 1 1037 0
	addi.n	a12, a2, -1
	slli	a12, a12, 2
	addi.n	a11, a5, 4
	mov.n	a10, a5
	call8	memmove
.LVL281:
	.loc 1 1038 0
	addi.n	a3, a3, -1
	l32r	a2, .LC56
	s32i.n	a3, a2, 0
.L134:
	.loc 1 1040 0
	l32r	a8, .LC56
	l32i.n	a2, a8, 0
	l32r	a3, .LC55
	l32i.n	a3, a3, 0
	addx4	a3, a2, a3
	s32i.n	a4, a3, 0
	.loc 1 1041 0
	addi.n	a2, a2, 1
	s32i.n	a2, a8, 0
	.loc 1 1042 0
	movi.n	a2, 1
	retw.n
.LVL282:
.L135:
	.loc 1 1024 0
	movi.n	a2, 0
	retw.n
.L136:
	.loc 1 1029 0
	mov.n	a2, a10
	retw.n
.LVL283:
.L137:
	.loc 1 1034 0
	movi.n	a2, 0
.LVL284:
.L131:
	.loc 1 1043 0
	retw.n
.LFE36:
	.size	linenoiseHistoryAdd, .-linenoiseHistoryAdd
	.section	.rodata.str1.4
	.align	4
.LC58:
	.string	""
	.section	.text.linenoiseEdit,"ax",@progbits
	.literal_position
	.literal .LC59, .LC58
	.literal .LC60, completionCallback
	.literal .LC61, .L150
	.literal .LC62, history_len
	.literal .LC63, history
	.literal .LC64, mlmode
	.literal .LC65, hintsCallback
	.literal .LC66, .L175
	.align	4
	.type	linenoiseEdit, @function
linenoiseEdit:
.LFB28:
	.loc 1 702 0
.LVL285:
	entry	sp, 80
.LCFI34:
	.loc 1 707 0
	s32i.n	a2, sp, 0
	.loc 1 708 0
	s32i.n	a3, sp, 4
	.loc 1 709 0
	s32i.n	a4, sp, 8
	.loc 1 710 0
	mov.n	a10, a4
	call8	strlen
.LVL286:
	s32i.n	a10, sp, 12
	.loc 1 711 0
	movi.n	a3, 0
.LVL287:
	s32i.n	a3, sp, 16
	s32i.n	a3, sp, 20
	.loc 1 712 0
	s32i.n	a3, sp, 24
	.loc 1 713 0
	call8	getColumns
.LVL288:
	s32i.n	a10, sp, 28
	.loc 1 714 0
	s32i.n	a3, sp, 32
	.loc 1 715 0
	s32i.n	a3, sp, 36
	.loc 1 718 0
	l32i.n	a5, sp, 0
	s8i	a3, a5, 0
	.loc 1 719 0
	l32i.n	a3, sp, 4
	addi.n	a3, a3, -1
	s32i.n	a3, sp, 4
	.loc 1 723 0
	l32r	a10, .LC59
	call8	linenoiseHistoryAdd
.LVL289:
	.loc 1 725 0
	call8	getCursorPosition
.LVL290:
	mov.n	a5, a10
.LVL291:
	.loc 1 726 0
	l32i.n	a3, sp, 12
	call8	__getreent
.LVL292:
	l32i.n	a13, a10, 8
	movi.n	a12, 1
	mov.n	a11, a3
	mov.n	a10, a4
	call8	fwrite
.LVL293:
	beqi	a10, -1, .L183
	.loc 1 727 0
	call8	getCursorPosition
.LVL294:
	.loc 1 728 0
	movi.n	a3, -1
	xor	a4, a3, a5
.LVL295:
	extui	a4, a4, 31, 1
	xor	a3, a3, a10
	extui	a3, a3, 31, 1
	bnone	a4, a3, .L141
	.loc 1 729 0
	sub	a10, a10, a5
.LVL296:
	s32i.n	a10, sp, 12
.LVL297:
.L141:
.LBB14:
	.loc 1 736 0
	call8	__getreent
.LVL298:
	l32i.n	a13, a10, 4
	movi.n	a12, 1
	mov.n	a11, a12
	addi	a10, sp, 43
	call8	fread
.LVL299:
	.loc 1 737 0
	bgei	a10, 1, .L142
	.loc 1 737 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 24
.LVL300:
	retw.n
.LVL301:
.L142:
	.loc 1 742 0 is_stmt 1
	l8ui	a9, sp, 43
	movi.n	a8, 9
	bne	a9, a8, .L144
	.loc 1 742 0 is_stmt 0 discriminator 1
	l32r	a3, .LC60
	l32i.n	a3, a3, 0
	beqz.n	a3, .L144
.LBB15:
	.loc 1 743 0 is_stmt 1
	mov.n	a10, sp
.LVL302:
	call8	completeLine
.LVL303:
	.loc 1 745 0
	bgez	a10, .L145
	.loc 1 745 0 is_stmt 0 discriminator 1
	l32i.n	a2, sp, 24
.LVL304:
	retw.n
.LVL305:
.L145:
	.loc 1 747 0 is_stmt 1
	beqz.n	a10, .L141
	.loc 1 748 0
	s8i	a10, sp, 43
.LVL306:
.L144:
.LBE15:
	.loc 1 751 0
	l8ui	a11, sp, 43
	movi	a8, 0x7f
	bltu	a8, a11, .L148
	l32r	a8, .LC61
	addx4	a8, a11, a8
	l32i.n	a8, a8, 0
	jx	a8
	.section	.rodata.linenoiseEdit,"a",@progbits
	.align	4
	.align	4
.L150:
	.word	.L148
	.word	.L149
	.word	.L151
	.word	.L152
	.word	.L153
	.word	.L154
	.word	.L155
	.word	.L148
	.word	.L156
	.word	.L148
	.word	.L157
	.word	.L158
	.word	.L159
	.word	.L148
	.word	.L160
	.word	.L148
	.word	.L161
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L162
	.word	.L163
	.word	.L148
	.word	.L164
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L165
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L148
	.word	.L156
	.section	.text.linenoiseEdit
.L157:
	.loc 1 753 0
	l32r	a3, .LC62
	l32i.n	a2, a3, 0
.LVL307:
	addi.n	a2, a2, -1
	s32i.n	a2, a3, 0
	.loc 1 754 0
	l32r	a3, .LC63
	l32i.n	a3, a3, 0
	addx4	a2, a2, a3
	l32i.n	a10, a2, 0
	call8	free
.LVL308:
	.loc 1 755 0
	l32r	a2, .LC64
	l32i.n	a2, a2, 0
	beqz.n	a2, .L166
	.loc 1 755 0 is_stmt 0 discriminator 1
	mov.n	a10, sp
	call8	linenoiseEditMoveEnd
.LVL309:
.L166:
	.loc 1 756 0 is_stmt 1
	l32r	a2, .LC65
	l32i.n	a2, a2, 0
	beqz.n	a2, .L167
.LVL310:
.LBB16:
	.loc 1 760 0
	l32r	a3, .LC65
	movi.n	a4, 0
	s32i.n	a4, a3, 0
	.loc 1 761 0
	mov.n	a10, sp
	call8	refreshLine
.LVL311:
	.loc 1 762 0
	s32i.n	a2, a3, 0
.LVL312:
.L167:
.LBE16:
	.loc 1 764 0
	l32i.n	a2, sp, 24
	retw.n
.LVL313:
.L152:
	.loc 1 766 0
	call8	__errno
.LVL314:
	movi.n	a2, 0xb
.LVL315:
	s32i.n	a2, a10, 0
	.loc 1 767 0
	movi.n	a2, -1
	retw.n
.LVL316:
.L156:
	.loc 1 770 0
	mov.n	a10, sp
	call8	linenoiseEditBackspace
.LVL317:
	.loc 1 771 0
	j	.L141
.L153:
	.loc 1 774 0
	l32i.n	a3, sp, 24
	beqz.n	a3, .L169
	.loc 1 775 0
	mov.n	a10, sp
	call8	linenoiseEditDelete
.LVL318:
	.loc 1 781 0
	j	.L141
.L169:
	.loc 1 777 0
	l32r	a3, .LC62
	l32i.n	a2, a3, 0
.LVL319:
	addi.n	a2, a2, -1
	s32i.n	a2, a3, 0
	.loc 1 778 0
	l32r	a3, .LC63
	l32i.n	a3, a3, 0
	addx4	a2, a2, a3
	l32i.n	a10, a2, 0
	call8	free
.LVL320:
	.loc 1 779 0
	movi.n	a2, -1
	retw.n
.LVL321:
.L162:
	.loc 1 783 0
	l32i.n	a3, sp, 16
	beqz.n	a3, .L141
	.loc 1 783 0 is_stmt 0 discriminator 1
	l32i.n	a4, sp, 24
	bgeu	a3, a4, .L141
.LBB17:
	.loc 1 784 0 is_stmt 1
	addi.n	a4, a3, -1
	add.n	a4, a2, a4
	l8ui	a5, a4, 0
.LVL322:
	.loc 1 785 0
	add.n	a3, a2, a3
	l8ui	a3, a3, 0
	s8i	a3, a4, 0
	.loc 1 786 0
	l32i.n	a3, sp, 16
	add.n	a4, a2, a3
	s8i	a5, a4, 0
	.loc 1 787 0
	l32i.n	a4, sp, 24
	addi.n	a4, a4, -1
	beq	a3, a4, .L170
	.loc 1 787 0 is_stmt 0 discriminator 1
	addi.n	a3, a3, 1
	s32i.n	a3, sp, 16
.L170:
	.loc 1 788 0 is_stmt 1
	mov.n	a10, sp
	call8	refreshLine
.LVL323:
	j	.L141
.LVL324:
.L151:
.LBE17:
	.loc 1 792 0
	mov.n	a10, sp
	call8	linenoiseEditMoveLeft
.LVL325:
	.loc 1 793 0
	j	.L141
.L155:
	.loc 1 795 0
	mov.n	a10, sp
	call8	linenoiseEditMoveRight
.LVL326:
	.loc 1 796 0
	j	.L141
.L161:
	.loc 1 798 0
	movi.n	a11, 1
	mov.n	a10, sp
	call8	linenoiseEditHistoryNext
.LVL327:
	.loc 1 799 0
	j	.L141
.L160:
	.loc 1 801 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	linenoiseEditHistoryNext
.LVL328:
	.loc 1 802 0
	j	.L141
.L165:
	.loc 1 805 0
	call8	__getreent
.LVL329:
	l32i.n	a13, a10, 4
	movi.n	a12, 2
	movi.n	a11, 1
	addi	a10, sp, 40
	call8	fread
.LVL330:
	bltui	a10, 2, .L141
	.loc 1 808 0
	l8ui	a3, sp, 40
	movi.n	a4, 0x5b
	bne	a3, a4, .L171
	.loc 1 809 0
	l8ui	a3, sp, 41
	addi	a4, a3, -48
	extui	a4, a4, 0, 8
	movi.n	a5, 9
	bltu	a5, a4, .L172
	.loc 1 811 0
	call8	__getreent
.LVL331:
	l32i.n	a13, a10, 4
	movi.n	a12, 1
	mov.n	a11, a12
	addi	a10, sp, 42
	call8	fread
.LVL332:
	beqi	a10, -1, .L141
	.loc 1 812 0
	l8ui	a4, sp, 42
	movi	a3, 0x7e
	bne	a4, a3, .L141
	.loc 1 813 0
	l8ui	a4, sp, 41
	movi.n	a3, 0x33
	bne	a4, a3, .L141
	.loc 1 815 0
	mov.n	a10, sp
	call8	linenoiseEditDelete
.LVL333:
	.loc 1 816 0
	j	.L141
.L172:
	.loc 1 820 0
	addi	a3, a3, -65
	extui	a4, a3, 0, 8
	bgeui	a4, 8, .L141
	mov.n	a3, a4
	l32r	a4, .LC66
	addx4	a3, a3, a4
	l32i.n	a3, a3, 0
	jx	a3
	.section	.rodata.linenoiseEdit
	.align	4
	.align	4
.L175:
	.word	.L174
	.word	.L176
	.word	.L177
	.word	.L178
	.word	.L141
	.word	.L179
	.word	.L141
	.word	.L180
	.section	.text.linenoiseEdit
.L174:
	.loc 1 822 0
	movi.n	a11, 1
	mov.n	a10, sp
	call8	linenoiseEditHistoryNext
.LVL334:
	.loc 1 823 0
	j	.L141
.L176:
	.loc 1 825 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	linenoiseEditHistoryNext
.LVL335:
	.loc 1 826 0
	j	.L141
.L177:
	.loc 1 828 0
	mov.n	a10, sp
	call8	linenoiseEditMoveRight
.LVL336:
	.loc 1 829 0
	j	.L141
.L178:
	.loc 1 831 0
	mov.n	a10, sp
	call8	linenoiseEditMoveLeft
.LVL337:
	.loc 1 832 0
	j	.L141
.L180:
	.loc 1 834 0
	mov.n	a10, sp
	call8	linenoiseEditMoveHome
.LVL338:
	.loc 1 835 0
	j	.L141
.L179:
	.loc 1 837 0
	mov.n	a10, sp
	call8	linenoiseEditMoveEnd
.LVL339:
	.loc 1 838 0
	j	.L141
.L171:
	.loc 1 844 0
	movi.n	a4, 0x4f
	bne	a3, a4, .L141
	.loc 1 845 0
	l8ui	a3, sp, 41
	movi.n	a4, 0x46
	beq	a3, a4, .L181
	movi.n	a4, 0x48
	bne	a3, a4, .L141
	.loc 1 847 0
	mov.n	a10, sp
	call8	linenoiseEditMoveHome
.LVL340:
	.loc 1 848 0
	j	.L141
.L181:
	.loc 1 850 0
	mov.n	a10, sp
	call8	linenoiseEditMoveEnd
.LVL341:
	.loc 1 851 0
	j	.L141
.L148:
	.loc 1 856 0
	mov.n	a10, sp
	call8	linenoiseEditInsert
.LVL342:
	beqz.n	a10, .L141
	j	.L184
.L163:
	.loc 1 859 0
	movi.n	a3, 0
	s8i	a3, a2, 0
	.loc 1 860 0
	movi.n	a3, 0
	s32i.n	a3, sp, 24
	s32i.n	a3, sp, 16
	.loc 1 861 0
	mov.n	a10, sp
	call8	refreshLine
.LVL343:
	.loc 1 862 0
	j	.L141
.L158:
	.loc 1 864 0
	l32i.n	a3, sp, 16
	add.n	a4, a2, a3
	movi.n	a5, 0
	s8i	a5, a4, 0
	.loc 1 865 0
	s32i.n	a3, sp, 24
	.loc 1 866 0
	mov.n	a10, sp
	call8	refreshLine
.LVL344:
	.loc 1 867 0
	j	.L141
.L149:
	.loc 1 869 0
	mov.n	a10, sp
	call8	linenoiseEditMoveHome
.LVL345:
	.loc 1 870 0
	j	.L141
.L154:
	.loc 1 872 0
	mov.n	a10, sp
	call8	linenoiseEditMoveEnd
.LVL346:
	.loc 1 873 0
	j	.L141
.L159:
	.loc 1 875 0
	call8	linenoiseClearScreen
.LVL347:
	.loc 1 876 0
	mov.n	a10, sp
	call8	refreshLine
.LVL348:
	.loc 1 877 0
	j	.L141
.L164:
	.loc 1 879 0
	mov.n	a10, sp
	call8	linenoiseEditDeletePrevWord
.LVL349:
	.loc 1 880 0
	j	.L141
.L184:
	.loc 1 856 0
	movi.n	a2, -1
.LVL350:
	retw.n
.LVL351:
.L183:
.LBE14:
	.loc 1 726 0
	movi.n	a2, -1
.LVL352:
	.loc 1 884 0
	retw.n
.LFE28:
	.size	linenoiseEdit, .-linenoiseEdit
	.section	.text.linenoiseRaw,"ax",@progbits
	.align	4
	.type	linenoiseRaw, @function
linenoiseRaw:
.LFB30:
	.loc 1 919 0
.LVL353:
	entry	sp, 32
.LCFI35:
	.loc 1 922 0
	bnez.n	a3, .L186
	.loc 1 923 0
	call8	__errno
.LVL354:
	movi.n	a2, 0x16
.LVL355:
	s32i.n	a2, a10, 0
	.loc 1 924 0
	movi.n	a2, -1
	retw.n
.LVL356:
.L186:
	.loc 1 927 0
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	linenoiseEdit
.LVL357:
	mov.n	a2, a10
.LVL358:
	.loc 1 928 0
	call8	__getreent
.LVL359:
	l32i.n	a11, a10, 8
	movi.n	a10, 0xa
	call8	fputc
.LVL360:
	.loc 1 930 0
	retw.n
.LFE30:
	.size	linenoiseRaw, .-linenoiseRaw
	.section	.text.linenoise,"ax",@progbits
	.literal_position
	.literal .LC67, 4096
	.literal .LC68, dumbmode
	.align	4
	.global	linenoise
	.type	linenoise, @function
linenoise:
.LFB33:
	.loc 1 970 0
.LVL361:
	entry	sp, 32
.LCFI36:
	.loc 1 971 0
	l32r	a11, .LC67
	movi.n	a10, 1
	call8	calloc
.LVL362:
	mov.n	a3, a10
.LVL363:
	.loc 1 973 0
	l32r	a8, .LC68
	l32i.n	a8, a8, 0
	bnez.n	a8, .L189
	.loc 1 974 0
	mov.n	a12, a2
	l32r	a11, .LC67
	call8	linenoiseRaw
.LVL364:
	j	.L190
.LVL365:
.L189:
	.loc 1 976 0
	mov.n	a12, a2
	l32r	a11, .LC67
	call8	linenoiseDumb
.LVL366:
.L190:
	.loc 1 978 0
	blti	a10, 1, .L191
	.loc 1 979 0
	mov.n	a10, a3
.LVL367:
	call8	sanitize
.LVL368:
	.loc 1 980 0
	mov.n	a10, a3
	call8	strlen
.LVL369:
.L191:
	.loc 1 982 0
	bgei	a10, 1, .L193
	.loc 1 983 0
	mov.n	a10, a3
.LVL370:
	call8	free
.LVL371:
	.loc 1 984 0
	movi.n	a2, 0
.LVL372:
	retw.n
.LVL373:
.L193:
	.loc 1 986 0
	mov.n	a2, a3
.LVL374:
	.loc 1 987 0
	retw.n
.LFE33:
	.size	linenoise, .-linenoise
	.section	.text.linenoiseHistorySetMaxLen,"ax",@progbits
	.literal_position
	.literal .LC69, history
	.literal .LC70, history_len
	.literal .LC71, history_max_len
	.align	4
	.global	linenoiseHistorySetMaxLen
	.type	linenoiseHistorySetMaxLen, @function
linenoiseHistorySetMaxLen:
.LFB37:
	.loc 1 1049 0
.LVL375:
	entry	sp, 32
.LCFI37:
	.loc 1 1052 0
	blti	a2, 1, .L200
	.loc 1 1053 0
	l32r	a3, .LC69
	l32i.n	a5, a3, 0
	beqz.n	a5, .L196
.LBB18:
	.loc 1 1054 0
	l32r	a3, .LC70
	l32i.n	a4, a3, 0
.LVL376:
	.loc 1 1056 0
	slli	a7, a2, 2
	mov.n	a10, a7
	call8	malloc
.LVL377:
	mov.n	a6, a10
.LVL378:
	.loc 1 1057 0
	beqz.n	a10, .L201
	.loc 1 1060 0
	blt	a2, a4, .L202
	.loc 1 1054 0
	mov.n	a3, a4
	j	.L198
.LVL379:
.L199:
.LBB19:
	.loc 1 1063 0 discriminator 3
	addx4	a8, a3, a5
	l32i.n	a10, a8, 0
	call8	free
.LVL380:
	addi.n	a3, a3, 1
.LVL381:
	j	.L197
.LVL382:
.L202:
.LBE19:
	movi.n	a3, 0
.L197:
.LVL383:
.LBB20:
	.loc 1 1063 0 is_stmt 0 discriminator 1
	sub	a8, a4, a2
	blt	a3, a8, .L199
	.loc 1 1064 0 is_stmt 1
	mov.n	a3, a2
.LVL384:
.L198:
.LBE20:
	.loc 1 1066 0
	mov.n	a12, a7
	movi.n	a11, 0
	mov.n	a10, a6
	call8	memset
.LVL385:
	.loc 1 1067 0
	sub	a11, a4, a3
	slli	a12, a3, 2
	addx4	a11, a11, a5
	mov.n	a10, a6
	call8	memcpy
.LVL386:
	.loc 1 1068 0
	mov.n	a10, a5
	call8	free
.LVL387:
	.loc 1 1069 0
	l32r	a3, .LC69
.LVL388:
	s32i.n	a6, a3, 0
.LVL389:
.L196:
.LBE18:
	.loc 1 1071 0
	l32r	a3, .LC71
	s32i.n	a2, a3, 0
	.loc 1 1072 0
	l32r	a3, .LC70
	l32i.n	a3, a3, 0
	bge	a2, a3, .L203
	.loc 1 1073 0
	l32r	a3, .LC70
	s32i.n	a2, a3, 0
	.loc 1 1074 0
	movi.n	a2, 1
.LVL390:
	retw.n
.LVL391:
.L200:
	.loc 1 1052 0
	movi.n	a2, 0
.LVL392:
	retw.n
.LVL393:
.L201:
.LBB21:
	.loc 1 1057 0
	movi.n	a2, 0
.LVL394:
	retw.n
.LVL395:
.L203:
.LBE21:
	.loc 1 1074 0
	movi.n	a2, 1
.LVL396:
	.loc 1 1075 0
	retw.n
.LFE37:
	.size	linenoiseHistorySetMaxLen, .-linenoiseHistorySetMaxLen
	.section	.rodata.str1.4
	.align	4
.LC72:
	.string	"w"
	.align	4
.LC75:
	.string	"%s\n"
	.section	.text.linenoiseHistorySave,"ax",@progbits
	.literal_position
	.literal .LC73, .LC72
	.literal .LC74, history
	.literal .LC76, .LC75
	.literal .LC77, history_len
	.align	4
	.global	linenoiseHistorySave
	.type	linenoiseHistorySave, @function
linenoiseHistorySave:
.LFB38:
	.loc 1 1079 0
.LVL397:
	entry	sp, 32
.LCFI38:
	.loc 1 1083 0
	l32r	a11, .LC73
	mov.n	a10, a2
	call8	fopen
.LVL398:
	mov.n	a3, a10
.LVL399:
	.loc 1 1084 0
	beqz.n	a10, .L208
	movi.n	a2, 0
.LVL400:
	j	.L206
.LVL401:
.L207:
	.loc 1 1086 0 discriminator 3
	l32r	a8, .LC74
	l32i.n	a8, a8, 0
	addx4	a8, a2, a8
	l32i.n	a12, a8, 0
	l32r	a11, .LC76
	mov.n	a10, a3
	call8	fprintf
.LVL402:
	.loc 1 1085 0 discriminator 3
	addi.n	a2, a2, 1
.LVL403:
.L206:
	.loc 1 1085 0 is_stmt 0 discriminator 1
	l32r	a8, .LC77
	l32i.n	a8, a8, 0
	blt	a2, a8, .L207
	.loc 1 1087 0 is_stmt 1
	mov.n	a10, a3
	call8	fclose
.LVL404:
	.loc 1 1088 0
	movi.n	a2, 0
.LVL405:
	retw.n
.LVL406:
.L208:
	.loc 1 1084 0
	movi.n	a2, -1
.LVL407:
	.loc 1 1089 0
	retw.n
.LFE38:
	.size	linenoiseHistorySave, .-linenoiseHistorySave
	.section	.rodata.str1.4
	.align	4
.LC78:
	.string	"r"
	.section	.text.linenoiseHistoryLoad,"ax",@progbits
	.literal_position
	.literal .LC79, .LC78
	.literal .LC80, 4096
	.align	4
	.global	linenoiseHistoryLoad
	.type	linenoiseHistoryLoad, @function
linenoiseHistoryLoad:
.LFB39:
	.loc 1 1096 0
.LVL408:
	entry	sp, 4128
.LCFI39:
	.loc 1 1097 0
	l32r	a11, .LC79
	mov.n	a10, a2
	call8	fopen
.LVL409:
	mov.n	a2, a10
.LVL410:
	.loc 1 1100 0
	bnez.n	a10, .L211
	j	.L215
.L214:
.LBB22:
	.loc 1 1105 0
	movi.n	a11, 0xd
	mov.n	a10, sp
	call8	strchr
.LVL411:
	.loc 1 1106 0
	bnez.n	a10, .L212
	.loc 1 1106 0 is_stmt 0 discriminator 1
	movi.n	a11, 0xa
	mov.n	a10, sp
.LVL412:
	call8	strchr
.LVL413:
.L212:
	.loc 1 1107 0 is_stmt 1
	beqz.n	a10, .L213
	.loc 1 1107 0 is_stmt 0 discriminator 1
	movi.n	a8, 0
	s8i	a8, a10, 0
.L213:
	.loc 1 1108 0 is_stmt 1
	mov.n	a10, sp
.LVL414:
	call8	linenoiseHistoryAdd
.LVL415:
.L211:
.LBE22:
	.loc 1 1102 0
	mov.n	a12, a2
	l32r	a11, .LC80
	mov.n	a10, sp
	call8	fgets
.LVL416:
	bnez.n	a10, .L214
	.loc 1 1110 0
	mov.n	a10, a2
	call8	fclose
.LVL417:
	.loc 1 1111 0
	movi.n	a2, 0
.LVL418:
	retw.n
.LVL419:
.L215:
	.loc 1 1100 0
	movi.n	a2, -1
.LVL420:
	.loc 1 1112 0
	retw.n
.LFE39:
	.size	linenoiseHistoryLoad, .-linenoiseHistoryLoad
	.section	.bss.history,"aw",@nobits
	.align	4
	.type	history, @object
	.size	history, 4
history:
	.zero	4
	.section	.bss.history_len,"aw",@nobits
	.align	4
	.type	history_len, @object
	.size	history_len, 4
history_len:
	.zero	4
	.section	.data.history_max_len,"aw",@progbits
	.align	4
	.type	history_max_len, @object
	.size	history_max_len, 4
history_max_len:
	.word	100
	.section	.bss.dumbmode,"aw",@nobits
	.align	4
	.type	dumbmode, @object
	.size	dumbmode, 4
dumbmode:
	.zero	4
	.section	.bss.mlmode,"aw",@nobits
	.align	4
	.type	mlmode, @object
	.size	mlmode, 4
mlmode:
	.zero	4
	.section	.bss.freeHintsCallback,"aw",@nobits
	.align	4
	.type	freeHintsCallback, @object
	.size	freeHintsCallback, 4
freeHintsCallback:
	.zero	4
	.section	.bss.hintsCallback,"aw",@nobits
	.align	4
	.type	hintsCallback, @object
	.size	hintsCallback, 4
hintsCallback:
	.zero	4
	.section	.bss.completionCallback,"aw",@nobits
	.align	4
	.type	completionCallback, @object
	.size	completionCallback, 4
completionCallback:
	.zero	4
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
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI1-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI2-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI3-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI4-.LFB6
	.byte	0xe
	.uleb128 0x20
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
	.uleb128 0x50
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x40
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI7-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI8-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI9-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI10-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI11-.LFB4
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI13-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI14-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI15-.LFB11
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI16-.LFB15
	.byte	0xe
	.uleb128 0x70
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI17-.LFB17
	.byte	0xe
	.uleb128 0x70
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
	.uleb128 0x70
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI20-.LFB7
	.byte	0xe
	.uleb128 0x60
	.align	4
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI21-.LFB19
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI22-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI23-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI24-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI25-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI26-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI27-.LFB25
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI28-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI29-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI30-.LFB29
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI31-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI32-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI33-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI34-.LFB28
	.byte	0xe
	.uleb128 0x50
	.align	4
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI35-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI36-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI37-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI38-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI39-.LFB39
	.byte	0xe
	.uleb128 0x1020
	.align	4
.LEFDE78:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/console/linenoise/linenoise.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 10 "<built-in>"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/unistd.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_default_fcntl.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/errno.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2761
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF252
	.byte	0xc
	.4byte	.LASF253
	.4byte	.LASF254
	.4byte	.Ldebug_ranges0+0x78
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
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd8
	.4byte	0x25
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0xb
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0xc
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x10
	.4byte	0x89
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x27
	.4byte	0x89
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x165
	.4byte	0x25
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x4a
	.4byte	0xc6
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x4c
	.4byte	0x9b
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x4d
	.4byte	0xc6
	.byte	0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0xd6
	.uleb128 0x9
	.4byte	0xd6
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0x47
	.4byte	0xfe
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0x49
	.4byte	0x48
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4e
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4f
	.4byte	0xdd
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x53
	.4byte	0x73
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.uleb128 0xd
	.byte	0x4
	.4byte	0x123
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0x16
	.4byte	0x116
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x18
	.byte	0x5
	.byte	0x2d
	.4byte	0x188
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.4byte	0x188
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x5
	.byte	0x30
	.4byte	0x48
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.4byte	0x48
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x30
	.4byte	0x48
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x30
	.4byte	0x48
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x5
	.byte	0x31
	.4byte	0x18e
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x135
	.uleb128 0x8
	.4byte	0x12a
	.4byte	0x19e
	.uleb128 0x9
	.4byte	0xd6
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x24
	.byte	0x5
	.byte	0x35
	.4byte	0x217
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x37
	.4byte	0x48
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x38
	.4byte	0x48
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x39
	.4byte	0x48
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3a
	.4byte	0x48
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3b
	.4byte	0x48
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3c
	.4byte	0x48
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3d
	.4byte	0x48
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x3e
	.4byte	0x48
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3f
	.4byte	0x48
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x5
	.byte	0x48
	.4byte	0x257
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x49
	.4byte	0x257
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x4a
	.4byte	0x257
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x5
	.byte	0x4c
	.4byte	0x12a
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0x4f
	.4byte	0x12a
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x114
	.4byte	0x267
	.uleb128 0x9
	.4byte	0xd6
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x8c
	.byte	0x5
	.byte	0x53
	.4byte	0x2a4
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x54
	.4byte	0x2a4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x55
	.4byte	0x48
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x56
	.4byte	0x2aa
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x57
	.4byte	0x2c1
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x267
	.uleb128 0x8
	.4byte	0x2ba
	.4byte	0x2ba
	.uleb128 0x9
	.4byte	0xd6
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2c0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0x4
	.4byte	0x217
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x8
	.byte	0x5
	.byte	0x73
	.4byte	0x2ec
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x74
	.4byte	0x2ec
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0x75
	.4byte	0x48
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x33
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0xf0
	.byte	0x5
	.2byte	0x172
	.4byte	0x438
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x176
	.4byte	0x48
	.byte	0
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x17b
	.4byte	0x660
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x17b
	.4byte	0x660
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x17b
	.4byte	0x660
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x17d
	.4byte	0x48
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17f
	.4byte	0x11d
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x181
	.4byte	0x48
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x183
	.4byte	0x48
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x184
	.4byte	0x5aa
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x5
	.2byte	0x186
	.4byte	0x7ad
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x188
	.4byte	0x7be
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x18a
	.4byte	0x48
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x18d
	.4byte	0x48
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x18e
	.4byte	0x11d
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x190
	.4byte	0x7c4
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x191
	.4byte	0x7ca
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x192
	.4byte	0x11d
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x195
	.4byte	0x7db
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x199
	.4byte	0x2a4
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x19a
	.4byte	0x267
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x19d
	.4byte	0x625
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x19e
	.4byte	0x660
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x19f
	.4byte	0x7e7
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x1a0
	.4byte	0x11d
	.byte	0xec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2f2
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x68
	.byte	0x5
	.byte	0xb3
	.4byte	0x568
	.uleb128 0xf
	.string	"_p"
	.byte	0x5
	.byte	0xb4
	.4byte	0x2ec
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x5
	.byte	0xb5
	.4byte	0x48
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x5
	.byte	0xb6
	.4byte	0x48
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x5
	.byte	0xb7
	.4byte	0x3a
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x5
	.byte	0xb8
	.4byte	0x3a
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x5
	.byte	0xb9
	.4byte	0x2c7
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x5
	.byte	0xba
	.4byte	0x48
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x5
	.byte	0xbd
	.4byte	0x438
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc1
	.4byte	0x114
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x5
	.byte	0xc3
	.4byte	0x586
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x5
	.byte	0xc5
	.4byte	0x5b5
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x5
	.byte	0xc8
	.4byte	0x5d9
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x5
	.byte	0xc9
	.4byte	0x5f3
	.byte	0x30
	.uleb128 0xf
	.string	"_ub"
	.byte	0x5
	.byte	0xcc
	.4byte	0x2c7
	.byte	0x34
	.uleb128 0xf
	.string	"_up"
	.byte	0x5
	.byte	0xcd
	.4byte	0x2ec
	.byte	0x3c
	.uleb128 0xf
	.string	"_ur"
	.byte	0x5
	.byte	0xce
	.4byte	0x48
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd1
	.4byte	0x5f9
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x5
	.byte	0xd2
	.4byte	0x609
	.byte	0x47
	.uleb128 0xf
	.string	"_lb"
	.byte	0x5
	.byte	0xd5
	.4byte	0x2c7
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x5
	.byte	0xd8
	.4byte	0x48
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x5
	.byte	0xd9
	.4byte	0x7e
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe0
	.4byte	0x109
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x5
	.byte	0xe2
	.4byte	0xfe
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x5
	.byte	0xe3
	.4byte	0x48
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x48
	.4byte	0x586
	.uleb128 0x17
	.4byte	0x438
	.uleb128 0x17
	.4byte	0x114
	.uleb128 0x17
	.4byte	0x11d
	.uleb128 0x17
	.4byte	0x48
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x568
	.uleb128 0x16
	.4byte	0x48
	.4byte	0x5aa
	.uleb128 0x17
	.4byte	0x438
	.uleb128 0x17
	.4byte	0x114
	.uleb128 0x17
	.4byte	0x5aa
	.uleb128 0x17
	.4byte	0x48
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5b0
	.uleb128 0x18
	.4byte	0x123
	.uleb128 0xd
	.byte	0x4
	.4byte	0x58c
	.uleb128 0x16
	.4byte	0x90
	.4byte	0x5d9
	.uleb128 0x17
	.4byte	0x438
	.uleb128 0x17
	.4byte	0x114
	.uleb128 0x17
	.4byte	0x90
	.uleb128 0x17
	.4byte	0x48
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5bb
	.uleb128 0x16
	.4byte	0x48
	.4byte	0x5f3
	.uleb128 0x17
	.4byte	0x438
	.uleb128 0x17
	.4byte	0x114
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x5df
	.uleb128 0x8
	.4byte	0x33
	.4byte	0x609
	.uleb128 0x9
	.4byte	0xd6
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0x619
	.uleb128 0x9
	.4byte	0xd6
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x11d
	.4byte	0x43e
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0xc
	.byte	0x5
	.2byte	0x121
	.4byte	0x65a
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x123
	.4byte	0x65a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x124
	.4byte	0x48
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x125
	.4byte	0x660
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x625
	.uleb128 0xd
	.byte	0x4
	.4byte	0x619
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x18
	.byte	0x5
	.2byte	0x13d
	.4byte	0x6a8
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x13e
	.4byte	0x6a8
	.byte	0
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x13f
	.4byte	0x6a8
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x140
	.4byte	0x41
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x143
	.4byte	0x56
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x6b8
	.uleb128 0x9
	.4byte	0xd6
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x10
	.byte	0x5
	.2byte	0x156
	.4byte	0x6fa
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x159
	.4byte	0x188
	.byte	0
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x15a
	.4byte	0x48
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15b
	.4byte	0x188
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x15c
	.4byte	0x6fa
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x188
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x50
	.byte	0x5
	.2byte	0x160
	.4byte	0x79d
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x163
	.4byte	0x11d
	.byte	0
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x164
	.4byte	0xfe
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x165
	.4byte	0xfe
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x166
	.4byte	0xfe
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x167
	.4byte	0x79d
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x168
	.4byte	0x48
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x169
	.4byte	0xfe
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x16a
	.4byte	0xfe
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16b
	.4byte	0xfe
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16c
	.4byte	0xfe
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x16d
	.4byte	0xfe
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x123
	.4byte	0x7ad
	.uleb128 0x9
	.4byte	0xd6
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6b8
	.uleb128 0x19
	.4byte	0x7be
	.uleb128 0x17
	.4byte	0x438
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7b3
	.uleb128 0xd
	.byte	0x4
	.4byte	0x666
	.uleb128 0xd
	.byte	0x4
	.4byte	0x19e
	.uleb128 0x19
	.4byte	0x7db
	.uleb128 0x17
	.4byte	0x48
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7e1
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7d0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x700
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x6
	.byte	0x34
	.4byte	0x619
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x8
	.byte	0x7
	.byte	0x2e
	.4byte	0x81d
	.uleb128 0xf
	.string	"len"
	.byte	0x7
	.byte	0x2f
	.4byte	0x5d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x7
	.byte	0x30
	.4byte	0x81d
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x11d
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x7
	.byte	0x31
	.4byte	0x7f8
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x7
	.byte	0x33
	.4byte	0x839
	.uleb128 0x19
	.4byte	0x849
	.uleb128 0x17
	.4byte	0x5aa
	.uleb128 0x17
	.4byte	0x849
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x823
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x7
	.byte	0x34
	.4byte	0x85a
	.uleb128 0x16
	.4byte	0x11d
	.4byte	0x873
	.uleb128 0x17
	.4byte	0x5aa
	.uleb128 0x17
	.4byte	0x873
	.uleb128 0x17
	.4byte	0x873
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x7
	.byte	0x35
	.4byte	0x884
	.uleb128 0x19
	.4byte	0x88f
	.uleb128 0x17
	.4byte	0x114
	.byte	0
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0x28
	.byte	0x1
	.byte	0x87
	.4byte	0x914
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.byte	0x88
	.4byte	0x11d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x1
	.byte	0x89
	.4byte	0x5d
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x1
	.byte	0x8a
	.4byte	0x5aa
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x1
	.byte	0x8b
	.4byte	0x5d
	.byte	0xc
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.byte	0x8c
	.4byte	0x5d
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x1
	.byte	0x8d
	.4byte	0x5d
	.byte	0x14
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x8e
	.4byte	0x5d
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x1
	.byte	0x8f
	.4byte	0x5d
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x1
	.byte	0x90
	.4byte	0x5d
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x1
	.byte	0x91
	.4byte	0x48
	.byte	0x24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF255
	.byte	0x4
	.4byte	0x25
	.byte	0x1
	.byte	0x94
	.4byte	0x997
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF133
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF134
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0x6
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0x8
	.uleb128 0x1c
	.string	"TAB"
	.byte	0x9
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0xb
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0xc
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0xa
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0xe
	.uleb128 0x1b
	.4byte	.LASF143
	.byte	0x10
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0x14
	.uleb128 0x1b
	.4byte	.LASF145
	.byte	0x15
	.uleb128 0x1b
	.4byte	.LASF146
	.byte	0x17
	.uleb128 0x1c
	.string	"ESC"
	.byte	0x1b
	.uleb128 0x1b
	.4byte	.LASF147
	.byte	0x7f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF148
	.byte	0x8
	.byte	0x1
	.2byte	0x181
	.4byte	0x9bd
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.2byte	0x182
	.4byte	0x11d
	.byte	0
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.2byte	0x183
	.4byte	0x48
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x186
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e1
	.uleb128 0x1e
	.string	"ab"
	.byte	0x1
	.2byte	0x186
	.4byte	0x9e1
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x997
	.uleb128 0x1d
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x3be
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa30
	.uleb128 0x1f
	.string	"src"
	.byte	0x1
	.2byte	0x3be
	.4byte	0x11d
	.4byte	.LLST0
	.uleb128 0x20
	.string	"dst"
	.byte	0x1
	.2byte	0x3bf
	.4byte	0x11d
	.4byte	.LLST1
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.2byte	0x3c0
	.4byte	0x48
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x18b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9f
	.uleb128 0x1e
	.string	"ab"
	.byte	0x1
	.2byte	0x18b
	.4byte	0x9e1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"s"
	.byte	0x1
	.2byte	0x18b
	.4byte	0x5aa
	.4byte	.LLST2
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x18b
	.4byte	0x48
	.4byte	.LLST3
	.uleb128 0x22
	.string	"new"
	.byte	0x1
	.2byte	0x18c
	.4byte	0x11d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LVL10
	.4byte	0x261f
	.uleb128 0x24
	.4byte	.LVL12
	.4byte	0x262a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x194
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacc
	.uleb128 0x1e
	.string	"ab"
	.byte	0x1
	.2byte	0x194
	.4byte	0x9e1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL16
	.4byte	0x2633
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x10e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb10
	.uleb128 0x1e
	.string	"lc"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x849
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x10f
	.4byte	0x5d
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LVL20
	.4byte	0x2633
	.uleb128 0x23
	.4byte	.LVL22
	.4byte	0x2633
	.byte	0
	.uleb128 0x26
	.4byte	.LASF154
	.byte	0x1
	.byte	0xcf
	.4byte	0x48
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd9
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.byte	0xd0
	.4byte	0xbd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.4byte	.LASF128
	.byte	0x1
	.byte	0xd1
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.byte	0xd1
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.byte	0xd2
	.4byte	0x25
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LVL24
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL25
	.4byte	0x264a
	.4byte	0xb8b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x23
	.4byte	.LVL27
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL28
	.4byte	0x2659
	.4byte	0xbb2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0x2664
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x123
	.4byte	0xbe9
	.uleb128 0x9
	.4byte	0xd6
	.byte	0x1f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF156
	.byte	0x1
	.byte	0xe6
	.4byte	0x48
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce4
	.uleb128 0x2b
	.4byte	.LASF157
	.byte	0x1
	.byte	0xe7
	.4byte	0x48
	.4byte	.LLST6
	.uleb128 0x2b
	.4byte	.LASF128
	.byte	0x1
	.byte	0xe7
	.4byte	0x48
	.4byte	.LLST7
	.uleb128 0x2c
	.4byte	.LASF256
	.byte	0x1
	.byte	0xfc
	.uleb128 0x2d
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xca7
	.uleb128 0x27
	.string	"seq"
	.byte	0x1
	.byte	0xf4
	.4byte	0xbd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.4byte	.LVL38
	.4byte	0x266f
	.4byte	0xc6e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL39
	.4byte	0x267b
	.4byte	0xc82
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x23
	.4byte	.LVL41
	.4byte	0x263e
	.uleb128 0x24
	.4byte	.LVL42
	.4byte	0x2686
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL32
	.4byte	0xb10
	.uleb128 0x23
	.4byte	.LVL34
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL35
	.4byte	0x2686
	.4byte	0xcda
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x23
	.4byte	.LVL36
	.4byte	0xb10
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x107
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd13
	.uleb128 0x23
	.4byte	.LVL46
	.4byte	0x263e
	.uleb128 0x24
	.4byte	.LVL47
	.4byte	0x2691
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x48
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe12
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x11d
	.4byte	.LLST8
	.uleb128 0x2f
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x3a4
	.4byte	0x5aa
	.4byte	.LLST9
	.uleb128 0x31
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x48
	.4byte	.LLST10
	.uleb128 0x2d
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xddc
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.2byte	0x3a9
	.4byte	0x48
	.4byte	.LLST11
	.uleb128 0x23
	.4byte	.LVL53
	.4byte	0x263e
	.uleb128 0x23
	.4byte	.LVL54
	.4byte	0x26a0
	.uleb128 0x23
	.4byte	.LVL57
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL58
	.4byte	0x264a
	.4byte	0xdc2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.4byte	.LVL60
	.4byte	0x263e
	.uleb128 0x24
	.4byte	.LVL61
	.4byte	0x26ab
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL49
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL50
	.4byte	0x26b6
	.4byte	0xdf9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL62
	.4byte	0x263e
	.uleb128 0x24
	.4byte	.LVL63
	.4byte	0x26ab
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x32
	.4byte	.LASF160
	.byte	0x1
	.byte	0xc3
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe34
	.uleb128 0x33
	.string	"ml"
	.byte	0x1
	.byte	0xc3
	.4byte	0x48
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x32
	.4byte	.LASF161
	.byte	0x1
	.byte	0xc8
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe57
	.uleb128 0x33
	.string	"set"
	.byte	0x1
	.byte	0xc8
	.4byte	0x48
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x34
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x101
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe94
	.uleb128 0x23
	.4byte	.LVL66
	.4byte	0x263e
	.uleb128 0x24
	.4byte	.LVL67
	.4byte	0x264a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC13
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x157
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb8
	.uleb128 0x1e
	.string	"fn"
	.byte	0x1
	.2byte	0x157
	.4byte	0xeb8
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x82e
	.uleb128 0x34
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x15d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee2
	.uleb128 0x1e
	.string	"fn"
	.byte	0x1
	.2byte	0x15d
	.4byte	0xee2
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x84f
	.uleb128 0x34
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x163
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0c
	.uleb128 0x1e
	.string	"fn"
	.byte	0x1
	.2byte	0x163
	.4byte	0xf0c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x879
	.uleb128 0x34
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x16b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd5
	.uleb128 0x1e
	.string	"lc"
	.byte	0x1
	.2byte	0x16b
	.4byte	0x849
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"str"
	.byte	0x1
	.2byte	0x16b
	.4byte	0x5aa
	.4byte	.LLST12
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.2byte	0x16c
	.4byte	0x5d
	.4byte	.LLST13
	.uleb128 0x35
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x16d
	.4byte	0x11d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x31
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x16d
	.4byte	0x81d
	.4byte	.LLST14
	.uleb128 0x2a
	.4byte	.LVL72
	.4byte	0x267b
	.4byte	0xf87
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL74
	.4byte	0x26c1
	.4byte	0xf9b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL76
	.4byte	0x262a
	.4byte	0xfbb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL77
	.4byte	0x261f
	.uleb128 0x24
	.4byte	.LVL79
	.4byte	0x2633
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x19a
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x115a
	.uleb128 0x1f
	.string	"ab"
	.byte	0x1
	.2byte	0x19a
	.4byte	0x9e1
	.4byte	.LLST15
	.uleb128 0x1f
	.string	"l"
	.byte	0x1
	.2byte	0x19a
	.4byte	0x115a
	.4byte	.LLST16
	.uleb128 0x30
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x19a
	.4byte	0x48
	.4byte	.LLST17
	.uleb128 0x22
	.string	"seq"
	.byte	0x1
	.2byte	0x19b
	.4byte	0x1160
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x35
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x19d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x35
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x19d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x19e
	.4byte	0x11d
	.4byte	.LLST18
	.uleb128 0x2d
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x1146
	.uleb128 0x31
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x48
	.4byte	.LLST19
	.uleb128 0x31
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x48
	.4byte	.LLST20
	.uleb128 0x2a
	.4byte	.LVL86
	.4byte	0x267b
	.4byte	0x10a0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL92
	.4byte	0x266f
	.4byte	0x10c4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL93
	.4byte	0x267b
	.4byte	0x10d9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL94
	.4byte	0xa30
	.4byte	0x10f4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL95
	.4byte	0xa30
	.4byte	0x1114
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL96
	.4byte	0xa30
	.4byte	0x1136
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC21
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x37
	.4byte	.LVL98
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL84
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x88f
	.uleb128 0x8
	.4byte	0x123
	.4byte	0x1170
	.uleb128 0x9
	.4byte	0xd6
	.byte	0x3f
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x1dc
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1486
	.uleb128 0x1f
	.string	"l"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x115a
	.4byte	.LLST21
	.uleb128 0x22
	.string	"seq"
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x1160
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1de
	.4byte	0x48
	.4byte	.LLST22
	.uleb128 0x31
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1df
	.4byte	0x48
	.4byte	.LLST23
	.uleb128 0x31
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x48
	.4byte	.LLST24
	.uleb128 0x31
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x48
	.4byte	.LLST25
	.uleb128 0x20
	.string	"col"
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x48
	.4byte	.LLST26
	.uleb128 0x31
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x48
	.4byte	.LLST27
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x48
	.4byte	.LLST28
	.uleb128 0x22
	.string	"ab"
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x997
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.4byte	.LVL104
	.4byte	0x9bd
	.4byte	0x1234
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL105
	.4byte	0x266f
	.4byte	0x1261
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL106
	.4byte	0x267b
	.4byte	0x1276
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL107
	.4byte	0xa30
	.4byte	0x1291
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL110
	.4byte	0x267b
	.4byte	0x12a6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL111
	.4byte	0xa30
	.4byte	0x12c1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL115
	.4byte	0x267b
	.4byte	0x12d6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL116
	.4byte	0xa30
	.4byte	0x12f1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL117
	.4byte	0x267b
	.4byte	0x1305
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL118
	.4byte	0xa30
	.4byte	0x131f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL119
	.4byte	0xa30
	.4byte	0x1333
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL120
	.4byte	0xfd5
	.4byte	0x1353
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL121
	.4byte	0xa30
	.4byte	0x1375
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL122
	.4byte	0x267b
	.4byte	0x138a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL123
	.4byte	0xa30
	.4byte	0x13a5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL127
	.4byte	0x266f
	.4byte	0x13c9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL128
	.4byte	0x267b
	.4byte	0x13de
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL129
	.4byte	0xa30
	.4byte	0x13f9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL132
	.4byte	0x266f
	.4byte	0x141d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL135
	.4byte	0x267b
	.4byte	0x1432
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL136
	.4byte	0xa30
	.4byte	0x144d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x23
	.4byte	.LVL138
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL139
	.4byte	0x2686
	.4byte	0x1475
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL140
	.4byte	0xa9f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1b4
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1679
	.uleb128 0x1f
	.string	"l"
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x115a
	.4byte	.LLST29
	.uleb128 0x22
	.string	"seq"
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x1160
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x35
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x11d
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x5d
	.4byte	.LLST30
	.uleb128 0x20
	.string	"pos"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x5d
	.4byte	.LLST31
	.uleb128 0x22
	.string	"ab"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x997
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.4byte	.LVL151
	.4byte	0x9bd
	.4byte	0x1518
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL152
	.4byte	0x267b
	.4byte	0x152d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL153
	.4byte	0xa30
	.4byte	0x1548
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL154
	.4byte	0x267b
	.4byte	0x155c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL155
	.4byte	0xa30
	.4byte	0x1576
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL156
	.4byte	0xa30
	.4byte	0x1596
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL157
	.4byte	0xfd5
	.4byte	0x15b6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL160
	.4byte	0x267b
	.4byte	0x15cb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL161
	.4byte	0xa30
	.4byte	0x15e6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL162
	.4byte	0x266f
	.4byte	0x1610
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL163
	.4byte	0x267b
	.4byte	0x1625
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL164
	.4byte	0xa30
	.4byte	0x1640
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x23
	.4byte	.LVL165
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL166
	.4byte	0x2686
	.4byte	0x1668
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x24
	.4byte	.LVL167
	.4byte	0xa9f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x231
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16b9
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.2byte	0x231
	.4byte	0x115a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LVL169
	.4byte	0x1170
	.4byte	0x16af
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL170
	.4byte	0x1486
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x11c
	.4byte	0x48
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x184f
	.uleb128 0x1f
	.string	"ls"
	.byte	0x1
	.2byte	0x11c
	.4byte	0x115a
	.4byte	.LLST32
	.uleb128 0x22
	.string	"lc"
	.byte	0x1
	.2byte	0x11d
	.4byte	0x823
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x11e
	.4byte	0x48
	.4byte	.LLST33
	.uleb128 0x31
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x11e
	.4byte	0x48
	.4byte	.LLST34
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.2byte	0x11f
	.4byte	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x1820
	.uleb128 0x31
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x125
	.4byte	0x5d
	.4byte	.LLST35
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.2byte	0x125
	.4byte	0x5d
	.4byte	.LLST36
	.uleb128 0x2d
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x179e
	.uleb128 0x35
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x12a
	.4byte	0x88f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.4byte	.LVL175
	.4byte	0x262a
	.4byte	0x1784
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x23
	.4byte	.LVL176
	.4byte	0x267b
	.uleb128 0x24
	.4byte	.LVL177
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL178
	.4byte	0x1679
	.4byte	0x17b2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL179
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL180
	.4byte	0x2659
	.4byte	0x17da
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL182
	.4byte	0xacc
	.4byte	0x17ef
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x23
	.4byte	.LVL187
	.4byte	0xce4
	.uleb128 0x2a
	.4byte	.LVL190
	.4byte	0x1679
	.4byte	0x180c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL194
	.4byte	0x266f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LVL172
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.4byte	0x1834
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x23
	.4byte	.LVL173
	.4byte	0xce4
	.uleb128 0x24
	.4byte	.LVL203
	.4byte	0xacc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x23b
	.4byte	0x48
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18da
	.uleb128 0x1f
	.string	"l"
	.byte	0x1
	.2byte	0x23b
	.4byte	0x115a
	.4byte	.LLST37
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.2byte	0x23b
	.4byte	0x123
	.4byte	.LLST38
	.uleb128 0x23
	.4byte	.LVL209
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL210
	.4byte	0x2686
	.4byte	0x18ac
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL211
	.4byte	0x1679
	.4byte	0x18c0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL213
	.4byte	0x26cc
	.uleb128 0x24
	.4byte	.LVL214
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x256
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x190d
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.2byte	0x256
	.4byte	0x115a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL218
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x25e
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1940
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.2byte	0x25e
	.4byte	0x115a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL220
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x266
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1973
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.2byte	0x266
	.4byte	0x115a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL222
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x26e
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19a6
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.2byte	0x26e
	.4byte	0x115a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL224
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x279
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a0d
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.2byte	0x279
	.4byte	0x115a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1f
	.string	"dir"
	.byte	0x1
	.2byte	0x279
	.4byte	0x48
	.4byte	.LLST39
	.uleb128 0x23
	.4byte	.LVL226
	.4byte	0x2633
	.uleb128 0x23
	.4byte	.LVL227
	.4byte	0x26d7
	.uleb128 0x23
	.4byte	.LVL229
	.4byte	0x26e2
	.uleb128 0x23
	.4byte	.LVL230
	.4byte	0x267b
	.uleb128 0x24
	.4byte	.LVL231
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x291
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a49
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.2byte	0x291
	.4byte	0x115a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL233
	.4byte	0x26cc
	.uleb128 0x24
	.4byte	.LVL234
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x29b
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a85
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.2byte	0x29b
	.4byte	0x115a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL236
	.4byte	0x26cc
	.uleb128 0x24
	.4byte	.LVL237
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x2a7
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1adf
	.uleb128 0x1e
	.string	"l"
	.byte	0x1
	.2byte	0x2a7
	.4byte	0x115a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x5d
	.4byte	.LLST40
	.uleb128 0x35
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x23
	.4byte	.LVL242
	.4byte	0x26cc
	.uleb128 0x24
	.4byte	.LVL243
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x376
	.4byte	0x48
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c1e
	.uleb128 0x31
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x378
	.4byte	0x48
	.4byte	.LLST41
	.uleb128 0x20
	.string	"res"
	.byte	0x1
	.2byte	0x37a
	.4byte	0x48
	.4byte	.LLST42
	.uleb128 0x31
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x382
	.4byte	0x48
	.4byte	.LLST43
	.uleb128 0x31
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x383
	.4byte	0x5d
	.4byte	.LLST44
	.uleb128 0x2d
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x1b9b
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.2byte	0x386
	.4byte	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.string	"cb"
	.byte	0x1
	.2byte	0x387
	.4byte	0x48
	.4byte	.LLST45
	.uleb128 0x2a
	.4byte	.LVL251
	.4byte	0x26ed
	.4byte	0x1b77
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.uleb128 0x23
	.4byte	.LVL252
	.4byte	0x263e
	.uleb128 0x24
	.4byte	.LVL253
	.4byte	0x2659
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL244
	.4byte	0x26f8
	.4byte	0x1bb3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL247
	.4byte	0x26f8
	.4byte	0x1bd5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0x4000
	.byte	0x21
	.byte	0
	.uleb128 0x23
	.4byte	.LVL248
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL249
	.4byte	0x264a
	.4byte	0x1bff
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC48
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x24
	.4byte	.LVL258
	.4byte	0x26f8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xbfff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x3e1
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c53
	.uleb128 0x1e
	.string	"ptr"
	.byte	0x1
	.2byte	0x3e1
	.4byte	0x114
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x24
	.4byte	.LVL266
	.4byte	0x2633
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x3e7
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c9b
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x1c8a
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x3e9
	.4byte	0x48
	.4byte	.LLST46
	.uleb128 0x23
	.4byte	.LVL268
	.4byte	0x2633
	.byte	0
	.uleb128 0x24
	.4byte	.LVL272
	.4byte	0x2633
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x3f8
	.4byte	0x48
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d52
	.uleb128 0x30
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x3f8
	.4byte	0x5aa
	.4byte	.LLST47
	.uleb128 0x31
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x3f9
	.4byte	0x11d
	.4byte	.LLST48
	.uleb128 0x2a
	.4byte	.LVL275
	.4byte	0x26c1
	.4byte	0x1ce9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL276
	.4byte	0x2703
	.4byte	0x1d02
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL277
	.4byte	0x270c
	.4byte	0x1d16
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL278
	.4byte	0x26d7
	.4byte	0x1d2a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL280
	.4byte	0x2633
	.uleb128 0x24
	.4byte	.LVL281
	.4byte	0x26cc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x75
	.sleb128 4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x72
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x48
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x218a
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x11d
	.4byte	.LLST49
	.uleb128 0x30
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x5d
	.4byte	.LLST50
	.uleb128 0x30
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x5aa
	.4byte	.LLST51
	.uleb128 0x22
	.string	"l"
	.byte	0x1
	.2byte	0x2bf
	.4byte	0x88f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x2d5
	.4byte	0x48
	.4byte	.LLST52
	.uleb128 0x31
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x48
	.4byte	.LLST53
	.uleb128 0x2d
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x211b
	.uleb128 0x22
	.string	"c"
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x31
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x48
	.4byte	.LLST54
	.uleb128 0x22
	.string	"seq"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x218a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x1e31
	.uleb128 0x20
	.string	"c2"
	.byte	0x1
	.2byte	0x2e7
	.4byte	0x48
	.4byte	.LLST55
	.uleb128 0x24
	.4byte	.LVL303
	.4byte	0x16b9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x1e5f
	.uleb128 0x20
	.string	"hc"
	.byte	0x1
	.2byte	0x2f7
	.4byte	0xee2
	.4byte	.LLST56
	.uleb128 0x24
	.4byte	.LVL311
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x1e8e
	.uleb128 0x20
	.string	"aux"
	.byte	0x1
	.2byte	0x310
	.4byte	0x48
	.4byte	.LLST57
	.uleb128 0x24
	.4byte	.LVL323
	.4byte	0x1679
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL298
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL299
	.4byte	0x2659
	.4byte	0x1eb5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL308
	.4byte	0x2633
	.uleb128 0x2a
	.4byte	.LVL309
	.4byte	0x1973
	.4byte	0x1ed3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x23
	.4byte	.LVL314
	.4byte	0x2717
	.uleb128 0x2a
	.4byte	.LVL317
	.4byte	0x1a49
	.4byte	0x1ef1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL318
	.4byte	0x1a0d
	.4byte	0x1f06
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x23
	.4byte	.LVL320
	.4byte	0x2633
	.uleb128 0x2a
	.4byte	.LVL325
	.4byte	0x18da
	.4byte	0x1f24
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL326
	.4byte	0x190d
	.4byte	0x1f39
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL327
	.4byte	0x19a6
	.4byte	0x1f53
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL328
	.4byte	0x19a6
	.4byte	0x1f6d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL329
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL330
	.4byte	0x2659
	.4byte	0x1f94
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.4byte	.LVL331
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL332
	.4byte	0x2659
	.4byte	0x1fbb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL333
	.4byte	0x1a0d
	.4byte	0x1fd0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL334
	.4byte	0x19a6
	.4byte	0x1fea
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL335
	.4byte	0x19a6
	.4byte	0x2004
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL336
	.4byte	0x190d
	.4byte	0x2019
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL337
	.4byte	0x18da
	.4byte	0x202e
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL338
	.4byte	0x1940
	.4byte	0x2043
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL339
	.4byte	0x1973
	.4byte	0x2058
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL340
	.4byte	0x1940
	.4byte	0x206d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL341
	.4byte	0x1973
	.4byte	0x2082
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL342
	.4byte	0x184f
	.4byte	0x2097
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL343
	.4byte	0x1679
	.4byte	0x20ac
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL344
	.4byte	0x1679
	.4byte	0x20c1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL345
	.4byte	0x1940
	.4byte	0x20d6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL346
	.4byte	0x1973
	.4byte	0x20eb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x23
	.4byte	.LVL347
	.4byte	0xe57
	.uleb128 0x2a
	.4byte	.LVL348
	.4byte	0x1679
	.4byte	0x2109
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x24
	.4byte	.LVL349
	.4byte	0x1a85
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL286
	.4byte	0x267b
	.4byte	0x212f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL288
	.4byte	0xbe9
	.uleb128 0x2a
	.4byte	.LVL289
	.4byte	0x1c9b
	.4byte	0x214f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC58
	.byte	0
	.uleb128 0x23
	.4byte	.LVL290
	.4byte	0xb10
	.uleb128 0x23
	.4byte	.LVL292
	.4byte	0x263e
	.uleb128 0x2a
	.4byte	.LVL293
	.4byte	0x2686
	.4byte	0x2180
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL294
	.4byte	0xb10
	.byte	0
	.uleb128 0x8
	.4byte	0x123
	.4byte	0x219a
	.uleb128 0x9
	.4byte	0xd6
	.byte	0x2
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x397
	.4byte	0x48
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2230
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.2byte	0x397
	.4byte	0x11d
	.4byte	.LLST58
	.uleb128 0x2f
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x397
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2f
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x397
	.4byte	0x5aa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x35
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x398
	.4byte	0x48
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL354
	.4byte	0x2717
	.uleb128 0x2a
	.4byte	.LVL357
	.4byte	0x1d52
	.4byte	0x2217
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL359
	.4byte	0x263e
	.uleb128 0x24
	.4byte	.LVL360
	.4byte	0x26ab
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x11d
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2307
	.uleb128 0x30
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x5aa
	.4byte	.LLST59
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.2byte	0x3cb
	.4byte	0x11d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x31
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x3cc
	.4byte	0x48
	.4byte	.LLST60
	.uleb128 0x2a
	.4byte	.LVL362
	.4byte	0x2722
	.4byte	0x2292
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL364
	.4byte	0x219a
	.4byte	0x22b3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL366
	.4byte	0xd13
	.4byte	0x22ce
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL368
	.4byte	0x9e7
	.4byte	0x22e2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL369
	.4byte	0x267b
	.4byte	0x22f6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL371
	.4byte	0x2633
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x419
	.4byte	0x48
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23e6
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.2byte	0x419
	.4byte	0x48
	.4byte	.LLST61
	.uleb128 0x20
	.string	"new"
	.byte	0x1
	.2byte	0x41a
	.4byte	0x81d
	.4byte	.LLST62
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x31
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x41e
	.4byte	0x48
	.4byte	.LLST63
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x2377
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x425
	.4byte	0x48
	.4byte	.LLST64
	.uleb128 0x23
	.4byte	.LVL380
	.4byte	0x2633
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL377
	.4byte	0x26c1
	.4byte	0x238b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL385
	.4byte	0x2703
	.4byte	0x23aa
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL386
	.4byte	0x262a
	.4byte	0x23d4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0
	.uleb128 0x24
	.4byte	.LVL387
	.4byte	0x2633
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x437
	.4byte	0x48
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2476
	.uleb128 0x30
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x437
	.4byte	0x5aa
	.4byte	.LLST65
	.uleb128 0x22
	.string	"fp"
	.byte	0x1
	.2byte	0x438
	.4byte	0x2476
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.2byte	0x439
	.4byte	0x48
	.4byte	.LLST66
	.uleb128 0x2a
	.4byte	.LVL398
	.4byte	0x272d
	.4byte	0x2448
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC72
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL402
	.4byte	0x2738
	.4byte	0x2465
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC75
	.byte	0
	.uleb128 0x24
	.4byte	.LVL404
	.4byte	0x2743
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7ed
	.uleb128 0x3b
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x448
	.4byte	0x48
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2576
	.uleb128 0x30
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x448
	.4byte	0x5aa
	.4byte	.LLST67
	.uleb128 0x20
	.string	"fp"
	.byte	0x1
	.2byte	0x449
	.4byte	0x2476
	.4byte	.LLST68
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.2byte	0x44a
	.4byte	0x2576
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x2d
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x2526
	.uleb128 0x20
	.string	"p"
	.byte	0x1
	.2byte	0x44f
	.4byte	0x11d
	.4byte	.LLST69
	.uleb128 0x2a
	.4byte	.LVL411
	.4byte	0x274e
	.4byte	0x24fa
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL413
	.4byte	0x274e
	.4byte	0x2514
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x24
	.4byte	.LVL415
	.4byte	0x1c9b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL409
	.4byte	0x272d
	.4byte	0x2543
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC78
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL416
	.4byte	0x2759
	.4byte	0x2565
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4128
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL417
	.4byte	0x2743
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x123
	.4byte	0x2587
	.uleb128 0x3d
	.4byte	0xd6
	.2byte	0xfff
	.byte	0
	.uleb128 0x28
	.4byte	.LASF215
	.byte	0x1
	.byte	0x7a
	.4byte	0xeb8
	.uleb128 0x5
	.byte	0x3
	.4byte	completionCallback
	.uleb128 0x28
	.4byte	.LASF216
	.byte	0x1
	.byte	0x7b
	.4byte	0xee2
	.uleb128 0x5
	.byte	0x3
	.4byte	hintsCallback
	.uleb128 0x28
	.4byte	.LASF217
	.byte	0x1
	.byte	0x7c
	.4byte	0xf0c
	.uleb128 0x5
	.byte	0x3
	.4byte	freeHintsCallback
	.uleb128 0x28
	.4byte	.LASF218
	.byte	0x1
	.byte	0x7e
	.4byte	0x48
	.uleb128 0x5
	.byte	0x3
	.4byte	mlmode
	.uleb128 0x28
	.4byte	.LASF219
	.byte	0x1
	.byte	0x7f
	.4byte	0x48
	.uleb128 0x5
	.byte	0x3
	.4byte	dumbmode
	.uleb128 0x28
	.4byte	.LASF220
	.byte	0x1
	.byte	0x80
	.4byte	0x48
	.uleb128 0x5
	.byte	0x3
	.4byte	history_max_len
	.uleb128 0x28
	.4byte	.LASF221
	.byte	0x1
	.byte	0x81
	.4byte	0x48
	.uleb128 0x5
	.byte	0x3
	.4byte	history_len
	.uleb128 0x28
	.4byte	.LASF222
	.byte	0x1
	.byte	0x82
	.4byte	0x81d
	.uleb128 0x5
	.byte	0x3
	.4byte	history
	.uleb128 0x3e
	.4byte	.LASF258
	.byte	0xe
	.byte	0x2d
	.4byte	0x261a
	.uleb128 0x18
	.4byte	0x5aa
	.uleb128 0x3f
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x8
	.byte	0x8a
	.uleb128 0x40
	.4byte	.LASF242
	.4byte	.LASF242
	.uleb128 0x3f
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x8
	.byte	0x5a
	.uleb128 0x41
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x5
	.2byte	0x30b
	.uleb128 0x42
	.4byte	.LASF230
	.4byte	.LASF232
	.byte	0xa
	.byte	0
	.4byte	.LASF230
	.uleb128 0x3f
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x6
	.byte	0xc9
	.uleb128 0x3f
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x6
	.byte	0xb6
	.uleb128 0x41
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x6
	.2byte	0x10c
	.uleb128 0x3f
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0x9
	.byte	0x21
	.uleb128 0x3f
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x6
	.byte	0xca
	.uleb128 0x42
	.4byte	.LASF231
	.4byte	.LASF233
	.byte	0xa
	.byte	0
	.4byte	.LASF231
	.uleb128 0x3f
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x6
	.byte	0xbe
	.uleb128 0x3f
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x6
	.byte	0xc0
	.uleb128 0x3f
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x6
	.byte	0xc1
	.uleb128 0x3f
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x8
	.byte	0x65
	.uleb128 0x3f
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x9
	.byte	0x18
	.uleb128 0x3f
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x9
	.byte	0x50
	.uleb128 0x3f
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x9
	.byte	0x24
	.uleb128 0x3f
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0xb
	.byte	0xc3
	.uleb128 0x3f
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0xc
	.byte	0xbf
	.uleb128 0x40
	.4byte	.LASF243
	.4byte	.LASF243
	.uleb128 0x3f
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x9
	.byte	0x1c
	.uleb128 0x3f
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0xd
	.byte	0xf
	.uleb128 0x3f
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x8
	.byte	0x57
	.uleb128 0x3f
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0x6
	.byte	0xdd
	.uleb128 0x3f
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0x6
	.byte	0xae
	.uleb128 0x3f
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0x6
	.byte	0xa9
	.uleb128 0x3f
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0x9
	.byte	0x1b
	.uleb128 0x3f
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0x6
	.byte	0xbf
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
	.uleb128 0x6
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL55
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL71
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LFE11
	.2byte	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL83
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL97
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL88
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL85
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL86
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0xe
	.byte	0x78
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL99
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL100
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL101
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL124
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL126
	.4byte	.LVL127-1
	.2byte	0xd
	.byte	0x73
	.sleb128 0
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
.LLST26:
	.4byte	.LVL131
	.4byte	.LVL132-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL103
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL109
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL141
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL158
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL144
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL145
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL171
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL184
	.4byte	.LVL187-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL196
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL194
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL174
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL192
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL196
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL174
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL205
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL216
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL208
	.4byte	.LVL212
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL212
	.4byte	.LVL215
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL225
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL228
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL239
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0x4000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL246
	.4byte	.LVL247-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL247-1
	.4byte	.LVL256
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0x4000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL257
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xbfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL257
	.4byte	.LVL258-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL258-1
	.4byte	.LVL260
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xbfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL260
	.4byte	.LVL261
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.2byte	0x4000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL261
	.4byte	.LFE29
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xbfff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL247
	.4byte	.LVL248-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL258
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x3
	.byte	0x8
	.byte	0xc8
	.byte	0x9f
	.4byte	.LVL250
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL261
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL263
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL249
	.4byte	.LVL250
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL250
	.4byte	.LVL260
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL261
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL253
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL267
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL274
	.4byte	.LVL279
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL279
	.4byte	.LVL282
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL282
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL283
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL279
	.4byte	.LVL282
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL285
	.4byte	.LVL300
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL300
	.4byte	.LVL301
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL301
	.4byte	.LVL304
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL304
	.4byte	.LVL305
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL305
	.4byte	.LVL307
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL307
	.4byte	.LVL313
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL313
	.4byte	.LVL315
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL315
	.4byte	.LVL316
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL316
	.4byte	.LVL319
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL319
	.4byte	.LVL321
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL321
	.4byte	.LVL350
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL350
	.4byte	.LVL351
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL351
	.4byte	.LVL352
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL352
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL285
	.4byte	.LVL287
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL287
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL285
	.4byte	.LVL295
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL295
	.4byte	.LVL351
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	.LVL351
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL291
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL351
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL294
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL299
	.4byte	.LVL302
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL303
	.4byte	.LVL306
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL310
	.4byte	.LVL312
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL322
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL353
	.4byte	.LVL355
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL355
	.4byte	.LVL356
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL356
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL358
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL361
	.4byte	.LVL372
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL372
	.4byte	.LVL373
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL373
	.4byte	.LVL374
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL374
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL363
	.4byte	.LVL364
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL364
	.4byte	.LVL365
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL365
	.4byte	.LVL366
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL366
	.4byte	.LVL367
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL369
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL373
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL375
	.4byte	.LVL390
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL390
	.4byte	.LVL391
	.2byte	0x5
	.byte	0x3
	.4byte	history_max_len
	.4byte	.LVL391
	.4byte	.LVL392
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL392
	.4byte	.LVL393
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL393
	.4byte	.LVL394
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL394
	.4byte	.LVL395
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL395
	.4byte	.LVL396
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL396
	.4byte	.LFE37
	.2byte	0x5
	.byte	0x3
	.4byte	history_max_len
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL378
	.4byte	.LVL389
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL393
	.4byte	.LVL395
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL376
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL384
	.4byte	.LVL388
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL393
	.4byte	.LVL395
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL379
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL383
	.4byte	.LVL384
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL397
	.4byte	.LVL400
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL400
	.4byte	.LVL406
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL406
	.4byte	.LVL407
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL407
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL401
	.4byte	.LVL405
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL408
	.4byte	.LVL410
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL410
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL410
	.4byte	.LVL418
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL419
	.4byte	.LVL420
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL420
	.4byte	.LFE39
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL411
	.4byte	.LVL412
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL413
	.4byte	.LVL414
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x154
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
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
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB7
	.4byte	.LFE7
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
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF252:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF118:
	.string	"linenoiseCompletions"
.LASF8:
	.string	"_lock_t"
.LASF229:
	.string	"strlen"
.LASF39:
	.string	"_on_exit_args"
.LASF81:
	.string	"_write"
.LASF108:
	.string	"_wctomb_state"
.LASF245:
	.string	"__errno"
.LASF175:
	.string	"rpos"
.LASF198:
	.string	"flags"
.LASF65:
	.string	"_r48"
.LASF73:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF120:
	.string	"linenoiseCompletionCallback"
.LASF77:
	.string	"_lbfsize"
.LASF75:
	.string	"_flags"
.LASF128:
	.string	"cols"
.LASF52:
	.string	"_errno"
.LASF179:
	.string	"refreshLine"
.LASF189:
	.string	"linenoiseEditMoveEnd"
.LASF177:
	.string	"old_rows"
.LASF199:
	.string	"timeout_ms"
.LASF174:
	.string	"refreshMultiLine"
.LASF232:
	.string	"__builtin_fwrite"
.LASF225:
	.string	"__getreent"
.LASF9:
	.string	"_LOCK_RECURSIVE_T"
.LASF113:
	.string	"_mbrtowc_state"
.LASF80:
	.string	"_read"
.LASF226:
	.string	"fread"
.LASF112:
	.string	"_mbrlen_state"
.LASF235:
	.string	"fputs"
.LASF54:
	.string	"_stdout"
.LASF12:
	.string	"_fpos_t"
.LASF46:
	.string	"_fns"
.LASF79:
	.string	"_cookie"
.LASF28:
	.string	"_Bigint"
.LASF167:
	.string	"copy"
.LASF155:
	.string	"rows"
.LASF36:
	.string	"__tm_wday"
.LASF101:
	.string	"_result"
.LASF163:
	.string	"linenoiseSetCompletionCallback"
.LASF158:
	.string	"linenoiseBeep"
.LASF32:
	.string	"__tm_hour"
.LASF171:
	.string	"hint"
.LASF180:
	.string	"linenoiseDumb"
.LASF17:
	.string	"__count"
.LASF197:
	.string	"linenoiseProbe"
.LASF237:
	.string	"memmove"
.LASF162:
	.string	"linenoiseClearScreen"
.LASF31:
	.string	"__tm_min"
.LASF236:
	.string	"malloc"
.LASF159:
	.string	"count"
.LASF71:
	.string	"__sf"
.LASF95:
	.string	"_rand48"
.LASF172:
	.string	"hintlen"
.LASF102:
	.string	"_result_k"
.LASF6:
	.string	"long long unsigned int"
.LASF67:
	.string	"_asctime_buf"
.LASF239:
	.string	"strncpy"
.LASF74:
	.string	"__sFILE"
.LASF27:
	.string	"_wds"
.LASF202:
	.string	"linenoiseHistoryAdd"
.LASF185:
	.string	"saved"
.LASF204:
	.string	"linecopy"
.LASF91:
	.string	"__FILE"
.LASF87:
	.string	"_offset"
.LASF121:
	.string	"linenoiseHintsCallback"
.LASF248:
	.string	"fprintf"
.LASF57:
	.string	"_emergency"
.LASF119:
	.string	"cvec"
.LASF238:
	.string	"strdup"
.LASF168:
	.string	"refreshShowHints"
.LASF125:
	.string	"prompt"
.LASF154:
	.string	"getCursorPosition"
.LASF7:
	.string	"size_t"
.LASF240:
	.string	"usleep"
.LASF30:
	.string	"__tm_sec"
.LASF37:
	.string	"__tm_yday"
.LASF56:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF210:
	.string	"linenoiseHistorySetMaxLen"
.LASF170:
	.string	"bold"
.LASF176:
	.string	"rpos2"
.LASF24:
	.string	"_next"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF148:
	.string	"abuf"
.LASF188:
	.string	"linenoiseEditMoveHome"
.LASF18:
	.string	"__value"
.LASF103:
	.string	"_p5s"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF107:
	.string	"_mblen_state"
.LASF22:
	.string	"char"
.LASF33:
	.string	"__tm_mday"
.LASF68:
	.string	"_sig_func"
.LASF253:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/console/linenoise/linenoise.c"
.LASF213:
	.string	"filename"
.LASF218:
	.string	"mlmode"
.LASF124:
	.string	"buflen"
.LASF186:
	.string	"linenoiseEditMoveLeft"
.LASF152:
	.string	"abFree"
.LASF20:
	.string	"_flock_t"
.LASF244:
	.string	"strcmp"
.LASF14:
	.string	"__wch"
.LASF94:
	.string	"_iobs"
.LASF47:
	.string	"_on_exit_args_ptr"
.LASF217:
	.string	"freeHintsCallback"
.LASF193:
	.string	"linenoiseEditDeletePrevWord"
.LASF83:
	.string	"_close"
.LASF58:
	.string	"__sdidinit"
.LASF53:
	.string	"_stdin"
.LASF62:
	.string	"_gamma_signgam"
.LASF5:
	.string	"long long int"
.LASF49:
	.string	"_base"
.LASF104:
	.string	"_freelist"
.LASF97:
	.string	"_mult"
.LASF23:
	.string	"__ULong"
.LASF194:
	.string	"old_pos"
.LASF115:
	.string	"_wcrtomb_state"
.LASF76:
	.string	"_file"
.LASF166:
	.string	"linenoiseAddCompletion"
.LASF132:
	.string	"CTRL_A"
.LASF133:
	.string	"CTRL_B"
.LASF134:
	.string	"CTRL_C"
.LASF135:
	.string	"CTRL_D"
.LASF136:
	.string	"CTRL_E"
.LASF137:
	.string	"CTRL_F"
.LASF138:
	.string	"CTRL_H"
.LASF243:
	.string	"memset"
.LASF139:
	.string	"CTRL_K"
.LASF61:
	.string	"__cleanup"
.LASF127:
	.string	"oldpos"
.LASF142:
	.string	"CTRL_N"
.LASF165:
	.string	"linenoiseSetFreeHintsCallback"
.LASF143:
	.string	"CTRL_P"
.LASF19:
	.string	"_mbstate_t"
.LASF100:
	.string	"_mprec"
.LASF145:
	.string	"CTRL_U"
.LASF146:
	.string	"CTRL_W"
.LASF228:
	.string	"snprintf"
.LASF160:
	.string	"linenoiseSetMultiLine"
.LASF208:
	.string	"linenoiseRaw"
.LASF233:
	.string	"__builtin_fputc"
.LASF212:
	.string	"linenoiseHistorySave"
.LASF38:
	.string	"__tm_isdst"
.LASF209:
	.string	"linenoise"
.LASF256:
	.string	"failed"
.LASF157:
	.string	"start"
.LASF187:
	.string	"linenoiseEditMoveRight"
.LASF151:
	.string	"abAppend"
.LASF234:
	.string	"fgetc"
.LASF247:
	.string	"fopen"
.LASF254:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\console"
.LASF220:
	.string	"history_max_len"
.LASF184:
	.string	"stop"
.LASF258:
	.string	"__ctype_ptr__"
.LASF164:
	.string	"linenoiseSetHintsCallback"
.LASF251:
	.string	"fgets"
.LASF34:
	.string	"__tm_mon"
.LASF173:
	.string	"hintmaxlen"
.LASF69:
	.string	"_atexit0"
.LASF122:
	.string	"linenoiseFreeHintsCallback"
.LASF201:
	.string	"linenoiseFree"
.LASF44:
	.string	"_atexit"
.LASF89:
	.string	"_mbstate"
.LASF250:
	.string	"strchr"
.LASF196:
	.string	"linenoiseEditInsert"
.LASF3:
	.string	"short int"
.LASF130:
	.string	"history_index"
.LASF11:
	.string	"long int"
.LASF211:
	.string	"tocopy"
.LASF221:
	.string	"history_len"
.LASF257:
	.string	"linenoiseHistoryFree"
.LASF131:
	.string	"KEY_NULL"
.LASF195:
	.string	"diff"
.LASF26:
	.string	"_sign"
.LASF60:
	.string	"_current_locale"
.LASF205:
	.string	"linenoiseEdit"
.LASF78:
	.string	"_data"
.LASF15:
	.string	"__wchb"
.LASF169:
	.string	"color"
.LASF249:
	.string	"fclose"
.LASF35:
	.string	"__tm_year"
.LASF200:
	.string	"read_bytes"
.LASF105:
	.string	"_misc_reent"
.LASF66:
	.string	"_localtime_buf"
.LASF224:
	.string	"free"
.LASF190:
	.string	"linenoiseEditHistoryNext"
.LASF63:
	.string	"_cvtlen"
.LASF25:
	.string	"_maxwds"
.LASF110:
	.string	"_l64a_buf"
.LASF59:
	.string	"_current_category"
.LASF156:
	.string	"getColumns"
.LASF72:
	.string	"_misc"
.LASF86:
	.string	"_blksize"
.LASF29:
	.string	"__tm"
.LASF88:
	.string	"_lock"
.LASF16:
	.string	"sizetype"
.LASF216:
	.string	"hintsCallback"
.LASF178:
	.string	"refreshSingleLine"
.LASF21:
	.string	"long unsigned int"
.LASF126:
	.string	"plen"
.LASF214:
	.string	"linenoiseHistoryLoad"
.LASF93:
	.string	"_niobs"
.LASF13:
	.string	"wint_t"
.LASF255:
	.string	"KEY_ACTION"
.LASF206:
	.string	"pos1"
.LASF207:
	.string	"pos2"
.LASF41:
	.string	"_dso_handle"
.LASF153:
	.string	"freeCompletions"
.LASF183:
	.string	"nwritten"
.LASF161:
	.string	"linenoiseSetDumbMode"
.LASF64:
	.string	"_cvtbuf"
.LASF2:
	.string	"unsigned char"
.LASF147:
	.string	"BACKSPACE"
.LASF141:
	.string	"ENTER"
.LASF203:
	.string	"line"
.LASF111:
	.string	"_getdate_err"
.LASF192:
	.string	"linenoiseEditBackspace"
.LASF98:
	.string	"_add"
.LASF149:
	.string	"abInit"
.LASF241:
	.string	"fcntl"
.LASF48:
	.string	"__sbuf"
.LASF92:
	.string	"_glue"
.LASF223:
	.string	"realloc"
.LASF70:
	.string	"__sglue"
.LASF230:
	.string	"fwrite"
.LASF106:
	.string	"_strtok_last"
.LASF109:
	.string	"_mbtowc_state"
.LASF140:
	.string	"CTRL_L"
.LASF129:
	.string	"maxrows"
.LASF219:
	.string	"dumbmode"
.LASF191:
	.string	"linenoiseEditDelete"
.LASF182:
	.string	"nread"
.LASF40:
	.string	"_fnargs"
.LASF1:
	.string	"signed char"
.LASF215:
	.string	"completionCallback"
.LASF144:
	.string	"CTRL_T"
.LASF51:
	.string	"_reent"
.LASF4:
	.string	"short unsigned int"
.LASF246:
	.string	"calloc"
.LASF242:
	.string	"memcpy"
.LASF42:
	.string	"_fntypes"
.LASF50:
	.string	"_size"
.LASF150:
	.string	"sanitize"
.LASF123:
	.string	"linenoiseState"
.LASF227:
	.string	"sscanf"
.LASF10:
	.string	"_off_t"
.LASF85:
	.string	"_nbuf"
.LASF117:
	.string	"FILE"
.LASF90:
	.string	"_flags2"
.LASF43:
	.string	"_is_cxa"
.LASF222:
	.string	"history"
.LASF96:
	.string	"_seed"
.LASF99:
	.string	"_rand_next"
.LASF82:
	.string	"_seek"
.LASF55:
	.string	"_stderr"
.LASF84:
	.string	"_ubuf"
.LASF181:
	.string	"completeLine"
.LASF231:
	.string	"fputc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
