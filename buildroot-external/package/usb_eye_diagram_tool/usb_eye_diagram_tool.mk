################################################################################
#
# usb_eye_diagram_tool
#
################################################################################

#USB_EYE_DIAGRAM_TOOL_VERSION = 1.0
USB_EYE_DIAGRAM_TOOL_SITE = $(BR2_EXTERNAL_ARK_PATH)/package/usb_eye_diagram_tool/bin
USB_EYE_DIAGRAM_TOOL_SITE_METHOD = local
USB_EYE_DIAGRAM_TOOL_INSTALL_STAGING = YES

define USB_EYE_DIAGRAM_TOOL_INSTALL_STAGING_CMDS
$(INSTALL) -D -m 0755 $(@D)/demo-usb_eye $(TARGET_DIR)/usr/sbin/demo-usb_eye
endef

$(eval $(generic-package))
