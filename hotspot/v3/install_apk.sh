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
set -uo pipefail
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

# Android 同包名、同签名 install -r 本来就会保留 /data/data；这里再做一层可验证保险：
# 安装前快照全部 SharedPreferences（rules、hotspot_auto、migrate、btgate 等都在其中），
# 安装后逐文件 MD5 对比。若 ROM/安装器异常清数据，自动把快照恢复并回读确认。
PREFS=/data/data/com.boottask/shared_prefs
BACKUP=/data/local/tmp/boottask-shared_prefs-before-install
HAD_PREFS=0
BEFORE=""

sh_() { adb -s "$SERIAL" shell "$1" 2>/dev/null | tr -d '\r'; }
prefs_hash() {
    sh_ "if [ -d $PREFS ]; then cd $PREFS && busybox md5sum *.xml 2>/dev/null; fi"
}

if [ -n "$(sh_ "[ -d $PREFS ] && echo yes")" ]; then
    HAD_PREFS=1
    BEFORE=$(prefs_hash)
    echo "--- 安装前备份全部规则与设置 ---"
    # 车机 busybox 是 1.8.1（2007 年），cp -a（归档模式）不一定支持；
    # 先用 cp -a，MD5 校验不过就降级 cp -r 重拷（xml 内容逐字节一致即可，
    # 属主/权限由恢复阶段的 chown/chmod 兜底），两条路都校验失败才中止。
    sh_ "rm -rf $BACKUP; mkdir -p $BACKUP; busybox cp -a $PREFS/. $BACKUP/; am force-stop com.boottask"
    BACKED=$(sh_ "if [ -d $BACKUP ]; then cd $BACKUP && busybox md5sum *.xml 2>/dev/null; fi")
    if [ "$BACKED" != "$BEFORE" ]; then
        echo "cp -a 校验未过（老 busybox 可能不支持），降级 cp -r 重拷"
        sh_ "rm -rf $BACKUP; mkdir -p $BACKUP; busybox cp -r $PREFS/. $BACKUP/"
        BACKED=$(sh_ "if [ -d $BACKUP ]; then cd $BACKUP && busybox md5sum *.xml 2>/dev/null; fi")
    fi
    [ "$BACKED" = "$BEFORE" ] || {
        echo "安装前备份校验失败，已停止安装；原应用与设置未改动" >&2
        exit 1
    }
    echo "$BEFORE"
fi

echo "--- 覆盖安装（install -r，不清数据） ---"
INSTALL_OUT=$(adb -s "$SERIAL" install -r "$APK" 2>&1 | tr -d '\r')
echo "$INSTALL_OUT" | tail -2
echo "$INSTALL_OUT" | grep -q 'Success' || { echo "安装失败，未继续部署" >&2; exit 1; }

if [ "$HAD_PREFS" -eq 1 ]; then
    AFTER=$(prefs_hash)
    if [ "$AFTER" = "$BEFORE" ]; then
        echo "校验通过：旧规则与全部设置逐项一致，无需恢复"
        sh_ "rm -rf $BACKUP"   # 校验通过后清理临时备份，不在 /data/local/tmp 里攒快照
    else
        echo "检测到安装前后设置不一致，正在从 $BACKUP 恢复旧数据"
        sh_ "am force-stop com.boottask; mkdir -p $PREFS; busybox cp -a $BACKUP/. $PREFS/
             OWN=\$(dumpsys package com.boottask | busybox grep -o 'userId=[0-9]*' | busybox head -1 | busybox cut -d= -f2)
             [ -n \"\$OWN\" ] && chown \$OWN:\$OWN $PREFS $PREFS/*.xml 2>/dev/null
             chmod 771 $PREFS; chmod 660 $PREFS/*.xml 2>/dev/null"
        RESTORED=$(prefs_hash)
        if [ "$RESTORED" != "$BEFORE" ]; then
            echo "cp -a 恢复未过校验（老 busybox 可能不支持），降级 cp -r 重恢复"
            sh_ "am force-stop com.boottask; busybox cp -r $BACKUP/. $PREFS/
                 OWN=\$(dumpsys package com.boottask | busybox grep -o 'userId=[0-9]*' | busybox head -1 | busybox cut -d= -f2)
                 [ -n \"\$OWN\" ] && chown \$OWN:\$OWN $PREFS $PREFS/*.xml 2>/dev/null
                 chmod 771 $PREFS; chmod 660 $PREFS/*.xml 2>/dev/null"
            RESTORED=$(prefs_hash)
        fi
        [ "$RESTORED" = "$BEFORE" ] || { echo "设置恢复校验失败，备份仍在 $BACKUP" >&2; exit 1; }
        echo "恢复完成：旧规则与全部设置已回读确认"
    fi
fi

NEW=$(adb -s "$SERIAL" shell "dumpsys package com.boottask | busybox grep -E 'versionName|versionCode'" 2>/dev/null | tr -d '\r')
echo "--- 结果 ---"
echo "$NEW"

echo "--- 规则是否还在 ---"
adb -s "$SERIAL" shell "ls -l /data/data/com.boottask/shared_prefs/rules.xml 2>&1; busybox grep -c 'action' /data/data/com.boottask/shared_prefs/rules.xml 2>/dev/null" 2>/dev/null | tr -d '\r'
