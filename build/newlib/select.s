	.file	"select.c"
	.text
.Ltext0:
	.section	.text.select,"ax",@progbits
	.align	4
	.global	select
	.type	select, @function
select:
.LFB14:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/select.c"
	.loc 1 43 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 62 0
	mov.n	a14, a6
	mov.n	a13, a5
	mov.n	a12, a4
	mov.n	a11, a3
	mov.n	a10, a2
	call8	esp_vfs_select
.LVL1:
	.loc 1 64 0
	mov.n	a2, a10
.LVL2:
	retw.n
.LFE14:
	.size	select, .-select
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
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/sys/time.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/vfs/include/esp_vfs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x195
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
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
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x7a
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0xf4
	.4byte	0x5d
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x8
	.byte	0x2
	.byte	0xfc
	.4byte	0xa8
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0xfd
	.4byte	0xa8
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x84
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0x64
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xfe
	.4byte	0x8f
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x11d
	.4byte	0x5d
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x8
	.byte	0x3
	.byte	0x11
	.4byte	0xf4
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x12
	.4byte	0x72
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.byte	0x13
	.4byte	0xc3
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb8
	.uleb128 0xa
	.byte	0x4
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2a
	.4byte	0x41
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18c
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2a
	.4byte	0x41
	.4byte	.LLST0
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2a
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2a
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2a
	.4byte	0xfb
	.uleb128 0x1
	.byte	0x55
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2a
	.4byte	0x101
	.uleb128 0x1
	.byte	0x56
	.uleb128 0xe
	.4byte	.LVL1
	.4byte	0x18c
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x146
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
.LASF22:
	.string	"writefds"
.LASF21:
	.string	"readfds"
.LASF26:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/newlib/select.c"
.LASF13:
	.string	"_types_fd_set"
.LASF28:
	.string	"select"
.LASF12:
	.string	"fd_mask"
.LASF25:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF29:
	.string	"esp_vfs_select"
.LASF6:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF15:
	.string	"timeval"
.LASF4:
	.string	"unsigned int"
.LASF10:
	.string	"char"
.LASF11:
	.string	"time_t"
.LASF18:
	.string	"tv_usec"
.LASF8:
	.string	"sizetype"
.LASF17:
	.string	"tv_sec"
.LASF5:
	.string	"long long int"
.LASF24:
	.string	"timeout"
.LASF14:
	.string	"suseconds_t"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\newlib"
.LASF23:
	.string	"errorfds"
.LASF7:
	.string	"long int"
.LASF16:
	.string	"fds_bits"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"_Bool"
.LASF20:
	.string	"nfds"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
