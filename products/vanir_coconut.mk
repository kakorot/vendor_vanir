# Copyright (C) 2014 VanirAOSP
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

#Squisher Choosing
DHO_VENDOR := vanir

PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=true

# Vanir configuration
$(call inherit-product, vendor/vanir/products/common_phones.mk)
$(call inherit-product, vendor/vanir/products/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/semc/anzu/full_coconut.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/boot_animations/480x480.zip:system/media/bootanimation.zip

# Enable Sony apps in play store
PRODUCT_GMS_CLIENTID_BASE := android-sonyericsson

PRODUCT_PACKAGES += Torch

# Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_coconut
PRODUCT_DEVICE := anzu
PRODUCT_BRAND := semc
PRODUCT_MANUFACTURER := semc
PRODUCT_RELEASE_NAME := coconut

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WT19i \
    PRODUCT_DEVICE=WT19i \
    BUILD_FINGERPRINT="SEMC/WT19i_1254-2184/WT19i:4.0.4/4.1.B.0.587/tL1_3w:user/release-keys" \
    PRIVATE_BUILD_DESC="WT19i-user 4.0.4 4.1.B.0.587 tL1_3w test-keys"




