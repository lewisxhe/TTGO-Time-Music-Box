	.file	"version_features.c"
	.text
.Ltext0:
	.section	.text.mbedtls_version_check_feature,"ax",@progbits
	.literal_position
	.literal .LC0, features
	.align	4
	.global	mbedtls_version_check_feature
	.type	mbedtls_version_check_feature, @function
mbedtls_version_check_feature:
.LFB0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/version_features.c"
	.loc 1 752 0
.LVL0:
	entry	sp, 32
.LCFI0:
.LVL1:
	.loc 1 755 0
	l32r	a3, .LC0
	l32i.n	a3, a3, 0
	beqz.n	a3, .L5
	.loc 1 758 0
	beqz.n	a2, .L6
	l32r	a3, .LC0
	j	.L3
.LVL2:
.L4:
	.loc 1 763 0
	mov.n	a11, a2
	call8	strcmp
.LVL3:
	beqz.n	a10, .L2
	.loc 1 765 0
	addi.n	a3, a3, 4
.LVL4:
.L3:
	.loc 1 761 0
	l32i.n	a10, a3, 0
	bnez.n	a10, .L4
	.loc 1 767 0
	movi.n	a10, -1
	j	.L2
.LVL5:
.L5:
	.loc 1 756 0
	movi.n	a10, -2
	j	.L2
.L6:
	.loc 1 759 0
	movi.n	a10, -1
.LVL6:
.L2:
	.loc 1 768 0
	mov.n	a2, a10
.LVL7:
	retw.n
.LFE0:
	.size	mbedtls_version_check_feature, .-mbedtls_version_check_feature
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	4
.LC1:
	.string	"MBEDTLS_HAVE_ASM"
	.align	4
.LC2:
	.string	"MBEDTLS_HAVE_TIME"
	.align	4
.LC3:
	.string	"MBEDTLS_AES_ALT"
	.align	4
.LC4:
	.string	"MBEDTLS_ENTROPY_HARDWARE_ALT"
	.align	4
.LC5:
	.string	"MBEDTLS_AES_ROM_TABLES"
	.align	4
.LC6:
	.string	"MBEDTLS_CIPHER_MODE_CBC"
	.align	4
.LC7:
	.string	"MBEDTLS_CIPHER_MODE_CFB"
	.align	4
.LC8:
	.string	"MBEDTLS_CIPHER_MODE_CTR"
	.align	4
.LC9:
	.string	"MBEDTLS_CIPHER_PADDING_PKCS7"
	.align	4
.LC10:
	.string	"MBEDTLS_CIPHER_PADDING_ONE_AND_ZEROS"
	.align	4
.LC11:
	.string	"MBEDTLS_CIPHER_PADDING_ZEROS_AND_LEN"
	.align	4
.LC12:
	.string	"MBEDTLS_CIPHER_PADDING_ZEROS"
	.align	4
.LC13:
	.string	"MBEDTLS_ECP_DP_SECP192R1_ENABLED"
	.align	4
.LC14:
	.string	"MBEDTLS_ECP_DP_SECP224R1_ENABLED"
	.align	4
.LC15:
	.string	"MBEDTLS_ECP_DP_SECP256R1_ENABLED"
	.align	4
.LC16:
	.string	"MBEDTLS_ECP_DP_SECP384R1_ENABLED"
	.align	4
.LC17:
	.string	"MBEDTLS_ECP_DP_SECP521R1_ENABLED"
	.align	4
.LC18:
	.string	"MBEDTLS_ECP_DP_SECP192K1_ENABLED"
	.align	4
.LC19:
	.string	"MBEDTLS_ECP_DP_SECP224K1_ENABLED"
	.align	4
.LC20:
	.string	"MBEDTLS_ECP_DP_SECP256K1_ENABLED"
	.align	4
.LC21:
	.string	"MBEDTLS_ECP_DP_BP256R1_ENABLED"
	.align	4
.LC22:
	.string	"MBEDTLS_ECP_DP_BP384R1_ENABLED"
	.align	4
.LC23:
	.string	"MBEDTLS_ECP_DP_BP512R1_ENABLED"
	.align	4
.LC24:
	.string	"MBEDTLS_ECP_DP_CURVE25519_ENABLED"
	.align	4
.LC25:
	.string	"MBEDTLS_ECP_NIST_OPTIM"
	.align	4
.LC26:
	.string	"MBEDTLS_ECDSA_DETERMINISTIC"
	.align	4
.LC27:
	.string	"MBEDTLS_KEY_EXCHANGE_RSA_ENABLED"
	.align	4
.LC28:
	.string	"MBEDTLS_KEY_EXCHANGE_DHE_RSA_ENABLED"
	.align	4
.LC29:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_RSA_ENABLED"
	.align	4
.LC30:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA_ENABLED"
	.align	4
.LC31:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA_ENABLED"
	.align	4
.LC32:
	.string	"MBEDTLS_KEY_EXCHANGE_ECDH_RSA_ENABLED"
	.align	4
.LC33:
	.string	"MBEDTLS_PK_PARSE_EC_EXTENDED"
	.align	4
.LC34:
	.string	"MBEDTLS_ERROR_STRERROR_DUMMY"
	.align	4
.LC35:
	.string	"MBEDTLS_GENPRIME"
	.align	4
.LC36:
	.string	"MBEDTLS_FS_IO"
	.align	4
.LC37:
	.string	"MBEDTLS_NO_PLATFORM_ENTROPY"
	.align	4
.LC38:
	.string	"MBEDTLS_PK_RSA_ALT_SUPPORT"
	.align	4
.LC39:
	.string	"MBEDTLS_PKCS1_V15"
	.align	4
.LC40:
	.string	"MBEDTLS_PKCS1_V21"
	.align	4
.LC41:
	.string	"MBEDTLS_SELF_TEST"
	.align	4
.LC42:
	.string	"MBEDTLS_SSL_ALL_ALERT_MESSAGES"
	.align	4
.LC43:
	.string	"MBEDTLS_SSL_ENCRYPT_THEN_MAC"
	.align	4
.LC44:
	.string	"MBEDTLS_SSL_EXTENDED_MASTER_SECRET"
	.align	4
.LC45:
	.string	"MBEDTLS_SSL_FALLBACK_SCSV"
	.align	4
.LC46:
	.string	"MBEDTLS_SSL_RENEGOTIATION"
	.align	4
.LC47:
	.string	"MBEDTLS_SSL_MAX_FRAGMENT_LENGTH"
	.align	4
.LC48:
	.string	"MBEDTLS_SSL_PROTO_TLS1"
	.align	4
.LC49:
	.string	"MBEDTLS_SSL_PROTO_TLS1_1"
	.align	4
.LC50:
	.string	"MBEDTLS_SSL_PROTO_TLS1_2"
	.align	4
.LC51:
	.string	"MBEDTLS_SSL_ALPN"
	.align	4
.LC52:
	.string	"MBEDTLS_SSL_SESSION_TICKETS"
	.align	4
.LC53:
	.string	"MBEDTLS_SSL_EXPORT_KEYS"
	.align	4
.LC54:
	.string	"MBEDTLS_SSL_SERVER_NAME_INDICATION"
	.align	4
.LC55:
	.string	"MBEDTLS_SSL_TRUNCATED_HMAC"
	.align	4
.LC56:
	.string	"MBEDTLS_VERSION_FEATURES"
	.align	4
.LC57:
	.string	"MBEDTLS_X509_CHECK_KEY_USAGE"
	.align	4
.LC58:
	.string	"MBEDTLS_X509_CHECK_EXTENDED_KEY_USAGE"
	.align	4
.LC59:
	.string	"MBEDTLS_X509_RSASSA_PSS_SUPPORT"
	.align	4
.LC60:
	.string	"MBEDTLS_AESNI_C"
	.align	4
.LC61:
	.string	"MBEDTLS_AES_C"
	.align	4
.LC62:
	.string	"MBEDTLS_ASN1_PARSE_C"
	.align	4
.LC63:
	.string	"MBEDTLS_ASN1_WRITE_C"
	.align	4
.LC64:
	.string	"MBEDTLS_BASE64_C"
	.align	4
.LC65:
	.string	"MBEDTLS_BIGNUM_C"
	.align	4
.LC66:
	.string	"MBEDTLS_CCM_C"
	.align	4
.LC67:
	.string	"MBEDTLS_CERTS_C"
	.align	4
.LC68:
	.string	"MBEDTLS_CIPHER_C"
	.align	4
.LC69:
	.string	"MBEDTLS_CTR_DRBG_C"
	.align	4
.LC70:
	.string	"MBEDTLS_DHM_C"
	.align	4
.LC71:
	.string	"MBEDTLS_ECDH_C"
	.align	4
.LC72:
	.string	"MBEDTLS_ECDSA_C"
	.align	4
.LC73:
	.string	"MBEDTLS_ECP_C"
	.align	4
.LC74:
	.string	"MBEDTLS_ENTROPY_C"
	.align	4
.LC75:
	.string	"MBEDTLS_ERROR_C"
	.align	4
.LC76:
	.string	"MBEDTLS_GCM_C"
	.align	4
.LC77:
	.string	"MBEDTLS_HMAC_DRBG_C"
	.align	4
.LC78:
	.string	"MBEDTLS_MD_C"
	.align	4
.LC79:
	.string	"MBEDTLS_MD5_C"
	.align	4
.LC80:
	.string	"MBEDTLS_OID_C"
	.align	4
.LC81:
	.string	"MBEDTLS_PADLOCK_C"
	.align	4
.LC82:
	.string	"MBEDTLS_PEM_PARSE_C"
	.align	4
.LC83:
	.string	"MBEDTLS_PEM_WRITE_C"
	.align	4
.LC84:
	.string	"MBEDTLS_PK_C"
	.align	4
.LC85:
	.string	"MBEDTLS_PK_PARSE_C"
	.align	4
.LC86:
	.string	"MBEDTLS_PK_WRITE_C"
	.align	4
.LC87:
	.string	"MBEDTLS_PKCS5_C"
	.align	4
.LC88:
	.string	"MBEDTLS_PKCS12_C"
	.align	4
.LC89:
	.string	"MBEDTLS_PLATFORM_C"
	.align	4
.LC90:
	.string	"MBEDTLS_RSA_C"
	.align	4
.LC91:
	.string	"MBEDTLS_SHA1_C"
	.align	4
.LC92:
	.string	"MBEDTLS_SHA256_C"
	.align	4
.LC93:
	.string	"MBEDTLS_SHA512_C"
	.align	4
.LC94:
	.string	"MBEDTLS_SSL_CACHE_C"
	.align	4
.LC95:
	.string	"MBEDTLS_SSL_COOKIE_C"
	.align	4
.LC96:
	.string	"MBEDTLS_SSL_TICKET_C"
	.align	4
.LC97:
	.string	"MBEDTLS_SSL_CLI_C"
	.align	4
.LC98:
	.string	"MBEDTLS_SSL_SRV_C"
	.align	4
.LC99:
	.string	"MBEDTLS_SSL_TLS_C"
	.align	4
.LC100:
	.string	"MBEDTLS_VERSION_C"
	.align	4
.LC101:
	.string	"MBEDTLS_X509_USE_C"
	.align	4
.LC102:
	.string	"MBEDTLS_X509_CRT_PARSE_C"
	.align	4
.LC103:
	.string	"MBEDTLS_X509_CRL_PARSE_C"
	.align	4
.LC104:
	.string	"MBEDTLS_X509_CSR_PARSE_C"
	.align	4
.LC105:
	.string	"MBEDTLS_X509_CREATE_C"
	.align	4
.LC106:
	.string	"MBEDTLS_X509_CRT_WRITE_C"
	.align	4
.LC107:
	.string	"MBEDTLS_X509_CSR_WRITE_C"
	.section	.data.features,"aw",@progbits
	.align	4
	.type	features, @object
	.size	features, 432
features:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC87
	.word	.LC88
	.word	.LC89
	.word	.LC90
	.word	.LC91
	.word	.LC92
	.word	.LC93
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	.LC102
	.word	.LC103
	.word	.LC104
	.word	.LC105
	.word	.LC106
	.word	.LC107
	.word	0
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.align	4
.LEFDE0:
	.text
.Letext0:
	.file 2 "D:/ESP32/esp-idf-v3.1-rc1/components/newlib/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xfa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0xc
	.4byte	.LASF13
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
	.byte	0x4
	.4byte	0x7b
	.uleb128 0x5
	.4byte	0x6e
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x75
	.4byte	.LLST0
	.uleb128 0x8
	.string	"idx"
	.byte	0x1
	.2byte	0x2f1
	.4byte	0xcb
	.4byte	.LLST1
	.uleb128 0x9
	.4byte	.LVL3
	.4byte	0xf2
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x75
	.uleb128 0xb
	.4byte	0x75
	.4byte	0xe1
	.uleb128 0xc
	.4byte	0x60
	.byte	0x6b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x22
	.4byte	0xd1
	.uleb128 0x5
	.byte	0x3
	.4byte	features
	.uleb128 0xe
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x2
	.byte	0x1c
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x3
	.4byte	features
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x3
	.4byte	features
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"long long int"
.LASF14:
	.string	"mbedtls_version_check_feature"
.LASF12:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF15:
	.string	"feature"
.LASF11:
	.string	"features"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF16:
	.string	"strcmp"
.LASF1:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF4:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"sizetype"
.LASF13:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/version_features.c"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
