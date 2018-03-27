# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_SEPARATED_DT := true
LZMA_RAMDISK_TARGETS := recovery
TARGET_KERNEL_CONFIG := test01a_msm_defconfig
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
TARGET_KERNEL_SOURCE := kernel/LYF/mobee01a
