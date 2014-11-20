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

# Add Google Camera
PRODUCT_PACKAGES += \
    GoogleCamera
PRODUCT_COPY_FILES += \
    vendor/huexxx/prebuilts/libgcam.so:system/lib/libgcam.so \
    vendor/huexxx/prebuilts/libgcam_swig_jni.so:system/lib/libgcam_swig_jni.so \
    vendor/huexxx/prebuilts/libjni_jpegutil.so:system/lib/libjni_jpegutil.so \
    vendor/huexxx/prebuilts/libjni_tinyplanet.so:system/lib/libjni_tinyplanet.so \
    vendor/huexxx/prebuilts/libjpeg.so:system/lib/libjpeg.so \
    vendor/huexxx/prebuilts/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/huexxx/prebuilts/libnativehelper_compat_libc++.so:system/lib/libnativehelper_compat_libc++.so \
    vendor/huexxx/prebuilts/librefocus.so:system/lib/librefocus.so \
    vendor/huexxx/prebuilts/librs.layered_filter_f32.so:system/lib/librs.layered_filter_f32.so \
    vendor/huexxx/prebuilts/librs.layered_filter_fast_f32.so:system/lib/librs.layered_filter_fast_f32.so \
    vendor/huexxx/prebuilts/librsjni.so:system/lib/librsjni.so \
    vendor/huexxx/prebuilts/libRSSupport.so:system/lib/libRSSupport.so

