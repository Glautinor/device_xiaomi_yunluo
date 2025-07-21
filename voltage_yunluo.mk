#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific fist.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/yunluo/device.mk)

# Inherit some common LineageOS Stuff
$(call inherit-product, vendor/voltage/config/common_full_tablet_wifionly.mk)

# Disable Eppe
TARGET_DISABLE_EPPE := true

PRODUCT_NAME := voltage_yunluo
PRODUCT_DEVICE := yunluo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Pad

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
  BuildDesc="missi_pad_global-user 14 UP1A.231005.007 V816.0.9.0.ULYMIXM release-keys" \
  BuildFingerprint=Redmi/yunluo_global/yunluo:12/SP1A.210812.016/V816.0.9.0.ULYMIXM:user/release-keys

# VoltageOS Stuffs
VOLTAGE_BUILD_TYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 1920
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_NO_CAMERA := false

# include private signing keys
-include vendor/voltage-priv/keys/keys.mk
