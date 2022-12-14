#
# Copyright (C) 2020 ArrowOS
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit some common ArrowOS stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# b/189477034: Bypass build time check on uses_libs until vendor fixes all their apps
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true
RELAX_USES_LIBRARY_CHECK := true

# Device identifier
PRODUCT_NAME := lineage_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8/8T
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Rom flags
RICE_OFFICIAL := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true

WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# Aperture Camera
TARGET_BUILD_APERTURE_CAMERA := true

# Graphene Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

# AudioFx
TARGET_EXCLUDES_AUDIOFX := true

# Package Type (By default it says AOSP,lets make it Vanilla instead)
RICE_PACKAGE_TYPE := Pixel 

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true