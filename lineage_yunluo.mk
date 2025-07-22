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
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Disable Eppe
TARGET_DISABLE_EPPE := true

PRODUCT_NAME := lineage_yunluo
PRODUCT_DEVICE := yunluo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Pad

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
  BuildDesc="missi_pad_global-user 14 UP1A.231005.007 V816.0.9.0.ULYMIXM release-keys" \
  BuildFingerprint=Redmi/yunluo_global/yunluo:12/SP1A.210812.016/V816.0.9.0.ULYMIXM:user/release-keys

#RisingOS-Revived
# Lunch banner maintainer variable
RISING_MAINTAINER="@Boy_Sid"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer)
# Set RISING_MAINTAINER for version control
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Mediatek Helio G99" \
    RisingMaintainer="@Boy_Sid"

RISING_MAINTAINER := @Boy_Sid

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := false

# Whether to ship lawnchair launcher, false by default
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# GMS build flags, true by default
# Ship with GMS packages, replaces default AOSP packages with Google manufactured packages.
WITH_GMS := true

# CORE build flags
#TARGET_USES_PICO_GAPPS := true

# These flags needs WITH_GMS set to true
# Whether to ship pixel launcher and set it as default launcher, false by default
TARGET_DEFAULT_PIXEL_LAUNCHER := true

#END
