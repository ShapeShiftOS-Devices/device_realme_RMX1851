#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifer: Apache-2.0
#

# Inherit some common ShapeShiftOS stuff.
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)

# Inherit from RMX1851 device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := RMX1851
PRODUCT_NAME := ssos_RMX1851
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 3 Pro
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm710-user 9 PKQ1.190101.001 eng.root.20191220.123812 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1851" \
    TARGET_DEVICE="RMX1851"

# SSOS Official Flags
SSOS_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true

# ShapeShiftOS props
PRODUCT_PRODUCT_PROPERTIES += \
    ro.ssos.cpu=SD710
