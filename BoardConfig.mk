#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/amazon/checkers

# Kernel
TARGET_KERNEL_ADDITIONAL_CONFIG := checkers.config

# Platform
TARGET_BOOTLOADER_BOARD_NAME := checkers

# Inherit from mt8163-common
include device/amazon/mt8163-common/BoardConfigCommon.mk

# Inherit the proprietary files
-include vendor/amazon/checkers/BoardConfigVendor.mk