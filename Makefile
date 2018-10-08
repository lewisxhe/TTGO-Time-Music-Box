#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := a2dp_sink

EXTRA_CFLAGS += --save-temps

include $(IDF_PATH)/make/project.mk


erase:
	esptool.py --p COM58  erase_flash
