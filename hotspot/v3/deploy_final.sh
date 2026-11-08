#!/usr/bin/env bash
# =============================================================================
# deploy_final.sh —— 车机热点自启的**唯一**部署入口（2026-11-08 最终方案）
#
#   路径 A：BootTask 1.6.70 (BOOT_COMPLETED, delay=90)
#           → adbcmd → 本机 adbd 127.0.0.1:5555 (root)
#           → busybox nohup boot_hotspot.sh
#
# 用法:
#   bash deploy_final.sh <动作> [serial]
#     check     只读体检（不改动任何东西）
#     install   覆盖安装 dist 里版本号最高的 APK
#     assets    推 boot_hotspot.sh + dnsmasq.conf 到 /data/local/hotspot
#     rule      注入生产规则（delay=90 的 adbcmd）
#     verify    查热点状态 + boot.log + App 日志
#     trigger   手动触发一次 boot 事件（免重启验证，需等 delay+20 秒）
#     all       check → install → assets → rule → verify
#
#   serial 不传则用环境变量 SERIAL（默认 USB 序列号）；无线接入时传 <ip>:5555。
#
# 【不做的事，以及为什么】
#   - 不推 adb_keys、不设 persist/service.adb.tcp.port、不 restart adbd：
#     本机 adbd 默认就在 0.0.0.0:5555 监听，ro.adb.secure 为空无需 RSA；
#     旧 app_route.sh 的 tcp 子命令 setprop 后重启 adbd，反而会让 USB 断连。
#   - 不碰 /system：无变砖风险，全部文件在 /data。
# =============================================================================
set -uo pipefail
export MSYS_NO_PATHCONV=1
export MSYS2_ARG_CONV_EXCL='*'

HERE=$(cd "$(dirname "$0")" && pwd)
HOTDIR="$HERE/.."
PKG=com.boottask
SERIAL="${2:-${SERIAL:-000018030809054701DC}}"

# 生产规则：命令里的 $(...) 必须在**设备端**展开，所以整条用单引号保存，
# 传参时只用双引号引用变量（bash 不会对变量内容做二次命令替换）。
# 如果手敲 inject_rule.sh 时误用双引号，$(...) 会在 PC 上展开成空，自检失效。
ACTION=adbcmd
DELAY=90
CMD='busybox nohup sh /data/local/hotspot/boot_hotspot.sh >/dev/null 2>&1 & sleep 6; echo LAUNCHED_after=$(busybox wc -c < /data/local/hotspot/boot.log)'

say()  { printf '%s\n' "$*"; }
step() { printf '\n=== %s ===\n' "$*"; }
ok()   { printf '[ OK ] %s\n' "$*"; }
bad()  { printf '[FAIL] %s\n' "$*"; }
info() { printf '       %s\n' "$*"; }

# 末尾的 || true 不能省：本脚本开了 pipefail，而「查不到 hostapd 进程」这类
# 正常空结果会让管道末端的 grep 返回 1，进而让 cmd_check 整体返回 1，
# all 里的 `cmd_check || exit 1` 就会在第一步静默退出（实测复现过）。
sh_() { adb -s "$SERIAL" shell "$1" 2>&1 | tr -d '\r' | grep -v '^\* daemon' || true; }

online() {
    adb start-server >/dev/null 2>&1
    adb devices 2>/dev/null | tr -d '\r' \
        | awk -v s="$SERIAL" '$1==s && $2=="device" {f=1} END {exit !f}'
}
need() {
    online || { bad "设备 $SERIAL 不在线"; adb devices 2>&1 | sed 's/^/       /'; return 1; }
}

# ------------------------------------------------------------------ check
cmd_check() {
    need || return 1
    step "1. 设备"
    info "model=$(sh_ 'getprop ro.product.model')  android=$(sh_ 'getprop ro.build.version.release')"
    info "uptime=$(sh_ 'cat /proc/uptime')"

    step "2. adbd 的 5555 监听（路径 A 的前提）"
    sh_ "cat /proc/net/tcp | busybox grep -i ':15B3' | busybox head -4"
    info "service.adb.tcp.port=[$(sh_ 'getprop service.adb.tcp.port')]  ro.adb.secure=[$(sh_ 'getprop ro.adb.secure')]"
    info "（本机 adbd 默认即监听 0.0.0.0:5555，不需要开 TCP、不需要 adb_keys）"

    step "3. App 版本（应为 1.6.70 / versionCode 86）"
    sh_ "dumpsys package $PKG | busybox grep -E 'versionCode|versionName' | busybox head -2"

    step "4. /data/local/hotspot 资产"
    sh_ "ls -l /data/local/hotspot/boot_hotspot.sh /data/local/hotspot/dnsmasq.conf 2>&1"

    step "5. 规则文件与属主"
    sh_ "ls -l /data/data/$PKG/shared_prefs/rules.xml 2>&1"
    sh_ "busybox cat /data/data/$PKG/shared_prefs/rules.xml 2>&1"
    info "App uid = $(sh_ "dumpsys package $PKG | busybox grep -o 'userId=[0-9]*' | busybox head -1")"

    step "6. 热点现状"
    info "op_mode = $(sh_ 'cat /sys/module/bcmdhd/parameters/op_mode 2>/dev/null')"
    sh_ "ps | busybox grep -E '[h]ostapd|[d]nsmasq'" | while read -r l; do info "$l"; done
    sh_ "ifconfig wlan0 2>/dev/null | busybox head -2" | while read -r l; do info "$l"; done
}

# ------------------------------------------------------------------ install
cmd_install() {
    need || return 1
    step "安装最新 APK（覆盖安装，保留 rules.xml）"
    bash "$HERE/install_apk.sh" "$SERIAL" || return 1
}

# ------------------------------------------------------------------ assets
cmd_assets() {
    need || return 1
    local a="$HOTDIR/boot_hotspot.sh" b="$HOTDIR/dnsmasq.conf"
    [ -f "$a" ] && [ -f "$b" ] || { bad "本地缺文件: $a 或 $b"; return 1; }

    # 2026-11-08 实测：仓库里的 boot_hotspot.sh 曾整份是 CRLF（400 行），
    # 推到车机后 Android 的 mksh / busybox ash 报
    #   line 76: syntax error: unexpected word (expecting "do")
    # 脚本根本不会执行。PC 上的 bash 对 \r 宽容，所以 `sh -n` 本地看不出来。
    # 这里统一生成 LF 临时副本再推，避免以后被编辑器改回 CRLF 又踩坑。
    mkdir -p "$HERE/.tmp"
    local aa="$HERE/.tmp/boot_hotspot.lf.sh"
    # python 是 Windows 原生，不认 /c/... 这种 POSIX 路径，必须转成 Windows 形式
    python - "$(cygpath -w "$a")" "$(cygpath -w "$aa")" <<'PY' || return 1
import pathlib, sys
b = pathlib.Path(sys.argv[1]).read_bytes()
pathlib.Path(sys.argv[2]).write_bytes(b.replace(b"\r\n", b"\n"))
print("       CRLF 行已转 LF: %d" % b.count(b"\r\n"))
PY
    local lmd5; lmd5=$(md5sum "$aa" | cut -d' ' -f1)

    step "推送热点脚本与 dnsmasq 配置"
    sh_ "mkdir -p /data/local/hotspot" >/dev/null
    adb -s "$SERIAL" push "$(cygpath -w "$aa")" /data/local/tmp/boot_hotspot.sh 2>&1 | tail -1
    adb -s "$SERIAL" push "$(cygpath -w "$b")"  /data/local/tmp/dnsmasq.conf    2>&1 | tail -1

    local out
    out=$(sh_ "busybox cp -f /data/local/tmp/boot_hotspot.sh /data/local/hotspot/boot_hotspot.sh
         busybox cp -f /data/local/tmp/dnsmasq.conf    /data/local/hotspot/dnsmasq.conf
         chmod 755 /data/local/hotspot/boot_hotspot.sh
         chmod 644 /data/local/hotspot/dnsmasq.conf
         busybox sh -n /data/local/hotspot/boot_hotspot.sh && echo syntax=OK || echo syntax=FAIL
         echo dnsmasq_conf_lines=\$(busybox wc -l < /data/local/hotspot/dnsmasq.conf)")
    say "$out"
    # 语法检查必须 fail-loud：旧 app_route.sh 只打印 syntax=FAIL 却照样返回成功
    echo "$out" | grep -q 'syntax=OK' || { bad "设备端脚本语法检查未通过（检查换行/CRLF）"; return 1; }

    local dmd5
    dmd5=$(sh_ "busybox md5sum /data/local/hotspot/boot_hotspot.sh | busybox awk '{print \$1}'")
    if [ "$lmd5" = "$dmd5" ]; then ok "boot_hotspot.sh md5 一致 ($lmd5)"; else bad "md5 不一致 local=$lmd5 device=$dmd5"; return 1; fi
    ok "dnsmasq.conf 已部署"
}

# ------------------------------------------------------------------ rule
cmd_rule() {
    need || return 1
    step "注入生产规则（event=boot / action=$ACTION / delay=$DELAY）"
    info "$CMD"
    # inject_rule.sh 已修好属主解析（dumpsys userId），不要自己拼 rules.xml
    ADB=adb bash "$HERE/inject_rule.sh" "$SERIAL" "$ACTION" "$DELAY" "$CMD" || return 1
    info "注意：脚本末尾会自动触发一次 boot 事件做解析校验；本规则 delay=90，"
    info "      所以那次校验只会看到 rules=1，真正执行在 90 秒后，是正常现象。"
}

# ------------------------------------------------------------------ verify
cmd_verify() {
    need || return 1
    step "热点状态"
    info "op_mode = $(sh_ 'cat /sys/module/bcmdhd/parameters/op_mode 2>/dev/null')"
    sh_ "ps | busybox grep -E '[h]ostapd|[d]nsmasq'" | while read -r l; do info "$l"; done
    sh_ "ifconfig wlan0 2>/dev/null | busybox head -3" | while read -r l; do info "$l"; done

    step "boot.log 末尾"
    sh_ "busybox tail -12 /data/local/hotspot/boot.log 2>&1" | while read -r l; do info "$l"; done

    step "App 通道日志（boottask.log，含多行输出）"
    sh_ "busybox tail -12 /data/data/$PKG/files/log/boottask.log 2>&1" | while read -r l; do info "$l"; done

    step "logcat 关键行"
    sh_ "logcat -d -v time 2>/dev/null | busybox grep -E 'ExecService|adbcmd|adb: ' | busybox tail -12" \
        | while read -r l; do info "$l"; done
}

# ------------------------------------------------------------------ trigger
cmd_trigger() {
    need || return 1
    local wait=$((DELAY + 20))
    step "手动触发 boot 事件（规则 delay=$DELAY，需等 ${wait}s）"
    sh_ "am force-stop $PKG; logcat -c" >/dev/null
    sh_ "am startservice -n $PKG/.ExecService --es event boot" | while read -r l; do info "$l"; done
    info "等待 ${wait}s ..."
    sleep "$wait"
    cmd_verify
}

# ------------------------------------------------------------------ main
case "${1:-check}" in
    check)   cmd_check ;;
    install) cmd_install ;;
    assets)  cmd_assets ;;
    rule)    cmd_rule ;;
    verify)  cmd_verify ;;
    trigger) cmd_trigger ;;
    all)
        cmd_check   || exit 1
        cmd_install || exit 1
        cmd_assets  || exit 1
        cmd_rule    || exit 1
        cmd_verify
        say ""
        ok "部署完成。冷启动验证见 QUICKSTART.md 第 4 步"
        ;;
    *)  sed -n '2,32p' "$0"; exit 1 ;;
esac
