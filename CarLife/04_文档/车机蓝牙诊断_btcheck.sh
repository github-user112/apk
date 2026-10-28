#!/system/bin/sh
# 车机 Android 蓝牙诊断脚本 v2（Android 4.4.2 toolbox 兼容）
# 用法：
#   adb push btcheck.sh /data/local/tmp/ && adb shell sh /data/local/tmp/btcheck.sh > /data/local/tmp/btcheck_out.txt
#   或 U 盘拷进车机，任意终端执行： sh btcheck.sh > /sdcard/btcheck_out.txt 2>&1
# 只读脚本：不改任何系统设置、不启动/停止任何服务。有 root 会自动多查几项。
# v2 相对 v1：去掉 grep -E（4.4 toolbox grep 不一定支持），补 tty/权限/包状态/栈文件/init.rc。

echo "==================== 0) 基本信息 ===================="
getprop ro.build.version.release
getprop ro.build.version.sdk
echo "device   = $(getprop ro.product.device)"
echo "model    = $(getprop ro.product.model)"
echo "build    = $(getprop ro.build.display.id)"
echo "ro.secure= $(getprop ro.secure)   ro.debuggable=$(getprop ro.debuggable)"
echo "kernel   = $(uname -a)"
echo "whoami   = $(id)"

echo
echo "==================== 1) 框架侧：服务/特性/包 ===================="
echo "--- pm list features | blue ---"
pm list features 2>/dev/null | grep -i blue
echo "--- service list | blue ---"
service list 2>/dev/null | grep -i blue
echo "--- pm path com.android.bluetooth ---"
pm path com.android.bluetooth 2>/dev/null
echo "--- 被禁用的蓝牙相关包 (pm list packages -d) ---"
pm list packages -d 2>/dev/null | grep -i blue
echo "--- 全部蓝牙相关包 ---"
pm list packages 2>/dev/null | grep -i blue
echo "--- dumpsys bluetooth_manager ---"
dumpsys bluetooth_manager 2>/dev/null | head -40
echo "--- dumpsys bluetooth (老名字兜底) ---"
dumpsys bluetooth 2>/dev/null | head -20
echo "--- settings global bluetooth_on ---"
settings get global bluetooth_on 2>/dev/null
echo "--- 蓝牙相关属性 ---"
getprop | grep -i blue
getprop | grep -i "bt\." | head -20

echo
echo "==================== 2) 内核侧：HCI / rfkill / 串口 ===================="
echo "--- /sys/class/bluetooth ---"
ls -l /sys/class/bluetooth 2>/dev/null
[ -e /sys/class/bluetooth/hci0 ] || echo "!! /sys/class/bluetooth/hci0 不存在 —— 内核里没有已注册的 HCI 设备"
echo "--- /sys/class/rfkill ---"
ls -l /sys/class/rfkill 2>/dev/null
for d in /sys/class/rfkill/rfkill*; do
  [ -f "$d/type" ] || continue
  echo "rfkill: type=$(cat $d/type 2>/dev/null) state=$(cat $d/state 2>/dev/null) name=$(cat $d/name 2>/dev/null)"
done
echo "--- hciconfig -a ---"
hciconfig -a 2>/dev/null || echo "(没有 hciconfig 命令)"
echo "--- rfkill list ---"
rfkill list 2>/dev/null || echo "(没有 rfkill 命令)"
echo "--- hci0 属性（存在时）---"
cat /sys/class/bluetooth/hci0/address 2>/dev/null
cat /sys/class/bluetooth/hci0/name 2>/dev/null
echo "--- /proc/tty/drivers ---"
cat /proc/tty/drivers 2>/dev/null
echo "--- 串口节点 ---"
ls -l /dev/ttyS* /dev/ttyHS* /dev/ttyACM* /dev/ttyUSB* /dev/vhci /dev/tcc_bt* 2>/dev/null
echo "--- 谁占着 ttyS*（有 root 才有意义）---"
ls -l /proc/*/fd 2>/dev/null | grep ttyS | head -20

echo
echo "==================== 3) 用户态栈：二进制 / 进程 / init 服务 ===================="
echo "--- /system/bin /system/xbin /vendor/bin 里的蓝牙工具 ---"
ls /system/bin 2>/dev/null | grep -i blue
ls /system/bin 2>/dev/null | grep -i hci
ls /system/bin 2>/dev/null | grep -i bt
ls /system/xbin 2>/dev/null | grep -i blue
ls /system/xbin 2>/dev/null | grep -i hci
ls /vendor/bin 2>/dev/null | grep -i blue
ls /vendor/bin 2>/dev/null | grep -i hci
echo "--- 相关进程 ---"
ps 2>/dev/null | grep -i blue
ps 2>/dev/null | grep -i hci
echo "--- init.svc.* ---"
getprop | grep init.svc | grep -i blue
echo "init.svc.bluetoothd = $(getprop init.svc.bluetoothd)"
echo "init.svc.bt         = $(getprop init.svc.bt)"
echo "init.svc.hciattach  = $(getprop init.svc.hciattach)"

echo
echo "==================== 4) 栈 / HAL / 固件文件 ===================="
echo "--- /system/lib/hw ---"
ls -l /system/lib/hw 2>/dev/null | grep -i blue
echo "--- /system/etc/bluetooth ---"
ls -l /system/etc/bluetooth 2>/dev/null
echo "--- ★ bt_vendor.conf（最关键：端口/波特率/固件路径）---"
cat /system/etc/bluetooth/bt_vendor.conf 2>/dev/null || echo "(没有 bt_vendor.conf)"
echo "--- bt_stack.conf（前 40 行）---"
head -40 /system/etc/bluetooth/bt_stack.conf 2>/dev/null || echo "(没有 bt_stack.conf)"
echo "--- 其它 .conf ---"
for f in /system/etc/bluetooth/*.conf; do
  [ -f "$f" ] && echo "== $f ==" && head -20 "$f" 2>/dev/null
done
echo "--- /data/misc/bluetooth ---"
ls -l /data/misc/bluetooth 2>/dev/null
echo "--- /dev/socket 里的蓝牙 socket ---"
ls -l /dev/socket 2>/dev/null | grep -i blue
echo "--- 内核蓝牙模块是否编进内核/加载 ---"
ls /sys/module 2>/dev/null | grep -i blue
ls /sys/module 2>/dev/null | grep -i hci
cat /proc/cmdline 2>/dev/null
echo "--- 固件目录里像蓝牙的文件 ---"
ls /system/etc/firmware 2>/dev/null | grep -i bt
ls /system/etc/firmware 2>/dev/null | grep -i bcm
ls /system/etc/firmware 2>/dev/null | grep -i rtl
ls /system/etc/firmware 2>/dev/null | grep -i rtk
ls /vendor/firmware 2>/dev/null | grep -i bt
ls /etc/firmware 2>/dev/null | grep -i bt
echo "--- init.rc 里蓝牙相关行（只读）---"
grep -i blue /init.rc 2>/dev/null
grep -i hciattach /init.rc 2>/dev/null
grep -i blue /init.rc 2>/dev/null >/dev/null || echo "(/init.rc 读不到或无关键字)"
for f in /init.tcc.rc /init.rc /init.telechips.rc /init.tcc893x.rc; do
  [ -f "$f" ] && echo "== $f ==" && grep -i blue "$f" 2>/dev/null
done
echo "--- /system/etc/init.d ---"
ls -l /system/etc/init.d 2>/dev/null

echo
echo "==================== 5) 内核日志（需要 root）===================="
dmesg 2>/dev/null | grep -i hci | tail -30
dmesg 2>/dev/null | grep -i blue | tail -30
dmesg 2>/dev/null | grep -i ttyS | tail -20
dmesg 2>/dev/null | grep -i "bt_" | tail -20
dmesg 2>/dev/null | grep -i bcm | tail -20
dmesg 2>/dev/null | grep -i rtl | tail -20
dmesg 2>/dev/null | grep -i "hci_uart" | tail -20
if [ -z "$(dmesg 2>/dev/null | head -c 1)" ]; then
  echo "!! dmesg 无输出（无权限）。有 adb root 时再跑一次，这段是关键证据。"
fi

echo
echo "==================== 6) logcat 里的蓝牙报错（需要 root）===================="
logcat -d 2>/dev/null | grep -i blue | tail -40
logcat -d 2>/dev/null | grep -i hci | tail -20
logcat -d 2>/dev/null | grep -i "bt_" | tail -20

echo
echo "==================== 7) WiFi 芯片（用来反推蓝牙归属）===================="
echo "--- wifi 相关属性 ---"
getprop | grep -i wifi | head -20
echo "--- lsmod ---"
lsmod 2>/dev/null
echo "--- /sys/module 里的无线/蓝牙模块 ---"
ls /sys/module 2>/dev/null | grep -i wlan
ls /sys/module 2>/dev/null | grep -i cfg80211
ls /sys/module 2>/dev/null | grep -i bcm
ls /sys/module 2>/dev/null | grep -i rtl
ls /sys/module 2>/dev/null | grep -i sdio
ls /sys/module 2>/dev/null | grep -i 8723
ls /sys/module 2>/dev/null | grep -i 433
echo "--- dmesg 里的 WiFi 芯片型号 ---"
dmesg 2>/dev/null | grep -i wlan | tail -30
dmesg 2>/dev/null | grep -i sdio | tail -20
dmesg 2>/dev/null | grep -i cfg80211 | tail -10
echo "--- /proc/net/wireless ---"
cat /proc/net/wireless 2>/dev/null

echo
echo "==================== 8) 自动小结 ===================="
if [ -e /sys/class/bluetooth/hci0 ]; then
  echo "[HCI] 有 hci0 → 芯片/驱动已注册，问题在用户态栈 → 情况 A（可修，成功率高）"
else
  echo "[HCI] 无 hci0 → 没有任何 HCI 设备注册"
  if [ -e /sys/class/rfkill/rfkill0 ]; then
    echo "[HCI] 但 rfkill 有节点 → 芯片存在、被关或被占 → 情况 A'（先查 rfkill state）"
  else
    echo "[HCI] rfkill 也没有 → Android 侧没看到蓝牙射频 → 情况 B/C（芯片不在 SoC 或不给 Android）"
  fi
fi
echo "（把整段输出发回即可判读；本脚本不改任何东西）"
echo "==================== 完 ===================="
