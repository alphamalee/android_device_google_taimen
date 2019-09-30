# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit Carbon product configuration
$(call inherit-product, vendor/colt/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/taimen/device-carbon.mk

# Google Apps
$(call inherit-product, vendor/pixelgapps/pixel-gapps.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := colt_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:10/QP1A.190711.020/5800535:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 10 QP1A.190711.020 5800535 release-keys"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
