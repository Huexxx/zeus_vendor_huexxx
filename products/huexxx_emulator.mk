# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, build/target/product/full.mk)

# Inherit common product files.
$(call inherit-product, vendor/huexxx/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := huexxx_emulator
PRODUCT_BRAND := Android
PRODUCT_DEVICE := generic
PRODUCT_MODEL := Emulator
