#!/bin/bash

C=$ANDROID_BUILD_TOP
S="patches-lineage"
D="frameworks/base hardware/interfaces packages/modules/Bluetooth"

apply_patches() { cd ${C}/${1}; git apply --ignore-whitespace ${C}/${S}/$1/*.patch; cd ${C}; }

for R in $D; do
    apply_patches $R
done
