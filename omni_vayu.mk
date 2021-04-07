#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 PitchBlack Recovery Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := vayu
PRODUCT_USE_DYNAMIC_PARTITIONS := true
DEVICE_PATH := device/xiaomi/vayu

# Inherit some common PitchBlack stuff.
$(call inherit-product, vendor/pb/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root) \
    $(LOCAL_PATH)/prebuilt/dtb:dtb.img

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery
    
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vayu
PRODUCT_NAME := omni_vayu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := vayu
