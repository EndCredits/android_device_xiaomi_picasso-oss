#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7250-common
include device/xiaomi/sm7250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/picasso

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 400

# Fingerprint
TARGET_HAS_SIDEFPS := true

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
	$(DEVICE_PATH)/xiaomi_framework_compatibility_matrix.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/picasso_user_defconfig

# Inherit from the proprietary version
include vendor/xiaomi/picasso/BoardConfigVendor.mk