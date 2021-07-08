#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit GoogleCamera
$(call inherit-product, vendor/xiaomi/GoogleCamera/Camera.mk)

# Inherit some common KangOS stuff
$(call inherit-product, vendor/kangos/config/common.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Official Stuff
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED = true

# KangOS Stuff
KANGOS_BUILDTYPE := OFFICIAL
USE_GAPPS := true
TARGET_INCLUDE_AOSP_REPLACEMENT := true

# KangOS Props
PRODUCT_PRODUCT_PROPERTIES += \
  ro.kangos.maintainer=zαι∂кнαи0997 \
  ro.kangos.cpu=SDM660

# Device identifier
PRODUCT_NAME := kangos_lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_PLATFORM := SDM660
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
        TARGET_DEVICE="lavender" \
        PRODUCT_NAME="lavender" \
        PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210605.005 7349499 release-keys"

# Build Fingerprint
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210605.005/7349499:user/release-keys"

TARGET_VENDOR_PRODUCT_NAME := lavender

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi