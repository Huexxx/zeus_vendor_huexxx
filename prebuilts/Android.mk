# Copyright 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := GoogleDialer
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_POST_INSTALL_CMD := \
    mkdir -p $(TARGET_OUT)/priv-app/GoogleDialer/lib/arm; \
        ln -sf /system/lib/libvariablespeed.so \
        $(TARGET_OUT)/priv-app/GoogleDialer/lib/arm/libvariablespeed.so;
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := TeleService
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := GoogleCamera
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_POST_INSTALL_CMD := \
    mkdir -p $(TARGET_OUT)/app/GoogleCamera/lib/arm; \
        ln -sf /system/lib/libgcam.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/libgcam.so; \
        ln -sf /system/lib/libgcam_swig_jni.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/libgcam_swig_jni.so; \
        ln -sf /system/lib/libjni_jpegutil.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/libjni_jpegutil.so; \
        ln -sf /system/lib/libjni_tinyplanet.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/libjni_tinyplanet.so; \
        ln -sf /system/lib/libjpeg.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/libjpeg.so; \
        ln -sf /system/lib/liblightcycle.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/liblightcycle.so; \
        ln -sf /system/lib/libnativehelper_compat_libc++.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/libnativehelper_compat_libc++.so; \
        ln -sf /system/lib/librefocus.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/librefocus.so; \
        ln -sf /system/lib/librs.layered_filter_f32.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/librs.layered_filter_f32.so; \
        ln -sf /system/lib/librs.layered_filter_fast_f32.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/librs.layered_filter_fast_f32.so; \
        ln -sf /system/lib/librsjni.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/librsjni.so; \
        ln -sf /system/lib/libRSSupport.so \
        $(TARGET_OUT)/app/GoogleCamera/lib/arm/libRSSupport.so;
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := Photos
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := LatinImeGoogle
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_POST_INSTALL_CMD := \
    mkdir -p $(TARGET_OUT)/app/LatinImeGoogle/lib/arm; \
        ln -sf /system/lib/libjni_unbundled_latinimegoogle.so \
        $(TARGET_OUT)/app/LatinImeGoogle/lib/arm/libjni_unbundled_latinimegoogle.so;
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := GoogleHome
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := CalendarGooglePrebuilt
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := CalendarProvider
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := PrebuiltExchange3Google
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := PrebuiltGmail
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := Hangouts
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := GoogleTTS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_POST_INSTALL_CMD := \
    mkdir -p $(TARGET_OUT)/app/GoogleTTS/lib/arm; \
        ln -sf /system/lib/libpatts_engine_jni_api.so \
        $(TARGET_OUT)/app/GoogleTTS/lib/arm/libpatts_engine_jni_api.so; \
        ln -sf /system/lib/libspeexwrapper.so \
        $(TARGET_OUT)/app/GoogleTTS/lib/arm/libspeexwrapper.so;
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := Velvet
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_POST_INSTALL_CMD := \
    mkdir -p $(TARGET_OUT)/priv-app/Velvet/lib/arm; \
        ln -sf /system/lib/libgoogle_hotword_jni.so \
        $(TARGET_OUT)/priv-app/Velvet/lib/arm/libgoogle_hotword_jni.so; \
        ln -sf /system/lib/libgoogle_recognizer_jni_l.so \
        $(TARGET_OUT)/priv-app/Velvet/lib/arm/libgoogle_recognizer_jni_l.so; \
        ln -sf /system/lib/libvcdecoder_jni.so \
        $(TARGET_OUT)/priv-app/Velvet/lib/arm/libvcdecoder_jni.so;
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := FaceLock
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_POST_INSTALL_CMD := \
    mkdir -p $(TARGET_OUT)/app/FaceLock/lib/arm; \
        ln -sf /system/lib/libfacelock_jni.so \
        $(TARGET_OUT)/app/FaceLock/lib/arm/libfacelock_jni.so;
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := ChromeBeta
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_POST_INSTALL_CMD := \
    mkdir -p $(TARGET_OUT)/app/ChromeBeta/lib/arm; \
        ln -sf /system/lib/libchrome.2171.90.so \
        $(TARGET_OUT)/app/ChromeBeta/lib/arm/libchrome.2171.90.so; \
        ln -sf /system/lib/libchromium_android_linker.so \
        $(TARGET_OUT)/app/ChromeBeta/lib/arm/libchromium_android_linker.so;
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := Maps
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := Music2
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := PrebuiltNewsWeather
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE := MediaShortcuts
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

