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

# Add Google Dialer + Teleservice
PRODUCT_PACKAGES += \
    GoogleDialer \
    TeleService
PRODUCT_COPY_FILES += \
    vendor/huexxx/prebuilts/libvariablespeed.so:system/lib/libvariablespeed.so

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

# Add Gmail + Exchange3
PRODUCT_PACKAGES += \
    PrebuiltExchange3Google \
    PrebuiltGmail

# Add Hangouts
PRODUCT_PACKAGES += \
    Hangouts
PRODUCT_COPY_FILES += \
    vendor/huexxx/prebuilts/libcrashreporter.so:system/app/Hangouts/lib/arm/libcrashreporter.so \
    vendor/huexxx/prebuilts/libvideochat_jni.so:system/app/Hangouts/lib/arm/libvideochat_jni.so

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

# Add Google Dialer Library and Permissions
PRODUCT_PACKAGES += \
    com.google.android.dialer.support
PRODUCT_COPY_FILES += \
    vendor/huexxx/core_gapps/com.google.android.dialer.support.xml:system/etc/permissions/com.google.android.dialer.support.xml

# Add Google TTS, SoundRecorder, QuickSearchBox & srec
PRODUCT_PACKAGES += \
    GoogleTTS \
    SoundRecorder \
    Velvet
PRODUCT_COPY_FILES += \
    vendor/huexxx/prebuilts/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/huexxx/prebuilts/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/huexxx/prebuilts/libgoogle_hotword_jni.so:system/lib/libgoogle_hotword_jni.so \
    vendor/huexxx/prebuilts/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
    vendor/huexxx/prebuilts/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so \
    vendor/huexxx/prebuilts/c_fst:system/usr/srec/en-US/c_fst \
    vendor/huexxx/prebuilts/clg:system/usr/srec/en-US/clg \
    vendor/huexxx/prebuilts/commands.abnf:system/usr/srec/en-US/commands.abnf \
    vendor/huexxx/prebuilts/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config \
    vendor/huexxx/prebuilts/contacts.abnf:system/usr/srec/en-US/contacts.abnf \
    vendor/huexxx/prebuilts/dict:system/usr/srec/en-US/dict \
    vendor/huexxx/prebuilts/dictation.config:system/usr/srec/en-US/dictation.config \
    vendor/huexxx/prebuilts/dnn:system/usr/srec/en-US/dnn \
    vendor/huexxx/prebuilts/endpointer_dictation.config:system/usr/srec/en-US/endpointer_dictation.config \
    vendor/huexxx/prebuilts/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config \
    vendor/huexxx/prebuilts/ep_acoustic_model:system/usr/srec/en-US/ep_acoustic_model \
    vendor/huexxx/prebuilts/g2p_fst:system/usr/srec/en-US/g2p_fst \
    vendor/huexxx/prebuilts/grammar.config:system/usr/srec/en-US/grammar.config \
    vendor/huexxx/prebuilts/hclg_shotword:system/usr/srec/en-US/hclg_shotword \
    vendor/huexxx/prebuilts/hmmlist:system/usr/srec/en-US/hmmlist \
    vendor/huexxx/prebuilts/hmm_symbols:system/usr/srec/en-US/hmm_symbols \
    vendor/huexxx/prebuilts/hotword.config:system/usr/srec/en-US/hotword.config \
    vendor/huexxx/prebuilts/hotword_classifier:system/usr/srec/en-US/hotword_classifier \
    vendor/huexxx/prebuilts/hotword_normalizer:system/usr/srec/en-US/hotword_normalizer \
    vendor/huexxx/prebuilts/hotword_prompt.txt:system/usr/srec/en-US/hotword_prompt.txt \
    vendor/huexxx/prebuilts/hotword_word_symbols:system/usr/srec/en-US/hotword_word_symbols \
    vendor/huexxx/prebuilts/metadata:system/usr/srec/en-US/metadata \
    vendor/huexxx/prebuilts/normalizer:system/usr/srec/en-US/normalizer \
    vendor/huexxx/prebuilts/norm_fst:system/usr/srec/en-US/norm_fst \
    vendor/huexxx/prebuilts/offensive_word_normalizer:system/usr/srec/en-US/offensive_word_normalizer \
    vendor/huexxx/prebuilts/phonelist:system/usr/srec/en-US/phonelist \
    vendor/huexxx/prebuilts/phone_state_map:system/usr/srec/en-US/phone_state_map \
    vendor/huexxx/prebuilts/rescoring_lm:system/usr/srec/en-US/rescoring_lm \
    vendor/huexxx/prebuilts/wordlist:system/usr/srec/en-US/wordlist

# Add FaceUnlock
PRODUCT_PACKAGES += \
    FaceLock
PRODUCT_COPY_FILES += \
    vendor/huexxx/prebuilts/libfacelock_jni.so:system/lib/libfacelock_jni.so \
    vendor/huexxx/prebuilts/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/huexxx/prebuilts/landmark_group_meta_data.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/landmark_group_meta_data.bin \
    vendor/huexxx/prebuilts/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-tree7-wmd.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-tree7-wmd.bin \
    vendor/huexxx/prebuilts/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32-tree7-wmd.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32-tree7-wmd.bin \
    vendor/huexxx/prebuilts/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-3-tree7-wmd.bin:system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-3-tree7-wmd.bin \
    vendor/huexxx/prebuilts/head-y0-yi45-p0-pi45-r0-ri30.4a-v24-tree7-2-wmd.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/head-y0-yi45-p0-pi45-r0-ri30.4a-v24-tree7-2-wmd.bin \
    vendor/huexxx/prebuilts/head-y0-yi45-p0-pi45-rn30-ri30.5-v24-tree7-2-wmd.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/head-y0-yi45-p0-pi45-rn30-ri30.5-v24-tree7-2-wmd.bin \
    vendor/huexxx/prebuilts/head-y0-yi45-p0-pi45-rp30-ri30.5-v24-tree7-2-wmd.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/head-y0-yi45-p0-pi45-rp30-ri30.5-v24-tree7-2-wmd.bin \
    vendor/huexxx/prebuilts/pose-r.8.1.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/pose-r.8.1.bin \
    vendor/huexxx/prebuilts/pose-y-r.8.1.bin:system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1/pose-y-r.8.1.bin \
    vendor/huexxx/prebuilts/face.face.y0-y0-71-N-tree_7-wmd.bin:system/vendor/pittpatt/models/recognition/face.face.y0-y0-71-N-tree_7-wmd.bin

# Add ChromeBeta
PRODUCT_PACKAGES += \
    ChromeBeta
PRODUCT_COPY_FILES += \
    vendor/huexxx/prebuilts/libchrome.2171.90.so:system/lib/libchrome.2171.90.so \
    vendor/huexxx/prebuilts/libchromium_android_linker.so:system/lib/libchromium_android_linker.so

# Add Google Maps
PRODUCT_PACKAGES += \
    Maps
PRODUCT_COPY_FILES += \
    vendor/huexxx/prebuilts/maps_libcrashreporter.so:system/app/Maps/lib/arm/libcrashreporter.so \
    vendor/huexxx/prebuilts/libgmm-jni.so:system/app/Maps/lib/arm/libgmm-jni.so

# Add Google Music2 & MusicFX
PRODUCT_PACKAGES += \
    Music2 \
    MusicFX

# Add Google News and Weather
PRODUCT_PACKAGES += \
    PrebuiltNewsWeather

# Add MediaShortcuts
PRODUCT_PACKAGES += \
    MediaShortcuts

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml
