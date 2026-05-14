#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Audio
PRODUCT_PACKAGES += \
    libalsautils \
    libaudio-resampler \
    libaudioutils \
    libaudioroute \
    libtinyalsa \
    libtinycompress \
    libtinyxml

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor

PRODUCT_PACKAGES += \
    mt76x8_bt

# Characteristics
PRODUCT_CHARACTERISTICS := tablet,nosdcard

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Rootdir
PRODUCT_PACKAGES += \
    init.device.rc

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir/firmware/,$(TARGET_COPY_OUT_ROOT))

# Wi-Fi
PRODUCT_PACKAGES += \
    mt76x8_wlan

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/wifi/,$(TARGET_COPY_OUT_SYSTEM)/etc/wifi)

# Inherit from mt8163-common
$(call inherit-product-if-exists, device/amazon/mt8163-common/mt8163-common.mk)

# Inherit the proprietary files
$(call inherit-product-if-exists, vendor/amazon/checkers/checkers-vendor.mk)
