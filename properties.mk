# Display
PRODUCT_PROPERTY_OVERRIDES += \
	ro.surface_flinger.has_HDR_display=true \
	ro.surface_flinger.has_wide_color_display=true \
	ro.surface_flinger.use_color_management=true \
	ro.surface_flinger.wcg_composition_dataspace=143261696

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hardware.fp.sideCap=true \
	ro.hardware.fp.vendor=goodix,fpc
