#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/hannah/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
CUSTOM_BUILD_TYPE := UNOFFICIAL

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hannah
PRODUCT_DEVICE := hannah
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e5 plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model \
    ro.product.name

PRODUCT_BUILD_PROP_OVERRIDES += \

    PRODUCT_NAME="hannah"
    DEVICE_MAINTAINERS="Rohith Pillalamarri"



PRODUCT_GMS_CLIENTID_BASE := android-motorola
