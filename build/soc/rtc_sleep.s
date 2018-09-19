	.file	"rtc_sleep.c"
	.text
.Ltext0:
	.section	.text.rtc_sleep_pd,"ax",@progbits
	.literal_position
	.literal .LC0, 2048
	.literal .LC1, 1072988292
	.literal .LC2, 1072988288
	.literal .LC3, -2049
	.literal .LC4, 1072693388
	.literal .LC5, 1073016996
	.literal .LC6, 1073074260
	.literal .LC7, 1073073364
	.literal .LC8, 1072980112
	.literal .LC9, 1072976112
	.align	4
	.type	rtc_sleep_pd, @function
rtc_sleep_pd:
.LFB3:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_sleep.c"
	.loc 1 84 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LBB40:
.LBB41:
	.loc 1 85 0
	l32r	a3, .LC1
	memw
	l32i.n	a8, a3, 0
.LBE41:
	movi.n	a3, -0x11
	and	a3, a8, a3
	bbsi	a2, 0, .L14
	movi.n	a8, 0x10
	j	.L2
.L14:
	movi.n	a8, 0
.L2:
	.loc 1 85 0 is_stmt 0 discriminator 4
	or	a3, a8, a3
	l32r	a8, .LC1
	memw
	s32i.n	a3, a8, 0
.LBE40:
.LBB42:
.LBB43:
	.loc 1 86 0 is_stmt 1 discriminator 4
	l32r	a3, .LC2
	memw
	l32i.n	a8, a3, 0
.LBE43:
	l32r	a3, .LC3
	and	a3, a8, a3
	bbsi	a2, 1, .L15
	.loc 1 86 0 is_stmt 0
	l32r	a8, .LC0
	j	.L3
.L15:
	movi.n	a8, 0
.L3:
	.loc 1 86 0 discriminator 4
	or	a3, a8, a3
	l32r	a8, .LC2
	memw
	s32i.n	a3, a8, 0
.LBE42:
.LBB44:
.LBB45:
	.loc 1 87 0 is_stmt 1 discriminator 4
	memw
	l32i.n	a8, a8, 0
.LBE45:
	movi	a3, -0x101
	and	a3, a8, a3
	bbsi	a2, 1, .L16
	.loc 1 87 0 is_stmt 0
	movi	a8, 0x100
	j	.L4
.L16:
	movi.n	a8, 0
.L4:
	.loc 1 87 0 discriminator 4
	or	a3, a8, a3
	l32r	a8, .LC2
	memw
	s32i.n	a3, a8, 0
.LVL1:
.LBE44:
.LBB46:
.LBB47:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/dport_access.h"
	.loc 2 79 0 is_stmt 1 discriminator 4
	l32r	a3, .LC4
	mov.n	a10, a3
	call8	esp_dport_access_reg_read
.LVL2:
.LBE47:
.LBE46:
	.loc 1 88 0 discriminator 4
	movi.n	a8, -2
	and	a8, a10, a8
	extui	a10, a2, 2, 1
	movi.n	a9, 1
	xor	a10, a10, a9
	extui	a10, a10, 0, 8
	or	a10, a10, a8
	memw
	s32i.n	a10, a3, 0
.LBB48:
.LBB49:
	.loc 1 89 0 discriminator 4
	l32r	a3, .LC5
	memw
	l32i.n	a3, a3, 0
.LBE49:
	movi.n	a8, -9
	and	a8, a3, a8
	bbsi	a2, 3, .L17
	.loc 1 89 0 is_stmt 0
	movi.n	a3, 8
	j	.L5
.L17:
	movi.n	a3, 0
.L5:
	.loc 1 89 0 discriminator 4
	or	a8, a3, a8
	l32r	a3, .LC5
	memw
	s32i.n	a8, a3, 0
.LBE48:
.LBB50:
.LBB51:
	.loc 1 90 0 is_stmt 1 discriminator 4
	memw
	l32i.n	a3, a3, 0
.LBE51:
	movi.n	a8, -3
	and	a8, a3, a8
	bbsi	a2, 3, .L18
	.loc 1 90 0 is_stmt 0
	movi.n	a3, 2
	j	.L6
.L18:
	movi.n	a3, 0
.L6:
	.loc 1 90 0 discriminator 4
	or	a8, a3, a8
	l32r	a3, .LC5
	memw
	s32i.n	a8, a3, 0
.LBE50:
.LBB52:
.LBB53:
	.loc 1 91 0 is_stmt 1 discriminator 4
	l32r	a3, .LC6
	memw
	l32i.n	a3, a3, 0
.LBE53:
	movi.n	a8, -9
	and	a8, a3, a8
	bbsi	a2, 4, .L19
	.loc 1 91 0 is_stmt 0
	movi.n	a3, 8
	j	.L7
.L19:
	movi.n	a3, 0
.L7:
	.loc 1 91 0 discriminator 4
	or	a8, a3, a8
	l32r	a3, .LC6
	memw
	s32i.n	a8, a3, 0
.LBE52:
.LBB54:
.LBB55:
	.loc 1 92 0 is_stmt 1 discriminator 4
	memw
	l32i.n	a3, a3, 0
.LBE55:
	movi.n	a8, -3
	and	a8, a3, a8
	bbsi	a2, 4, .L20
	.loc 1 92 0 is_stmt 0
	movi.n	a3, 2
	j	.L8
.L20:
	movi.n	a3, 0
.L8:
	.loc 1 92 0 discriminator 4
	or	a8, a3, a8
	l32r	a3, .LC6
	memw
	s32i.n	a8, a3, 0
.LBE54:
.LBB56:
.LBB57:
	.loc 1 93 0 is_stmt 1 discriminator 4
	l32r	a3, .LC7
	memw
	l32i.n	a3, a3, 0
.LBE57:
	movi	a8, -0x21
	and	a8, a3, a8
	bbsi	a2, 5, .L21
	.loc 1 93 0 is_stmt 0
	movi.n	a3, 0x20
	j	.L9
.L21:
	movi.n	a3, 0
.L9:
	.loc 1 93 0 discriminator 4
	or	a8, a3, a8
	l32r	a3, .LC7
	memw
	s32i.n	a8, a3, 0
.LBE56:
.LBB58:
.LBB59:
	.loc 1 94 0 is_stmt 1 discriminator 4
	memw
	l32i.n	a3, a3, 0
.LBE59:
	movi.n	a8, -9
	and	a8, a3, a8
	bbsi	a2, 5, .L22
	.loc 1 94 0 is_stmt 0
	movi.n	a3, 8
	j	.L10
.L22:
	movi.n	a3, 0
.L10:
	.loc 1 94 0 discriminator 4
	or	a8, a3, a8
	l32r	a3, .LC7
	memw
	s32i.n	a8, a3, 0
.LBE58:
.LBB60:
.LBB61:
	.loc 1 95 0 is_stmt 1 discriminator 4
	memw
	l32i.n	a3, a3, 0
.LBE61:
	movi.n	a8, -3
	and	a8, a3, a8
	bbsi	a2, 5, .L23
	.loc 1 95 0 is_stmt 0
	movi.n	a3, 2
	j	.L11
.L23:
	movi.n	a3, 0
.L11:
	.loc 1 95 0 discriminator 4
	or	a8, a3, a8
	l32r	a3, .LC7
	memw
	s32i.n	a8, a3, 0
.LBE60:
.LBB62:
.LBB63:
	.loc 1 96 0 is_stmt 1 discriminator 4
	l32r	a3, .LC8
	memw
	l32i.n	a3, a3, 0
.LBE63:
	movi	a8, -0x21
	and	a8, a3, a8
	bbsi	a2, 6, .L24
	.loc 1 96 0 is_stmt 0
	movi.n	a3, 0x20
	j	.L12
.L24:
	movi.n	a3, 0
.L12:
	.loc 1 96 0 discriminator 4
	or	a8, a3, a8
	l32r	a3, .LC8
	memw
	s32i.n	a8, a3, 0
.LBE62:
.LBB64:
.LBB65:
	.loc 1 97 0 is_stmt 1 discriminator 4
	l32r	a3, .LC9
	memw
	l32i.n	a3, a3, 0
.LBE65:
	movi	a8, -0x401
	and	a8, a3, a8
	bbsi	a2, 6, .L25
	.loc 1 97 0 is_stmt 0
	movi	a2, 0x400
.LVL3:
	j	.L13
.LVL4:
.L25:
	movi.n	a2, 0
.LVL5:
.L13:
	.loc 1 97 0 discriminator 4
	or	a2, a2, a8
	l32r	a3, .LC9
	memw
	s32i.n	a2, a3, 0
	retw.n
.LBE64:
.LFE3:
	.size	rtc_sleep_pd, .-rtc_sleep_pd
	.section	.text.rtc_sleep_init,"ax",@progbits
	.literal_position
	.literal .LC10, 1072988188
	.literal .LC11, 16777215
	.literal .LC12, 33554432
	.literal .LC13, -16760833
	.literal .LC14, 32768
	.literal .LC15, -16321
	.literal .LC16, 1072988204
	.literal .LC17, -65281
	.literal .LC18, 1072988196
	.literal .LC19, 33554431
	.literal .LC20, -33488897
	.literal .LC21, 65536
	.literal .LC22, -65025
	.literal .LC23, 1072988200
	.literal .LC24, 1072988292
	.literal .LC25, 1072988288
	.literal .LC26, 73728
	.literal .LC27, -73729
	.literal .LC28, 16384
	.literal .LC29, -8193
	.literal .LC30, -16385
	.literal .LC31, 8192
	.literal .LC32, 131072
	.literal .LC33, -65537
	.literal .LC34, -131073
	.literal .LC35, 1048576
	.literal .LC36, -1048577
	.literal .LC37, 1073741824
	.literal .LC38, -1073741825
	.literal .LC39, 1056964608
	.literal .LC40, -1056964609
	.literal .LC41, 1072988296
	.literal .LC42, -12289
	.literal .LC43, -2147483648
	.literal .LC44, -1572865
	.literal .LC45, 1072988160
	.literal .LC46, 1072988208
	.literal .LC47, 671088639
	.literal .LC48, 2147483647
	.literal .LC49, 1072988280
	.literal .LC50, -50331649
	.literal .LC51, 1072988276
	.literal .LC52, -4194305
	.literal .LC53, -2097153
	.literal .LC54, 1072988284
	.literal .LC55, -29360129
	.literal .LC56, -234881025
	.literal .LC57, -14337
	.align	4
	.global	rtc_sleep_init
	.type	rtc_sleep_init, @function
rtc_sleep_init:
.LFB4:
	.loc 1 101 0 is_stmt 1
.LVL6:
	entry	sp, 32
.LCFI1:
.LBB66:
.LBB67:
	.loc 1 103 0
	l32r	a8, .LC10
	memw
	l32i.n	a4, a8, 0
.LBE67:
	l32r	a3, .LC11
	and	a3, a4, a3
	l32r	a10, .LC12
	or	a3, a3, a10
	memw
	s32i.n	a3, a8, 0
.LBE66:
.LBB68:
.LBB69:
	.loc 1 104 0
	memw
	l32i.n	a4, a8, 0
.LBE69:
	l32r	a3, .LC13
	and	a4, a4, a3
	l32r	a3, .LC14
	or	a3, a4, a3
	memw
	s32i.n	a3, a8, 0
.LBE68:
.LBB70:
.LBB71:
	.loc 1 105 0
	memw
	l32i.n	a4, a8, 0
.LBE71:
	l32r	a3, .LC15
	and	a4, a4, a3
	movi	a3, 0x100
	or	a3, a4, a3
	memw
	s32i.n	a3, a8, 0
.LBE70:
.LBB72:
.LBB73:
	.loc 1 108 0
	l32r	a9, .LC16
	memw
	l32i.n	a4, a9, 0
.LBE73:
	l32r	a3, .LC17
	and	a3, a4, a3
	movi	a14, 0x200
	or	a3, a3, a14
	memw
	s32i.n	a3, a9, 0
.LBE72:
.LBB74:
.LBB75:
	.loc 1 111 0
	l32r	a8, .LC18
	memw
	l32i.n	a3, a8, 0
.LBE75:
	l32r	a13, .LC19
	and	a3, a3, a13
	or	a3, a3, a10
	memw
	s32i.n	a3, a8, 0
.LBE74:
.LBB76:
.LBB77:
	.loc 1 112 0
	memw
	l32i.n	a3, a8, 0
.LBE77:
	l32r	a12, .LC20
	and	a3, a3, a12
	l32r	a11, .LC21
	or	a3, a3, a11
	memw
	s32i.n	a3, a8, 0
.LBE76:
.LBB78:
.LBB79:
	.loc 1 114 0
	memw
	l32i.n	a3, a8, 0
.LBE79:
	l32r	a5, .LC22
	and	a3, a3, a5
	or	a3, a3, a14
	memw
	s32i.n	a3, a8, 0
.LBE78:
.LBB80:
.LBB81:
	.loc 1 115 0
	memw
	l32i.n	a15, a8, 0
.LBE81:
	movi	a4, -0x200
	and	a15, a15, a4
	movi.n	a3, 1
	or	a15, a15, a3
	memw
	s32i.n	a15, a8, 0
.LBE80:
.LBB82:
.LBB83:
	.loc 1 117 0
	l32r	a8, .LC23
	memw
	l32i.n	a15, a8, 0
.LBE83:
	and	a5, a15, a5
	or	a14, a5, a14
	memw
	s32i.n	a14, a8, 0
.LBE82:
.LBB84:
.LBB85:
	.loc 1 118 0
	memw
	l32i.n	a5, a8, 0
.LBE85:
	and	a4, a5, a4
	or	a3, a4, a3
	memw
	s32i.n	a3, a8, 0
.LBE84:
.LBB86:
.LBB87:
	.loc 1 120 0
	memw
	l32i.n	a14, a8, 0
.LBE87:
	and	a14, a14, a13
	or	a14, a14, a10
	memw
	s32i.n	a14, a8, 0
.LBE86:
.LBB88:
.LBB89:
	.loc 1 121 0
	memw
	l32i.n	a14, a8, 0
.LBE89:
	and	a14, a14, a12
	or	a14, a14, a11
	memw
	s32i.n	a14, a8, 0
.LBE88:
.LBB90:
.LBB91:
	.loc 1 123 0
	memw
	l32i.n	a3, a9, 0
.LBE91:
	and	a13, a3, a13
	or	a10, a13, a10
	memw
	s32i.n	a10, a9, 0
.LBE90:
.LBB92:
.LBB93:
	.loc 1 124 0
	memw
	l32i.n	a3, a9, 0
.LBE93:
	and	a12, a3, a12
	or	a11, a12, a11
	memw
	s32i.n	a11, a9, 0
.LBE92:
.LBB94:
.LBB95:
	.loc 1 126 0
	l32r	a3, .LC24
	memw
	l32i.n	a9, a3, 0
.LBE95:
	movi.n	a8, -0x11
	and	a9, a9, a8
	extui	a8, a2, 0, 1
	slli	a8, a8, 4
	or	a8, a8, a9
	memw
	s32i.n	a8, a3, 0
.LBE94:
	.loc 1 128 0
	extui	a8, a2, 22, 1
	slli	a9, a8, 1
	slli	a3, a8, 2
	or	a9, a8, a9
	slli	a11, a8, 3
	or	a9, a9, a3
	or	a9, a9, a11
.LVL7:
	slli	a10, a8, 4
	slli	a3, a8, 5
.LVL8:
	or	a9, a9, a10
.LVL9:
	or	a9, a9, a3
	slli	a8, a8, 6
	movi	a10, -0x41
.LVL10:
	and	a10, a9, a10
	.loc 1 129 0
	or	a10, a10, a8
	call8	rtc_sleep_pd
.LVL11:
	.loc 1 131 0
	bbci	a2, 1, .L27
.LBB96:
.LBB97:
	.loc 1 132 0
	l32r	a4, .LC25
	memw
	l32i.n	a5, a4, 0
.LBE97:
	l32r	a3, .LC26
	or	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.LBE96:
	j	.L28
.L27:
.LBB98:
.LBB99:
	.loc 1 134 0
	l32r	a4, .LC25
	memw
	l32i.n	a5, a4, 0
.LBE99:
	l32r	a3, .LC27
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.L28:
.LBE98:
	.loc 1 137 0
	bbci	a2, 2, .L29
.LBB100:
.LBB101:
	.loc 1 138 0
	l32r	a4, .LC25
	memw
	l32i.n	a5, a4, 0
.LBE101:
	movi	a3, 0x240
	or	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.LBE100:
	j	.L30
.L29:
.LBB102:
.LBB103:
	.loc 1 140 0
	l32r	a4, .LC25
	memw
	l32i.n	a5, a4, 0
.LBE103:
	movi	a3, -0x241
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.L30:
.LBE102:
	.loc 1 143 0
	bbci	a2, 3, .L31
.LBB104:
.LBB105:
	.loc 1 144 0
	l32r	a3, .LC25
	memw
	l32i.n	a5, a3, 0
.LBE105:
	l32r	a4, .LC28
	or	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE104:
.LBB106:
.LBB107:
	.loc 1 145 0
	memw
	l32i.n	a5, a3, 0
.LBE107:
	l32r	a4, .LC29
	and	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE106:
.LBB108:
.LBB109:
	.loc 1 146 0
	memw
	l32i.n	a5, a3, 0
.LBE109:
	movi.n	a4, -2
	and	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE108:
	j	.L32
.L31:
.LBB110:
.LBB111:
	.loc 1 148 0
	l32r	a3, .LC25
	memw
	l32i.n	a5, a3, 0
.LBE111:
	l32r	a4, .LC30
	and	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE110:
.LBB112:
.LBB113:
	.loc 1 149 0
	memw
	l32i.n	a5, a3, 0
.LBE113:
	l32r	a4, .LC31
	or	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE112:
.LBB114:
.LBB115:
	.loc 1 150 0
	memw
	l32i.n	a5, a3, 0
.LBE115:
	movi.n	a4, 1
	or	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.L32:
.LBE114:
	.loc 1 153 0
	bbci	a2, 4, .L33
.LBB116:
.LBB117:
	.loc 1 154 0
	l32r	a3, .LC25
	memw
	l32i.n	a5, a3, 0
.LBE117:
	l32r	a4, .LC32
	or	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE116:
.LBB118:
.LBB119:
	.loc 1 155 0
	memw
	l32i.n	a5, a3, 0
.LBE119:
	l32r	a4, .LC33
	and	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE118:
.LBB120:
.LBB121:
	.loc 1 156 0
	memw
	l32i.n	a5, a3, 0
.LBE121:
	movi.n	a4, -5
	and	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE120:
	j	.L34
.L33:
.LBB122:
.LBB123:
	.loc 1 158 0
	l32r	a3, .LC25
	memw
	l32i.n	a5, a3, 0
.LBE123:
	l32r	a4, .LC34
	and	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE122:
.LBB124:
.LBB125:
	.loc 1 159 0
	memw
	l32i.n	a5, a3, 0
.LBE125:
	l32r	a4, .LC21
	or	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE124:
.LBB126:
.LBB127:
	.loc 1 160 0
	memw
	l32i.n	a5, a3, 0
.LBE127:
	movi.n	a4, 4
	or	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.L34:
.LBE126:
	.loc 1 163 0
	bbci	a2, 5, .L35
.LBB128:
.LBB129:
	.loc 1 164 0
	l32r	a4, .LC25
	memw
	l32i.n	a5, a4, 0
.LBE129:
	l32r	a3, .LC35
	or	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.LBE128:
	j	.L36
.L35:
.LBB130:
.LBB131:
	.loc 1 166 0
	l32r	a4, .LC25
	memw
	l32i.n	a5, a4, 0
.LBE131:
	l32r	a3, .LC36
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.L36:
.LBE130:
	.loc 1 169 0
	bbci	a2, 6, .L37
.LBB132:
.LBB133:
	.loc 1 170 0
	l32r	a4, .LC24
	memw
	l32i.n	a5, a4, 0
.LBE133:
	l32r	a3, .LC37
	or	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.LBE132:
	j	.L38
.L37:
.LBB134:
.LBB135:
	.loc 1 172 0
	l32r	a4, .LC24
	memw
	l32i.n	a5, a4, 0
.LBE135:
	l32r	a3, .LC38
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.L38:
.LBE134:
	.loc 1 175 0
	bbci	a2, 7, .L39
.LBB136:
.LBB137:
	.loc 1 176 0
	l32r	a4, .LC24
	memw
	l32i.n	a5, a4, 0
.LBE137:
	l32r	a3, .LC39
	or	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.LBE136:
	j	.L40
.L39:
.LBB138:
.LBB139:
	.loc 1 178 0
	l32r	a4, .LC24
	memw
	l32i.n	a5, a4, 0
.LBE139:
	l32r	a3, .LC40
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.L40:
.LBE138:
	.loc 1 181 0
	bbci	a2, 8, .L41
.LBB140:
.LBB141:
	.loc 1 182 0
	l32r	a4, .LC41
	memw
	l32i.n	a5, a4, 0
.LBE141:
	l32r	a3, .LC42
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.LBE140:
.LBB142:
.LBB143:
	.loc 1 184 0
	l32r	a3, .LC24
	memw
	l32i.n	a5, a3, 0
.LBE143:
	l32r	a4, .LC43
	or	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE142:
.LBB144:
.LBB145:
	.loc 1 185 0
	memw
	l32i.n	a5, a3, 0
.LBE145:
	l32r	a4, .LC44
	and	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE144:
.LBB146:
.LBB147:
	.loc 1 187 0
	l32r	a4, .LC45
	memw
	l32i.n	a5, a4, 0
.LBE147:
	l32r	a3, .LC33
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.LBE146:
.LBB148:
.LBB149:
	.loc 1 190 0
	l32r	a4, .LC46
	memw
	l32i.n	a5, a4, 0
.LBE149:
	l32r	a3, .LC47
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.LBE148:
	j	.L42
.L41:
.LBB150:
.LBB151:
	.loc 1 194 0
	l32r	a4, .LC24
	memw
	l32i.n	a5, a4, 0
.LBE151:
	l32r	a3, .LC48
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.LBE150:
.LBB152:
.LBB153:
	.loc 1 195 0
	l32r	a4, .LC49
	memw
	l32i.n	a5, a4, 0
.LBE153:
	l32r	a3, .LC50
	and	a3, a5, a3
	memw
	s32i.n	a3, a4, 0
.L42:
.LBE152:
.LBB154:
.LBB155:
	.loc 1 198 0
	l32r	a3, .LC45
	memw
	l32i.n	a9, a3, 0
.LBE155:
	l32r	a8, .LC29
	and	a9, a9, a8
	extui	a8, a2, 24, 1
	slli	a8, a8, 13
	or	a8, a8, a9
	memw
	s32i.n	a8, a3, 0
.LBE154:
.LBB156:
	.loc 1 201 0
	l32r	a3, .LC51
	memw
	l32i.n	a5, a3, 0
	l32r	a4, .LC52
	and	a4, a5, a4
	memw
	s32i.n	a4, a3, 0
.LBE156:
.LBB157:
.LBB158:
	.loc 1 202 0
	memw
	l32i.n	a9, a3, 0
.LBE158:
	l32r	a8, .LC53
	and	a9, a9, a8
	extui	a8, a2, 23, 1
	slli	a8, a8, 21
	or	a8, a8, a9
	memw
	s32i.n	a8, a3, 0
.LBE157:
.LBB159:
.LBB160:
	.loc 1 204 0
	l32r	a8, .LC54
	memw
	l32i.n	a10, a8, 0
.LBE160:
	l32r	a9, .LC55
	and	a10, a10, a9
	extui	a9, a2, 19, 3
	slli	a9, a9, 22
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
.LBE159:
.LBB161:
.LBB162:
	.loc 1 205 0
	memw
	l32i.n	a10, a8, 0
.LBE162:
	l32r	a9, .LC56
	and	a10, a10, a9
	extui	a9, a2, 16, 3
	slli	a9, a9, 25
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
.LBE161:
.LBB163:
.LBB164:
	.loc 1 206 0
	memw
	l32i.n	a10, a8, 0
.LBE164:
	l32r	a9, .LC57
	and	a10, a10, a9
	extui	a9, a2, 10, 3
	slli	a9, a9, 11
	or	a9, a9, a10
	memw
	s32i.n	a9, a8, 0
.LBE163:
.LBB165:
.LBB166:
	.loc 1 207 0
	memw
	l32i.n	a3, a8, 0
.LBE166:
	movi	a9, -0x701
	and	a9, a3, a9
	extui	a2, a2, 13, 3
.LVL12:
	slli	a2, a2, 8
	or	a2, a2, a9
	memw
	s32i.n	a2, a8, 0
	retw.n
.LBE165:
.LFE4:
	.size	rtc_sleep_init, .-rtc_sleep_init
	.section	.text.rtc_sleep_set_wakeup_time,"ax",@progbits
	.literal_position
	.literal .LC58, 1072988164
	.literal .LC59, 1072988168
	.align	4
	.global	rtc_sleep_set_wakeup_time
	.type	rtc_sleep_set_wakeup_time, @function
rtc_sleep_set_wakeup_time:
.LFB5:
	.loc 1 211 0
.LVL13:
	entry	sp, 32
.LCFI2:
.LBB167:
	.loc 1 212 0
	l32r	a8, .LC58
	memw
	s32i.n	a2, a8, 0
.LBE167:
.LBB168:
	.loc 1 213 0
	l32r	a8, .LC59
	memw
	s32i.n	a3, a8, 0
	retw.n
.LBE168:
.LFE5:
	.size	rtc_sleep_set_wakeup_time, .-rtc_sleep_set_wakeup_time
	.section	.text.rtc_sleep_start,"ax",@progbits
	.literal_position
	.literal .LC60, 1072988216
	.literal .LC61, -4192257
	.literal .LC62, 1072988260
	.literal .LC63, 1072988184
	.literal .LC64, -2147483648
	.literal .LC65, 1072988224
	.literal .LC66, 1072988232
	.literal .LC67, 1072988280
	.literal .LC68, 50331648
	.align	4
	.global	rtc_sleep_start
	.type	rtc_sleep_start, @function
rtc_sleep_start:
.LFB6:
	.loc 1 217 0
.LVL14:
	entry	sp, 32
.LCFI3:
.LBB169:
.LBB170:
	.loc 1 218 0
	l32r	a10, .LC60
	memw
	l32i.n	a9, a10, 0
.LBE170:
	l32r	a8, .LC61
	and	a9, a9, a8
	extui	a2, a2, 0, 11
.LVL15:
	slli	a8, a2, 11
	or	a8, a9, a8
	memw
	s32i.n	a8, a10, 0
.LBE169:
.LBB171:
	.loc 1 219 0
	l32r	a2, .LC62
	memw
	s32i.n	a3, a2, 0
.LBE171:
.LBB172:
.LBB173:
	.loc 1 222 0
	l32r	a9, .LC63
	memw
	l32i.n	a2, a9, 0
.LBE173:
	l32r	a8, .LC64
	or	a8, a2, a8
	memw
	s32i.n	a8, a9, 0
.L45:
.LBE172:
.LBB174:
.LBB175:
	.loc 1 224 0 discriminator 1
	l32r	a8, .LC65
	memw
	l32i.n	a8, a8, 0
.LBE175:
	extui	a8, a8, 0, 2
.LBE174:
	.loc 1 224 0 discriminator 1
	beqz.n	a8, .L45
.LBB176:
.LBB177:
	.loc 1 229 0
	l32r	a2, .LC65
	memw
	l32i.n	a2, a2, 0
.LVL16:
.LBE177:
.LBE176:
.LBB178:
.LBB179:
	.loc 1 230 0
	l32r	a9, .LC66
	memw
	l32i.n	a10, a9, 0
.LBE179:
	movi.n	a8, 3
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE178:
.LBB180:
.LBB181:
	.loc 1 234 0
	l32r	a9, .LC67
	memw
	l32i.n	a10, a9, 0
.LBE181:
	l32r	a8, .LC68
	or	a8, a10, a8
	memw
	s32i.n	a8, a9, 0
.LBE180:
	.loc 1 236 0
	extui	a2, a2, 1, 1
.LVL17:
	retw.n
.LFE6:
	.size	rtc_sleep_start, .-rtc_sleep_start
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI1-.LFB4
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI2-.LFB5
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI3-.LFB6
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE6:
	.text
.Letext0:
	.file 3 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/machine/_default_types.h"
	.file 4 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/stdint.h"
	.file 5 "D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/include/soc/rtc.h"
	.file 6 "D:/ESP32/esp-idf-v3.1-rc1/components/esp32/include/esp_dport_access.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x41a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
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
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1a
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x1e
	.4byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x2d
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x39
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.2byte	0x1ad
	.4byte	0x1bb
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x1ae
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x1af
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x1b0
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x1b1
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x1b2
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x1b3
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x1b4
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x1b5
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x1b6
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x1b7
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x1b8
	.4byte	0x6f
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x1b9
	.4byte	0x6f
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x1ba
	.4byte	0x6f
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x1bb
	.4byte	0x6f
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x1bc
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x1bd
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x1be
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x1bf
	.4byte	0xa1
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0x38
	.4byte	0x239
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x1
	.byte	0x39
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.byte	0x3a
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3b
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3c
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3d
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x1
	.byte	0x3e
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3f
	.4byte	0x6f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x1
	.byte	0x40
	.4byte	0x1c7
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x2
	.byte	0x4a
	.4byte	0x6f
	.byte	0x3
	.4byte	0x260
	.uleb128 0xb
	.string	"reg"
	.byte	0x2
	.byte	0x4a
	.4byte	0x6f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x1
	.byte	0x53
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b7
	.uleb128 0xd
	.string	"cfg"
	.byte	0x1
	.byte	0x53
	.4byte	0x239
	.4byte	.LLST0
	.uleb128 0xe
	.4byte	.LASF41
	.4byte	0x2c7
	.uleb128 0xf
	.4byte	0x244
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.byte	0x58
	.uleb128 0x10
	.4byte	0x254
	.4byte	0x3ff0008c
	.uleb128 0x11
	.4byte	.LVL2
	.4byte	0x412
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9a
	.4byte	0x2c7
	.uleb128 0x14
	.4byte	0x8c
	.byte	0xc
	.byte	0
	.uleb128 0x15
	.4byte	0x2b7
	.uleb128 0x16
	.4byte	.LASF42
	.byte	0x1
	.byte	0x64
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x356
	.uleb128 0xd
	.string	"cfg"
	.byte	0x1
	.byte	0x64
	.4byte	0x1bb
	.4byte	.LLST1
	.uleb128 0xe
	.4byte	.LASF41
	.4byte	0x366
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x1
	.byte	0x80
	.4byte	0x239
	.4byte	.LLST2
	.uleb128 0x11
	.4byte	.LVL11
	.4byte	0x260
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x31
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x32
	.byte	0x24
	.byte	0x21
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x33
	.byte	0x24
	.byte	0x21
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x34
	.byte	0x24
	.byte	0x21
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0x9
	.byte	0xbf
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xed
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x36
	.byte	0x24
	.byte	0x21
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	0x9a
	.4byte	0x366
	.uleb128 0x14
	.4byte	0x8c
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.4byte	0x356
	.uleb128 0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0xd2
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x39a
	.uleb128 0x18
	.string	"t"
	.byte	0x1
	.byte	0xd2
	.4byte	0x7a
	.uleb128 0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF41
	.4byte	0x3aa
	.byte	0
	.uleb128 0x13
	.4byte	0x9a
	.4byte	0x3aa
	.uleb128 0x14
	.4byte	0x8c
	.byte	0x19
	.byte	0
	.uleb128 0x15
	.4byte	0x39a
	.uleb128 0x19
	.4byte	.LASF52
	.byte	0x1
	.byte	0xd8
	.4byte	0x6f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fd
	.uleb128 0x1a
	.4byte	.LASF44
	.byte	0x1
	.byte	0xd8
	.4byte	0x6f
	.4byte	.LLST3
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x1
	.byte	0xd8
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.4byte	.LASF41
	.4byte	0x40d
	.uleb128 0x17
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe5
	.4byte	0x6f
	.4byte	.LLST4
	.byte	0
	.uleb128 0x13
	.4byte	0x9a
	.4byte	0x40d
	.uleb128 0x14
	.4byte	0x8c
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.4byte	0x3fd
	.uleb128 0x1c
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
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
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"pd_cfg"
.LASF33:
	.string	"dig_pd"
.LASF44:
	.string	"wakeup_opt"
.LASF18:
	.string	"rtc_fastmem_pd_en"
.LASF10:
	.string	"uint64_t"
.LASF23:
	.string	"deep_slp"
.LASF27:
	.string	"rtc_dbias_wak"
.LASF34:
	.string	"rtc_pd"
.LASF41:
	.string	"__func__"
.LASF52:
	.string	"rtc_sleep_start"
.LASF29:
	.string	"lslp_meminf_pd"
.LASF20:
	.string	"rtc_peri_pd_en"
.LASF1:
	.string	"unsigned char"
.LASF42:
	.string	"rtc_sleep_init"
.LASF53:
	.string	"esp_dport_access_reg_read"
.LASF13:
	.string	"long unsigned int"
.LASF40:
	.string	"rtc_sleep_pd_config_t"
.LASF3:
	.string	"short unsigned int"
.LASF37:
	.string	"bb_pd"
.LASF47:
	.string	"reject"
.LASF49:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/soc/esp32/rtc_sleep.c"
.LASF39:
	.string	"fe_pd"
.LASF30:
	.string	"vddsdio_pd_en"
.LASF6:
	.string	"__uint32_t"
.LASF16:
	.string	"rtc_mem_inf_fpu"
.LASF32:
	.string	"rtc_sleep_config_t"
.LASF25:
	.string	"dig_dbias_wak"
.LASF4:
	.string	"unsigned int"
.LASF24:
	.string	"wdt_flashboot_mod_en"
.LASF8:
	.string	"long long unsigned int"
.LASF45:
	.string	"reject_opt"
.LASF22:
	.string	"rom_mem_pd_en"
.LASF51:
	.string	"rtc_sleep_pd"
.LASF21:
	.string	"wifi_pd_en"
.LASF35:
	.string	"cpu_pd"
.LASF28:
	.string	"rtc_dbias_slp"
.LASF31:
	.string	"xtal_fpu"
.LASF12:
	.string	"sizetype"
.LASF5:
	.string	"long long int"
.LASF36:
	.string	"i2s_pd"
.LASF48:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF14:
	.string	"char"
.LASF43:
	.string	"rtc_sleep_set_wakeup_time"
.LASF17:
	.string	"rtc_mem_inf_follow_cpu"
.LASF15:
	.string	"lslp_mem_inf_fpu"
.LASF2:
	.string	"short int"
.LASF7:
	.string	"__uint64_t"
.LASF9:
	.string	"uint32_t"
.LASF11:
	.string	"long int"
.LASF50:
	.string	"DPORT_REG_READ"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"rtc_slowmem_pd_en"
.LASF38:
	.string	"nrx_pd"
.LASF26:
	.string	"dig_dbias_slp"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
