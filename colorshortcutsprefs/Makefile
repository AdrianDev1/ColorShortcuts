ARCHS = arm64

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ColorShortcutsPrefs
ColorShortcutsPrefs_FILES = CSPRootListController.m
ColorShortcutsPrefs_INSTALL_PATH = /Library/PreferenceBundles
ColorShortcutsPrefs_FRAMEWORKS = UIKit
ColorShortcutsPrefs_PRIVATE_FRAMEWORKS = Preferences
ColorShortcutsPrefs_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/ColorShortcutsPrefs.plist$(ECHO_END)
