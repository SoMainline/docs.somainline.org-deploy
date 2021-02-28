Minimal Android Userspace
=========================

The following variables (not their values!) are a minimal starting point when
using Android userspace on a mainline kernel.

``PRODUCT`` definitions:

.. code::

    PRODUCT_NAME := mainline_f5121
    PRODUCT_DEVICE := suzu-mainline
    PRODUCT_MODEL := Xperia X (AOSP Mainline)
    PRODUCT_BRAND := Sony
    PRODUCT_MANUFACTURER := Sony

Base ``AndroidProducts.mk`` for Android build system to pick up the device:

.. code::

    PRODUCT_MAKEFILES := \
        $(LOCAL_DIR)/mainline_f5121.mk
    COMMON_LUNCH_CHOICES := \
        mainline_f5121-userdebug

Kernel command line: Hardware, bootdevices, permissive SELinux & other early
porting conveniences:

.. code::

    BOARD_KERNEL_CMDLINE += androidboot.hardware=suzu
    BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci
    BOARD_KERNEL_CMDLINE += earlycon=msm_serial_dm,0x7af0000
    BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
    BOARD_KERNEL_CMDLINE += androidboot.memcg=1
    BOARD_KERNEL_CMDLINE += printk.devkmsg=on

Android sysprops for getting USB up (adjust for your controller):

.. code::

    PRODUCT_PROPERTY_OVERRIDES += \
        sys.usb.controller=ci_hdrc.0

.. note:: fstab should not contradict ``android,fstab`` entry in ``dts``

Copy device ``fstab``:

.. code::

    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/fstab.<device>:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.<device>

With `System-As-Root`_ (``SAR``) , these need to also be copied to the ramdisk:

.. code::

    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/fstab.<device>:$(TARGET_RAMDISK_OUT)/fstab.<device>

Copy init files for regular boot and recovery:

.. code::

    PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/init.<device>.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.<device>.rc \
        $(LOCAL_PATH)/init.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.usb.rc

Graphics:

.. code::

    BOARD_GPU_DRIVERS := freedreno
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.hardware.hwcomposer=drm
    PRODUCT_PACKAGES += \
        gallium_dri:64 \
        libGLES_mesa:64
    # Android gralloc module using libgbm API from Mesa
    # https://github.com/robherring/gbm_gralloc
    PRODUCT_PACKAGES += \
        android.hardware.graphics.allocator@2.0-impl:64 \
        android.hardware.graphics.allocator@2.0-service \
        android.hardware.graphics.mapper@2.0-impl-2.1:64 \
        gralloc.gbm:64
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.hardware.gralloc=gbm
    # https://gitlab.freedesktop.org/drm-hwcomposer/drm-hwcomposer
    # KMS-based HWComposer implementation.
    PRODUCT_PACKAGES += \
        android.hardware.graphics.composer@2.4-impl:64 \
        android.hardware.graphics.composer@2.4-service \
        hwcomposer.drm:64
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.hardware.hwcomposer=drm

Cut down build times by trying to build mostly 64-bit:

.. code::

    $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

For legacy devices (no ``SAR``/recovery-as-boot), you need to explicitly enable
building of ``boot.img``

.. code::

    PRODUCT_BUILD_BOOT_IMAGE := true

.. _System-As-Root: https://source.android.com/devices/bootloader/partitions/system-as-root#about-system-as-root
