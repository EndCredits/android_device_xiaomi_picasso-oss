#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from picasso device
$(call inherit-product, device/xiaomi/picasso/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_picasso
PRODUCT_DEVICE := picasso
PRODUCT_MODEL := Redmi K30 5G
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := Xiaomi

# ArrowOS Features
TARGET_INCLUDE_PIXEL_CHARGER := true

TARGET_BOOT_ANIMATION_RES := 1080

BUILD_FINGERPRINT := Redmi/picasso/picasso:12/SKQ1.211006.001/V13.0.5.0.SGICNXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
