#!/system/bin/sh
# 车机 Android 蓝牙诊断脚本（Android 4.4.2 toolbox 兼容）
# 用法：把脚本推到车机（U盘/adb任意方式都行）执行：
#   sh btcheck.sh > btcheck_out.txt 2>&1
# 跑完把 btcheck_out.txt 发回来判读。有 root 会自动多查几项，没有也不影响核心诊断。
D="dumpsys"
getprop ro.build.version.release; getprop ro.build.version.sdk

echo "===== 1) rfkill（射频开关） ====="
for d in /sys/class/rfkill/rfkill*; do
  [ -f "$d/type" ] || continue
  echo "rfkill: type=$(cat $d/type) state=$(cat $d/state) name=$(cat $d/name 2>/dev/null)"
done
[ -e /sys/class/rfkill/rfkill0 ] || echo "rfkill 目录为空/不存在 —— 内核没有蓝牙射频节点（偏向情况 C）"

echo "===== 2) hci 接口 ====="
ls /sys/class/bluetooth
[ -e /sys/class/bluetooth/hci0 ] || echo "/sys/class/bluetooth/hci0 不存在 —— HCI 未被创建（驱动没跑起来，偏向 A 或 C）"

echo "===== 3) 内核日志：蓝牙芯片 bring-up 失败记录 ====="
dmesg 2>/dev/null | grep -iE "hci|bluetooth|rfkill|brcm|rtk|ampak|rl[0-9]|fw.?download|patchram|bcm(.*)bt|bt_.*fail|probe.*bt" | tail -50
[ -n "$(dmesg 2>/dev/null | head -c 1)" ] || echo "dmesg 需要权限（无输出不算数，root 后重跑）"

echo "===== 4) 蓝牙服务/HAL ====="
getprop | grep -iE "bluetooth|bt\.|\.bt"
echo "init.svc.bluetooth = $(getprop init.svc.bluetooth)"
ps 2>/dev/null | grep -iE "bluetooth|bt_|hci" | grep -v grep

echo "===== 5) 厂商拉栈工具与固件 ====="
ls /system/bin /system/xbin /vendor/bin 2>/dev/null | grep -iE "hciattach|brcm_patchram|rtk.*hci|ampak|bt.*start" 
ls /system/etc/init* /vendor/etc/init* 2>/dev/null | while read f; do grep -il bluetooth "$f" 2>/dev/null; done
ls /vendor/firmware /system/etc/firmware 2>/dev/null | grep -iE "bt|bcm|rtk|fw" | head

echo "===== 6) dumpsys bluetooth_manager 摘要 ====="
$D bluetooth_manager 2>/dev/null | head -40

echo "===== 7) settings 全局开关（root 才能验副证） ====="
settings get global bluetooth_on 2>/dev/null
echo "===== 完 ====="
