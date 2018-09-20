	.file	"syscall_table.c"
	.text
.Ltext0:
	.section	.text.esp_setup_syscall_table,"ax",@progbits
	.literal_position
	.literal .LC0, syscall_table_ptr_pro
	.literal .LC1, s_stub_table
	.literal .LC2, syscall_table_ptr_app
	.literal .LC3, _global_impure_ptr
	.literal .LC4, s_reent
	.literal .LC5, environ
	.align	4
	.global	esp_setup_syscall_table
	.type	esp_setup_syscall_table, @function
esp_setup_syscall_table:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/syscall_table.c"
	.loc 1 90 0
	entry	sp, 32
.LCFI0:
	.loc 1 91 0
	l32r	a8, .LC1
	l32r	a9, .LC0
	s32i.n	a8, a9, 0
	.loc 1 92 0
	l32r	a9, .LC2
	s32i.n	a8, a9, 0
	.loc 1 93 0
	l32r	a9, .LC4
	l32r	a8, .LC3
	s32i.n	a9, a8, 0
	.loc 1 94 0
	movi.n	a10, 4
	call8	malloc
.LVL0:
	l32r	a8, .LC5
	s32i.n	a10, a8, 0
	.loc 1 95 0
	movi.n	a8, 0
	s32i.n	a8, a10, 0
	retw.n
.LFE14:
	.size	esp_setup_syscall_table, .-esp_setup_syscall_table
	.section	.data.s_stub_table,"aw",@progbits
	.align	4
	.type	s_stub_table, @object
	.size	s_stub_table, 144
s_stub_table:
	.word	__getreent
	.word	_malloc_r
	.word	_free_r
	.word	_realloc_r
	.word	_calloc_r
	.word	abort
	.word	_system_r
	.word	esp_vfs_rename
	.word	_times_r
	.word	_gettimeofday_r
	.word	_raise_r
	.word	esp_vfs_unlink
	.word	esp_vfs_link
	.word	esp_vfs_stat
	.word	esp_vfs_fstat
	.word	_sbrk_r
	.word	_getpid_r
	.word	_kill_r
	.word	0
	.word	esp_vfs_close
	.word	esp_vfs_open
	.word	esp_vfs_write
	.word	esp_vfs_lseek
	.word	esp_vfs_read
	.word	_lock_init
	.word	_lock_init_recursive
	.word	_lock_close
	.word	_lock_close
	.word	_lock_acquire
	.word	_lock_acquire_recursive
	.word	_lock_try_acquire
	.word	_lock_try_acquire_recursive
	.word	_lock_release
	.word	_lock_release_recursive
	.word	0
	.word	0
	.section	.bss.s_reent,"aw",@nobits
	.align	4
	.type	s_reent, @object
	.size	s_reent, 240
s_reent:
	.zero	240
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
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/stat.h"
	.file 8 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stdarg.h"
	.file 9 "<built-in>"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/rom/libc_stubs.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h"
	.file 13 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/unistd.h"
	.file 14 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf32
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0xc
	.4byte	.LASF204
	.4byte	.LASF205
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
	.byte	0x14
	.4byte	0x5e
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1b
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x27
	.4byte	0x94
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x2
	.2byte	0x165
	.4byte	0x42
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x4a
	.4byte	0xf2
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4c
	.4byte	0xc7
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x4d
	.4byte	0xf2
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x102
	.uleb128 0x9
	.4byte	0x102
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0x47
	.4byte	0x12a
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x49
	.4byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4e
	.4byte	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0x4f
	.4byte	0x109
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x4
	.byte	0x53
	.4byte	0x7e
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x5
	.byte	0x16
	.4byte	0x14d
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x18
	.byte	0x5
	.byte	0x2d
	.4byte	0x1a7
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2f
	.4byte	0x1a7
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x5
	.byte	0x30
	.4byte	0x30
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x30
	.4byte	0x30
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x30
	.4byte	0x30
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x30
	.4byte	0x30
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x5
	.byte	0x31
	.4byte	0x1ad
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x154
	.uleb128 0x8
	.4byte	0x142
	.4byte	0x1bd
	.uleb128 0x9
	.4byte	0x102
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x24
	.byte	0x5
	.byte	0x35
	.4byte	0x236
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x37
	.4byte	0x30
	.byte	0
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x38
	.4byte	0x30
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x39
	.4byte	0x30
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3a
	.4byte	0x30
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x3b
	.4byte	0x30
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x3c
	.4byte	0x30
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x3d
	.4byte	0x30
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x3e
	.4byte	0x30
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x3f
	.4byte	0x30
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x5
	.byte	0x48
	.4byte	0x276
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x49
	.4byte	0x276
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x4a
	.4byte	0x276
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4c
	.4byte	0x142
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4f
	.4byte	0x142
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x140
	.4byte	0x286
	.uleb128 0x9
	.4byte	0x102
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x8c
	.byte	0x5
	.byte	0x53
	.4byte	0x2c3
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x54
	.4byte	0x2c3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x55
	.4byte	0x30
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x56
	.4byte	0x2c9
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0x57
	.4byte	0x2e0
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x286
	.uleb128 0x8
	.4byte	0x2d9
	.4byte	0x2d9
	.uleb128 0x9
	.4byte	0x102
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2df
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x236
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x5
	.byte	0x73
	.4byte	0x30b
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0x74
	.4byte	0x30b
	.byte	0
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0x75
	.4byte	0x30
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x57
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0xf0
	.byte	0x5
	.2byte	0x172
	.4byte	0x457
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x176
	.4byte	0x30
	.byte	0
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x17b
	.4byte	0x68c
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x17b
	.4byte	0x68c
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x17b
	.4byte	0x68c
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x17d
	.4byte	0x30
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x17f
	.4byte	0x5a5
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x181
	.4byte	0x30
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x183
	.4byte	0x30
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x184
	.4byte	0x5d6
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x5
	.2byte	0x186
	.4byte	0x7d9
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x188
	.4byte	0x7ea
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x18a
	.4byte	0x30
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x18d
	.4byte	0x30
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x18e
	.4byte	0x5a5
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x190
	.4byte	0x7f0
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x191
	.4byte	0x7f6
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x192
	.4byte	0x5a5
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x195
	.4byte	0x807
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x199
	.4byte	0x2c3
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x19a
	.4byte	0x286
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x19d
	.4byte	0x651
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x19e
	.4byte	0x68c
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x19f
	.4byte	0x813
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x1a0
	.4byte	0x5a5
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x311
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x68
	.byte	0x5
	.byte	0xb3
	.4byte	0x587
	.uleb128 0xe
	.string	"_p"
	.byte	0x5
	.byte	0xb4
	.4byte	0x30b
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
	.4byte	.LASF78
	.byte	0x5
	.byte	0xb7
	.4byte	0x5e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x5
	.byte	0xb8
	.4byte	0x5e
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xb9
	.4byte	0x2e6
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x5
	.byte	0xba
	.4byte	0x30
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x5
	.byte	0xbd
	.4byte	0x457
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x5
	.byte	0xc1
	.4byte	0x140
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x5
	.byte	0xc3
	.4byte	0x5b2
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x5
	.byte	0xc5
	.4byte	0x5e1
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x5
	.byte	0xc8
	.4byte	0x605
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x5
	.byte	0xc9
	.4byte	0x61f
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xcc
	.4byte	0x2e6
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x5
	.byte	0xcd
	.4byte	0x30b
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xce
	.4byte	0x30
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x5
	.byte	0xd1
	.4byte	0x625
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x5
	.byte	0xd2
	.4byte	0x635
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xd5
	.4byte	0x2e6
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x5
	.byte	0xd8
	.4byte	0x30
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x5
	.byte	0xd9
	.4byte	0x89
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x5
	.byte	0xe0
	.4byte	0x135
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x5
	.byte	0xe2
	.4byte	0x12a
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF93
	.byte	0x5
	.byte	0xe3
	.4byte	0x30
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x30
	.4byte	0x5a5
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.uleb128 0x17
	.4byte	0x5a5
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ab
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF94
	.uleb128 0xf
	.byte	0x4
	.4byte	0x587
	.uleb128 0x16
	.4byte	0x30
	.4byte	0x5d6
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.uleb128 0x17
	.4byte	0x5d6
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5dc
	.uleb128 0x18
	.4byte	0x5ab
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5b8
	.uleb128 0x16
	.4byte	0xbc
	.4byte	0x605
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.uleb128 0x17
	.4byte	0xbc
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5e7
	.uleb128 0x16
	.4byte	0x30
	.4byte	0x61f
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x60b
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x635
	.uleb128 0x9
	.4byte	0x102
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.4byte	0x645
	.uleb128 0x9
	.4byte	0x102
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x11d
	.4byte	0x45d
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0xc
	.byte	0x5
	.2byte	0x121
	.4byte	0x686
	.uleb128 0x14
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x123
	.4byte	0x686
	.byte	0
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x124
	.4byte	0x30
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x125
	.4byte	0x68c
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x651
	.uleb128 0xf
	.byte	0x4
	.4byte	0x645
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x18
	.byte	0x5
	.2byte	0x13d
	.4byte	0x6d4
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x13e
	.4byte	0x6d4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x13f
	.4byte	0x6d4
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x140
	.4byte	0x49
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x143
	.4byte	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x49
	.4byte	0x6e4
	.uleb128 0x9
	.4byte	0x102
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x10
	.byte	0x5
	.2byte	0x156
	.4byte	0x726
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x159
	.4byte	0x1a7
	.byte	0
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x15a
	.4byte	0x30
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x15b
	.4byte	0x1a7
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x15c
	.4byte	0x726
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1a7
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x50
	.byte	0x5
	.2byte	0x160
	.4byte	0x7c9
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x163
	.4byte	0x5a5
	.byte	0
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x164
	.4byte	0x12a
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x165
	.4byte	0x12a
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x166
	.4byte	0x12a
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x167
	.4byte	0x7c9
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x168
	.4byte	0x30
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x169
	.4byte	0x12a
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x16a
	.4byte	0x12a
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x16b
	.4byte	0x12a
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x16c
	.4byte	0x12a
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x16d
	.4byte	0x12a
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x5ab
	.4byte	0x7d9
	.uleb128 0x9
	.4byte	0x102
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6e4
	.uleb128 0x19
	.4byte	0x7ea
	.uleb128 0x17
	.4byte	0x457
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7df
	.uleb128 0xf
	.byte	0x4
	.4byte	0x692
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1bd
	.uleb128 0x19
	.4byte	0x807
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x80d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7fc
	.uleb128 0xf
	.byte	0x4
	.4byte	0x72c
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x6
	.byte	0x75
	.4byte	0x14d
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x6
	.byte	0x7a
	.4byte	0x94
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x6
	.byte	0x9b
	.4byte	0x49
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x6
	.byte	0xb8
	.4byte	0x89
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x6
	.byte	0xb9
	.4byte	0x9b
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x6
	.byte	0xba
	.4byte	0xa6
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x6
	.byte	0xbb
	.4byte	0xb1
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x6
	.byte	0xd9
	.4byte	0x42
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x6
	.byte	0xde
	.4byte	0x49
	.uleb128 0x5
	.4byte	.LASF130
	.byte	0x6
	.2byte	0x11d
	.4byte	0x94
	.uleb128 0xf
	.byte	0x4
	.4byte	0x88e
	.uleb128 0x1a
	.uleb128 0xd
	.4byte	.LASF131
	.byte	0x3c
	.byte	0x7
	.byte	0x1a
	.4byte	0x968
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x7
	.byte	0x1c
	.4byte	0x845
	.byte	0
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x7
	.byte	0x1d
	.4byte	0x82f
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x7
	.byte	0x1e
	.4byte	0x866
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x7
	.byte	0x1f
	.4byte	0x871
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x7
	.byte	0x20
	.4byte	0x850
	.byte	0xa
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x7
	.byte	0x21
	.4byte	0x85b
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x7
	.byte	0x22
	.4byte	0x845
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x7
	.byte	0x23
	.4byte	0x83a
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x7
	.byte	0x31
	.4byte	0x824
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x7
	.byte	0x32
	.4byte	0x94
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x7
	.byte	0x33
	.4byte	0x824
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x7
	.byte	0x34
	.4byte	0x94
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x7
	.byte	0x35
	.4byte	0x824
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x7
	.byte	0x36
	.4byte	0x94
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x7
	.byte	0x37
	.4byte	0x94
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x7
	.byte	0x38
	.4byte	0x94
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x7
	.byte	0x39
	.4byte	0x968
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.4byte	0x94
	.4byte	0x978
	.uleb128 0x9
	.4byte	0x102
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF149
	.byte	0x8
	.byte	0x28
	.4byte	0x983
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0xc
	.byte	0x9
	.byte	0
	.4byte	0x9b4
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x9
	.byte	0
	.4byte	0x140
	.byte	0
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x9
	.byte	0
	.4byte	0x140
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x9
	.byte	0
	.4byte	0x30
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0xa
	.byte	0x34
	.4byte	0x645
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x8
	.byte	0x62
	.4byte	0x978
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0x90
	.byte	0xb
	.byte	0x2a
	.4byte	0xb87
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0xb
	.byte	0x2c
	.4byte	0xb8c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF158
	.byte	0xb
	.byte	0x2d
	.4byte	0xba6
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xb
	.byte	0x2e
	.4byte	0xbbc
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF160
	.byte	0xb
	.byte	0x2f
	.4byte	0xbdb
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xb
	.byte	0x30
	.4byte	0xbfa
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xb
	.byte	0x31
	.4byte	0x2d9
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xb
	.byte	0x32
	.4byte	0xc14
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0xb
	.byte	0x33
	.4byte	0xc33
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF165
	.byte	0xb
	.byte	0x34
	.4byte	0xc58
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0xb
	.byte	0x35
	.4byte	0xca2
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0xb
	.byte	0x36
	.4byte	0x7ea
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0xb
	.byte	0x37
	.4byte	0xc14
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0xb
	.byte	0x38
	.4byte	0xc33
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0xb
	.byte	0x39
	.4byte	0xcc7
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0xb
	.byte	0x3a
	.4byte	0xce6
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0xb
	.byte	0x3b
	.4byte	0xd00
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0xb
	.byte	0x3c
	.4byte	0xd15
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0xb
	.byte	0x3d
	.4byte	0xd34
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0xb
	.byte	0x3e
	.4byte	0xd4a
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF176
	.byte	0xb
	.byte	0x3f
	.4byte	0xd64
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xb
	.byte	0x40
	.4byte	0xd88
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0xb
	.byte	0x41
	.4byte	0xdac
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0xb
	.byte	0x42
	.4byte	0xdd0
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0xb
	.byte	0x43
	.4byte	0xdf4
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0xb
	.byte	0x44
	.4byte	0xe0b
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0xb
	.byte	0x45
	.4byte	0xe0b
	.byte	0x64
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0xb
	.byte	0x46
	.4byte	0xe0b
	.byte	0x68
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0xb
	.byte	0x47
	.4byte	0xe0b
	.byte	0x6c
	.uleb128 0xb
	.4byte	.LASF185
	.byte	0xb
	.byte	0x48
	.4byte	0xe0b
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0xb
	.byte	0x49
	.4byte	0xe0b
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0xb
	.byte	0x4a
	.4byte	0xe20
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0xb
	.byte	0x4b
	.4byte	0xe20
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0xb
	.byte	0x4c
	.4byte	0xe0b
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0xb
	.byte	0x4d
	.4byte	0xe0b
	.byte	0x84
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0xb
	.byte	0x4e
	.4byte	0xe79
	.byte	0x88
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0xb
	.byte	0x4f
	.4byte	0xe9d
	.byte	0x8c
	.byte	0
	.uleb128 0x1b
	.4byte	0x457
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb87
	.uleb128 0x16
	.4byte	0x140
	.4byte	0xba6
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x37
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb92
	.uleb128 0x19
	.4byte	0xbbc
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbac
	.uleb128 0x16
	.4byte	0x140
	.4byte	0xbdb
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.uleb128 0x17
	.4byte	0x37
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbc2
	.uleb128 0x16
	.4byte	0x140
	.4byte	0xbfa
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x37
	.uleb128 0x17
	.4byte	0x37
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbe1
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xc14
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x5d6
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc00
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xc33
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x5d6
	.uleb128 0x17
	.4byte	0x5d6
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc1a
	.uleb128 0x16
	.4byte	0x819
	.4byte	0xc4d
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0xc4d
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc53
	.uleb128 0x1c
	.string	"tms"
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc39
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xc77
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0xc77
	.uleb128 0x17
	.4byte	0x140
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc7d
	.uleb128 0xd
	.4byte	.LASF193
	.byte	0x8
	.byte	0xc
	.byte	0x11
	.4byte	0xca2
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0xc
	.byte	0x12
	.4byte	0x824
	.byte	0
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0xc
	.byte	0x13
	.4byte	0x87c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc5e
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xcc1
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x5d6
	.uleb128 0x17
	.4byte	0xcc1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x88f
	.uleb128 0xf
	.byte	0x4
	.4byte	0xca8
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xce6
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x30
	.uleb128 0x17
	.4byte	0xcc1
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xccd
	.uleb128 0x16
	.4byte	0x140
	.4byte	0xd00
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x25
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcec
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xd15
	.uleb128 0x17
	.4byte	0x457
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd06
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xd34
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x30
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd1b
	.uleb128 0x19
	.4byte	0xd4a
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd3a
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xd64
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd50
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xd88
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x5d6
	.uleb128 0x17
	.4byte	0x30
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd6a
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xdac
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x30
	.uleb128 0x17
	.4byte	0x888
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd8e
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xdd0
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x30
	.uleb128 0x17
	.4byte	0x30
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xdb2
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xdf4
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x30
	.uleb128 0x17
	.4byte	0x140
	.uleb128 0x17
	.4byte	0x30
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xdd6
	.uleb128 0x19
	.4byte	0xe05
	.uleb128 0x17
	.4byte	0xe05
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x73
	.uleb128 0xf
	.byte	0x4
	.4byte	0xdfa
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xe20
	.uleb128 0x17
	.4byte	0xe05
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe11
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xe49
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.uleb128 0x17
	.4byte	0xe49
	.uleb128 0x17
	.4byte	0xe4f
	.uleb128 0x17
	.4byte	0xe73
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9b4
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe55
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xe73
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0xe49
	.uleb128 0x17
	.4byte	0x5d6
	.uleb128 0x17
	.4byte	0x37
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9bf
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe26
	.uleb128 0x16
	.4byte	0x30
	.4byte	0xe9d
	.uleb128 0x17
	.4byte	0x457
	.uleb128 0x17
	.4byte	0x140
	.uleb128 0x17
	.4byte	0xe49
	.uleb128 0x17
	.4byte	0xe73
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xe7f
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF196
	.uleb128 0x1d
	.4byte	.LASF206
	.byte	0x1
	.byte	0x59
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xecf
	.uleb128 0x1e
	.4byte	.LVL0
	.4byte	0xf2a
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF197
	.byte	0x1
	.byte	0x1e
	.4byte	0x311
	.uleb128 0x5
	.byte	0x3
	.4byte	s_reent
	.uleb128 0x20
	.4byte	.LASF198
	.byte	0x1
	.byte	0x2d
	.4byte	0x9ca
	.uleb128 0x5
	.byte	0x3
	.4byte	s_stub_table
	.uleb128 0x21
	.4byte	.LASF199
	.byte	0x5
	.2byte	0x303
	.4byte	0x457
	.uleb128 0x22
	.4byte	.LASF200
	.byte	0xd
	.byte	0x10
	.4byte	0xf08
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5a5
	.uleb128 0x22
	.4byte	.LASF201
	.byte	0xb
	.byte	0x52
	.4byte	0xf19
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9ca
	.uleb128 0x22
	.4byte	.LASF202
	.byte	0xb
	.byte	0x53
	.4byte	0xf19
	.uleb128 0x23
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0xe
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x21
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"_dso_handle"
.LASF202:
	.string	"syscall_table_ptr_app"
.LASF15:
	.string	"__gid_t"
.LASF6:
	.string	"short int"
.LASF16:
	.string	"_fpos_t"
.LASF188:
	.string	"_lock_try_acquire_recursive"
.LASF43:
	.string	"_fnargs"
.LASF1:
	.string	"size_t"
.LASF99:
	.string	"_rand48"
.LASF152:
	.string	"__va_reg"
.LASF60:
	.string	"_emergency"
.LASF164:
	.string	"_rename_r"
.LASF155:
	.string	"va_list"
.LASF140:
	.string	"st_atime"
.LASF72:
	.string	"_atexit0"
.LASF119:
	.string	"_wcrtomb_state"
.LASF120:
	.string	"_wcsrtombs_state"
.LASF8:
	.string	"long long unsigned int"
.LASF80:
	.string	"_lbfsize"
.LASF113:
	.string	"_mbtowc_state"
.LASF117:
	.string	"_mbrtowc_state"
.LASF151:
	.string	"__va_stk"
.LASF175:
	.string	"_exit_r"
.LASF112:
	.string	"_wctomb_state"
.LASF33:
	.string	"__tm_sec"
.LASF131:
	.string	"stat"
.LASF11:
	.string	"_off_t"
.LASF86:
	.string	"_close"
.LASF4:
	.string	"signed char"
.LASF25:
	.string	"__ULong"
.LASF133:
	.string	"st_ino"
.LASF87:
	.string	"_ubuf"
.LASF52:
	.string	"_base"
.LASF35:
	.string	"__tm_hour"
.LASF74:
	.string	"__sf"
.LASF42:
	.string	"_on_exit_args"
.LASF82:
	.string	"_cookie"
.LASF73:
	.string	"__sglue"
.LASF186:
	.string	"_lock_acquire_recursive"
.LASF12:
	.string	"long int"
.LASF160:
	.string	"_realloc_r"
.LASF104:
	.string	"_mprec"
.LASF78:
	.string	"_flags"
.LASF181:
	.string	"_lock_init"
.LASF56:
	.string	"_stdin"
.LASF106:
	.string	"_result_k"
.LASF9:
	.string	"_lock_t"
.LASF7:
	.string	"long long int"
.LASF169:
	.string	"_link_r"
.LASF67:
	.string	"_cvtbuf"
.LASF90:
	.string	"_offset"
.LASF156:
	.string	"syscall_stub_table"
.LASF116:
	.string	"_mbrlen_state"
.LASF129:
	.string	"nlink_t"
.LASF118:
	.string	"_mbsrtowcs_state"
.LASF166:
	.string	"_gettimeofday_r"
.LASF49:
	.string	"_fns"
.LASF127:
	.string	"gid_t"
.LASF121:
	.string	"clock_t"
.LASF29:
	.string	"_sign"
.LASF58:
	.string	"_stderr"
.LASF31:
	.string	"_Bigint"
.LASF130:
	.string	"suseconds_t"
.LASF147:
	.string	"st_blocks"
.LASF89:
	.string	"_blksize"
.LASF83:
	.string	"_read"
.LASF141:
	.string	"st_spare1"
.LASF143:
	.string	"st_spare2"
.LASF32:
	.string	"__tm"
.LASF50:
	.string	"_on_exit_args_ptr"
.LASF19:
	.string	"__wchb"
.LASF57:
	.string	"_stdout"
.LASF66:
	.string	"_cvtlen"
.LASF189:
	.string	"_lock_release"
.LASF26:
	.string	"long unsigned int"
.LASF79:
	.string	"_file"
.LASF59:
	.string	"_inc"
.LASF168:
	.string	"_unlink_r"
.LASF193:
	.string	"timeval"
.LASF81:
	.string	"_data"
.LASF136:
	.string	"st_uid"
.LASF97:
	.string	"_niobs"
.LASF126:
	.string	"uid_t"
.LASF180:
	.string	"_read_r"
.LASF103:
	.string	"_rand_next"
.LASF192:
	.string	"_scanf_float"
.LASF76:
	.string	"_signal_buf"
.LASF70:
	.string	"_asctime_buf"
.LASF55:
	.string	"_errno"
.LASF170:
	.string	"_stat_r"
.LASF105:
	.string	"_result"
.LASF18:
	.string	"__wch"
.LASF200:
	.string	"environ"
.LASF17:
	.string	"wint_t"
.LASF161:
	.string	"_calloc_r"
.LASF91:
	.string	"_lock"
.LASF176:
	.string	"_close_r"
.LASF101:
	.string	"_mult"
.LASF173:
	.string	"_getpid_r"
.LASF124:
	.string	"off_t"
.LASF139:
	.string	"st_size"
.LASF0:
	.string	"ptrdiff_t"
.LASF84:
	.string	"_write"
.LASF38:
	.string	"__tm_year"
.LASF21:
	.string	"__count"
.LASF182:
	.string	"_lock_init_recursive"
.LASF178:
	.string	"_write_r"
.LASF75:
	.string	"_misc"
.LASF20:
	.string	"sizetype"
.LASF204:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/newlib/syscall_table.c"
.LASF13:
	.string	"__dev_t"
.LASF171:
	.string	"_fstat_r"
.LASF194:
	.string	"tv_sec"
.LASF149:
	.string	"__gnuc_va_list"
.LASF206:
	.string	"esp_setup_syscall_table"
.LASF201:
	.string	"syscall_table_ptr_pro"
.LASF185:
	.string	"_lock_acquire"
.LASF37:
	.string	"__tm_mon"
.LASF47:
	.string	"_atexit"
.LASF111:
	.string	"_mblen_state"
.LASF61:
	.string	"__sdidinit"
.LASF65:
	.string	"_gamma_signgam"
.LASF125:
	.string	"dev_t"
.LASF165:
	.string	"_times_r"
.LASF122:
	.string	"time_t"
.LASF167:
	.string	"_raise_r"
.LASF108:
	.string	"_freelist"
.LASF10:
	.string	"_LOCK_RECURSIVE_T"
.LASF159:
	.string	"_free_r"
.LASF135:
	.string	"st_nlink"
.LASF196:
	.string	"_Bool"
.LASF5:
	.string	"unsigned char"
.LASF191:
	.string	"_printf_float"
.LASF98:
	.string	"_iobs"
.LASF179:
	.string	"_lseek_r"
.LASF205:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\newlib"
.LASF203:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF24:
	.string	"_flock_t"
.LASF40:
	.string	"__tm_yday"
.LASF51:
	.string	"__sbuf"
.LASF93:
	.string	"_flags2"
.LASF95:
	.string	"__FILE"
.LASF23:
	.string	"_mbstate_t"
.LASF77:
	.string	"__sFILE"
.LASF92:
	.string	"_mbstate"
.LASF144:
	.string	"st_ctime"
.LASF207:
	.string	"malloc"
.LASF154:
	.string	"FILE"
.LASF48:
	.string	"_ind"
.LASF63:
	.string	"_current_locale"
.LASF158:
	.string	"_malloc_r"
.LASF64:
	.string	"__cleanup"
.LASF28:
	.string	"_maxwds"
.LASF54:
	.string	"_reent"
.LASF187:
	.string	"_lock_try_acquire"
.LASF195:
	.string	"tv_usec"
.LASF22:
	.string	"__value"
.LASF85:
	.string	"_seek"
.LASF198:
	.string	"s_stub_table"
.LASF39:
	.string	"__tm_wday"
.LASF138:
	.string	"st_rdev"
.LASF197:
	.string	"s_reent"
.LASF177:
	.string	"_open_r"
.LASF145:
	.string	"st_spare3"
.LASF94:
	.string	"char"
.LASF148:
	.string	"st_spare4"
.LASF53:
	.string	"_size"
.LASF2:
	.string	"unsigned int"
.LASF100:
	.string	"_seed"
.LASF45:
	.string	"_fntypes"
.LASF183:
	.string	"_lock_close"
.LASF46:
	.string	"_is_cxa"
.LASF14:
	.string	"__uid_t"
.LASF27:
	.string	"_next"
.LASF110:
	.string	"_strtok_last"
.LASF134:
	.string	"st_mode"
.LASF146:
	.string	"st_blksize"
.LASF157:
	.string	"__getreent"
.LASF109:
	.string	"_misc_reent"
.LASF3:
	.string	"short unsigned int"
.LASF102:
	.string	"_add"
.LASF137:
	.string	"st_gid"
.LASF115:
	.string	"_getdate_err"
.LASF174:
	.string	"_kill_r"
.LASF172:
	.string	"_sbrk_r"
.LASF199:
	.string	"_global_impure_ptr"
.LASF62:
	.string	"_current_category"
.LASF190:
	.string	"_lock_release_recursive"
.LASF184:
	.string	"_lock_close_recursive"
.LASF30:
	.string	"_wds"
.LASF96:
	.string	"_glue"
.LASF132:
	.string	"st_dev"
.LASF114:
	.string	"_l64a_buf"
.LASF71:
	.string	"_sig_func"
.LASF88:
	.string	"_nbuf"
.LASF163:
	.string	"_system_r"
.LASF41:
	.string	"__tm_isdst"
.LASF69:
	.string	"_localtime_buf"
.LASF34:
	.string	"__tm_min"
.LASF68:
	.string	"_r48"
.LASF153:
	.string	"__va_ndx"
.LASF128:
	.string	"mode_t"
.LASF107:
	.string	"_p5s"
.LASF162:
	.string	"_abort"
.LASF142:
	.string	"st_mtime"
.LASF36:
	.string	"__tm_mday"
.LASF150:
	.string	"__va_list_tag"
.LASF123:
	.string	"ino_t"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
