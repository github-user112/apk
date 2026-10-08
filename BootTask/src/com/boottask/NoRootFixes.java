package com.boottask;

import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.PowerManager;

/**
 * v1.6.13：无 root 也能做的事。
 *
 * 背景：车机大部分是未 root 的量产 ROM（有的虽是 eng 版但 /system/xbin/su 不存在，
 * App 进程提不了权）。此前所有修复按钮都被 hasRoot 门禁拦住 —— 一按就返回
 * 「无 root，修复未执行」，App 等于只剩诊断。这里补上系统 API 层面（免 root、
 * 不需要任何特殊签名）就能做、且对「亿连 WiFi 直连速率低/掉线」真正有用的几件事。
 *
 * 原则（与 root 修复一致）：
 * - 不改系统分区、不写系统文件、不删任何东西；
 * - 全部可逆（release 锁 / 再启动一次 / 设置页手动切回）；
 * - 失败只是「没生效」，不会让车机或亿连变得更差。
 *
 * 免 root 能做的边界，说清楚：
 * 1) WiFi 高性能锁：framework 层禁止 wlan 进入省电/浅睡。对 STA 侧（手机）明确有效，
 *    车机是 P2P GO（AP 侧），驱动不一定买账 —— 所以只能说「值得一试」，不是等价替代。
 * 2) 重启亿连：killBackgroundProcesses 是普通权限，第三方 App 可用（对前台进程效果有限，
 *    所以先 kill 再拉起，必要时在系统设置里手动停一次）。
 * 3) 跳系统设置：蓝牙/WiFi/开发者选项这些只能人肉点，App 把门打开。
 * 4) 写不了 /etc/ec.conf（亿连画质/码率）—— 这是唯一真正需要 root 的 L1 手段，
 *    无 root 时退而求其次：用 adb 命令清单在电脑上执行（见 adbCommandSheet）。
 *
 * 编译约束同 MainActivity：不 import org.json；不引用 smali 类。
 */
public final class NoRootFixes {

    private NoRootFixes() {
    }

    /** 锁必须静态持有，方法返回后不能释放 —— 进程活着才有效 */
    private static WifiManager.WifiLock wifiLock;
    private static WifiManager.MulticastLock mcLock;

    /**
     * 免 root 版「关 WiFi 省电」：申请 FULL_HIGH_PERF WiFi 锁 + 组播锁。
     * 组播锁顺带解决 P2P 组里组播/广播包被丢（亿连的发现广播正是组播）。
     * 进程被杀即自动释放，无残留。
     */
    public static String wifiHighPerf(Context ctx) {
        StringBuilder rep = new StringBuilder();
        rep.append("[高性能WiFi锁] ");
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            if (wm == null) {
                rep.append("取不到 WifiManager，跳过");
                return done(ctx, rep);
            }
            if (wifiLock == null) {
                wifiLock = wm.createWifiLock(WifiManager.WIFI_MODE_FULL_HIGH_PERF, "boottask-p2p");
                wifiLock.setReferenceCounted(false);
            }
            wifiLock.acquire();
            rep.append("WiFi锁(高性能)=").append(wifiLock.isHeld() ? "已持有" : "未持有").append("; ");
            try {
                if (mcLock == null) {
                    mcLock = wm.createMulticastLock("boottask-mc");
                    mcLock.setReferenceCounted(false);
                }
                mcLock.acquire();
                rep.append("组播锁=").append(mcLock.isHeld() ? "已持有" : "未持有").append("; ");
            } catch (Throwable t) {
                rep.append("组播锁不可用(").append(t.getClass().getSimpleName()).append("); ");
            }
            // 顺手拿一个 CPU 唤醒锁：避免修复后车机屏灭导致 wlan 降档（车机常接 ACC，一般无所谓）
            try {
                PowerManager pm = (PowerManager) ctx.getSystemService(Context.POWER_SERVICE);
                PowerManager.WakeLock wl = pm.newWakeLock(
                        PowerManager.SCREEN_DIM_WAKE_LOCK | PowerManager.ACQUIRE_CAUSES_WAKEUP,
                        "boottask-perf");
                wl.acquire(10 * 60 * 1000L); // 10 分钟后自动释放，不留常驻耗电
                rep.append("CPU唤醒锁10分钟=已持有; ");
            } catch (Throwable ignored) {
            }
            int state = wm.getWifiState();
            rep.append("wifi_state=").append(state).append("(3=已开)");
            rep.append("\n说明：framework 层已禁止 wlan 省电。车机是 P2P GO(AP 侧)，")
                    .append("驱动不一定响应此锁 —— 投屏 15 分钟看还弹不弹速率低。")
                    .append("\nApp 进程被杀即自动释放，不会留残留。");
        } catch (Throwable t) {
            rep.append("失败: ").append(t);
        }
        return done(ctx, rep);
    }

    /** 释放上面拿到的锁（供「还原」用） */
    public static String wifiLockRelease(Context ctx) {
        StringBuilder rep = new StringBuilder();
        rep.append("[释放WiFi锁] ");
        try {
            if (wifiLock != null && wifiLock.isHeld()) {
                wifiLock.release();
            }
            if (mcLock != null && mcLock.isHeld()) {
                mcLock.release();
            }
            rep.append("已释放高性能锁与组播锁");
        } catch (Throwable t) {
            rep.append("失败: ").append(t);
        }
        return done(ctx, rep);
    }

    /** 免 root 重启亿连：先 kill 后台进程，再按 LAUNCHER intent 拉起（不用猜入口 Activity 名） */
    public static String restartYilian(Context ctx) {
        StringBuilder rep = new StringBuilder();
        rep.append("[重启亿连] ");
        try {
            android.app.ActivityManager am =
                    (android.app.ActivityManager) ctx.getSystemService(Context.ACTIVITY_SERVICE);
            am.killBackgroundProcesses("net.easyconn");
            try {
                Thread.sleep(1500L);
            } catch (Throwable ignored) {
            }
            Intent launch = ctx.getPackageManager().getLaunchIntentForPackage("net.easyconn");
            if (launch == null) {
                rep.append("已 kill，但拉不起（亿连可能未安装或无桌面入口），请手动打开");
                return done(ctx, rep);
            }
            launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            ctx.startActivity(launch);
            rep.append("已 kill 并重新拉起。")
                    .append("若亿连当时在前台，kill 可能不生效 —— 去「设置→应用→亿连→强行停止」再点本按钮。")
                    .append("\n注意：免 root 改不了 /etc/ec.conf，本按钮只是让亿连重新读一次现有配置。");
        } catch (Throwable t) {
            rep.append("失败: ").append(t);
        }
        return done(ctx, rep);
    }

    /** 打开亿连自身界面（它内部有设置/画质入口的话，可以人肉改，等效于免 root 的 L1） */
    public static String openYilian(Context ctx) {
        try {
            Intent launch = ctx.getPackageManager().getLaunchIntentForPackage("net.easyconn");
            if (launch == null) {
                return "未找到亿连（net.easyconn）";
            }
            launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            ctx.startActivity(launch);
            return "已打开亿连。看它设置里有没有「画质/分辨率/码率/兼容性」之类的开关 —— "
                    + "有的话人肉调低，效果等同于免 root 版的降码率。";
        } catch (Throwable t) {
            return "打开失败: " + t;
        }
    }

    /** 跳系统设置页（这些开关第三方 App 改不了，只能把门打开让人点） */
    public static String openSettings(Context ctx, int which) {
        String action;
        String name;
        switch (which) {
            case 1:
                action = android.provider.Settings.ACTION_WIFI_SETTINGS;
                name = "WLAN 设置";
                break;
            case 2:
                action = android.provider.Settings.ACTION_BLUETOOTH_SETTINGS;
                name = "蓝牙设置";
                break;
            case 3:
                action = android.provider.Settings.ACTION_DISPLAY_SETTINGS;
                name = "显示设置（休眠时间/亮度）";
                break;
            case 4:
                action = android.provider.Settings.ACTION_APPLICATION_DEVELOPMENT_SETTINGS;
                name = "开发者选项（保持唤醒/WiFi 相关）";
                break;
            default:
                action = android.provider.Settings.ACTION_SETTINGS;
                name = "系统设置";
                break;
        }
        try {
            Intent it = new Intent(action);
            it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            ctx.startActivity(it);
            return "已打开 " + name + "。改完回到亿连重连一次再测 15 分钟。";
        } catch (Throwable t) {
            return "打开失败(" + t + ")，请从车机桌面手动进设置";
        }
    }

    /**
     * root 命令清单：车机不 root、但电脑上 adb 可用的情况下，
     * 在 PC 上执行这些命令，效果与 App 里的按钮完全一致。
     * eng 版 ROM 的 adbd 通常直接就是 root，此时把命令里的 "su -c " 去掉即可。
     */
    public static String adbCommandSheet() {
        return "=== 电脑端 adb 执行清单（效果等同 App 按钮；全部重启车机即还原）===\n"
                + "先用 adb shell 后看提示符：# 表示已 root，命令里去掉 su -c；$ 表示要保留 su -c\n\n"
                + "# 0) 判断有没有 root\n"
                + "adb shell su -c id\n\n"
                + "# 1) 关 WiFi 省电（对应按钮：关 WiFi 省电）\n"
                + "adb shell su -c \"iw dev\"                       # 先看接口名，常见 wlan0 / p2p-wlan0-0\n"
                + "adb shell su -c \"iw dev wlan0 set power_save off\"\n"
                + "adb shell su -c \"iw dev wlan0 get power_save\"   # 回读确认 off\n\n"
                + "# 2) 亿连降码率（对应按钮：亿连修复①；改完必须重启亿连）\n"
                + "adb shell su -c \"printf 'mirror_width=1024\\nmirror_height=600\\nkeep_screen_bright=true\\n' > /etc/ec.conf\"\n"
                + "adb shell su -c \"chmod 644 /etc/ec.conf\"\n"
                + "adb shell cat /etc/ec.conf                      # 回读确认\n"
                + "adb shell am force-stop net.easyconn\n"
                + "adb shell monkey -p net.easyconn -c android.intent.category.LAUNCHER 1\n\n"
                + "# 3) CPU 锁 performance（对应按钮：系统修复①）\n"
                + "adb shell su -c \"cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor\"\n"
                + "adb shell su -c \"echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor\"\n\n"
                + "# 4) 关蓝牙（对应按钮：系统修复③）\n"
                + "adb shell su -c \"svc bluetooth disable\"\n"
                + "adb shell su -c \"settings get global bluetooth_on\"\n\n"
                + "# 5) 关 WiFi 后台常扫（方向别搞反：1=节流=扫描更少）\n"
                + "adb shell su -c \"settings put global wifi_scan_always_enabled 0\"\n"
                + "adb shell su -c \"settings put global wifi_scan_throttle_enabled 1\"\n\n"
                + "# 6) 全车还原（对应按钮：亿连修复⑤ + 系统修复②）\n"
                + "adb shell su -c \"rm -f /etc/ec.conf\"\n"
                + "adb shell su -c \"echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor\"\n"
                + "adb shell su -c \"svc bluetooth enable\"\n\n"
                + "=== 免 root 也能看的诊断（不需要 su）===\n"
                + "adb shell cat /proc/net/wireless            # 信号强度/丢包\n"
                + "adb shell cat /proc/net/dev                 # 各接口 errs/drop\n"
                + "adb shell dumpsys wifip2p                   # P2P 组/GO 信道（部分 ROM 需 root）\n"
                + "adb shell getprop | grep -i -E 'hardware|board|firmware'\n";
    }

    private static String done(Context ctx, StringBuilder rep) {
        BootDiagnostics.log(ctx, "NoRootFixes " + rep);
        return rep.toString();
    }
}
