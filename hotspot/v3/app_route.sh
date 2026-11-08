#!/usr/bin/env bash
# =============================================================================
# app_route.sh —— 路径 A：App(BOOT_COMPLETED) → 本机 adbd(127.0.0.1:5555, root)
#                 → boot_hotspot.sh
#
# 为什么是这条路:
#   zygote 给每个 App 设了 PR_SET_NO_NEW_PRIVS=1，内核忽略 setuid 位，
#   所以 setuid root 的 sh/su 对 App 完全无效。adbd 本身以 root 运行，
#   提权发生在 adbd 进程里，不受该标志影响。
#
# 子命令（每条都可以单独跑，互不依赖）:
#   check     只读体检：adbd 监听/属性/App 版本/规则/热点
#   tcp       让 adbd 常开 TCP 5555（persist + 立即生效 + 验证）
#   install   安装改造版 APK（同签名覆盖）
#   keys      备份 adb_keys 并追加 App 公钥
#   script    推送 boot_hotspot.sh v2 到 /data
#   rule      注入开机规则（boot → rootcmd → 起热点，延迟 60s）
#   verify    验收：热点状态 + App 通道日志
#   reboot    重启并等待开机
#   all       install + script + rule + keys + tcp（不含重启）
#
# 前置: 车机已上电、USB adb 在线
# =============================================================================
set -uo pipefail
export MSYS_NO_PATHCONV=1 MSYS2_ARG_CONV_EXCL='*'

# =============================================================================
# 【已停用 2026-11-08】本脚本停留在 1.6.66 / rootcmd / delay=60 的旧方案。
# 直接跑它会造成三处已验证的破坏：
#   ① APK 写死 BootTask_v1.6.66.apk，且用 pm install -r -d（-d 允许降级）
#      → 把辛苦装上的 1.6.70 降回去；
#   ② cmd_rule 注入 rootcmd/delay=60/sleep4 的旧规则，去重只删 rootcmd，
#      → 和正确的 adbcmd/delay=90 规则并存，开机会跑两份热点脚本；
#   ③ cmd_rule 用 `ls -ld | awk '{print $3":"$4}'` 取属主（目录行省略 size，
#      $4 是日期）→ chown root:2026-11-08，App 报 without permission / rules=0。
#      同样的写法在 cmd_keys 里还会写坏 /data/misc/adb/adb_keys 属主。
#   ④ cmd_keys / cmd_tcp 是多余的：本机 adbd 默认就在 0.0.0.0:5555 监听且无需
#      RSA（ro.adb.secure 为空），tcp 反而会 setprop + restart adbd 导致断连。
#
# 唯一入口已换成 deploy_final.sh，执行清单见 QUICKSTART.md。
# 确实要看旧实现时：APP_ROUTE_LEGACY_ALLOW=1 bash app_route.sh <子命令>
# =============================================================================
if [ "${APP_ROUTE_LEGACY_ALLOW:-0}" != "1" ]; then
    printf '[停用] app_route.sh 是旧方案（1.6.66 / rootcmd），执行会降级 APK 并写坏规则。\n'
    printf '       请改用:  bash deploy_final.sh check|all|install|assets|rule|verify|trigger\n'
    printf '       步骤见:  QUICKSTART.md\n'
    exit 1
fi

HERE=$(cd "$(dirname "$0")" && pwd)
BASE="$HERE/../.."
ADB=${ADB:-/c/Users/11936/WorkBuddy/2026-10-23-21-00-43/android-sdk/platform-tools/adb.exe}
SERIAL=${SERIAL:-000018030809054701DC}
PY=${PY:-/c/Users/11936/.workbuddy/binaries/python/versions/3.13.12/python.exe}

APK="$BASE/apk_src/BootTask/dist/BootTask_v1.6.66.apk"
PUB="$HERE/app/out/app_adb.pub"
HOTSH="$HERE/../boot_hotspot.sh"
TMP="$HERE/.tmp"

PKG=com.boottask
KEYS=/data/misc/adb/adb_keys
PORT=5555
# 关键：必须用 busybox nohup，不能用 setsid / 裸 &。
# 2026-11-08 在 MuMu(Android 4.4.4, busybox 1.21.1) 实测：
#   busybox setsid sh ... &   -> adb 会话一断脚本立刻被杀，boot.log 都不生成
#   sh ... &                  -> 同上
#   busybox nohup sh ... &    -> 存活，日志持续增长（唯一可用）
# 末尾的 sleep 4 + wc -c 是"启动自检"：把开机前/后的日志字节数回传给 App，
# App 的日志里就能直接看到 LAUNCH baseline=... after=...（after 变大 = 真的跑起来了）。
CMD='S=/data/local/hotspot/boot_hotspot.sh; L=/data/local/hotspot/boot.log; BB=/system/xbin/busybox; [ -x $BB ] || BB=busybox; B=`$BB wc -c < $L 2>/dev/null`; B=${B:-0}; $BB nohup sh $S </dev/null >/dev/null 2>&1 & sleep 4; A=`$BB wc -c < $L 2>/dev/null`; A=${A:-0}; echo LAUNCH baseline=${B} after=${A}'
DELAY=60

mkdir -p "$TMP"

say()  { printf '%s\n' "$*"; }
step() { printf '\n=== %s ===\n' "$*"; }
ok()   { printf '[ OK ] %s\n' "$*"; }
bad()  { printf '[FAIL] %s\n' "$*"; }
info() { printf '       %s\n' "$*"; }

die() { bad "$*"; exit 1; }

online() {
  local r
  r=$($ADB -s "$SERIAL" shell 'echo __OK__' 2>/dev/null | tr -d '\r\n')
  [ "$r" = "__OK__" ]
}

need() {
  online || die "设备不在线（$SERIAL）：确认车机已上电、USB 已连接"
}

sh_() { $ADB -s "$SERIAL" shell "$@"; }

# ------------------------------------------------------------------ check
cmd_check() {
  need
  step "0. 设备与系统"
  info "uptime      : $(sh_ 'cat /proc/uptime' | tr -d '\r')"
  info "boot_completed: $(sh_ 'getprop sys.boot_completed' | tr -d '\r')"
  info "ro.build.tags : $(sh_ 'getprop ro.build.tags' | tr -d '\r')"
  info "selinux       : $(sh_ 'getenforce' | tr -d '\r')"

  step "1. adbd TCP 通道（路径 A 的前提）"
  local p1 p2 lst
  p1=$(sh_ 'getprop service.adb.tcp.port' | tr -d '\r')
  p2=$(sh_ 'getprop persist.adb.tcp.port' | tr -d '\r')
  info "service.adb.tcp.port = [$p1]"
  info "persist.adb.tcp.port = [$p2]"
  lst=$(sh_ "cat /proc/net/tcp /proc/net/tcp6 2>/dev/null | busybox grep -c ':15B3 '" | tr -d '\r')
  info "5555 监听条目数        = ${lst:-0}  (0 = 未监听)"
  if [ "${lst:-0}" -gt 0 ] 2>/dev/null; then ok "adbd 正在监听 5555"; else bad "adbd 未监听 5555"; fi

  step "2. adb_keys（App 公钥是否已授权）"
  local kn; kn=$(sh_ "busybox wc -l < $KEYS 2>/dev/null || echo 0" | tr -d '\r')
  info "adb_keys 行数 = ${kn:-0}"
  if [ -f "$PUB" ]; then
    local head16; head16=$(cut -c1-16 < "$PUB")
    if sh_ "busybox grep -qF '$(cat "$PUB")' $KEYS 2>/dev/null && echo yes" | tr -d '\r' | grep -q yes; then
      ok "App 公钥已在 adb_keys（${head16}...）"
    else
      bad "App 公钥不在 adb_keys（${head16}...）→ 跑 keys 子命令"
    fi
  else
    bad "本地公钥不存在: $PUB"
  fi

  step "3. App"
  local ap; ap=$(sh_ "pm path $PKG" 2>/dev/null | tr -d '\r' | head -1)
  if [ -n "$ap" ]; then
    ok "已安装: $ap"
    sh_ "dumpsys package $PKG 2>/dev/null | busybox grep -E 'versionCode|versionName|firstInstallTime|lastUpdateTime' | head -4" | tr -d '\r' | while read -r l; do info "$l"; done
  else
    bad "$PKG 未安装"
  fi

  step "4. 规则（shared_prefs/rules.xml）"
  sh_ "cat /data/data/$PKG/shared_prefs/rules.xml 2>/dev/null || echo '(无 rules.xml)'" | tr -d '\r' | head -5

  step "5. 热点现状"
  info "op_mode = $(sh_ 'cat /sys/module/bcmdhd/parameters/op_mode 2>/dev/null' | tr -d '\r')"
  sh_ "ps | busybox grep -E '[h]ostapd|[d]nsmasq' | busybox head -3" | tr -d '\r' | while read -r l; do info "$l"; done
  sh_ "ifconfig wlan0 2>/dev/null | busybox head -2" | tr -d '\r' | while read -r l; do info "$l"; done

  step "6. 热点脚本与钩子"
  sh_ "ls -l /data/local/hotspot/boot_hotspot.sh /system/etc/install-recovery.sh 2>&1" | tr -d '\r' | while read -r l; do info "$l"; done
}

# ------------------------------------------------------------------ tcp
cmd_tcp() {
  need
  step "让 adbd 常开 TCP $PORT"
  info "persist.adb.tcp.port 是重启后仍生效的那一个（service.* 重启即丢）"
  local r
  r=$(sh_ "setprop persist.adb.tcp.port $PORT; setprop service.adb.tcp.port $PORT; echo set_rc=\$?" | tr -d '\r')
  info "$r"
  info "重启 adbd（USB 会短暂断开，通常 5~10 秒自动回来）"
  sh_ "busybox setsid sh -c 'sleep 2; setprop ctl.restart adbd' >/dev/null 2>&1 &" >/dev/null 2>&1

  local i
  for i in $(seq 1 20); do
    sleep 3
    if online; then
      local lst
      lst=$(sh_ "cat /proc/net/tcp /proc/net/tcp6 2>/dev/null | busybox grep -c ':15B3 '" | tr -d '\r')
      info "[$i] 设备在线, 5555 监听条目 = ${lst:-0}"
      if [ "${lst:-0}" -gt 0 ] 2>/dev/null; then
        ok "adbd 已监听 $PORT"
        info "persist.adb.tcp.port = [$(sh_ 'getprop persist.adb.tcp.port' | tr -d '\r')]"
        return 0
      fi
    else
      info "[$i] 设备离线，等待恢复..."
    fi
  done
  bad "adbd 未在 $PORT 监听"
  info "如果 persist 属性设了但重启后不监听，说明该 ROM 没有从 persist 派生 service 属性，"
  info "需要改用 adbd stub（把 /system/bin/adbd 换成 setprop + execve 的 ELF）"
  return 1
}

# ------------------------------------------------------------------ install
cmd_install() {
  need
  [ -f "$APK" ] || die "APK 不存在: $APK"
  step "安装改造版 APK"
  info "包: $APK"
  info "sha256: $(sha256sum "$APK" | cut -d' ' -f1)"
  $ADB -s "$SERIAL" push "$(cygpath -w "$APK")" /data/local/tmp/boottask_new.apk 2>&1 | tail -1

  # 同签名 -> 直接覆盖；先停掉进程避免文件占用
  sh_ "am force-stop $PKG" >/dev/null 2>&1
  local out
  out=$(sh_ "pm install -r -d /data/local/tmp/boottask_new.apk" 2>&1 | tr -d '\r')
  say "$out"
  case "$out" in
    *Success*)
      ok "安装成功"
      sh_ "dumpsys package $PKG | busybox grep -E 'versionCode|versionName' | head -2" | tr -d '\r' | while read -r l; do info "$l"; done
      ;;
    *INSTALL_FAILED_UPDATE_INCOMPATIBLE*|*signatures*)
      bad "签名不一致 —— 说明车上那一版不是用仓库 keys/boottask.p12 签的"
      info "对策: 先卸载再装（会丢 App 内已配规则，但我们的规则由 rule 子命令注入，可重建）"
      info "      pm uninstall $PKG && pm install /data/local/tmp/boottask_new.apk"
      return 1
      ;;
    *INSTALL_FAILED_VERSION_DOWNGRADE*)
      bad "版本降级被拒 —— 车上版本号比 81 高"
      info "对策: 把 AndroidManifest 和 apktool.yml 的 versionCode 调到更高后重编"
      return 1
      ;;
    *)
      bad "安装失败，见上面输出"
      return 1
      ;;
  esac
}

# ------------------------------------------------------------------ keys
cmd_keys() {
  need
  [ -f "$PUB" ] || die "本地公钥不存在: $PUB（先跑 mk_app_key.py new）"
  step "adb_keys 备份 + 追加 App 公钥"
  $ADB -s "$SERIAL" push "$(cygpath -w "$PUB")" /data/local/tmp/app_adb.pub 2>&1 | tail -1

  local out
  out=$(sh_ "
    KEYS=$KEYS
    test -f \$KEYS || { mkdir -p /data/misc/adb; touch \$KEYS; }
    O=\$(ls -ld /data/misc/adb | busybox awk '{print \$3\":\"\$4}')
    if [ ! -f \$KEYS.bak.app ]; then cp -f \$KEYS \$KEYS.bak.app; echo backup=\$KEYS.bak.app; fi
    NEW=\$(cat /data/local/tmp/app_adb.pub)
    if busybox grep -qF \"\$NEW\" \$KEYS 2>/dev/null; then
      echo already_present=yes
    else
      # 末尾补换行后再追加，避免和上一行粘在一起
      [ -s \$KEYS ] && [ \$(busybox tail -c 1 \$KEYS | busybox wc -l) -eq 0 ] && echo >> \$KEYS
      echo \"\$NEW\" >> \$KEYS
      echo appended=yes
    fi
    chown \$O \$KEYS
    chmod 640 \$KEYS
    sync
    echo lines=\$(busybox wc -l < \$KEYS)
    echo md5=\$(busybox md5sum \$KEYS | busybox awk '{print \$1}')
  " 2>&1 | tr -d '\r')
  say "$out"
  echo "$out" | grep -qE 'appended=yes|already_present=yes' && ok "adb_keys 已就绪" || bad "adb_keys 写入异常"
}

# ------------------------------------------------------------------ script
cmd_script() {
  need
  [ -f "$HOTSH" ] || die "脚本不存在: $HOTSH"
  step "推送 boot_hotspot.sh v2"
  sh_ "mkdir -p /data/local/hotspot" >/dev/null 2>&1
  $ADB -s "$SERIAL" push "$(cygpath -w "$HOTSH")" /data/local/tmp/boot_hotspot.sh 2>&1 | tail -1
  local out
  out=$(sh_ "
    busybox cp -f /data/local/tmp/boot_hotspot.sh /data/local/hotspot/boot_hotspot.sh
    chmod 755 /data/local/hotspot/boot_hotspot.sh
    busybox sh -n /data/local/hotspot/boot_hotspot.sh && echo syntax=OK || echo syntax=FAIL
    echo lines=\$(busybox wc -l < /data/local/hotspot/boot_hotspot.sh)
    echo md5=\$(busybox md5sum /data/local/hotspot/boot_hotspot.sh | busybox awk '{print \$1}')
  " 2>&1 | tr -d '\r')
  say "$out"
  echo "$out" | grep -q 'syntax=OK' && ok "脚本已部署" || bad "脚本语法检查未通过"
  info "本地 md5: $(md5sum "$HOTSH" | cut -d' ' -f1)"
}

# ------------------------------------------------------------------ rule
cmd_rule() {
  need
  local delay=${2:-$DELAY}
  step "注入开机规则"
  info "event=boot  action=rootcmd  delay=${delay}s"
  info "arg=$CMD"

  sh_ "am force-stop $PKG" >/dev/null 2>&1
  rm -f "$TMP/rules.xml"
  $ADB -s "$SERIAL" pull /data/data/$PKG/shared_prefs/rules.xml "$TMP/rules.xml" >/dev/null 2>&1

  "$PY" - "$(cygpath -w "$TMP/rules.xml")" "$CMD" "$delay" \
        "$(cygpath -w "$TMP/rules.new.xml")" <<'PY' || return 1
import html, json, os, re, sys

path, cmd, delay = sys.argv[1], sys.argv[2], int(sys.argv[3])
outpath = sys.argv[4]
rules = []
if os.path.exists(path):
    raw = open(path, encoding="utf-8").read()
    m = re.search(r'<string name="list">(.*?)</string>', raw, re.S)
    if m:
        try:
            rules = json.loads(html.unescape(m.group(1)))
            print("      现有规则数: %d" % len(rules))
        except Exception as e:
            print("      现有 list 解析失败(将重建): %s" % e)

before = len(rules)
# 去掉同一条（arg 里含 boot_hotspot.sh 的 rootcmd），避免重复叠加
rules = [x for x in rules if not (x.get("action") == "rootcmd"
         and "boot_hotspot.sh" in str(x.get("arg", "")))]
if len(rules) != before:
    print("      已移除旧的同类规则 %d 条" % (before - len(rules)))

rule = {"event": "boot", "action": "rootcmd", "delay": delay,
        "enabled": True, "arg": cmd}
rules.append(rule)
print("      写入后规则数: %d" % len(rules))

val = html.escape(json.dumps(rules, ensure_ascii=False), quote=False)
xml = ('<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'yes\' ?>\n'
       '<map>\n    <string name="list">%s</string>\n</map>\n' % val)
open(outpath, "w", encoding="utf-8").write(xml)
print("      规则: %s" % json.dumps(rule, ensure_ascii=False))
PY

  [ -f "$TMP/rules.new.xml" ] || { bad "规则文件生成失败"; return 1; }
  $ADB -s "$SERIAL" push "$(cygpath -w "$TMP/rules.new.xml")" /data/local/tmp/rules.new.xml 2>&1 | tail -1

  local out
  out=$(sh_ "
    D=/data/data/$PKG/shared_prefs
    mkdir -p \$D
    O=\$(ls -ld /data/data/$PKG | busybox awk '{print \$3\":\"\$4}')
    busybox cp -f /data/local/tmp/rules.new.xml \$D/rules.xml
    chown \$O \$D/rules.xml
    chmod 660 \$D/rules.xml
    sync
    echo owner=\$O
    busybox wc -c < \$D/rules.xml
  " 2>&1 | tr -d '\r')
  say "$out"
  ok "规则已写入"

  # 拉起 App 让它重新读一遍规则并刷新内部缓存
  sh_ "monkey -p $PKG -c android.intent.category.LAUNCHER 1" >/dev/null 2>&1
  info "已拉起 App 一次（让它加载新规则）"
}

# ------------------------------------------------------------------ verify
cmd_verify() {
  need
  step "热点状态"
  info "uptime = $(sh_ 'cat /proc/uptime' | tr -d '\r')"
  info "op_mode = $(sh_ 'cat /sys/module/bcmdhd/parameters/op_mode 2>/dev/null' | tr -d '\r')"
  sh_ "ps | busybox grep -E '[h]ostapd|[d]nsmasq'" | tr -d '\r' | while read -r l; do info "$l"; done
  sh_ "ifconfig wlan0 2>/dev/null | busybox head -3" | tr -d '\r' | while read -r l; do info "$l"; done

  step "boot_hotspot 日志（末尾 20 行）"
  sh_ "busybox tail -20 /data/local/hotspot/boot.log 2>/dev/null" | tr -d '\r' | while read -r l; do info "$l"; done

  step "App 通道日志（验证走了哪条通道：su / adbd / sh）"
  sh_ "logcat -d -v time 2>/dev/null | busybox grep -E 'rootcmd\\[|adb: ' | busybox tail -20" | tr -d '\r' | while read -r l; do info "$l"; done

  step "BootDiagnostics（App 自己的日志文件）"
  sh_ "ls -l /data/data/$PKG/files/ 2>/dev/null | busybox head -10" | tr -d '\r' | while read -r l; do info "$l"; done
  sh_ "busybox tail -20 /data/data/$PKG/files/boot_diag.log 2>/dev/null" | tr -d '\r' | while read -r l; do info "$l"; done
}

# ------------------------------------------------------------------ reboot
cmd_reboot() {
  need
  step "重启车机"
  sh_ "busybox wc -c < /data/local/hotspot/boot.log 2>/dev/null || echo 0" | tr -d '\r' | while read -r l; do info "boot.log 基线 = $l"; done
  sh_ "sync; reboot" >/dev/null 2>&1
  info "已下发重启，等待开机..."

  local i r
  for i in $(seq 1 40); do
    sleep 5
    r=$(sh_ 'getprop sys.boot_completed' 2>/dev/null | tr -d '\r\n')
    if [ "$r" = "1" ]; then
      ok "boot_completed=1（约 $((i*5))s）"
      break
    fi
    printf '       等待中 [%d] state=[%s]\n' "$i" "$r"
  done
  [ "$r" = "1" ] || { bad "开机未完成"; return 1; }
  info "热点脚本通常还需要 60~120 秒，别急着下结论"
}

# ------------------------------------------------------------------ trigger
cmd_trigger() {
  need
  step "手动触发一次 boot 事件（免重启验证 adbd 通道）"
  info "原理: am startservice ExecService --es event boot，让它走一遍和开机相同的规则"
  sh_ "am force-stop $PKG" >/dev/null 2>&1
  sh_ "logcat -c" >/dev/null 2>&1

  local out
  out=$(sh_ "am startservice -n $PKG/.ExecService --es event boot" 2>&1 | tr -d '\r')
  say "$out"

  info "等规则执行（delay=${1:-0}s + 握手时间）..."
  sleep $(( ${1:-0} + 8 ))

  step "App 走了哪条通道"
  sh_ "logcat -d -v time 2>/dev/null | busybox grep -E 'rootcmd\\[|adb: |ExecService' | busybox tail -30" | tr -d '\r' | while read -r l; do info "$l"; done

  step "热点是否被拉起"
  info "op_mode = $(sh_ 'cat /sys/module/bcmdhd/parameters/op_mode 2>/dev/null' | tr -d '\r')"
  sh_ "busybox tail -5 /data/local/hotspot/boot.log 2>/dev/null" | tr -d '\r' | while read -r l; do info "$l"; done
}

# ------------------------------------------------------------------ main
case "${1:-check}" in
  check)    cmd_check ;;
  tcp)      cmd_tcp ;;
  install)  cmd_install ;;
  keys)     cmd_keys ;;
  script)   cmd_script ;;
  rule)     cmd_rule "$@" ;;
  verify)   cmd_verify ;;
  reboot)   cmd_reboot ;;
  trigger)  cmd_trigger "${2:-0}" ;;
  all)
    cmd_install
    cmd_script
    cmd_rule
    cmd_keys
    cmd_tcp
    say ""
    ok "部署完成。下一步: bash app_route.sh verify"
    ;;
  *)
    sed -n '2,34p' "$0"
    exit 1
    ;;
esac
