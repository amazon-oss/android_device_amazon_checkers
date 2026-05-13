#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Characteristics
PRODUCT_CHARACTERISTICS := tablet,nosdcard

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from mt8163-common
$(call inherit-product-if-exists, device/amazon/mt8163-common/mt8163-common.mk)

# Inherit the proprietary files
$(call inherit-product-if-exists, vendor/amazon/checkers/checkers-vendor.mk)