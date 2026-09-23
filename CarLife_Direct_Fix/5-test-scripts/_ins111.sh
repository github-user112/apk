#!/bin/bash
# v5 覆盖安装 (不卸载, 保住 uid 与 prefs)
set -u
export ANDROID_ADB_SERVER_PORT=5039
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
SERIAL="127.0.0.1:7555"
PKG=com.baidu.carlifevehicle

ensure() {
  for i in 1 2 3 4 5 6 7 8; do
    "$ADB" connect "$SERIAL" >/dev/null 2>&1
    OUT=$("$ADB" -s "$SERIAL" shell echo ok 2>&1 | tr -d '\r')
    [ "$OUT" = "ok" ] && return 0
    "$ADB" kill-server >/dev/null 2>&1; sleep 2
    "$ADB" start-server >/dev/null 2>&1; sleep 2
  done
  return 1
}
run() { ensure || { echo "ADB_UNREACHABLE"; exit 9; }; "$ADB" -s "$SERIAL" "$@"; }

run shell "am force-stop $PKG" >/dev/null 2>&1
echo "=== 推送 $1 ==="
run push "$1" /data/local/tmp/cl111.apk 2>&1 | tail -1 | tr -d '\r'
echo "=== 覆盖安装 ==="
run shell "pm install -r /data/local/tmp/cl111.apk" 2>&1 | tr -d '\r'
echo "=== uid ==="
run shell "dumpsys package $PKG | grep userId" 2>&1 | tr -d '\r'
echo "=== prefs 现状 ==="
run shell "ls -la /data/data/$PKG/shared_prefs/ 2>&1" 2>&1 | tr -d '\r'
