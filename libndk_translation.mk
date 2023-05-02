# Bundle libndk_translation as ARM on x86 native bridge
WITH_NATIVE_BRIDGE := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.dalvik.vm.isa.arm=x86 \
    ro.vendor.enable.native.bridge.exec=1 \
    ro.dalvik.vm.isa.arm64=x86_64 \
    ro.vendor.enable.native.bridge.exec64=1 \
	ro.dalvik.vm.native.bridge=libndk_translation.so \
	ro.ndk_translation.version=0.2.3 \
	ro.ndk_translation.flags=accurate-sigsegv

PRODUCT_PACKAGES += \
	ndk_translation_program_runner_binfmt_misc \
	ndk_translation_program_runner_binfmt_misc_arm64 \
	ndk_translation.rc

