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
else ifeq ($(BOARD_SEPOLICY_TEE_FLAVOR),mobicore)
# a device might not set the shipping api level
# check if its empty to avoid erroring out in the next if
ifeq ($(PRODUCT_SHIPPING_API_LEVEL),)
BOARD_SEPOLICY_DIRS += \
    device/samsung_slsi/sepolicy/tee/mobicore/legacy
else
# devices launched with oreo or later should be treble
ifneq ($(call math_gt_or_eq,$(PRODUCT_SHIPPING_API_LEVEL),26),)
BOARD_SEPOLICY_DIRS += \
    device/samsung_slsi/sepolicy/tee/mobicore/treble
else
BOARD_SEPOLICY_DIRS += \
    device/samsung_slsi/sepolicy/tee/mobicore/legacy
endif
endif

BOARD_SEPOLICY_DIRS += \
    device/samsung_slsi/sepolicy/tee/mobicore/common
endif
