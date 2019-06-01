ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ColorShortcuts
ColorShortcuts_LIBRARIES = colorpicker
ColorShortcuts_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += colorshortcutsprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
