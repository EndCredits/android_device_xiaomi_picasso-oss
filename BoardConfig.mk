#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Board
TARGET_BOOTLOADER_BOARD_NAME := picasso
TARGET_BOARD_PLATFORM := lito
TARGET_USE_EROFS := true

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/picasso

# Camera - HIDL overrideFormat
TARGET_CAMERA_OVERRIDE_FORMAT_FROM_RESERVED = true

# Display
TARGET_SCREEN_DENSITY := 420

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_picasso
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_picasso

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm7250
TARGET_KERNEL_CONFIG := vendor/picasso_user_defconfig

# Props
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Vintf
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/xiaomi_framework_compatibility_matrix.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Wifi
CONFIG_ACS := true
CONFIG_IEEE80211AC := true

# Inherit from the proprietary version
include vendor/xiaomi/picasso/BoardConfigVendor.mk