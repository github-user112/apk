#!/bin/bash
# 真机实验2: 重启设备 -> 干净状态下测 createGroup (排除状态机卡死)
set -u
cd "C:/PJGG/apk"
export ANDROID_ADB_SERVER_PORT=5037
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
D="-s RWPRTCMVSWQWMJBA"
PKG=com.baidu.carlifevehicle

"$ADB" start-server >/dev/null 2>&1
echo "=== 1. 重启设备 ==="
timeout 30 "$ADB" $D reboot 2>&1 | tr -d '\r'
sleep 20
echo "=== 2. 等待设备回来 ==="
timeout 180 "$ADB" wait-for-device 2>&1 | tr -d '\r'
for i in $(seq 1 36); do
  B=$(timeout 20 "$ADB" $D shell getprop sys.boot_completed 2>/dev/null | tr -d '\r')
  echo "  [$i] boot_completed=$B"
  [ "$B" = "1" ] && break
  sleep 5
done
sleep 12

echo "=== 3. 唤醒 + 解锁 ==="
timeout 20 "$ADB" $D shell "input keyevent KEYCODE_WAKEUP" >/dev/null 2>&1
timeout 20 "$ADB" $D shell "input swipe 540 2000 540 700 200" >/dev/null 2>&1
sleep 3

echo "=== 4. 清日志并启动 ==="
timeout 40 "$ADB" $D logcat -c >/dev/null 2>&1
timeout 30 "$ADB" $D shell "am start -n $PKG/.CarlifeActivity" 2>&1 | tr -d '\r'

echo "=== 5. 等待 55 秒 ==="
sleep 55

echo "=== 6. 自举器日志 ==="
timeout 60 "$ADB" $D logcat -d -v time 2>&1 | tr -d '\r' | grep -E "CarLifeP2PBoot" | tail -30

echo "=== 7. 进程/焦点 ==="
timeout 20 "$ADB" $D shell "ps -A | grep -i carlife" 2>&1 | tr -d '\r'

echo "=== 8. 截图 ==="
timeout 40 "$ADB" $D shell "screencap -p /sdcard/rr.png" >/dev/null 2>&1
timeout 40 "$ADB" $D pull /sdcard/rr.png "C:/PJGG/apk/_real_reboot.png" 2>&1 | tail -1 | tr -d '\r'
echo DONE
