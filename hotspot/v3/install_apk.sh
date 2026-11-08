#!/usr/bin/env bash
# 把 dist 里的 BootTask APK 装到车机（USB 或无线 adb 均可）
#
# 用法:
#   install_apk.sh                 # 自动找唯一在线设备，装 dist 里版本号最高的包
#   install_apk.sh <serial>        # 指定设备序列号 / ip:port
#   install_apk.sh <serial> <apk>  # 指定设备与包
#
# 覆盖安装（-r）不会清数据，/data/data/com.boottask/shared_prefs/rules.xml 里的
# 生产规则会原样保留，装完不需要重新注入。
set -u
export MSYS_NO_PATHCONV=1
export MSYS2_ARG_CONV_EXCL='*'

HERE=$(cd "$(dirname "$0")" && pwd)
# dist 目录随本脚本所在位置有两种布局，按存在性自动选：
#   仓库内   apk_src/hotspot/v3   → apk_src/BootTask/dist        （../../BootTask/dist）
#   原始目录 车机工具/热点自启/v3  → 车机工具/apk_src/BootTask/dist （../../apk_src/BootTask/dist）
DIST="$HERE/../../BootTask/dist"
[ -d "$DIST" ] || DIST="$HERE/../../apk_src/BootTask/dist"

pick_apk() {
    ls -1 "$DIST"/BootTask_v*.apk 2>/dev/null | sort -V | tail -1
}

wait_dev() {
    local s=$1 i=0
    while [ $i -lt 20 ]; do
        adb devices 2>/dev/null | tr -d '\r' | grep -q "^$s[[:space:]]\+device" && return 0
        sleep 1; i=$((i+1))
    done
    return 1
}

SERIAL="${1:-}"
APK="${2:-$(pick_apk)}"

if [ -z "$APK" ] || [ ! -f "$APK" ]; then
    echo "找不到 APK（$DIST/BootTask_v*.apk）。先跑 apk_src/build_apk.sh 出包" >&2
    exit 1
fi
APK=$(cygpath -w "$APK")

adb start-server >/dev/null 2>&1

if [ -z "$SERIAL" ]; then
    # 排除 MuMu 之类的模拟器（都是 127.0.0.1:port），车机走 USB 时序列号是硬件号
    SERIAL=$(adb devices | tr -d '\r' | awk '$2=="device"{print $1}' | grep -v '^127\.0\.0\.1:' | head -1)
    if [ -z "$SERIAL" ]; then
        echo "没有在线设备。三种接法任选其一：" >&2
        echo "  ① USB 数据线接到电脑，等 10 秒" >&2
        echo "  ② 车机开着热点时: adb connect 192.168.43.1:5555" >&2
        echo "  ③ 同一局域网:     adb connect <车机IP>:5555" >&2
        echo "然后重跑本脚本，或直接：adb connect <ip:port> && $0 <ip:port>" >&2
        exit 1
    fi
fi

wait_dev "$SERIAL" || { echo "设备 $SERIAL 不在线（adb devices 里看不到）" >&2; exit 1; }

MODEL=$(adb -s "$SERIAL" shell getprop ro.product.model 2>/dev/null | tr -d '\r')
REL=$(adb -s "$SERIAL" shell getprop ro.build.version.release 2>/dev/null | tr -d '\r')
OLD=$(adb -s "$SERIAL" shell "dumpsys package com.boottask | busybox grep versionName" 2>/dev/null | tr -d '\r' | tr -d ' ')
echo "设备: $SERIAL  model=$MODEL  android=$REL"
echo "当前: ${OLD:-未安装}"
echo "目标: $(basename "$APK")"

echo "--- 安装 ---"
adb -s "$SERIAL" install -r "$APK" 2>&1 | tr -d '\r' | tail -2

NEW=$(adb -s "$SERIAL" shell "dumpsys package com.boottask | busybox grep -E 'versionName|versionCode'" 2>/dev/null | tr -d '\r')
echo "--- 结果 ---"
echo "$NEW"

echo "--- 规则是否还在 ---"
adb -s "$SERIAL" shell "ls -l /data/data/com.boottask/shared_prefs/rules.xml 2>&1; busybox grep -c 'action' /data/data/com.boottask/shared_prefs/rules.xml 2>/dev/null" 2>/dev/null | tr -d '\r'
