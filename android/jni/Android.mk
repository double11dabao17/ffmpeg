LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := $(LOCAL_PATH)

					
LOCAL_MODULE := libdummy
	
LOCAL_SRC_FILES := jni_main.c
				
LOCAL_STATIC_LIBRARIES :=
 
LOCAL_SHARED_LIBRARIES := libffmpeg #librtmp libsoundtouch libfribidi libiconv libcifs 

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path, $(LOCAL_PATH)/modules)
$(call import-module,FFmpeg)
#$(call import-module,librtmp)
#$(call import-module,soundtouch)
#$(call import-module,fribidi)
#$(call import-module,libiconv)
#$(call import-module,libcifs)

