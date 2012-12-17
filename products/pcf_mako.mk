## Specify phone tech before including full_phone
$(call inherit-product, vendor/pcf/config/common_phone.mk)

# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/pcf/config/common.mk)

# Inherit fnv specific configurations

# Setup device specific product configuration.
PRODUCT_NAME := pcf_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam TARGET_DEVICE=mako BUILD_FINGERPRINT=google/occam/mako:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2 JOP40C 527662 release-keys"

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/mako/overlay/mako

# Copy mako specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pcf/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pcf/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/pcf/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd 
