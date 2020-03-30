#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/fairphone/FP3

BOARD_VENDOR := Fairphone

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := FP3
TARGET_NO_BOOTLOADER := false
# BOOTLOADER_GCC_VERSION := arm-eabi-4.8

# Platform - UM_3_18_FAMILY
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_HAS_NO_SELECT_BUTTON := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
TARGET_FS_CONFIG_GEN += \
    $(DEVICE_PATH)/config.fs

# Kernel
BOARD_KERNEL_BASE        := 0x80000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := false
TARGET_KERNEL_CONFIG := lineageos_FP3_defconfig
# TARGET_KERNEL_CONFIG := msm8953_defconfig
TARGET_KERNEL_SOURCE := kernel/fairphone/sdm632
# TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_USES_UNCOMPRESSED_KERNEL := false
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 androidboot.hardware=qcom msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_serial_dm,0x78af000
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware_mnt/image androidboot.usbconfigfs=true loop.max_part=7
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_VERSION := 4.9
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    DTC=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/dtc/dtc \
    MKDTIMG=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/libufdt/mkdtimg

# Declare boot header
BOARD_BOOT_HEADER_VERSION := 1
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Assertions
TARGET_OTA_ASSERT_DEVICE := FP3

# Filesystem
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USES_METADATA_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_OEMIMAGE_PARTITION_SIZE := 268435456
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20669530112
BOARD_METADATAIMAGE_PARTITION_SIZE := 16777216
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_COPY_OUT_VENDOR := vendor
# BOARD_USES_PRODUCTIMAGE := true
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 134217728
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORTS_SOUND_TRIGGER_HAL := true
DTS_CODEC_M_ := false
USE_XML_AUDIO_POLICY_CONF := 1

AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
AUDIO_FEATURE_ENABLED_HIFI_AUDIO := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_HDMI_EDID := true
AUDIO_FEATURE_ENABLED_EXT_HDMI := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := false
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := false
MM_AUDIO_ENABLED_FTM := true
TARGET_USES_QCOM_MM_AUDIO := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
BOARD_SUPPORTS_QAHW := false
AUDIO_FEATURE_ENABLED_DYNAMIC_LOG := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
AUDIO_FEATURE_ENABLED_SVA_MULTI_STAGE := true

#Audio Specific device overlays
DEVICE_PACKAGE_OVERLAYS += hardware/qcom/audio-caf/msm8996/configs/common/overlay

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
QCOM_BT_USE_BTNV := true

# Camera
USE_CAMERA_STUB := true
TARGET_USES_QTI_CAMERA_DEVICE := true

# Graphics
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
# MAX_VIRTUAL_DISPLAY_DIMENSION := 4096 #TODO
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
TARGET_USES_HWC2 := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_COLOR_METADATA := true  #TODO # already set by vendor/lineage/config/BoardConfigQcom.mk
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_MOUNT_POINTS_SYMLINKS := false

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# RIL
TARGET_RIL_VARIANT := caf
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true
TARGET_USES_OLD_MNC_FORMAT := true
ENABLE_VENDOR_RIL_SERVICE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/recovery.fstab

# Vendor Security Patch Level
VENDOR_SECURITY_PATCH := "2018-08-05"

# Encryption
TARGET_HW_DISK_ENCRYPTION := false

# SELinux
include device/qcom/sepolicy/sepolicy.mk

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Treble
BOARD_SYSTEMSDK_VERSIONS :=28
BOARD_VNDK_VERSION := current


BOARD_AVB_ENABLE := true
# # Enable chain partition for system, to facilitate system-only OTA in Treble.
BOARD_AVB_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_SYSTEM_ROLLBACK_INDEX := 0
BOARD_AVB_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

# When AVB 2.0 is enabled, dm-verity is enabled differently,
# below definitions are only required for AVB 1.0
ifeq ($(BOARD_AVB_ENABLE),false)
# dm-verity definitions
	PRODUCT_SUPPORTS_VERITY := true
	PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/bootdevice/by-name/system
	PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/bootdevice/by-name/vendor
	$(call inherit-product, build/target/product/verity.mk)
endif

# INIT
# TARGET_INIT_VENDOR_LIB := libinit_msm

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
TARGET_DISABLE_WCNSS_CONFIG_COPY := true
PRODUCT_VENDOR_MOVE_ENABLED := true

# inherit from the proprietary version
-include vendor/fairphone/FP3/BoardConfigVendor.mk
