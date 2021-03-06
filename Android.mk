# Copyright (C) 2011 The Android-x86 Open Source Project

LOCAL_PATH := $(call my-dir)

# HAL module implemenation, not prelinked and stored in
# hw/<OVERLAY_HARDWARE_MODULE_ID>.<ro.product.board>.so
include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_CFLAGS += -DGPS_DEBUG
LOCAL_STATIC_LIBRARIES := liblog libcutils

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_MODULE := gps.default
LOCAL_MODULE_FILENAME := gps.default
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := misc.c interface.c state.c minmea.c gps_status.c reader.c notifier.c device.c gps.c

include $(BUILD_SHARED_LIBRARY)

