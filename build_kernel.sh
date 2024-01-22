#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
export PATH=$PWD/toolchain/bin:$PATH
export ANDROID_MAJOR_VERSION=o
COMMON="CC=clang OBJDUMP=llvm-objdump OBJCOPY=llvm-objcopy AR=llvm-ar AS=llvm-as"

make $COMMON exynos7870-j7popeltekor_defconfig
make $COMMON savedefconfig
cp defconfig arch/arm64/configs/exynos7870-j7popeltekor_defconfig
make $COMMON -j$(nproc)
