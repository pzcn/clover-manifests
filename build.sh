#!/bin/bash

git clone https://github.com/kyasu/android_device_xiaomi_sdm660-common.git device/xiaomi/sdm660-common -b lineage-22.1
git clone https://github.com/kyasu/android_device_xiaomi_clover.git device/xiaomi/clover -b lineage-22.1
git clone https://github.com/kyasu/android_kernel_xiaomi_sdm660.git kernel/xiaomi/sdm660 -b lineage-22.1
git clone https://github.com/kyasu/android_vendor_xiaomi_sdm660-common.git vendor/xiaomi/sdm660-common -b lineage-22.1
git clone https://github.com/kyasu/android_vendor_xiaomi_clover.git vendor/xiaomi/clover -b lineage-22.1

. build/envsetup.sh
lunch clover-userdebug
mka bacon -j$(nproc --all)










