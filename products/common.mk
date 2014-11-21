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

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/huexxx/overlay/common

# Add prebuilt libmmcamera_interface.so from stock LRX21O
PRODUCT_COPY_FILES += \
    vendor/huexxx/prebuilts/libmmcamera_interface.so:system/lib/libmmcamera_interface.so

# Add Google Photos
PRODUCT_PACKAGES += \
    Photos

# Add Google LatinIME
PRODUCT_PACKAGES += \
    LatinImeGoogle
PRODUCT_COPY_FILES += \
    vendor/huexxx/prebuilts/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so

# Add Google Home
PRODUCT_PACKAGES += \
    GoogleHome

# Add Google Calendar + Provider
PRODUCT_PACKAGES += \
    CalendarGooglePrebuilt \
    CalendarProvider

# Add Core Google Apps
# com.google.android.camera2 is directly copied because it is currently odexed!
PRODUCT_PACKAGES += \
    ConfigUpdater \
    GoogleContactsSyncAdapter \
    com.google.android.maps \
    com.google.android.media.effects \
    com.google.widevine.software.drm \
    GoogleBackupTransport \
    GoogleFeedback \
    GoogleLoginService \
    GoogleOneTimeInitializer \
    GooglePartnerSetup \
    GoogleServicesFramework \
    Phonesky \
    PrebuiltGmsCore \
    SetupWizard
PRODUCT_COPY_FILES += \
    vendor/huexxx/core_gapps/com.google.android.camera2.xml:system/etc/permissions/com.google.android.camera2.xml \
    vendor/huexxx/core_gapps/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/huexxx/core_gapps/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/huexxx/core_gapps/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/huexxx/core_gapps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/huexxx/core_gapps/google_build.xml:system/etc/sysconfig/google_build.xml \
    vendor/huexxx/core_gapps/sc_google.xml:system/etc/sysconfig/google.xml \
    vendor/huexxx/core_gapps/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/huexxx/core_gapps/com.google.android.camera2.jar:system/framework/com.google.android.camera2.jar \
    vendor/huexxx/core_gapps/com.google.android.camera2.odex:system/framework/arm/com.google.android.camera2.odex \
    vendor/huexxx/core_gapps/libAppDataSearch.so:system/priv-app/PrebuiltGmsCore/lib/arm/libAppDataSearch.so \
    vendor/huexxx/core_gapps/libconscrypt_gmscore_jni.so:system/priv-app/PrebuiltGmsCore/lib/arm/libconscrypt_gmscore_jni.so \
    vendor/huexxx/core_gapps/libgames_rtmp_jni.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgames_rtmp_jni.so \
    vendor/huexxx/core_gapps/libgcastv2_base.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgcastv2_base.so \
    vendor/huexxx/core_gapps/libgcastv2_support.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgcastv2_support.so \
    vendor/huexxx/core_gapps/libgmscore.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgmscore.so \
    vendor/huexxx/core_gapps/libgms-ocrclient.so:system/priv-app/PrebuiltGmsCore/lib/arm/libgms-ocrclient.so \
    vendor/huexxx/core_gapps/libjgcastservice.so:system/priv-app/PrebuiltGmsCore/lib/arm/libjgcastservice.so \
    vendor/huexxx/core_gapps/libWhisper.so:system/priv-app/PrebuiltGmsCore/lib/arm/libWhisper.so

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
