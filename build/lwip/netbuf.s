	.file	"netbuf.c"
	.text
.Ltext0:
	.section	.text.netbuf_new,"ax",@progbits
	.literal_position
	.literal .LC0, memp_pools
	.align	4
	.global	netbuf_new
	.type	netbuf_new, @function
netbuf_new:
.LFB15:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/api/netbuf.c"
	.loc 1 57 0
	entry	sp, 32
.LCFI0:
	.loc 1 60 0
	l32r	a2, .LC0
	l32i.n	a2, a2, 20
	l16ui	a10, a2, 0
	call8	malloc
.LVL0:
	.loc 1 61 0
	beqz.n	a10, .L4
	.loc 1 62 0
	movi.n	a2, 0
	s32i.n	a2, a10, 0
	.loc 1 63 0
	s32i.n	a2, a10, 4
	.loc 1 64 0
	s32i.n	a2, a10, 8
	s32i.n	a2, a10, 12
	s32i.n	a2, a10, 16
	s32i.n	a2, a10, 20
	addi.n	a2, a10, 8
	beqz.n	a2, .L3
	.loc 1 64 0 discriminator 1
	movi.n	a2, 0
	s8i	a2, a10, 24
.L3:
	.loc 1 65 0
	movi.n	a2, 0
	s16i	a2, a10, 28
	.loc 1 75 0
	mov.n	a2, a10
	retw.n
.L4:
	.loc 1 77 0
	movi.n	a2, 0
	.loc 1 79 0
	retw.n
.LFE15:
	.size	netbuf_new, .-netbuf_new
	.section	.text.netbuf_delete,"ax",@progbits
	.align	4
	.global	netbuf_delete
	.type	netbuf_delete, @function
netbuf_delete:
.LFB16:
	.loc 1 88 0
.LVL1:
	entry	sp, 32
.LCFI1:
	.loc 1 89 0
	beqz.n	a2, .L5
	.loc 1 90 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L7
	.loc 1 91 0
	call8	pbuf_free
.LVL2:
	.loc 1 92 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 0
.L7:
	.loc 1 94 0
	mov.n	a10, a2
	call8	free
.LVL3:
.L5:
	retw.n
.LFE16:
	.size	netbuf_delete, .-netbuf_delete
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"netbuf_alloc: invalid buf"
	.align	4
.LC3:
	.string	"check that first pbuf can hold size"
	.align	4
.LC6:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/api/netbuf.c"
	.section	.text.netbuf_alloc,"ax",@progbits
	.literal_position
	.literal .LC2, .LC1
	.literal .LC4, .LC3
	.literal .LC5, __func__$5983
	.literal .LC7, .LC6
	.align	4
	.global	netbuf_alloc
	.type	netbuf_alloc, @function
netbuf_alloc:
.LFB17:
	.loc 1 108 0
.LVL4:
	entry	sp, 32
.LCFI2:
	extui	a3, a3, 0, 16
	.loc 1 109 0
	bnez.n	a2, .L9
	.loc 1 109 0 discriminator 1
	l32r	a10, .LC2
	call8	puts
.LVL5:
	.loc 1 109 0 discriminator 1
	retw.n
.L9:
	.loc 1 112 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L11
	.loc 1 113 0
	call8	pbuf_free
.LVL6:
.L11:
	.loc 1 115 0
	movi.n	a12, 0
	mov.n	a11, a3
	mov.n	a10, a12
	call8	pbuf_alloc
.LVL7:
	s32i.n	a10, a2, 0
	.loc 1 116 0
	beqz.n	a10, .L13
	.loc 1 119 0
	l16ui	a8, a10, 10
	bgeu	a8, a3, .L12
	.loc 1 119 0 is_stmt 0 discriminator 1
	l32r	a13, .LC4
	l32r	a12, .LC5
	movi	a11, 0x78
	l32r	a10, .LC7
	call8	__assert_func
.LVL8:
.L12:
	.loc 1 121 0 is_stmt 1
	s32i.n	a10, a2, 4
	.loc 1 122 0
	l32i.n	a2, a10, 4
.LVL9:
	retw.n
.LVL10:
.L13:
	.loc 1 117 0
	movi.n	a2, 0
.LVL11:
	.loc 1 123 0
	retw.n
.LFE17:
	.size	netbuf_alloc, .-netbuf_alloc
	.section	.rodata.str1.4
	.align	4
.LC8:
	.string	"netbuf_free: invalid buf"
	.section	.text.netbuf_free,"ax",@progbits
	.literal_position
	.literal .LC9, .LC8
	.align	4
	.global	netbuf_free
	.type	netbuf_free, @function
netbuf_free:
.LFB18:
	.loc 1 132 0
.LVL12:
	entry	sp, 32
.LCFI3:
	.loc 1 133 0
	bnez.n	a2, .L15
	.loc 1 133 0 discriminator 1
	l32r	a10, .LC9
	call8	puts
.LVL13:
	retw.n
.L15:
	.loc 1 134 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L17
	.loc 1 135 0
	call8	pbuf_free
.LVL14:
.L17:
	.loc 1 137 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 0
	retw.n
.LFE18:
	.size	netbuf_free, .-netbuf_free
	.section	.rodata.str1.4
	.align	4
.LC10:
	.string	"netbuf_ref: invalid buf"
	.section	.text.netbuf_ref,"ax",@progbits
	.literal_position
	.literal .LC11, .LC10
	.align	4
	.global	netbuf_ref
	.type	netbuf_ref, @function
netbuf_ref:
.LFB19:
	.loc 1 151 0
.LVL15:
	entry	sp, 32
.LCFI4:
	extui	a4, a4, 0, 16
	.loc 1 152 0
	bnez.n	a2, .L19
	.loc 1 152 0 discriminator 1
	l32r	a10, .LC11
	call8	puts
.LVL16:
	movi	a2, 0xf1
.LVL17:
	retw.n
.LVL18:
.L19:
	.loc 1 153 0
	l32i.n	a10, a2, 0
	beqz.n	a10, .L21
	.loc 1 154 0
	call8	pbuf_free
.LVL19:
.L21:
	.loc 1 156 0
	movi.n	a12, 2
	movi.n	a11, 0
	mov.n	a10, a11
	call8	pbuf_alloc
.LVL20:
	s32i.n	a10, a2, 0
	.loc 1 157 0
	bnez.n	a10, .L22
	.loc 1 158 0
	movi.n	a3, 0
.LVL21:
	s32i.n	a3, a2, 4
	.loc 1 159 0
	movi	a2, 0xff
.LVL22:
	retw.n
.LVL23:
.L22:
	.loc 1 161 0
	s32i.n	a3, a10, 4
	.loc 1 162 0
	l32i.n	a8, a2, 0
	s16i	a4, a8, 8
	s16i	a4, a8, 10
	.loc 1 163 0
	l32i.n	a3, a2, 0
.LVL24:
	s32i.n	a3, a2, 4
	.loc 1 164 0
	movi.n	a2, 0
.LVL25:
	.loc 1 165 0
	retw.n
.LFE19:
	.size	netbuf_ref, .-netbuf_ref
	.section	.rodata.str1.4
	.align	4
.LC12:
	.string	"netbuf_ref: invalid head"
	.align	4
.LC14:
	.string	"netbuf_chain: invalid tail"
	.section	.text.netbuf_chain,"ax",@progbits
	.literal_position
	.literal .LC13, .LC12
	.literal .LC15, .LC14
	.align	4
	.global	netbuf_chain
	.type	netbuf_chain, @function
netbuf_chain:
.LFB20:
	.loc 1 175 0
.LVL26:
	entry	sp, 32
.LCFI5:
	.loc 1 176 0
	bnez.n	a2, .L24
	.loc 1 176 0 discriminator 1
	l32r	a10, .LC13
	call8	puts
.LVL27:
	retw.n
.L24:
	.loc 1 177 0
	bnez.n	a3, .L26
	.loc 1 177 0 discriminator 1
	l32r	a10, .LC15
	call8	puts
.LVL28:
	retw.n
.L26:
	.loc 1 178 0
	l32i.n	a11, a3, 0
	l32i.n	a10, a2, 0
	call8	pbuf_cat
.LVL29:
	.loc 1 179 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a2, 4
	.loc 1 180 0
	mov.n	a10, a3
	call8	free
.LVL30:
	retw.n
.LFE20:
	.size	netbuf_chain, .-netbuf_chain
	.section	.rodata.str1.4
	.align	4
.LC16:
	.string	"netbuf_data: invalid buf"
	.align	4
.LC18:
	.string	"netbuf_data: invalid dataptr"
	.align	4
.LC20:
	.string	"netbuf_data: invalid len"
	.section	.text.netbuf_data,"ax",@progbits
	.literal_position
	.literal .LC17, .LC16
	.literal .LC19, .LC18
	.literal .LC21, .LC20
	.align	4
	.global	netbuf_data
	.type	netbuf_data, @function
netbuf_data:
.LFB21:
	.loc 1 194 0
.LVL31:
	entry	sp, 32
.LCFI6:
	.loc 1 195 0
	bnez.n	a2, .L28
	.loc 1 195 0 discriminator 1
	l32r	a10, .LC17
	call8	puts
.LVL32:
	movi	a2, 0xf1
.LVL33:
	retw.n
.LVL34:
.L28:
	.loc 1 196 0
	bnez.n	a3, .L30
	.loc 1 196 0 discriminator 1
	l32r	a10, .LC19
	call8	puts
.LVL35:
	movi	a2, 0xf1
.LVL36:
	retw.n
.LVL37:
.L30:
	.loc 1 197 0
	bnez.n	a4, .L31
	.loc 1 197 0 discriminator 1
	l32r	a10, .LC21
	call8	puts
.LVL38:
	movi	a2, 0xf1
.LVL39:
	retw.n
.LVL40:
.L31:
	.loc 1 199 0
	l32i.n	a8, a2, 4
	beqz.n	a8, .L32
	.loc 1 202 0
	l32i.n	a8, a8, 4
	s32i.n	a8, a3, 0
	.loc 1 203 0
	l32i.n	a2, a2, 4
.LVL41:
	l16ui	a2, a2, 10
	s16i	a2, a4, 0
	.loc 1 204 0
	movi.n	a2, 0
	retw.n
.LVL42:
.L32:
	.loc 1 200 0
	movi	a2, 0xfe
.LVL43:
	.loc 1 205 0
	retw.n
.LFE21:
	.size	netbuf_data, .-netbuf_data
	.section	.text.netbuf_next,"ax",@progbits
	.literal_position
	.literal .LC22, .LC8
	.align	4
	.global	netbuf_next
	.type	netbuf_next, @function
netbuf_next:
.LFB22:
	.loc 1 219 0
.LVL44:
	entry	sp, 32
.LCFI7:
	.loc 1 220 0
	bnez.n	a2, .L34
	.loc 1 220 0 discriminator 1
	l32r	a10, .LC22
	call8	puts
.LVL45:
	movi	a2, 0xff
.LVL46:
	retw.n
.LVL47:
.L34:
	.loc 1 221 0
	l32i.n	a8, a2, 4
	l32i.n	a8, a8, 0
	beqz.n	a8, .L36
	.loc 1 224 0
	s32i.n	a8, a2, 4
	.loc 1 225 0
	l32i.n	a2, a8, 0
.LVL48:
	bnez.n	a2, .L37
	.loc 1 226 0
	movi.n	a2, 1
	retw.n
.LVL49:
.L36:
	.loc 1 222 0
	movi	a2, 0xff
.LVL50:
	retw.n
.L37:
	.loc 1 228 0
	movi.n	a2, 0
	.loc 1 229 0
	retw.n
.LFE22:
	.size	netbuf_next, .-netbuf_next
	.section	.text.netbuf_first,"ax",@progbits
	.literal_position
	.literal .LC23, .LC8
	.align	4
	.global	netbuf_first
	.type	netbuf_first, @function
netbuf_first:
.LFB23:
	.loc 1 240 0
.LVL51:
	entry	sp, 32
.LCFI8:
	.loc 1 241 0
	bnez.n	a2, .L39
	.loc 1 241 0 discriminator 1
	l32r	a10, .LC23
	call8	puts
.LVL52:
	retw.n
.L39:
	.loc 1 242 0
	l32i.n	a8, a2, 0
	s32i.n	a8, a2, 4
	retw.n
.LFE23:
	.size	netbuf_first, .-netbuf_first
	.section	.rodata.__func__$5983,"a",@progbits
	.align	4
	.type	__func__$5983, @object
	.size	__func__$5983, 13
__func__$5983:
	.string	"netbuf_alloc"
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
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI0-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI1-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI2-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI3-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI4-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI5-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI6-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI7-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI8-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/port/arch/cc.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/err.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/pbuf.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip4_addr.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip6_addr.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/ip_addr.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/netbuf.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/memp.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/lwip/include/lwip/lwip/priv/memp_priv.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 15 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/assert.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x775
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0xc
	.4byte	.LASF94
	.4byte	.LASF95
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
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x11
	.4byte	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x12
	.4byte	0x57
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x16
	.4byte	0x2c
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1a
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x14
	.4byte	0x3a
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x21
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.4byte	0x70
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2e
	.4byte	0xb9
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2f
	.4byte	0xae
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.byte	0x30
	.4byte	0xc4
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x32
	.4byte	0xcf
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.4byte	0xec
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x3f
	.4byte	0x143
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x47
	.4byte	0x168
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x18
	.byte	0x6
	.byte	0x6c
	.4byte	0x1e1
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x6e
	.4byte	0x1e1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x71
	.4byte	0x97
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x7a
	.4byte	0xf7
	.byte	0x8
	.uleb128 0xc
	.string	"len"
	.byte	0x6
	.byte	0x7d
	.4byte	0xf7
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x80
	.4byte	0xe1
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x83
	.4byte	0xe1
	.byte	0xd
	.uleb128 0xc
	.string	"ref"
	.byte	0x6
	.byte	0x8a
	.4byte	0xf7
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x8d
	.4byte	0x1ec
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x8e
	.4byte	0x97
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x168
	.uleb128 0xd
	.4byte	.LASF96
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x8
	.byte	0x6
	.byte	0x97
	.4byte	0x217
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x99
	.4byte	0x1e1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x9c
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0x7
	.byte	0x2e
	.4byte	0x230
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x2f
	.4byte	0x102
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x7
	.byte	0x42
	.4byte	0x217
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x10
	.byte	0x8
	.byte	0x39
	.4byte	0x254
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0x3a
	.4byte	0x254
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x102
	.4byte	0x264
	.uleb128 0xf
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x8
	.byte	0x4b
	.4byte	0x23b
	.uleb128 0x10
	.byte	0x10
	.byte	0x9
	.byte	0x39
	.4byte	0x28e
	.uleb128 0x11
	.string	"ip6"
	.byte	0x9
	.byte	0x3a
	.4byte	0x264
	.uleb128 0x11
	.string	"ip4"
	.byte	0x9
	.byte	0x3b
	.4byte	0x230
	.byte	0
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x14
	.byte	0x9
	.byte	0x38
	.4byte	0x2b3
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x3c
	.4byte	0x26f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x9
	.byte	0x3d
	.4byte	0xe1
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x9
	.byte	0x3e
	.4byte	0x28e
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x20
	.byte	0xa
	.byte	0x36
	.4byte	0x2f9
	.uleb128 0xc
	.string	"p"
	.byte	0xa
	.byte	0x37
	.4byte	0x1e1
	.byte	0
	.uleb128 0xc
	.string	"ptr"
	.byte	0xa
	.byte	0x37
	.4byte	0x1e1
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0xa
	.byte	0x38
	.4byte	0x2b3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0xa
	.byte	0x39
	.4byte	0xf7
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.byte	0xb
	.byte	0x2d
	.4byte	0x378
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xd
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xe
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0xf
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x11
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x12
	.byte	0
	.uleb128 0xa
	.4byte	.LASF72
	.byte	0x2
	.byte	0xc
	.byte	0x7a
	.4byte	0x391
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0xc
	.byte	0x7c
	.4byte	0xf7
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x1
	.byte	0x38
	.4byte	0x3c1
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c1
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x3a
	.4byte	0x3c1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x14
	.4byte	.LVL0
	.4byte	0x72b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2be
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.byte	0x57
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x403
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x57
	.4byte	0x3c1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x736
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0x741
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x1
	.byte	0x6b
	.4byte	0x97
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b1
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0x6b
	.4byte	0x3c1
	.4byte	.LLST0
	.uleb128 0x1a
	.4byte	.LASF73
	.byte	0x1
	.byte	0x6b
	.4byte	0xf7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.4byte	.LASF97
	.4byte	0x4c1
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5983
	.uleb128 0x1c
	.4byte	.LVL5
	.4byte	0x74c
	.4byte	0x45e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0x736
	.uleb128 0x1c
	.4byte	.LVL7
	.4byte	0x757
	.4byte	0x485
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL8
	.4byte	0x762
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	__func__$5983
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xa0
	.4byte	0x4c1
	.uleb128 0xf
	.4byte	0x90
	.byte	0xc
	.byte	0
	.uleb128 0x1d
	.4byte	0x4b1
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x1
	.byte	0x83
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x509
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0x83
	.4byte	0x3c1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1c
	.4byte	.LVL13
	.4byte	0x74c
	.4byte	0x4ff
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x14
	.4byte	.LVL14
	.4byte	0x736
	.byte	0
	.uleb128 0x12
	.4byte	.LASF78
	.byte	0x1
	.byte	0x96
	.4byte	0x10d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x587
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0x96
	.4byte	0x3c1
	.4byte	.LLST1
	.uleb128 0x1e
	.4byte	.LASF79
	.byte	0x1
	.byte	0x96
	.4byte	0xa7
	.4byte	.LLST2
	.uleb128 0x1a
	.4byte	.LASF73
	.byte	0x1
	.byte	0x96
	.4byte	0xf7
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LVL16
	.4byte	0x74c
	.4byte	0x564
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x14
	.4byte	.LVL19
	.4byte	0x736
	.uleb128 0x17
	.4byte	.LVL20
	.4byte	0x757
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.byte	0xae
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fe
	.uleb128 0x1a
	.4byte	.LASF81
	.byte	0x1
	.byte	0xae
	.4byte	0x3c1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1a
	.4byte	.LASF82
	.byte	0x1
	.byte	0xae
	.4byte	0x3c1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LVL27
	.4byte	0x74c
	.4byte	0x5cd
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL28
	.4byte	0x74c
	.4byte	0x5e4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.uleb128 0x14
	.4byte	.LVL29
	.4byte	0x76d
	.uleb128 0x17
	.4byte	.LVL30
	.4byte	0x741
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x1
	.byte	0xc1
	.4byte	0x10d
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x682
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0xc1
	.4byte	0x3c1
	.4byte	.LLST3
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x1
	.byte	0xc1
	.4byte	0x682
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0xc1
	.4byte	0x688
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LVL32
	.4byte	0x74c
	.4byte	0x657
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL35
	.4byte	0x74c
	.4byte	0x66e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.uleb128 0x17
	.4byte	.LVL38
	.4byte	0x74c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf7
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x1
	.byte	0xda
	.4byte	0xec
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ca
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0xda
	.4byte	0x3c1
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LVL45
	.4byte	0x74c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0xef
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x700
	.uleb128 0x16
	.string	"buf"
	.byte	0x1
	.byte	0xef
	.4byte	0x3c1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LVL52
	.4byte	0x74c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x710
	.4byte	0x710
	.uleb128 0xf
	.4byte	0x90
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x716
	.uleb128 0x1d
	.4byte	0x378
	.uleb128 0x1f
	.4byte	.LASF98
	.byte	0xb
	.byte	0x41
	.4byte	0x726
	.uleb128 0x1d
	.4byte	0x700
	.uleb128 0x20
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xd
	.byte	0x65
	.uleb128 0x20
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x6
	.byte	0xcb
	.uleb128 0x20
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0xd
	.byte	0x5a
	.uleb128 0x20
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xe
	.byte	0xc7
	.uleb128 0x20
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x6
	.byte	0xc1
	.uleb128 0x20
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xf
	.byte	0x29
	.uleb128 0x20
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x6
	.byte	0xcd
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.4byte	.LVL4
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
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL15
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
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL31
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
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL37
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
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL44
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
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"uint32_t"
.LASF87:
	.string	"pbuf_free"
.LASF62:
	.string	"MEMP_ARP_QUEUE"
.LASF49:
	.string	"u_addr"
.LASF83:
	.string	"netbuf_data"
.LASF15:
	.string	"int8_t"
.LASF75:
	.string	"netbuf_alloc"
.LASF37:
	.string	"type"
.LASF66:
	.string	"MEMP_ND6_QUEUE"
.LASF57:
	.string	"MEMP_TCP_SEG"
.LASF12:
	.string	"sizetype"
.LASF96:
	.string	"netif"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"__uint32_t"
.LASF61:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF7:
	.string	"__uint16_t"
.LASF46:
	.string	"ip6_addr"
.LASF6:
	.string	"short int"
.LASF98:
	.string	"memp_pools"
.LASF64:
	.string	"MEMP_SYS_TIMEOUT"
.LASF81:
	.string	"head"
.LASF16:
	.string	"uint8_t"
.LASF56:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF94:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/lwip/api/netbuf.c"
.LASF32:
	.string	"PBUF_REF"
.LASF95:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\lwip"
.LASF65:
	.string	"MEMP_NETDB"
.LASF42:
	.string	"pbuf_rom"
.LASF21:
	.string	"s8_t"
.LASF92:
	.string	"pbuf_cat"
.LASF84:
	.string	"netbuf_next"
.LASF78:
	.string	"netbuf_ref"
.LASF51:
	.string	"netbuf"
.LASF86:
	.string	"malloc"
.LASF41:
	.string	"pbuf"
.LASF11:
	.string	"long int"
.LASF50:
	.string	"ip_addr_t"
.LASF44:
	.string	"addr"
.LASF67:
	.string	"MEMP_IP6_REASSDATA"
.LASF4:
	.string	"__uint8_t"
.LASF5:
	.string	"unsigned char"
.LASF82:
	.string	"tail"
.LASF47:
	.string	"ip6_addr_t"
.LASF97:
	.string	"__func__"
.LASF71:
	.string	"MEMP_MAX"
.LASF2:
	.string	"signed char"
.LASF38:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF40:
	.string	"l2_buf"
.LASF0:
	.string	"unsigned int"
.LASF48:
	.string	"_ip_addr"
.LASF17:
	.string	"uint16_t"
.LASF29:
	.string	"PBUF_RAW"
.LASF89:
	.string	"puts"
.LASF63:
	.string	"MEMP_IGMP_GROUP"
.LASF22:
	.string	"u16_t"
.LASF33:
	.string	"PBUF_POOL"
.LASF3:
	.string	"__int8_t"
.LASF77:
	.string	"netbuf_free"
.LASF24:
	.string	"err_t"
.LASF14:
	.string	"char"
.LASF28:
	.string	"PBUF_RAW_TX"
.LASF60:
	.string	"MEMP_TCPIP_MSG_API"
.LASF68:
	.string	"MEMP_MLD6_GROUP"
.LASF90:
	.string	"pbuf_alloc"
.LASF19:
	.string	"_Bool"
.LASF43:
	.string	"ip4_addr"
.LASF69:
	.string	"MEMP_PBUF"
.LASF80:
	.string	"netbuf_chain"
.LASF39:
	.string	"l2_owner"
.LASF25:
	.string	"PBUF_TRANSPORT"
.LASF1:
	.string	"short unsigned int"
.LASF26:
	.string	"PBUF_IP"
.LASF52:
	.string	"port"
.LASF72:
	.string	"memp_desc"
.LASF85:
	.string	"netbuf_first"
.LASF13:
	.string	"long unsigned int"
.LASF53:
	.string	"MEMP_RAW_PCB"
.LASF45:
	.string	"ip4_addr_t"
.LASF73:
	.string	"size"
.LASF76:
	.string	"netbuf_delete"
.LASF20:
	.string	"u8_t"
.LASF23:
	.string	"u32_t"
.LASF30:
	.string	"PBUF_RAM"
.LASF70:
	.string	"MEMP_PBUF_POOL"
.LASF74:
	.string	"netbuf_new"
.LASF59:
	.string	"MEMP_NETCONN"
.LASF79:
	.string	"dataptr"
.LASF36:
	.string	"tot_len"
.LASF55:
	.string	"MEMP_TCP_PCB"
.LASF91:
	.string	"__assert_func"
.LASF54:
	.string	"MEMP_UDP_PCB"
.LASF93:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF88:
	.string	"free"
.LASF31:
	.string	"PBUF_ROM"
.LASF35:
	.string	"payload"
.LASF34:
	.string	"next"
.LASF58:
	.string	"MEMP_NETBUF"
.LASF27:
	.string	"PBUF_LINK"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
