LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := file
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_SRC_FILES := src/apprentice.c src/apptype.c src/ascmagic.c src/asctime_r.c src/asprintf.c src/cdf.c src/cdf_time.c src/compress.c src/ctime_r.c src/encoding.c src/file.c src/fsmagic.c src/funcs.c src/getline.c src/getopt_long.c src/is_tar.c src/magic.c src/pread.c src/print.c src/readcdf.c src/readelf.c src/softmagic.c src/strlcat.c src/strlcpy.c src/vasprintf.c
LOCAL_CFLAGS := -std=gnu99 -fvisibility=hidden -g -O2
LOCAL_CFLAGS += -DHAVE_CONFIG_H
LOCAL_C_INCLUDES += $(LOCAL_PATH) external/zlib/src
LOCAL_STATIC_LIBRARIES := libz

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := magic.mgc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc
LOCAL_SRC_FILES := prebuilt/magic.mgc

include $(BUILD_PREBUILT)
