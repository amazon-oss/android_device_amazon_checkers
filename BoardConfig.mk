#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amazon/checkers

# BLuetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Kernel
TARGET_KERNEL_ADDITIONAL_CONFIG := checkers.config

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 268434432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3253731328

# Platform
TARGET_BOOTLOADER_BOARD_NAME := checkers

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Inherit from mt8163-common
include device/amazon/mt8163-common/BoardConfigCommon.mk

# Inherit the proprietary files
-include vendor/amazon/checkers/BoardConfigVendor.mk
