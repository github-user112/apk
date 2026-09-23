#!/bin/bash
# 真机实验: 权限核查 -> 重置 WiFi -> 重启 App 直连 -> 抓日志
set -u
cd "C:/PJGG/apk"
export ANDROID_ADB_SERVER_PORT=5037
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
D="-s RWPRTCMVSWQWMJBA"
PKG=com.baidu.carlifevehicle
"$ADB" start-server >/dev/null 2>&1; sleep 1

echo "=== 1. 权限核查 ==="
timeout 40 "$ADB" $D shell "dumpsys package $PKG | grep -E 'ACCESS_FINE_LOCATION|ACCESS_COARSE_LOCATION|NEARBY_WIFI' " 2>&1 | tr -d '\r' | head -10

echo "=== 2. 关闭 WiFi ==="
timeout 30 "$ADB" $D shell "svc wifi disable" 2>&1 | tr -d '\r'
sleep 6
timeout 30 "$ADB" $D shell "cmd wifi status 2>&1 | head -2" 2>&1 | tr -d '\r'

echo "=== 3. 开启 WiFi ==="
timeout 30 "$ADB" $D shell "svc wifi enable" 2>&1 | tr -d '\r'
sleep 15
timeout 30 "$ADB" $D shell "cmd wifi status 2>&1 | head -2" 2>&1 | tr -d '\r'

echo "=== 4. 重启 App (直连模式) ==="
timeout 30 "$ADB" $D shell "input keyevent KEYCODE_WAKEUP" >/dev/null 2>&1
timeout 40 "$ADB" $D logcat -c >/dev/null 2>&1
timeout 30 "$ADB" $D shell "am force-stop $PKG" 2>&1 | tr -d '\r'
sleep 2
timeout 30 "$ADB" $D shell "am start -n $PKG/.CarlifeActivity" 2>&1 | tr -d '\r'

echo "=== 5. 等待 50 秒 ==="
sleep 50

echo "=== 6. 自举器日志 ==="
timeout 60 "$ADB" $D logcat -d -v time 2>&1 | tr -d '\r' | grep -E "CarLifeP2PBoot" | tail -30

echo "=== 7. CarLife 直连日志 ==="
timeout 60 "$ADB" $D logcat -d -v time 2>&1 | tr -d '\r' | grep -E "【直连】|DiscoverPeers|onFailure|WifiP2p" | tail -15

echo "=== 8. 截图 ==="
timeout 40 "$ADB" $D shell "screencap -p /sdcard/rl6.png" >/dev/null 2>&1
timeout 40 "$ADB" $D pull /sdcard/rl6.png "C:/PJGG/apk/_real_v6.png" 2>&1 | tail -1 | tr -d '\r'
echo DONE
