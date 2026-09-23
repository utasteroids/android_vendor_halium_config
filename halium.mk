#
# Copyright (C) 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Base modules and settings for the system partition.
PRODUCT_PACKAGES += \
    android.hardware.bluetooth.a2dp@1.0 \
    android.hardware.thermal-V2-ndk \
    android.hidl.allocator@1.0-service \
    android.hidl.memory@1.0-impl \
    android.hidl.memory@1.0-impl.vendor \
    android.system.suspend-service \
    apexd \
    appops \
    atrace \
    bcc \
    blank_screen \
    blkid \
    bootstat \
    boringssl_self_test \
    bpfloader \
    bugreport \
    bugreportz \
    cgroups.json \
    charger \
    cmd \
    com.android.conscrypt \
    com.android.i18n \
    com.android.media \
    com.android.media.swcodec \
    com.android.mediaprovider \
    com.android.os.statsd \
    com.android.tethering \
    crash_dump \
    debuggerd\
    device_config \
    dmctl \
    dnsmasq \
    dumpstate \
    dumpsys \
    e2fsck \
    flags_health_check \
    framework-sysconfig.xml \
    fsck_msdos \
    fsverity-release-cert-der \
    fs_config_files_system \
    fs_config_dirs_system \
    group_system \
    gsid \
    gsi_tool \
    heapprofd \
    heapprofd_client \
    hwservicemanager \
    hwservicemanager_compat_symlink_module \
    gatekeeperd \
    idmap2 \
    idmap2d \
    ime \
    incident \
    incidentd \
    incident_helper \
    incident_helper-cmd \
    init \
    init.environ.rc \
    init.rc \
    init_system \
    installd \
    ip \
    iptables \
    ip-up-vpn \
    keystore \
    ld.config.txt \
    credstore \
    ld.mc \
    libaaudio \
    libamidi \
    libandroid \
    libandroidfw \
    libandroid_runtime \
    libandroid_servers \
    libartpalette-system \
    libaudioeffect_jni \
    libaudioroute \
    libbinder \
    libbinder_ndk \
    libbinder_rpc_unstable \
    libc.bootstrap \
    libcamera2ndk \
    libcgrouprc \
    libcutils \
    libdl.bootstrap \
    libdl_android.bootstrap \
    libdrmframework \
    libdrmframework_jni \
    libEGL \
    libETC1 \
    libfdtrack \
    libFFTEm \
    libfilterfw \
    libgatekeeper \
    libGLESv1_CM \
    libGLESv2 \
    libGLESv3 \
    libgui \
    libhardware \
    libhardware_legacy \
    libinit \
    libinput \
    libinputflinger \
    libiprouteutil \
    libjnigraphics \
    libjpeg \
    liblog \
    libm.bootstrap \
    libmedia \
    libmedia_jni \
    libmediandk \
    libmtp \
    libnetd_client \
    libnetlink \
    libnetutils \
    libneuralnetworks_packageinfo \
    libOpenMAXAL \
    libOpenSLES \
    libpdfium \
    libpower \
    libpowermanager \
    libradio_metadata \
    librtp_jni \
    libsensorservice \
    libsfplugin_ccodec \
    libskia \
    libsonic \
    libsonivox \
    libsoundpool \
    libspeexresampler \
    libsqlite \
    libstagefright \
    libstagefright_foundation \
    libstagefright_omx \
    libstdc++ \
    libsurfaceflinger \
    libsysutils \
    libui \
    libusbhost \
    libutils \
    libvulkan \
    libwilhelm \
    linker \
    lmkd \
    logcat \
    logd \
    lpdump \
    lshal \
    mediacodec.policy \
    mediaextractor \
    mediametrics \
    media_profiles_V1_0.dtd \
    mediaserver \
    mke2fs \
    mtpd \
    ndc \
    passwd_system \
    perfetto \
    ping \
    ping6 \
    platform.xml \
    pm \
    pppd \
    preinstalled-packages-platform.xml \
    privapp-permissions-platform.xml \
    racoon \
    recovery-persist \
    resize2fs \
    rss_hwm_reset \
    run-as \
    sanitizer.libraries.txt \
    schedtest \
    screencap \
    sdcard \
    secdiscard \
    selinux_policy_system \
    sensorservice \
    service \
    servicemanager \
    settings \
    sgdisk \
    shell_and_utilities_system \
    snapshotctl \
    storaged \
    system-build.prop \
    task_profiles.json \
    tc \
    tombstoned \
    traced \
    traced_probes \
    tune2fs \
    tzdatacheck \
    uncrypt \
    usbd \
    vdc \
    vndservicemanager \
    vold \
    watchdogd \
    wificond \
    wm \

# VINTF data for system image
PRODUCT_PACKAGES += \
    system_manifest.xml \
    system_compatibility_matrix.xml \

# VINTF manifest for system_ext. Carries the android.hidl.manager entry for
# hwservicemanager (see SYSTEM_EXT_HWSERVICE_FILES in build/make); without it
# hwservicemanager self-disables at boot and vendor HIDL HALs cannot register.
PRODUCT_PACKAGES += \
    system_ext_manifest.xml \

# Packages from media_system.mk
PRODUCT_PACKAGES += \
    drmserver \
    libfilterpack_imageproc \
    make_f2fs \
    vndk_apex_snapshot_package \

# Wrapped net utils for /vendor access.
PRODUCT_PACKAGES += netutils-wrapper-1.0

# Runtime (Bionic) APEX module.
PRODUCT_PACKAGES += com.android.runtime

# Base modules and settings for recovery from base_vendor.mk
PRODUCT_PACKAGES += \
    adbd.recovery \
    android.hardware.health@2.0-impl-default.recovery \
    cgroups.recovery.json \
    charger.recovery \
    init_second_stage.recovery \
    ld.config.recovery.txt \
    linker.recovery \
    recovery \
    shell_and_utilities_recovery \
    watchdogd.recovery \

# Host tools to install
PRODUCT_HOST_PACKAGES += \
    adb \
    art-tools \
    atest \
    bcc \
    bit \
    e2fsck \
    fastboot \
    flags_health_check \
    icu-data_host_i18n_apex \
    icu_tzdata.dat_host_tzdata_apex \
    idmap2 \
    incident_report \
    ld.mc \
    lpdump \
    mke2fs \
    resize2fs \
    sgdisk \
    sqlite3 \
    tinyplay \
    tune2fs \
    unwind_info \
    unwind_reg_info \
    unwind_symbols \
    tzdata_host \
    tzdata_host_tzdata_apex \
    tzlookup.xml_host_tzdata_apex \
    tz_version_host \
    tz_version_host_tzdata_apex \

# Halium builds without many AOSP Java apps/APEXes. Allow the build system to
# proceed when those modules are absent from the manifest rather than aborting.
ALLOW_MISSING_DEPENDENCIES := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += debug.atrace.tags.enableflags=0
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += persist.traced.enable=1

# Packages included only for eng or userdebug builds, previously debug tagged
PRODUCT_PACKAGES_DEBUG := \
    adb_keys \
    arping \
    gdbserver \
    idlcli \
    init-debug.rc \
    iotop \
    iperf3 \
    iw \
    logpersist.start \
    logtagd.rc \
    procrank \
    remount \
    showmap \
    sqlite3 \
    ss \
    start_with_lockagent \
    strace \
    sanitizer-status \
    tracepath \
    tracepath6 \
    traceroute6 \
    unwind_info \
    unwind_reg_info \
    unwind_symbols \

# Base modules when shipping api level is less than or equal to 34
PRODUCT_PACKAGES_SHIPPING_API_LEVEL_34 += \
    android.hidl.memory@1.0-impl \

# Packages included only for eng/userdebug builds, when building with SANITIZE_TARGET=address
PRODUCT_PACKAGES_DEBUG_ASAN := \
    fuzz \
    honggfuzz

# Halium-specific packages
PRODUCT_PACKAGES += \
    android.system.net.netd-service.stub \
    audio.hidl_compat.default \
    camera_service \
    libbiometry_fp_api \
    libcamera_compat_layer \
    libdroidmedia \
    libhwc2_compat_layer \
    libmedia_compat_layer \
    libselinux_stubs \
    libubuntu_application_api \
    libui_compat_layer \
    micshm.sh \
    minimediaservice \
