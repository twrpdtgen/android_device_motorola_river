#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from river device
$(call inherit-product, device/motorola/river/device.mk)

PRODUCT_DEVICE := river
PRODUCT_NAME := omni_river
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(7)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="river_retail-user 10 QPUS30.52-33-11 df129 release-keys"

BUILD_FINGERPRINT := motorola/derp_river/river:14/UQ1A.240205.004/private02112234:userdebug/release-keys
