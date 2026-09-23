#!/bin/bash
export ANDROID_ADB_SERVER_PORT=5039
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
D="-s 127.0.0.1:7555"
PKG="com.baidu.carlifevehicle"
DIR="C:/PJGG/apk/_mumutest"
mkdir -p "$DIR"

"$ADB" kill-server >/dev/null 2>&1
"$ADB" start-server >/dev/null 2>&1
"$ADB" connect 127.0.0.1:7555 >/dev/null 2>&1

"$ADB" $D logcat -c >/dev/null 2>&1
"$ADB" $D shell am force-stop $PKG >/dev/null 2>&1
sleep 2
"$ADB" $D shell am start -n $PKG/.CarlifeActivity >/dev/null 2>&1
echo "启动完成, 等 10s 让直连自动跑"
sleep 10

shot() {
  "$ADB" $D shell screencap -p /data/local/tmp/s.png >/dev/null 2>&1
  "$ADB" $D pull /data/local/tmp/s.png "$DIR/$1" >/dev/null 2>&1
  echo "  截图 $1 -> $(stat -c%s "$DIR/$1" 2>/dev/null) bytes"
}

echo "[1] 直连模式 (默认, CONNECT_TYPE=9)"
shot 1_zhilian.png

echo "[2] 切到 热点模式"
"$ADB" $D shell input tap 720 203
sleep 6
shot 2_redian.png

echo "[3] 切到 有线模式"
"$ADB" $D shell input tap 908 203
sleep 6
shot 3_youxian.png

echo "[4] 切回 直连模式"
"$ADB" $D shell input tap 533 203
sleep 6
shot 4_back_zhilian.png

echo "=== 进程存活检查 ==="
"$ADB" $D shell ps | grep -i carlife || echo "!!! 进程已死 !!!"

echo "=== 崩溃检查 ==="
"$ADB" $D logcat -d -v time > "$DIR/full_log.txt" 2>&1
grep -cE "FATAL|AndroidRuntime.*Exception|ANR " "$DIR/full_log.txt" | sed 's/^/崩溃相关行数: /'

echo "=== 连接类型切换轨迹 ==="
grep -E "setConnectType|Transport connect|Transport terminate|WifiP2pManager|WirlessProtocolTransport" "$DIR/full_log.txt" | sed 's/^.*D\/CarLife_SDK([^)]*): /  /'

echo "=== 蓝牙相关 ==="
grep -E "bluetoothAdapter|BluetoothManagerService.*[Ee]nable|BT|Bluetooth" "$DIR/full_log.txt" | sed 's/^/  /' | head -20
