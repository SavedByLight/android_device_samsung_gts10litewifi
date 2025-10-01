#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from a35x device
$(call inherit-product, device/samsung/gts10litewifi/device.mk)

PRODUCT_DEVICE := gts10litewifi
PRODUCT_NAME := twrp_gts10litewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X400
PRODUCT_MANUFACTURER := samsung


PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/gts10litewifi/recovery/root,recovery/root)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_GMS_CLIENTID_BASE := android-samsung
