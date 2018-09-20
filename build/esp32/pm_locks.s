	.file	"pm_locks.c"
	.text
.Ltext0:
	.section	.text.esp_pm_lock_create,"ax",@progbits
	.align	4
	.global	esp_pm_lock_create
	.type	esp_pm_lock_create, @function
esp_pm_lock_create:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/pm_locks.c"
	.loc 1 59 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 82 0
	movi	a2, 0x106
.LVL1:
	retw.n
.LFE14:
	.size	esp_pm_lock_create, .-esp_pm_lock_create
	.section	.text.esp_pm_lock_delete,"ax",@progbits
	.align	4
	.global	esp_pm_lock_delete
	.type	esp_pm_lock_delete, @function
esp_pm_lock_delete:
.LFB15:
	.loc 1 85 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 102 0
	movi	a2, 0x106
.LVL3:
	retw.n
.LFE15:
	.size	esp_pm_lock_delete, .-esp_pm_lock_delete
	.section	.iram1,"ax",@progbits
	.align	4
	.global	esp_pm_lock_acquire
	.type	esp_pm_lock_acquire, @function
esp_pm_lock_acquire:
.LFB16:
	.loc 1 105 0
.LVL4:
	entry	sp, 32
.LCFI2:
	.loc 1 128 0
	movi	a2, 0x106
.LVL5:
	retw.n
.LFE16:
	.size	esp_pm_lock_acquire, .-esp_pm_lock_acquire
	.align	4
	.global	esp_pm_lock_release
	.type	esp_pm_lock_release, @function
esp_pm_lock_release:
.LFB17:
	.loc 1 131 0
.LVL6:
	entry	sp, 32
.LCFI3:
	.loc 1 156 0
	movi	a2, 0x106
.LVL7:
	retw.n
.LFE17:
	.size	esp_pm_lock_release, .-esp_pm_lock_release
	.section	.text.esp_pm_dump_locks,"ax",@progbits
	.align	4
	.global	esp_pm_dump_locks
	.type	esp_pm_dump_locks, @function
esp_pm_dump_locks:
.LFB18:
	.loc 1 160 0
.LVL8:
	entry	sp, 32
.LCFI4:
	.loc 1 203 0
	movi	a2, 0x106
.LVL9:
	retw.n
.LFE18:
	.size	esp_pm_dump_locks, .-esp_pm_dump_locks
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
	.text
.Letext0:
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/lock.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/_types.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/reent.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 8 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdio.h"
	.file 9 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_err.h"
	.file 10 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_pm.h"
	.file 11 "D:/ESP32/esp-idf-v3.1-rc1/components/freertos/include/freertos/portmacro.h"
	.file 12 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/pm_impl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xae6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0xc
	.4byte	.LASF163
	.4byte	.LASF164
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x19
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1a
	.4byte	0x30
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x4
	.byte	0xb
	.4byte	0x3e
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0xc
	.4byte	0x7e
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x5
	.byte	0x10
	.4byte	0x9f
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x5
	.byte	0x27
	.4byte	0x9f
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x165
	.4byte	0x30
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0x4a
	.4byte	0xdc
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x4c
	.4byte	0xb1
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x4d
	.4byte	0xdc
	.byte	0
	.uleb128 0x8
	.4byte	0x4c
	.4byte	0xec
	.uleb128 0x9
	.4byte	0xec
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0x47
	.4byte	0x114
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0x49
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4e
	.4byte	0xbd
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4f
	.4byte	0xf3
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0x53
	.4byte	0x89
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.4byte	0x137
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0x2d
	.4byte	0x191
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2f
	.4byte	0x191
	.byte	0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x30
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x30
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x30
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x30
	.4byte	0x3e
	.byte	0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x31
	.4byte	0x197
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x13e
	.uleb128 0x8
	.4byte	0x12c
	.4byte	0x1a7
	.uleb128 0x9
	.4byte	0xec
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x35
	.4byte	0x220
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x37
	.4byte	0x3e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x38
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x39
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3a
	.4byte	0x3e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3b
	.4byte	0x3e
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3c
	.4byte	0x3e
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3d
	.4byte	0x3e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3e
	.4byte	0x3e
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3f
	.4byte	0x3e
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x6
	.byte	0x48
	.4byte	0x260
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x49
	.4byte	0x260
	.byte	0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4a
	.4byte	0x260
	.byte	0x80
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4c
	.4byte	0x12c
	.2byte	0x100
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4f
	.4byte	0x12c
	.2byte	0x104
	.byte	0
	.uleb128 0x8
	.4byte	0x12a
	.4byte	0x270
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8c
	.byte	0x6
	.byte	0x53
	.4byte	0x2ad
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x54
	.4byte	0x2ad
	.byte	0
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x55
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x56
	.4byte	0x2b3
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x57
	.4byte	0x2ca
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x270
	.uleb128 0x8
	.4byte	0x2c3
	.4byte	0x2c3
	.uleb128 0x9
	.4byte	0xec
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c9
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x4
	.4byte	0x220
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x73
	.4byte	0x2f5
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x74
	.4byte	0x2f5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x75
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4c
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0xf0
	.byte	0x6
	.2byte	0x172
	.4byte	0x441
	.uleb128 0x14
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x176
	.4byte	0x3e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x17b
	.4byte	0x676
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x17b
	.4byte	0x676
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x17b
	.4byte	0x676
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x17d
	.4byte	0x3e
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x17f
	.4byte	0x58f
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x181
	.4byte	0x3e
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x183
	.4byte	0x3e
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x184
	.4byte	0x5c0
	.byte	0x20
	.uleb128 0x15
	.string	"_mp"
	.byte	0x6
	.2byte	0x186
	.4byte	0x7c3
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x188
	.4byte	0x7d4
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x18a
	.4byte	0x3e
	.byte	0x2c
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x18d
	.4byte	0x3e
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x18e
	.4byte	0x58f
	.byte	0x34
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x190
	.4byte	0x7da
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x191
	.4byte	0x7e0
	.byte	0x3c
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x192
	.4byte	0x58f
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x195
	.4byte	0x7f1
	.byte	0x44
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x199
	.4byte	0x2ad
	.byte	0x48
	.uleb128 0x14
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x19a
	.4byte	0x270
	.byte	0x4c
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x19d
	.4byte	0x63b
	.byte	0xd8
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x19e
	.4byte	0x676
	.byte	0xe4
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x19f
	.4byte	0x7fd
	.byte	0xe8
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x1a0
	.4byte	0x58f
	.byte	0xec
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2fb
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x68
	.byte	0x6
	.byte	0xb3
	.4byte	0x571
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb4
	.4byte	0x2f5
	.byte	0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb5
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb6
	.4byte	0x3e
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x6
	.byte	0xb7
	.4byte	0x53
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF77
	.byte	0x6
	.byte	0xb8
	.4byte	0x53
	.byte	0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xb9
	.4byte	0x2d0
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF78
	.byte	0x6
	.byte	0xba
	.4byte	0x3e
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0xbd
	.4byte	0x441
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x6
	.byte	0xc1
	.4byte	0x12a
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x6
	.byte	0xc3
	.4byte	0x59c
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF82
	.byte	0x6
	.byte	0xc5
	.4byte	0x5cb
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0x6
	.byte	0xc8
	.4byte	0x5ef
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0x6
	.byte	0xc9
	.4byte	0x609
	.byte	0x30
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xcc
	.4byte	0x2d0
	.byte	0x34
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcd
	.4byte	0x2f5
	.byte	0x3c
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xce
	.4byte	0x3e
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x6
	.byte	0xd1
	.4byte	0x60f
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x6
	.byte	0xd2
	.4byte	0x61f
	.byte	0x47
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd5
	.4byte	0x2d0
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x6
	.byte	0xd8
	.4byte	0x3e
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x6
	.byte	0xd9
	.4byte	0x94
	.byte	0x54
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x6
	.byte	0xe0
	.4byte	0x11f
	.byte	0x58
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x6
	.byte	0xe2
	.4byte	0x114
	.byte	0x5c
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x6
	.byte	0xe3
	.4byte	0x3e
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.4byte	0x3e
	.4byte	0x58f
	.uleb128 0x17
	.4byte	0x441
	.uleb128 0x17
	.4byte	0x12a
	.uleb128 0x17
	.4byte	0x58f
	.uleb128 0x17
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x595
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF92
	.uleb128 0xf
	.byte	0x4
	.4byte	0x571
	.uleb128 0x16
	.4byte	0x3e
	.4byte	0x5c0
	.uleb128 0x17
	.4byte	0x441
	.uleb128 0x17
	.4byte	0x12a
	.uleb128 0x17
	.4byte	0x5c0
	.uleb128 0x17
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5c6
	.uleb128 0x18
	.4byte	0x595
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5a2
	.uleb128 0x16
	.4byte	0xa6
	.4byte	0x5ef
	.uleb128 0x17
	.4byte	0x441
	.uleb128 0x17
	.4byte	0x12a
	.uleb128 0x17
	.4byte	0xa6
	.uleb128 0x17
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5d1
	.uleb128 0x16
	.4byte	0x3e
	.4byte	0x609
	.uleb128 0x17
	.4byte	0x441
	.uleb128 0x17
	.4byte	0x12a
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5f5
	.uleb128 0x8
	.4byte	0x4c
	.4byte	0x61f
	.uleb128 0x9
	.4byte	0xec
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x4c
	.4byte	0x62f
	.uleb128 0x9
	.4byte	0xec
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x11d
	.4byte	0x447
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0xc
	.byte	0x6
	.2byte	0x121
	.4byte	0x670
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x123
	.4byte	0x670
	.byte	0
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x124
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x125
	.4byte	0x676
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x63b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x62f
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x18
	.byte	0x6
	.2byte	0x13d
	.4byte	0x6be
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x13e
	.4byte	0x6be
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x13f
	.4byte	0x6be
	.byte	0x6
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x140
	.4byte	0x37
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x143
	.4byte	0x77
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.4byte	0x37
	.4byte	0x6ce
	.uleb128 0x9
	.4byte	0xec
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x10
	.byte	0x6
	.2byte	0x156
	.4byte	0x710
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x159
	.4byte	0x191
	.byte	0
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x15a
	.4byte	0x3e
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x15b
	.4byte	0x191
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x15c
	.4byte	0x710
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x191
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x50
	.byte	0x6
	.2byte	0x160
	.4byte	0x7b3
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x163
	.4byte	0x58f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x164
	.4byte	0x114
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x165
	.4byte	0x114
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x166
	.4byte	0x114
	.byte	0x14
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x167
	.4byte	0x7b3
	.byte	0x1c
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x168
	.4byte	0x3e
	.byte	0x24
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x169
	.4byte	0x114
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x16a
	.4byte	0x114
	.byte	0x30
	.uleb128 0x14
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x16b
	.4byte	0x114
	.byte	0x38
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x16c
	.4byte	0x114
	.byte	0x40
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x16d
	.4byte	0x114
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.4byte	0x595
	.4byte	0x7c3
	.uleb128 0x9
	.4byte	0xec
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6ce
	.uleb128 0x19
	.4byte	0x7d4
	.uleb128 0x17
	.4byte	0x441
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7c9
	.uleb128 0xf
	.byte	0x4
	.4byte	0x67c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1a7
	.uleb128 0x19
	.4byte	0x7f1
	.uleb128 0x17
	.4byte	0x3e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7f7
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7e6
	.uleb128 0xf
	.byte	0x4
	.4byte	0x716
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x7
	.byte	0x2c
	.4byte	0x5a
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x7
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x8
	.byte	0x34
	.4byte	0x62f
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x9
	.byte	0x18
	.4byte	0x803
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF123
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x30
	.byte	0xa
	.byte	0x1e
	.4byte	0x855
	.uleb128 0x1b
	.4byte	.LASF124
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0xa
	.byte	0x2e
	.4byte	0x836
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0xa
	.byte	0x3f
	.4byte	0x86b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x871
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x20
	.byte	0x1
	.byte	0x1b
	.4byte	0x8d2
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x1
	.byte	0x1c
	.4byte	0x855
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x1d
	.4byte	0x3e
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x1
	.byte	0x1e
	.4byte	0x929
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x1
	.byte	0x1f
	.4byte	0x5c0
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x1
	.byte	0x20
	.4byte	0x94d
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x1
	.byte	0x21
	.4byte	0x25
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x1
	.byte	0x22
	.4byte	0x8f3
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0xb
	.byte	0x82
	.4byte	0x8f3
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0xb
	.byte	0x8a
	.4byte	0x80e
	.byte	0
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xb
	.byte	0x8f
	.4byte	0x80e
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0xb
	.byte	0x94
	.4byte	0x8d2
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x30
	.byte	0xc
	.byte	0x21
	.4byte	0x929
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0x2
	.uleb128 0x1b
	.4byte	.LASF141
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0xc
	.byte	0x27
	.4byte	0x8fe
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x30
	.byte	0xc
	.byte	0x3a
	.4byte	0x94d
	.uleb128 0x1b
	.4byte	.LASF144
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF145
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x1
	.byte	0x20
	.4byte	0x962
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x1
	.byte	0x20
	.4byte	0x86b
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF147
	.byte	0x1
	.byte	0x29
	.4byte	0x871
	.uleb128 0xd
	.4byte	.LASF148
	.byte	0x4
	.byte	0x1
	.byte	0x33
	.4byte	0x986
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0x1
	.byte	0x33
	.4byte	0x86b
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0x1
	.byte	0x39
	.4byte	0x824
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e1
	.uleb128 0x1d
	.4byte	.LASF150
	.byte	0x1
	.byte	0x39
	.4byte	0x855
	.4byte	.LLST0
	.uleb128 0x1e
	.string	"arg"
	.byte	0x1
	.byte	0x39
	.4byte	0x3e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x3a
	.4byte	0x5c0
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	.LASF151
	.byte	0x1
	.byte	0x3a
	.4byte	0x9e1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF157
	.byte	0x1
	.byte	0x43
	.4byte	0x9e7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x860
	.uleb128 0xf
	.byte	0x4
	.4byte	0x962
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0x1
	.byte	0x54
	.4byte	0x824
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa16
	.uleb128 0x1d
	.4byte	.LASF154
	.byte	0x1
	.byte	0x54
	.4byte	0x860
	.4byte	.LLST1
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x1
	.byte	0x68
	.4byte	0x824
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa3f
	.uleb128 0x1d
	.4byte	.LASF154
	.byte	0x1
	.byte	0x68
	.4byte	0x860
	.4byte	.LLST2
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0x1
	.byte	0x82
	.4byte	0x824
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7a
	.uleb128 0x1d
	.4byte	.LASF154
	.byte	0x1
	.byte	0x82
	.4byte	0x860
	.4byte	.LLST3
	.uleb128 0x21
	.string	"ret"
	.byte	0x1
	.byte	0x8b
	.4byte	0x824
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.byte	0x99
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0x1
	.byte	0x9f
	.4byte	0x824
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaad
	.uleb128 0x1d
	.4byte	.LASF159
	.byte	0x1
	.byte	0x9f
	.4byte	0xaad
	.4byte	.LLST4
	.uleb128 0x21
	.string	"it"
	.byte	0x1
	.byte	0xb0
	.4byte	0x9e7
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x819
	.uleb128 0x8
	.4byte	0x5c0
	.4byte	0xac3
	.uleb128 0x9
	.4byte	0xec
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.4byte	.LASF160
	.byte	0x1
	.byte	0x2c
	.4byte	0xab3
	.uleb128 0x23
	.4byte	.LASF165
	.byte	0x1
	.byte	0x33
	.4byte	0x96d
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF161
	.byte	0x1
	.byte	0x36
	.4byte	0x7e
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
	.uleb128 0xe
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"_dso_handle"
.LASF155:
	.string	"esp_pm_lock_acquire"
.LASF134:
	.string	"count"
.LASF125:
	.string	"ESP_PM_APB_FREQ_MAX"
.LASF41:
	.string	"_fnargs"
.LASF5:
	.string	"size_t"
.LASF142:
	.string	"PM_MODE_COUNT"
.LASF58:
	.string	"_emergency"
.LASF151:
	.string	"out_handle"
.LASF158:
	.string	"esp_pm_dump_locks"
.LASF70:
	.string	"_atexit0"
.LASF130:
	.string	"type"
.LASF159:
	.string	"stream"
.LASF117:
	.string	"_wcrtomb_state"
.LASF118:
	.string	"_wcsrtombs_state"
.LASF9:
	.string	"long long unsigned int"
.LASF78:
	.string	"_lbfsize"
.LASF148:
	.string	"esp_pm_locks_head"
.LASF115:
	.string	"_mbrtowc_state"
.LASF133:
	.string	"next"
.LASF143:
	.string	"pm_mode_t"
.LASF110:
	.string	"_wctomb_state"
.LASF31:
	.string	"__tm_sec"
.LASF12:
	.string	"_off_t"
.LASF84:
	.string	"_close"
.LASF2:
	.string	"signed char"
.LASF85:
	.string	"_ubuf"
.LASF50:
	.string	"_base"
.LASF135:
	.string	"spinlock"
.LASF72:
	.string	"__sf"
.LASF40:
	.string	"_on_exit_args"
.LASF127:
	.string	"esp_pm_lock_type_t"
.LASF80:
	.string	"_cookie"
.LASF71:
	.string	"__sglue"
.LASF165:
	.string	"s_list"
.LASF13:
	.string	"long int"
.LASF157:
	.string	"new_lock"
.LASF76:
	.string	"_flags"
.LASF121:
	.string	"FILE"
.LASF54:
	.string	"_stdin"
.LASF0:
	.string	"unsigned int"
.LASF104:
	.string	"_result_k"
.LASF10:
	.string	"_lock_t"
.LASF8:
	.string	"long long int"
.LASF164:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\esp32"
.LASF161:
	.string	"s_list_lock"
.LASF65:
	.string	"_cvtbuf"
.LASF88:
	.string	"_offset"
.LASF129:
	.string	"esp_pm_lock"
.LASF48:
	.string	"_on_exit_args_ptr"
.LASF116:
	.string	"_mbsrtowcs_state"
.LASF114:
	.string	"_mbrlen_state"
.LASF47:
	.string	"_fns"
.LASF7:
	.string	"__uint32_t"
.LASF138:
	.string	"PM_MODE_LIGHT_SLEEP"
.LASF27:
	.string	"_sign"
.LASF56:
	.string	"_stderr"
.LASF29:
	.string	"_Bigint"
.LASF81:
	.string	"_read"
.LASF147:
	.string	"esp_pm_lock_t"
.LASF30:
	.string	"__tm"
.LASF141:
	.string	"PM_MODE_CPU_MAX"
.LASF153:
	.string	"esp_pm_lock_delete"
.LASF17:
	.string	"__wchb"
.LASF55:
	.string	"_stdout"
.LASF64:
	.string	"_cvtlen"
.LASF24:
	.string	"long unsigned int"
.LASF77:
	.string	"_file"
.LASF57:
	.string	"_inc"
.LASF146:
	.string	"sle_next"
.LASF132:
	.string	"name"
.LASF79:
	.string	"_data"
.LASF95:
	.string	"_niobs"
.LASF139:
	.string	"PM_MODE_APB_MIN"
.LASF101:
	.string	"_rand_next"
.LASF74:
	.string	"_signal_buf"
.LASF68:
	.string	"_asctime_buf"
.LASF103:
	.string	"_result"
.LASF16:
	.string	"__wch"
.LASF15:
	.string	"wint_t"
.LASF89:
	.string	"_lock"
.LASF99:
	.string	"_mult"
.LASF140:
	.string	"PM_MODE_APB_MAX"
.LASF150:
	.string	"lock_type"
.LASF82:
	.string	"_write"
.LASF36:
	.string	"__tm_year"
.LASF156:
	.string	"esp_pm_lock_release"
.LASF73:
	.string	"_misc"
.LASF18:
	.string	"sizetype"
.LASF160:
	.string	"s_lock_type_names"
.LASF126:
	.string	"ESP_PM_NO_LIGHT_SLEEP"
.LASF35:
	.string	"__tm_mon"
.LASF45:
	.string	"_atexit"
.LASF163:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/esp32/pm_locks.c"
.LASF63:
	.string	"_gamma_signgam"
.LASF106:
	.string	"_freelist"
.LASF37:
	.string	"__tm_wday"
.LASF102:
	.string	"_mprec"
.LASF11:
	.string	"_LOCK_RECURSIVE_T"
.LASF123:
	.string	"_Bool"
.LASF119:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF96:
	.string	"_iobs"
.LASF162:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF22:
	.string	"_flock_t"
.LASF38:
	.string	"__tm_yday"
.LASF49:
	.string	"__sbuf"
.LASF91:
	.string	"_flags2"
.LASF93:
	.string	"__FILE"
.LASF21:
	.string	"_mbstate_t"
.LASF75:
	.string	"__sFILE"
.LASF90:
	.string	"_mbstate"
.LASF109:
	.string	"_mblen_state"
.LASF46:
	.string	"_ind"
.LASF61:
	.string	"_current_locale"
.LASF62:
	.string	"__cleanup"
.LASF26:
	.string	"_maxwds"
.LASF52:
	.string	"_reent"
.LASF97:
	.string	"_rand48"
.LASF98:
	.string	"_seed"
.LASF19:
	.string	"__count"
.LASF20:
	.string	"__value"
.LASF33:
	.string	"__tm_hour"
.LASF83:
	.string	"_seek"
.LASF136:
	.string	"owner"
.LASF14:
	.string	"_fpos_t"
.LASF53:
	.string	"_errno"
.LASF92:
	.string	"char"
.LASF87:
	.string	"_blksize"
.LASF131:
	.string	"mode"
.LASF51:
	.string	"_size"
.LASF145:
	.string	"MODE_UNLOCK"
.LASF4:
	.string	"short int"
.LASF6:
	.string	"__int32_t"
.LASF44:
	.string	"_is_cxa"
.LASF144:
	.string	"MODE_LOCK"
.LASF25:
	.string	"_next"
.LASF108:
	.string	"_strtok_last"
.LASF43:
	.string	"_fntypes"
.LASF107:
	.string	"_misc_reent"
.LASF1:
	.string	"short unsigned int"
.LASF100:
	.string	"_add"
.LASF23:
	.string	"__ULong"
.LASF113:
	.string	"_getdate_err"
.LASF60:
	.string	"_current_category"
.LASF120:
	.string	"uint32_t"
.LASF152:
	.string	"esp_pm_lock_create"
.LASF137:
	.string	"portMUX_TYPE"
.LASF122:
	.string	"esp_err_t"
.LASF28:
	.string	"_wds"
.LASF94:
	.string	"_glue"
.LASF128:
	.string	"esp_pm_lock_handle_t"
.LASF59:
	.string	"__sdidinit"
.LASF112:
	.string	"_l64a_buf"
.LASF69:
	.string	"_sig_func"
.LASF149:
	.string	"slh_first"
.LASF86:
	.string	"_nbuf"
.LASF154:
	.string	"handle"
.LASF39:
	.string	"__tm_isdst"
.LASF67:
	.string	"_localtime_buf"
.LASF32:
	.string	"__tm_min"
.LASF66:
	.string	"_r48"
.LASF111:
	.string	"_mbtowc_state"
.LASF105:
	.string	"_p5s"
.LASF124:
	.string	"ESP_PM_CPU_FREQ_MAX"
.LASF34:
	.string	"__tm_mday"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
