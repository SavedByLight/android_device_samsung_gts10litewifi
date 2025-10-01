# Android device tree for samsung SM-X400 (gts10litewifi)

# How to build
## Sync twrp-12.1
    repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1; repo sync
## Clone Galaxy A35 Tree
    git clone https://github.com/teamwin/android_device_samsung_gts10litewifi.git -b android-12.1 device/samsung/gts10litewifi
## Build
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_gts10litewifi-eng; mka recoveryimage


```
#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```
