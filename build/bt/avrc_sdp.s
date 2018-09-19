	.file	"avrc_sdp.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC2:
	.string	"BT_AVRC"
	.align	4
.LC4:
	.string	"\033[0;32mI (%d) %s: avrc_sdp_cback status: %d\033[0m\n"
	.section	.text.avrc_sdp_cback,"ax",@progbits
	.literal_position
	.literal .LC1, avrc_cb
	.literal .LC3, .LC2
	.literal .LC5, .LC4
	.align	4
	.type	avrc_sdp_cback, @function
avrc_sdp_cback:
.LFB5:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avrc/avrc_sdp.c"
	.loc 1 96 0
.LVL0:
	entry	sp, 32
.LCFI0:
	extui	a2, a2, 0, 16
	.loc 1 97 0
	l32r	a8, .LC1
	l8ui	a8, a8, 106
	bltui	a8, 3, .L2
	.loc 1 97 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL1:
	l32r	a11, .LC3
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC5
	movi.n	a10, 3
	call8	esp_log_write
.LVL2:
.L2:
	.loc 1 100 0 is_stmt 1
	l32r	a8, .LC1
	movi.n	a9, 0
	s16i	a9, a8, 104
	.loc 1 103 0
	l32i	a8, a8, 96
	mov.n	a10, a2
	callx8	a8
.LVL3:
	retw.n
.LFE5:
	.size	avrc_sdp_cback, .-avrc_sdp_cback
	.section	.rodata.str1.4
	.align	4
.LC9:
	.string	"\033[0;32mI (%d) %s: AVRC_FindService uuid: %x\033[0m\n"
	.section	.rodata
	.align	4
.LC0:
	.short	1
	.short	4
	.short	9
	.short	256
	.short	785
	.short	258
	.section	.text.AVRC_FindService,"ax",@progbits
	.literal_position
	.literal .LC6, .LC0
	.literal .LC7, avrc_cb
	.literal .LC8, .LC2
	.literal .LC10, .LC9
	.literal .LC11, -4364
	.literal .LC12, -4366
	.literal .LC13, avrc_sdp_cback
	.align	4
	.global	AVRC_FindService
	.type	AVRC_FindService, @function
AVRC_FindService:
.LFB6:
	.loc 1 147 0
.LVL4:
	entry	sp, 64
.LCFI1:
	extui	a2, a2, 0, 16
.LVL5:
	.loc 1 150 0
	movi.n	a12, 0xc
	l32r	a11, .LC6
	addi	a10, sp, 20
	call8	memcpy
.LVL6:
	.loc 1 158 0
	l32r	a8, .LC7
	l8ui	a8, a8, 106
	bltui	a8, 3, .L4
	.loc 1 158 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL7:
	l32r	a11, .LC8
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC10
	movi.n	a10, 3
	call8	esp_log_write
.LVL8:
.L4:
	.loc 1 159 0 is_stmt 1
	l32r	a8, .LC11
	add.n	a8, a2, a8
	movi.n	a11, 1
	movi.n	a9, 0
	mov.n	a6, a9
	movnez	a6, a11, a8
	l32r	a10, .LC12
	add.n	a10, a2, a10
	movnez	a9, a11, a10
	bany	a9, a6, .L9
	.loc 1 159 0 is_stmt 0 discriminator 1
	beqz.n	a4, .L10
	.loc 1 160 0 is_stmt 1
	l32i.n	a8, a4, 4
	beqz.n	a8, .L11
	.loc 1 160 0 discriminator 1
	beqz.n	a5, .L12
	.loc 1 165 0
	l32r	a8, .LC7
	l16ui	a12, a8, 104
	l32r	a10, .LC11
	add.n	a10, a12, a10
	mov.n	a8, a11
	movi.n	a11, 0
	mov.n	a6, a11
	moveqz	a6, a8, a10
	l32r	a9, .LC12
	add.n	a9, a12, a9
	movnez	a8, a11, a9
	or	a8, a6, a8
	bne	a8, a11, .L13
	.loc 1 171 0
	movi.n	a8, 2
	s16i	a8, sp, 0
	.loc 1 172 0
	s16i	a2, sp, 4
	.loc 1 174 0
	l32i.n	a8, a4, 12
	beq	a8, a11, .L6
	.loc 1 174 0 discriminator 1
	l16ui	a8, a4, 8
	bne	a8, a11, .L7
.L6:
	.loc 1 175 0
	addi	a8, sp, 20
	s32i.n	a8, a4, 12
	.loc 1 176 0
	movi.n	a8, 6
	s16i	a8, a4, 8
.L7:
	.loc 1 179 0
	l32i.n	a15, a4, 12
	l16ui	a14, a4, 8
	mov.n	a13, sp
	movi.n	a12, 1
	l32i.n	a11, a4, 0
	l32i.n	a10, a4, 4
	call8	SDP_InitDiscoveryDb
.LVL9:
	.loc 1 182 0
	beqz.n	a10, .L8
	.loc 1 184 0
	l32i.n	a9, a4, 4
	l32r	a8, .LC7
	s32i	a9, a8, 100
	.loc 1 185 0
	s16i	a2, a8, 104
	.loc 1 186 0
	s32i	a5, a8, 96
	.loc 1 189 0
	l32r	a12, .LC13
	l32i.n	a11, a4, 4
	mov.n	a10, a3
.LVL10:
	call8	SDP_ServiceSearchAttributeRequest
.LVL11:
.L8:
	.loc 1 192 0
	beqz.n	a10, .L14
	movi.n	a2, 0
.LVL12:
	retw.n
.LVL13:
.L9:
	.loc 1 161 0
	movi.n	a2, 0x11
	retw.n
.L10:
	movi.n	a2, 0x11
	retw.n
.L11:
	movi.n	a2, 0x11
	retw.n
.L12:
	movi.n	a2, 0x11
	retw.n
.L13:
	.loc 1 167 0
	movi.n	a2, 1
	retw.n
.LVL14:
.L14:
	.loc 1 192 0
	movi.n	a2, 0x10
	.loc 1 193 0
	retw.n
.LFE6:
	.size	AVRC_FindService, .-AVRC_FindService
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"\033[0;32mI (%d) %s: AVRC_AddRecord uuid: %x\033[0m\n"
	.section	.text.AVRC_AddRecord,"ax",@progbits
	.literal_position
	.literal .LC14, avrc_cb
	.literal .LC15, .LC2
	.literal .LC17, .LC16
	.literal .LC18, -4364
	.literal .LC19, -4366
	.literal .LC20, 4366
	.literal .LC21, 4367
	.literal .LC22, avrc_proto_list
	.literal .LC23, 4098
	.align	4
	.global	AVRC_AddRecord
	.type	AVRC_AddRecord, @function
AVRC_AddRecord:
.LFB7:
	.loc 1 228 0
.LVL15:
	entry	sp, 48
.LCFI2:
	extui	a2, a2, 0, 16
	extui	a5, a5, 0, 16
.LVL16:
	.loc 1 237 0
	l32r	a8, .LC14
	l8ui	a8, a8, 106
	bltui	a8, 3, .L16
	.loc 1 237 0 is_stmt 0 discriminator 1
	call8	esp_log_timestamp
.LVL17:
	l32r	a11, .LC15
	mov.n	a15, a2
	mov.n	a14, a11
	mov.n	a13, a10
	l32r	a12, .LC17
	movi.n	a10, 3
	call8	esp_log_write
.LVL18:
.L16:
	.loc 1 239 0 is_stmt 1
	l32r	a8, .LC18
	add.n	a8, a2, a8
	movi.n	a11, 1
	movi.n	a9, 0
	mov.n	a10, a9
	movnez	a10, a11, a8
	mov.n	a8, a10
	l32r	a10, .LC19
	add.n	a10, a2, a10
	movnez	a9, a11, a10
	bany	a9, a8, .L21
	.loc 1 244 0
	s16i	a2, sp, 10
	.loc 1 246 0
	l32r	a8, .LC20
	bne	a2, a8, .L22
	.loc 1 247 0
	l32r	a2, .LC21
.LVL19:
	s16i	a2, sp, 12
.LVL20:
	.loc 1 248 0
	movi.n	a11, 2
	j	.L18
.LVL21:
.L22:
	.loc 1 233 0
	movi.n	a11, 1
.LVL22:
.L18:
	.loc 1 258 0
	addi.n	a12, sp, 10
	mov.n	a10, a6
.LVL23:
	call8	SDP_AddServiceClassIdList
.LVL24:
	mov.n	a2, a10
.LVL25:
	.loc 1 261 0
	l32r	a12, .LC22
	movi.n	a11, 2
	mov.n	a10, a6
	call8	SDP_AddProtocolList
.LVL26:
	and	a10, a2, a10
	extui	a2, a10, 0, 8
.LVL27:
	.loc 1 271 0
	movi	a12, 0x103
	l32r	a11, .LC20
	mov.n	a10, a6
.LVL28:
	call8	SDP_AddProfileDescriptorList
.LVL29:
	and	a2, a2, a10
.LVL30:
	.loc 1 279 0
	srli	a8, a5, 8
	s8i	a8, sp, 2
.LVL31:
	s8i	a5, sp, 3
	.loc 1 280 0
	addi.n	a14, sp, 2
	movi.n	a13, 2
	movi.n	a12, 1
	movi	a11, 0x311
	mov.n	a10, a6
	call8	SDP_AddAttribute
.LVL32:
	and	a2, a2, a10
.LVL33:
	.loc 1 284 0
	beqz.n	a4, .L19
	.loc 1 286 0
	mov.n	a10, a4
	call8	strlen
.LVL34:
	.loc 1 285 0
	mov.n	a14, a4
	addi.n	a13, a10, 1
	movi.n	a12, 4
	movi	a11, 0x102
	mov.n	a10, a6
	call8	SDP_AddAttribute
.LVL35:
	and	a2, a2, a10
.LVL36:
.L19:
	.loc 1 290 0
	beqz.n	a3, .L20
	.loc 1 292 0
	mov.n	a10, a3
	call8	strlen
.LVL37:
	.loc 1 291 0
	mov.n	a14, a3
	addi.n	a13, a10, 1
	movi.n	a12, 4
	movi	a11, 0x100
	mov.n	a10, a6
	call8	SDP_AddAttribute
.LVL38:
	and	a2, a2, a10
.LVL39:
.L20:
	.loc 1 296 0
	l32r	a3, .LC23
.LVL40:
	s16i	a3, sp, 0
	.loc 1 297 0
	mov.n	a13, sp
	movi.n	a12, 1
	movi.n	a11, 5
	mov.n	a10, a6
	call8	SDP_AddUuidSequence
.LVL41:
	.loc 1 300 0
	beqz.n	a2, .L23
	beqz.n	a10, .L23
	movi.n	a2, 0
.LVL42:
	retw.n
.LVL43:
.L21:
	.loc 1 240 0
	movi.n	a2, 0x11
	retw.n
.LVL44:
.L23:
	.loc 1 300 0
	movi.n	a2, 0x10
.LVL45:
	.loc 1 301 0
	retw.n
.LFE7:
	.size	AVRC_AddRecord, .-AVRC_AddRecord
	.section	.text.AVRC_SetTraceLevel,"ax",@progbits
	.literal_position
	.literal .LC24, avrc_cb
	.align	4
	.global	AVRC_SetTraceLevel
	.type	AVRC_SetTraceLevel, @function
AVRC_SetTraceLevel:
.LFB8:
	.loc 1 327 0
.LVL46:
	entry	sp, 32
.LCFI3:
	extui	a2, a2, 0, 8
	.loc 1 328 0
	movi	a8, 0xff
	beq	a2, a8, .L25
	.loc 1 329 0
	l32r	a8, .LC24
	s8i	a2, a8, 106
.L25:
	.loc 1 333 0
	l32r	a2, .LC24
.LVL47:
	l8ui	a2, a2, 106
	retw.n
.LFE8:
	.size	AVRC_SetTraceLevel, .-AVRC_SetTraceLevel
	.section	.text.AVRC_Init,"ax",@progbits
	.literal_position
	.literal .LC25, avrc_cb
	.align	4
	.global	AVRC_Init
	.type	AVRC_Init, @function
AVRC_Init:
.LFB9:
	.loc 1 347 0
	entry	sp, 32
.LCFI4:
	.loc 1 351 0
	l32r	a2, .LC25
	movi	a12, 0x6c
	movi.n	a11, 0
	mov.n	a10, a2
	call8	memset
.LVL48:
	.loc 1 354 0
	movi.n	a8, 2
	s8i	a8, a2, 106
	retw.n
.LFE9:
	.size	AVRC_Init, .-AVRC_Init
	.section	.text.AVRC_Deinit,"ax",@progbits
	.align	4
	.global	AVRC_Deinit
	.type	AVRC_Deinit, @function
AVRC_Deinit:
.LFB10:
	.loc 1 372 0
	entry	sp, 32
.LCFI5:
	retw.n
.LFE10:
	.size	AVRC_Deinit, .-AVRC_Deinit
	.global	avrc_proto_list
	.section	.rodata.avrc_proto_list,"a",@progbits
	.align	4
	.type	avrc_proto_list, @object
	.size	avrc_proto_list, 16
avrc_proto_list:
	.short	256
	.short	1
	.short	23
	.short	0
	.short	23
	.short	1
	.short	260
	.short	0
	.comm	avrc_cb,108,4
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI0-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x40
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
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI3-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI4-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI5-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/sdp_api.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avrc_defs.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/avrc_api.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avrc/include/avrc_int.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/log/include/esp_log.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd89
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xc
	.4byte	.LASF156
	.4byte	.LASF157
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x33
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x15
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x21
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.byte	0x21
	.4byte	0xa0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x22
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x23
	.4byte	0xb6
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x29
	.4byte	0xed
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xc6
	.4byte	0x139
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc7
	.4byte	0xab
	.byte	0
	.uleb128 0x8
	.string	"len"
	.byte	0x4
	.byte	0xc8
	.4byte	0xab
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc9
	.4byte	0xab
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.byte	0xca
	.4byte	0xab
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0xcb
	.4byte	0x139
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0xa0
	.4byte	0x148
	.uleb128 0xa
	.4byte	0x85
	.byte	0
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x4
	.byte	0xcc
	.4byte	0xf4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x132
	.4byte	0x15f
	.uleb128 0x9
	.4byte	0xc1
	.4byte	0x16f
	.uleb128 0xc
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc1
	.uleb128 0x9
	.4byte	0xc1
	.4byte	0x185
	.uleb128 0xc
	.4byte	0x85
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0xc1
	.4byte	0x195
	.uleb128 0xc
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.byte	0x10
	.byte	0x4
	.2byte	0x1ab
	.4byte	0x1c3
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x1ac
	.4byte	0xcc
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x1ad
	.4byte	0xd7
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x1ae
	.4byte	0x185
	.byte	0
	.uleb128 0xf
	.byte	0x14
	.byte	0x4
	.2byte	0x1a4
	.4byte	0x1e6
	.uleb128 0x10
	.string	"len"
	.byte	0x4
	.2byte	0x1a9
	.4byte	0xcc
	.byte	0
	.uleb128 0x10
	.string	"uu"
	.byte	0x4
	.2byte	0x1af
	.4byte	0x195
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x1b1
	.4byte	0x1c3
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2c
	.byte	0x9
	.byte	0x1f
	.4byte	0x223
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	0x23d
	.uleb128 0x14
	.4byte	0xc1
	.uleb128 0x14
	.4byte	0xc1
	.uleb128 0x14
	.4byte	0xcc
	.uleb128 0x14
	.4byte	0x16f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x148
	.uleb128 0x13
	.4byte	0x24e
	.uleb128 0x14
	.4byte	0xcc
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.byte	0x5f
	.4byte	0x28d
	.uleb128 0x16
	.string	"u8"
	.byte	0x5
	.byte	0x60
	.4byte	0xc1
	.uleb128 0x16
	.string	"u16"
	.byte	0x5
	.byte	0x61
	.4byte	0xcc
	.uleb128 0x16
	.string	"u32"
	.byte	0x5
	.byte	0x62
	.4byte	0xd7
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x5
	.byte	0x63
	.4byte	0x28d
	.uleb128 0x17
	.4byte	.LASF39
	.byte	0x5
	.byte	0x64
	.4byte	0x2da
	.byte	0
	.uleb128 0x9
	.4byte	0xc1
	.4byte	0x29d
	.uleb128 0xc
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF46
	.byte	0xc
	.byte	0x5
	.byte	0x69
	.4byte	0x2da
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x5
	.byte	0x6a
	.4byte	0x2da
	.byte	0
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x5
	.byte	0x6b
	.4byte	0xcc
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x5
	.byte	0x6c
	.4byte	0xcc
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x5
	.byte	0x6d
	.4byte	0x2f3
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x29d
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0x5e
	.4byte	0x2f3
	.uleb128 0x8
	.string	"v"
	.byte	0x5
	.byte	0x65
	.4byte	0x24e
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x5
	.byte	0x67
	.4byte	0x2e0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x5
	.byte	0x6e
	.4byte	0x29d
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x14
	.byte	0x5
	.byte	0x70
	.4byte	0x346
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x5
	.byte	0x71
	.4byte	0x346
	.byte	0
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x5
	.byte	0x72
	.4byte	0x34c
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x5
	.byte	0x73
	.4byte	0xd7
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x5
	.byte	0x74
	.4byte	0x153
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2fe
	.uleb128 0x5
	.byte	0x4
	.4byte	0x309
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x5
	.byte	0x75
	.4byte	0x309
	.uleb128 0x6
	.byte	0x7c
	.byte	0x5
	.byte	0x77
	.4byte	0x3ea
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x5
	.byte	0x78
	.4byte	0xd7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x5
	.byte	0x79
	.4byte	0xd7
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x5
	.byte	0x7a
	.4byte	0x3ea
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x5
	.byte	0x7b
	.4byte	0xcc
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x5
	.byte	0x7c
	.4byte	0x3f0
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x5
	.byte	0x7d
	.4byte	0xcc
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x5
	.byte	0x7e
	.4byte	0x400
	.byte	0x4e
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x5
	.byte	0x7f
	.4byte	0x16f
	.byte	0x6c
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x5
	.byte	0x81
	.4byte	0x16f
	.byte	0x70
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x5
	.byte	0x82
	.4byte	0xd7
	.byte	0x74
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x5
	.byte	0x83
	.4byte	0xd7
	.byte	0x78
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x352
	.uleb128 0x9
	.4byte	0x1e6
	.4byte	0x400
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x410
	.uleb128 0xc
	.4byte	0x85
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x5
	.byte	0x85
	.4byte	0x35d
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x88
	.4byte	0x448
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x5
	.byte	0x89
	.4byte	0xcc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x5
	.byte	0x8a
	.4byte	0xcc
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x5
	.byte	0x8b
	.4byte	0x448
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x458
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x5
	.byte	0x8c
	.4byte	0x41b
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.2byte	0x2f7
	.4byte	0x4a1
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x2f8
	.4byte	0xc1
	.byte	0
	.uleb128 0x19
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x2f9
	.4byte	0xc1
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x2fa
	.4byte	0xc1
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x2fd
	.4byte	0xc1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x2fe
	.4byte	0x463
	.uleb128 0xf
	.byte	0xc
	.byte	0x6
	.2byte	0x301
	.4byte	0x4eb
	.uleb128 0x10
	.string	"hdr"
	.byte	0x6
	.2byte	0x302
	.4byte	0x4a1
	.byte	0
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x303
	.4byte	0xd7
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x304
	.4byte	0xc1
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x305
	.4byte	0xc1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x306
	.4byte	0x4ad
	.uleb128 0xf
	.byte	0xa
	.byte	0x6
	.2byte	0x309
	.4byte	0x535
	.uleb128 0x10
	.string	"hdr"
	.byte	0x6
	.2byte	0x30a
	.4byte	0x4a1
	.byte	0
	.uleb128 0x19
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x30b
	.4byte	0x28d
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x30d
	.4byte	0xe2
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x30f
	.4byte	0xc1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x312
	.4byte	0x4f7
	.uleb128 0xf
	.byte	0x10
	.byte	0x6
	.2byte	0x315
	.4byte	0x57f
	.uleb128 0x10
	.string	"hdr"
	.byte	0x6
	.2byte	0x316
	.4byte	0x4a1
	.byte	0
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x317
	.4byte	0xd7
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x318
	.4byte	0x16f
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x319
	.4byte	0xcc
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x31a
	.4byte	0x541
	.uleb128 0xf
	.byte	0x10
	.byte	0x6
	.2byte	0x31d
	.4byte	0x5d6
	.uleb128 0x10
	.string	"hdr"
	.byte	0x6
	.2byte	0x31e
	.4byte	0x4a1
	.byte	0
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x321
	.4byte	0xc1
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x322
	.4byte	0xc1
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x323
	.4byte	0x16f
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x325
	.4byte	0xc1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x327
	.4byte	0x58b
	.uleb128 0xf
	.byte	0x10
	.byte	0x6
	.2byte	0x32e
	.4byte	0x620
	.uleb128 0x10
	.string	"hdr"
	.byte	0x6
	.2byte	0x32f
	.4byte	0x4a1
	.byte	0
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x332
	.4byte	0x16f
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x333
	.4byte	0xcc
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x334
	.4byte	0x23d
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x335
	.4byte	0x5e2
	.uleb128 0xd
	.byte	0x10
	.byte	0x6
	.2byte	0x338
	.4byte	0x67e
	.uleb128 0x1a
	.string	"hdr"
	.byte	0x6
	.2byte	0x339
	.4byte	0x4a1
	.uleb128 0xe
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x33a
	.4byte	0x4eb
	.uleb128 0x1a
	.string	"sub"
	.byte	0x6
	.2byte	0x33b
	.4byte	0x535
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x33c
	.4byte	0x57f
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x33d
	.4byte	0x5d6
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x33e
	.4byte	0x620
	.byte	0
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x33f
	.4byte	0x62c
	.uleb128 0x6
	.byte	0x10
	.byte	0x7
	.byte	0x7c
	.4byte	0x6c3
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x7
	.byte	0x7d
	.4byte	0xd7
	.byte	0
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x7
	.byte	0x7e
	.4byte	0x6c3
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x7
	.byte	0x7f
	.4byte	0xcc
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x7
	.byte	0x80
	.4byte	0x6c9
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x410
	.uleb128 0x5
	.byte	0x4
	.4byte	0xcc
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x7
	.byte	0x84
	.4byte	0x68a
	.uleb128 0x4
	.4byte	.LASF102
	.byte	0x7
	.byte	0x8b
	.4byte	0x243
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x7
	.byte	0x90
	.4byte	0x223
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x7
	.byte	0x98
	.4byte	0x6fb
	.uleb128 0x13
	.4byte	0x715
	.uleb128 0x14
	.4byte	0xc1
	.uleb128 0x14
	.4byte	0xc1
	.uleb128 0x14
	.4byte	0xc1
	.uleb128 0x14
	.4byte	0x715
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x67e
	.uleb128 0x6
	.byte	0x10
	.byte	0x7
	.byte	0x9b
	.4byte	0x760
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0x7
	.byte	0x9c
	.4byte	0x760
	.byte	0
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0x7
	.byte	0x9d
	.4byte	0x766
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x7
	.byte	0x9e
	.4byte	0xd7
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF107
	.byte	0x7
	.byte	0x9f
	.4byte	0xc1
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF108
	.byte	0x7
	.byte	0xa0
	.4byte	0xc1
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6e5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6f0
	.uleb128 0x4
	.4byte	.LASF109
	.byte	0x7
	.byte	0xa1
	.4byte	0x71b
	.uleb128 0x6
	.byte	0x8
	.byte	0x8
	.byte	0x66
	.4byte	0x7a4
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0x8
	.byte	0x67
	.4byte	0x23d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x8
	.byte	0x68
	.4byte	0xc1
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0x8
	.byte	0x69
	.4byte	0xe2
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF113
	.byte	0x8
	.byte	0x6a
	.4byte	0x777
	.uleb128 0x6
	.byte	0x8
	.byte	0x8
	.byte	0x6d
	.4byte	0x7dc
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0x8
	.byte	0x6e
	.4byte	0x23d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF115
	.byte	0x8
	.byte	0x6f
	.4byte	0xcc
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF116
	.byte	0x8
	.byte	0x70
	.4byte	0xc1
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x8
	.byte	0x71
	.4byte	0x7af
	.uleb128 0x6
	.byte	0x6c
	.byte	0x8
	.byte	0x74
	.4byte	0x844
	.uleb128 0x8
	.string	"ccb"
	.byte	0x8
	.byte	0x75
	.4byte	0x844
	.byte	0
	.uleb128 0x8
	.string	"fcb"
	.byte	0x8
	.byte	0x77
	.4byte	0x854
	.byte	0x30
	.uleb128 0x8
	.string	"rcb"
	.byte	0x8
	.byte	0x78
	.4byte	0x864
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF118
	.byte	0x8
	.byte	0x7a
	.4byte	0x874
	.byte	0x60
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x8
	.byte	0x7b
	.4byte	0x6c3
	.byte	0x64
	.uleb128 0x7
	.4byte	.LASF119
	.byte	0x8
	.byte	0x7c
	.4byte	0xcc
	.byte	0x68
	.uleb128 0x7
	.4byte	.LASF120
	.byte	0x8
	.byte	0x7d
	.4byte	0xc1
	.byte	0x6a
	.byte	0
	.uleb128 0x9
	.4byte	0x76c
	.4byte	0x854
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x7a4
	.4byte	0x864
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x7dc
	.4byte	0x874
	.uleb128 0xc
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6da
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x8
	.byte	0x7e
	.4byte	0x7e7
	.uleb128 0x1b
	.4byte	.LASF158
	.byte	0x1
	.byte	0x5f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f1
	.uleb128 0x1c
	.4byte	.LASF122
	.byte	0x1
	.byte	0x5f
	.4byte	0xcc
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LVL1
	.4byte	0xd07
	.uleb128 0x1e
	.4byte	.LVL2
	.4byte	0xd12
	.4byte	0x8e4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x91
	.4byte	0xcc
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9fd
	.uleb128 0x22
	.4byte	.LASF119
	.byte	0x1
	.byte	0x91
	.4byte	0xcc
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x1
	.byte	0x91
	.4byte	0x16f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0x1
	.byte	0x92
	.4byte	0x9fd
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF118
	.byte	0x1
	.byte	0x92
	.4byte	0x874
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x23
	.4byte	.LASF124
	.byte	0x1
	.byte	0x94
	.4byte	0x1e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.4byte	.LASF125
	.byte	0x1
	.byte	0x95
	.4byte	0xe2
	.4byte	.LLST1
	.uleb128 0x23
	.4byte	.LASF126
	.byte	0x1
	.byte	0x96
	.4byte	0xa03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0xd1d
	.4byte	0x98d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL7
	.4byte	0xd07
	.uleb128 0x1e
	.4byte	.LVL8
	.4byte	0xd12
	.4byte	0x9ca
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL9
	.4byte	0xd26
	.4byte	0x9e3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x25
	.4byte	.LVL11
	.4byte	0xd31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	avrc_sdp_cback
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6cf
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0xa13
	.uleb128 0xc
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0x1
	.byte	0xe2
	.4byte	0xcc
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc21
	.uleb128 0x22
	.4byte	.LASF119
	.byte	0x1
	.byte	0xe2
	.4byte	0xcc
	.4byte	.LLST2
	.uleb128 0x22
	.4byte	.LASF129
	.byte	0x1
	.byte	0xe2
	.4byte	0x93
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LASF130
	.byte	0x1
	.byte	0xe3
	.4byte	0x93
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x1
	.byte	0xe3
	.4byte	0xcc
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x1
	.byte	0xe3
	.4byte	0xd7
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x23
	.4byte	.LASF133
	.byte	0x1
	.byte	0xe5
	.4byte	0xc21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.4byte	.LASF125
	.byte	0x1
	.byte	0xe6
	.4byte	0xe2
	.4byte	.LLST4
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.byte	0xe7
	.4byte	0x175
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.byte	0xe8
	.4byte	0x16f
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	.LASF135
	.byte	0x1
	.byte	0xe9
	.4byte	0xcc
	.4byte	.LLST6
	.uleb128 0x23
	.4byte	.LASF136
	.byte	0x1
	.byte	0xea
	.4byte	0x448
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x1d
	.4byte	.LVL17
	.4byte	0xd07
	.uleb128 0x1e
	.4byte	.LVL18
	.4byte	0xd12
	.4byte	0xb03
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL24
	.4byte	0xd3c
	.4byte	0xb1d
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL26
	.4byte	0xd48
	.4byte	0xb3f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	avrc_proto_list
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL29
	.4byte	0xd54
	.4byte	0xb61
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x110e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x103
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL32
	.4byte	0xd60
	.4byte	0xb8c
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x311
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL34
	.4byte	0xd6c
	.4byte	0xba0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL35
	.4byte	0xd60
	.4byte	0xbc6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x102
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL37
	.4byte	0xd6c
	.4byte	0xbda
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL38
	.4byte	0xd60
	.4byte	0xc00
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL41
	.4byte	0xd77
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0xc31
	.uleb128 0xc
	.4byte	0x85
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x146
	.4byte	0xc1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5c
	.uleb128 0x28
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x146
	.4byte	0xc1
	.4byte	.LLST7
	.byte	0
	.uleb128 0x29
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x15a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8e
	.uleb128 0x25
	.4byte	.LVL48
	.4byte	0xd83
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x8
	.byte	0x6c
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x173
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x2cc
	.4byte	0xcb3
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x2c
	.4byte	0x15f
	.uleb128 0x2b
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x2cd
	.4byte	0xccb
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	0x15f
	.uleb128 0x2d
	.4byte	.LASF141
	.byte	0x1
	.byte	0x2c
	.4byte	0x87a
	.uleb128 0x5
	.byte	0x3
	.4byte	avrc_cb
	.uleb128 0x9
	.4byte	0x458
	.4byte	0xcf1
	.uleb128 0xc
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF142
	.byte	0x1
	.byte	0x32
	.4byte	0xd02
	.uleb128 0x5
	.byte	0x3
	.4byte	avrc_proto_list
	.uleb128 0x2c
	.4byte	0xce1
	.uleb128 0x2e
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x9
	.byte	0x57
	.uleb128 0x2e
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x9
	.byte	0x6b
	.uleb128 0x2f
	.4byte	.LASF153
	.4byte	.LASF153
	.uleb128 0x2e
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x5
	.byte	0xbb
	.uleb128 0x2e
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x5
	.byte	0xe7
	.uleb128 0x30
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x5
	.2byte	0x248
	.uleb128 0x30
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x5
	.2byte	0x206
	.uleb128 0x30
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x5
	.2byte	0x226
	.uleb128 0x30
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x5
	.2byte	0x1d2
	.uleb128 0x2e
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xa
	.byte	0x21
	.uleb128 0x30
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x5
	.2byte	0x1f6
	.uleb128 0x2f
	.4byte	.LASF154
	.4byte	.LASF154
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2b
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x2f
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x4
	.byte	0x7a
	.sleb128 4366
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0x7a
	.sleb128 4366
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x91
	.sleb128 -45
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE7
	.2byte	0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
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
.LASF70:
	.string	"subunit_type"
.LASF106:
	.string	"p_msg_cback"
.LASF62:
	.string	"raw_size"
.LASF155:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF54:
	.string	"mem_free"
.LASF28:
	.string	"uuid16"
.LASF151:
	.string	"strlen"
.LASF107:
	.string	"conn"
.LASF81:
	.string	"p_vendor_data"
.LASF160:
	.string	"AVRC_Deinit"
.LASF26:
	.string	"BT_HDR"
.LASF45:
	.string	"tSDP_DISC_ATTR"
.LASF18:
	.string	"UINT16"
.LASF105:
	.string	"p_ctrl_cback"
.LASF108:
	.string	"control"
.LASF0:
	.string	"unsigned int"
.LASF129:
	.string	"p_service_name"
.LASF96:
	.string	"tAVRC_MSG"
.LASF132:
	.string	"sdp_handle"
.LASF143:
	.string	"esp_log_timestamp"
.LASF20:
	.string	"BOOLEAN"
.LASF156:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/avrc/avrc_sdp.c"
.LASF43:
	.string	"attr_value"
.LASF73:
	.string	"tAVRC_HDR"
.LASF119:
	.string	"service_uuid"
.LASF100:
	.string	"p_attrs"
.LASF29:
	.string	"uuid32"
.LASF89:
	.string	"p_browse_data"
.LASF110:
	.string	"p_fmsg"
.LASF19:
	.string	"UINT32"
.LASF16:
	.string	"uint32_t"
.LASF91:
	.string	"p_browse_pkt"
.LASF102:
	.string	"tAVRC_FIND_CBACK"
.LASF59:
	.string	"attr_filters"
.LASF22:
	.string	"event"
.LASF126:
	.string	"a2d_attr_list"
.LASF99:
	.string	"num_attr"
.LASF135:
	.string	"count"
.LASF125:
	.string	"result"
.LASF49:
	.string	"p_next_rec"
.LASF9:
	.string	"long long unsigned int"
.LASF136:
	.string	"class_list"
.LASF93:
	.string	"vendor"
.LASF145:
	.string	"SDP_InitDiscoveryDb"
.LASF6:
	.string	"__uint16_t"
.LASF128:
	.string	"AVRC_AddRecord"
.LASF84:
	.string	"op_id"
.LASF34:
	.string	"ESP_LOG_WARN"
.LASF138:
	.string	"new_level"
.LASF137:
	.string	"AVRC_SetTraceLevel"
.LASF88:
	.string	"tAVRC_MSG_PASS"
.LASF97:
	.string	"db_len"
.LASF147:
	.string	"SDP_AddServiceClassIdList"
.LASF44:
	.string	"tSDP_DISC_ATVAL"
.LASF94:
	.string	"pass"
.LASF121:
	.string	"tAVRC_CB"
.LASF23:
	.string	"offset"
.LASF53:
	.string	"mem_size"
.LASF60:
	.string	"p_free_mem"
.LASF21:
	.string	"_Bool"
.LASF148:
	.string	"SDP_AddProtocolList"
.LASF32:
	.string	"ESP_LOG_NONE"
.LASF27:
	.string	"BD_ADDR"
.LASF13:
	.string	"char"
.LASF30:
	.string	"uuid128"
.LASF58:
	.string	"num_attr_filters"
.LASF146:
	.string	"SDP_ServiceSearchAttributeRequest"
.LASF64:
	.string	"tSDP_DISCOVERY_DB"
.LASF157:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF112:
	.string	"frag_enabled"
.LASF25:
	.string	"data"
.LASF72:
	.string	"opcode"
.LASF57:
	.string	"uuid_filters"
.LASF14:
	.string	"uint8_t"
.LASF122:
	.string	"status"
.LASF24:
	.string	"layer_specific"
.LASF115:
	.string	"rasm_offset"
.LASF74:
	.string	"company_id"
.LASF71:
	.string	"subunit_id"
.LASF103:
	.string	"tAVRC_CTRL_CBACK"
.LASF8:
	.string	"long long int"
.LASF116:
	.string	"rasm_pdu"
.LASF79:
	.string	"page"
.LASF98:
	.string	"p_db"
.LASF75:
	.string	"unit_type"
.LASF118:
	.string	"p_cback"
.LASF42:
	.string	"attr_len_type"
.LASF117:
	.string	"tAVRC_RASM_CB"
.LASF154:
	.string	"memset"
.LASF52:
	.string	"tSDP_DISC_REC"
.LASF120:
	.string	"trace_level"
.LASF80:
	.string	"tAVRC_MSG_SUB"
.LASF35:
	.string	"ESP_LOG_INFO"
.LASF144:
	.string	"esp_log_write"
.LASF76:
	.string	"unit"
.LASF104:
	.string	"tAVRC_MSG_CBACK"
.LASF51:
	.string	"remote_bd_addr"
.LASF50:
	.string	"time_read"
.LASF38:
	.string	"array"
.LASF130:
	.string	"p_provider_name"
.LASF15:
	.string	"uint16_t"
.LASF68:
	.string	"tSDP_PROTOCOL_ELEM"
.LASF140:
	.string	"bd_addr_null"
.LASF67:
	.string	"params"
.LASF56:
	.string	"num_uuid_filters"
.LASF141:
	.string	"avrc_cb"
.LASF4:
	.string	"short int"
.LASF77:
	.string	"tAVRC_MSG_UNIT"
.LASF10:
	.string	"long int"
.LASF158:
	.string	"avrc_sdp_cback"
.LASF133:
	.string	"browse_list"
.LASF48:
	.string	"p_first_attr"
.LASF87:
	.string	"pass_len"
.LASF134:
	.string	"temp"
.LASF31:
	.string	"tBT_UUID"
.LASF90:
	.string	"browse_len"
.LASF124:
	.string	"uuid_list"
.LASF142:
	.string	"avrc_proto_list"
.LASF92:
	.string	"tAVRC_MSG_BROWSE"
.LASF5:
	.string	"__uint8_t"
.LASF63:
	.string	"raw_used"
.LASF82:
	.string	"vendor_len"
.LASF65:
	.string	"protocol_uuid"
.LASF11:
	.string	"sizetype"
.LASF12:
	.string	"long unsigned int"
.LASF61:
	.string	"raw_data"
.LASF37:
	.string	"ESP_LOG_VERBOSE"
.LASF139:
	.string	"bd_addr_any"
.LASF47:
	.string	"t_sdp_disc_rec"
.LASF113:
	.string	"tAVRC_FRAG_CB"
.LASF69:
	.string	"ctype"
.LASF111:
	.string	"frag_pdu"
.LASF131:
	.string	"categories"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF159:
	.string	"AVRC_Init"
.LASF149:
	.string	"SDP_AddProfileDescriptorList"
.LASF41:
	.string	"attr_id"
.LASF78:
	.string	"panel"
.LASF150:
	.string	"SDP_AddAttribute"
.LASF114:
	.string	"p_rmsg"
.LASF85:
	.string	"state"
.LASF36:
	.string	"ESP_LOG_DEBUG"
.LASF40:
	.string	"p_next_attr"
.LASF86:
	.string	"p_pass_data"
.LASF55:
	.string	"p_first_rec"
.LASF123:
	.string	"bd_addr"
.LASF2:
	.string	"signed char"
.LASF109:
	.string	"tAVRC_CONN_CB"
.LASF1:
	.string	"short unsigned int"
.LASF153:
	.string	"memcpy"
.LASF46:
	.string	"t_sdp_disc_attr"
.LASF66:
	.string	"num_params"
.LASF127:
	.string	"AVRC_FindService"
.LASF152:
	.string	"SDP_AddUuidSequence"
.LASF83:
	.string	"tAVRC_MSG_VENDOR"
.LASF95:
	.string	"browse"
.LASF17:
	.string	"UINT8"
.LASF101:
	.string	"tAVRC_SDP_DB_PARAMS"
.LASF33:
	.string	"ESP_LOG_ERROR"
.LASF39:
	.string	"p_sub_attr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
