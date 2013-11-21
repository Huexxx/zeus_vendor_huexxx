# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/huexxx/products/common.mk)

# Video files
$(call inherit-product-if-exists, frameworks/base/data/videos/VideoPackage2.mk)

# Setup device specific product configuration.
PRODUCT_NAME := huexxx_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:4.4/KRT16M/893803:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 4.4 KRT16M 893803 release-keys"

PRODUCT_PACKAGES += \
    Launcher3

PRODUCT_PACKAGES += \
    Stk
