# Device identifier
PRODUCT_DEVICE := Tetris
PRODUCT_NAME := statix_Tetris
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A015
PRODUCT_MANUFACTURER := Nothing
PRODUCT_RELEASE_NAME := CMF Phone 1

# Inherit from common StatixOS config
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit from device-mk
$(call inherit-product, device/nothing/Tetris/device.mk)

# Inherit from vendor
$(call inherit-product-if-exists, vendor/nothing/Tetris/Tetris-vendor.mk)

# Inherit from AOSP
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Shipping API level (Android 14 for vendor compat)
PRODUCT_SHIPPING_API_LEVEL := 34
PRODUCT_TARGET_VNDK_VERSION := 34

# Maintainer info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.statix.maintainer=zulhvoid
