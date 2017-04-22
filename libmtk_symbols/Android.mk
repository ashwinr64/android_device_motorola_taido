LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_audio.cpp \
    mtk_gui.cpp \
    mtk_ui.cpp \
    mtk_omx.cpp \
    icu55.c \
    icu53.c \
    ssl.c \
    volte.cpp

# only for 32bit libraries
LOCAL_SRC_FILES_32 := mtk_string.cpp
# only for 64bit libraries
LOCAL_SRC_FILES_64 := mtk_parcel.cpp

LOCAL_C_INCLUDES += \
    $(TOP)/frameworks/rs/server \
    $(TOP)/frameworks/native/include/media/openmax \
    $(TOP)/frameworks/av/include/media/ \
    $(TOP)/frameworks/av/media/libstagefright \
    $(TOP)/frameworks/av/media/libavextensions \
    $(call include-path-for, audio-effects) \
    $(call include-path-for, audio-utils)

LOCAL_SHARED_LIBRARIES := libbinder libutils liblog libgui libui \
                          libicuuc libicui18n libcrypto libmedia
LOCAL_MODULE := libmtk_symbols
LOCAL_CLANG := false
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
