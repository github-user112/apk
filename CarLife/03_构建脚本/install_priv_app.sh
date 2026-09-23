#!/bin/bash
# ============================================================================
# 把 CarLife 装成系统特权应用 (/system/priv-app) —— USB 100% 免授权
#
# 作用: Manifest 里已经声明了 android.permission.MANAGE_USB, 但它的保护级别是
#       signature|privileged, 普通安装的第三方 APK 拿不到。装到 /system/priv-app
#       之后该权限生效, UsbService 对 openDevice/claimInterface 完全放行,
#       不需要任何用户交互 —— 连 1.12 里的静默试探都不用走。
#
# 前提: 车机已 root 且 adb 可 root(大多数 Android 4.4.2 车机满足)
#
# 用法:  bash "C:/PJGG/apk/CarLife/03_构建脚本/install_priv_app.sh" [apk路径]
# 回滚:  bash "C:/PJGG/apk/CarLife/03_构建脚本/install_priv_app.sh" --uninstall
# ============================================================================
set -u
export PATH="/usr/bin:/bin:/usr/local/bin:$PATH"

APK="${1:-C:/PJGG/apk/CarLife/05_产物/CarLife4.0车机端个人修改版1.12_USB免授权.apk}"
PKG="com.baidu.carlifevehicle"
PRIV="/system/priv-app/CarLife"
PORT="${ADB_PORT:-5039}"
ADB="adb -P $PORT"

echo "=== 0. 检查设备 ==="
DEV=$($ADB shell getprop ro.build.version.release 2>/dev/null)
if [ -z "$DEV" ]; then echo "!!! 没有可用设备 (adb -P $PORT)"; exit 1; fi
echo "  Android 版本: $DEV"
$ADB shell getprop ro.product.manufacturer 2>/dev/null | sed 's/^/  厂商: /'

if [ "${1:-}" = "--uninstall" ]; then
  echo "=== 回滚: 移除 priv-app 副本 ==="
  $ADB root >/dev/null 2>&1; sleep 2
  $ADB shell "mount -o rw,remount /system" 2>/dev/null
  $ADB remount >/dev/null 2>&1
  $ADB shell "rm -rf $PRIV"
  echo "  已删除 $PRIV, 请重启车机"
  echo "  注意: /data 下的普通安装副本仍然存在, 重启后以第三方身份运行"
  exit 0
fi

if [ ! -f "$APK" ]; then echo "!!! APK 不存在: $APK"; exit 1; fi

echo "=== 1. adb root ==="
$ADB root 2>&1 | head -2
sleep 2
ROOTED=$($ADB shell "id -u" 2>/dev/null | tr -d '\r')
if [ "$ROOTED" != "0" ]; then
  echo "!!! adb 不是 root (uid=$ROOTED)。这台车机没有 root,"
  echo "    无法走 priv-app 路线 —— 直接用普通安装即可, 1.12 的静默"
  echo "    openDevice(patchP) 在 Android 4.4 上通常已经够用。"
  exit 1
fi
echo "  root OK (uid=0)"

echo "=== 2. 挂载 /system 可写 ==="
$ADB shell "mount -o rw,remount /system" 2>&1 | head -2
$ADB remount 2>&1 | head -2
RW=$($ADB shell "touch /system/.wtest 2>/dev/null && echo yes && rm /system/.wtest" 2>/dev/null | tr -d '\r')
if [ "$RW" != "yes" ]; then
  echo "!!! /system 不可写。试试:"
  echo "      adb -P $PORT shell 'mount -o rw,remount,rw /system'"
  echo "    或查分区: adb -P $PORT shell cat /proc/mounts | grep system"
  exit 1
fi
echo "  /system 可写"

echo "=== 3. 先普通安装一次 (生成 /data/data 与 odex) ==="
$ADB install -r -d "$APK" 2>&1 | tail -1

echo "=== 4. 推到 $PRIV ==="
$ADB shell "rm -rf $PRIV; mkdir -p $PRIV"
$ADB push "$APK" "$PRIV/CarLife.apk" 2>&1 | tail -1
$ADB shell "chmod 644 $PRIV/CarLife.apk"
$ADB shell "ls -la $PRIV" | tail -2

echo "=== 5. 校验 MANAGE_USB 是否生效 (重启后) ==="
echo "  重启后执行下面这条, 看到 'MANAGE_USB granted' 说明成功:"
echo "    adb -P $PORT logcat -d | grep CarLifeUsb"
echo ""
echo "=== 6. 重启车机 ==="
read -r -p "  现在重启车机? [y/N] " ANS
if [ "${ANS:-N}" = "y" ] || [ "${ANS:-N}" = "Y" ]; then
  $ADB reboot
  echo "  已重启。开机后请看日志确认。"
else
  echo "  请手动重启车机后生效。"
fi

echo ""
echo "=== 回滚方法 ==="
echo "  bash $0 --uninstall"
