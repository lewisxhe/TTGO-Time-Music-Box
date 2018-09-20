	.file	"syscalls.c"
	.text
.Ltext0:
	.section	.iram1,"ax",@progbits
	.align	4
	.global	_malloc_r
	.type	_malloc_r, @function
_malloc_r:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/syscalls.c"
	.loc 1 36 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 37 0
	mov.n	a10, a3
	call8	heap_caps_malloc_default
.LVL1:
	.loc 1 38 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE14:
	.size	_malloc_r, .-_malloc_r
	.align	4
	.global	_free_r
	.type	_free_r, @function
_free_r:
.LFB15:
	.loc 1 41 0
.LVL3:
	entry	sp, 32
.LCFI1:
	.loc 1 42 0
	mov.n	a10, a3
	call8	heap_caps_free
.LVL4:
	retw.n
.LFE15:
	.size	_free_r, .-_free_r
	.align	4
	.global	_realloc_r
	.type	_realloc_r, @function
_realloc_r:
.LFB16:
	.loc 1 46 0
.LVL5:
	entry	sp, 32
.LCFI2:
	.loc 1 47 0
	mov.n	a11, a4
	mov.n	a10, a3
	call8	heap_caps_realloc_default
.LVL6:
	.loc 1 48 0
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE16:
	.size	_realloc_r, .-_realloc_r
	.align	4
	.global	_calloc_r
	.type	_calloc_r, @function
_calloc_r:
.LFB17:
	.loc 1 51 0
.LVL8:
	entry	sp, 32
.LCFI3:
	.loc 1 52 0
	mull	a3, a3, a4
.LVL9:
	mov.n	a10, a3
	call8	heap_caps_malloc_default
.LVL10:
	mov.n	a2, a10
.LVL11:
	.loc 1 53 0
	beqz.n	a10, .L5
	.loc 1 54 0
	mov.n	a12, a3
	movi.n	a11, 0
	call8	memset
.LVL12:
.L5:
	.loc 1 57 0
	retw.n
.LFE17:
	.size	_calloc_r, .-_calloc_r
	.section	.text._system_r,"ax",@progbits
	.align	4
	.global	_system_r
	.type	_system_r, @function
_system_r:
.LFB18:
	.loc 1 60 0
.LVL13:
	entry	sp, 32
.LCFI4:
	.loc 1 61 0
	movi.n	a8, 0x58
	s32i.n	a8, a2, 0
	.loc 1 63 0
	movi.n	a2, -1
.LVL14:
	retw.n
.LFE18:
	.size	_system_r, .-_system_r
	.section	.text._raise_r,"ax",@progbits
	.align	4
	.global	_raise_r
	.type	_raise_r, @function
_raise_r:
.LFB19:
	.loc 1 66 0
.LVL15:
	entry	sp, 32
.LCFI5:
	.loc 1 67 0
	call8	abort
.LVL16:
.LFE19:
	.size	_raise_r, .-_raise_r
	.section	.text._sbrk_r,"ax",@progbits
	.align	4
	.global	_sbrk_r
	.type	_sbrk_r, @function
_sbrk_r:
.LFB20:
	.loc 1 71 0
.LVL17:
	entry	sp, 32
.LCFI6:
	.loc 1 72 0
	call8	abort
.LVL18:
.LFE20:
	.size	_sbrk_r, .-_sbrk_r
	.section	.text._getpid_r,"ax",@progbits
	.align	4
	.global	_getpid_r
	.type	_getpid_r, @function
_getpid_r:
.LFB21:
	.loc 1 76 0
.LVL19:
	entry	sp, 32
.LCFI7:
	.loc 1 77 0
	movi.n	a8, 0x58
	s32i.n	a8, a2, 0
	.loc 1 79 0
	movi.n	a2, -1
.LVL20:
	retw.n
.LFE21:
	.size	_getpid_r, .-_getpid_r
	.section	.text._kill_r,"ax",@progbits
	.align	4
	.global	_kill_r
	.type	_kill_r, @function
_kill_r:
.LFB22:
	.loc 1 82 0
.LVL21:
	entry	sp, 32
.LCFI8:
	.loc 1 83 0
	movi.n	a8, 0x58
	s32i.n	a8, a2, 0
	.loc 1 85 0
	movi.n	a2, -1
.LVL22:
	retw.n
.LFE22:
	.size	_kill_r, .-_kill_r
	.section	.text._exit,"ax",@progbits
	.align	4
	.global	_exit
	.type	_exit, @function
_exit:
.LFB23:
	.loc 1 88 0
.LVL23:
	entry	sp, 32
.LCFI9:
	.loc 1 89 0
	call8	abort
.LVL24:
.LFE23:
	.size	_exit, .-_exit
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI0-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI1-.LFB15
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI3-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI4-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI5-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI6-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI7-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI8-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI9-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/heap/include/esp_heap_caps.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xab5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0xc
	.4byte	.LASF135
	.4byte	.LASF136
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x95
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0xd8
	.4byte	0x42
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0xb
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0xc
	.4byte	0x73
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x10
	.4byte	0x94
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x27
	.4byte	0x94
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x165
	.4byte	0x42
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x4a
	.4byte	0xd1
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x4c
	.4byte	0xa6
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4d
	.4byte	0xd1
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0xe1
	.uleb128 0x9
	.4byte	0xe1
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0x47
	.4byte	0x109
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x49
	.4byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4e
	.4byte	0xb2
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x4f
	.4byte	0xe8
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x53
	.4byte	0x7e
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0x16
	.4byte	0x12c
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x18
	.byte	0x5
	.byte	0x2d
	.4byte	0x186
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.4byte	0x186
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x5
	.byte	0x30
	.4byte	0x30
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x30
	.4byte	0x30
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x30
	.4byte	0x30
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x30
	.4byte	0x30
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x5
	.byte	0x31
	.4byte	0x18c
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x133
	.uleb128 0x8
	.4byte	0x121
	.4byte	0x19c
	.uleb128 0x9
	.4byte	0xe1
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x24
	.byte	0x5
	.byte	0x35
	.4byte	0x215
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x37
	.4byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x38
	.4byte	0x30
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x39
	.4byte	0x30
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3a
	.4byte	0x30
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x3b
	.4byte	0x30
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3c
	.4byte	0x30
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3d
	.4byte	0x30
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x3e
	.4byte	0x30
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3f
	.4byte	0x30
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x5
	.byte	0x48
	.4byte	0x255
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x49
	.4byte	0x255
	.byte	0
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x4a
	.4byte	0x255
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x5
	.byte	0x4c
	.4byte	0x121
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0x4f
	.4byte	0x121
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x11f
	.4byte	0x265
	.uleb128 0x9
	.4byte	0xe1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x8c
	.byte	0x5
	.byte	0x53
	.4byte	0x2a2
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x54
	.4byte	0x2a2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x55
	.4byte	0x30
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x56
	.4byte	0x2a8
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x57
	.4byte	0x2bf
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x265
	.uleb128 0x8
	.4byte	0x2b8
	.4byte	0x2b8
	.uleb128 0x9
	.4byte	0xe1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2be
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x215
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x8
	.byte	0x5
	.byte	0x73
	.4byte	0x2ea
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x74
	.4byte	0x2ea
	.byte	0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0x75
	.4byte	0x30
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x57
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0xf0
	.byte	0x5
	.2byte	0x172
	.4byte	0x436
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x176
	.4byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x17b
	.4byte	0x66b
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x17b
	.4byte	0x66b
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x17b
	.4byte	0x66b
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x17d
	.4byte	0x30
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17f
	.4byte	0x584
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x181
	.4byte	0x30
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x183
	.4byte	0x30
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x184
	.4byte	0x5b5
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x5
	.2byte	0x186
	.4byte	0x7b8
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x188
	.4byte	0x7c9
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x18a
	.4byte	0x30
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x18d
	.4byte	0x30
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x18e
	.4byte	0x584
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x190
	.4byte	0x7cf
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x191
	.4byte	0x7d5
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x192
	.4byte	0x584
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x195
	.4byte	0x7e6
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x199
	.4byte	0x2a2
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x19a
	.4byte	0x265
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x19d
	.4byte	0x630
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x19e
	.4byte	0x66b
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x19f
	.4byte	0x7f2
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x1a0
	.4byte	0x584
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2f0
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x68
	.byte	0x5
	.byte	0xb3
	.4byte	0x566
	.uleb128 0xe
	.string	"_p"
	.byte	0x5
	.byte	0xb4
	.4byte	0x2ea
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x5
	.byte	0xb5
	.4byte	0x30
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x5
	.byte	0xb6
	.4byte	0x30
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x5
	.byte	0xb7
	.4byte	0x5e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x5
	.byte	0xb8
	.4byte	0x5e
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xb9
	.4byte	0x2c5
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x5
	.byte	0xba
	.4byte	0x30
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x5
	.byte	0xbd
	.4byte	0x436
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x5
	.byte	0xc1
	.4byte	0x11f
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x5
	.byte	0xc3
	.4byte	0x591
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x5
	.byte	0xc5
	.4byte	0x5c0
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x5
	.byte	0xc8
	.4byte	0x5e4
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x5
	.byte	0xc9
	.4byte	0x5fe
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xcc
	.4byte	0x2c5
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x5
	.byte	0xcd
	.4byte	0x2ea
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xce
	.4byte	0x30
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x5
	.byte	0xd1
	.4byte	0x604
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x5
	.byte	0xd2
	.4byte	0x614
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xd5
	.4byte	0x2c5
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x5
	.byte	0xd8
	.4byte	0x30
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x5
	.byte	0xd9
	.4byte	0x89
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x5
	.byte	0xe0
	.4byte	0x114
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x5
	.byte	0xe2
	.4byte	0x109
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x5
	.byte	0xe3
	.4byte	0x30
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x30
	.4byte	0x584
	.uleb128 0x17
	.4byte	0x436
	.uleb128 0x17
	.4byte	0x11f
	.uleb128 0x17
	.4byte	0x584
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x58a
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF91
	.uleb128 0xf
	.byte	0x4
	.4byte	0x566
	.uleb128 0x16
	.4byte	0x30
	.4byte	0x5b5
	.uleb128 0x17
	.4byte	0x436
	.uleb128 0x17
	.4byte	0x11f
	.uleb128 0x17
	.4byte	0x5b5
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5bb
	.uleb128 0x18
	.4byte	0x58a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x597
	.uleb128 0x16
	.4byte	0x9b
	.4byte	0x5e4
	.uleb128 0x17
	.4byte	0x436
	.uleb128 0x17
	.4byte	0x11f
	.uleb128 0x17
	.4byte	0x9b
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5c6
	.uleb128 0x16
	.4byte	0x30
	.4byte	0x5fe
	.uleb128 0x17
	.4byte	0x436
	.uleb128 0x17
	.4byte	0x11f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ea
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x614
	.uleb128 0x9
	.4byte	0xe1
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x624
	.uleb128 0x9
	.4byte	0xe1
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x11d
	.4byte	0x43c
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0xc
	.byte	0x5
	.2byte	0x121
	.4byte	0x665
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x123
	.4byte	0x665
	.byte	0
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x124
	.4byte	0x30
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x125
	.4byte	0x66b
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x630
	.uleb128 0xf
	.byte	0x4
	.4byte	0x624
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x18
	.byte	0x5
	.2byte	0x13d
	.4byte	0x6b3
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x13e
	.4byte	0x6b3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x13f
	.4byte	0x6b3
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x140
	.4byte	0x49
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x143
	.4byte	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x49
	.4byte	0x6c3
	.uleb128 0x9
	.4byte	0xe1
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x10
	.byte	0x5
	.2byte	0x156
	.4byte	0x705
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x159
	.4byte	0x186
	.byte	0
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x15a
	.4byte	0x30
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x15b
	.4byte	0x186
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x15c
	.4byte	0x705
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x186
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x50
	.byte	0x5
	.2byte	0x160
	.4byte	0x7a8
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x163
	.4byte	0x584
	.byte	0
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x164
	.4byte	0x109
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x165
	.4byte	0x109
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x166
	.4byte	0x109
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x167
	.4byte	0x7a8
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x168
	.4byte	0x30
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x169
	.4byte	0x109
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x16a
	.4byte	0x109
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x16b
	.4byte	0x109
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x16c
	.4byte	0x109
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x16d
	.4byte	0x109
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x58a
	.4byte	0x7b8
	.uleb128 0x9
	.4byte	0xe1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6c3
	.uleb128 0x19
	.4byte	0x7c9
	.uleb128 0x17
	.4byte	0x436
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7be
	.uleb128 0xf
	.byte	0x4
	.4byte	0x671
	.uleb128 0xf
	.byte	0x4
	.4byte	0x19c
	.uleb128 0x19
	.4byte	0x7e6
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7ec
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7db
	.uleb128 0xf
	.byte	0x4
	.4byte	0x70b
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF118
	.uleb128 0x1a
	.4byte	.LASF120
	.byte	0x1
	.byte	0x23
	.4byte	0x11f
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x843
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.byte	0x23
	.4byte	0x436
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0x23
	.4byte	0x37
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LVL1
	.4byte	0xa83
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x1
	.byte	0x28
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x881
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.byte	0x28
	.4byte	0x436
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.string	"ptr"
	.byte	0x1
	.byte	0x28
	.4byte	0x11f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1d
	.4byte	.LVL4
	.4byte	0xa8e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0x1
	.byte	0x2d
	.4byte	0x11f
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d8
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.byte	0x2d
	.4byte	0x436
	.4byte	.LLST1
	.uleb128 0x20
	.string	"ptr"
	.byte	0x1
	.byte	0x2d
	.4byte	0x11f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0x2d
	.4byte	0x37
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.4byte	.LVL6
	.4byte	0xa99
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0x1
	.byte	0x32
	.4byte	0x11f
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x957
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.byte	0x32
	.4byte	0x436
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.byte	0x32
	.4byte	0x37
	.4byte	.LLST3
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0x32
	.4byte	0x37
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x22
	.4byte	.LASF138
	.byte	0x1
	.byte	0x34
	.4byte	0x11f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x23
	.4byte	.LVL10
	.4byte	0xa83
	.4byte	0x93b
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL12
	.4byte	0xaa4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0x1
	.byte	0x3b
	.4byte	0x30
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98b
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.byte	0x3b
	.4byte	0x436
	.4byte	.LLST4
	.uleb128 0x20
	.string	"str"
	.byte	0x1
	.byte	0x3b
	.4byte	0x5b5
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x24
	.4byte	.LASF125
	.byte	0x1
	.byte	0x41
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b5
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.byte	0x41
	.4byte	0x436
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL16
	.4byte	0xaad
	.byte	0
	.uleb128 0x26
	.4byte	.LASF139
	.byte	0x1
	.byte	0x46
	.4byte	0x11f
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ef
	.uleb128 0x20
	.string	"r"
	.byte	0x1
	.byte	0x46
	.4byte	0x436
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.string	"sz"
	.byte	0x1
	.byte	0x46
	.4byte	0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x25
	.4byte	.LVL18
	.4byte	0xaad
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF126
	.byte	0x1
	.byte	0x4b
	.4byte	0x30
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa16
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.byte	0x4b
	.4byte	0x436
	.4byte	.LLST5
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x1
	.byte	0x51
	.4byte	0x30
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa57
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.byte	0x51
	.4byte	0x436
	.4byte	.LLST6
	.uleb128 0x20
	.string	"pid"
	.byte	0x1
	.byte	0x51
	.4byte	0x30
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x20
	.string	"sig"
	.byte	0x1
	.byte	0x51
	.4byte	0x30
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0x57
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa83
	.uleb128 0x1c
	.4byte	.LASF129
	.byte	0x1
	.byte	0x57
	.4byte	0x30
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x25
	.4byte	.LVL24
	.4byte	0xaad
	.byte	0
	.uleb128 0x27
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x1
	.byte	0x1f
	.uleb128 0x27
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0x6
	.byte	0x43
	.uleb128 0x27
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0x1
	.byte	0x20
	.uleb128 0x28
	.4byte	.LASF140
	.4byte	.LASF140
	.uleb128 0x27
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0x7
	.byte	0x47
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
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
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE22
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF134:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF9:
	.string	"_lock_t"
.LASF39:
	.string	"_on_exit_args"
.LASF135:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/newlib/syscalls.c"
.LASF109:
	.string	"_wctomb_state"
.LASF65:
	.string	"_r48"
.LASF73:
	.string	"_signal_buf"
.LASF2:
	.string	"unsigned int"
.LASF77:
	.string	"_lbfsize"
.LASF75:
	.string	"_flags"
.LASF52:
	.string	"_errno"
.LASF10:
	.string	"_LOCK_RECURSIVE_T"
.LASF80:
	.string	"_read"
.LASF137:
	.string	"_free_r"
.LASF113:
	.string	"_mbrlen_state"
.LASF54:
	.string	"_stdout"
.LASF13:
	.string	"_fpos_t"
.LASF46:
	.string	"_fns"
.LASF79:
	.string	"_cookie"
.LASF28:
	.string	"_Bigint"
.LASF127:
	.string	"_kill_r"
.LASF36:
	.string	"__tm_wday"
.LASF102:
	.string	"_result"
.LASF32:
	.string	"__tm_hour"
.LASF18:
	.string	"__count"
.LASF31:
	.string	"__tm_min"
.LASF123:
	.string	"count"
.LASF71:
	.string	"__sf"
.LASF96:
	.string	"_rand48"
.LASF138:
	.string	"result"
.LASF103:
	.string	"_result_k"
.LASF8:
	.string	"long long unsigned int"
.LASF67:
	.string	"_asctime_buf"
.LASF74:
	.string	"__sFILE"
.LASF27:
	.string	"_wds"
.LASF92:
	.string	"__FILE"
.LASF87:
	.string	"_offset"
.LASF136:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\newlib"
.LASF57:
	.string	"_emergency"
.LASF133:
	.string	"abort"
.LASF1:
	.string	"size_t"
.LASF30:
	.string	"__tm_sec"
.LASF37:
	.string	"__tm_yday"
.LASF56:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF24:
	.string	"_next"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF19:
	.string	"__value"
.LASF104:
	.string	"_p5s"
.LASF120:
	.string	"_malloc_r"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF108:
	.string	"_mblen_state"
.LASF91:
	.string	"char"
.LASF33:
	.string	"__tm_mday"
.LASF68:
	.string	"_sig_func"
.LASF114:
	.string	"_mbrtowc_state"
.LASF0:
	.string	"ptrdiff_t"
.LASF21:
	.string	"_flock_t"
.LASF125:
	.string	"_raise_r"
.LASF81:
	.string	"_write"
.LASF15:
	.string	"__wch"
.LASF95:
	.string	"_iobs"
.LASF47:
	.string	"_on_exit_args_ptr"
.LASF83:
	.string	"_close"
.LASF58:
	.string	"__sdidinit"
.LASF139:
	.string	"_sbrk_r"
.LASF53:
	.string	"_stdin"
.LASF62:
	.string	"_gamma_signgam"
.LASF7:
	.string	"long long int"
.LASF49:
	.string	"_base"
.LASF105:
	.string	"_freelist"
.LASF130:
	.string	"heap_caps_malloc_default"
.LASF98:
	.string	"_mult"
.LASF22:
	.string	"__ULong"
.LASF116:
	.string	"_wcrtomb_state"
.LASF76:
	.string	"_file"
.LASF124:
	.string	"_system_r"
.LASF140:
	.string	"memset"
.LASF132:
	.string	"heap_caps_realloc_default"
.LASF61:
	.string	"__cleanup"
.LASF20:
	.string	"_mbstate_t"
.LASF101:
	.string	"_mprec"
.LASF119:
	.string	"size"
.LASF38:
	.string	"__tm_isdst"
.LASF118:
	.string	"_Bool"
.LASF34:
	.string	"__tm_mon"
.LASF69:
	.string	"_atexit0"
.LASF121:
	.string	"_realloc_r"
.LASF44:
	.string	"_atexit"
.LASF89:
	.string	"_mbstate"
.LASF6:
	.string	"short int"
.LASF12:
	.string	"long int"
.LASF26:
	.string	"_sign"
.LASF60:
	.string	"_current_locale"
.LASF128:
	.string	"_exit"
.LASF78:
	.string	"_data"
.LASF16:
	.string	"__wchb"
.LASF35:
	.string	"__tm_year"
.LASF126:
	.string	"_getpid_r"
.LASF106:
	.string	"_misc_reent"
.LASF66:
	.string	"_localtime_buf"
.LASF122:
	.string	"_calloc_r"
.LASF63:
	.string	"_cvtlen"
.LASF25:
	.string	"_maxwds"
.LASF111:
	.string	"_l64a_buf"
.LASF59:
	.string	"_current_category"
.LASF72:
	.string	"_misc"
.LASF86:
	.string	"_blksize"
.LASF29:
	.string	"__tm"
.LASF88:
	.string	"_lock"
.LASF17:
	.string	"sizetype"
.LASF23:
	.string	"long unsigned int"
.LASF94:
	.string	"_niobs"
.LASF14:
	.string	"wint_t"
.LASF41:
	.string	"_dso_handle"
.LASF64:
	.string	"_cvtbuf"
.LASF5:
	.string	"unsigned char"
.LASF112:
	.string	"_getdate_err"
.LASF99:
	.string	"_add"
.LASF129:
	.string	"__status"
.LASF48:
	.string	"__sbuf"
.LASF93:
	.string	"_glue"
.LASF70:
	.string	"__sglue"
.LASF107:
	.string	"_strtok_last"
.LASF110:
	.string	"_mbtowc_state"
.LASF40:
	.string	"_fnargs"
.LASF4:
	.string	"signed char"
.LASF51:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF42:
	.string	"_fntypes"
.LASF50:
	.string	"_size"
.LASF11:
	.string	"_off_t"
.LASF85:
	.string	"_nbuf"
.LASF90:
	.string	"_flags2"
.LASF43:
	.string	"_is_cxa"
.LASF97:
	.string	"_seed"
.LASF100:
	.string	"_rand_next"
.LASF82:
	.string	"_seek"
.LASF131:
	.string	"heap_caps_free"
.LASF55:
	.string	"_stderr"
.LASF84:
	.string	"_ubuf"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
