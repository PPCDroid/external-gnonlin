ifeq ($(strip $(BUILD_WITH_GST)),true)

LOCAL_PATH := $(call my-dir)

GNONLIN_TOP := $(LOCAL_PATH)

include $(CLEAR_VARS)

include $(GNONLIN_TOP)/gnl/Android.mk

endif
