LDD_ASSIGNMENTS_VERSION = 3af60251bd1ed17e6e7e062558b8b66b3e447593
LDD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignment7-dhmo9873.git
LDD_ASSIGNMENTS_SITE_METHOD = git
LDD_ASSIGNMENTS_GIT_SUBMODULES = YES

# The magic requirement for Assignment 7
LDD_ASSIGNMENTS_MODULE_SUBDIRS = scull misc-modules

# This block copies the utility scripts into the target's /usr/bin directory
define LDD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/scull_load
	$(INSTALL) -D -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/scull_unload
	$(INSTALL) -D -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/module_load
	$(INSTALL) -D -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/module_unload
endef

$(eval $(kernel-module))
$(eval $(generic-package))
