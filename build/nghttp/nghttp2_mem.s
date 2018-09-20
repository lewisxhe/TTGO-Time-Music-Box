	.file	"nghttp2_mem.c"
	.text
.Ltext0:
	.section	.text.default_realloc,"ax",@progbits
	.align	4
	.type	default_realloc, @function
default_realloc:
.LFB3:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_mem.c"
	.loc 1 45 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 48 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	realloc
.LVL1:
	.loc 1 49 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE3:
	.size	default_realloc, .-default_realloc
	.section	.text.default_calloc,"ax",@progbits
	.align	4
	.type	default_calloc, @function
default_calloc:
.LFB2:
	.loc 1 39 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 42 0
	mov.n	a11, a3
	mov.n	a10, a2
	call8	calloc
.LVL4:
	.loc 1 43 0
	mov.n	a2, a10
.LVL5:
	retw.n
.LFE2:
	.size	default_calloc, .-default_calloc
	.section	.text.default_free,"ax",@progbits
	.align	4
	.type	default_free, @function
default_free:
.LFB1:
	.loc 1 33 0
.LVL6:
	entry	sp, 32
.LCFI2:
	.loc 1 36 0
	mov.n	a10, a2
	call8	free
.LVL7:
	retw.n
.LFE1:
	.size	default_free, .-default_free
	.section	.text.default_malloc,"ax",@progbits
	.align	4
	.type	default_malloc, @function
default_malloc:
.LFB0:
	.loc 1 27 0
.LVL8:
	entry	sp, 32
.LCFI3:
	.loc 1 30 0
	mov.n	a10, a2
	call8	malloc
.LVL9:
	.loc 1 31 0
	mov.n	a2, a10
.LVL10:
	retw.n
.LFE0:
	.size	default_malloc, .-default_malloc
	.section	.text.nghttp2_mem_default,"ax",@progbits
	.literal_position
	.literal .LC0, mem_default
	.align	4
	.global	nghttp2_mem_default
	.type	nghttp2_mem_default, @function
nghttp2_mem_default:
.LFB4:
	.loc 1 54 0
	entry	sp, 32
.LCFI4:
	.loc 1 54 0
	l32r	a2, .LC0
	retw.n
.LFE4:
	.size	nghttp2_mem_default, .-nghttp2_mem_default
	.section	.text.nghttp2_mem_malloc,"ax",@progbits
	.align	4
	.global	nghttp2_mem_malloc
	.type	nghttp2_mem_malloc, @function
nghttp2_mem_malloc:
.LFB5:
	.loc 1 56 0
.LVL11:
	entry	sp, 32
.LCFI5:
	.loc 1 57 0
	l32i.n	a8, a2, 4
	l32i.n	a11, a2, 0
	mov.n	a10, a3
	callx8	a8
.LVL12:
	.loc 1 58 0
	mov.n	a2, a10
.LVL13:
	retw.n
.LFE5:
	.size	nghttp2_mem_malloc, .-nghttp2_mem_malloc
	.section	.text.nghttp2_mem_free,"ax",@progbits
	.align	4
	.global	nghttp2_mem_free
	.type	nghttp2_mem_free, @function
nghttp2_mem_free:
.LFB6:
	.loc 1 60 0
.LVL14:
	entry	sp, 32
.LCFI6:
	.loc 1 61 0
	l32i.n	a8, a2, 8
	l32i.n	a11, a2, 0
	mov.n	a10, a3
	callx8	a8
.LVL15:
	retw.n
.LFE6:
	.size	nghttp2_mem_free, .-nghttp2_mem_free
	.section	.text.nghttp2_mem_free2,"ax",@progbits
	.align	4
	.global	nghttp2_mem_free2
	.type	nghttp2_mem_free2, @function
nghttp2_mem_free2:
.LFB7:
	.loc 1 64 0
.LVL16:
	entry	sp, 32
.LCFI7:
	.loc 1 65 0
	mov.n	a11, a4
	mov.n	a10, a3
	callx8	a2
.LVL17:
	retw.n
.LFE7:
	.size	nghttp2_mem_free2, .-nghttp2_mem_free2
	.section	.text.nghttp2_mem_calloc,"ax",@progbits
	.align	4
	.global	nghttp2_mem_calloc
	.type	nghttp2_mem_calloc, @function
nghttp2_mem_calloc:
.LFB8:
	.loc 1 68 0
.LVL18:
	entry	sp, 32
.LCFI8:
	.loc 1 69 0
	l32i.n	a8, a2, 12
	l32i.n	a12, a2, 0
	mov.n	a11, a4
	mov.n	a10, a3
	callx8	a8
.LVL19:
	.loc 1 70 0
	mov.n	a2, a10
.LVL20:
	retw.n
.LFE8:
	.size	nghttp2_mem_calloc, .-nghttp2_mem_calloc
	.section	.text.nghttp2_mem_realloc,"ax",@progbits
	.align	4
	.global	nghttp2_mem_realloc
	.type	nghttp2_mem_realloc, @function
nghttp2_mem_realloc:
.LFB9:
	.loc 1 72 0
.LVL21:
	entry	sp, 32
.LCFI9:
	.loc 1 73 0
	l32i.n	a8, a2, 16
	l32i.n	a12, a2, 0
	mov.n	a11, a4
	mov.n	a10, a3
	callx8	a8
.LVL22:
	.loc 1 74 0
	mov.n	a2, a10
.LVL23:
	retw.n
.LFE9:
	.size	nghttp2_mem_realloc, .-nghttp2_mem_realloc
	.section	.data.mem_default,"aw",@progbits
	.align	4
	.type	mem_default, @object
	.size	mem_default, 20
mem_default:
	.word	0
	.word	default_malloc
	.word	default_free
	.word	default_calloc
	.word	default_realloc
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI1-.LFB2
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI3-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI4-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI7-.LFB7
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI8-.LFB8
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI9-.LFB9
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/includes/nghttp2/nghttp2.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x482
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF11
	.byte	0x2
	.byte	0xd8
	.4byte	0x48
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x8df
	.4byte	0x92
	.uleb128 0x7
	.byte	0x4
	.4byte	0x98
	.uleb128 0x8
	.4byte	0x68
	.4byte	0xac
	.uleb128 0x9
	.4byte	0x5d
	.uleb128 0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x8e7
	.4byte	0xb8
	.uleb128 0x7
	.byte	0x4
	.4byte	0xbe
	.uleb128 0xa
	.4byte	0xce
	.uleb128 0x9
	.4byte	0x68
	.uleb128 0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x8ef
	.4byte	0xda
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe0
	.uleb128 0x8
	.4byte	0x68
	.4byte	0xf9
	.uleb128 0x9
	.4byte	0x5d
	.uleb128 0x9
	.4byte	0x5d
	.uleb128 0x9
	.4byte	0x68
	.byte	0
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x8f7
	.4byte	0x105
	.uleb128 0x7
	.byte	0x4
	.4byte	0x10b
	.uleb128 0x8
	.4byte	0x68
	.4byte	0x124
	.uleb128 0x9
	.4byte	0x68
	.uleb128 0x9
	.4byte	0x5d
	.uleb128 0x9
	.4byte	0x68
	.byte	0
	.uleb128 0xb
	.byte	0x14
	.byte	0x3
	.2byte	0x920
	.4byte	0x16f
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x925
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x929
	.4byte	0x86
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x92d
	.4byte	0xac
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x931
	.4byte	0xce
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x935
	.4byte	0xf9
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x936
	.4byte	0x124
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2d
	.4byte	0x68
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d4
	.uleb128 0xe
	.string	"ptr"
	.byte	0x1
	.byte	0x2d
	.4byte	0x68
	.4byte	.LLST0
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2d
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2d
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LVL1
	.4byte	0x459
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x27
	.4byte	0x68
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22d
	.uleb128 0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x27
	.4byte	0x5d
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x27
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x10
	.4byte	.LVL4
	.4byte	0x464
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26d
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0x21
	.4byte	0x68
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x21
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LVL7
	.4byte	0x46f
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1b
	.4byte	0x68
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b3
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1b
	.4byte	0x5d
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.4byte	.LVL9
	.4byte	0x47a
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF37
	.byte	0x1
	.byte	0x36
	.4byte	0x2c8
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x16f
	.uleb128 0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x38
	.4byte	0x68
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x310
	.uleb128 0xe
	.string	"mem"
	.byte	0x1
	.byte	0x38
	.4byte	0x2c8
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x38
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL12
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34c
	.uleb128 0x14
	.string	"mem"
	.byte	0x1
	.byte	0x3c
	.4byte	0x2c8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0x3c
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LVL15
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0x40
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39e
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x40
	.4byte	0xac
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0x40
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x40
	.4byte	0x68
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x19
	.4byte	.LVL17
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0x44
	.4byte	0x68
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3f3
	.uleb128 0xe
	.string	"mem"
	.byte	0x1
	.byte	0x44
	.4byte	0x2c8
	.4byte	.LLST4
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x44
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x44
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LVL19
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x48
	.4byte	0x68
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x448
	.uleb128 0xe
	.string	"mem"
	.byte	0x1
	.byte	0x48
	.4byte	0x2c8
	.4byte	.LLST5
	.uleb128 0x14
	.string	"ptr"
	.byte	0x1
	.byte	0x48
	.4byte	0x68
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x48
	.4byte	0x5d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x17
	.4byte	.LVL22
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0x33
	.4byte	0x16f
	.uleb128 0x5
	.byte	0x3
	.4byte	mem_default
	.uleb128 0x1b
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x4
	.byte	0x8a
	.uleb128 0x1b
	.4byte	.LASF19
	.4byte	.LASF19
	.byte	0x4
	.byte	0x57
	.uleb128 0x1b
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x4
	.byte	0x5a
	.uleb128 0x1b
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x4
	.byte	0x65
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.4byte	.LFE3
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
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB0
	.4byte	.LFE0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"default_calloc"
.LASF11:
	.string	"size_t"
.LASF34:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/nghttp/nghttp2/lib/nghttp2_mem.c"
.LASF27:
	.string	"nghttp2_mem_free"
.LASF12:
	.string	"nghttp2_malloc"
.LASF13:
	.string	"nghttp2_free"
.LASF25:
	.string	"nmemb"
.LASF26:
	.string	"default_malloc"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"size"
.LASF36:
	.string	"default_free"
.LASF9:
	.string	"long unsigned int"
.LASF21:
	.string	"nghttp2_mem"
.LASF23:
	.string	"default_realloc"
.LASF20:
	.string	"realloc"
.LASF2:
	.string	"short int"
.LASF38:
	.string	"mem_default"
.LASF37:
	.string	"nghttp2_mem_default"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"unsigned int"
.LASF15:
	.string	"nghttp2_realloc"
.LASF6:
	.string	"long long unsigned int"
.LASF33:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF18:
	.string	"free"
.LASF5:
	.string	"long long int"
.LASF31:
	.string	"nghttp2_mem_calloc"
.LASF10:
	.string	"char"
.LASF8:
	.string	"sizetype"
.LASF30:
	.string	"nghttp2_mem_malloc"
.LASF29:
	.string	"free_func"
.LASF19:
	.string	"calloc"
.LASF35:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\nghttp"
.LASF7:
	.string	"long int"
.LASF16:
	.string	"mem_user_data"
.LASF0:
	.string	"signed char"
.LASF32:
	.string	"nghttp2_mem_realloc"
.LASF28:
	.string	"nghttp2_mem_free2"
.LASF17:
	.string	"malloc"
.LASF14:
	.string	"nghttp2_calloc"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
