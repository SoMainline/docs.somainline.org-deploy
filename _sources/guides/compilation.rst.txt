Kernel Compilation
==================

Packages for mainline compilation (GCC suite):

.. code::

    aarch64-linux-gnu-binutils
    aarch64-linux-gnu-gcc

Clang packages:

.. code::

    clang
    clang-format-all-git

Below commands assume you have a sensible ``.config`` in the output directory. If ``defconfig`` has been modified in-tree to include all the necessary drivers, run the same command below but with ``defconfig`` (instead of ``Image.gz dtbs``) below to generate ``.config``.

Kernel make command, using ``gcc``:

.. TODO: We haven't enabled any 32-bit vDSO so arm-none-eabi might not be necessary

.. code::

    make \
    ARCH=arm64 \
    CROSS_COMPILE=aarch64-linux-gnu- \
    CROSS_COMPILE_ARM32=arm-none-eabi- \
    Image.gz dtbs

Kernel make command, using ``clang``:

.. code::

    make \
    ARCH=arm64 \
    CC=clang \
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
    Image.gz dtbs

.. note:: SoMainline shares one ``defconfig`` for all devices, so you do not need to specify one as you might be used to from downstream Android kernels.

For convenience, SoMainline also `provides a repo`_ to generate and update a "prebuilt" kernel that can be included from the Android device tree instead of using "inline" compilation. No prebuilts are shipped yet but they can be generated with the included ``./build-kernels-gcc.sh`` script, that runs about the same code as above.

.. _provides a repo: https://github.com/SoMainline/mainline-kernel-prebuilt
