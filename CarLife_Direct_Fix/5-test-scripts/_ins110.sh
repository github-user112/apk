#!/bin/bash
# 稳健安装: adb daemon 在本机会被其它 adb 挤掉, 每次操作前重连并重试
set -u
export ANDROID_ADB_SERVER_PORT=5039
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
SERIAL="127.0.0.1:7555"

ensure() {
  for i in 1 2 3 4 5 6 7 8; do
    "$ADB" connect "$SERIAL" >/dev/null 2>&1
    OUT=$("$ADB" -s "$SERIAL" shell echo ok 2>&1 | tr -d '\r')
    if [ "$OUT" = "ok" ]; then return 0; fi
    "$ADB" kill-server >/dev/null 2>&1
    sleep 2
    "$ADB" start-server >/dev/null 2>&1
    sleep 2
  done
  return 1
}

run() { ensure || { echo "ADB_UNREACHABLE"; exit 9; }; "$ADB" -s "$SERIAL" "$@"; }

echo "=== 卸载旧包 ==="
run shell "pm uninstall com.baidu.carlifevehicle" 2>&1 | tr -d '\r'

echo "=== 推送 ==="
run push "$1" /data/local/tmp/cl110.apk 2>&1 | tail -2 | tr -d '\r'

echo "=== 安装 ==="
run shell "pm install -r /data/local/tmp/cl110.apk" 2>&1 | tr -d '\r'

echo "=== 结果 ==="
run shell "pm list packages | grep -i carlife" 2>&1 | tr -d '\r'
