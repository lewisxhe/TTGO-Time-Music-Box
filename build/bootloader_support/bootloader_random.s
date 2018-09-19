	.file	"bootloader_random.c"
	.text
.Ltext0:
	.section	.text.bootloader_fill_random,"ax",@progbits
	.align	4
	.global	bootloader_fill_random
	.type	bootloader_fill_random, @function
bootloader_fill_random:
.LFB13:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_random.c"
	.loc 1 29 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
.LBB121:
	.loc 1 36 0
	movi.n	a4, 0
	j	.L2
.LVL2:
.L5:
	.loc 1 37 0
	beqz.n	a4, .L3
	.loc 1 37 0 is_stmt 0 discriminator 1
	extui	a8, a5, 0, 2
	bnez.n	a8, .L4
.L3:
	.loc 1 53 0 is_stmt 1
	call8	esp_random
.LVL3:
.L4:
	.loc 1 57 0 discriminator 2
	add.n	a5, a2, a5
	srai	a8, a4, 31
	extui	a9, a8, 30, 2
	add.n	a8, a4, a9
	extui	a8, a8, 0, 2
	sub	a8, a8, a9
	slli	a8, a8, 3
	ssr	a8
	srl	a8, a10
	s8i	a8, a5, 0
	.loc 1 36 0 discriminator 2
	addi.n	a4, a4, 1
.LVL4:
.L2:
	.loc 1 36 0 is_stmt 0 discriminator 1
	mov.n	a5, a4
	bltu	a4, a3, .L5
.LBE121:
	.loc 1 59 0 is_stmt 1
	retw.n
.LFE13:
	.size	bootloader_fill_random, .-bootloader_fill_random
	.section	.text.bootloader_random_enable,"ax",@progbits
	.literal_position
	.literal .LC0, 1072693452
	.literal .LC1, 32768
	.literal .LC2, 1072988328
	.literal .LC3, 1073741823
	.literal .LC4, -2147483648
	.literal .LC5, 536870912
	.literal .LC6, 1072990252
	.literal .LC7, 1072693440
	.literal .LC8, 1073111084
	.literal .LC9, -1381126739
	.literal .LC10, 1073111088
	.literal .LC11, 1073111092
	.literal .LC12, 1073111096
	.literal .LC13, 1072990220
	.literal .LC14, 786432
	.literal .LC15, 1072990208
	.literal .LC16, 134217728
	.literal .LC17, 1072990352
	.literal .LC18, 268435456
	.literal .LC19, 1073111056
	.literal .LC20, -32641
	.literal .LC21, 1073111064
	.literal .LC22, -16711681
	.literal .LC23, 655360
	.literal .LC24, -33554433
	.literal .LC25, 1073017008
	.literal .LC26, -4033
	.literal .LC27, 67108864
	.literal .LC28, 1073017000
	.literal .LC29, 1073016840
	.align	4
	.global	bootloader_random_enable
	.type	bootloader_random_enable, @function
bootloader_random_enable:
.LFB14:
	.loc 1 62 0
	entry	sp, 32
.LCFI1:
.LVL5:
.LBB122:
.LBB123:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 172 0
	l32r	a3, .LC0
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL6:
.LBE123:
.LBE122:
	.loc 1 66 0
	l32r	a2, .LC1
	or	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LBB124:
.LBB125:
	.loc 1 74 0
	l32r	a2, .LC2
	memw
	l32i.n	a8, a2, 0
.LBE125:
	l32r	a3, .LC3
	and	a8, a8, a3
	l32r	a3, .LC4
	or	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
.LBE124:
.LBB126:
.LBB127:
	.loc 1 75 0
	memw
	l32i.n	a4, a2, 0
.LBE127:
	l32r	a3, .LC5
	or	a3, a4, a3
	memw
	s32i.n	a3, a2, 0
.LBE126:
.LBB128:
.LBB129:
	.loc 1 76 0
	l32r	a2, .LC6
	memw
	l32i.n	a8, a2, 0
.LBE129:
	movi.n	a3, 0x10
	or	a8, a8, a3
	memw
	s32i.n	a8, a2, 0
.LVL7:
.LBE128:
.LBB130:
.LBB131:
	.loc 2 172 0
	l32r	a4, .LC7
	mov.n	a10, a4
	call8	esp_dport_access_reg_read
.LVL8:
.LBE131:
.LBE130:
	.loc 1 78 0
	or	a10, a10, a3
	memw
	s32i.n	a10, a4, 0
.LBB132:
.LBB133:
	.loc 1 79 0
	memw
	l32i.n	a4, a2, 0
.LBE133:
	movi	a8, -0x101
	and	a8, a4, a8
	memw
	s32i.n	a8, a2, 0
.LBE132:
.LBB134:
.LBB135:
	.loc 1 80 0
	memw
	l32i.n	a4, a2, 0
.LBE135:
	movi	a8, -0x201
	and	a8, a4, a8
	memw
	s32i.n	a8, a2, 0
.LBE134:
.LBB136:
	.loc 1 85 0
	l32r	a2, .LC9
	l32r	a4, .LC8
	memw
	s32i.n	a2, a4, 0
.LBE136:
.LBB137:
	.loc 1 86 0
	l32r	a4, .LC10
	memw
	s32i.n	a2, a4, 0
.LBE137:
.LBB138:
	.loc 1 87 0
	l32r	a4, .LC11
	memw
	s32i.n	a2, a4, 0
.LBE138:
.LBB139:
	.loc 1 88 0
	l32r	a4, .LC12
	memw
	s32i.n	a2, a4, 0
.LBE139:
.LBB140:
.LBB141:
	.loc 1 90 0
	l32r	a8, .LC13
	memw
	l32i.n	a4, a8, 0
.LBE141:
	l32r	a2, .LC14
	or	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE140:
.LBB142:
.LBB143:
	.loc 1 91 0
	l32r	a8, .LC15
	memw
	l32i.n	a4, a8, 0
.LBE143:
	l32r	a2, .LC16
	or	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE142:
.LBB144:
.LBB145:
	.loc 1 92 0
	l32r	a8, .LC17
	memw
	l32i.n	a4, a8, 0
.LBE145:
	l32r	a2, .LC18
	or	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE144:
.LBB146:
.LBB147:
	.loc 1 93 0
	l32r	a8, .LC19
	memw
	l32i.n	a4, a8, 0
.LBE147:
	movi.n	a2, 4
	or	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE146:
.LBB148:
.LBB149:
	.loc 1 94 0
	memw
	l32i.n	a9, a8, 0
.LBE149:
	l32r	a2, .LC20
	and	a9, a9, a2
	movi	a2, 0x200
	or	a2, a9, a2
	memw
	s32i.n	a2, a8, 0
.LBE148:
.LBB150:
.LBB151:
	.loc 1 96 0
	l32r	a10, .LC21
	memw
	l32i.n	a4, a10, 0
.LBE151:
	movi	a2, -0x100
	and	a2, a4, a2
	movi.n	a9, 8
	or	a2, a2, a9
	memw
	s32i.n	a2, a10, 0
.LBE150:
.LBB152:
.LBB153:
	.loc 1 97 0
	memw
	l32i.n	a11, a10, 0
.LBE153:
	l32r	a2, .LC22
	and	a11, a11, a2
	l32r	a2, .LC23
	or	a2, a11, a2
	memw
	s32i.n	a2, a10, 0
.LBE152:
.LBB154:
.LBB155:
	.loc 1 98 0
	memw
	l32i.n	a4, a8, 0
.LBE155:
	movi.n	a2, -0x19
	and	a2, a4, a2
	memw
	s32i.n	a2, a8, 0
.LBE154:
.LBB156:
.LBB157:
	.loc 1 99 0
	memw
	l32i.n	a10, a8, 0
.LBE157:
	movi.n	a2, 0x20
	or	a10, a10, a2
	memw
	s32i.n	a10, a8, 0
.LBE156:
.LBB158:
.LBB159:
	.loc 1 100 0
	memw
	l32i.n	a4, a8, 0
.LBE159:
	l32r	a10, .LC24
	and	a10, a4, a10
	memw
	s32i.n	a10, a8, 0
.LBE158:
.LBB160:
.LBB161:
	.loc 1 102 0
	l32r	a12, .LC25
	memw
	l32i.n	a11, a12, 0
.LBE161:
	l32r	a10, .LC26
	and	a11, a11, a10
	movi	a10, 0x500
	or	a10, a11, a10
	memw
	s32i.n	a10, a12, 0
.LBE160:
.LBB162:
.LBB163:
	.loc 1 104 0
	memw
	l32i.n	a4, a8, 0
.LBE163:
	l32r	a10, .LC27
	or	a10, a4, a10
	memw
	s32i.n	a10, a8, 0
.LBE162:
.LBB164:
.LBB165:
	.loc 1 106 0
	l32r	a8, .LC28
	memw
	l32i.n	a4, a8, 0
.LBE165:
	movi.n	a10, -2
	and	a10, a4, a10
	memw
	s32i.n	a10, a8, 0
.LBE164:
.LBB166:
.LBB167:
	.loc 1 107 0
	memw
	l32i.n	a10, a8, 0
.LBE167:
	or	a10, a10, a2
	memw
	s32i.n	a10, a8, 0
.LBE166:
.LBB168:
.LBB169:
	.loc 1 108 0
	memw
	l32i.n	a4, a8, 0
.LBE169:
	or	a3, a4, a3
	memw
	s32i.n	a3, a8, 0
.LBE168:
.LBB170:
.LBB171:
	.loc 1 109 0
	memw
	l32i.n	a3, a8, 0
.LBE171:
	or	a9, a3, a9
	memw
	s32i.n	a9, a8, 0
.LBE170:
.LBB172:
.LBB173:
	.loc 1 110 0
	l32r	a3, .LC29
	memw
	l32i.n	a4, a3, 0
.LBE173:
	or	a2, a4, a2
	memw
	s32i.n	a2, a3, 0
	retw.n
.LBE172:
.LFE14:
	.size	bootloader_random_enable, .-bootloader_random_enable
	.section	.text.bootloader_random_disable,"ax",@progbits
	.literal_position
	.literal .LC30, 1072693440
	.literal .LC31, 1073017000
	.literal .LC32, 1073016840
	.literal .LC33, 1072990208
	.literal .LC34, -134217729
	.literal .LC35, 1072990352
	.literal .LC36, -268435457
	.literal .LC37, 1072990252
	.literal .LC38, 1073111056
	.literal .LC39, -67108901
	.literal .LC40, 1072990220
	.literal .LC41, -786433
	.literal .LC42, 1073111064
	.literal .LC43, -16711681
	.literal .LC44, 524288
	.literal .LC45, 1072693444
	.literal .LC46, 1072988328
	.literal .LC47, -536870913
	.literal .LC48, 1073741823
	.align	4
	.global	bootloader_random_disable
	.type	bootloader_random_disable, @function
bootloader_random_disable:
.LFB15:
	.loc 1 114 0
	entry	sp, 32
.LCFI2:
.LVL9:
.LBB174:
.LBB175:
	.loc 2 172 0
	l32r	a3, .LC30
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL10:
.LBE175:
.LBE174:
	.loc 1 116 0
	movi.n	a2, -0x11
	and	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LBB176:
.LBB177:
	.loc 1 121 0
	l32r	a8, .LC31
	memw
	l32i.n	a9, a8, 0
.LBE177:
	movi.n	a3, -2
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE176:
.LBB178:
.LBB179:
	.loc 1 122 0
	memw
	l32i.n	a9, a8, 0
.LBE179:
	movi	a3, -0x21
	and	a9, a9, a3
	memw
	s32i.n	a9, a8, 0
.LBE178:
.LBB180:
.LBB181:
	.loc 1 123 0
	memw
	l32i.n	a10, a8, 0
.LBE181:
	movi.n	a9, -9
	and	a9, a10, a9
	memw
	s32i.n	a9, a8, 0
.LBE180:
.LBB182:
.LBB183:
	.loc 1 124 0
	memw
	l32i.n	a9, a8, 0
.LBE183:
	and	a9, a9, a2
	memw
	s32i.n	a9, a8, 0
.LBE182:
.LBB184:
.LBB185:
	.loc 1 125 0
	l32r	a8, .LC32
	memw
	l32i.n	a9, a8, 0
.LBE185:
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE184:
.LBB186:
.LBB187:
	.loc 1 128 0
	l32r	a8, .LC33
	memw
	l32i.n	a9, a8, 0
.LBE187:
	l32r	a3, .LC34
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE186:
.LBB188:
.LBB189:
	.loc 1 129 0
	l32r	a8, .LC35
	memw
	l32i.n	a9, a8, 0
.LBE189:
	l32r	a3, .LC36
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE188:
.LBB190:
.LBB191:
	.loc 1 132 0
	l32r	a8, .LC37
	memw
	l32i.n	a3, a8, 0
.LBE191:
	and	a3, a3, a2
	memw
	s32i.n	a3, a8, 0
.LBE190:
.LBB192:
.LBB193:
	.loc 1 133 0
	l32r	a8, .LC38
	memw
	l32i.n	a9, a8, 0
.LBE193:
	l32r	a3, .LC39
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE192:
.LBB194:
.LBB195:
	.loc 1 135 0
	l32r	a8, .LC40
	memw
	l32i.n	a9, a8, 0
.LBE195:
	l32r	a3, .LC41
	and	a3, a9, a3
	memw
	s32i.n	a3, a8, 0
.LBE194:
.LBB196:
.LBB197:
	.loc 1 136 0
	l32r	a9, .LC42
	memw
	l32i.n	a8, a9, 0
.LBE197:
	l32r	a3, .LC43
	and	a8, a8, a3
	l32r	a3, .LC44
	or	a3, a8, a3
	memw
	s32i.n	a3, a9, 0
.LVL11:
.LBE196:
.LBB198:
.LBB199:
	.loc 2 172 0
	l32r	a3, .LC45
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL12:
.LBE199:
.LBE198:
	.loc 1 139 0
	movi.n	a8, 0x10
	or	a10, a10, a8
	memw
	s32i.n	a10, a3, 0
.LVL13:
.LBB200:
.LBB201:
	.loc 2 172 0
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL14:
.LBE201:
.LBE200:
	.loc 1 140 0
	and	a10, a10, a2
	memw
	s32i.n	a10, a3, 0
.LBB202:
.LBB203:
	.loc 1 143 0
	l32r	a2, .LC46
	memw
	l32i.n	a8, a2, 0
.LBE203:
	l32r	a3, .LC47
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
.LBE202:
.LBB204:
.LBB205:
	.loc 1 144 0
	memw
	l32i.n	a8, a2, 0
.LBE205:
	l32r	a3, .LC48
	and	a3, a8, a3
	memw
	s32i.n	a3, a2, 0
	retw.n
.LBE204:
.LFE15:
	.size	bootloader_random_disable, .-bootloader_random_disable
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI1-.LFB14
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI2-.LFB15
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
	.text
.Letext0:
	.file 3 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_system.h"
	.file 7 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x29b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.4byte	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x12
	.4byte	0x57
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x1a
	.4byte	0x37
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x15
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x2d
	.4byte	0x65
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF16
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x2
	.byte	0xa7
	.4byte	0x89
	.byte	0x3
	.4byte	0xd5
	.uleb128 0x7
	.string	"reg"
	.byte	0x2
	.byte	0xa7
	.4byte	0x89
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x141
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1c
	.4byte	0xa2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1c
	.4byte	0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1e
	.4byte	0x141
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1f
	.4byte	0x89
	.4byte	.LLST0
	.uleb128 0xc
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x24
	.4byte	0x25
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0x288
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7e
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bc
	.uleb128 0x10
	.4byte	.LASF24
	.4byte	0x1cc
	.uleb128 0x11
	.4byte	0xb9
	.4byte	.LBB122
	.4byte	.LBE122-.LBB122
	.byte	0x1
	.byte	0x42
	.4byte	0x192
	.uleb128 0x12
	.4byte	0xc9
	.4byte	0x3ff000cc
	.uleb128 0x13
	.4byte	.LVL6
	.4byte	0x293
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xb9
	.4byte	.LBB130
	.4byte	.LBE130-.LBB130
	.byte	0x1
	.byte	0x4e
	.uleb128 0x12
	.4byte	0xc9
	.4byte	0x3ff000c0
	.uleb128 0x13
	.4byte	.LVL8
	.4byte	0x293
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xab
	.4byte	0x1cc
	.uleb128 0x17
	.4byte	0x9b
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.4byte	0x1bc
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x1
	.byte	0x71
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x273
	.uleb128 0x10
	.4byte	.LASF24
	.4byte	0x283
	.uleb128 0x11
	.4byte	0xb9
	.4byte	.LBB174
	.4byte	.LBE174-.LBB174
	.byte	0x1
	.byte	0x74
	.4byte	0x21c
	.uleb128 0x12
	.4byte	0xc9
	.4byte	0x3ff000c0
	.uleb128 0x13
	.4byte	.LVL10
	.4byte	0x293
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0xb9
	.4byte	.LBB198
	.4byte	.LBE198-.LBB198
	.byte	0x1
	.byte	0x8b
	.4byte	0x249
	.uleb128 0x12
	.4byte	0xc9
	.4byte	0x3ff000c4
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x293
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0xb9
	.4byte	.LBB200
	.4byte	.LBE200-.LBB200
	.byte	0x1
	.byte	0x8c
	.uleb128 0x12
	.4byte	0xc9
	.4byte	0x3ff000c4
	.uleb128 0x13
	.4byte	.LVL14
	.4byte	0x293
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0xab
	.4byte	0x283
	.uleb128 0x17
	.4byte	0x9b
	.byte	0x19
	.byte	0
	.uleb128 0x18
	.4byte	0x273
	.uleb128 0x19
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x6
	.byte	0x8a
	.uleb128 0x19
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x7
	.byte	0x1e
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"DPORT_READ_PERI_REG"
.LASF4:
	.string	"__uint8_t"
.LASF3:
	.string	"size_t"
.LASF20:
	.string	"random"
.LASF24:
	.string	"__func__"
.LASF25:
	.string	"esp_random"
.LASF28:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bootloader_support/src/bootloader_random.c"
.LASF5:
	.string	"unsigned char"
.LASF26:
	.string	"esp_dport_access_reg_read"
.LASF14:
	.string	"long unsigned int"
.LASF21:
	.string	"bootloader_fill_random"
.LASF1:
	.string	"short unsigned int"
.LASF7:
	.string	"__uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF27:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF13:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF6:
	.string	"short int"
.LASF17:
	.string	"buffer"
.LASF29:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bootloader_support"
.LASF11:
	.string	"uint32_t"
.LASF12:
	.string	"long int"
.LASF19:
	.string	"buffer_bytes"
.LASF23:
	.string	"bootloader_random_disable"
.LASF2:
	.string	"signed char"
.LASF22:
	.string	"bootloader_random_enable"
.LASF16:
	.string	"_Bool"
.LASF18:
	.string	"length"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
