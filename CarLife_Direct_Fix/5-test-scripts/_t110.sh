#!/bin/bash
# v4(MuMu) 验证: 直连模式启动 + 抓 P2P 自举器日志 + 截图
set -u
export ANDROID_ADB_SERVER_PORT=5039
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
SERIAL="127.0.0.1:7555"
PKG=com.baidu.carlifevehicle
OUT="C:/PJGG/apk/_mumutest"
mkdir -p "$OUT"

ensure() {
  for i in 1 2 3 4 5 6 7 8; do
    "$ADB" connect "$SERIAL" >/dev/null 2>&1
    OUT2=$("$ADB" -s "$SERIAL" shell echo ok 2>&1 | tr -d '\r')
    [ "$OUT2" = "ok" ] && return 0
    "$ADB" kill-server >/dev/null 2>&1; sleep 2
    "$ADB" start-server >/dev/null 2>&1; sleep 2
  done
  return 1
}
run() { ensure || { echo "ADB_UNREACHABLE"; exit 9; }; "$ADB" -s "$SERIAL" "$@"; }

echo "=== 1. 停应用 + 锁直连模式(9) ==="
run shell "am force-stop $PKG" 2>&1 | tr -d '\r'
cat > "C:/PJGG/apk/_Carlife9.xml" << 'EOF'
<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <boolean name="first_install_key" value="false" />
    <int name="CarlifeConnectType" value="9" />
</map>
EOF
run push "C:/PJGG/apk/_Carlife9.xml" /data/local/tmp/Carlife.xml 2>&1 | tail -1 | tr -d '\r'
run shell "PKG=$PKG; D=/data/data/\$PKG; mkdir -p \$D/shared_prefs; cp /data/local/tmp/Carlife.xml \$D/shared_prefs/Carlife.xml; chown -R u0_a45:u0_a45 \$D/shared_prefs 2>/dev/null; chmod 771 \$D/shared_prefs; chmod 660 \$D/shared_prefs/Carlife.xml; ls -l \$D/shared_prefs/; cat \$D/shared_prefs/Carlife.xml" 2>&1 | tr -d '\r'

echo "=== 2. 清日志并启动 ==="
run shell "input keyevent KEYCODE_WAKEUP" >/dev/null 2>&1
run logcat -c 2>&1 | tr -d '\r'
run shell "am start -n $PKG/.CarlifeActivity" 2>&1 | tr -d '\r'

echo "=== 3. 等待 40 秒 (自举器 15 秒后开始, 之后每 10 秒重试) ==="
sleep 40

echo "=== 4. 自举器日志 ==="
run logcat -d -v time 2>&1 | tr -d '\r' | grep -E "CarLifeP2PBoot" | head -30

echo "=== 5. CarLife P2P 相关日志 ==="
run logcat -d -v time 2>&1 | tr -d '\r' | grep -E "CarLife_SDK|WifiP2pService|Permission violation" | grep -viE "monitor listener count" | tail -30

echo "=== 6. 进程 ==="
run shell "ps | grep carlife" 2>&1 | tr -d '\r'

echo "=== 7. 截图 ==="
run shell "screencap -p /sdcard/v110.png" >/dev/null 2>&1
run pull /sdcard/v110.png "$OUT/10_v4_direct.png" 2>&1 | tail -1 | tr -d '\r'

echo "=== 8. 全量日志另存 ==="
run logcat -d -v time > "$OUT/v4_mumu_log.txt" 2>&1
wc -l "$OUT/v4_mumu_log.txt"
echo DONE
