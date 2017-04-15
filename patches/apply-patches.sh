#!/bin/bash
croot
cd frameworks/av
git apply -v ../../device/motorola/taido/patches/frameworks_av/0001-Disable-usage-of-get_capture_position.patch
croot
cd system/core
git apply -v ../../device/motorola/taido/patches/system_core/0001-remove-CAP_SYS_NICE-from-surfaceflinger-and-cln-logg.patch
croot
cd system/sepolicy
git apply -v ../../device/motorola/taido/patches/system_sepolicy/0001-Revert-back-to-version-29.patch
croot
echo Patches Applied Successfully!
