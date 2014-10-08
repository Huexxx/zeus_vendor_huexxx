# Add Google Camera 20140930
PRODUCT_PACKAGES += \
    GoogleCamera
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/libgcam.so:system/lib/libgcam.so \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/libgcam_swig_jni.so:system/lib/libgcam_swig_jni.so \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/libjni_tinyplanet.so:system/lib/libjni_tinyplanet.so \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/libjpeg.so:system/lib/libjpeg.so \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/libnativehelper_compat_libc++.so:system/lib/libnativehelper_compat_libc++.so \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/librefocus.so:system/lib/librefocus.so \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/librsjni.so:system/lib/librsjni.so \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/librs.layered_filter_f32.so:system/lib/librs.layered_filter_f32.so \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/librs.layered_filter_fast_f32.so:system/lib/librs.layered_filter_fast_f32.so \
    vendor/huexxx/proprietary/gapps/optional/camera/lib/libRSSupport.so:system/lib/libRSSupport.so

# Add Google Chrome Beta 20140930
PRODUCT_PACKAGES += \
    ChromeBeta
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/gapps/system/lib/libchrome.2125.83.so:system/lib/libchrome.2125.83.so \
    vendor/huexxx/proprietary/gapps/system/lib/libchromium_android_linker.so:system/lib/libchromium_android_linker.so

# Add Google Gallery 20140930
PRODUCT_PACKAGES += \
    GalleryGoogle
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/gapps/optional/gallery/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/huexxx/proprietary/gapps/optional/gallery/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so

# Add Google LatinIME 20140930
PRODUCT_PACKAGES += \
    LatinImeGoogle
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/gapps/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/huexxx/proprietary/gapps/system/lib/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so

# Add Micro Gapps 20140930
PRODUCT_PACKAGES += \
    CalendarGoogle \
    Gmail2 \
    GoogleContactsSyncAdapter \
    GoogleHome \
    GoogleTTS \
    CalendarProvider \
    GoogleBackupTransport \
    GoogleFeedback \
    GoogleLoginService \
    GoogleOneTimeInitializer \
    GooglePartnerSetup \
    GoogleServicesFramework \
    Phonesky \
    PrebuiltGmsCore \
    SetupWizard \
    Velvet \
    com.google.android.ble \
    com.google.android.camera2 \
    com.google.android.maps \
    com.google.android.media.effects \
    com.google.widevine.software.drm
PRODUCT_COPY_FILES += \
    vendor/huexxx/proprietary/gapps/system/etc/permissions/com.google.android.ble.xml:system/etc/permissions/com.google.android.ble.xml \
    vendor/huexxx/proprietary/gapps/system/etc/permissions/com.google.android.camera2.xml:system/etc/permissions/com.google.android.camera2.xml \
    vendor/huexxx/proprietary/gapps/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/huexxx/proprietary/gapps/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/huexxx/proprietary/gapps/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/huexxx/proprietary/gapps/system/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/huexxx/proprietary/gapps/system/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/huexxx/proprietary/gapps/system/lib/libAppDataSearch.so:system/lib/libAppDataSearch.so \
    vendor/huexxx/proprietary/gapps/system/lib/libconscrypt_gmscore_jni.so:system/lib/libconscrypt_gmscore_jni.so \
    vendor/huexxx/proprietary/gapps/system/lib/libgames_rtmp_jni.so:system/lib/libgames_rtmp_jni.so \
    vendor/huexxx/proprietary/gapps/system/lib/libgcastv2_base.so:system/lib/libgcastv2_base.so \
    vendor/huexxx/proprietary/gapps/system/lib/libgcastv2_support.so:system/lib/libgcastv2_support.so \
    vendor/huexxx/proprietary/gapps/system/lib/libgmscore.so:system/lib/libgmscore.so \
    vendor/huexxx/proprietary/gapps/system/lib/libgms-ocrclient.so:system/lib/libgms-ocrclient.so \
    vendor/huexxx/proprietary/gapps/system/lib/libgoogle_hotword_jni.so:system/lib/libgoogle_hotword_jni.so \
    vendor/huexxx/proprietary/gapps/system/lib/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
    vendor/huexxx/proprietary/gapps/system/lib/libjgcastservice.so:system/lib/libjgcastservice.so \
    vendor/huexxx/proprietary/gapps/system/lib/libpatts_engine_jni_api_ub.210302120.so:system/lib/libpatts_engine_jni_api_ub.210302120.so \
    vendor/huexxx/proprietary/gapps/system/lib/libspeexwrapper_ub.210302120.so:system/lib/libspeexwrapper_ub.210302120.so \
    vendor/huexxx/proprietary/gapps/system/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so \
    vendor/huexxx/proprietary/gapps/system/lib/libWhisper.so:system/lib/libWhisper.so \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/c_fst:system/usr/srec/en-US/c_fst \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/clg:system/usr/srec/en-US/clg \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/commands.abnf:system/usr/srec/en-US/commands.abnf \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/contacts.abnf:system/usr/srec/en-US/contacts.abnf \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/dict:system/usr/srec/en-US/dict \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/dictation.config:system/usr/srec/en-US/dictation.config \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/dnn:system/usr/srec/en-US/dnn \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/endpointer_dictation.config:system/usr/srec/en-US/endpointer_dictation.config \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/ep_acoustic_model:system/usr/srec/en-US/ep_acoustic_model \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/g2p_fst:system/usr/srec/en-US/g2p_fst \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/grammar.config:system/usr/srec/en-US/grammar.config \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/hclg_shotword:system/usr/srec/en-US/hclg_shotword \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/hmmlist:system/usr/srec/en-US/hmmlist \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/hmm_symbols:system/usr/srec/en-US/hmm_symbols \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/hotword_classifier:system/usr/srec/en-US/hotword_classifier \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/hotword.config:system/usr/srec/en-US/hotword.config \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/hotword_normalizer:system/usr/srec/en-US/hotword_normalizer \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/hotword_prompt.txt:system/usr/srec/en-US/hotword_prompt.txt \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/hotword_word_symbols:system/usr/srec/en-US/hotword_word_symbols \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/metadata:system/usr/srec/en-US/metadata \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/normalizer:system/usr/srec/en-US/normalizer \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/norm_fst:system/usr/srec/en-US/norm_fst \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/offensive_word_normalizer:system/usr/srec/en-US/offensive_word_normalizer \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/phonelist:system/usr/srec/en-US/phonelist \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/phone_state_map:system/usr/srec/en-US/phone_state_map \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/rescoring_lm:system/usr/srec/en-US/rescoring_lm \
    vendor/huexxx/proprietary/gapps/system/usr/srec/en-US/wordlist:system/usr/srec/en-US/wordlist


