@echo off
echo 🎯 正在生成红米 AX6 配置文件...

REM 清空或创建新的配置文件
type nul > .config

REM 目标设备配置
echo CONFIG_TARGET_ipq807x=y >> .config
echo CONFIG_TARGET_ipq807x_generic=y >> .config
echo CONFIG_TARGET_ipq807x_generic_DEVICE_redmi_ax6=y >> .config

REM 基础系统
echo CONFIG_PACKAGE_dnsmasq-full=y >> .config
echo CONFIG_PACKAGE_firewall=y >> .config
echo CONFIG_PACKAGE_opkg=y >> .config
echo CONFIG_PACKAGE_procd=y >> .config

REM 内核模块
echo CONFIG_PACKAGE_kmod-ath10k=y >> .config
echo CONFIG_PACKAGE_ath10k-firmware-qca9887=y >> .config
echo CONFIG_PACKAGE_ath10k-firmware-qca9888=y >> .config
echo CONFIG_PACKAGE_kmod-tun=y >> .config
echo CONFIG_PACKAGE_kmod-macvlan=y >> .config

REM 网络工具
echo CONFIG_PACKAGE_curl=y >> .config
echo CONFIG_PACKAGE_wget=y >> .config
echo CONFIG_PACKAGE_ip-full=y >> .config
echo CONFIG_PACKAGE_iptables-mod-extra=y >> .config

REM 科学上网核心
echo CONFIG_PACKAGE_xray-core=y >> .config
echo CONFIG_PACKAGE_v2ray-core=y >> .config
echo CONFIG_PACKAGE_shadowsocks-libev-ss-redir=y >> .config
echo CONFIG_PACKAGE_shadowsocksr-libev-ssr-redir=y >> .config

REM LuCI 界面和主题
echo CONFIG_PACKAGE_luci=y >> .config
echo CONFIG_PACKAGE_luci-theme-argon=y >> .config
echo CONFIG_PACKAGE_luci-app-firewall=y >> .config
echo CONFIG_PACKAGE_luci-app-upnp=y >> .config
echo CONFIG_PACKAGE_luci-app-opkg=y >> .config

REM 加速插件
echo CONFIG_PACKAGE_luci-app-turboacc=y >> .config

REM 科学上网插件（SSR Plus）
echo CONFIG_PACKAGE_luci-app-ssr-plus=y >> .config
echo CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Xray=y >> .config
echo CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan=y >> .config
echo CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client=y >> .config

REM 其他实用插件
echo CONFIG_PACKAGE_luci-app-vssr=y >> .config
echo CONFIG_PACKAGE_luci-app-ddns=y >> .config
echo CONFIG_PACKAGE_luci-app-wol=y >> .config
echo CONFIG_PACKAGE_luci-app-accesscontrol=y >> .config

REM 系统工具
echo CONFIG_PACKAGE_htop=y >> .config
echo CONFIG_PACKAGE_vim-full=y >> .config
echo CONFIG_PACKAGE_usbutils=y >> .config
echo CONFIG_PACKAGE_bash=y >> .config

echo ✅ 配置文件生成完成！
echo 请继续在 GitHub Desktop 中提交更改
pause