#!/system/bin/sh
# =============================================================================
# p9_revert.sh  ——  一键查看 / 回滚所有改动点
#
# 用法:
#   sh p9_revert.sh status        # 只读：列出每个改动点的当前状态与"是否原厂"
#   sh p9_revert.sh hooks         # 回滚 init 钩子（删 install-recovery.sh、恢复 ro）
#   sh p9_revert.sh shperm        # 回滚 /system/bin/sh 权限
#   sh p9_revert.sh script        # 回滚 boot_hotspot.sh 到 v1
#   sh p9_revert.sh adbkeys       # 回滚 adb_keys 到最近备份
#   sh p9_revert.sh all           # 以上全部
#
# 原则: 只删/改我们自己加的东西，不动任何原厂文件。
# =============================================================================

ACT=${1:-status}
TS=`date +%Y%m%d_%H%M%S`
OUTDIR=/data/local/hotspot
mkdir -p $OUTDIR 2>/dev/null
LOG=$OUTDIR/revert_$TS.log
BB=/system/bin/busybox
[ -x "$BB" ] || BB=busybox

log() {
  line="[`date '+%Y-%m-%d %H:%M:%S'`][$1][$2][$3] $4"
  echo "$line"
  echo "$line" >> $LOG 2>/dev/null
}

SHREAL=`$BB readlink -f /system/bin/sh 2>/dev/null`
[ -z "$SHREAL" ] && SHREAL=/system/bin/sh

do_status() {
  log INFO R0.1 MNT "/system: `mount | grep ' /system '`"
  log INFO R0.2 SHPERM "sh: `ls -l $SHREAL 2>&1`"
  case "`ls -l $SHREAL 2>&1`" in
    *rws*) log WARN R0.2 SH-SBIT "sh STILL has s-bit (from an interrupted p1) -> run: p9_revert.sh shperm" ;;
    *)     log OK   R0.2 SH-CLEAN "sh has no s-bit (factory state)" ;;
  esac
  if [ -f /system/etc/install-recovery.sh ]; then
    SZ=`$BB stat -c %s /system/etc/install-recovery.sh 2>/dev/null`
    MG=`$BB dd if=/system/etc/install-recovery.sh bs=1 count=4 2>/dev/null | $BB od -An -tx1 | tr -d ' \n'`
    log WARN R0.3 HOOK "install-recovery.sh present size=$SZ magic=$MG (factory had NO such file)"
  else
    log OK R0.3 HOOK-CLEAN "install-recovery.sh absent (factory state)"
  fi
  if [ -f /data/local/hotspot/boot_hotspot.v1.bak.sh ]; then
    A=`$BB md5sum /data/local/hotspot/boot_hotspot.sh 2>/dev/null | awk '{print $1}'`
    B=`$BB md5sum /data/local/hotspot/boot_hotspot.v1.bak.sh 2>/dev/null | awk '{print $1}'`
    if [ "$A" = "$B" ]; then
      log OK R0.4 SCRIPT "boot_hotspot.sh == v1 (already rolled back)"
    else
      log INFO R0.4 SCRIPT "boot_hotspot.sh != v1 (currently modified; v1 backup exists)"
    fi
  else
    log WARN R0.4 SCRIPT "no v1 backup found"
  fi
  if [ -f /data/misc/adb/adb_keys ]; then
    log INFO R0.5 ADBKEYS "adb_keys lines=`$BB wc -l < /data/misc/adb/adb_keys` backups=`ls -1 /data/misc/adb/adb_keys.bak.* 2>/dev/null | wc -l`"
  else
    log OK R0.5 ADBKEYS "adb_keys absent"
  fi
  log INFO R0.6 EXT4 "ext4 errors this boot: `dmesg | grep -icE 'EXT4-fs error'`"
}

do_hooks() {
  if [ -f /system/etc/install-recovery.sh ]; then
    mount -o remount,rw /system 2>&1 | while read l; do log INFO R1.1 RMOUNT "  $l"; done
    if echo "`mount | grep ' /system '`" | grep -q ' rw[ ,]'; then
      rm -f /system/etc/install-recovery.sh 2>&1 | while read l; do log FAIL R1.2 E-HOOK-03 "  $l"; done
      sync
      if [ -f /system/etc/install-recovery.sh ]; then
        log FAIL R1.3 E-HOOK-04 "delete failed, file still there"
      else
        log OK R1.3 HOOK-GONE "install-recovery.sh removed"
      fi
    else
      log FAIL R1.1 E-MNT-06 "cannot remount rw, hook NOT removed"
    fi
  else
    log OK R1.0 HOOK-GONE "nothing to remove"
  fi
  mount -o remount,ro /system 2>/dev/null
  log INFO R1.9 RO "mount now: `mount | grep ' /system '`"
  log INFO R1.9 EXT4 "ext4 errors: `dmesg | grep -icE 'EXT4-fs error'`"
}

do_shperm() {
  mount -o remount,rw /system 2>&1 | while read l; do log INFO R2.1 RMOUNT "  $l"; done
  if echo "`mount | grep ' /system '`" | grep -q ' rw[ ,]'; then
    chmod 0755 "$SHREAL" 2>/dev/null
    [ "$SHREAL" != "/system/bin/sh" ] && chmod 0755 /system/bin/sh 2>/dev/null
    sync
    log OK R2.2 FIXED "sh perms now: `ls -l $SHREAL`"
  else
    log FAIL R2.1 E-MNT-06 "cannot remount rw, sh perms NOT fixed"
  fi
  mount -o remount,ro /system 2>/dev/null
  log INFO R2.9 RO "mount now: `mount | grep ' /system '`"
}

do_script() {
  if [ -f /data/local/hotspot/boot_hotspot.v1.bak.sh ]; then
    $BB cp -f /data/local/hotspot/boot_hotspot.v1.bak.sh /data/local/hotspot/boot_hotspot.sh 2>&1 | while read l; do log FAIL R3.1 ERR "  $l"; done
    chmod 755 /data/local/hotspot/boot_hotspot.sh
    sync
    log OK R3.2 SCRIPT-RESTORED "boot_hotspot.sh restored to v1"
  else
    log FAIL R3.0 E-SCRIPT-01 "no v1 backup"
  fi
}

do_adbkeys() {
  B=`ls -1t /data/misc/adb/adb_keys.bak.* 2>/dev/null | head -1`
  if [ -z "$B" ]; then
    log FAIL R4.0 E-ADB-09 "no adb_keys backup"
    return
  fi
  $BB cp -f "$B" /data/misc/adb/adb_keys 2>&1 | while read l; do log FAIL R4.1 ERR "  $l"; done
  sync
  log OK R4.2 RESTORED "adb_keys restored from $B (lines=`$BB wc -l < /data/misc/adb/adb_keys`)"
}

case "$ACT" in
  status)  do_status ;;
  hooks)   do_hooks; do_status ;;
  shperm)  do_shperm; do_status ;;
  script)  do_script ;;
  adbkeys) do_adbkeys ;;
  all)     do_hooks; do_shperm; do_script; do_adbkeys; do_status ;;
  *) echo "usage: p9_revert.sh {status|hooks|shperm|script|adbkeys|all}"; exit 1 ;;
esac

echo "LOG=$LOG"
