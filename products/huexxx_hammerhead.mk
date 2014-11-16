# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/huexxx/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := huexxx_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead

PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    com.android.nfc_extras \
    Stk

# Add Nexus5 Android L bootanimation
PRODUCT_COPY_FILES += \
    vendor/huexxx/prebuilts/bootanimation.zip:system/media/bootanimation.zip
