#
# This policy configuration will be used by all exynos products
#

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/exynos/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/exynos/sepolicy/common/private

BOARD_SEPOLICY_DIRS += \
    device/exynos/sepolicy/common/vendor
