#!/usr/bin/env bash
# =============================================================================
# autostart_ctl.sh —— 开机热点自启的开关 / 立即停用
#
# 不改 APK、不改 rules.xml，只靠 /data/local/hotspot 下的两个开关文件控制：
#   DISABLED   存在 → boot_hotspot.sh 进场第一件事就退出（BootTask 照常触发，
#              但除了往 boot.log 写一行 "DISABLED flag present, skip" 什么也不做）
#   mode       内容 ap（默认）/ sta；写成 sta 时脚本会走 restore_sta 分支
#
# 用法:
#   bash autostart_ctl.sh status [serial]   只读：看全部相关状态
#   bash autostart_ctl.sh off    [serial]   ★ 下次开机不再开热点（不影响当前）
#   bash autostart_ctl.sh on     [serial]   恢复开机自启
#   bash autostart_ctl.sh stop   [serial]   立即停掉当前热点，WiFi 交回 framework
#   bash autostart_ctl.sh all-off [serial]  off + stop（彻底不要了，且立刻生效）
#
# 【off 和 stop 的区别，别混】
#   off  只影响**下次开机**。当前正在跑的热点不受干扰，不会瞬断。
#        —— 车上有乘客连着热点时，用这个，等下次上电自然就不再开了。
#   stop 立刻拆 hostapd/dnsmasq、卸载 bcmdhd，把 WiFi 交回 Android framework。
#        执行后几秒内热点会消失，随后系统按正常 STA 模式重新加载 WiFi。
#   两个都执行 = 现在断 + 以后也不再起。
#
# 【为什么不建议直接卸 APK / 清 rules.xml】
#   BootTask 1.6.70 里可能还有别的规则（比如 1.6.64 的息屏关 WiFi 闸门）。
#   inject_rule.sh clear 会把整个 rules 列表清空，把无关规则一起干掉；
#   adb uninstall 更是连 App 一起没。软开关不碰这些，恢复只需一条 rm。
#
# 【关掉之后系统 WiFi 是什么状态】
#   boot_hotspot.sh 跑过之后 global wifi_on 被写成了 0，framework 不再管 WiFi。
#   所以 off / stop 都会把它改回 1，否则开机后 WiFi 是关着的，得手动点一下。
# =============================================================================
set -uo pipefail
export MSYS_NO_PATHCONV=1
export MSYS2_ARG_CONV_EXCL='*'

H=/data/local/hotspot
PKG=com.boottask
SERIAL="${2:-${SERIAL:-000018030809054701DC}}"

say()  { printf '%s\n' "$*"; }
step() { printf '\n=== %s ===\n' "$*"; }
ok()   { printf '[ OK ] %s\n' "$*"; }
bad()  { printf '[FAIL] %s\n' "$*"; }
info() { printf '       %s\n' "$*"; }

# 末尾 || true 不能省：本脚本开了 pipefail，"查不到 hostapd" 这类正常空结果
# 会让管道末端 grep 返回 1，进而让整个动作误判失败。
sh_() { adb -s "$SERIAL" shell "$1" 2>&1 | tr -d '\r' | grep -v '^\* daemon' || true; }

online() {
    adb start-server >/dev/null 2>&1
    adb devices 2>/dev/null | tr -d '\r' \
        | awk -v s="$SERIAL" '$1==s && $2=="device" {f=1} END {exit !f}'
}
need() {
    online || { bad "设备 $SERIAL 不在线"; adb devices 2>&1 | sed 's/^/       /'; return 1; }
}

# ------------------------------------------------------------------ status
cmd_status() {
    need || return 1
    step "1. 自启开关"
    local d
    d=$(sh_ "ls -l $H/DISABLED 2>/dev/null")
    if [ -n "$d" ]; then
        bad "DISABLED 存在 → 下次开机【不会】开热点"
        info "$d"
        info "关闭原因: $(sh_ "busybox cat $H/disabled_at 2>/dev/null")"
    else
        ok "DISABLED 不存在 → 下次开机会自动开热点"
    fi

    step "2. mode / 本次开机是否真的跑过"
    info "mode = [$(sh_ "busybox cat $H/mode 2>/dev/null")]  （ap=开热点，sta=交回系统）"
    info "lastup = [$(sh_ "busybox cat $H/lastup 2>/dev/null")]"
    sh_ "busybox tail -4 $H/boot.log 2>/dev/null" | while read -r l; do info "$l"; done

    step "3. 当前热点实况"
    info "op_mode = [$(sh_ "busybox cat /sys/module/bcmdhd/parameters/op_mode 2>/dev/null")]  （2=AP 模式，空=驱动没加载）"
    sh_ "ps | busybox grep -E '[h]ostapd|[d]nsmasq'" | while read -r l; do info "$l"; done
    sh_ "ifconfig wlan0 2>/dev/null | busybox head -3" | while read -r l; do info "$l"; done

    step "4. framework 的 WiFi 开关"
    info "global wifi_on = [$(sh_ "settings get global wifi_on 2>/dev/null")]  （1=开机自动开 WiFi）"

    step "5. BootTask 规则"
    # 注意：车机 busybox 1.8.1 的 grep 不支持 -m，只能 grep + head
    info "version = $(sh_ "dumpsys package $PKG | busybox grep versionName | busybox head -1" | sed 's/^ *//')"
    sh_ "busybox cat /data/data/$PKG/shared_prefs/rules.xml 2>/dev/null" | while read -r l; do info "$l"; done
}

# ------------------------------------------------------------------ off
cmd_off() {
    need || return 1
    step "关闭开机自启（只影响下次开机，当前热点不断）"
    sh_ "mkdir -p $H
         touch $H/DISABLED
         date > $H/disabled_at
         echo sta > $H/mode
         settings put global wifi_on 1
         echo DISABLED=\$(ls $H/DISABLED 2>/dev/null)
         echo mode=\$(busybox cat $H/mode)
         echo wifi_on=\$(settings get global wifi_on)" | while read -r l; do info "$l"; done

    # 回读校验：touch 没写进去（/data 满、属主异常）时必须报出来
    [ -n "$(sh_ "ls $H/DISABLED 2>/dev/null")" ] || { bad "$H/DISABLED 没建成功"; return 1; }
    ok "下次开机会在 delay=90s 时跑脚本，但脚本进场即退出（boot.log 记一行 skip）"
    info "当前热点如果正在跑，不受影响；想立刻停用请再执行: bash $0 stop"
}

# ------------------------------------------------------------------ on
cmd_on() {
    need || return 1
    step "恢复开机自启"
    sh_ "rm -f $H/DISABLED $H/disabled_at
         echo ap > $H/mode
         echo DISABLED=\$(ls $H/DISABLED 2>/dev/null)
         echo mode=\$(busybox cat $H/mode)" | while read -r l; do info "$l"; done

    [ -z "$(sh_ "ls $H/DISABLED 2>/dev/null")" ] || { bad "DISABLED 删不掉"; return 1; }
    ok "下次开机会正常自动开热点"
    info "想不重启就验证: bash ../deploy_final.sh trigger （要等 delay+20 秒）"
}

# ------------------------------------------------------------------ stop
cmd_stop() {
    need || return 1
    step "立即停用热点，WiFi 交回 Android framework"
    info "顺序: ndc stopap → 杀 hostapd/dnsmasq → rmmod bcmdhd → wifi_on=1 + svc wifi enable"

    sh_ "ndc softap stopap 2>&1 | busybox head -2
         killall hostapd 2>/dev/null; busybox killall hostapd 2>/dev/null
         killall dnsmasq 2>/dev/null; busybox killall dnsmasq 2>/dev/null
         sleep 2
         n=0
         while [ \$n -lt 6 ]; do
             busybox grep -q '^bcmdhd ' /proc/modules 2>/dev/null || break
             killall wpa_supplicant 2>/dev/null; busybox killall wpa_supplicant 2>/dev/null
             killall p2p_supplicant 2>/dev/null; busybox killall p2p_supplicant 2>/dev/null
             rmmod bcmdhd 2>/dev/null
             sleep 2
             n=\$((n+1))
         done
         if busybox grep -q '^bcmdhd ' /proc/modules 2>/dev/null; then
             echo rmmod=FAIL still_loaded
         else
             echo rmmod=OK
         fi
         settings put global wifi_on 1
         svc wifi enable 2>&1
         rm -rf $H/lock.d
         echo wifi_on=\$(settings get global wifi_on)" | while read -r l; do info "$l"; done

    step "校验（framework 重新加载 STA 需要几秒）"
    local i=0
    while [ $i -lt 10 ]; do
        if [ -n "$(sh_ "ifconfig wlan0 2>/dev/null | busybox grep 'inet addr'")" ]; then break; fi
        sleep 2; i=$((i+2))
    done
    info "op_mode = [$(sh_ "busybox cat /sys/module/bcmdhd/parameters/op_mode 2>/dev/null")]"
    sh_ "ps | busybox grep -E '[h]ostapd|[d]nsmasq'" | while read -r l; do info "仍在跑: $l"; done
    sh_ "ifconfig wlan0 2>/dev/null | busybox head -3" | while read -r l; do info "$l"; done

    if [ -n "$(sh_ "ps | busybox grep '[h]ostapd'" 2>/dev/null)" ]; then
        bad "hostapd 还在跑，热点没停干净"
        return 1
    fi
    ok "热点已停，WiFi 已交回 framework"
    info "注意：只 stop 不 off 的话，下次开机热点还会自动起来"
}

# ------------------------------------------------------------------ main
case "${1:-status}" in
    status)  cmd_status ;;
    off)     cmd_off ;;
    on)      cmd_on ;;
    stop)    cmd_stop ;;
    all-off) cmd_off && cmd_stop ;;
    *)       sed -n '2,40p' "$0"; exit 1 ;;
esac
