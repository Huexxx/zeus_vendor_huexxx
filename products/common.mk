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

# Add Google Camera 20140930
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/optional/camera/app/GoogleCamera.apk:system/app/GoogleCamera.apk \
    vendor/huexxx/proprietary/common/optional/camera/lib/libgcam.so:system/lib/libgcam.so \
    vendor/huexxx/proprietary/common/optional/camera/lib/libgcam_swig_jni.so:system/lib/libgcam_swig_jni.so \
    vendor/huexxx/proprietary/common/optional/camera/lib/libjni_tinyplanet.so:system/lib/libjni_tinyplanet.so \
    vendor/huexxx/proprietary/common/optional/camera/lib/libjpeg.so:system/lib/libjpeg.so \
    vendor/huexxx/proprietary/common/optional/camera/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/huexxx/proprietary/common/optional/camera/lib/libnativehelper_compat_libc++.so:system/lib/libnativehelper_compat_libc++.so \
    vendor/huexxx/proprietary/common/optional/camera/lib/librefocus.so:system/lib/librefocus.so \
    vendor/huexxx/proprietary/common/optional/camera/lib/librsjni.so:system/lib/librsjni.so \
    vendor/huexxx/proprietary/common/optional/camera/lib/librs.layered_filter_f32.so:system/lib/librs.layered_filter_f32.so \
    vendor/huexxx/proprietary/common/optional/camera/lib/librs.layered_filter_fast_f32.so:system/lib/librs.layered_filter_fast_f32.so \
    vendor/huexxx/proprietary/common/optional/camera/lib/libRSSupport.so:system/lib/libRSSupport.so

# Add Google Chrome Beta 20140930
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/system/app/ChromeBeta.apk:system/app/ChromeBeta.apk \
    vendor/huexxx/proprietary/common/system/lib/libchrome.2125.83.so:system/lib/libchrome.2125.83.so \
    vendor/huexxx/proprietary/common/system/lib/libchromium_android_linker.so:system/lib/libchromium_android_linker.so

# Add Google Gallery 20140930
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/optional/gallery/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/huexxx/proprietary/common/optional/gallery/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/huexxx/proprietary/common/optional/gallery/hammerhead/app/GalleryGoogle.apk:system/app/GalleryGoogle.apk

# Add Google LatinIME 20140930
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/system/app/LatinImeGoogle.apk:system/app/LatinImeGoogle.apk \
    vendor/huexxx/proprietary/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/huexxx/proprietary/common/system/lib/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so

# Add Micro Gapps 20140930
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/system/app/CalendarGoogle.apk:system/app/CalendarGoogle.apk \
    vendor/huexxx/proprietary/common/system/app/Gmail2.apk:system/app/Gmail2.apk \
    vendor/huexxx/proprietary/common/system/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/huexxx/proprietary/common/system/app/GoogleHome.apk:system/app/GoogleHome.apk \
    vendor/huexxx/proprietary/common/system/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/huexxx/proprietary/common/system/etc/permissions/com.google.android.ble.xml:system/etc/permissions/com.google.android.ble.xml \
    vendor/huexxx/proprietary/common/system/etc/permissions/com.google.android.camera2.xml:system/etc/permissions/com.google.android.camera2.xml \
    vendor/huexxx/proprietary/common/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/huexxx/proprietary/common/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/huexxx/proprietary/common/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/huexxx/proprietary/common/system/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/huexxx/proprietary/common/system/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/huexxx/proprietary/common/system/framework/com.google.android.ble.jar:system/framework/com.google.android.ble.jar \
    vendor/huexxx/proprietary/common/system/framework/com.google.android.camera2.jar:system/framework/com.google.android.camera2.jar \
    vendor/huexxx/proprietary/common/system/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/huexxx/proprietary/common/system/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/huexxx/proprietary/common/system/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/huexxx/proprietary/common/system/lib/libAppDataSearch.so:system/lib/libAppDataSearch.so \
    vendor/huexxx/proprietary/common/system/lib/libconscrypt_gmscore_jni.so:system/lib/libconscrypt_gmscore_jni.so \
    vendor/huexxx/proprietary/common/system/lib/libgames_rtmp_jni.so:system/lib/libgames_rtmp_jni.so \
    vendor/huexxx/proprietary/common/system/lib/libgcastv2_base.so:system/lib/libgcastv2_base.so \
    vendor/huexxx/proprietary/common/system/lib/libgcastv2_support.so:system/lib/libgcastv2_support.so \
    vendor/huexxx/proprietary/common/system/lib/libgmscore.so:system/lib/libgmscore.so \
    vendor/huexxx/proprietary/common/system/lib/libgms-ocrclient.so:system/lib/libgms-ocrclient.so \
    vendor/huexxx/proprietary/common/system/lib/libgoogle_hotword_jni.so:system/lib/libgoogle_hotword_jni.so \
    vendor/huexxx/proprietary/common/system/lib/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
    vendor/huexxx/proprietary/common/system/lib/libjgcastservice.so:system/lib/libjgcastservice.so \
    vendor/huexxx/proprietary/common/system/lib/libpatts_engine_jni_api_ub.210302120.so:system/lib/libpatts_engine_jni_api_ub.210302120.so \
    vendor/huexxx/proprietary/common/system/lib/libspeexwrapper_ub.210302120.so:system/lib/libspeexwrapper_ub.210302120.so \
    vendor/huexxx/proprietary/common/system/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so \
    vendor/huexxx/proprietary/common/system/lib/libWhisper.so:system/lib/libWhisper.so \
    vendor/huexxx/proprietary/common/system/priv-app/CalendarProvider.apk:system/priv-app/CalendarProvider.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GoogleBackupTransport.apk:system/priv-app/GoogleBackupTransport.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GoogleFeedback.apk:system/priv-app/GoogleFeedback.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GoogleLoginService.apk:system/priv-app/GoogleLoginService.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GoogleOneTimeInitializer.apk:system/priv-app/GoogleOneTimeInitializer.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GooglePartnerSetup.apk:system/priv-app/GooglePartnerSetup.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GoogleServicesFramework.apk:system/priv-app/GoogleServicesFramework.apk \
    vendor/huexxx/proprietary/common/system/priv-app/Phonesky.apk:system/priv-app/Phonesky.apk \
    vendor/huexxx/proprietary/common/system/priv-app/PrebuiltGmsCore.apk:system/priv-app/PrebuiltGmsCore.apk \
    vendor/huexxx/proprietary/common/system/priv-app/SetupWizard.apk:system/priv-app/SetupWizard.apk \
    vendor/huexxx/proprietary/common/system/priv-app/Velvet.apk:system/priv-app/Velvet.apk \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/c_fst:system/usr/srec/en-US/c_fst \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/clg:system/usr/srec/en-US/clg \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/commands.abnf:system/usr/srec/en-US/commands.abnf \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/contacts.abnf:system/usr/srec/en-US/contacts.abnf \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/dict:system/usr/srec/en-US/dict \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/dictation.config:system/usr/srec/en-US/dictation.config \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/dnn:system/usr/srec/en-US/dnn \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/endpointer_dictation.config:system/usr/srec/en-US/endpointer_dictation.config \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/ep_acoustic_model:system/usr/srec/en-US/ep_acoustic_model \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/g2p_fst:system/usr/srec/en-US/g2p_fst \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/grammar.config:system/usr/srec/en-US/grammar.config \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/hclg_shotword:system/usr/srec/en-US/hclg_shotword \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/hmmlist:system/usr/srec/en-US/hmmlist \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/hmm_symbols:system/usr/srec/en-US/hmm_symbols \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/hotword_classifier:system/usr/srec/en-US/hotword_classifier \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/hotword.config:system/usr/srec/en-US/hotword.config \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/hotword_normalizer:system/usr/srec/en-US/hotword_normalizer \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/hotword_prompt.txt:system/usr/srec/en-US/hotword_prompt.txt \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/hotword_word_symbols:system/usr/srec/en-US/hotword_word_symbols \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/metadata:system/usr/srec/en-US/metadata \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/normalizer:system/usr/srec/en-US/normalizer \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/norm_fst:system/usr/srec/en-US/norm_fst \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/offensive_word_normalizer:system/usr/srec/en-US/offensive_word_normalizer \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/phonelist:system/usr/srec/en-US/phonelist \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/phone_state_map:system/usr/srec/en-US/phone_state_map \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/rescoring_lm:system/usr/srec/en-US/rescoring_lm \
    vendor/huexxx/proprietary/common/system/usr/srec/en-US/wordlist:system/usr/srec/en-US/wordlist





