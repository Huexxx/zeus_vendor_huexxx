# Generic product
PRODUCT_NAME := huexxx
PRODUCT_BRAND := huexxx
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1 \
    persist.sys.root_access=1

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/huexxx/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# init.d support
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/system/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/huexxx/proprietary/common/system/bin/sysinit:system/bin/sysinit

# Prebuilt libmmcamera_interface
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/system/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so


