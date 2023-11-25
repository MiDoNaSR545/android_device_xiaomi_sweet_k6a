#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet_k6a device
$(call inherit-product, device/xiaomi/sweet_k6a/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_sweet_k6a
PRODUCT_DEVICE := sweet_k6a
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 12 Pro 4G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweet_global-user 11 RKQ1.210614.002 V14.0.4.0.THGMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Redmi/sweet_global2/sweet:11/RKQ1.210614.002/V14.0.4.0.THGMIXM:user/release-keys"
