LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -fPIE -std=c99
LOCAL_LDFLAGS += -fPIE -pie

LOCAL_C_INCLUDES := \
	./jni/regex \
	./jni/libinotifytools

LOCAL_MODULE    := inotifywait
LOCAL_SRC_FILES := wrap.c common.c libinotifytools/inotifytools.c libinotifytools/redblack.c


include $(BUILD_EXECUTABLE)

