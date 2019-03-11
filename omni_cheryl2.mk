# Release name
PRODUCT_RELEASE_NAME := cheryl2

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

PRODUCT_COPY_FILES += \
    device/razer/cheryl2/kernel:kernel

PRODUCT_COPY_FILES += \
    device/razer/cheryl2/recovery.fstab:recovery/root/etc/recovery.fstab \
    device/razer/cheryl2/init.recovery.qcom.rc:root/init.recovery.qcom.rc

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cheryl2
PRODUCT_MODEL := Phone2
PRODUCT_NAME := omni_cheryl2
PRODUCT_BRAND := Razer
PRODUCT_MANUFACTURER := Razer
