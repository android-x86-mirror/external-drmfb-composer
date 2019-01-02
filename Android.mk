# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2019 Stephan Gerhold

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.graphics.composer@2.1-service.drmfb
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_VENDOR_MODULE := true
LOCAL_INIT_RC := android.hardware.graphics.composer@2.1-service.drmfb.rc
LOCAL_CPP_STD := c++17

LOCAL_SRC_FILES := \
    service.cpp \
    DrmComposer.cpp \
    DrmDevice.cpp \
    DrmDisplay.cpp \
    DrmFramebuffer.cpp

LOCAL_HEADER_LIBRARIES := \
    android.hardware.graphics.composer@2.1-hal

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libbinder \
    libcutils \
    libdrm \
    libfmq \
    libhidlbase \
    libhidltransport \
    liblog \
    libsync \
    libutils \
    android.hardware.graphics.common@1.0 \
    android.hardware.graphics.mapper@2.0 \
    android.hardware.graphics.composer@2.1

include $(BUILD_EXECUTABLE)