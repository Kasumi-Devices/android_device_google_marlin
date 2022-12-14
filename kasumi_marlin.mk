# Boot animation
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Kasumi stuff.
$(call inherit-product, vendor/kasumi/config/common_full_phone.mk)

# GApps
TARGET_GAPPS_ARCH := arm64

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

-include device/google/marlin/device-kasumi.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := kasumi_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 10 QP1A.191005.007.A3 5972272 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys

$(call inherit-product, vendor/google/marlin/marlin-vendor.mk)
