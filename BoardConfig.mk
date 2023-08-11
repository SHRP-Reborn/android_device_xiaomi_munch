#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/munch

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := munch

# Platform
TARGET_BOARD_PLATFORM := kona
TARGET_BOARD_PLATFORM_GPU := qcom-adreno650

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := $(TARGET_KERNEL_ARCH)
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
BOARD_BOOTIMG_HEADER_VERSION := 3

BOARD_KERNEL_CMDLINE := None
# TARGET_KERNEL_SOURCE := kernel/xiaomi/munch
# TARGET_KERNEL_CONFIG := munch_defconfig
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# AVB
BOARD_AVB_ENABLE := true

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 201326592
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Dynamic Partiton
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor odm

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USES_MKE2FS := true

# System as root
BOARD_ROOT_EXTRA_FOLDERS := bluetooth dsp firmware persist
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP Configuration
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_DEFAULT_BRIGHTNESS := 500
TW_DEVICE_VERSION := -hraj9258
TW_EXCLUDE_TWRPAPP := true
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_USE_FSCRYPT_POLICY := 2
TW_BACKUP_EXCLUSIONS := /data/fonts


TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CPU_POS := "50"
TW_CUSTOM_CLOCK_POS := "340" 
TW_CUSTOM_BATTERY_POS := "800"

# TWRP Debug Flags
# TWRP_EVENT_LOGGING := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# SHRP Flags
# Device codename
SHRP_DEVICE_CODE := munch
# Path of your SHRP device tree
SHRP_PATH := device/xiaomi/$(SHRP_DEVICE_CODE)
# Maintainer name
SHRP_MAINTAINER := "Himanshu Raj (@hraj9258)"
# Recovery Type (for "About" section only)
# Default (if not set): N/A
SHRP_REC_TYPE := SAR
SHRP_DEVICE_TYPE := V-A/B
# Your device's recovery path, dont use blindly
#SHRP_REC := /dev/block/bootdevice/by-name/recovery
# internal storage path
SHRP_INTERNAL := /sdcard
# USB OTG path
SHRP_OTG := /usb_otg
# Flashlight: (0 = disable, 1 = enable)
SHRP_FLASH := 1
# SHRP Dark mode, use this flag to have dark theme set by default
SHRP_DARK := true
# Addon - Clear Fingerprint (remove fingerprint lock from system)
SHRP_SKIP_DEFAULT_ADDON_3 := true
#SHRP_OFFICIAL := true
SHRP_AB := true
SHRP_EXPRESS := true
SHRP_EXPRESS_USE_DATA := true
SHRP_OFFICIAL := true
