Kernel Compilation
==================

Packages for mainline compilation (GCC suite):

.. code::

    aarch64-linux-gnu-binutils
    aarch64-linux-gnu-gcc
    aarch64-linux-gnu-gdb
    aarch64-linux-gnu-glibc
    aarch64-linux-gnu-linux-api-headers

Clang packages

.. code::

    clang
    clang-format-all-git

Kernel make command:

.. code::

    make \
    ARCH=arm64 \
    CC=clang \
    CROSS_COMPILE=aarch64-linux-gnu- \
    CROSS_COMPILE_ARM32=arm-none-eabi- \
    AR=llvm-ar \
    NM=llvm-nm \
    LD=ld.lld \
    STRIP=llvm-strip \
    OBJCOPY=llvm-objcopy \
    OBJDUMP=llvm-objdump \
    OBJSIZE=llvm-size \
    READELF=llvm-readelf \
    HOSTCC=clang \
    HOSTCXX=clang++ \
    HOSTAR=llvm-ar \
    HOSTLD=ld.lld \
    menuconfig

.. note:: SoMainline shares one ``defconfig`` for all devices, so you do not need to specify one as you might be used to from downstream Android kernels.

For convenience, SoMainline also `provides a repo`_ to generate and update a
"prebuilt" kernel that can be included from the Android device tree instead of
using "inline" compilation.

.. _provides a repo: https://github.com/MarijnS95/mainline-kernel-prebuilt
