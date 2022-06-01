################################################################################
#
# usbmuxd
#
################################################################################

#USBMUXD_VERSION = 1.0
USBMUXD_SITE = $(BR2_EXTERNAL_ARK_PATH)/package/usbmuxd/bin
USBMUXD_SITE_METHOD = local
USBMUXD_INSTALL_STAGING = YES

define USBMUXD_INSTALL_STAGING_CMDS
$(INSTALL) -D -m 0755 $(@D)/usbmuxd $(TARGET_DIR)/usr/bin/usbmuxd
endef

$(eval $(generic-package))
