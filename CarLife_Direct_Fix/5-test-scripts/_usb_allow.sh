#!/bin/bash
export ANDROID_ADB_SERVER_PORT=5039
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
D="-s 127.0.0.1:7555"
DIR="C:/PJGG/apk/_mumutest"

"$ADB" kill-server >/dev/null 2>&1
"$ADB" start-server >/dev/null 2>&1
"$ADB" connect 127.0.0.1:7555 >/dev/null 2>&1

echo "=== 点确定授予 USB 权限 (943,579) ==="
"$ADB" $D shell input tap 943 579
sleep 6
"$ADB" $D shell screencap -p /data/local/tmp/s.png >/dev/null 2>&1
"$ADB" $D pull /data/local/tmp/s.png "$DIR/6_usb_allowed.png" >/dev/null 2>&1
echo "  截图完成"

echo "=== 授权后 USB/AOA 日志 ==="
"$ADB" $D logcat -d -v time > "$DIR/usb_log.txt" 2>&1
grep -E "UsbAccessory|AOA|permission|openAccessory|Accessory" "$DIR/usb_log.txt" | tail -25

echo "=== 进程存活 ==="
"$ADB" $D shell ps | grep -i carlife || echo "!!! 进程死了 !!!"
