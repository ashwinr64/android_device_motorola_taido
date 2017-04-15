#!/bin/bash
clear
croot
cd frameworks/av
git apply -v  ../../device/motorola/taido/patches_decker/0001-mtk-audio-fix.patch
git apply -v  ../../device/motorola/taido/patches_decker/0002-fix-access-wvm-to-ReadOptions.patch
git apply -v  ../../device/motorola/taido/patches_decker/0003-add-mising-MediaBufferGroup-acquire_buffer-symbol.patch
git apply -v  ../../device/motorola/taido/patches_decker/0004-add-mising-MediaBufferGroup-acquire_buffer-symbol-2.patch
git apply -v  ../../device/motorola/taido/patches_decker/0007-Use-hw-encoder-only-for-camera-fire855.patch
croot
echo Patches Applied Successfully!
