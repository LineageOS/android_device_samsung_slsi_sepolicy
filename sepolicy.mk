#
# This policy configuration will be used by samsung products
#

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/samsung_slsi/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/samsung_slsi/sepolicy/common/private

BOARD_SEPOLICY_DIRS += \
    device/samsung_slsi/sepolicy/common/vendor

ifeq ($(BOARD_SEPOLICY_TEE_FLAVOR),teegris)
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/samsung_slsi/sepolicy/tee/teegris/public

BOARD_SEPOLICY_DIRS += \
    device/samsung_slsi/sepolicy/tee/teegris/vendor
endif
