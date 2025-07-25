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

#AxionAOSP

# Define rear camera specs (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 8

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 8

# Maintainer name (use "_" for spaces, e.g., "rmp_22" → "rmp 22" in UI)
AXION_MAINTAINER := @Boy_Sid

# Processor name (use "_" for spaces)
AXION_PROCESSOR := MediaTek_Helio_G99

TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_BCR := false
TARGET_INCLUDE_VIPERFX := true
TARGET_INCLUDES_LOS_PREBUILTS := false
BYPASS_CHARGE_SUPPORTED := true
AXION_DEBUGGING_ENABLED := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2000
TARGET_SCREEN_WIDTH := 1200
TARGET_BOOT_ANIMATION_RES := 1080

# Define small and big core groups (used for setting processes affinity)
AXION_CPU_SMALL_CORES := 0,1,2,3,4,5
# CPU used by critical tasks like SystemUI animations/surfaceflinger etc.
AXION_CPU_BIG_CORES := 6,7

## CPUsets configuration
# CPUset used for bg/audio cpusets
AXION_CPU_BG := 0-2
# CPUset used for foreground cpusets
AXION_CPU_FG ?= 0-7
# CPUset that will be used when limiting other cpusets except top-app
AXION_CPU_LIMIT_BG := 0-1
# CPUset that will be used to unlimit critical cpusets for UI
AXION_CPU_UNLIMIT_UI ?= 0-7
# CPUset that will be used when limiting critical cpusets for UI
AXION_CPU_LIMIT_UI ?= 0-4
# CPUset that will be used for critical display processes
AXION_CPU_DISPLAY ?= 4-7
# CPUset that will be used for audio processes e.g. audioserver
AXION_CPU_AUDIO ?= 0-3

#END
