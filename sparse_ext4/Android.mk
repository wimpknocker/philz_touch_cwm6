# Copyright 2014 Ketut P. Kumajaya <ketut.kumajaya@gmail.com>

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := zerofree.c
LOCAL_MODULE := zerofree
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += external/e2fsprogs/lib
LOCAL_STATIC_LIBRARIES := libc libext2fs libext2_com_err
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := sparsify.c namei.c
LOCAL_MODULE := sparsify
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += external/e2fsprogs/lib
LOCAL_STATIC_LIBRARIES := libc libext2fs libext2_com_err
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin

include $(BUILD_EXECUTABLE)
