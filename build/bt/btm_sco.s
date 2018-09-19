	.file	"btm_sco.c"
	.text
.Ltext0:
	.section	.text.BTM_CreateSco,"ax",@progbits
	.align	4
	.global	BTM_CreateSco
	.type	BTM_CreateSco, @function
BTM_CreateSco:
.LFB26:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/btm/btm_sco.c"
	.loc 1 1775 0
.LVL0:
	entry	sp, 32
.LCFI0:
	.loc 1 1777 0
	movi.n	a2, 3
.LVL1:
	retw.n
.LFE26:
	.size	BTM_CreateSco, .-BTM_CreateSco
	.section	.text.BTM_RemoveSco,"ax",@progbits
	.align	4
	.global	BTM_RemoveSco
	.type	BTM_RemoveSco, @function
BTM_RemoveSco:
.LFB27:
	.loc 1 1779 0
.LVL2:
	entry	sp, 32
.LCFI1:
	.loc 1 1781 0
	movi.n	a2, 3
.LVL3:
	retw.n
.LFE27:
	.size	BTM_RemoveSco, .-BTM_RemoveSco
	.section	.text.BTM_SetScoPacketTypes,"ax",@progbits
	.align	4
	.global	BTM_SetScoPacketTypes
	.type	BTM_SetScoPacketTypes, @function
BTM_SetScoPacketTypes:
.LFB28:
	.loc 1 1783 0
.LVL4:
	entry	sp, 32
.LCFI2:
	.loc 1 1785 0
	movi.n	a2, 3
.LVL5:
	retw.n
.LFE28:
	.size	BTM_SetScoPacketTypes, .-BTM_SetScoPacketTypes
	.section	.text.BTM_ReadScoPacketTypes,"ax",@progbits
	.align	4
	.global	BTM_ReadScoPacketTypes
	.type	BTM_ReadScoPacketTypes, @function
BTM_ReadScoPacketTypes:
.LFB29:
	.loc 1 1787 0
.LVL6:
	entry	sp, 32
.LCFI3:
	.loc 1 1789 0
	movi.n	a2, 0
.LVL7:
	retw.n
.LFE29:
	.size	BTM_ReadScoPacketTypes, .-BTM_ReadScoPacketTypes
	.section	.text.BTM_ReadDeviceScoPacketTypes,"ax",@progbits
	.align	4
	.global	BTM_ReadDeviceScoPacketTypes
	.type	BTM_ReadDeviceScoPacketTypes, @function
BTM_ReadDeviceScoPacketTypes:
.LFB30:
	.loc 1 1791 0
	entry	sp, 32
.LCFI4:
	.loc 1 1793 0
	movi.n	a2, 0
	retw.n
.LFE30:
	.size	BTM_ReadDeviceScoPacketTypes, .-BTM_ReadDeviceScoPacketTypes
	.section	.text.BTM_ReadScoHandle,"ax",@progbits
	.literal_position
	.literal .LC0, 65535
	.align	4
	.global	BTM_ReadScoHandle
	.type	BTM_ReadScoHandle, @function
BTM_ReadScoHandle:
.LFB31:
	.loc 1 1795 0
.LVL8:
	entry	sp, 32
.LCFI5:
	.loc 1 1797 0
	l32r	a2, .LC0
.LVL9:
	retw.n
.LFE31:
	.size	BTM_ReadScoHandle, .-BTM_ReadScoHandle
	.section	.text.BTM_ReadScoBdAddr,"ax",@progbits
	.align	4
	.global	BTM_ReadScoBdAddr
	.type	BTM_ReadScoBdAddr, @function
BTM_ReadScoBdAddr:
.LFB32:
	.loc 1 1799 0
.LVL10:
	entry	sp, 32
.LCFI6:
	.loc 1 1801 0
	movi.n	a2, 0
.LVL11:
	retw.n
.LFE32:
	.size	BTM_ReadScoBdAddr, .-BTM_ReadScoBdAddr
	.section	.text.BTM_ReadScoDiscReason,"ax",@progbits
	.literal_position
	.literal .LC1, 65535
	.align	4
	.global	BTM_ReadScoDiscReason
	.type	BTM_ReadScoDiscReason, @function
BTM_ReadScoDiscReason:
.LFB33:
	.loc 1 1803 0
	entry	sp, 32
.LCFI7:
	.loc 1 1805 0
	l32r	a2, .LC1
	retw.n
.LFE33:
	.size	BTM_ReadScoDiscReason, .-BTM_ReadScoDiscReason
	.section	.text.BTM_SetEScoMode,"ax",@progbits
	.align	4
	.global	BTM_SetEScoMode
	.type	BTM_SetEScoMode, @function
BTM_SetEScoMode:
.LFB34:
	.loc 1 1807 0
.LVL12:
	entry	sp, 32
.LCFI8:
	.loc 1 1809 0
	movi.n	a2, 4
.LVL13:
	retw.n
.LFE34:
	.size	BTM_SetEScoMode, .-BTM_SetEScoMode
	.section	.text.BTM_RegForEScoEvts,"ax",@progbits
	.align	4
	.global	BTM_RegForEScoEvts
	.type	BTM_RegForEScoEvts, @function
BTM_RegForEScoEvts:
.LFB35:
	.loc 1 1811 0
.LVL14:
	entry	sp, 32
.LCFI9:
	.loc 1 1813 0
	movi.n	a2, 5
.LVL15:
	retw.n
.LFE35:
	.size	BTM_RegForEScoEvts, .-BTM_RegForEScoEvts
	.section	.text.BTM_ReadEScoLinkParms,"ax",@progbits
	.align	4
	.global	BTM_ReadEScoLinkParms
	.type	BTM_ReadEScoLinkParms, @function
BTM_ReadEScoLinkParms:
.LFB36:
	.loc 1 1815 0
.LVL16:
	entry	sp, 32
.LCFI10:
	.loc 1 1817 0
	movi.n	a2, 4
.LVL17:
	retw.n
.LFE36:
	.size	BTM_ReadEScoLinkParms, .-BTM_ReadEScoLinkParms
	.section	.text.BTM_ChangeEScoLinkParms,"ax",@progbits
	.align	4
	.global	BTM_ChangeEScoLinkParms
	.type	BTM_ChangeEScoLinkParms, @function
BTM_ChangeEScoLinkParms:
.LFB37:
	.loc 1 1819 0
.LVL18:
	entry	sp, 32
.LCFI11:
	.loc 1 1821 0
	movi.n	a2, 4
.LVL19:
	retw.n
.LFE37:
	.size	BTM_ChangeEScoLinkParms, .-BTM_ChangeEScoLinkParms
	.section	.text.BTM_EScoConnRsp,"ax",@progbits
	.align	4
	.global	BTM_EScoConnRsp
	.type	BTM_EScoConnRsp, @function
BTM_EScoConnRsp:
.LFB38:
	.loc 1 1822 0
.LVL20:
	entry	sp, 32
.LCFI12:
	retw.n
.LFE38:
	.size	BTM_EScoConnRsp, .-BTM_EScoConnRsp
	.section	.text.BTM_GetNumScoLinks,"ax",@progbits
	.align	4
	.global	BTM_GetNumScoLinks
	.type	BTM_GetNumScoLinks, @function
BTM_GetNumScoLinks:
.LFB39:
	.loc 1 1824 0
	.loc 1 1824 0
	entry	sp, 32
.LCFI13:
	.loc 1 1826 0
	movi.n	a2, 0
	retw.n
.LFE39:
	.size	BTM_GetNumScoLinks, .-BTM_GetNumScoLinks
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI0-.LFB26
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI1-.LFB27
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI2-.LFB28
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI3-.LFB29
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI4-.LFB30
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI5-.LFB31
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI6-.LFB32
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI7-.LFB33
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI8-.LFB34
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI9-.LFB35
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI10-.LFB36
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI11-.LFB37
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI12-.LFB38
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI13-.LFB39
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE26:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/bt_types.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/include/stack/btm_api.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x740
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF104
	.byte	0xc
	.4byte	.LASF105
	.4byte	.LASF106
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
	.4byte	0x9a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x22
	.4byte	0xa5
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x23
	.4byte	0xb0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x29
	.4byte	0xe7
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF21
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x132
	.4byte	0xfa
	.uleb128 0x6
	.4byte	0xbb
	.4byte	0x10a
	.uleb128 0x7
	.4byte	0x85
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x14e
	.4byte	0x11c
	.uleb128 0x6
	.4byte	0xbb
	.4byte	0x12c
	.uleb128 0x7
	.4byte	0x85
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x137
	.uleb128 0xa
	.4byte	0xc6
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x31
	.4byte	0x1e6
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x9
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0xa
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0xb
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0xd
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0xe
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0xf
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x11
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x12
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x13
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x15
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x16
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x17
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x19
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x1a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x5
	.byte	0x4f
	.4byte	0x9a
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x3b8
	.4byte	0xbb
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x3f3
	.4byte	0x12c
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x40a
	.4byte	0xbb
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.2byte	0x40d
	.4byte	0x26d
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x40e
	.4byte	0xd1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x40f
	.4byte	0xd1
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x410
	.4byte	0xc6
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x411
	.4byte	0xc6
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x412
	.4byte	0xc6
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x413
	.4byte	0xbb
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x414
	.4byte	0x215
	.uleb128 0xd
	.byte	0x6
	.byte	0x5
	.2byte	0x416
	.4byte	0x2aa
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x417
	.4byte	0xc6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x418
	.4byte	0xc6
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x419
	.4byte	0xbb
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x41a
	.4byte	0x279
	.uleb128 0xd
	.byte	0xe
	.byte	0x5
	.2byte	0x41d
	.4byte	0x31b
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x41e
	.4byte	0xc6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x41f
	.4byte	0xc6
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x420
	.4byte	0xee
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x421
	.4byte	0xbb
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x422
	.4byte	0xbb
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x423
	.4byte	0xbb
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x424
	.4byte	0xbb
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x425
	.4byte	0x2b6
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.2byte	0x427
	.4byte	0x38c
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x428
	.4byte	0xc6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x429
	.4byte	0xc6
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x42a
	.4byte	0xc6
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x42b
	.4byte	0xee
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x42c
	.4byte	0xbb
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x42d
	.4byte	0xbb
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x42e
	.4byte	0xbb
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x42f
	.4byte	0x327
	.uleb128 0xd
	.byte	0xc
	.byte	0x5
	.2byte	0x431
	.4byte	0x3d6
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x432
	.4byte	0xc6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x433
	.4byte	0xee
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x434
	.4byte	0x110
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x435
	.4byte	0x1f1
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x436
	.4byte	0x398
	.uleb128 0xf
	.byte	0x10
	.byte	0x5
	.2byte	0x438
	.4byte	0x404
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x439
	.4byte	0x38c
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x43a
	.4byte	0x3d6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x43b
	.4byte	0x3e2
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x440
	.4byte	0x41c
	.uleb128 0x9
	.4byte	0x42c
	.uleb128 0xa
	.4byte	0x209
	.uleb128 0xa
	.4byte	0x42c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x404
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x410
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1fd
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x6eb
	.4byte	0x1e6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b5
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x6eb
	.4byte	0x10a
	.4byte	.LLST0
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x6eb
	.4byte	0xdc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x6ec
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x6ec
	.4byte	0x432
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x6ed
	.4byte	0x43e
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x6ee
	.4byte	0x43e
	.uleb128 0x1
	.byte	0x57
	.byte	0
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x6f2
	.4byte	0x1e6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x6f2
	.4byte	0xc6
	.4byte	.LLST1
	.byte	0
	.uleb128 0x11
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x6f6
	.4byte	0x1e6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x519
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x6f6
	.4byte	0xc6
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x6f6
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x6fa
	.4byte	0xc6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x544
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x6fa
	.4byte	0xc6
	.4byte	.LLST3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x6fe
	.4byte	0xc6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x702
	.4byte	0xc6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x585
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x702
	.4byte	0xc6
	.4byte	.LLST4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x706
	.4byte	0x10a
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x706
	.4byte	0xc6
	.4byte	.LLST5
	.byte	0
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x70a
	.4byte	0xc6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x70e
	.4byte	0x1e6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ff
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x70e
	.4byte	0x1f1
	.4byte	.LLST6
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x70e
	.4byte	0x5ff
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x26d
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x712
	.4byte	0x1e6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x63e
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x712
	.4byte	0xc6
	.4byte	.LLST7
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x712
	.4byte	0x438
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x716
	.4byte	0x1e6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x677
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x716
	.4byte	0xc6
	.4byte	.LLST8
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x716
	.4byte	0x677
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x31b
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x71a
	.4byte	0x1e6
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b6
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x71a
	.4byte	0xc6
	.4byte	.LLST9
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x71a
	.4byte	0x6b6
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2aa
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x71e
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fd
	.uleb128 0x13
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x71e
	.4byte	0xc6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x71e
	.4byte	0xbb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x71e
	.4byte	0x5ff
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x71f
	.4byte	0xbb
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x2cc
	.4byte	0x726
	.byte	0x6
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.byte	0xff
	.uleb128 0x17
	.4byte	0xfa
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x2cd
	.4byte	0x73e
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0xfa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.4byte	.LFE26
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
	.4byte	.LFE27
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
	.4byte	.LFE28
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
	.4byte	.LFE29
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
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL17
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"max_latency"
.LASF103:
	.string	"bd_addr_null"
.LASF64:
	.string	"tx_pkt_len"
.LASF62:
	.string	"tBTM_CHG_ESCO_PARAMS"
.LASF50:
	.string	"BTM_INVALID_STATIC_RAND_ADDR"
.LASF53:
	.string	"tBTM_SCO_CB"
.LASF54:
	.string	"tBTM_ESCO_EVT"
.LASF88:
	.string	"BTM_SetScoPacketTypes"
.LASF97:
	.string	"BTM_RegForEScoEvts"
.LASF78:
	.string	"tBTM_ESCO_EVT_DATA"
.LASF94:
	.string	"BTM_SetEScoMode"
.LASF4:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF100:
	.string	"BTM_ChangeEScoLinkParms"
.LASF85:
	.string	"p_disc_cb"
.LASF77:
	.string	"conn_evt"
.LASF19:
	.string	"UINT32"
.LASF67:
	.string	"tx_interval"
.LASF25:
	.string	"BTM_CMD_STARTED"
.LASF6:
	.string	"__uint16_t"
.LASF82:
	.string	"pkt_types"
.LASF86:
	.string	"BTM_CreateSco"
.LASF43:
	.string	"BTM_REPEATED_ATTEMPTS"
.LASF63:
	.string	"rx_pkt_len"
.LASF87:
	.string	"BTM_RemoveSco"
.LASF14:
	.string	"uint8_t"
.LASF83:
	.string	"p_sco_inx"
.LASF99:
	.string	"BTM_ReadEScoLinkParms"
.LASF51:
	.string	"tBTM_STATUS"
.LASF56:
	.string	"rx_bw"
.LASF30:
	.string	"BTM_WRONG_MODE"
.LASF89:
	.string	"BTM_ReadScoPacketTypes"
.LASF80:
	.string	"remote_bda"
.LASF79:
	.string	"tBTM_ESCO_CBACK"
.LASF8:
	.string	"long long int"
.LASF52:
	.string	"tBTM_SCO_TYPE"
.LASF65:
	.string	"bd_addr"
.LASF20:
	.string	"BOOLEAN"
.LASF10:
	.string	"long int"
.LASF107:
	.string	"BTM_EScoConnRsp"
.LASF44:
	.string	"BTM_MODE4_LEVEL4_NOT_SUPPORTED"
.LASF28:
	.string	"BTM_MODE_UNSUPPORTED"
.LASF17:
	.string	"UINT8"
.LASF41:
	.string	"BTM_SUCCESS_NO_SECURITY"
.LASF23:
	.string	"DEV_CLASS"
.LASF5:
	.string	"__uint8_t"
.LASF101:
	.string	"BTM_GetNumScoLinks"
.LASF7:
	.string	"__uint32_t"
.LASF60:
	.string	"retrans_effort"
.LASF90:
	.string	"BTM_ReadScoHandle"
.LASF42:
	.string	"BTM_FAILED_ON_SECURITY"
.LASF71:
	.string	"sco_inx"
.LASF95:
	.string	"sco_mode"
.LASF98:
	.string	"p_esco_cback"
.LASF31:
	.string	"BTM_UNKNOWN_ADDR"
.LASF3:
	.string	"unsigned char"
.LASF106:
	.string	"D:\\\\ESP32\\\\esp-idf-v3.1-rc1\\\\ESP32_PIC_A2DP\\\\build\\\\bt"
.LASF26:
	.string	"BTM_BUSY"
.LASF37:
	.string	"BTM_CMD_STORED"
.LASF2:
	.string	"signed char"
.LASF81:
	.string	"is_orig"
.LASF76:
	.string	"chg_evt"
.LASF93:
	.string	"BTM_ReadScoDiscReason"
.LASF16:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF12:
	.string	"long unsigned int"
.LASF61:
	.string	"tBTM_ESCO_PARAMS"
.LASF75:
	.string	"tBTM_ESCO_CONN_REQ_EVT_DATA"
.LASF73:
	.string	"tBTM_CHG_ESCO_EVT_DATA"
.LASF1:
	.string	"short unsigned int"
.LASF49:
	.string	"BTM_SET_STATIC_RAND_ADDR_FAIL"
.LASF18:
	.string	"UINT16"
.LASF13:
	.string	"char"
.LASF84:
	.string	"p_conn_cb"
.LASF32:
	.string	"BTM_DEVICE_TIMEOUT"
.LASF58:
	.string	"voice_contfmt"
.LASF92:
	.string	"BTM_ReadDeviceScoPacketTypes"
.LASF48:
	.string	"BTM_SET_PRIVACY_FAIL"
.LASF21:
	.string	"_Bool"
.LASF24:
	.string	"BTM_SUCCESS"
.LASF66:
	.string	"link_type"
.LASF34:
	.string	"BTM_ERR_PROCESSING"
.LASF46:
	.string	"BTM_CONTROL_LE_DATA_LEN_UNSUPPORTED"
.LASF47:
	.string	"BTM_SET_PRIVACY_SUCCESS"
.LASF9:
	.string	"long long unsigned int"
.LASF29:
	.string	"BTM_ILLEGAL_VALUE"
.LASF35:
	.string	"BTM_NOT_AUTHORIZED"
.LASF91:
	.string	"BTM_ReadScoBdAddr"
.LASF72:
	.string	"hci_status"
.LASF36:
	.string	"BTM_DEV_RESET"
.LASF38:
	.string	"BTM_ILLEGAL_ACTION"
.LASF40:
	.string	"BTM_SCO_BAD_LENGTH"
.LASF70:
	.string	"tBTM_ESCO_DATA"
.LASF59:
	.string	"packet_types"
.LASF69:
	.string	"air_mode"
.LASF102:
	.string	"bd_addr_any"
.LASF39:
	.string	"BTM_DELAY_CHECK"
.LASF22:
	.string	"BD_ADDR"
.LASF96:
	.string	"p_parms"
.LASF68:
	.string	"retrans_window"
.LASF74:
	.string	"dev_class"
.LASF105:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/bt/bluedroid/stack/btm/btm_sco.c"
.LASF45:
	.string	"BTM_PEER_LE_DATA_LEN_UNSUPPORTED"
.LASF104:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF55:
	.string	"tx_bw"
.LASF27:
	.string	"BTM_NO_RESOURCES"
.LASF33:
	.string	"BTM_BAD_VALUE_RET"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
