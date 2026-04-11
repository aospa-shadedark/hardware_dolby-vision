#
# Copyright (C) 2022 FlamingoOS Project
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

# Dolby path
DOLBY_PATH := hardware/dolby-vision

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   $(DOLBY_PATH)

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DOLBY_PATH)/sepolicy/vendor

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DOLBY_PATH)/dolby_framework_matrix.xml

# Configs
PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/proprietary/vendor/etc/media_codecs_dolby_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_video.xml

# Dolby vision Proprietary blobs
PRODUCT_COPY_FILES += \
    $(DOLBY_PATH)/proprietary/vendor/etc/dolby_vision.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/dolby_vision.cfg \
    $(DOLBY_PATH)/proprietary/vendor/etc/init/vendor.dolbyvision.media.c2@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolbyvision.media.c2@1.0-service.rc

PRODUCT_PACKAGES += \
    c2.dolby.avc.dec \
    c2.dolby.avc.sec.dec \
    c2.dolby.client \
    c2.dolby.egl \
    c2.dolby.hevc.dec \
    c2.dolby.hevc.enc \
    c2.dolby.hevc.sec.dec \
    c2.dolby.store \
    libdolbyottcameracontrol \
    libdolbyvision \
    dolbycodec2

PRODUCT_PACKAGES += \
    libstagefright_foundation-swiitchoff

# Shim
PRODUCT_PACKAGES += \
    libcodec2_hidl_shim.vendor

