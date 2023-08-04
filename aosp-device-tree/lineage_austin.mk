#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from austin device
$(call inherit-product, device/motorola/austin/device.mk)

PRODUCT_DEVICE := austin
PRODUCT_NAME := lineage_austin
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G (2022)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="austin_g-user 12 T1SAS33.73-40-7-1 55b3f release-keys"

BUILD_FINGERPRINT := motorola/austin_g/austin:12/T1SAS33.73-40-7-1/55b3f:user/release-keys
