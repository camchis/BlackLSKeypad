ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = BlackLSKeypad
BlackLSKeypad_FILES = Tweak.xm
BlackLSKeypad_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Springboard"
