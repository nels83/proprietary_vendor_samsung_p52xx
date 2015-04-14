# Copyright (C) 2012 The CyanogenMod Project
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

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS += vendor/samsung/p52xx/overlay

# Houdini
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.dalvik.vm.native.bridge=libhoudini.so

PRODUCT_PROPERTY_OVERRIDES += \
    ro.dalvik.vm.isa.arm=x86 \
    ro.enable.native.bridge.exec=1

PRODUCT_COPY_FILES += \
    vendor/samsung/p52xx/rootdir/init.houdini.rc:root/init.houdini.rc

# OMX packages
PRODUCT_PACKAGES += \
    libstagefrighthw \
    \
    libwrs_omxil_core_pvwrapped \
    \
    libOMXVideoDecoderAVC \
    libOMXVideoDecoderH263 \
    libOMXVideoDecoderMPEG4 \
    libOMXVideoDecoderWMV \
    libOMXVideoEncoderAVC \
    libOMXVideoEncoderH263 \
    libOMXVideoEncoderMPEG4

$(call inherit-product, vendor/samsung/p52xx/p52xx-vendor-blobs.mk)
