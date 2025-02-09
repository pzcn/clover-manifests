#!/bin/bash

git clone https://github.com/crdroidandroid/android_device_xiaomi_clover device/xiaomi/clover -b 15.0
git clone https://github.com/crdroidandroid/android_device_xiaomi_sdm660-common.git device/xiaomi/sdm660-common -b 15.0
git clone https://github.com/crdroidandroid/android_kernel_xiaomi_sdm660.git kernel/xiaomi/sdm660 -b 15.0
git clone https://github.com/crdroidandroid/proprietary_vendor_xiaomi_clover.git vendor/xiaomi/clover -b 15.0
git clone https://github.com/crdroidandroid/proprietary_vendor_xiaomi_sdm660-common.git vendor/xiaomi/sdm660-common -b 15.0

mkdir -p hardware/xiaomi
cat << 'EOF' > hardware/xiaomi/Android.bp
soong_namespace {
}
EOF
source build/envsetup.sh
lunch lineage_clover-ap3a-eng
mka bacon










