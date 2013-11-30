# Generic product
PRODUCT_NAME := huexxx
PRODUCT_BRAND := huexxx
PRODUCT_DEVICE := generic

# Embed superuser
SUPERUSER_EMBEDDED := true

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

# Latin IME lib
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Prebuilt libmmcamera_interface
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/system/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so

# Add SunBeam animated wallpaper
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/system/app/SunBeam.apk:system/app/SunBeam.apk

# init.d support
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/system/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/huexxx/proprietary/common/system/bin/sysinit:system/bin/sysinit

# Add basic gapps
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/common/system/app/CalendarGoogle.apk:system/app/CalendarGoogle.apk \
    vendor/huexxx/proprietary/common/system/app/Chrome.apk:system/app/Chrome.apk \
    vendor/huexxx/proprietary/common/system/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk\
    vendor/huexxx/proprietary/common/system/app/GalleryGoogle.apk:system/app/GalleryGoogle.apk \
    vendor/huexxx/proprietary/common/system/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/huexxx/proprietary/common/system/app/Gmail2.apk:system/app/Gmail2.apk \
    vendor/huexxx/proprietary/common/system/app/GoogleCamera.apk:system/app/GoogleCamera.apk \
    vendor/huexxx/proprietary/common/system/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/huexxx/proprietary/common/system/app/GoogleHome.apk:system/app/GoogleHome.apk \
    vendor/huexxx/proprietary/common/system/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/huexxx/proprietary/common/system/app/Hangouts.apk:system/app/Hangouts.apk \
    vendor/huexxx/proprietary/common/system/app/Maps.apk:system/app/Maps.apk \
    vendor/huexxx/proprietary/common/system/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/huexxx/proprietary/common/system/app/PlusOne.apk:system/app/PlusOne.apk \
    vendor/huexxx/proprietary/common/system/app/YouTube.apk:system/app/YouTube.apk \
    vendor/huexxx/proprietary/common/system/etc/g.prop:system/etc/g.prop \
    vendor/huexxx/proprietary/common/system/etc/permissions/com.google.android.camera2.xml:system/etc/permissions/com.google.android.camera2.xml \
    vendor/huexxx/proprietary/common/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/huexxx/proprietary/common/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/huexxx/proprietary/common/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/huexxx/proprietary/common/system/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/huexxx/proprietary/common/system/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/huexxx/proprietary/common/system/framework/com.google.android.camera2.jar:system/framework/com.google.android.camera2.jar \
    vendor/huexxx/proprietary/common/system/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/huexxx/proprietary/common/system/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/huexxx/proprietary/common/system/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/huexxx/proprietary/common/system/lib/libAppDataSearch.so:system/lib/libAppDataSearch.so \
    vendor/huexxx/proprietary/common/system/lib/libRSSupport.so:system/lib/libRSSupport.so \
    vendor/huexxx/proprietary/common/system/lib/libchromeview.so:system/lib/libchromeview.so \
    vendor/huexxx/proprietary/common/system/lib/libfacetracker.so:system/lib/libfacetracker.so \
    vendor/huexxx/proprietary/common/system/lib/libfilterframework_jni.so:system/lib/libfilterframework_jni.so \
    vendor/huexxx/proprietary/common/system/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/huexxx/proprietary/common/system/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/huexxx/proprietary/common/system/lib/libgames_rtmp_jni.so:system/lib/libgames_rtmp_jni.so \
    vendor/huexxx/proprietary/common/system/lib/libgcam.so:system/lib/libgcam.so \
    vendor/huexxx/proprietary/common/system/lib/libgcam_swig_jni.so:system/lib/libgcam_swig_jni.so \
    vendor/huexxx/proprietary/common/system/lib/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
    vendor/huexxx/proprietary/common/system/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/huexxx/proprietary/common/system/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/huexxx/proprietary/common/system/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/huexxx/proprietary/common/system/lib/libjni_t13n_shared_engine.so:system/lib/libjni_t13n_shared_engine.so \
    vendor/huexxx/proprietary/common/system/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/huexxx/proprietary/common/system/lib/libmoviemaker-jni.so:system/lib/libmoviemaker-jni.so \
    vendor/huexxx/proprietary/common/system/lib/libnativehelper_compat.so:system/lib/libnativehelper_compat.so \
    vendor/huexxx/proprietary/common/system/lib/libnetjni.so:system/lib/libnetjni.so \
    vendor/huexxx/proprietary/common/system/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/huexxx/proprietary/common/system/lib/libplus_jni_v8.so:system/lib/libplus_jni_v8.so \
    vendor/huexxx/proprietary/common/system/lib/librs.antblur.so:system/lib/librs.antblur.so \
    vendor/huexxx/proprietary/common/system/lib/librs.antblur_constant.so:system/lib/librs.antblur_constant.so \
    vendor/huexxx/proprietary/common/system/lib/librs.antblur_drama.so:system/lib/librs.antblur_drama.so \
    vendor/huexxx/proprietary/common/system/lib/librs.drama.so:system/lib/librs.drama.so \
    vendor/huexxx/proprietary/common/system/lib/librs.film_base.so:system/lib/librs.film_base.so \
    vendor/huexxx/proprietary/common/system/lib/librs.fixedframe.so:system/lib/librs.fixedframe.so \
    vendor/huexxx/proprietary/common/system/lib/librs.grey.so:system/lib/librs.grey.so \
    vendor/huexxx/proprietary/common/system/lib/librs.image_wrapper.so:system/lib/librs.image_wrapper.so \
    vendor/huexxx/proprietary/common/system/lib/librs.retrolux.so:system/lib/librs.retrolux.so \
    vendor/huexxx/proprietary/common/system/lib/librsjni.so:system/lib/librsjni.so \
    vendor/huexxx/proprietary/common/system/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/huexxx/proprietary/common/system/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so \
    vendor/huexxx/proprietary/common/system/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/huexxx/proprietary/common/system/lib/libwebp_android.so:system/lib/libwebp_android.so \
    vendor/huexxx/proprietary/common/system/lib/libwebrtc_audio_coding.so:system/lib/libwebrtc_audio_coding.so \
    vendor/huexxx/proprietary/common/system/lib/libwebrtc_audio_preprocessing.so:system/lib/libwebrtc_audio_preprocessing.so \
    vendor/huexxx/proprietary/common/system/priv-app/CalendarProvider.apk:system/priv-app/CalendarProvider.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GoogleBackupTransport.apk:system/priv-app/GoogleBackupTransport.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GoogleFeedback.apk:system/priv-app/GoogleFeedback.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GoogleLoginService.apk:system/priv-app/GoogleLoginService.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GooglePartnerSetup.apk:system/priv-app/GooglePartnerSetup.apk \
    vendor/huexxx/proprietary/common/system/priv-app/GoogleServicesFramework.apk:system/priv-app/GoogleServicesFramework.apk \
    vendor/huexxx/proprietary/common/system/priv-app/OneTimeInitializer.apk:system/priv-app/OneTimeInitializer.apk \
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

