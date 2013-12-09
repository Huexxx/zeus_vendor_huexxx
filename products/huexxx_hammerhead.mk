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
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:4.4.1/KOT49E/926649:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 4.4 KOT49E 926649 release-keys"

PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    com.android.nfc_extras \
    Stk \
    Superuser \
    su \
    Tag \
    Torch

# Complete sounds
LOCAL_PATH:= frameworks/base/data/sounds

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/notifications/ogg/Ariel.ogg:system/media/audio/notifications/Ariel.ogg \
        $(LOCAL_PATH)/notifications/ogg/Carme.ogg:system/media/audio/notifications/Carme.ogg \
        $(LOCAL_PATH)/notifications/ogg/Ceres.ogg:system/media/audio/notifications/Ceres.ogg \
        $(LOCAL_PATH)/notifications/ogg/Elara.ogg:system/media/audio/notifications/Elara.ogg \
        $(LOCAL_PATH)/notifications/ogg/Europa.ogg:system/media/audio/notifications/Europa.ogg \
        $(LOCAL_PATH)/notifications/ogg/Iapetus.ogg:system/media/audio/notifications/Iapetus.ogg \
        $(LOCAL_PATH)/notifications/ogg/Io.ogg:system/media/audio/notifications/Io.ogg \
        $(LOCAL_PATH)/notifications/ogg/Rhea.ogg:system/media/audio/notifications/Rhea.ogg \
        $(LOCAL_PATH)/notifications/ogg/Salacia.ogg:system/media/audio/notifications/Salacia.ogg \
        $(LOCAL_PATH)/notifications/ogg/Tethys.ogg:system/media/audio/notifications/Tethys.ogg \
        $(LOCAL_PATH)/notifications/ogg/Titan.ogg:system/media/audio/notifications/Titan.ogg \
        $(LOCAL_PATH)/ringtones/ogg/Callisto.ogg:system/media/audio/ringtones/Callisto.ogg \
        $(LOCAL_PATH)/ringtones/ogg/Dione.ogg:system/media/audio/ringtones/Dione.ogg \
        $(LOCAL_PATH)/ringtones/ogg/Ganymede.ogg:system/media/audio/ringtones/Ganymede.ogg \
        $(LOCAL_PATH)/ringtones/ogg/Luna.ogg:system/media/audio/ringtones/Luna.ogg \
        $(LOCAL_PATH)/ringtones/ogg/Oberon.ogg:system/media/audio/ringtones/Oberon.ogg \
        $(LOCAL_PATH)/ringtones/ogg/Phobos.ogg:system/media/audio/ringtones/Phobos.ogg \
        $(LOCAL_PATH)/ringtones/ogg/Sedna.ogg:system/media/audio/ringtones/Sedna.ogg \
        $(LOCAL_PATH)/ringtones/ogg/Titania.ogg:system/media/audio/ringtones/Titania.ogg \
        $(LOCAL_PATH)/ringtones/ogg/Triton.ogg:system/media/audio/ringtones/Triton.ogg \
        $(LOCAL_PATH)/ringtones/ogg/Umbriel.ogg:system/media/audio/ringtones/Umbriel.ogg

LOCAL_PATH:= vendor/huexxx/proprietary/hammerhead/media

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/audio/ringtones/RobotsforEveryone.ogg:system/media/audio/ringtones/RobotsforEveryone.ogg \
        $(LOCAL_PATH)/audio/ringtones/SpagnolaOrchestration.ogg:system/media/audio/ringtones/SpagnolaOrchestration.ogg

# Nexus5 bootanimation
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/bootanimation.zip:system/media/bootanimation.zip

