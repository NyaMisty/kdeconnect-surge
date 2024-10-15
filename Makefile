TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = KDE\ Connect

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = kdeconnect-surge

kdeconnect-surge_FILES = Tweak.x
kdeconnect-surge_CFLAGS = -fobjc-arc
kdeconnect-surge_LOGOS_DEFAULT_GENERATOR = internal

include $(THEOS_MAKE_PATH)/tweak.mk
