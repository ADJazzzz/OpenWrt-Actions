sed -i "s/LEDE /ADJazz compiled $(TZ=UTC-8 date "+%Y.%m.%d") @ LEDE /g" package/lean/default-settings/files/zzz-default-settings

if grep -q '^CONFIG_KERNEL_BUILD_USER=' .config; then
    sed -i 's@^CONFIG_KERNEL_BUILD_USER=.*@CONFIG_KERNEL_BUILD_USER="ADJazz"@' .config
else
    echo 'CONFIG_KERNEL_BUILD_USER="ADJazz"' >> .config
fi