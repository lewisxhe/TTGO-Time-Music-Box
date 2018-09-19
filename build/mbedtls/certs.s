	.file	"certs.c"
	.text
.Ltext0:
	.global	mbedtls_test_cli_key_len
	.section	.rodata.mbedtls_test_cli_key_len,"a",@progbits
	.align	4
	.type	mbedtls_test_cli_key_len, @object
	.size	mbedtls_test_cli_key_len, 4
mbedtls_test_cli_key_len:
	.word	1707
	.global	mbedtls_test_cli_crt_len
	.section	.rodata.mbedtls_test_cli_crt_len,"a",@progbits
	.align	4
	.type	mbedtls_test_cli_crt_len, @object
	.size	mbedtls_test_cli_crt_len, 4
mbedtls_test_cli_crt_len:
	.word	1303
	.global	mbedtls_test_srv_key_len
	.section	.rodata.mbedtls_test_srv_key_len,"a",@progbits
	.align	4
	.type	mbedtls_test_srv_key_len, @object
	.size	mbedtls_test_srv_key_len, 4
mbedtls_test_srv_key_len:
	.word	1707
	.global	mbedtls_test_srv_crt_len
	.section	.rodata.mbedtls_test_srv_crt_len,"a",@progbits
	.align	4
	.type	mbedtls_test_srv_crt_len, @object
	.size	mbedtls_test_srv_crt_len, 4
mbedtls_test_srv_crt_len:
	.word	1197
	.global	mbedtls_test_ca_pwd_len
	.section	.rodata.mbedtls_test_ca_pwd_len,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_pwd_len, @object
	.size	mbedtls_test_ca_pwd_len, 4
mbedtls_test_ca_pwd_len:
	.word	12
	.global	mbedtls_test_ca_key_len
	.section	.rodata.mbedtls_test_ca_key_len,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_key_len, @object
	.size	mbedtls_test_ca_key_len, 4
mbedtls_test_ca_key_len:
	.word	1782
	.global	mbedtls_test_ca_crt_len
	.section	.rodata.mbedtls_test_ca_crt_len,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_crt_len, @object
	.size	mbedtls_test_ca_crt_len, 4
mbedtls_test_ca_crt_len:
	.word	1307
	.global	mbedtls_test_cli_key
	.section	.data.mbedtls_test_cli_key,"aw",@progbits
	.align	4
	.type	mbedtls_test_cli_key, @object
	.size	mbedtls_test_cli_key, 4
mbedtls_test_cli_key:
	.word	mbedtls_test_cli_key_rsa
	.global	mbedtls_test_cli_crt
	.section	.data.mbedtls_test_cli_crt,"aw",@progbits
	.align	4
	.type	mbedtls_test_cli_crt, @object
	.size	mbedtls_test_cli_crt, 4
mbedtls_test_cli_crt:
	.word	mbedtls_test_cli_crt_rsa
	.global	mbedtls_test_srv_key
	.section	.data.mbedtls_test_srv_key,"aw",@progbits
	.align	4
	.type	mbedtls_test_srv_key, @object
	.size	mbedtls_test_srv_key, 4
mbedtls_test_srv_key:
	.word	mbedtls_test_srv_key_rsa
	.global	mbedtls_test_srv_crt
	.section	.data.mbedtls_test_srv_crt,"aw",@progbits
	.align	4
	.type	mbedtls_test_srv_crt, @object
	.size	mbedtls_test_srv_crt, 4
mbedtls_test_srv_crt:
	.word	mbedtls_test_srv_crt_rsa
	.global	mbedtls_test_ca_pwd
	.section	.data.mbedtls_test_ca_pwd,"aw",@progbits
	.align	4
	.type	mbedtls_test_ca_pwd, @object
	.size	mbedtls_test_ca_pwd, 4
mbedtls_test_ca_pwd:
	.word	mbedtls_test_ca_pwd_rsa
	.global	mbedtls_test_ca_key
	.section	.data.mbedtls_test_ca_key,"aw",@progbits
	.align	4
	.type	mbedtls_test_ca_key, @object
	.size	mbedtls_test_ca_key, 4
mbedtls_test_ca_key:
	.word	mbedtls_test_ca_key_rsa
	.global	mbedtls_test_ca_crt
	.section	.data.mbedtls_test_ca_crt,"aw",@progbits
	.align	4
	.type	mbedtls_test_ca_crt, @object
	.size	mbedtls_test_ca_crt, 4
mbedtls_test_ca_crt:
	.word	mbedtls_test_ca_crt_rsa
	.global	mbedtls_test_cas_len
	.section	.rodata.mbedtls_test_cas_len,"a",@progbits
	.align	4
	.type	mbedtls_test_cas_len, @object
	.size	mbedtls_test_cas_len, 16
mbedtls_test_cas_len:
	.word	1307
	.word	1307
	.word	883
	.word	0
	.global	mbedtls_test_cas
	.section	.data.mbedtls_test_cas,"aw",@progbits
	.align	4
	.type	mbedtls_test_cas, @object
	.size	mbedtls_test_cas, 16
mbedtls_test_cas:
	.word	mbedtls_test_ca_crt_rsa_sha1
	.word	mbedtls_test_ca_crt_rsa_sha256
	.word	mbedtls_test_ca_crt_ec
	.word	0
	.global	mbedtls_test_cas_pem_len
	.section	.rodata.mbedtls_test_cas_pem_len,"a",@progbits
	.align	4
	.type	mbedtls_test_cas_pem_len, @object
	.size	mbedtls_test_cas_pem_len, 4
mbedtls_test_cas_pem_len:
	.word	3495
	.global	mbedtls_test_cas_pem
	.section	.rodata.mbedtls_test_cas_pem,"a",@progbits
	.align	4
	.type	mbedtls_test_cas_pem, @object
	.size	mbedtls_test_cas_pem, 3495
mbedtls_test_cas_pem:
	.ascii	"-----BEGIN CERTIFICATE-----\r\nMIIDhzCCAm+gAwIBAgIBADANBgkqh"
	.ascii	"kiG9w0BAQUFADA7MQswCQYDVQQGEwJOTDER\r\nMA8GA1UEChMIUG9sYXJTU"
	.ascii	"0wxGTAXBgNVBAMTEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\nMTEwMjEyMTQ0N"
	.ascii	"DAwWhcNMjEwMjEyMTQ0NDAwWjA7MQswCQYDVQQGEwJOTDERMA8G\r\nA1UEC"
	.ascii	"hMIUG9sYXJTU0wxGTAXBgNVBAMTEFBvbGFyU1NMIFRlc3QgQ0EwggEiMA0G\r"
	.ascii	"\nCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA3zf8F7vglp0/ht6WMn1EpR"
	.ascii	"agzSHx\r\nmdTs6st8GFgIlKXsm8WL3xoemTiZhx57wI053zhdcHgH057Zk+"
	.ascii	"i5clHFzqMwUqny\r\n50BwFMtEonILwuVA+T7lpg6z+exKY8C4KQB0nFc7qK"
	.ascii	"UEkHHxvYPZP9al4jwqj+8n\r\nYMPGn8u67GB9t+aEMr5P+1gmIgNb1LTV+/"
	.ascii	"Xjli5wwOQuvfwu7uJBVcA0Ln0kcmnL\r\nR7EUQIN9Z/SG9jGr8XmksrUuEv"
	.ascii	"mEF/Bibyc+E1ixVA0hmnM3oTDPb5Lc9un8rNsu\r\nKNF+AksjoBXyOGVkCe"
	.ascii	"oMbo4bF6BxyLObyavpw/LPh5aPgAIynplYb6LVAgMBAAGj\r\ngZUwgZIwDA"
	.ascii	"YDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUtFrkpbPe0lL2udWmlQ/rPrzH\r\n/f"
	.ascii	"8wYwYDVR0jBFwwWoAUtFrkpbPe0lL2udWmlQ/rPrzH/f+hP6Q9MDsxCzAJBg"
	.ascii	"NV\r\nBAYTAk5MMREwDwYDVQQKEwhQb2xhclNTTDEZMBcGA1UEAxMQUG9sYX"
	.ascii	"JTU0wgVGVz\r\ndCBDQYIBADANBgkqhkiG9w0BAQUFAAOCAQEAuP1U2ABUkI"
	.ascii	"slsCfdlc2i94QHHYeJ\r\nSsR4EdgHtdciUI5I62J6Mom+Y0dT/7a+8S6MVM"
	.ascii	"CZP6C5NyNyXw1GWY/YR82XTJ8H\r\nDBJiCTok5DbZ6SzaONBzdWHXwWwmi5"
	.ascii	"vg1dxn7YxrM9d0IjxM27WNKs4sDQhZBQkF\r\npjmfs2cb4oPl4Y9T9meTx/"
	.ascii	"lvdkRYEug61Jfn6cA+qHpyPYdTH+UshITnmp5/Ztkf\r\nm/UTSLBNFNHesi"
	.ascii	"TZeH31NcxYGdHSme9Nc/gfidRa0FLOCfWxRlFqAI47zG9jAQCZ\r\n7Z2mCG"
	.ascii	"DNMhjQc+BYcdnl0lPXjdDK6V0qCg1dVewhUBcW5gZKzV7e9+DpVA==\r\n--"
	.ascii	"---END CERTIFICATE-----\r\n-----BEGIN CERTIFICATE-----\r\nMI"
	.ascii	"IDhzCCAm+gAwIBAgIBADANBgkqhkiG9w0BAQsFADA7MQswCQYDVQQGEwJOTD"
	.ascii	"ER\r\nMA8GA1UECgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3"
	.ascii	"QgQ0EwHhcN\r\nMTcwNTA0MTY1NzAxWhcNMjcwNTA1MTY1NzAxWjA7MQswCQ"
	.ascii	"YDVQQGEwJOTDERMA8G\r\nA1UECgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbG"
	.ascii	"FyU1NMIFRlc3QgQ0EwggEiMA0G\r\nCSqGSIb3DQEBAQUAA4IBDwAwggEKAo"
	.ascii	"IBAQDA3zf8F7vglp0/ht6WMn1EpRagzSHx\r\nmdTs6st8GFgIlKXsm8WL3x"
	.ascii	"oemTiZhx57wI053zhdcHgH057Zk+i5clHFzqMwUqny\r\n50BwFMtEonILwu"
	.ascii	"VA+T7lpg6z+exKY8C4KQB0nFc7qKUEkHHxvYPZP9al4jwqj+8n\r\nYMPGn8"
	.ascii	"u67GB9t+aEMr5P+1gmIgNb1LTV+/Xjli5wwOQuvfwu7uJBVcA0Ln0kcmnL\r"
	.ascii	"\nR7EUQIN9Z/SG9jGr8XmksrUuEvmEF/Bibyc+E1ixVA0hmnM3oTDPb5Lc9u"
	.ascii	"n8rNsu\r\nKNF+AksjoBXyOGVkCeoMbo4bF6BxyLObyavpw/LPh5aPgAIynp"
	.ascii	"lYb6LVAgMBAAGj\r\ngZUwg"
	.ascii	"ZIwHQYDVR0OBBYEFLRa5KWz3tJS9rnVppUP6z68x/3/MGMGA1UdIwRcMFqA\r"
	.ascii	"\nFLRa5KWz3tJS9rnVppUP6z68x/3/oT+kPTA7MQswCQYDVQQGEwJOTDERMA"
	.ascii	"8GA1UE\r\nCgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0"
	.ascii	"GCAQAwDAYDVR0T\r\nBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAHK/HHr"
	.ascii	"TZMnnVMpde1io+voAtql7j\r\n4sRhLrjD7o3THtwRbDa2diCvpq0Sq23Ng2"
	.ascii	"LMYoXsOxoL/RQK3iN7UKxV3MKPEr0w\r\nXQS+kKQqiT2bsfrjnWMVHZtUOM"
	.ascii	"pm6FNqcdGm/Rss3vKda2lcKl8kUnq/ylc1+QbB\r\nG6A6tUvQcr2ZyWfVg+"
	.ascii	"mM5XkhTrOOXus2OLikb4WwEtJTJRNE0f+yPODSUz0/vT57\r\nApH0CnB80b"
	.ascii	"YJshYHPHHymOtleAB8KSYtqm75g/YNobjnjB6cm4HkW3OZRVIl6fYY\r\nn2"
	.ascii	"0NRVA1Vjs6GAROr4NqW4k/+LofY9y0LLDE+p0oIEKXIsIvhPr39swxSA==\r"
	.ascii	"\n-----END CERTIFICATE-----\r\n-----BEGIN CERTIFICATE-----\r"
	.ascii	"\nMIICUjCCAdegAwIBAgIJAMFD4n5iQ8zoMAoGCCqGSM49BAMCMD4xCzAJBg"
	.ascii	"NVBAYT\r\nAk5MMREwDwYDVQQKEwhQb2xhclNTTDEcMBoGA1UEAxMTUG9sYX"
	.ascii	"Jzc2wgVGVzdCBF\r\nQyBDQTAeFw0xMzA5MjQxNTQ5NDhaFw0yMzA5MjIxNT"
	.ascii	"Q5NDhaMD4xCzAJBgNVBAYT\r\nAk5MMREwDwYDVQQKEwhQb2xhclNTTDEcMB"
	.ascii	"oGA1UEAxMTUG9sYXJzc2wgVGVzdCBF\r\nQyBDQTB2MBAGByqGSM49AgEGBS"
	.ascii	"uBBAAiA2IABMPaKzRBN1gvh1b+/Im6KUNLTuBu\r\nww5XUzM5WNRStJGVOQ"
	.ascii	"sj318XJGJI/BqVKc4sLYfCiFKAr9ZqqyHduNMcbli4yuiy\r\naY7zQa0pw7"
	.ascii	"RfdadHb9UZKVVpmlM7ILRmFmAzHqOBoDCBnTAdBgNVHQ4EFgQUnW0g\r\nJE"
	.ascii	"kBPyvLeLUZvH4kydv7NnwwbgYDVR0jBGcwZYAUnW0gJEkBPyvLeLUZvH4kyd"
	.ascii	"v7\r\nNnyhQqRAMD4xCzAJBgNVBAYTAk5MMREwDwYDVQQKEwhQb2xhclNTTD"
	.ascii	"EcMBoGA1UE\r\nAxM"
	.string	"TUG9sYXJzc2wgVGVzdCBFQyBDQYIJAMFD4n5iQ8zoMAwGA1UdEwQFMAMBAf8w\r\nCgYIKoZIzj0EAwIDaQAwZgIxAMO0YnNWKJUAfXgSJtJxexn4ipg+kv4znuR50v56\r\nt4d0PCu412mUC6Nnd7izvtE2MgIxAP1nnJQjZ8BWukszFQDG48wxCCyci9qpdSMv\r\nuCjn8pwUOkABXK8Mss90fzCfCEOtIA==\r\n-----END CERTIFICATE-----\r\n"
	.global	mbedtls_test_cli_key_rsa_len
	.section	.rodata.mbedtls_test_cli_key_rsa_len,"a",@progbits
	.align	4
	.type	mbedtls_test_cli_key_rsa_len, @object
	.size	mbedtls_test_cli_key_rsa_len, 4
mbedtls_test_cli_key_rsa_len:
	.word	1707
	.global	mbedtls_test_cli_key_rsa
	.section	.rodata.mbedtls_test_cli_key_rsa,"a",@progbits
	.align	4
	.type	mbedtls_test_cli_key_rsa, @object
	.size	mbedtls_test_cli_key_rsa, 1707
mbedtls_test_cli_key_rsa:
	.ascii	"-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEAyHTEzLn5t"
	.ascii	"XnpRdkUYLB9u5Pyax6fM60Nj4o8VmXl3ETZzGaF\r\nB9X4J7BKNdBjngpuG"
	.ascii	"7fa8H6r7gwQk4ZJGDTzqCrSV/Uu1C93KYRhTYJQj6eVSHD1\r\nbk2y1RPD0"
	.ascii	"hrt5kPqQhTrdOrA7R/UV06p86jt0uDBMHEwMjDV0/YI0FZPRo7yX/k9\r\nZ"
	.ascii	"5GIMC5Cst99++UMd//sMcB4j7/Cf8qtbCHWjdmLao5v4Jv4EFbMs44TFeY0B"
	.ascii	"GbH\r\n7vk2DmqV9gmaBmf0ZXH4yqSxJeD+PIs1BGe64E92hfx//DZrtenNL"
	.ascii	"QNiTrM9AM+v\r\ndqBpVoNq0qjU51Bx5rU2BXcFbXvI5MT9TNUhXwIDAQABA"
	.ascii	"oIBAGdNtfYDiap6bzst\r\nyhCiI8m9TtrhZw4MisaEaN/ll3XSjaOG2dvV6"
	.ascii	"xMZCMV+5TeXDHOAZnY18Yi18vzz\r\n4Ut2TnNFzizCECYNaA2fST3WgInnx"
	.ascii	"UkV3YXAyP6CNxJaCmv2aA0yFr2kFVSeaKGt\r\nymvljNp2NVkvm7Th8fBQB"
	.ascii	"O7I7AXhz43k0mR7XmPgewe8ApZOG3hstkOaMvbWAvWA\r\nzCZupdDjZYjOJ"
	.ascii	"qlA4eEA4H8/w7F83r5CugeBE8LgEREjLPiyejrU5H1fubEY+h0d\r\nl5HZB"
	.ascii	"J68ybTXfQ5U9o/QKA3dd0toBEhhdRUDGzWtjvwkEQfqF1reGWj/tod/gCpf\r"
	.ascii	"\nDFi6X0ECgYEA4wOv/pjSC3ty6TuOvKX2rOUiBrLXXv2JSxZnMoMiWI5ipL"
	.ascii	"Qt+RYT\r\nVPafL/m7Dn6MbwjayOkcZhBwk5CNz5A6Q4lJ64Mq/lqHznRCQQ"
	.ascii	"2Mc1G8eyDF/fYL\r\nZe2pLvwP9VD5jTc2miDfw+MnvJhywRRLcemDFP8k4h"
	.ascii	"QVtm8PMp3ZmNECgYEA4gz7\r\nwzObR4gn8ibe617uQPZjWzUj9dUHYd+in1"
	.ascii	"gwBCIrtNnaRn9I9U/Q6tegRYpii4ys\r\nc176NmU+umy6XmuSKV5qD9bSpZ"
	.ascii	"WG2nLFnslrN15Lm3fhZxoeMNhBaEDTnLT26yoi\r\n33gp0mSSWy94ZEqipm"
	.ascii	"s+ULF6sY1ZtFW6tpGFoy8CgYAQHhnnvJflIs2ky4q10B60\r\nZcxFp3rtDp"
	.ascii	"kp0JxhFLhiizFrujMtZSjYNm5U7KkgPVHhLELEUvCmOnKTt4ap/vZ0\r\nBx"
	.ascii	"JNe1GZH3pW6SAvGDQpl9sG7uu/vTFP+lCxukmzxB0DrrDcvorEkKMom7ZCCR"
	.ascii	"vW\r\nKZsZ6YeH2Z81BauRj218kQKBgQCUV/DgKP2985xDTT79N08jUo3hTP"
	.ascii	"5MVYCCuj/+\r\nUeEw1TvZcx3LJby7P6Xad6a1/BqveaGyFKIfEFIaBUBItk"
	.ascii	"801sDDpDaYc4gL00Xc\r\n7lFuBHOZkxJYlss5QrGpuOEl9ZwUt5I"
	.string	"rFLBdYaKqNHzNVC1pCPfb/JyH6Dr2HUxq\r\ngxUwAQKBgQCcU6G2L8AG9d9c0UpOyL1tMvFe5Ttw0KjlQVdsh1MP6yigYo9DYuwu\r\nbHFVW2r0dBTqegP2/KTOxKzaHfC1qf0RGDsUoJCNJrd1cwoCLG8P2EF4w3OBrKqv\r\n8u4ytY0F+Vlanj5lm3TaoHSVF1+NWPyOTiwevIECGKwSxvlki4fDAA==\r\n-----END RSA PRIVATE KEY-----\r\n"
	.global	mbedtls_test_cli_crt_rsa_len
	.section	.rodata.mbedtls_test_cli_crt_rsa_len,"a",@progbits
	.align	4
	.type	mbedtls_test_cli_crt_rsa_len, @object
	.size	mbedtls_test_cli_crt_rsa_len, 4
mbedtls_test_cli_crt_rsa_len:
	.word	1303
	.global	mbedtls_test_cli_crt_rsa
	.section	.rodata.mbedtls_test_cli_crt_rsa,"a",@progbits
	.align	4
	.type	mbedtls_test_cli_crt_rsa, @object
	.size	mbedtls_test_cli_crt_rsa, 1303
mbedtls_test_cli_crt_rsa:
	.ascii	"-----BEGIN CERTIFICATE-----\r\nMIIDhTCCAm2gAwIBAgIBBDANBgkqh"
	.ascii	"kiG9w0BAQsFADA7MQswCQYDVQQGEwJOTDER\r\nMA8GA1UECgwIUG9sYXJTU"
	.ascii	"0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\nMTcwNTA1MTMwN"
	.ascii	"zU5WhcNMjcwNTA2MTMwNzU5WjA8MQswCQYDVQQGEwJOTDERMA8G\r\nA1UEC"
	.ascii	"gwIUG9sYXJTU0wxGjAYBgNVBAMMEVBvbGFyU1NMIENsaWVudCAyMIIBIjAN\r"
	.ascii	"\nBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyHTEzLn5tXnpRdkUYLB9u5"
	.ascii	"Pyax6f\r\nM60Nj4o8VmXl3ETZzGaFB9X4J7BKNdBjngpuG7fa8H6r7gwQk4"
	.ascii	"ZJGDTzqCrSV/Uu\r\n1C93KYRhTYJQj6eVSHD1bk2y1RPD0hrt5kPqQhTrdO"
	.ascii	"rA7R/UV06p86jt0uDBMHEw\r\nMjDV0/YI0FZPRo7yX/k9Z5GIMC5Cst99++"
	.ascii	"UMd//sMcB4j7/Cf8qtbCHWjdmLao5v\r\n4Jv4EFbMs44TFeY0BGbH7vk2Dm"
	.ascii	"qV9gmaBmf0ZXH4yqSxJeD+PIs1BGe64E92hfx/\r\n/DZrtenNLQNiTrM9AM"
	.ascii	"+vdqBpVoNq0qjU51Bx5rU2BXcFbXvI5MT9TNUhXwIDAQAB\r\no4GSMIGPMB"
	.ascii	"0GA1UdDgQWBBRxoQBzckAvVHZeM/xSj7zx3WtGITBjBgNVHSMEXDBa\r\ngB"
	.ascii	"S0WuSls97SUva51aaVD+s+vMf9/6E/pD0wOzELMAkGA1UEBhMCTkwxETAPBg"
	.ascii	"NV\r\nBAoMCFBvbGFyU1NMMRkwFwYDVQQDDBBQb2xhclNTTCBUZXN0IENBgg"
	.ascii	"EAMAkGA1Ud\r\nEwQCMAAwDQYJKoZIhvcNAQELBQADggEBAC7yO786NvcHpK"
	.ascii	"8UovKIG9cB32oSQQom\r\nLoR0eHDRzdqEkoq7yGZufHFiRAAzbMqJfogRtx"
	.ascii	"lrWAeB4y/jGaMBV25IbFOIcH2W\r\niCEaMMbG+VQLKNvuC63kmw/Zewc"
	.string	"9ThM6Pa1Hcy0axT0faf1B/U01j0FIcw/6mTfK\r\nD8w48OIwc1yr0JtutCVjig5DC0yznGMt32RyseOLcUe+lfq005v2PAiCozr5X8rE\r\nofGZpiM2NqRPePgYy+Vc75Zk28xkRQq1ncprgQb3S4vTsZdScpM9hLf+eMlrgqlj\r\nc5PLSkXBeLE5+fedkyfTaLxxQlgCpuoOhKBm04/R1pWNzUHyqagjO9Q=\r\n-----END CERTIFICATE-----\r\n"
	.global	mbedtls_test_srv_key_rsa_len
	.section	.rodata.mbedtls_test_srv_key_rsa_len,"a",@progbits
	.align	4
	.type	mbedtls_test_srv_key_rsa_len, @object
	.size	mbedtls_test_srv_key_rsa_len, 4
mbedtls_test_srv_key_rsa_len:
	.word	1707
	.global	mbedtls_test_srv_key_rsa
	.section	.rodata.mbedtls_test_srv_key_rsa,"a",@progbits
	.align	4
	.type	mbedtls_test_srv_key_rsa, @object
	.size	mbedtls_test_srv_key_rsa, 1707
mbedtls_test_srv_key_rsa:
	.ascii	"-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEAwU2j3efNH"
	.ascii	"dEE10lyuJmsDnjkOjxKzzoTFtBa5M2jAIin7h5r\r\nlqdStJDvLXJ6PiSa/"
	.ascii	"LY0rCT1d+AmZIycsCh9odrqjObJHJa8/sEEUrM21KP64bF2\r\n2JDBYbRmU"
	.ascii	"jaiJlOqq3ReB30Zgtsq2B+g2Q0cLUlm91slc0boC4pPaQy1AJDh2oIQ\r\nZ"
	.ascii	"n2uVCuLZXmRoeJhw81ASQjuaAzxi4bSRr/QuKoRAx5/VqgaHkQYDw+Fi9qLR"
	.ascii	"F7i\r\nGMZiL8dmjfpd2H3zJ4kpAcWQDj8n8TDISg7v1t7HxydrxwU9esQCP"
	.ascii	"JodPg/oNJhb\r\ny3NLUpbYEaIsgIhpOVrTD7DeWS8Rx/fqEgEwlwIDAQABA"
	.ascii	"oIBAQCXR0S8EIHFGORZ\r\n++AtOg6eENxD+xVs0f1IeGz57Tjo3QnXX7VBZ"
	.ascii	"Ndj+p1ECvhCE/G7XnkgU5hLZX+G\r\nZ0jkz/tqJOI0vRSdLBbipHnWouyBQ"
	.ascii	"4e/A1yIJdlBtqXxJ1KE/ituHRbNc4j4kL8Z\r\n/r6pvwnTI0PSx2Eqs048Y"
	.ascii	"dS92LT6qAv4flbNDxMn2uY7s4ycS4Q8w1JXnCeaAnYm\r\nWYI5wxO+bvREL"
	.ascii	"R2Mcz5DmVnL8jRyml6l6582bSv5oufReFIbyPZbQWlXgYnpu6He\r\nGTc7E"
	.ascii	"1zKYQGG/9+DQUl/1vQuCPqQwny0tQoX2w5tdYpdMdVm+zkLtbajzdTviJJa\r"
	.ascii	"\nTWzL6lt5AoGBAN86+SVeJDcmQJcv4Eq6UhtRr4QGMiQMz0Sod6ettYxYzM"
	.ascii	"gxtw28\r\nCIrgpozCc+UaZJLo7UxvC6an85r1b2nKPCLQFaggJ0H4Q0J/sZ"
	.ascii	"OhBIXaoBzWxveK\r\nnupceKdVxGsFi8CDy86DBfiyFivfBj+47BbaQzPBj7"
	.ascii	"C4rK7UlLjab2rDAoGBAN2u\r\nAM2gchoFiu4v1HFL8D7lweEpi6ZnMJjnEu"
	.ascii	"/dEgGQJFjwdpLnPbsj4c75odQ4Gz8g\r\nsw9lao9VVzbusoRE/JGI4aTdO0"
	.ascii	"pATXyG7eG1Qu+5Yc1YGXcCrliA2xM9xx+d7f+s\r\nmPzN+WIEg5GJDYZDjA"
	.ascii	"zHG5BNvi/FfM1C9dOtjv2dAoGAF0t5KmwbjWHBhcVqO4Ic\r\nBVvN3BIlc1"
	.ascii	"ue2YRXEDlxY5b0r8N4XceMgKmW18OHApZxfl8uPDauWZLXOgl4uepv\r\nwh"
	.ascii	"ZC3EuWrSyyICNhLY21Ah7hbIEBPF3L3ZsOwC+UErL+dXWLdB56Jgy3gZaBeW"
	.ascii	"7b\r\nvDrEnocJbqCm7IukhXHOBK8CgYEAwqdHB0hqyNSzIOGY7v9abzB6pU"
	.ascii	"dA3BZiQvEs\r\n3LjHVd4HPJ2x0N8CgrBIWOE0q8+0hSMmeE96WW/7jD3fPW"
	.ascii	"wCR5zlXknxBQsfv0gP\r\n3BC5PR0Qdypz+d+9zfMf625kyit4T/h"
	.string	"zwhDveZUzHnk1Cf+IG7Q+TOEnLnWAWBED\r\nISOWmrUCgYAFEmRxgwAc/u+D6t0syCwAYh6POtscq9Y0i9GyWk89NzgC4NdwwbBH\r\n4AgahOxIxXx2gxJnq3yfkJfIjwf0s2DyP0kY2y6Ua1OeomPeY9mrIS4tCuDQ6LrE\r\nTB6l9VGoxJL4fyHnZb8L5gGvnB1bbD8cL6YPaDiOhcRseC9vBiEuVg==\r\n-----END RSA PRIVATE KEY-----\r\n"
	.global	mbedtls_test_srv_crt_rsa_len
	.section	.rodata.mbedtls_test_srv_crt_rsa_len,"a",@progbits
	.align	4
	.type	mbedtls_test_srv_crt_rsa_len, @object
	.size	mbedtls_test_srv_crt_rsa_len, 4
mbedtls_test_srv_crt_rsa_len:
	.word	1197
	.global	mbedtls_test_srv_crt_rsa
	.section	.rodata.mbedtls_test_srv_crt_rsa,"a",@progbits
	.align	4
	.type	mbedtls_test_srv_crt_rsa, @object
	.size	mbedtls_test_srv_crt_rsa, 1197
mbedtls_test_srv_crt_rsa:
	.ascii	"-----BEGIN CERTIFICATE-----\r\nMIIDNzCCAh+gAwIBAgIBAjANBgkqh"
	.ascii	"kiG9w0BAQUFADA7MQswCQYDVQQGEwJOTDER\r\nMA8GA1UEChMIUG9sYXJTU"
	.ascii	"0wxGTAXBgNVBAMTEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\nMTEwMjEyMTQ0N"
	.ascii	"DA2WhcNMjEwMjEyMTQ0NDA2WjA0MQswCQYDVQQGEwJOTDERMA8G\r\nA1UEC"
	.ascii	"hMIUG9sYXJTU0wxEjAQBgNVBAMTCWxvY2FsaG9zdDCCASIwDQYJKoZIhvcN\r"
	.ascii	"\nAQEBBQADggEPADCCAQoCggEBAMFNo93nzR3RBNdJcriZrA545Do8Ss86Ex"
	.ascii	"bQWuTN\r\nowCIp+4ea5anUrSQ7y1yej4kmvy2NKwk9XfgJmSMnLAofaHa6o"
	.ascii	"zmyRyWvP7BBFKz\r\nNtSj+uGxdtiQwWG0ZlI2oiZTqqt0Xgd9GYLbKtgfoN"
	.ascii	"kNHC1JZvdbJXNG6AuKT2kM\r\ntQCQ4dqCEGZ9rlQri2V5kaHiYcPNQEkI7m"
	.ascii	"gM8YuG0ka/0LiqEQMef1aoGh5EGA8P\r\nhYvai0Re4hjGYi/HZo36Xdh98y"
	.ascii	"eJKQHFkA4/J/EwyEoO79bex8cna8cFPXrEAjya\r\nHT4P6DSYW8tzS1KW2B"
	.ascii	"GiLICIaTla0w+w3lkvEcf36hIBMJcCAwEAAaNNMEswCQYD\r\nVR0TBAIwAD"
	.ascii	"AdBgNVHQ4EFgQUpQXoZLjc32APUBJNYKhkr02LQ5MwHwYDVR0jBBgw\r\nFo"
	.ascii	"AUtFrkpbPe0lL2udWmlQ/rPrzH/f8wDQYJKoZIhvcNAQEFBQADggEBAJxnXC"
	.ascii	"lY\r\noHkbp70cqBrsGXLybA74czbO5RdLEgFs7rHVS9r+c293luS/KdliLS"
	.ascii	"cZqAzYVylw\r\nUfRWvKMoWhHYKp3dEIS4xTXk6/5zXxhv9Rw8SGc8qn6vIT"
	.ascii	"Hk1S1mP"
	.string	"evtekgasY5Y\r\niWQuM3h4YVlRH3HHEMAD1TnAexfXHHDFQGe+Bd1iAbz1/sH9H8l4StwX6egvTK3M\r\nwXRwkKkvjKaEDA9ATbZx0mI8LGsxSuCqe9r9dyjmttd47J1p1Rulz3CLzaRcVIuS\r\nRRQfaD8neM9c1S/iJ/amTVqJxA1KOdOS5780WhPfSArA+g4qAmSjelc3p4wWpha8\r\nzhuYwjVuX6JHG0c=\r\n-----END CERTIFICATE-----\r\n"
	.global	mbedtls_test_ca_pwd_rsa_len
	.section	.rodata.mbedtls_test_ca_pwd_rsa_len,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_pwd_rsa_len, @object
	.size	mbedtls_test_ca_pwd_rsa_len, 4
mbedtls_test_ca_pwd_rsa_len:
	.word	12
	.global	mbedtls_test_ca_pwd_rsa
	.section	.rodata.mbedtls_test_ca_pwd_rsa,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_pwd_rsa, @object
	.size	mbedtls_test_ca_pwd_rsa, 13
mbedtls_test_ca_pwd_rsa:
	.string	"PolarSSLTest"
	.global	mbedtls_test_ca_key_rsa_len
	.section	.rodata.mbedtls_test_ca_key_rsa_len,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_key_rsa_len, @object
	.size	mbedtls_test_ca_key_rsa_len, 4
mbedtls_test_ca_key_rsa_len:
	.word	1782
	.global	mbedtls_test_ca_key_rsa
	.section	.rodata.mbedtls_test_ca_key_rsa,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_key_rsa, @object
	.size	mbedtls_test_ca_key_rsa, 1782
mbedtls_test_ca_key_rsa:
	.ascii	"-----BEGIN RSA PRIVATE KEY-----\r\nProc-Type: 4,ENCRYPTED\r\n"
	.ascii	"DEK-Info: DES-EDE3-CBC,A8A95B05D5B7206B\r\n\r\n9Qd9GeArejl1G"
	.ascii	"DVh2lLV1bHt0cPtfbh5h/5zVpAVaFpqtSPMrElp50Rntn9et+JA\r\n7VOyb"
	.ascii	"oR+Iy2t/HU4WvA687k3Bppe9GwKHjHhtl//8xFKwZr3Xb5yO5JUP8AUctQq\r"
	.ascii	"\nNb8CLlZyuUC+52REAAthdWgsX+7dJO4yabzUcQ22Tp9JSD0hiL43BlkWYU"
	.ascii	"NK3dAo\r\nPZlmiptjnzVTjg1MxsBSydZinWOLBV8/JQgxSPo2yD4uEfig28"
	.ascii	"qbvQ2wNIn0pnAb\r\nGxnSAOazkongEGfvcjIIs+LZN9gXFhxcOh6kc4Q/c9"
	.ascii	"9B7QWETwLLkYgZ+z1a9VY9\r\ngEU7CwCxYCD+h9hY6FPmsK0/lC4O7aeRKp"
	.ascii	"Yq00rPPxs6i7phiexg6ax6yTMmArQq\r\nQmK3TAsJm8V/J5AWpLEV6jAFgR"
	.ascii	"GymGGHnof0DXzVWZidrcZJWTNuGEX90nB3ee2w\r\nPXJEFWKoD3K3aFcSLd"
	.ascii	"HYr3mLGxP7H9ThQai9VsycxZKS5kwvBKQ//YMrmFfwPk8x\r\nvTeY4KZMaU"
	.ascii	"rveEel5tWZC94RSMKgxR6cyE1nBXyTQnDOGbfpNNgBKxyKbINWoOJU\r\nWJ"
	.ascii	"ZAwlsQn+QzCDwpri7+sV1mS3gBE6UY7aQmnmiiaC2V3Hbphxct/en5QsfDOt"
	.ascii	"1X\r\nJczSfpRWLlbPznZg8OQh/VgCMA58N5DjOzTIK7sJJ5r+94ZBTCpgAM"
	.ascii	"bF588f0NTR\r\nKCe4yrxGJR7X02M4nvD4IwOlpsQ8xQxZtOSgXv4LkxvdU9"
	.ascii	"XJJKWZ/XNKJeWztxSe\r\nZ1vdTc2YfsDBA2SEv33vxHx2g1vqtw8SjDRT2R"
	.ascii	"aQSS0QuSaMJimdOX6mTOCBKk1J\r\n9Q5mXTrER+/LnK0jEmXsBXWA5bqqVZ"
	.ascii	"IyahXSx4VYZ7l7w/PHiUDtDgyRhMMKi4n2\r\niQvQcWSQTjrpnlJbca1/Dk"
	.ascii	"pRt3YwrvJwdqb8asZU2VrNETh5x0QVefDRLFiVpif/\r\ntUaeAe/P1F8OkS"
	.ascii	"7OIZDs1SUbv/sD2vMbhNkUoCms3/PvNtdnvgL4F0zhaDpKCmlT\r\nP8vx49"
	.ascii	"E7v5CyRNmED9zZg4o3wmMqrQO93PtTug3Eu9oVx1zPQM1NVMyBa2+f29DL\r"
	.ascii	"\n1nuTCeXdo9+ni45xx+jAI4DCwrRdhJ9uzZyC6962H37H6D+5naNvClFR1s"
	.ascii	"6li1Gb\r\nnqPoiy/OBsEx9CaDGcqQBp5Wme/3XW+6z1ISOx+igwNTVCT14m"
	.ascii	"HdBMbya0eIKft5\r\nX+GnwtgEMyCYyyWuUct8g4RzErcY9+yW9Om5Hzpx4z"
	.ascii	"OuW4NPZgPDTgK+t2RSL/Yq\r\nrE1njrgeGYcVeG3f+OftH4s6fPbq7t1A5Z"
	.ascii	"gUscbLMBqr9tK+OqygR4EgKBPsH6Cz\r\nL6zlv/2RV0qAHvVuDJcIDIgwY5"
	.ascii	"rJtINEm32rhOe"
	.string	"FNJwZS5MNIC1czXZx5//ugX7l\r\nI4sy5nbVhwSjtAk8Xg5dZbdTZ6mIrb7xqH+fdakZor1khG7bC2uIwibD3cSl2XkR\r\nwN48lslbHnqqagr6Xm1nNOSVl8C/6kbJEsMpLhAezfRtGwvOucoaE+WbeUNolGde\r\nP/eQiddSf0brnpiLJRh7qZrl9XuqYdpUqnoEdMAfotDOID8OtV7gt8a48ad8VPW2\r\n-----END RSA PRIVATE KEY-----\r\n"
	.section	.rodata.mbedtls_test_ca_crt_rsa_sha1,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_crt_rsa_sha1, @object
	.size	mbedtls_test_ca_crt_rsa_sha1, 1307
mbedtls_test_ca_crt_rsa_sha1:
	.ascii	"-----BEGIN CERTIFICATE-----\r\nMIIDhzCCAm+gAwIBAgIBADANBgkqh"
	.ascii	"kiG9w0BAQUFADA7MQswCQYDVQQGEwJOTDER\r\nMA8GA1UEChMIUG9sYXJTU"
	.ascii	"0wxGTAXBgNVBAMTEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\nMTEwMjEyMTQ0N"
	.ascii	"DAwWhcNMjEwMjEyMTQ0NDAwWjA7MQswCQYDVQQGEwJOTDERMA8G\r\nA1UEC"
	.ascii	"hMIUG9sYXJTU0wxGTAXBgNVBAMTEFBvbGFyU1NMIFRlc3QgQ0EwggEiMA0G\r"
	.ascii	"\nCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA3zf8F7vglp0/ht6WMn1EpR"
	.ascii	"agzSHx\r\nmdTs6st8GFgIlKXsm8WL3xoemTiZhx57wI053zhdcHgH057Zk+"
	.ascii	"i5clHFzqMwUqny\r\n50BwFMtEonILwuVA+T7lpg6z+exKY8C4KQB0nFc7qK"
	.ascii	"UEkHHxvYPZP9al4jwqj+8n\r\nYMPGn8u67GB9t+aEMr5P+1gmIgNb1LTV+/"
	.ascii	"Xjli5wwOQuvfwu7uJBVcA0Ln0kcmnL\r\nR7EUQIN9Z/SG9jGr8XmksrUuEv"
	.ascii	"mEF/Bibyc+E1ixVA0hmnM3oTDPb5Lc9un8rNsu\r\nKNF+AksjoBXyOGVkCe"
	.ascii	"oMbo4bF6BxyLObyavpw/LPh5aPgAIynplYb6LVAgMBAAGj\r\ngZUwgZIwDA"
	.ascii	"YDVR0TBAUwAwEB/zAdBgNVHQ4EFgQUtFrkpbPe0lL2udWmlQ/rPrzH\r\n/f"
	.ascii	"8wYwYDVR0jBFwwWoAUtFrkpbPe0lL2udWmlQ/rPrzH/f+hP6Q9MDsxCzAJBg"
	.ascii	"NV\r\nBAYTAk5MMREwDwYDVQQKEwhQb2xhclNTTDEZMBcGA1UEAxMQUG9sYX"
	.ascii	"JTU0wgVGVz\r\ndCBDQYIBADANBgkqhkiG9w0BAQUFAAOCAQEAuP1U2ABUkI"
	.ascii	"slsCfdlc2i94QHHYeJ\r\nSsR4EdgHtdciUI5I62J6Mom+Y0dT/7a+8S6MVM"
	.ascii	"CZP6C5NyNyXw1GWY/YR82XTJ8H\r\nDBJiCTok5DbZ6SzaONBzdWHXwWwmi5"
	.ascii	"v"
	.string	"g1dxn7YxrM9d0IjxM27WNKs4sDQhZBQkF\r\npjmfs2cb4oPl4Y9T9meTx/lvdkRYEug61Jfn6cA+qHpyPYdTH+UshITnmp5/Ztkf\r\nm/UTSLBNFNHesiTZeH31NcxYGdHSme9Nc/gfidRa0FLOCfWxRlFqAI47zG9jAQCZ\r\n7Z2mCGDNMhjQc+BYcdnl0lPXjdDK6V0qCg1dVewhUBcW5gZKzV7e9+DpVA==\r\n-----END CERTIFICATE-----\r\n"
	.section	.rodata.mbedtls_test_ca_crt_rsa_sha256,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_crt_rsa_sha256, @object
	.size	mbedtls_test_ca_crt_rsa_sha256, 1307
mbedtls_test_ca_crt_rsa_sha256:
	.ascii	"-----BEGIN CERTIFICATE-----\r\nMIIDhzCCAm+gAwIBAgIBADANBgkqh"
	.ascii	"kiG9w0BAQsFADA7MQswCQYDVQQGEwJOTDER\r\nMA8GA1UECgwIUG9sYXJTU"
	.ascii	"0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\nMTcwNTA0MTY1N"
	.ascii	"zAxWhcNMjcwNTA1MTY1NzAxWjA7MQswCQYDVQQGEwJOTDERMA8G\r\nA1UEC"
	.ascii	"gwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwggEiMA0G\r"
	.ascii	"\nCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA3zf8F7vglp0/ht6WMn1EpR"
	.ascii	"agzSHx\r\nmdTs6st8GFgIlKXsm8WL3xoemTiZhx57wI053zhdcHgH057Zk+"
	.ascii	"i5clHFzqMwUqny\r\n50BwFMtEonILwuVA+T7lpg6z+exKY8C4KQB0nFc7qK"
	.ascii	"UEkHHxvYPZP9al4jwqj+8n\r\nYMPGn8u67GB9t+aEMr5P+1gmIgNb1LTV+/"
	.ascii	"Xjli5wwOQuvfwu7uJBVcA0Ln0kcmnL\r\nR7EUQIN9Z/SG9jGr8XmksrUuEv"
	.ascii	"mEF/Bibyc+E1ixVA0hmnM3oTDPb5Lc9un8rNsu\r\nKNF+AksjoBXyOGVkCe"
	.ascii	"oMbo4bF6BxyLObyavpw/LPh5aPgAIynplYb6LVAgMBAAGj\r\ngZUwgZIwHQ"
	.ascii	"YDVR0OBBYEFLRa5KWz3tJS9rnVppUP6z68x/3/MGMGA1UdIwRcMFqA\r\nFL"
	.ascii	"Ra5KWz3tJS9rnVppUP6z68x/3/oT+kPTA7MQswCQYDVQQGEwJOTDERMA8GA1"
	.ascii	"UE\r\nCgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0GCAQ"
	.ascii	"AwDAYDVR0T\r\nBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAHK/HHrTZMn"
	.ascii	"nVMpde1io+voAtql7j\r\n4sRhLrjD7o3THtwRbDa2diCvpq0Sq23Ng2LMYo"
	.ascii	"XsOxoL/RQK3iN7UKxV3MKPEr0w\r\nXQS+kKQqiT2bsfrjnWMVHZtUOMpm6F"
	.ascii	"N"
	.string	"qcdGm/Rss3vKda2lcKl8kUnq/ylc1+QbB\r\nG6A6tUvQcr2ZyWfVg+mM5XkhTrOOXus2OLikb4WwEtJTJRNE0f+yPODSUz0/vT57\r\nApH0CnB80bYJshYHPHHymOtleAB8KSYtqm75g/YNobjnjB6cm4HkW3OZRVIl6fYY\r\nn20NRVA1Vjs6GAROr4NqW4k/+LofY9y0LLDE+p0oIEKXIsIvhPr39swxSA==\r\n-----END CERTIFICATE-----\r\n"
	.global	mbedtls_test_ca_crt_rsa_len
	.section	.rodata.mbedtls_test_ca_crt_rsa_len,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_crt_rsa_len, @object
	.size	mbedtls_test_ca_crt_rsa_len, 4
mbedtls_test_ca_crt_rsa_len:
	.word	1307
	.global	mbedtls_test_ca_crt_rsa
	.section	.rodata.mbedtls_test_ca_crt_rsa,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_crt_rsa, @object
	.size	mbedtls_test_ca_crt_rsa, 1307
mbedtls_test_ca_crt_rsa:
	.ascii	"-----BEGIN CERTIFICATE-----\r\nMIIDhzCCAm+gAwIBAgIBADANBgkqh"
	.ascii	"kiG9w0BAQsFADA7MQswCQYDVQQGEwJOTDER\r\nMA8GA1UECgwIUG9sYXJTU"
	.ascii	"0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwHhcN\r\nMTcwNTA0MTY1N"
	.ascii	"zAxWhcNMjcwNTA1MTY1NzAxWjA7MQswCQYDVQQGEwJOTDERMA8G\r\nA1UEC"
	.ascii	"gwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0EwggEiMA0G\r"
	.ascii	"\nCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDA3zf8F7vglp0/ht6WMn1EpR"
	.ascii	"agzSHx\r\nmdTs6st8GFgIlKXsm8WL3xoemTiZhx57wI053zhdcHgH057Zk+"
	.ascii	"i5clHFzqMwUqny\r\n50BwFMtEonILwuVA+T7lpg6z+exKY8C4KQB0nFc7qK"
	.ascii	"UEkHHxvYPZP9al4jwqj+8n\r\nYMPGn8u67GB9t+aEMr5P+1gmIgNb1LTV+/"
	.ascii	"Xjli5wwOQuvfwu7uJBVcA0Ln0kcmnL\r\nR7EUQIN9Z/SG9jGr8XmksrUuEv"
	.ascii	"mEF/Bibyc+E1ixVA0hmnM3oTDPb5Lc9un8rNsu\r\nKNF+AksjoBXyOGVkCe"
	.ascii	"oMbo4bF6BxyLObyavpw/LPh5aPgAIynplYb6LVAgMBAAGj\r\ngZUwgZIwHQ"
	.ascii	"YDVR0OBBYEFLRa5KWz3tJS9rnVppUP6z68x/3/MGMGA1UdIwRcMFqA\r\nFL"
	.ascii	"Ra5KWz3tJS9rnVppUP6z68x/3/oT+kPTA7MQswCQYDVQQGEwJOTDERMA8GA1"
	.ascii	"UE\r\nCgwIUG9sYXJTU0wxGTAXBgNVBAMMEFBvbGFyU1NMIFRlc3QgQ0GCAQ"
	.ascii	"AwDAYDVR0T\r\nBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAHK/HHrTZMn"
	.ascii	"nVMpde1io+voAtql7j\r\n4sRhLrjD7o3THtwRbDa2diCvpq0Sq23Ng2LMYo"
	.ascii	"XsOxoL/RQK3iN7UKxV3MKPEr0w\r\nXQS+kKQqiT2bsfrjnWMVHZtUOMpm6F"
	.ascii	"N"
	.string	"qcdGm/Rss3vKda2lcKl8kUnq/ylc1+QbB\r\nG6A6tUvQcr2ZyWfVg+mM5XkhTrOOXus2OLikb4WwEtJTJRNE0f+yPODSUz0/vT57\r\nApH0CnB80bYJshYHPHHymOtleAB8KSYtqm75g/YNobjnjB6cm4HkW3OZRVIl6fYY\r\nn20NRVA1Vjs6GAROr4NqW4k/+LofY9y0LLDE+p0oIEKXIsIvhPr39swxSA==\r\n-----END CERTIFICATE-----\r\n"
	.global	mbedtls_test_cli_key_ec_len
	.section	.rodata.mbedtls_test_cli_key_ec_len,"a",@progbits
	.align	4
	.type	mbedtls_test_cli_key_ec_len, @object
	.size	mbedtls_test_cli_key_ec_len, 4
mbedtls_test_cli_key_ec_len:
	.word	233
	.global	mbedtls_test_cli_key_ec
	.section	.rodata.mbedtls_test_cli_key_ec,"a",@progbits
	.align	4
	.type	mbedtls_test_cli_key_ec, @object
	.size	mbedtls_test_cli_key_ec, 233
mbedtls_test_cli_key_ec:
	.string	"-----BEGIN EC PRIVATE KEY-----\r\nMHcCAQEEIPb3hmTxZ3/mZI3vyk7p3U3wBf+WIop6hDhkFzJhmLcqoAoGCCqGSM49\r\nAwEHoUQDQgAEV+WusXPf06y7k7iB/xKu7uZTrM5VU/Y0Dswu42MlC9+Y4vNcYDaW\r\nwNUYFHDlf5/VS0UY5bBs1Vz4lo+HcKPkxw==\r\n-----END EC PRIVATE KEY-----\r\n"
	.global	mbedtls_test_cli_crt_ec_len
	.section	.rodata.mbedtls_test_cli_crt_ec_len,"a",@progbits
	.align	4
	.type	mbedtls_test_cli_crt_ec_len, @object
	.size	mbedtls_test_cli_crt_ec_len, 4
mbedtls_test_cli_crt_ec_len:
	.word	829
	.global	mbedtls_test_cli_crt_ec
	.section	.rodata.mbedtls_test_cli_crt_ec,"a",@progbits
	.align	4
	.type	mbedtls_test_cli_crt_ec, @object
	.size	mbedtls_test_cli_crt_ec, 829
mbedtls_test_cli_crt_ec:
	.ascii	"-----BEGIN CERTIFICATE-----\r\nMIICLDCCAbKgAwIBAgIBDTAKBggqh"
	.ascii	"kjOPQQDAjA+MQswCQYDVQQGEwJOTDERMA8G\r\nA1UEChMIUG9sYXJTU0wxH"
	.ascii	"DAaBgNVBAMTE1BvbGFyc3NsIFRlc3QgRUMgQ0EwHhcN\r\nMTMwOTI0MTU1M"
	.ascii	"jA0WhcNMjMwOTIyMTU1MjA0WjBBMQswCQYDVQQGEwJOTDERMA8G\r\nA1UEC"
	.ascii	"hMIUG9sYXJTU0wxHzAdBgNVBAMTFlBvbGFyU1NMIFRlc3QgQ2xpZW50IDIw\r"
	.ascii	"\nWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAARX5a6xc9/TrLuTuIH/Eq7u5l"
	.ascii	"OszlVT\r\n9jQOzC7jYyUL35ji81xgNpbA1RgUcOV/n9VLRRjlsGzVXPiWj4"
	.ascii	"dwo+THo4GdMIGa\r\nMAkGA1UdEwQCMAAwHQYDVR0OBBYEFHoAX4Zk/OBd5R"
	.ascii	"EQO7LmO8QmP8/iMG4GA1Ud\r\nIwRnMGWAFJ1tICRJAT8ry3i1Gbx+JMnb+z"
	.ascii	"Z8oUKkQDA+MQswCQYDVQQGEwJOTDER\r\nMA8GA1UEChMIUG9"
	.string	"sYXJTU0wxHDAaBgNVBAMTE1BvbGFyc3NsIFRlc3QgRUMgQ0GC\r\nCQDBQ+J+YkPM6DAKBggqhkjOPQQDAgNoADBlAjBKZQ17IIOimbmoD/yN7o89u3BM\r\nlgOsjnhw3fIOoLIWy2WOGsk/LGF++DzvrRzuNiACMQCd8iem1XS4JK7haj8xocpU\r\nLwjQje5PDGHfd3h9tP38Qknu5bJqws0md2KOKHyeV0U=\r\n-----END CERTIFICATE-----\r\n"
	.global	mbedtls_test_srv_key_ec_len
	.section	.rodata.mbedtls_test_srv_key_ec_len,"a",@progbits
	.align	4
	.type	mbedtls_test_srv_key_ec_len, @object
	.size	mbedtls_test_srv_key_ec_len, 4
mbedtls_test_srv_key_ec_len:
	.word	233
	.global	mbedtls_test_srv_key_ec
	.section	.rodata.mbedtls_test_srv_key_ec,"a",@progbits
	.align	4
	.type	mbedtls_test_srv_key_ec, @object
	.size	mbedtls_test_srv_key_ec, 233
mbedtls_test_srv_key_ec:
	.string	"-----BEGIN EC PRIVATE KEY-----\r\nMHcCAQEEIPEqEyB2AnCoPL/9U/YDHvdqXYbIogTywwyp6/UfDw6noAoGCCqGSM49\r\nAwEHoUQDQgAEN8xW2XYJHlpyPsdZLf8gbu58+QaRdNCtFLX3aCJZYpJO5QDYIxH/\r\n6i/SNF1dFr2KiMJrdw1VzYoqDvoByLTt/w==\r\n-----END EC PRIVATE KEY-----\r\n"
	.global	mbedtls_test_srv_crt_ec_len
	.section	.rodata.mbedtls_test_srv_crt_ec_len,"a",@progbits
	.align	4
	.type	mbedtls_test_srv_crt_ec_len, @object
	.size	mbedtls_test_srv_crt_ec_len, 4
mbedtls_test_srv_crt_ec_len:
	.word	813
	.global	mbedtls_test_srv_crt_ec
	.section	.rodata.mbedtls_test_srv_crt_ec,"a",@progbits
	.align	4
	.type	mbedtls_test_srv_crt_ec, @object
	.size	mbedtls_test_srv_crt_ec, 813
mbedtls_test_srv_crt_ec:
	.ascii	"-----BEGIN CERTIFICATE-----\r\nMIICHzCCAaWgAwIBAgIBCTAKBggqh"
	.ascii	"kjOPQQDAjA+MQswCQYDVQQGEwJOTDERMA8G\r\nA1UEChMIUG9sYXJTU0wxH"
	.ascii	"DAaBgNVBAMTE1BvbGFyc3NsIFRlc3QgRUMgQ0EwHhcN\r\nMTMwOTI0MTU1M"
	.ascii	"jA0WhcNMjMwOTIyMTU1MjA0WjA0MQswCQYDVQQGEwJOTDERMA8G\r\nA1UEC"
	.ascii	"hMIUG9sYXJTU0wxEjAQBgNVBAMTCWxvY2FsaG9zdDBZMBMGByqGSM49AgEG\r"
	.ascii	"\nCCqGSM49AwEHA0IABDfMVtl2CR5acj7HWS3/IG7ufPkGkXTQrRS192giWW"
	.ascii	"KSTuUA\r\n2CMR/+ov0jRdXRa9iojCa3cNVc2KKg76Aci07f+jgZ0wgZowCQ"
	.ascii	"YDVR0TBAIwADAd\r\nBgNVHQ4EFgQUUGGlj9QH2deCAQzlZX+MY0anE74wbg"
	.ascii	"YDVR0jBGcwZYAUnW0gJEkB\r\nPyvLeLUZvH4kydv7NnyhQqRAMD4xCzAJBg"
	.ascii	"NVBAYTAk5MMREwDwYDVQQKEwhQb2xh\r"
	.string	"\nclNTTDEcMBoGA1UEAxMTUG9sYXJzc2wgVGVzdCBFQyBDQYIJAMFD4n5iQ8zoMAoG\r\nCCqGSM49BAMCA2gAMGUCMQCaLFzXptui5WQN8LlO3ddh1hMxx6tzgLvT03MTVK2S\r\nC12r0Lz3ri/moSEpNZWqPjkCMCE2f53GXcYLqyfyJR078c/xNSUU5+Xxl7VZ414V\r\nfGa5kHvHARBPc8YAIVIqDvHH1Q==\r\n-----END CERTIFICATE-----\r\n"
	.global	mbedtls_test_ca_pwd_ec_len
	.section	.rodata.mbedtls_test_ca_pwd_ec_len,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_pwd_ec_len, @object
	.size	mbedtls_test_ca_pwd_ec_len, 4
mbedtls_test_ca_pwd_ec_len:
	.word	12
	.global	mbedtls_test_ca_pwd_ec
	.section	.rodata.mbedtls_test_ca_pwd_ec,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_pwd_ec, @object
	.size	mbedtls_test_ca_pwd_ec, 13
mbedtls_test_ca_pwd_ec:
	.string	"PolarSSLTest"
	.global	mbedtls_test_ca_key_ec_len
	.section	.rodata.mbedtls_test_ca_key_ec_len,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_key_ec_len, @object
	.size	mbedtls_test_ca_key_ec_len, 4
mbedtls_test_ca_key_ec_len:
	.word	362
	.global	mbedtls_test_ca_key_ec
	.section	.rodata.mbedtls_test_ca_key_ec,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_key_ec, @object
	.size	mbedtls_test_ca_key_ec, 362
mbedtls_test_ca_key_ec:
	.ascii	"-----BEGIN EC PRIVATE KEY-----\r\nProc-Type: 4,ENCRYPTED\r\n"
	.ascii	"DEK-Info: DES-EDE3-CBC,307EAB469933D64E\r\n\r\nIxbrRm"
	.string	"KcAzctJqPdTQLA4SWyBYYGYJVkYEna+F7Pa5t5Yg/gKADrFKcm6B72e7DG\r\nihExtZI648s0zdYw6qSJ74vrPSuWDe5qm93BqsfVH9svtCzWHW0pm1p0KTBCFfUq\r\nUsuWTITwJImcnlAs1gaRZ3sAWm7cOUidL0fo2G0fYUFNcYoCSLffCFTEHBuPnagb\r\na77x/sY1Bvii8S9/XhDTb6pTMx06wzrm\r\n-----END EC PRIVATE KEY-----\r\n"
	.global	mbedtls_test_ca_crt_ec_len
	.section	.rodata.mbedtls_test_ca_crt_ec_len,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_crt_ec_len, @object
	.size	mbedtls_test_ca_crt_ec_len, 4
mbedtls_test_ca_crt_ec_len:
	.word	883
	.global	mbedtls_test_ca_crt_ec
	.section	.rodata.mbedtls_test_ca_crt_ec,"a",@progbits
	.align	4
	.type	mbedtls_test_ca_crt_ec, @object
	.size	mbedtls_test_ca_crt_ec, 883
mbedtls_test_ca_crt_ec:
	.ascii	"-----BEGIN CERTIFICATE-----\r\nMIICUjCCAdegAwIBAgIJAMFD4n5iQ"
	.ascii	"8zoMAoGCCqGSM49BAMCMD4xCzAJBgNVBAYT\r\nAk5MMREwDwYDVQQKEwhQb"
	.ascii	"2xhclNTTDEcMBoGA1UEAxMTUG9sYXJzc2wgVGVzdCBF\r\nQyBDQTAeFw0xM"
	.ascii	"zA5MjQxNTQ5NDhaFw0yMzA5MjIxNTQ5NDhaMD4xCzAJBgNVBAYT\r\nAk5MM"
	.ascii	"REwDwYDVQQKEwhQb2xhclNTTDEcMBoGA1UEAxMTUG9sYXJzc2wgVGVzdCBF\r"
	.ascii	"\nQyBDQTB2MBAGByqGSM49AgEGBSuBBAAiA2IABMPaKzRBN1gvh1b+/Im6KU"
	.ascii	"NLTuBu\r\nww5XUzM5WNRStJGVOQsj318XJGJI/BqVKc4sLYfCiFKAr9Zqqy"
	.ascii	"HduNMcbli4yuiy\r\naY7zQa0pw7RfdadHb9UZKVVpmlM7ILRmFmAzHqOBoD"
	.ascii	"CBnTAdBgNVHQ4EFgQUnW0g\r\nJEkBPyvLeLUZvH4kydv7NnwwbgYDVR0jBG"
	.ascii	"cwZYAUnW0gJEkBPyvLeLUZvH4kydv7\r\nNnyhQqRAMD4xCzAJBgNVBAYTAk"
	.ascii	"5MMREwDwYDVQQKEwhQb2xhclNTTDEcMBoGA1UE\r\nAxM"
	.string	"TUG9sYXJzc2wgVGVzdCBFQyBDQYIJAMFD4n5iQ8zoMAwGA1UdEwQFMAMBAf8w\r\nCgYIKoZIzj0EAwIDaQAwZgIxAMO0YnNWKJUAfXgSJtJxexn4ipg+kv4znuR50v56\r\nt4d0PCu412mUC6Nnd7izvtE2MgIxAP1nnJQjZ8BWukszFQDG48wxCCyci9qpdSMv\r\nuCjn8pwUOkABXK8Mss90fzCfCEOtIA==\r\n-----END CERTIFICATE-----\r\n"
	.text
.Letext0:
	.file 1 "D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/certs.c"
	.file 2 "c:\\msys32\\opt\\xtensa-esp32-elf\\lib\\gcc\\xtensa-esp32-elf\\5.2.0\\include\\stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4df
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x2
	.byte	0xd8
	.4byte	0x2b
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x4a
	.uleb128 0x6
	.4byte	0x4a
	.2byte	0x51a
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x1
	.byte	0x94
	.4byte	0x69
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_crt_rsa_sha256
	.uleb128 0x8
	.4byte	0x39
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.byte	0xb5
	.4byte	0x7f
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_crt_rsa_sha1
	.uleb128 0x8
	.4byte	0x39
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x95
	.uleb128 0x6
	.4byte	0x4a
	.2byte	0xda6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x14b
	.4byte	0xa7
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cas_pem
	.uleb128 0x8
	.4byte	0x84
	.uleb128 0x9
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x156
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cas_pem_len
	.uleb128 0x8
	.4byte	0x20
	.uleb128 0x5
	.4byte	0xd3
	.4byte	0xd3
	.uleb128 0xa
	.4byte	0x4a
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x8
	.4byte	0x51
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x15a
	.4byte	0xc3
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cas
	.uleb128 0x5
	.4byte	0x20
	.4byte	0x100
	.uleb128 0xa
	.4byte	0x4a
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x166
	.4byte	0x112
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cas_len
	.uleb128 0x8
	.4byte	0xf0
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x174
	.4byte	0xd3
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_crt
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x17b
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_crt_len
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x175
	.4byte	0xd3
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_key
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x17c
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_key_len
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x176
	.4byte	0xd3
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_pwd
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x17d
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_pwd_len
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x177
	.4byte	0xd3
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_crt
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x17e
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_crt_len
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x178
	.4byte	0xd3
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_key
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x17f
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_key_len
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x179
	.4byte	0xd3
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_crt
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x180
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_crt_len
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x17a
	.4byte	0xd3
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_key
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x181
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_key_len
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x224
	.uleb128 0x6
	.4byte	0x4a
	.2byte	0x372
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0x31
	.4byte	0x235
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_crt_ec
	.uleb128 0x8
	.4byte	0x213
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x32
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_crt_ec_len
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x25c
	.uleb128 0x6
	.4byte	0x4a
	.2byte	0x169
	.byte	0
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x34
	.4byte	0x26d
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_key_ec
	.uleb128 0x8
	.4byte	0x24b
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3e
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_key_ec_len
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x293
	.uleb128 0xa
	.4byte	0x4a
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x40
	.4byte	0x2a4
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_pwd_ec
	.uleb128 0x8
	.4byte	0x283
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x41
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_pwd_ec_len
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x2cb
	.uleb128 0x6
	.4byte	0x4a
	.2byte	0x32c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0x43
	.4byte	0x2dc
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_crt_ec
	.uleb128 0x8
	.4byte	0x2ba
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x52
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_crt_ec_len
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x302
	.uleb128 0xa
	.4byte	0x4a
	.byte	0xe8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x54
	.4byte	0x313
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_key_ec
	.uleb128 0x8
	.4byte	0x2f2
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5a
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_key_ec_len
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x33a
	.uleb128 0x6
	.4byte	0x4a
	.2byte	0x33c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5c
	.4byte	0x34b
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_crt_ec
	.uleb128 0x8
	.4byte	0x329
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6b
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_crt_ec_len
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6d
	.4byte	0x372
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_key_ec
	.uleb128 0x8
	.4byte	0x2f2
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x1
	.byte	0x73
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_key_ec_len
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x90
	.4byte	0x399
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_crt_rsa
	.uleb128 0x8
	.4byte	0x39
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x91
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_crt_rsa_len
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x3c0
	.uleb128 0x6
	.4byte	0x4a
	.2byte	0x6f5
	.byte	0
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0xb9
	.4byte	0x3d1
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_key_rsa
	.uleb128 0x8
	.4byte	0x3af
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0xd8
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_key_rsa_len
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0xda
	.4byte	0x3f8
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_pwd_rsa
	.uleb128 0x8
	.4byte	0x283
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0xdb
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_ca_pwd_rsa_len
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x41f
	.uleb128 0x6
	.4byte	0x4a
	.2byte	0x4ac
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0xdd
	.4byte	0x430
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_crt_rsa
	.uleb128 0x8
	.4byte	0x40e
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x1
	.byte	0xf2
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_crt_rsa_len
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x457
	.uleb128 0x6
	.4byte	0x4a
	.2byte	0x6aa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf4
	.4byte	0x468
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_key_rsa
	.uleb128 0x8
	.4byte	0x446
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x110
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_srv_key_rsa_len
	.uleb128 0x5
	.4byte	0x51
	.4byte	0x490
	.uleb128 0x6
	.4byte	0x4a
	.2byte	0x516
	.byte	0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x112
	.4byte	0x4a2
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_crt_rsa
	.uleb128 0x8
	.4byte	0x47f
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x128
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_crt_rsa_len
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x12a
	.4byte	0x4cb
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_key_rsa
	.uleb128 0x8
	.4byte	0x446
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x146
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x3
	.4byte	mbedtls_test_cli_key_rsa_len
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"mbedtls_test_ca_crt"
.LASF45:
	.string	"mbedtls_test_srv_crt_rsa_len"
.LASF14:
	.string	"mbedtls_test_ca_pwd"
.LASF27:
	.string	"mbedtls_test_ca_key_ec_len"
.LASF54:
	.string	"size_t"
.LASF25:
	.string	"mbedtls_test_ca_crt_ec_len"
.LASF22:
	.string	"mbedtls_test_cli_key"
.LASF31:
	.string	"mbedtls_test_srv_crt_ec_len"
.LASF43:
	.string	"mbedtls_test_ca_pwd_rsa_len"
.LASF20:
	.string	"mbedtls_test_cli_crt"
.LASF19:
	.string	"mbedtls_test_srv_key_len"
.LASF8:
	.string	"mbedtls_test_cas"
.LASF26:
	.string	"mbedtls_test_ca_key_ec"
.LASF38:
	.string	"mbedtls_test_ca_crt_rsa"
.LASF41:
	.string	"mbedtls_test_ca_key_rsa_len"
.LASF30:
	.string	"mbedtls_test_srv_crt_ec"
.LASF23:
	.string	"mbedtls_test_cli_key_len"
.LASF46:
	.string	"mbedtls_test_srv_key_rsa"
.LASF32:
	.string	"mbedtls_test_srv_key_ec"
.LASF29:
	.string	"mbedtls_test_ca_pwd_ec_len"
.LASF33:
	.string	"mbedtls_test_srv_key_ec_len"
.LASF44:
	.string	"mbedtls_test_srv_crt_rsa"
.LASF28:
	.string	"mbedtls_test_ca_pwd_ec"
.LASF9:
	.string	"mbedtls_test_cas_len"
.LASF1:
	.string	"short unsigned int"
.LASF7:
	.string	"mbedtls_test_cas_pem_len"
.LASF47:
	.string	"mbedtls_test_srv_key_rsa_len"
.LASF34:
	.string	"mbedtls_test_cli_crt_ec"
.LASF6:
	.string	"mbedtls_test_cas_pem"
.LASF36:
	.string	"mbedtls_test_cli_key_ec"
.LASF40:
	.string	"mbedtls_test_ca_key_rsa"
.LASF49:
	.string	"mbedtls_test_cli_crt_rsa_len"
.LASF0:
	.string	"unsigned int"
.LASF51:
	.string	"mbedtls_test_cli_key_rsa_len"
.LASF3:
	.string	"char"
.LASF18:
	.string	"mbedtls_test_srv_key"
.LASF15:
	.string	"mbedtls_test_ca_pwd_len"
.LASF13:
	.string	"mbedtls_test_ca_key_len"
.LASF16:
	.string	"mbedtls_test_srv_crt"
.LASF52:
	.string	"GNU C99 5.2.0 -mlongcalls -ggdb -Og -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields"
.LASF2:
	.string	"sizetype"
.LASF53:
	.string	"D:/ESP32/esp-idf-v3.1-rc1/components/mbedtls/mbedtls/library/certs.c"
.LASF21:
	.string	"mbedtls_test_cli_crt_len"
.LASF11:
	.string	"mbedtls_test_ca_crt_len"
.LASF24:
	.string	"mbedtls_test_ca_crt_ec"
.LASF37:
	.string	"mbedtls_test_cli_key_ec_len"
.LASF4:
	.string	"mbedtls_test_ca_crt_rsa_sha256"
.LASF48:
	.string	"mbedtls_test_cli_crt_rsa"
.LASF5:
	.string	"mbedtls_test_ca_crt_rsa_sha1"
.LASF50:
	.string	"mbedtls_test_cli_key_rsa"
.LASF35:
	.string	"mbedtls_test_cli_crt_ec_len"
.LASF12:
	.string	"mbedtls_test_ca_key"
.LASF17:
	.string	"mbedtls_test_srv_crt_len"
.LASF42:
	.string	"mbedtls_test_ca_pwd_rsa"
.LASF39:
	.string	"mbedtls_test_ca_crt_rsa_len"
	.ident	"GCC: (crosstool-NG crosstool-ng-1.22.0-80-g6c4433a5) 5.2.0"
