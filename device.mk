PRODUCT_DEVICE := ocn # кодовое имя устройства
PRODUCT_NAME := lineage_ocn # кодовое имя продукта, указывается вro.product.name в файле build.prop скомпилированного образа
PRODUCT_BRAND := HTC # бренд, указывается в ro.product.brand в файлеbuild.prop скомпилированного образа
PRODUCT_MODEL := HTC U11 # модель, указывается в ro.product.model вфайле build.prop скомпилированного образа
PRODUCT_MANUFACTURER := HTC # производитель, указывается вro.product.manufacturer в файле build.prop скомпилированного образа
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini

PRODUCT_PACKAGES += \
    librs_jni \
    liba2dp \
    lights.tegra \
    com.android.future.usb.accessory \
    camera.tegra \
    libpkip \
    libaudioutils \
    tinyplay \
    tinycap \
    tinymix \
    audio.primary.tegra \
    audio.a2dp.default \
    FolioParts \
    wmiconfig
    
PRODUCT_PROPERTY_OVERRIDES := \
ro.product.first_api_level=25 # переопределение уровня API Android,с которым было выпущено устройство

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
ro.secure=0 \ #Отключение режима безопасной загрузки

# Permissions (HTC)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/com.htc.sensor.edgesense.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.edgesense.xml \
    $(LOCAL_PATH)/configs/permissions/com.htc.sensor.hallsensor.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.hallsensor.xml \
    $(LOCAL_PATH)/configs/permissions/com.htc.sensor.sensorhub.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.sensor.sensorhub.xml \
    $(LOCAL_PATH)/configs/permissions/com.htc.software.market.xml:/$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.htc.software.market.xml
    
# Resolution settings
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
