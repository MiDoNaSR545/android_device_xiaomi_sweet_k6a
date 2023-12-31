#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sweet_k6a
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
SELINUX_IGNORE_NEVERALLOWS := true

# Inherit from sm6150-common
include device/xiaomi/sm6150-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := sweet

# Audio
TARGET_PROVIDES_AUDIO_EXTNS := true

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/hidl/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := sweet_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_DTBOIMG_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9122611200 # (BOARD_SUPER_PARTITION_SIZE - 4194304) 4MiB overhead

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Vendor security patch level
VENDOR_SECURITY_PATCH := 2023-09-01

# Inherit from proprietary files
include vendor/xiaomi/sweet_k6a/BoardConfigVendor.mk