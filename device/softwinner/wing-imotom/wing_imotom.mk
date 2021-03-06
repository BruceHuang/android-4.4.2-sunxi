$(call inherit-product, device/softwinner/wing-common/wing-common.mk)

DEVICE_PACKAGE_OVERLAYS := \
    device/softwinner/wing-imotom/overlay \
    $(DEVICE_PACKAGE_OVERLAYS)

# Abandon useless system app. Add which module name in apk/Android.mk wing_imotom_app section.
PRODUCT_PACKAGES += \
    wing_imotom_app

# google pinyin
PRODUCT_PACKAGES += \
    com.google.android.inputmethod.pinyin \
    libgnustl_shared.so \
    libjni_delight.so \
    libjni_googlepinyinime_5.so \
    libjni_googlepinyinime_latinime_5.so \
    libjni_hmm_shared_engine.so

# gps
BOARD_USES_GPS_TYPE := simulator
PRODUCT_PACKAGES += \
    gps.wing \
    Bluetooth \
    VibratorTest \
    CVBS \
    DVD

# for recovery
PRODUCT_COPY_FILES += \
    device/softwinner/wing-imotom/recovery.fstab:recovery.fstab \
    device/softwinner/wing-imotom/modules/modules/disp.ko:obj/disp.ko \
    device/softwinner/wing-imotom/modules/modules/lcd.ko:obj/lcd.ko \
    device/softwinner/wing-imotom/modules/modules/hdmi.ko:obj/hdmi.ko \
    device/softwinner/wing-imotom/modules/modules/hdcp.ko:obj/hdcp.ko \
    device/softwinner/wing-imotom/modules/modules/gt82x.ko:obj/gt82x.ko \
    device/softwinner/wing-imotom/modules/modules/gt811.ko:obj/gt811.ko \
    device/softwinner/wing-imotom/modules/modules/ft5x_ts.ko:obj/ft5x_ts.ko \
    device/softwinner/wing-imotom/modules/modules/zet622x.ko:obj/zet622x.ko \
    device/softwinner/wing-imotom/modules/modules/gslX680.ko:obj/gslX680.ko \
    device/softwinner/wing-imotom/modules/modules/gt9xx_ts.ko:obj/gt9xx_ts.ko \
    device/softwinner/wing-imotom/modules/modules/sw_device.ko:obj/sw_device.ko 

PRODUCT_COPY_FILES += \
    device/softwinner/wing-imotom/kernel:kernel \
    device/softwinner/wing-imotom/fstab.sun7i:root/fstab.sun7i \
    device/softwinner/wing-imotom/init.sun7i.rc:root/init.sun7i.rc \
    device/softwinner/wing-imotom/init.recovery.sun7i.rc:root/init.recovery.sun7i.rc \
    device/softwinner/wing-imotom/ueventd.sun7i.rc:root/ueventd.sun7i.rc \
    device/softwinner/wing-imotom/modules/modules/nand.ko:root/nand.ko

PRODUCT_COPY_FILES += \
    device/softwinner/wing-imotom/configs/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_COPY_FILES += \
    device/softwinner/wing-imotom/configs/camera.cfg:system/etc/camera.cfg \
    device/softwinner/wing-imotom/configs/cfg-Gallery2.xml:system/etc/cfg-Gallery2.xml \
    device/softwinner/wing-imotom/configs/gsensor.cfg:system/usr/gsensor.cfg \
    device/softwinner/wing-imotom/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/softwinner/wing-imotom/configs/sw-keyboard.kl:system/usr/keylayout/sw-keyboard.kl \
    device/softwinner/wing-imotom/configs/tp.idc:system/usr/idc/tp.idc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml   \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

PRODUCT_COPY_FILES += \
    device/softwinner/wing-imotom/initlogo.rle:root/initlogo.rle \
    device/softwinner/wing-imotom/media/boot.wav:system/media/boot.wav \
    device/softwinner/wing-imotom/media/bootanimation.zip:system/media/bootanimation.zip \
    device/softwinner/wing-imotom/media/bootlogo.bmp:system/media/bootlogo.bmp \
    device/softwinner/wing-imotom/media/initlogo.bmp:system/media/initlogo.bmp

# wifi & bt config file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
#   system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# rtl8723au bt + wifi
PRODUCT_COPY_FILES += \
    device/softwinner/wing-common/hardware/realtek/bluetooth/firmware/rtl8723au/rtl8723a_config:system/etc/firmware/rtl8723a_config \
    device/softwinner/wing-common/hardware/realtek/bluetooth/firmware/rtl8723au/rtl8723a_fw:system/etc/firmware/rtl8723a_fw \
#   device/softwinner/wing-common/hardware/realtek/bluetooth/firmware/rtl8723au/rtk_btusb.ko:system/vendor/modules/rtk_btusb.ko

# rtl8723as bt fw and config
#PRODUCT_COPY_FILES += \
#   device/softwinner/wing-common/hardware/realtek/bluetooth/rtl8723as/rlt8723a_fw:system/etc/rlt8723a_fw \
#   device/softwinner/wing-common/hardware/realtek/bluetooth/rtl8723as/rtk8723a_config:system/etc/rtk8723a_config

# bcm40181 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#   hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
#   hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
#   hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
#   hardware/broadcom/wlan/firmware/bcm40181/bcm40181_nvram.txt:system/vendor/modules/bcm40181_nvram.txt

# bcm40183 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#   hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2_p2p.bin:system/vendor/modules/fw_bcm40183b2_p2p.bin \
#   hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2_apsta.bin:system/vendor/modules/fw_bcm40183b2_apsta.bin \
#   hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2.bin:system/vendor/modules/fw_bcm40183b2.bin \
#   hardware/broadcom/wlan/firmware/bcm40183/bcm40183_nvram.txt:system/vendor/modules/bcm40183_nvram.txt

# ap6210 sdio wifi fw and nvram
PRODUCT_COPY_FILES += \
#   hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
#   hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
#   hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
#   hardware/broadcom/wlan/firmware/ap6210/nvram_ap6210.txt:system/vendor/modules/nvram_ap6210.txt \
#   hardware/broadcom/wlan/firmware/ap6210/bcm20710a1.hcd:system/vendor/modules/bcm20710a1.hcd

# 3G Data Card Packages
PRODUCT_PACKAGES += \
    u3gmonitor \
    chat \
    rild \
    pppd

# 3G Data Card Configuration Flie
PRODUCT_COPY_FILES += \
    device/softwinner/wing-common/rild/ip-down:system/etc/ppp/ip-down \
    device/softwinner/wing-common/rild/ip-up:system/etc/ppp/ip-up \
    device/softwinner/wing-common/rild/3g_dongle.cfg:system/etc/3g_dongle.cfg \
    device/softwinner/wing-common/rild/usb_modeswitch:system/bin/usb_modeswitch \
    device/softwinner/wing-common/rild/call-pppd:system/xbin/call-pppd \
    device/softwinner/wing-common/rild/usb_modeswitch.sh:system/xbin/usb_modeswitch.sh \
    device/softwinner/wing-common/rild/apns-conf_sdk.xml:system/etc/apns-conf.xml \
    device/softwinner/wing-common/rild/libsoftwinner-ril-4.4.so:system/lib/libsoftwinner-ril-4.4.so

# 3G Data Card usb modeswitch File
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/softwinner/wing-common/rild/usb_modeswitch.d,system/etc/usb_modeswitch.d)

# 3G 
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d/dev/ttyUSB2 \
    rild.libpath=libsoftwinner-ril-4.4.so
    
# When set ro.sys.adaptive_memory=1, firmware can adaptive different dram size.
# And dalvik vm parameters configuration will become invalid.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.storage_type = emulated \
    ro.sys.adaptive_memory=1

# dalvik vm parameters
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=384m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m \
    ro.zygote.disable_gl_preload=true

# drm
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=false

# usb
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=ncm,adb \
    ro.udisk.lable=WING \
    ro.debuggable=1 

# ui
PRODUCT_PROPERTY_OVERRIDES += \
    ro.property.tabletUI=false \
    ro.sf.lcd_density=120 \
    ro.property.fontScale=1.10 \
    ro.sf.hwrotation=0 \
    debug.hwui.render_dirty_regions=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.firmware=v4.4

# function
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.mode=DISABLED \
    ro.sys.bootfast=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.property.bluetooth.rtk8723a=true

# default language setting
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.country=CN \
    persist.sys.language=zh

$(call inherit-product-if-exists, device/softwinner/wing-imotom/modules/modules.mk)

# Overrides
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_BRAND := Android
PRODUCT_NAME := wing_imotom
PRODUCT_DEVICE := wing-imotom
PRODUCT_MODEL := AOSP on imotom
PRODUCT_MANUFACTURER := GUANGZHOU IMOTOM CO,. Ltd

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Asia/Shanghai

include device/softwinner/wing-common/prebuild/google/products/gms.mk
