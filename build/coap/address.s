	.file	"address.c"
	.text
.Ltext0:
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC0:
	.string	"a"
	.align	4
.LC3:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/address.c"
	.align	4
.LC5:
	.string	"b"
	.section	.text.coap_address_equals,"ax",@progbits
	.literal_position
	.literal .LC1, .LC0
	.literal .LC2, __func__$6206
	.literal .LC4, .LC3
	.literal .LC6, .LC5
	.align	4
	.global	coap_address_equals
	.type	coap_address_equals, @function
coap_address_equals:
.LFB35:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/address.c"
	.loc 1 18 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 19 0
	bnez.n	a2, .L2
	.loc 1 19 0 is_stmt 0 discriminator 1
	l32r	a13, .LC1
	l32r	a12, .LC2
	movi.n	a11, 0x13
	l32r	a10, .LC4
	call8	__assert_func
.LVL1:
.L2:
	.loc 1 19 0 discriminator 2
	bnez.n	a3, .L3
	.loc 1 19 0 discriminator 3
	l32r	a13, .LC6
	l32r	a12, .LC2
	movi.n	a11, 0x13
	l32r	a10, .LC4
	call8	__assert_func
.LVL2:
.L3:
	.loc 1 21 0 is_stmt 1
	l32i.n	a9, a2, 0
	l32i.n	a8, a3, 0
	bne	a9, a8, .L7
	.loc 1 21 0 is_stmt 0 discriminator 1
	l8ui	a8, a2, 5
	l8ui	a9, a3, 5
	bne	a8, a9, .L8
	.loc 1 25 0 is_stmt 1
	beqi	a8, 2, .L5
	beqi	a8, 10, .L6
	j	.L14
.L5:
	.loc 1 28 0
	l16ui	a9, a2, 6
	l16ui	a8, a3, 6
	bne	a9, a8, .L10
	.loc 1 29 0 discriminator 1
	movi.n	a12, 4
	addi.n	a11, a3, 8
	addi.n	a10, a2, 8
	call8	memcmp
.LVL3:
	.loc 1 28 0 discriminator 1
	beqz.n	a10, .L11
	.loc 1 28 0 is_stmt 0
	movi.n	a2, 0
.LVL4:
	retw.n
.LVL5:
.L6:
	.loc 1 32 0 is_stmt 1
	l16ui	a9, a2, 6
	l16ui	a8, a3, 6
	bne	a9, a8, .L12
	.loc 1 33 0 discriminator 1
	movi.n	a12, 0x10
	addi.n	a11, a3, 12
	addi.n	a10, a2, 12
	call8	memcmp
.LVL6:
	.loc 1 32 0 discriminator 1
	beqz.n	a10, .L13
	.loc 1 32 0 is_stmt 0
	movi.n	a2, 0
.LVL7:
	retw.n
.LVL8:
.L7:
	.loc 1 22 0 is_stmt 1
	movi.n	a2, 0
.LVL9:
	retw.n
.LVL10:
.L8:
	movi.n	a2, 0
.LVL11:
	retw.n
.LVL12:
.L14:
	.loc 1 38 0
	movi.n	a2, 0
.LVL13:
	retw.n
.LVL14:
.L10:
	.loc 1 28 0
	movi.n	a2, 0
.LVL15:
	retw.n
.LVL16:
.L11:
	movi.n	a2, 1
.LVL17:
	retw.n
.LVL18:
.L12:
	.loc 1 32 0
	movi.n	a2, 0
.LVL19:
	retw.n
.LVL20:
.L13:
	movi.n	a2, 1
.LVL21:
	.loc 1 39 0
	retw.n
.LFE35:
	.size	coap_address_equals, .-coap_address_equals
	.section	.text.coap_is_mcast,"ax",@progbits
	.literal_position
	.literal .LC7, -268435456
	.literal .LC8, 536870912
	.align	4
	.global	coap_is_mcast
	.type	coap_is_mcast, @function
coap_is_mcast:
.LFB36:
	.loc 1 41 0
.LVL22:
	entry	sp, 32
.LCFI1:
	.loc 1 42 0
	beqz.n	a2, .L19
	.loc 1 45 0
	l8ui	a8, a2, 5
	beqi	a8, 2, .L17
	beqi	a8, 10, .L18
	j	.L21
.L17:
	.loc 1 47 0
	l32i.n	a10, a2, 8
	call8	lwip_ntohl
.LVL23:
	l32r	a2, .LC7
.LVL24:
	and	a10, a10, a2
	l32r	a2, .LC8
	add.n	a10, a10, a2
	movi.n	a2, 0
	movi.n	a8, 1
	moveqz	a2, a8, a10
	extui	a2, a2, 0, 8
	retw.n
.LVL25:
.L18:
	.loc 1 49 0
	addi.n	a2, a2, 12
.LVL26:
	l32r	a8, .LC7
	and	a2, a2, a8
.LVL27:
	l32r	a8, .LC8
	add.n	a8, a2, a8
	movi.n	a2, 0
	movi.n	a9, 1
	moveqz	a2, a9, a8
	extui	a2, a2, 0, 8
	retw.n
.LVL28:
.L19:
	.loc 1 43 0
	movi.n	a2, 0
.LVL29:
	retw.n
.LVL30:
.L21:
	.loc 1 53 0
	movi.n	a2, 0
.LVL31:
	.loc 1 54 0
	retw.n
.LFE36:
	.size	coap_is_mcast, .-coap_is_mcast
	.section	.rodata.__func__$6206,"a",@progbits
	.align	4
	.type	__func__$6206, @object
	.size	__func__$6206, 20
__func__$6206:
	.string	"coap_address_equals"
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
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI0-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI1-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/inet.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/sockets.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/include/coap/address.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x48f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x12
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
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
	.uleb128 0x5
	.4byte	0x93
	.4byte	0xaa
	.uleb128 0x6
	.4byte	0x85
	.byte	0x7
	.byte	0
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2e
	.4byte	0xaa
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x30
	.4byte	0xb5
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x32
	.4byte	0xc0
	.uleb128 0x5
	.4byte	0xe8
	.4byte	0x103
	.uleb128 0x6
	.4byte	0x85
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0x37
	.4byte	0xe8
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4
	.byte	0x5
	.byte	0x3a
	.4byte	0x127
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0x3b
	.4byte	0x103
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x5
	.byte	0x3f
	.4byte	0x146
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x40
	.4byte	0xf3
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x41
	.4byte	0x146
	.byte	0
	.uleb128 0x5
	.4byte	0xd2
	.4byte	0x156
	.uleb128 0x6
	.4byte	0x85
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x10
	.byte	0x5
	.byte	0x3e
	.4byte	0x16e
	.uleb128 0xb
	.string	"un"
	.byte	0x5
	.byte	0x42
	.4byte	0x127
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.4byte	0xd2
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3c
	.4byte	0xdd
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x10
	.byte	0x6
	.byte	0x41
	.4byte	0x1cd
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x6
	.byte	0x42
	.4byte	0xd2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x6
	.byte	0x43
	.4byte	0x16e
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x6
	.byte	0x44
	.4byte	0x179
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.byte	0x45
	.4byte	0x10e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x6
	.byte	0x47
	.4byte	0x9a
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x1c
	.byte	0x6
	.byte	0x4c
	.4byte	0x222
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x6
	.byte	0x4d
	.4byte	0xd2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x4e
	.4byte	0x16e
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4f
	.4byte	0x179
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x6
	.byte	0x50
	.4byte	0xe8
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x6
	.byte	0x51
	.4byte	0x156
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x6
	.byte	0x52
	.4byte	0xe8
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x10
	.byte	0x6
	.byte	0x56
	.4byte	0x253
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x6
	.byte	0x57
	.4byte	0xd2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x6
	.byte	0x58
	.4byte	0x16e
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x6
	.byte	0x59
	.4byte	0x253
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0x93
	.4byte	0x263
	.uleb128 0x6
	.4byte	0x85
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x1c
	.byte	0x6
	.byte	0x5c
	.4byte	0x2ac
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x6
	.byte	0x5d
	.4byte	0xd2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x6
	.byte	0x5e
	.4byte	0x16e
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x6
	.byte	0x5f
	.4byte	0x2ac
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x6
	.byte	0x60
	.4byte	0x2bc
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x6
	.byte	0x62
	.4byte	0x2bc
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	0x93
	.4byte	0x2bc
	.uleb128 0x6
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0xe8
	.4byte	0x2cc
	.uleb128 0x6
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x6
	.byte	0x69
	.4byte	0xe8
	.uleb128 0x9
	.byte	0x1c
	.byte	0x7
	.byte	0x3d
	.4byte	0x30a
	.uleb128 0xc
	.string	"sa"
	.byte	0x7
	.byte	0x3e
	.4byte	0x222
	.uleb128 0xc
	.string	"st"
	.byte	0x7
	.byte	0x3f
	.4byte	0x263
	.uleb128 0xc
	.string	"sin"
	.byte	0x7
	.byte	0x40
	.4byte	0x184
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x7
	.byte	0x41
	.4byte	0x1cd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x20
	.byte	0x7
	.byte	0x3b
	.4byte	0x32f
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x7
	.byte	0x3c
	.4byte	0x2cc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x7
	.byte	0x42
	.4byte	0x2d7
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x7
	.byte	0x43
	.4byte	0x30a
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x1
	.byte	0x12
	.4byte	0x33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x411
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.byte	0x12
	.4byte	0x411
	.4byte	.LLST0
	.uleb128 0xf
	.string	"b"
	.byte	0x1
	.byte	0x12
	.4byte	0x411
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LASF65
	.4byte	0x42c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6206
	.uleb128 0x11
	.4byte	.LVL1
	.4byte	0x471
	.4byte	0x3a8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6206
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0x471
	.4byte	0x3d6
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x43
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$6206
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x11
	.4byte	.LVL3
	.4byte	0x47c
	.4byte	0x3f5
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0x47c
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 12
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 12
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x417
	.uleb128 0x15
	.4byte	0x32f
	.uleb128 0x5
	.4byte	0x93
	.4byte	0x42c
	.uleb128 0x6
	.4byte	0x85
	.byte	0x13
	.byte	0
	.uleb128 0x15
	.4byte	0x41c
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x1
	.byte	0x29
	.4byte	0x33
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x461
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.byte	0x29
	.4byte	0x411
	.4byte	.LLST1
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0x487
	.byte	0
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x5
	.byte	0x56
	.4byte	0x46c
	.uleb128 0x15
	.4byte	0x156
	.uleb128 0x18
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x8
	.byte	0x29
	.uleb128 0x18
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x9
	.byte	0x16
	.uleb128 0x18
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0xa
	.byte	0x6f
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL12
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
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL18
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
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x72
	.sleb128 -12
	.byte	0x9f
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
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"ss_family"
.LASF50:
	.string	"s2_data2"
.LASF61:
	.string	"lwip_ntohl"
.LASF43:
	.string	"sa_len"
.LASF27:
	.string	"sa_family_t"
.LASF4:
	.string	"short int"
.LASF25:
	.string	"in6_addr"
.LASF11:
	.string	"sizetype"
.LASF7:
	.string	"__uint32_t"
.LASF39:
	.string	"sin6_flowinfo"
.LASF40:
	.string	"sin6_addr"
.LASF6:
	.string	"__uint16_t"
.LASF14:
	.string	"uint8_t"
.LASF22:
	.string	"u32_addr"
.LASF41:
	.string	"sin6_scope_id"
.LASF31:
	.string	"sin_family"
.LASF58:
	.string	"coap_is_mcast"
.LASF30:
	.string	"sin_len"
.LASF38:
	.string	"sin6_port"
.LASF60:
	.string	"memcmp"
.LASF8:
	.string	"long long int"
.LASF10:
	.string	"long int"
.LASF56:
	.string	"addr"
.LASF5:
	.string	"__uint8_t"
.LASF53:
	.string	"sin6"
.LASF33:
	.string	"sin_addr"
.LASF3:
	.string	"unsigned char"
.LASF37:
	.string	"sin6_family"
.LASF65:
	.string	"__func__"
.LASF54:
	.string	"coap_address_t"
.LASF52:
	.string	"socklen_t"
.LASF2:
	.string	"signed char"
.LASF34:
	.string	"sin_zero"
.LASF9:
	.string	"long long unsigned int"
.LASF35:
	.string	"sockaddr_in6"
.LASF16:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF26:
	.string	"s_addr"
.LASF49:
	.string	"s2_data1"
.LASF51:
	.string	"s2_data3"
.LASF47:
	.string	"s2_len"
.LASF19:
	.string	"u16_t"
.LASF1:
	.string	"short unsigned int"
.LASF13:
	.string	"char"
.LASF23:
	.string	"u8_addr"
.LASF17:
	.string	"_Bool"
.LASF21:
	.string	"in_addr_t"
.LASF46:
	.string	"sockaddr_storage"
.LASF64:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\coap"
.LASF12:
	.string	"long unsigned int"
.LASF66:
	.string	"in6addr_any"
.LASF63:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/coap/libcoap/src/address.c"
.LASF55:
	.string	"size"
.LASF32:
	.string	"sin_port"
.LASF57:
	.string	"coap_address_equals"
.LASF18:
	.string	"u8_t"
.LASF20:
	.string	"u32_t"
.LASF28:
	.string	"in_port_t"
.LASF44:
	.string	"sa_family"
.LASF36:
	.string	"sin6_len"
.LASF24:
	.string	"in_addr"
.LASF45:
	.string	"sa_data"
.LASF59:
	.string	"__assert_func"
.LASF62:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"sockaddr_in"
.LASF42:
	.string	"sockaddr"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
