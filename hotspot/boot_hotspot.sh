#!/system/bin/sh
# ---------------------------------------------------------------
# 车机热点开机自启主脚本  v2
# 设备: Telechips TCC893X / BCM4339 / Android 4.4.2
# 触发: /system/etc/install-recovery.sh (init flash_recovery) 或 /system/bin/userapp stub
#
# v2 相比 v1 的改动（全部在 /data 里，不碰 /system）:
#   1. mkdir 原子锁 + 僵尸锁清理，两个钩子并发只跑一个
#   2. 入场先探测"热点已在跑"，直接退出（第二次触发零副作用）
#   3. 等 uptime >= SETTLE_UP 再动手，避开 framework 的 WiFi 初始化窗口
#   4. step1 硬超时：settings put 不生效也强行继续，不再死等
#   5. rmmod 带重试循环（每轮都补杀 supplicant）
#   6. startap / hostapd 改为轮询等待，不用固定 sleep
#   7. 整体重试最多 3 轮
#   8. 起来后守夜 5 分钟，被 framework 抢回去会自动重建
#   9. 日志按大小截断，不再开机 mv 掉（避免并发时毁证据）
#
# 手动执行:  sh /data/local/hotspot/boot_hotspot.sh          (含守夜)
#            sh /data/local/hotspot/boot_hotspot.sh once     (只跑一次不守夜)
# 临时禁用:  touch /data/local/hotspot/DISABLED
# 恢复启用:  rm /data/local/hotspot/DISABLED
# 切回 STA:  echo sta > /data/local/hotspot/mode
# ---------------------------------------------------------------

H=/data/local/hotspot
LOG=$H/boot.log
LOCKD=$H/lock.d
DISABLE_FLAG=$H/DISABLED
MODE_FILE=$H/mode
FAILCNT=$H/failcnt
UPSTAMP=$H/lastup

SSID=9B66BEB4
PASS=12345678
CH=6
IP=192.168.43.1
MASK=255.255.255.0

KO=/system/wifi/bcmdhd.ko
FW_AP=/system/wifi/fw_bcmdhd_apsta.bin
FW_STA=/system/wifi/fw_bcmdhd.bin
NVRAM=/system/wifi/bcmdhd.cal

SETTLE_UP=150        # 开机多少秒后才动手
WAIT_BOOT_MAX=300    # 等 boot_completed 的上限
MAXTRY=3             # start_ap 整体重试轮数
GUARD_SECS=300       # 守夜时长
GUARD_STEP=20        # 守夜巡检间隔
GUARD_MAXFIX=3       # 守夜最多重建几次

PASSONCE=0
[ "$1" = "once" ] && PASSONCE=1

mkdir -p $H 2>/dev/null
rm -f $H/running.lock 2>/dev/null   # 清掉 v1 遗留的单文件锁，避免误判

# 注意：本机 /system/bin 里没有 cut/tr/awk/sed/wc/head/tail/sort（只有 busybox 1.8.1），
# 所以所有文本处理一律走 busybox，能纯 shell 做的就不用外部命令。
# up 取 /proc/uptime 的整数部分，纯 shell 参数替换完成，无依赖。
proc_uptime() {
  U=`cat /proc/uptime 2>/dev/null`
  echo "${U%%.*}"
}

log() {
  echo "[`date +%m-%dT%H:%M:%S`] up=`proc_uptime` $*" >> $LOG
}

trim_log() {
  [ -f $LOG ] || return 0
  SZ=`busybox wc -c < $LOG 2>/dev/null`
  [ -z "$SZ" ] && return 0
  if [ "$SZ" -gt 262144 ]; then
    busybox tail -n 600 $LOG > $LOG.tmp 2>/dev/null && mv -f $LOG.tmp $LOG
  fi
}

has_mod() {
  grep -q '^bcmdhd ' /proc/modules 2>/dev/null && return 0
  return 1
}

kill_by_name() {
  for d in /proc/[0-9]*; do
    p=${d#/proc/}
    c=`cat $d/cmdline 2>/dev/null`
    case "$c" in
      *"$1"*) kill $p 2>/dev/null ;;
    esac
  done
}

uptime_s() {
  proc_uptime
}

# ---------------- 锁 ----------------
acquire_lock() {
  i=0
  while [ $i -lt 3 ]; do
    if mkdir $LOCKD 2>/dev/null; then
      echo $$ > $LOCKD/pid
      date +%s > $LOCKD/ts
      return 0
    fi
    OLD=`cat $LOCKD/pid 2>/dev/null`
    if [ -n "$OLD" ] && [ -d /proc/$OLD ]; then
      # 活着但不是我们的脚本（可能是上一轮的守夜进程）
      return 1
    fi
    rm -rf $LOCKD 2>/dev/null
    i=$((i+1))
  done
  return 1
}

release_lock() {
  OLD=`cat $LOCKD/pid 2>/dev/null`
  [ "$OLD" = "$$" ] && rm -rf $LOCKD 2>/dev/null
}

# ---------------- 状态探测 ----------------
verify_up() {
  [ "`cat /sys/module/bcmdhd/parameters/op_mode 2>/dev/null`" = "2" ] || return 1
  ps | grep -q '[h]ostapd' || return 1
  ps | grep -q '[d]nsmasq' || return 1
  ifconfig wlan0 2>/dev/null | grep -q "$IP" || return 1
  return 0
}

wait_boot() {
  i=0
  while [ $i -lt $WAIT_BOOT_MAX ]; do
    [ "`getprop sys.boot_completed`" = "1" ] && return 0
    sleep 2
    i=$((i+2))
  done
  return 1
}

settle() {
  i=0
  while [ $i -lt 180 ]; do
    U=`uptime_s`
    # 取值失败必须当 0 处理：空串会让 [ "" -ge 150 ] 恒假 → 白等满 180 秒
    case "$U" in ''|*[!0-9]*) U=0 ;; esac
    if [ "$U" -ge $SETTLE_UP ]; then
      log "settle: up=$U >= $SETTLE_UP"
      return 0
    fi
    sleep 3
    i=$((i+3))
  done
  log "settle: timeout, up=`uptime_s`"
  return 0
}

# ---------------- 回滚 STA ----------------
restore_sta() {
  log "restore_sta: begin"
  ndc softap stopap >/dev/null 2>&1
  kill_by_name hostapd
  kill_by_name dnsmasq
  sleep 2

  n=0
  while [ $n -lt 5 ]; do
    has_mod || break
    kill_by_name wpa_supplicant
    rmmod bcmdhd 2>/dev/null
    sleep 2
    n=$((n+1))
  done

  if has_mod; then
    log "restore_sta: FAIL cannot unload bcmdhd"
  else
    insmod $KO iface_name=wlan firmware_path=$FW_STA nvram_path=$NVRAM 2>>$LOG
    sleep 4
    has_mod && log "restore_sta: STA firmware loaded ok" || log "restore_sta: FAIL STA insmod"
  fi

  settings put global wifi_on 1 2>/dev/null
  log "restore_sta: done"
}

# ---------------- 各步骤 ----------------
step_wifi_off() {
  log "--- step1: shut framework wifi (hard timeout) ---"
  settings put global wifi_on 0 2>/dev/null
  settings put global wifi_scan_always_enabled 0 2>/dev/null
  svc wifi disable >/dev/null 2>&1

  i=0
  while [ $i -lt 10 ]; do
    W=`settings get global wifi_on 2>/dev/null | busybox tr -d '\r'`
    [ "$W" = "0" ] && break
    settings put global wifi_on 0 2>/dev/null
    svc wifi disable >/dev/null 2>&1
    sleep 1
    i=$((i+1))
  done
  log "step1: wifi_on=`settings get global wifi_on 2>/dev/null` waited=${i}s (continue anyway)"

  kill_by_name wpa_supplicant
  kill_by_name p2p_supplicant
  sleep 2
  return 0
}

unload_bcmdhd() {
  n=0
  while [ $n -lt 6 ]; do
    has_mod || return 0
    kill_by_name wpa_supplicant
    kill_by_name p2p_supplicant
    kill_by_name p2p0
    sleep 1
    rmmod bcmdhd 2>>$LOG
    sleep 3
    n=$((n+1))
    if has_mod; then ST=yes; else ST=no; fi
    log "unload: try $n loaded=$ST"
  done
  has_mod && return 1
  return 0
}

start_ap() {
  step_wifi_off

  log "--- step2: softap config ---"
  ndc softap set wlan0 $SSID broadcast $CH wpa2-psk $PASS >> $LOG 2>&1
  ndc softap stopap >> $LOG 2>&1
  kill_by_name hostapd
  sleep 2

  log "--- step3: unload bcmdhd ---"
  if ! unload_bcmdhd; then
    log "FAIL step3: bcmdhd still loaded"
    return 1
  fi

  log "--- step4: load APSTA fw op_mode=2 ---"
  insmod $KO iface_name=wlan firmware_path=$FW_AP nvram_path=$NVRAM op_mode=2 2>>$LOG
  sleep 8
  if ! has_mod; then
    log "FAIL step4: bcmdhd not loaded"
    return 2
  fi
  OM=`cat /sys/module/bcmdhd/parameters/op_mode 2>/dev/null`
  if [ "$OM" != "2" ]; then
    log "FAIL step4: op_mode=$OM expect 2"
    return 3
  fi
  log "step4: op_mode=2 ok"

  log "--- step5: startap ---"
  ndc softap startap >> $LOG 2>&1
  i=0
  while [ $i -lt 20 ]; do
    ps | grep -q '[h]ostapd' && break
    sleep 1
    i=$((i+1))
  done
  if ! ps | grep -q '[h]ostapd'; then
    log "FAIL step5: hostapd not running after ${i}s"
    return 4
  fi
  log "step5: hostapd up after ${i}s"

  log "--- step6: ip + dhcp ---"
  ifconfig wlan0 $IP netmask $MASK up >> $LOG 2>&1
  sleep 2
  kill_by_name dnsmasq
  sleep 1
  dnsmasq -C $H/dnsmasq.conf -x $H/dnsmasq.pid >> $LOG 2>&1

  i=0
  while [ $i -lt 10 ]; do
    ps | grep -q '[d]nsmasq' && break
    sleep 1
    i=$((i+1))
  done
  if ! ps | grep -q '[d]nsmasq'; then
    log "FAIL step6: dnsmasq not running"
    return 5
  fi
  if ! ifconfig wlan0 | grep -q "$IP"; then
    log "FAIL step6: wlan0 no ip"
    return 6
  fi

  log "verify: hostapd=`ps | grep -c '[h]ostapd'` dnsmasq=`ps | grep -c '[d]nsmasq'`"
  return 0
}

# ---------------- 守夜 ----------------
guard() {
  log "guard: start, ${GUARD_SECS}s / ${GUARD_STEP}s"
  t=0
  bad=0
  fix=0
  while [ $t -lt $GUARD_SECS ]; do
    sleep $GUARD_STEP
    t=$((t+GUARD_STEP))
    if verify_up; then
      bad=0
      continue
    fi
    bad=$((bad+1))
    log "guard: down detected (bad=$bad t=${t}s)"
    if [ $bad -ge 2 ]; then
      fix=$((fix+1))
      if [ $fix -gt $GUARD_MAXFIX ]; then
        log "guard: give up after $GUARD_MAXFIX rebuilds"
        return 1
      fi
      log "guard: rebuild #$fix"
      start_ap >> $LOG 2>&1
      R=$?
      [ $R -eq 0 ] && log "guard: rebuild #$fix ok" || log "guard: rebuild #$fix failed rc=$R"
      bad=0
    fi
  done
  log "guard: exit, hotspot=`verify_up && echo up || echo down`"
  return 0
}

# ---------------- main ----------------
main() {
  trim_log
  if ! acquire_lock; then
    log "another instance is running, exit"
    return 0
  fi
  log "================ boot_hotspot v2 start pid=$$ once=$PASSONCE ================"

  if [ -f $DISABLE_FLAG ]; then
    log "DISABLED flag present, skip"
    return 0
  fi

  # 第二次触发（另一个钩子）时热点已在跑 -> 直接退出
  if verify_up; then
    log "hotspot already up, nothing to do"
    return 0
  fi

  if ! wait_boot; then
    log "FAIL: boot_completed timeout (${WAIT_BOOT_MAX}s)"
    return 1
  fi
  log "boot_completed=1"

  settle

  MODE=ap
  [ -f $MODE_FILE ] && MODE=`cat $MODE_FILE | busybox tr -d '\r\n'`
  log "mode=$MODE"

  if [ "$MODE" = "sta" ]; then
    log "mode=sta -> restore STA and exit"
    restore_sta
    return 0
  fi

  try=1
  RC=1
  while [ $try -le $MAXTRY ]; do
    log "--- attempt $try / $MAXTRY ---"
    start_ap
    RC=$?
    [ $RC -eq 0 ] && break
    log "attempt $try failed rc=$RC"
    if [ $try -lt $MAXTRY ]; then
      log "sleep 20s before retry"
      sleep 20
    fi
    try=$((try+1))
  done

  if [ $RC -ne 0 ]; then
    log "===== HOTSPOT FAILED rc=$RC after $MAXTRY attempts ====="
    N=0
    [ -f $FAILCNT ] && N=`cat $FAILCNT | busybox tr -d '\r\n'`
    N=$((N+1))
    echo $N > $FAILCNT
    if [ $N -ge 3 ]; then
      log "!!! 3 consecutive failures -> disable autostart, restore STA"
      echo "auto-disabled after 3 failures at `date`" > $DISABLE_FLAG
      restore_sta
    fi
    return $RC
  fi

  log "===== HOTSPOT UP  ssid=$SSID ch=$CH ip=$IP ====="
  rm -f $FAILCNT
  date > $UPSTAMP

  if [ $PASSONCE -eq 1 ]; then
    log "once mode: skip guard"
    return 0
  fi

  guard
  return 0
}

main
RC=$?
release_lock
exit $RC
