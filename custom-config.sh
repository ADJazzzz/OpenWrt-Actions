sed -i "s/LEDE /ADJazz compiled $(TZ=UTC-8 date "+%Y.%m.%d") @ LEDE /g" package/lean/default-settings/files/zzz-default-settings

[ -z $(grep "CONFIG_KERNEL_BUILD_USER=" .config) ] &&
    echo 'CONFIG_KERNEL_BUILD_USER="ADJazz"' >>.config ||
    sed -i 's@\(CONFIG_KERNEL_BUILD_USER=\).*@\1$"ADJazz"@' .config