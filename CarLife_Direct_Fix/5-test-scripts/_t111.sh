#!/bin/bash
# v4(MuMu) 复测: 修正 shared_prefs owner(app uid=10046) 后再跑直连, 抓自举器日志
set -u
export ANDROID_ADB_SERVER_PORT=5039
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
SERIAL="127.0.0.1:7555"
PKG=com.baidu.carlifevehicle
AUID=10046
OUT="C:/PJGG/apk/_mumutest"
mkdir -p "$OUT"

ensure() {
  for i in 1 2 3 4 5 6 7 8; do
    "$ADB" connect "$SERIAL" >/dev/null 2>&1
    O=$("$ADB" -s "$SERIAL" shell echo ok 2>&1 | tr -d '\r')
    [ "$O" = "ok" ] && return 0
    "$ADB" kill-server >/dev/null 2>&1; sleep 2
    "$ADB" start-server >/dev/null 2>&1; sleep 2
  done
  return 1
}
run() { ensure || { echo "ADB_UNREACHABLE"; exit 9; }; "$ADB" -s "$SERIAL" "$@"; }

echo "=== 1. 停应用 + 修 prefs owner ==="
run shell "am force-stop $PKG" 2>&1 | tr -d '\r'
cat > "C:/PJGG/apk/_Carlife9.xml" << 'EOF'
<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <boolean name="first_install_key" value="false" />
    <int name="CarlifeConnectType" value="9" />
</map>
EOF
run push "C:/PJGG/apk/_Carlife9.xml" /data/local/tmp/Carlife.xml 2>&1 | tail -1 | tr -d '\r'
run shell "D=/data/data/$PKG; mkdir -p \$D/shared_prefs; cp /data/local/tmp/Carlife.xml \$D/shared_prefs/Carlife.xml; chown $AUID \$D/shared_prefs/Carlife.xml; chown $AUID \$D/shared_prefs; chmod 771 \$D/shared_prefs; chmod 660 \$D/shared_prefs/Carlife.xml; echo '--- dir ---'; ls -la \$D/ | grep shared; ls -la \$D/shared_prefs/; echo '--- content ---'; cat \$D/shared_prefs/Carlife.xml" 2>&1 | tr -d '\r'

echo "=== 2. 清日志并启动 ==="
run shell "input keyevent KEYCODE_WAKEUP" >/dev/null 2>&1
run logcat -c 2>&1 | tr -d '\r'
run shell "am start -n $PKG/.CarlifeActivity" 2>&1 | tr -d '\r'

echo "=== 3. 等待 50 秒 (8s 后首触发, 之后每 8s 重试) ==="
sleep 50

echo "=== 4. 自举器日志 [CarLifeP2PBoot] ==="
run logcat -d -v time 2>&1 | tr -d '\r' | grep -E "CarLifeP2PBoot" | head -40
echo "--- (空则自举器未执行) ---"

echo "=== 5. 直连流程日志 ==="
run logcat -d -v time 2>&1 | tr -d '\r' | grep -E "【直连】|WifiDirectDiscoverableTask|WifiP2p|createGroup|MulticastLock|requestConnectionInfo" | tail -25

echo "=== 6. 进程 ==="
run shell "ps | grep carlife" 2>&1 | tr -d '\r'

echo "=== 7. 截图 ==="
run shell "screencap -p /sdcard/v111.png" >/dev/null 2>&1
run pull /sdcard/v111.png "$OUT/11_v4_fixed.png" 2>&1 | tail -1 | tr -d '\r'

echo "=== 8. 全量日志另存 ==="
run logcat -d -v time > "$OUT/v4_mumu_log2.txt" 2>&1
wc -l "$OUT/v4_mumu_log2.txt"
echo DONE
