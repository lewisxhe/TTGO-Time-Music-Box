deps_config := \
	/d/ESP32/esp-idf-v3.1-rc1/components/app_trace/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/aws_iot/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/bt/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/driver/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/esp32/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/esp_adc_cal/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/esp_http_client/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/ethernet/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/fatfs/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/freertos/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/heap/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/libsodium/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/log/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/lwip/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/mbedtls/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/openssl/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/pthread/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/spi_flash/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/spiffs/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/tcpip_adapter/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/vfs/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/components/wear_levelling/Kconfig \
	/d/ESP32/esp-idf-v3.1-rc1/Kconfig.compiler \
	/d/ESP32/esp-idf-v3.1-rc1/components/bootloader/Kconfig.projbuild \
	/d/ESP32/esp-idf-v3.1-rc1/components/esptool_py/Kconfig.projbuild \
	/d/ESP32/esp-idf-v3.1-rc1/ESP32_PIC_A2DP/main/Kconfig.projbuild \
	/d/ESP32/esp-idf-v3.1-rc1/components/partition_table/Kconfig.projbuild \
	/d/ESP32/esp-idf-v3.1-rc1/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
