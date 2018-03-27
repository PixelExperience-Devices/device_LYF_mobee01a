#
# Copyright (C) 2016 The CyanogenMod Project
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

include device/cyanogen/msm8916-common/BoardConfigCommon.mk

include device/LYF/mobee01a/board/*.mk

# Assertions
#TARGET_BOARD_INFO_FILE := device/LYF/mobee01a/board-info.txt

# Inherit from proprietary files
include vendor/LYF/mobee01a/BoardConfigVendor.mk

# Dex-preopt
WITH_DEXPREOPT := false
DONT_DEXPREOPT_PREBUILTS := true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/bin/mm-qcamera-daemon|libshim_camera.so \
    /system/vendor/lib/libmmcamera2_imglib_modules.so|libshim_camera.so \
    /system/vendor/lib/libmmcamera2_stats_modules.so|libshim_camera.so \
    /system/vendor/lib/libmmqjpeg_codec.so|libboringssl-compat.so \
    /system/vendor/lib64/libizat_core.so|libshims_get_process_name.so \
    /system/vendor/lib64/lib-imsdpl.so|libshim_boringssl.so
