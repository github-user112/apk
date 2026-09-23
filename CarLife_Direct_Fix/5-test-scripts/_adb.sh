#!/bin/bash
# 包装器: 每次调用自动重连 (MuMu 的 adb daemon 会被其它 adb 挤掉)
export ANDROID_ADB_SERVER_PORT=5039
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
D="-s 127.0.0.1:7555"

"$ADB" start-server >/dev/null 2>&1
"$ADB" connect 127.0.0.1:7555 >/dev/null 2>&1

CMD="$1"; shift
case "$CMD" in
  shell) "$ADB" $D shell "$@" ;;
  pull)  "$ADB" $D pull "$@" ;;
  push)  "$ADB" $D push "$@" ;;
  *)     "$ADB" $D "$CMD" "$@" ;;
esac
