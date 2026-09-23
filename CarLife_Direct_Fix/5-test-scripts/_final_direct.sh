#!/bin/bash
export ANDROID_ADB_SERVER_PORT=5039
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
D="-s 127.0.0.1:7555"
DIR="C:/PJGG/apk/_mumutest"
PKG="com.baidu.carlifevehicle"

"$ADB" start-server >/dev/null 2>&1
"$ADB" connect 127.0.0.1:7555 >/dev/null 2>&1

"$ADB" $D logcat -c >/dev/null 2>&1
"$ADB" $D shell am start -n $PKG/.CarlifeActivity >/dev/null 2>&1
echo "已启动直连模式, 等 20s 观察"
sleep 20

"$ADB" $D shell screencap -p /data/local/tmp/s.png >/dev/null 2>&1
"$ADB" $D pull /data/local/tmp/s.png "$DIR/7_direct_mode9.png" >/dev/null 2>&1
echo "  截图完成"

"$ADB" $D logcat -d -v time > "$DIR/direct9_log.txt" 2>&1
echo "=== 模式/配置 ==="
grep -E "ConnMode|CONNECT_TYPE|车机|InfoDump|CarlifeConfUtil|连接状态码" "$DIR/direct9_log.txt" | head -20
echo "=== 直连链路 (去重) ==="
grep -E "InstantProtocolTransport|WifiP2pManager|WifiDirectDiscoverableTask|requestConnectionInfo" "$DIR/direct9_log.txt" | head -20
echo "=== 进程 ==="
"$ADB" $D shell ps | grep -i carlife || echo "!!! 死了 !!!"
