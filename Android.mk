LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := ndk_translation_program_runner_binfmt_misc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_CHECK_ELF_FILES := false
LOCAL_SRC_FILES := prebuilts/bin/ndk_translation_program_runner_binfmt_misc
LOCAL_POST_INSTALL_CMD := mkdir -p $(TARGET_OUT)/bin/arm; \
						  rsync -av -l $(LOCAL_PATH)/prebuilts/bin/arm $(TARGET_OUT)/bin; \
						  mkdir -p $(TARGET_OUT)/lib/arm; \
						  rsync -av -l $(LOCAL_PATH)/prebuilts/lib/* $(TARGET_OUT)/lib
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ndk_translation_program_runner_binfmt_misc_arm64
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_CHECK_ELF_FILES := false
LOCAL_SRC_FILES := prebuilts/bin/ndk_translation_program_runner_binfmt_misc_arm64
LOCAL_POST_INSTALL_CMD := mkdir -p $(TARGET_OUT)/bin/arm64; \
						  rsync -av -l $(LOCAL_PATH)/prebuilts/bin/arm64 $(TARGET_OUT)/bin; \
						  mkdir -p $(TARGET_OUT)/lib64/arm64; \
						  rsync -av -l $(LOCAL_PATH)/prebuilts/lib64/* $(TARGET_OUT)/lib64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ndk_translation.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_CHECK_ELF_FILES := false
LOCAL_MODULE_RELATIVE_PATH := init
LOCAL_SRC_FILES := prebuilts/etc/init/ndk_translation.rc
LOCAL_POST_INSTALL_CMD := cp -r $(LOCAL_PATH)/prebuilts/etc/* $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

