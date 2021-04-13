#
# Copyright (C) 2021 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inscreen Fingerprint HAL
TARGET_HAVE_FOD := true

# Inherit device configuration
$(call inherit-product, device/samsung/beyondx/device.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440
# vendor/lineage/config/common.mk

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_beyondx
PRODUCT_DEVICE := beyondx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G977B
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := G977B
PRODUCT_PDA_MODEL_VERSION := XXU9FUCD
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=beyondxxx \
    PRIVATE_BUILD_DESC="beyondxxx-user 11 RP1A.200720.012 $(PRODUCT_PDA_VERSION) release-keys"

BUILD_FINGERPRINT := samsung/beyondxxx/beyondx:11/RP1A.200720.012/$(PRODUCT_PDA_VERSION):user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif
