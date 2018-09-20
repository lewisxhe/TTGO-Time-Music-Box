	.file	"runtime.c"
	.text
.Ltext0:
	.section	.text._sodium_runtime_arm_cpu_features,"ax",@progbits
	.align	4
	.type	_sodium_runtime_arm_cpu_features, @function
_sodium_runtime_arm_cpu_features:
.LFB12:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/sodium/runtime.c"
	.loc 1 43 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 45 0
	movi.n	a8, 0
	s32i.n	a8, a2, 4
	.loc 1 63 0
	movi.n	a2, -1
.LVL1:
	retw.n
.LFE12:
	.size	_sodium_runtime_arm_cpu_features, .-_sodium_runtime_arm_cpu_features
	.section	.text._cpuid,"ax",@progbits
	.align	4
	.type	_cpuid, @function
_cpuid:
.LFB13:
	.loc 1 67 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 104 0
	movi.n	a8, 0
	s32i.n	a8, a2, 12
	s32i.n	a8, a2, 8
	s32i.n	a8, a2, 4
	s32i.n	a8, a2, 0
	retw.n
.LFE13:
	.size	_cpuid, .-_cpuid
	.section	.text._sodium_runtime_intel_cpu_features,"ax",@progbits
	.align	4
	.type	_sodium_runtime_intel_cpu_features, @function
_sodium_runtime_intel_cpu_features:
.LFB14:
	.loc 1 110 0
.LVL3:
	entry	sp, 48
.LCFI2:
	.loc 1 114 0
	movi.n	a11, 0
	mov.n	a10, sp
	call8	_cpuid
.LVL4:
	.loc 1 115 0
	l32i.n	a8, sp, 0
.LVL5:
	beqz.n	a8, .L5
	.loc 1 118 0
	movi.n	a11, 1
	mov.n	a10, sp
	call8	_cpuid
.LVL6:
	.loc 1 122 0
	movi.n	a8, 0
	s32i.n	a8, a2, 8
	.loc 1 128 0
	s32i.n	a8, a2, 12
	.loc 1 134 0
	s32i.n	a8, a2, 16
	.loc 1 140 0
	s32i.n	a8, a2, 20
	.loc 1 143 0
	s32i.n	a8, a2, 24
	.loc 1 169 0
	s32i.n	a8, a2, 28
	.loc 1 183 0
	s32i.n	a8, a2, 32
	.loc 1 184 0
	s32i.n	a8, a2, 36
	.loc 1 187 0
	mov.n	a2, a8
.LVL7:
	retw.n
.LVL8:
.L5:
	.loc 1 116 0
	movi.n	a2, -1
.LVL9:
	.loc 1 188 0
	retw.n
.LFE14:
	.size	_sodium_runtime_intel_cpu_features, .-_sodium_runtime_intel_cpu_features
	.section	.text._sodium_runtime_get_cpu_features,"ax",@progbits
	.literal_position
	.literal .LC0, _cpu_features
	.align	4
	.global	_sodium_runtime_get_cpu_features
	.type	_sodium_runtime_get_cpu_features, @function
_sodium_runtime_get_cpu_features:
.LFB15:
	.loc 1 192 0
	entry	sp, 32
.LCFI3:
.LVL10:
	.loc 1 195 0
	l32r	a3, .LC0
	mov.n	a10, a3
	call8	_sodium_runtime_arm_cpu_features
.LVL11:
	mov.n	a2, a10
.LVL12:
	.loc 1 196 0
	mov.n	a10, a3
	call8	_sodium_runtime_intel_cpu_features
.LVL13:
	.loc 1 197 0
	movi.n	a8, 1
	s32i.n	a8, a3, 0
	.loc 1 200 0
	and	a2, a2, a10
.LVL14:
	retw.n
.LFE15:
	.size	_sodium_runtime_get_cpu_features, .-_sodium_runtime_get_cpu_features
	.section	.text.sodium_runtime_has_neon,"ax",@progbits
	.literal_position
	.literal .LC1, _cpu_features
	.align	4
	.global	sodium_runtime_has_neon
	.type	sodium_runtime_has_neon, @function
sodium_runtime_has_neon:
.LFB16:
	.loc 1 204 0
	entry	sp, 32
.LCFI4:
	.loc 1 206 0
	l32r	a8, .LC1
	l32i.n	a2, a8, 4
	retw.n
.LFE16:
	.size	sodium_runtime_has_neon, .-sodium_runtime_has_neon
	.section	.text.sodium_runtime_has_sse2,"ax",@progbits
	.literal_position
	.literal .LC2, _cpu_features
	.align	4
	.global	sodium_runtime_has_sse2
	.type	sodium_runtime_has_sse2, @function
sodium_runtime_has_sse2:
.LFB17:
	.loc 1 210 0
	entry	sp, 32
.LCFI5:
	.loc 1 212 0
	l32r	a8, .LC2
	l32i.n	a2, a8, 8
	retw.n
.LFE17:
	.size	sodium_runtime_has_sse2, .-sodium_runtime_has_sse2
	.section	.text.sodium_runtime_has_sse3,"ax",@progbits
	.literal_position
	.literal .LC3, _cpu_features
	.align	4
	.global	sodium_runtime_has_sse3
	.type	sodium_runtime_has_sse3, @function
sodium_runtime_has_sse3:
.LFB18:
	.loc 1 216 0
	entry	sp, 32
.LCFI6:
	.loc 1 218 0
	l32r	a8, .LC3
	l32i.n	a2, a8, 12
	retw.n
.LFE18:
	.size	sodium_runtime_has_sse3, .-sodium_runtime_has_sse3
	.section	.text.sodium_runtime_has_ssse3,"ax",@progbits
	.literal_position
	.literal .LC4, _cpu_features
	.align	4
	.global	sodium_runtime_has_ssse3
	.type	sodium_runtime_has_ssse3, @function
sodium_runtime_has_ssse3:
.LFB19:
	.loc 1 222 0
	entry	sp, 32
.LCFI7:
	.loc 1 224 0
	l32r	a8, .LC4
	l32i.n	a2, a8, 16
	retw.n
.LFE19:
	.size	sodium_runtime_has_ssse3, .-sodium_runtime_has_ssse3
	.section	.text.sodium_runtime_has_sse41,"ax",@progbits
	.literal_position
	.literal .LC5, _cpu_features
	.align	4
	.global	sodium_runtime_has_sse41
	.type	sodium_runtime_has_sse41, @function
sodium_runtime_has_sse41:
.LFB20:
	.loc 1 228 0
	entry	sp, 32
.LCFI8:
	.loc 1 230 0
	l32r	a8, .LC5
	l32i.n	a2, a8, 20
	retw.n
.LFE20:
	.size	sodium_runtime_has_sse41, .-sodium_runtime_has_sse41
	.section	.text.sodium_runtime_has_avx,"ax",@progbits
	.literal_position
	.literal .LC6, _cpu_features
	.align	4
	.global	sodium_runtime_has_avx
	.type	sodium_runtime_has_avx, @function
sodium_runtime_has_avx:
.LFB21:
	.loc 1 234 0
	entry	sp, 32
.LCFI9:
	.loc 1 236 0
	l32r	a8, .LC6
	l32i.n	a2, a8, 24
	retw.n
.LFE21:
	.size	sodium_runtime_has_avx, .-sodium_runtime_has_avx
	.section	.text.sodium_runtime_has_avx2,"ax",@progbits
	.literal_position
	.literal .LC7, _cpu_features
	.align	4
	.global	sodium_runtime_has_avx2
	.type	sodium_runtime_has_avx2, @function
sodium_runtime_has_avx2:
.LFB22:
	.loc 1 240 0
	entry	sp, 32
.LCFI10:
	.loc 1 242 0
	l32r	a8, .LC7
	l32i.n	a2, a8, 28
	retw.n
.LFE22:
	.size	sodium_runtime_has_avx2, .-sodium_runtime_has_avx2
	.section	.text.sodium_runtime_has_pclmul,"ax",@progbits
	.literal_position
	.literal .LC8, _cpu_features
	.align	4
	.global	sodium_runtime_has_pclmul
	.type	sodium_runtime_has_pclmul, @function
sodium_runtime_has_pclmul:
.LFB23:
	.loc 1 246 0
	entry	sp, 32
.LCFI11:
	.loc 1 248 0
	l32r	a8, .LC8
	l32i.n	a2, a8, 32
	retw.n
.LFE23:
	.size	sodium_runtime_has_pclmul, .-sodium_runtime_has_pclmul
	.section	.text.sodium_runtime_has_aesni,"ax",@progbits
	.literal_position
	.literal .LC9, _cpu_features
	.align	4
	.global	sodium_runtime_has_aesni
	.type	sodium_runtime_has_aesni, @function
sodium_runtime_has_aesni:
.LFB24:
	.loc 1 252 0
	entry	sp, 32
.LCFI12:
	.loc 1 254 0
	l32r	a8, .LC9
	l32i.n	a2, a8, 36
	retw.n
.LFE24:
	.size	sodium_runtime_has_aesni, .-sodium_runtime_has_aesni
	.section	.bss._cpu_features,"aw",@nobits
	.align	4
	.type	_cpu_features, @object
	.size	_cpu_features, 40
_cpu_features:
	.zero	40
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI1-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI2-.LFB14
	.byte	0xe
	.uleb128 0x30
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI3-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI5-.LFB17
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI6-.LFB18
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI7-.LFB19
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI8-.LFB20
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI9-.LFB21
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI10-.LFB22
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI11-.LFB23
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI12-.LFB24
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x30f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x28
	.byte	0x1
	.byte	0xa
	.4byte	0xfa
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x1
	.byte	0xb
	.4byte	0x21
	.byte	0
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0xc
	.4byte	0x21
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0xd
	.4byte	0x21
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0xe
	.4byte	0x21
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0xf
	.4byte	0x21
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x10
	.4byte	0x21
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x11
	.4byte	0x21
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x12
	.4byte	0x21
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x13
	.4byte	0x21
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x14
	.4byte	0x21
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1
	.byte	0x15
	.4byte	0x75
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2a
	.4byte	0x21
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12e
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2a
	.4byte	0x134
	.4byte	.LLST0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xfa
	.uleb128 0xa
	.4byte	0x12e
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x42
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x169
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0x42
	.4byte	0x169
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x1
	.byte	0x42
	.4byte	0x16f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x28
	.uleb128 0xa
	.4byte	0x28
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x6d
	.4byte	0x21
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e7
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6d
	.4byte	0x134
	.4byte	.LLST1
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x6f
	.4byte	0x1e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"id"
	.byte	0x1
	.byte	0x70
	.4byte	0x28
	.4byte	.LLST2
	.uleb128 0xf
	.4byte	.LVL4
	.4byte	0x139
	.4byte	0x1d1
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.4byte	.LVL6
	.4byte	0x139
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x28
	.4byte	0x1f7
	.uleb128 0x13
	.4byte	0x60
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0xbf
	.4byte	0x21
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x244
	.uleb128 0xe
	.string	"ret"
	.byte	0x1
	.byte	0xc1
	.4byte	0x21
	.4byte	.LLST3
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x105
	.4byte	0x233
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x11
	.4byte	.LVL13
	.4byte	0x174
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF26
	.byte	0x1
	.byte	0xcb
	.4byte	0x21
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0xd1
	.4byte	0x21
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0xd7
	.4byte	0x21
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0xdd
	.4byte	0x21
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0xe3
	.4byte	0x21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0xe9
	.4byte	0x21
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0xef
	.4byte	0x21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF33
	.byte	0x1
	.byte	0xf5
	.4byte	0x21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF34
	.byte	0x1
	.byte	0xfb
	.4byte	0x21
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x17
	.4byte	0xfa
	.uleb128 0x5
	.byte	0x3
	.4byte	_cpu_features
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
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
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"has_avx"
.LASF35:
	.string	"_cpu_features"
.LASF19:
	.string	"has_pclmul"
.LASF34:
	.string	"sodium_runtime_has_aesni"
.LASF18:
	.string	"has_avx2"
.LASF27:
	.string	"sodium_runtime_has_sse2"
.LASF14:
	.string	"has_sse3"
.LASF16:
	.string	"has_sse41"
.LASF40:
	.string	"_cpuid"
.LASF21:
	.string	"cpu_features"
.LASF15:
	.string	"has_ssse3"
.LASF24:
	.string	"_sodium_runtime_arm_cpu_features"
.LASF3:
	.string	"unsigned char"
.LASF33:
	.string	"sodium_runtime_has_pclmul"
.LASF11:
	.string	"initialized"
.LASF9:
	.string	"long unsigned int"
.LASF29:
	.string	"sodium_runtime_has_ssse3"
.LASF1:
	.string	"short unsigned int"
.LASF41:
	.string	"_sodium_runtime_get_cpu_features"
.LASF26:
	.string	"sodium_runtime_has_neon"
.LASF32:
	.string	"sodium_runtime_has_avx2"
.LASF37:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/libsodium/libsodium/src/libsodium/sodium/runtime.c"
.LASF31:
	.string	"sodium_runtime_has_avx"
.LASF4:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
.LASF28:
	.string	"sodium_runtime_has_sse3"
.LASF30:
	.string	"sodium_runtime_has_sse41"
.LASF6:
	.string	"long long unsigned int"
.LASF39:
	.string	"CPUFeatures"
.LASF23:
	.string	"cpu_info_type"
.LASF25:
	.string	"_sodium_runtime_intel_cpu_features"
.LASF8:
	.string	"sizetype"
.LASF20:
	.string	"has_aesni"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF12:
	.string	"has_neon"
.LASF38:
	.string	"CPUFeatures_"
.LASF7:
	.string	"long int"
.LASF10:
	.string	"char"
.LASF13:
	.string	"has_sse2"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"cpu_info"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
