#
# Copyright (C) 2018-2022 POSP
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common configurations from POSP
$(call inherit-product, vendor/potato/config/common_full_phone.mk)

PRODUCT_NAME := potato_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi
CUSTOM_DEVICE := vayu

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=vayu_global \
    PRODUCT_MODEL=M2102J20SI

# Device maintainer
POTATO_MAINTAINER := kickout_765

# GMS
$(call inherit-product-if-exists, vendor/gms/gms_full.mk)
