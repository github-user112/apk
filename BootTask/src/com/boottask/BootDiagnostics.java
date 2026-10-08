package com.boottask;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class BootDiagnostics {
    private static final long MAX_LOG_BYTES = 524288L;

    /** v1.6：envRecon 的结果供后续段复用（单线程 capture 内使用，无并发问题） */
    private static String reconPackages = null;
    private static String reconPackages3 = null;
    private static boolean reconRoot = false;

    public static synchronized void log(Context context, String message) {
        String text = message == null ? "null" : message;
        Log.d("BootTask", text);
        try {
            File dir = logDir(context);
            if (dir == null) {
                return;
            }
            File file = new File(dir, "boottask.log");
            if (file.length() > MAX_LOG_BYTES) {
                File previous = new File(dir, "boottask.previous.log");
                previous.delete();
                if (!file.renameTo(previous)) {
                    file.delete();
                }
            }
            Writer writer = new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8");
            try {
                writer.write(new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.US).format(new Date()));
                writer.write(' ');
                writer.write(text);
                writer.write('\n');
                writer.flush();
            } finally {
                close(writer);
            }
        } catch (Throwable t) {
            Log.e("BootTask", "write diagnostic log failed: " + t);
        }
    }

    public static void capture(Context context) {
        log(context, "diagnostic snapshot requested");
        Writer writer = null;
        try {
            File dir = logDir(context);
            if (dir == null) {
                return;
            }
            File file = new File(dir, "diagnostic.txt");
            writer = new OutputStreamWriter(new FileOutputStream(file, false), "UTF-8");
            writer.write("BootTask diagnostic snapshot\n");
            writer.write("time=" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US).format(new Date()) + "\n");
            writer.write("package=" + context.getPackageName() + "\n");
            writer.write("sdk=" + Build.VERSION.SDK_INT + "\n");
            writer.write("android=" + Build.VERSION.RELEASE + "\n");
            writer.write("device=" + Build.MANUFACTURER + " " + Build.MODEL + "\n");
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            writer.write("version=" + packageInfo.versionName + " (" + packageInfo.versionCode + ")\n");
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            writer.write("enabled=" + applicationInfo.enabled + "\n");
            writer.write("filesDir=" + context.getFilesDir().getAbsolutePath() + "\n");
            writer.write("rules=" + context.getSharedPreferences("rules", 0).getString("list", "[]") + "\n");
            writer.write("\n--- env recon (v1.4) ---\n");
            writer.flush();
            envRecon(writer);
            writer.write("\n--- hardware & network recon (v1.6) ---\n");
            writer.flush();
            String rootLogcat = hwRecon(writer, reconRoot,
                    new java.io.File(context.getFilesDir(), "log" + java.io.File.separator + "prev_counters.txt"));
            writer.write("\n--- yilian recon (v1.6) ---\n");
            writer.flush();
            yilianRecon(writer, reconPackages + "\n" + reconPackages3, reconRoot, rootLogcat);
            writer.write("\n--- repair history (v1.6.6) ---\n");
            writer.flush();
            section(writer, "一键修复历史 (QuickRepair)", QuickRepair.readRepairHistory(context));
            writer.write("\n--- boot audio recon (v1.6.9) ---\n");
            writer.flush();
            bootAudioRecon(writer);
            writer.write("\n--- mcu / audio-source recon (v1.6.11) ---\n");
            writer.flush();
            mcuRecon(writer, reconPackages + "\n" + reconPackages3);
            writer.write("\n--- filtered logcat ---\n");
            writer.flush();
            dumpLogcat(writer);
        } catch (Throwable t) {
            Log.e("BootTask", "capture diagnostic log failed: " + t);
            if (writer != null) {
                try {
                    writer.write("\ncapture failed: " + t + "\n");
                    writer.flush();
                } catch (Throwable ignored) {
                }
            }
        } finally {
            close(writer);
        }
    }

    /** 环境侦查：识别车机上的音源/蓝牙/MCU 相关 app、root 可用性、串口设备。逐段容错。 */
    private static void envRecon(Writer writer) {
        // 1. 系统属性全量（识别平台/厂商）
        section(writer, "getprop", AdvActions.run(new String[]{"getprop"}, 8000L, 16384));

        // 2. 进程表（找出多媒体/收音机/MCU 守护进程名）
        section(writer, "ps", AdvActions.run(new String[]{"ps"}, 8000L, 16384));

        // 3. 全部包 + APK 路径（认出 vendor 音源 app 及其 APK 位置，后续可导出反编译）
        String packages = AdvActions.run(new String[]{"pm", "list", "packages", "-f"}, 15000L, 262144);
        reconPackages = packages;
        section(writer, "pm list packages -f", packages);
        // v1.6.1: -f 输出可能超长被截断（MuMu 实测在 PrintSpooler 处截掉第三方段），
        // 第三方包单独存一份给 yilianRecon 用
        String packages3 = AdvActions.run(new String[]{"pm", "list", "packages", "-3"}, 10000L, 65536);
        reconPackages3 = packages3;
        section(writer, "pm list packages -3", packages3);

        // 4. root 探测
        String suId = AdvActions.run(new String[]{"su", "-c", "id"}, 8000L, 4096);
        reconRoot = suId != null && suId.contains("uid=0");
        section(writer, "su probe (uid=0 => root)", suId == null ? "SU UNAVAILABLE" : suId);

        if (reconRoot) {
            section(writer, "su ls /dev (找串口/mcu 设备)",
                    AdvActions.run(new String[]{"su", "-c", "ls -l /dev"}, 10000L, 32768));
            section(writer, "su getenforce",
                    AdvActions.run(new String[]{"su", "-c", "getenforce"}, 5000L, 1024));
            section(writer, "su ls /system/app",
                    AdvActions.run(new String[]{"su", "-c", "ls /system/app"}, 10000L, 16384));
        }

        // 5. 候选音源 app 的包详情（广播接收器/服务意图最可能藏在这里）
        dumpCandidates(writer, packages, reconRoot);
    }

    /**
     * v1.6 硬件与网络侦查：能免 root 读的尽量读全（CPU/内存/内核/存储/网卡/无线状态），
     * root 可用再补 dumpsys wifi/connectivity 与全量 logcat（按 WiFi 关键行过滤）。
     *
     * @return root logcat 全文（无 root 返回 null），供 yilianRecon 复用，避免 logcat 跑两遍
     */
    private static String hwRecon(Writer writer, boolean root, java.io.File prevCountersFile) {
        // ---- 硬件：CPU / 内存 / 内核 / 存储 ----
        section(writer, "/proc/cpuinfo (CPU/芯片平台)", readSmall("/proc/cpuinfo", 12288));
        section(writer, "/proc/meminfo (内存，前 6 行)", headLines(readSmall("/proc/meminfo", 8192), 6));
        section(writer, "/proc/version (内核版本)", readSmall("/proc/version", 4096));
        section(writer, "df (存储分区余量)", AdvActions.run(new String[]{"df"}, 8000L, 8192));

        // ---- 网络：接口 / 路由 / 无线状态（全部免 root 可读）----
        String wireless = readSmall("/proc/net/wireless", 8192);
        String netdev = readSmall("/proc/net/dev", 8192);
        section(writer, "/proc/net/wireless (信号强度/链路质量)", wireless);
        section(writer, "/proc/net/dev (各网卡收发流量)", netdev);
        String ipAddr = AdvActions.run(new String[]{"ip", "addr"}, 8000L, 16384);
        if (ipAddr == null || ipAddr.length() == 0) {
            section(writer, "netcfg (ip 不可用时的替代)",
                    AdvActions.run(new String[]{"netcfg"}, 8000L, 8192));
        } else {
            section(writer, "ip addr (网卡/IP，看 P2P 组 192.168.49.x 是否存在)", ipAddr);
        }
        String ipRoute = AdvActions.run(new String[]{"ip", "route"}, 8000L, 8192);
        if (ipRoute == null || ipRoute.length() == 0) {
            section(writer, "/proc/net/route (路由表)",
                    AdvActions.run(new String[]{"cat", "/proc/net/route"}, 8000L, 4096));
        } else {
            section(writer, "ip route (路由，看默认网关指向哪个网卡)", ipRoute);
        }

        // ---- v1.6.16: P2P 角色 + 单射频双连检测（10-01 车机日志实锤的断联机制）----
        p2pRoleAndDualLink(writer, ipAddr);

        // ---- v1.6.19: SoftAP 热点能力探测（车机有热点菜单但手机搜不到 → 定位挂在哪一层）----
        softapProbe(writer, ipAddr);

        // ---- v1.6.2 计数器双采样：与上次快照 diff 增量，复现断连前后各开一次日志页即可看丢包速度 ----
        counterDiff(writer, prevCountersFile, wireless, netdev);
        // ---- v1.6.3: ARP 邻居表（对端可达性状态 STALE/REACHABLE/FAILED）——免 root ----
        section(writer, "ip neigh (ARP 表, 对端手机可达状态; FAILED=链路已不通)",
                AdvActions.run(new String[]{"ip", "neigh"}, 8000L, 8192));

        // ---- v1.6.4: CPU 链仪表——「解码器劣化→调度延迟→RTT 虚高」的直接判据 ----
        StringBuilder cpui = new StringBuilder();
        cpui.append("loadavg = ").append(readSmall("/proc/loadavg", 256).trim()).append('\n');
        for (int i = 0; i < 4; i++) {
            String f = readSmall("/sys/devices/system/cpu/cpu" + i + "/cpufreq/scaling_cur_freq", 256);
            if (f != null && f.length() > 0 && f.indexOf("unreadable") < 0) {
                cpui.append("cpu").append(i).append(" cur_freq = ").append(f.trim()).append(" KHz\n");
            }
        }
        for (int i = 0; i < 8; i++) {
            String t = readSmall("/sys/class/thermal/thermal_zone" + i + "/temp", 256);
            if (t != null && t.length() > 0 && t.indexOf("unreadable") < 0) {
                cpui.append("thermal_zone").append(i).append(" temp = ").append(t.trim()).append(" (x0.1°C)\n");
            }
        }
        // ---- v1.6.12: governor（ROM 若设成 powersave，几分钟后压频 → 整机卡 → RTT 虚高）----
        for (int i = 0; i < 4; i++) {
            String g = readSmall("/sys/devices/system/cpu/cpu" + i + "/cpufreq/scaling_governor", 256);
            if (g != null && g.length() > 0 && g.indexOf("unreadable") < 0) {
                cpui.append("cpu").append(i).append(" governor = ").append(g.trim()).append('\n');
            }
        }
        String avail = readSmall("/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors", 512);
        if (avail != null && avail.length() > 0 && avail.indexOf("unreadable") < 0) {
            cpui.append("available_governors = ").append(avail.trim()).append('\n');
        }
        String minF = readSmall("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq", 256);
        String maxF = readSmall("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq", 256);
        cpui.append("cpu0 min/max = ").append(minF == null ? "?" : minF.trim())
                .append(" / ").append(maxF == null ? "?" : maxF.trim()).append(" KHz\n");
        section(writer, "CPU 频率/负载/温度 (对比 A/B 两次: 频率掉+温度高+负载满 = 解码降频实锤; "
                + "计数器不涨但 RTT 烂 = 网络是清白的, RTT 是 CPU 延迟)", cpui.toString());
        section(writer, "top 快照 (CPU 占用排行, 看亿连解码/渲染进程是否饱和)",
                AdvActions.run(new String[]{"top", "-n", "1"}, 12000L, 16384));

        // ---- v1.6.12: 系统开关——蓝牙抢 2.4G / WiFi 后台扫描 / ROM 省电策略 ----
        // settings 命令在 4.4 上对普通 App 可能报权限错，属预期，段里留原文即可
        section(writer, "系统开关 (蓝牙 / WiFi扫描 / 休眠 / 息屏)",
                settingsSnapshot());

        // ---- root 才能拿到的深度信息 ----
        if (!root) {
            section(writer, "wifi 深度诊断 (root)", "(no root, 跳过 dumpsys/logcat; 上面免 root 段仍有效)");
            return null;
        }
        // ---- v1.6.2 GO 省电探测：GO 侧 power_save=on 会把 ping RTT 顶到 100-500ms（亿连 200ms 阈值正好撞上）----
        section(writer, "iw dev (无线接口列表/类型, P2P-GO 角色确认)",
                AdvActions.run(new String[]{"su", "-c", "iw dev"}, 8000L, 8192));
        String ps = AdvActions.run(new String[]{"su", "-c", "iw wlan0 get power_save"}, 6000L, 2048);
        if (ps == null || ps.length() == 0 || ps.indexOf("power_save") < 0) {
            // 4.4 的 GO 接口名通常是 p2p-wlan0-0
            ps = AdvActions.run(new String[]{"su", "-c", "iw p2p-wlan0-0 get power_save"}, 6000L, 2048);
        }
        if (ps == null || ps.length() == 0) {
            ps = "(iw 不可用或无此接口; 可试: su -c iw wlan0 get power_save)";
        } else if (ps.indexOf("on") >= 0) {
            ps = ps + "\n>>> power_save=on: GO 省电会让 RTT 周期性飙高(亿连 200ms 阈值正好撞上)。\n>>> 复测: su -c iw wlan0 set power_save off ; su -c iw p2p-wlan0-0 set power_save off";
        }
        section(writer, "GO 省电状态 (power_save)", ps);
        // ---- v1.6.3: DHCP 租约表——「连接 5-10 分钟才断」的头号嫌疑是 T1 续租(600s 租约在 300s 续)----
        section(writer, "dnsmasq.leases (DHCP 租约表, 看租约秒数与到期时刻; 第4列=剩余租约)",
                AdvActions.run(new String[]{"su", "-c", "cat /data/misc/dhcp/dnsmasq.leases"}, 6000L, 4096)
                        + "\n(若空/不存在, 试: su -c ls /data/misc/dhcp/)"
                        + "\n(判读: 断连时刻≈连接后第 300s => T1 续租问题; 租约若是其他值, T1=租约/2)");
        section(writer, "su dumpsys wifi (连接/RSSI/速率/信道/P2P 状态)",
                filterLines(AdvActions.run(new String[]{"su", "-c", "dumpsys wifi"}, 15000L, 262144),
                        WIFI_DUMP_KEYS, 300));
        // ---- v1.6.12: P2P GO 信道（与手机侧 WiFi 分析仪看到的信道对比 → 驱动 channel 跟随 bug）----
        section(writer, "su dumpsys wifip2p (GO 角色/组名/信道 freq; 与手机侧看到的信道对比)",
                filterLines(AdvActions.run(new String[]{"su", "-c", "dumpsys wifip2p"}, 15000L, 131072),
                        P2P_DUMP_KEYS, 120));
        section(writer, "su dumpsys connectivity (网络状态)",
                filterLines(AdvActions.run(new String[]{"su", "-c", "dumpsys connectivity"}, 15000L, 131072),
                        NET_DUMP_KEYS, 200));
        String logcat = AdvActions.run(new String[]{"su", "-c", "logcat -d -v time"}, 25000L, 2097152);
        section(writer, "wifi/p2p 关键日志 (root logcat 过滤)", filterLines(logcat, WIFI_LOG_KEYS, 400));
        return logcat;
    }

    /**
     * v1.6 亿连运行时侦查：从包列表里认出亿连（关键词宽松，宁多勿漏），
     * 逐个 dump 版本/uid/组件；root 时再看运行中的进程/服务、该 uid 的网络连接、logcat 里它的日志行。
     */
    private static void yilianRecon(Writer writer, String packages, boolean root, String logcat) {
        String[] cand = pickPackages(packages, YILIAN_KEYS, 5);
        StringBuilder head = new StringBuilder();
        if (cand.length == 0) {
            head.append("(no package matched keywords; 请把上面 pm list packages -3 段发回人工确认亿连包名)");
        } else {
            for (int i = 0; i < cand.length; i++) {
                head.append(cand[i]).append('\n');
            }
        }
        section(writer, "亿连候选包", head.toString());

        for (int i = 0; i < cand.length; i++) {
            String pkg = cand[i];
            String dump;
            if (root) {
                dump = AdvActions.run(new String[]{"su", "-c", "dumpsys package " + pkg}, 15000L, 131072);
            } else {
                dump = AdvActions.run(new String[]{"pm", "dump", pkg}, 12000L, 65536);
            }
            section(writer, "亿连包详情 " + pkg + " (版本/uid/组件)", filterLines(dump, PKG_KEYS, 80));
            if (!root) {
                continue;
            }
            section(writer, "亿连运行状态 " + pkg + " (ProcessRecord/ServiceRecord)",
                    filterLines(AdvActions.run(new String[]{"su", "-c", "dumpsys activity processes"},
                            15000L, 262144), procKeys(pkg), 120));
            String uid = extractUid(dump);
            if (uid != null) {
                section(writer, "亿连网络连接 (uid=" + uid + ", /proc/net/{tcp,udp,tcp6,udp6})",
                        netForUid(uid, 60));
            }
            if (logcat != null) {
                section(writer, "亿连运行日志 " + pkg + " (root logcat 过滤)",
                        filterLines(logcat, logKeys(pkg), 250));
            }
        }
        // ---- v1.6.5: 手册合并——亿连自身的 4 个日志源（TAG EasyConn/ecsdk/EC_DECODE + 文件日志）----
        if (logcat != null) {
            section(writer, "亿连 RTT/解码关键行 (EasyConn: Ping ip / EC_DECODE: cost time / 断连事件)",
                    filterLines(logcat, YILIAN_LOG_KEYS, 300));
        }
        section(writer, "ec.conf (亿连配置, /etc/ec.conf; 降码率 mirror_width/height 改这里, 免重打包)",
                AdvActions.run(new String[]{"cat", "/etc/ec.conf"}, 6000L, 4096)
                        + "\n(不存在=未定制, 亿连走默认值; keys: mirror_width mirror_height video_codec_name keep_screen_bright)");
        // App 文件日志 /sdcard/logger/logs_*.csv (StandMainActivity.onCreate 无条件开启, 500KB 轮转)
        String loggerDir = AdvActions.run(new String[]{"ls", "-la", "/sdcard/logger"}, 6000L, 8192);
        section(writer, "亿连文件日志目录 /sdcard/logger (存在即可 root tail 最新 csv)", loggerDir);
        if (root && loggerDir != null && loggerDir.indexOf("logs_") >= 0) {
            String newest = newestLoggerCsv(loggerDir);
            if (newest != null) {
                String tail = AdvActions.run(new String[]{"su", "-c", "tail -n 300 /sdcard/logger/" + newest},
                        12000L, 131072);
                section(writer, "亿连文件日志尾部 " + newest + " (最新 300 行)", tail);
            }
        }
    }

    /** 从 ls -la 输出里挑字典序最大的 logs_*.csv（文件名含时间戳，字典序=时间序） */
    private static String newestLoggerCsv(String lsOutput) {
        String[] lines = lsOutput.split("\n");
        String best = null;
        for (int i = 0; i < lines.length; i++) {
            String[] parts = lines[i].trim().split("\\s+");
            String name = parts.length > 0 ? parts[parts.length - 1] : "";
            if (name.startsWith("logs_") && name.endsWith(".csv")
                    && (best == null || name.compareTo(best) > 0)) {
                best = name;
            }
        }
        return best;
    }

    // ---------------------------------------------------------------- v1.6 helpers

    private static final String[] WIFI_DUMP_KEYS = {
            "Wi-Fi is", "mWifiInfo", "RSSI", "Link speed", "linkspeed", "Frequency", "SSID",
            "mNetworkInfo", "supplicant", "P2P", "p2p", "curState", "Frequency"};
    private static final String[] NET_DUMP_KEYS = {
            "Active default network", "NetworkAgentInfo", "type: WIFI", "CONNECTED/CONNECTED",
            "SignalStrength", "isAvailable"};
    private static final String[] WIFI_LOG_KEYS = {
            "wifi", "wlan", "p2p", "direct-", "rssi", "disconnect", "deauth", "wpa_supplicant",
            "dhcp", "netd", "reason=", "linkspeed"};
    /** 4.4 的 settings 命令只支持 get/put（实测 `settings list` 直接打 usage 报错），
     *  所以逐个键 get。蓝牙抢 2.4G、WiFi 后台常扫、息屏休眠、ROM 省电策略全靠这几个键。 */
    private static String settingsSnapshot() {
        String[] gKeys = {"bluetooth_on", "wifi_on", "wifi_scan_always_enabled",
                "wifi_scan_throttle_enabled", "airplane_mode_on", "adb_enabled", "stay_on_while_plugged_in"};
        String[] sKeys = {"screen_off_timeout", "wifi_sleep_policy", "power_sounds_enabled",
                "lockscreen.disabled"};
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < gKeys.length; i++) {
            sb.append("global ").append(gKeys[i]).append(" = ")
                    .append(oneLine(settingsGet("global", gKeys[i]))).append('\n');
        }
        for (int i = 0; i < sKeys.length; i++) {
            sb.append("system ").append(sKeys[i]).append(" = ")
                    .append(oneLine(settingsGet("system", sKeys[i]))).append('\n');
        }
        sb.append("\n判读: bluetooth_on=1 且投屏掉线 → 先做「关蓝牙」对照实验（2.4G 与 WLAN 争抢）;\n")
                .append("wifi_scan_always_enabled=1 → 关掉（系统修复菜单⑤）;\n")
                .append("screen_off_timeout 很小 + ROM 省电 → 投屏时保持亮屏。");
        return sb.toString();
    }

    /** 4.4 上普通 App 调 settings provider 会被 SecurityException 拒（实测），
     *  所以先直连、被拒再用 su 取一遍。两者都失败时把原文留下（便于判断原因）。 */
    private static String settingsGet(String ns, String key) {
        String v = AdvActions.run(new String[]{"settings", "get", ns, key}, 6000L, 1024);
        boolean denied = v == null || v.length() == 0 || v.indexOf("Permission") >= 0
                || v.indexOf("SecurityException") >= 0 || v.indexOf("Error while accessing") >= 0;
        if (denied && reconRoot) {
            // 只在确认有 root 时才走 su —— 无 root 设备上 su 每次都要等到超时，11 个键会把快照拖垮
            String su = AdvActions.run(new String[]{"su", "-c",
                    "settings get " + ns + " " + key}, 8000L, 1024);
            if (su != null && su.length() > 0 && su.indexOf("Permission") < 0
                    && su.indexOf("Error while accessing") < 0) {
                return su;
            }
        }
        return denied ? "(无权限读取，需 root)" : v;
    }

    private static String oneLine(String s) {
        if (s == null) {
            return "null";
        }
        String r = s.replace('\n', ' ').trim();
        return r.length() > 120 ? r.substring(0, 120) : r;
    }

    /** 过滤为空时回退成原文前 400 字符——4.4 上 settings 命令常因权限返回错误串，
     *  只看「no lines matched」会误以为系统里没有这些开关 */
    private static String filterOrRaw(String raw, String[] keys, int limit) {
        String f = filterLines(raw, keys, limit);
        if (f == null || f.length() == 0 || f.indexOf("no lines matched") >= 0) {
            if (raw == null) {
                return "(null)";
            }
            return "(无命中，原文前 400 字符)\n" + (raw.length() > 400 ? raw.substring(0, 400) : raw);
        }
        return f;
    }

    /** v1.6.12: 系统开关——蓝牙抢 2.4G / WiFi 后台扫描 / ROM 省电策略 */
    private static final String[] SETTINGS_KEYS = {
            "bluetooth_on", "bluetooth", "wifi_scan", "wifi_sleep", "wifi_idle",
            "screen_off", "stay_on", "power", "sleep", "scan", "airplane", "adb_enabled"};
    /** v1.6.12: P2P GO 组/信道（两端信道不一致 = 驱动 channel 跟随 bug） */
    private static final String[] P2P_DUMP_KEYS = {
            "P2p", "p2p", "Group", "group", "channel", "Channel", "freq", "Freq",
            "GO", "owner", "Owner", "SSID", "Interface", "WifiP2p", "discovery"};
    private static final String[] YILIAN_KEYS = {
            "yilian", "easyconn", "easyc", "carbit", "carconn", "ylink", "lian"};
    /** v1.6.5: 亿连自身日志的关键行（TAG EasyConn/ecsdk/EC_DECODE），来自 V7.0.1 手册 */
    private static final String[] YILIAN_LOG_KEYS = {
            "easyconn", "ecsdk", "ec_decode", "ping ip", "cost time", "outputindextime",
            "mmirrordropped", "value is lost", "header failed", "data inavailable",
            "ondisconnect", "onmirrorrequestreconnect", "heartbeat request already pending",
            "onphoneappexited", "ctrl socket", "data socket"};

    // ---------------------------------------------------------------- v1.6.2 计数器双采样

    private static final String[] DEV_LABELS = {
            "rx_bytes", "rx_packets", "rx_errs", "rx_drop", "rx_fifo", "rx_frame", "rx_compr", "rx_multi",
            "tx_bytes", "tx_packets", "tx_errs", "tx_drop", "tx_fifo", "tx_colls", "tx_carrier", "tx_compr"};

    /** v1.6.2: /proc/net/{wireless,dev} 与上次快照 diff 增量，然后把本次存为 prev */
    /**
     * v1.6.16 从 ip addr 文本判读两件事：
     * ① P2P 组是否存在、车机角色（自己拿 192.168.49.1 = GO；别的地址 = client，GO 是手机）；
     * ② 单射频双连：组活跃时 wlan0 还有 carrier/IP —— TCC893x 单射频做异信道并发，
     *    RTT 尖刺（亿连 ping >200ms×3 → 弹「速率低」）→ 驱动拆组（断联）。
     *    10-01 实测时间线：08:50:15 wlan0 DHCP 到第三方热点 → 08:52:41 P2P 组消失。
     */
    private static void p2pRoleAndDualLink(Writer writer, String ipAddr) {
        StringBuilder b = new StringBuilder();
        try {
            String groupIface = null, groupIp = null, wlanIp = null;
            boolean wlanCarrier = false;
            if (ipAddr == null || ipAddr.length() == 0) {
                b.append("(ip addr 不可用，无法判读)\n");
            } else {
                String[] lines = ipAddr.split("\n");
                String cur = null;
                for (int i = 0; i < lines.length; i++) {
                    String l = lines[i];
                    String t = l.trim();
                    if (t.length() > 1 && Character.isDigit(t.charAt(0)) && t.charAt(1) == ':') {
                        // 形如 "6: wlan0: <FLAGS> ..." —— 取接口名
                        int c1 = t.indexOf(':');
                        int c2 = t.indexOf(':', c1 + 1);
                        cur = (c2 > c1 ? t.substring(c1 + 1, c2) : "").trim();
                        wlanCarrier = t.indexOf("NO-CARRIER") < 0 && t.indexOf("LOWER_UP") >= 0;
                        continue;
                    }
                    if (t.startsWith("inet ") && cur != null) {
                        String[] parts = t.split("\\s+");
                        if (parts.length > 1) {
                            String ip = parts[1];
                            if (cur.startsWith("p2p") && ip.startsWith("192.168.49.")) {
                                groupIface = cur;
                                groupIp = ip;
                            } else if (cur.equals("wlan0") && wlanIp == null) {
                                wlanIp = ip;
                            }
                        }
                    }
                }
            }
            if (groupIp == null) {
                b.append("P2P 组：当前不存在（未连接 / 已断开 / 未用直连）\n");
            } else {
                boolean isGo = groupIp.startsWith("192.168.49.1/");
                b.append("P2P 组：活跃，接口=").append(groupIface)
                        .append(" 本机IP=").append(groupIp)
                        .append(isGo ? "  → 车机是 GO（SoftAP 在车机上跑，TCC893x 负担大）"
                                     : "  → 车机是 client（GO 是手机 192.168.49.1）")
                        .append('\n');
            }
            b.append("wlan0：").append(wlanIp != null ? "已连 AP，IP=" + wlanIp
                    : (wlanCarrier ? "有 carrier 但无 IP" : "未关联（NO-CARRIER）")).append('\n');
            if (groupIp != null && (wlanIp != null || wlanCarrier)) {
                b.append("\n⚠⚠ 单射频双连实锤：P2P 组与 wlan0 同时活跃！TCC893x 只有一颗射频，\n")
                        .append("异信道并发会产生延迟尖刺（亿连 ping 超标 → 弹「WLAN 速率低」），\n")
                        .append("随后驱动可能直接拆组（断联）。10-01 日志已实锤此机制。\n")
                        .append("→ 立即处理：关掉手机热点 / 车机 WiFi 里取消保存会自动重连的热点网络。\n");
            }
            b.append("role/dual-link 判读结束\n");
        } catch (Throwable t) {
            b.append("(判读异常: ").append(t).append(")\n");
        }
        section(writer, "P2P 角色 + 双连判读 (v1.6.16, 依据 10-01 断联实锤自动分析)", b.toString());
    }

    /**
     * v1.6.19: SoftAP（车机开热点）能力探测。
     * 背景：车机设置里有「网络共享与便携式热点」菜单，但打开后手机搜不到热点。
     * 三层定位（全部免 root）：
     *   ① 服务层 —— init.svc.softap / hostapd 属性是否出现且 running；
     *   ② 组件层 —— /system/bin/hostapd 二进制与配置文件是否存在；
     *   ③ 接口层 —— netcfg / ip addr 里有没有 AP 接口（wl0.1/swlan0/ap0）拿到 192.168.43.x。
     * 抓日志时请把车机热点开关保持在「开」的状态，判读才有效。
     */
    private static void softapProbe(Writer writer, String ipAddr) {
        StringBuilder b = new StringBuilder(2048);
        try {
            // ① 服务/属性层
            String props = AdvActions.run(new String[]{"getprop"}, 8000L, 16384);
            StringBuilder apProps = new StringBuilder();
            boolean svcRunning = false;
            if (props != null) {
                String[] lines = props.split("\n");
                for (int i = 0; i < lines.length; i++) {
                    String low = lines[i].toLowerCase(Locale.US);
                    if (low.indexOf("softap") >= 0 || low.indexOf("hostapd") >= 0
                            || low.indexOf("tether") >= 0 || low.indexOf("wifi.ap") >= 0) {
                        apProps.append(lines[i]).append('\n');
                        if (low.indexOf("init.svc.") >= 0 && low.indexOf("]: [running") >= 0) {
                            svcRunning = true;
                        }
                    }
                }
            }
            b.append("① AP 相关系统属性:\n")
                    .append(apProps.length() > 0 ? apProps
                            : "(一条都没有 —— 热点服务从未被启动过，菜单八成是空壳)\n");

            // ② 组件层：hostapd 二进制与配置（/system 免 root 可读）
            b.append("\n② hostapd 二进制与配置:\n")
                    .append(AdvActions.run(new String[]{"ls", "-l",
                            "/system/bin/hostapd", "/system/bin/hostapd_cli",
                            "/system/etc/hostapd.conf", "/data/misc/wifi/hostapd.conf",
                            "/data/misc/dhcp"}, 8000L, 4096)).append('\n');

            // ③ 接口层
            String netcfg = AdvActions.run(new String[]{"netcfg"}, 8000L, 8192);
            b.append("\n③ netcfg (找 wl0.1/swlan0/ap0 等 AP 接口; 192.168.43.x = Android 热点默认网段):\n")
                    .append(netcfg == null ? "(null)" : netcfg).append('\n');
            String all = (netcfg == null ? "" : netcfg) + "\n"
                    + (ipAddr == null ? "" : ipAddr);
            String lowAll = all.toLowerCase(Locale.US);
            boolean apIface = lowAll.indexOf("wl0.1") >= 0 || lowAll.indexOf("swlan0") >= 0
                    || lowAll.indexOf("ap0") >= 0 || all.indexOf("192.168.43.") >= 0;

            // ---- 自动判读 ----
            b.append("\n判读:\n");
            if (svcRunning && apIface) {
                b.append("热点服务在跑、AP 接口已拿到地址 → 车机侧其实是好的，手机搜不到是射频侧问题：\n")
                        .append("  - 热点在 5GHz 或 13 信道而手机只扫 2.4G 1-11 信道 → 改热点频段设置为 2.4G 再试\n")
                        .append("  - 或 SSID 是隐藏的 → 手动添加网络输 SSID/密码\n");
            } else if (svcRunning && !apIface) {
                b.append("⚠ 热点服务启动了，但没有任何 AP 接口拿到地址 → 驱动 AP 模式起失败\n")
                        .append("  （bcmdhd 的 softap 需要 wl0.1 虚接口，起不来=驱动/固件不含 AP 功能），菜单点了也白点。\n");
            } else if (!svcRunning && apIface) {
                b.append("AP 接口存在但服务属性没看到 running → 看上面①的属性原文再定（少见）。\n");
            } else {
                b.append("⚠ 系统里没有任何 softap/hostapd 服务在跑、也没有 AP 接口 →\n")
                        .append("  这台 ROM 的「便携式热点」菜单是摆设（没编译配套服务），起不来属正常，不是操作问题。\n")
                        .append("  → 热点模式请走已验证的路：手机开热点(2.4G) → 车机连（9-24 实测 100% 通）。\n");
            }
            b.append("（注意: 此段要在车机热点开关保持打开时抓才有判读价值）\n");
        } catch (Throwable t) {
            b.append("(探测异常: ").append(t).append(")\n");
        }
        section(writer, "SoftAP 热点能力探测 (v1.6.19, 车机热点菜单打开后抓此日志定位搜不到的原因)",
                b.toString());
    }

    private static void counterDiff(Writer writer, java.io.File prevFile, String wireless, String netdev) {        String prev = null;
        try {
            if (prevFile != null && prevFile.exists() && prevFile.length() > 0) {
                prev = readSmall(prevFile.getAbsolutePath(), 16384);
            }
        } catch (Throwable ignored) {
        }
        section(writer, "计数器增量 vs 上次快照 (复现断连前后各开一次日志页; errs/drop 涨得快=链路在丢)",
                diffCounters(prev, wireless, netdev));
        try {
            if (prevFile != null) {
                java.io.File parent = prevFile.getParentFile();
                if (parent != null && !parent.exists()) {
                    parent.mkdirs();
                }
                java.io.FileWriter fw = new java.io.FileWriter(prevFile);
                fw.write("=== wireless ===\n" + (wireless == null ? "" : wireless)
                        + "\n=== dev ===\n" + (netdev == null ? "" : netdev));
                fw.close();
            }
        } catch (Throwable t) {
            Log.e("BootTask", "save prev counters failed: " + t);
        }
    }

    private static String diffCounters(String prev, String wireless, String netdev) {
        if (prev == null || prev.length() == 0) {
            return "(无上次快照，本次为基准。复现断连后再开一次日志页，增量即两次之间的丢包/收发速度)";
        }
        String prevWireless = extractBlock(prev, "wireless");
        String prevDev = extractBlock(prev, "dev");
        StringBuilder sb = new StringBuilder();
        sb.append("[wireless: 列=level等无固定标签, 只看数值变化] ").append(diffOne(prevWireless, wireless, null));
        sb.append("[dev] ").append(diffOne(prevDev, netdev, DEV_LABELS));
        return sb.toString();
    }

    /** 从保存的快照文本里取 === name === 段 */
    private static String extractBlock(String snap, String name) {
        if (snap == null) {
            return null;
        }
        int s = snap.indexOf("=== " + name + " ===");
        if (s < 0) {
            return null;
        }
        s += ("=== " + name + " ===").length();
        int e = snap.indexOf("=== ", s);
        return e > s ? snap.substring(s, e) : snap.substring(s);
    }

    private static String diffOne(String prev, String curr, String[] labels) {
        java.util.Map<String, long[]> pm = parseCounters(prev);
        java.util.Map<String, long[]> cm = parseCounters(curr);
        if (cm.isEmpty()) {
            return "(本次无可读计数, 可能 /proc 不可读)\n";
        }
        StringBuilder sb = new StringBuilder();
        java.util.Iterator<java.util.Map.Entry<String, long[]>> it = cm.entrySet().iterator();
        while (it.hasNext()) {
            java.util.Map.Entry<String, long[]> en = it.next();
            String ifc = en.getKey();
            long[] c = en.getValue();
            long[] p = pm.get(ifc);
            if (p == null) {
                sb.append(ifc).append(": (上次快照中无此接口)\n");
                continue;
            }
            StringBuilder d = new StringBuilder();
            for (int i = 0; i < c.length && i < p.length; i++) {
                long delta = c[i] - p[i];
                if (delta != 0) {
                    if (labels != null && i < labels.length) {
                        d.append(labels[i]).append('+').append(delta).append(' ');
                    } else {
                        d.append("c").append(i + 1).append('+').append(delta).append(' ');
                    }
                }
            }
            if (d.length() > 0) {
                sb.append(ifc).append(": ").append(d).append('\n');
            }
        }
        if (sb.length() == 0) {
            return "(与上次快照相比计数无变化)\n";
        }
        return sb.append('\n').toString();
    }

    /** 解析 "iface: v1 v2 ..." 行为 iface -> long[]（非数字列跳过） */
    private static java.util.Map<String, long[]> parseCounters(String text) {
        java.util.Map<String, long[]> m = new java.util.HashMap<String, long[]>();
        if (text == null || text.length() == 0) {
            return m;
        }
        String[] lines = text.split("\n");
        for (int i = 0; i < lines.length; i++) {
            String line = lines[i].trim();
            int colon = line.indexOf(':');
            if (colon <= 0) {
                continue;
            }
            String ifc = line.substring(0, colon).trim();
            if (ifc.indexOf(' ') >= 0) {
                continue; // "iface: xxx" 首列必须就是接口名
            }
            String[] parts = line.substring(colon + 1).trim().split("\\s+");
            long[] vals = new long[parts.length];
            int n = 0;
            for (int j = 0; j < parts.length; j++) {
                try {
                    vals[n++] = Long.parseLong(parts[j]);
                } catch (NumberFormatException e) {
                    // 非数字列（如 wireless 的 level 带小数点）跳过
                }
            }
            if (n > 0) {
                m.put(ifc, java.util.Arrays.copyOf(vals, n));
            }
        }
        return m;
    }

    private static final String[] PKG_KEYS = {
            "versionName", "versionCode", "userId", "pkgFlags", "receiver", "service",
            "permission", "targetSdk"};

    /** 从 pm list 输出里按关键词挑候选包（排除系统包与自己人） */
    private static String[] pickPackages(String packages, String[] keywords, int max) {
        if (packages == null || packages.length() == 0) {
            return new String[0];
        }
        String[] names = new String[max];
        int found = 0;
        String[] lines = packages.split("\n");
        for (int i = 0; i < lines.length && found < max; i++) {
            String line = lines[i].trim();
            int eq = line.lastIndexOf("package:");
            String name = eq >= 0 ? line.substring(eq + "package:".length()).trim() : "";
            // v1.6.1: AdvActions.run 会在输出尾部追加 "(exit=N)" 标记，剥掉
            int exit = name.lastIndexOf("(exit=");
            if (exit >= 0) {
                name = name.substring(0, exit).trim();
            }
            // v1.6.1: -f 格式是 package:/path/xxx.apk=com.foo.bar，真包名在最后一个 = 之后
            int at = name.lastIndexOf('=');
            if (at >= 0) {
                name = name.substring(at + 1).trim();
            }
            if (name.length() == 0 || name.startsWith("com.android.") || name.startsWith("com.google.")
                    || name.startsWith("com.example.") || name.equals("com.boottask")
                    || name.equals("com.baidu.carlifevehicle")) {
                continue;
            }
            String lower = name.toLowerCase();
            for (int k = 0; k < keywords.length; k++) {
                if (lower.contains(keywords[k])) {
                    names[found++] = name;
                    break;
                }
            }
        }
        String[] out = new String[found];
        System.arraycopy(names, 0, out, 0, found);
        return out;
    }

    /** dumpsys package 输出里提取 userId=（uid），用于 /proc/net 匹配它的连接 */
    private static String extractUid(String dump) {
        if (dump == null) {
            return null;
        }
        int idx = dump.indexOf("userId=");
        while (idx >= 0) {
            int start = idx + "userId=".length();
            int end = start;
            while (end < dump.length() && dump.charAt(end) >= '0' && dump.charAt(end) <= '9') {
                end++;
            }
            if (end > start) {
                return dump.substring(start, end);
            }
            idx = dump.indexOf("userId=", idx + 1);
        }
        return null;
    }

    /** /proc/net/{tcp,udp,tcp6,udp6} 里挑出 uid 匹配的连接行（第 8 列是 uid） */
    private static String netForUid(String uid, int maxLines) {
        String body = AdvActions.run(new String[]{"su", "-c",
                "cat /proc/net/tcp /proc/net/tcp6 /proc/net/udp /proc/net/udp6"}, 10000L, 131072);
        if (body == null || body.length() == 0) {
            return "(unreadable)";
        }
        StringBuilder out = new StringBuilder();
        String[] lines = body.split("\n");
        int kept = 0;
        for (int i = 0; i < lines.length && kept < maxLines; i++) {
            String[] cols = lines[i].trim().split("\\s+");
            if (cols.length > 7 && uid.equals(cols[7])) {
                out.append(lines[i]).append('\n');
                kept++;
            }
        }
        if (kept == 0) {
            return "(no sockets for uid " + uid + ")";
        }
        return out.toString();
    }

    /** 包名 → 该包 logcat/进程过滤关键词（包名全称 + 首段） */
    private static String[] logKeys(String pkg) {
        String head = pkg;
        int dot = pkg.indexOf('.');
        if (dot > 0) {
            head = pkg.substring(0, dot);
        }
        return new String[]{pkg.toLowerCase(), head.toLowerCase()};
    }

    private static String[] procKeys(String pkg) {
        return logKeys(pkg);
    }

    // ------------------------------------------------------------------ v1.6.11 MCU 侦查

    /** MCU / 音源仲裁相关关键词（车机 MCU 常负责 FM、功放 mute、音源切换） */
    private static final String[] MCU_KEYS = {
            "mcu", "uart", "tty", "radio", "fm.", "tuner", "amplifier", "amp",
            "audio", "source", "protocol", "serial", "dsp", "codec"};

    /**
     * 判定「FM 到底走不走 Android 媒体流」用的侦查段：
     * 串口设备节点（Android↔MCU 通信链路）、MCU 相关进程与包、厂商音源 App。
     */
    private static void mcuRecon(Writer writer, String packages) {
        // 1. 串口设备节点：Android 与 MCU 多走 UART（ttyS*/ttyUSB*/ttyMT*）
        // 注意：Runtime.exec 不走 shell，通配符不会展开 → 逐个常见串口节点列出（不存在的会报错，无关紧要）
        section(writer, "串口节点是否存在 (ttyS*/ttyUSB*/ttyMT*)",
                AdvActions.run(new String[]{"ls", "-l",
                        "/dev/ttyS0", "/dev/ttyS1", "/dev/ttyS2", "/dev/ttyS3",
                        "/dev/ttyUSB0", "/dev/ttyMT0", "/dev/ttyMT1", "/dev/ttyMT2"},
                        8000L, 8192));
        section(writer, "ls /dev (找 mcu/uart/tty 设备)",
                filterLines(AdvActions.run(new String[]{"ls", "-l", "/dev"}, 8000L, 32768),
                        MCU_KEYS, 60));

        // 2. 串口驱动表
        section(writer, "/proc/tty/drivers (串口驱动)", readSmall("/proc/tty/drivers", 8192));

        // 3. 系统属性里的 MCU/音频线索
        section(writer, "getprop 过滤 mcu/audio/tty",
                filterLines(AdvActions.run(new String[]{"getprop"}, 8000L, 16384), MCU_KEYS, 80));

        // 4. 进程表中的 MCU / 收音机守护
        section(writer, "ps 过滤 mcu/radio/fm/audio",
                filterLines(AdvActions.run(new String[]{"ps"}, 8000L, 16384), MCU_KEYS, 60));

        // 5. 厂商音源 / MCU 控制 App（可反编译找串口协议帧）
        java.util.List<String> cands = new java.util.ArrayList<String>();
        String[] picked = pickPackages(packages, MCU_KEYS, 25);
        for (int i = 0; i < picked.length; i++) {
            cands.add(picked[i]);
        }
        if (cands.isEmpty()) {
            section(writer, "MCU/音源候选包", "(no package matched MCU keywords)");
        } else {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < cands.size() && i < 25; i++) {
                sb.append(cands.get(i)).append("\n");
            }
            section(writer, "MCU/音源候选包 (可反编译找串口协议)", sb.toString());
            for (int i = 0; i < cands.size() && i < 6; i++) {
                String pkg = cands.get(i);
                section(writer, "pm dump " + pkg,
                        AdvActions.run(new String[]{"pm", "dump", pkg}, 12000L, 24576));
            }
        }

        // 6. root 才拿得到的串口实况与功放 GPIO
        if (!reconRoot) {
            section(writer, "MCU 深度段 (root)", "(no root, 跳过串口嗅探/GPIO)");
            return;
        }
        section(writer, "su ls -l /dev/tty* ",
                AdvActions.run(new String[]{"su", "-c", "ls -l /dev/tty*"}, 10000L, 16384));
        section(writer, "su /sys/class/gpio (功放 mute 引脚线索)",
                AdvActions.run(new String[]{"su", "-c", "ls -R /sys/class/gpio"}, 10000L, 16384));
        // 抓 3 秒串口流量，看 MCU 心跳帧（判断波特率/协议，便于后续发 mute 帧）
        section(writer, "su 串口嗅探 ttyS/ttyUSB 各 3 秒 (看 MCU 心跳帧)",
                AdvActions.run(new String[]{"su", "-c",
                        "for d in /dev/ttyS0 /dev/ttyS1 /dev/ttyS2 /dev/ttyUSB0 /dev/ttyMT0 /dev/ttyMT1; do "
                                + "[ -e $d ] && echo \"== $d\" && timeout 3 cat $d | head -c 64 | od -An -tx1; done"},
                        25000L, 8192));
    }

    /** v1.6.9 开机媒体自启侦查：① events 缓冲的启动时间线（谁在开机时拉起了多媒体、几点）
     *  ② dumpsys audio 各流音量/静音/播放者 ③ 多媒体候选包及其 BOOT_COMPLETED 接收器。
     *  events 缓冲会被轮转——建议重启车机后尽快开一次日志页。 */
    private static void bootAudioRecon(Writer writer) {
        if (reconRoot) {
            String events = AdvActions.run(new String[]{"su", "-c", "logcat -d -b events -v time"},
                    12000L, 262144);
            if (events != null && events.indexOf("am_proc_start") >= 0) {
                section(writer, "开机启动时间线 (events 缓冲: 谁在开机时拉起了谁)",
                        filterLines(events, new String[]{
                                "am_proc_start", "am_create_activity", "am_create_service",
                                "am_kill", "boot_progress"}, 300));
            } else {
                section(writer, "开机启动时间线 (events 缓冲)",
                        "(events 缓冲已被轮转或为空; 重启车机后尽快开一次日志页即可抓到)");
            }
            String audio = AdvActions.run(new String[]{"su", "-c", "dumpsys audio"}, 10000L, 262144);
            section(writer, "dumpsys audio 关键行 (各流音量/静音/播放者)",
                    audio == null ? "(null)" : filterLines(audio, new String[]{
                            "stream ", "muted", "volume", "player", "fm", "radio"}, 150));
        } else {
            section(writer, "开机启动时间线 / 音频状态",
                    "(需要 root; 车机 eng 版可用, MuMu 无 root 跳过)");
        }
        // 多媒体自启候选包：包名含关键词者，逐一查有没有注册开机广播
        String all = (reconPackages3 == null ? "" : reconPackages3) + "\n"
                + (reconPackages == null ? "" : reconPackages);
        String[] cands = pickCandidates(all, new String[]{
                "multimedia", "media", "fm", "radio", "audio", "tune"});
        int n = Math.min(cands.length, 8);
        for (int i = 0; i < n; i++) {
            String dump = AdvActions.run(new String[]{"su", "-c", "dumpsys package " + cands[i]},
                    8000L, 65536);
            section(writer, "自启候选 " + cands[i] + " (开机广播接收器)",
                    reconRoot
                            ? (dump == null ? "(null)" : filterLines(dump,
                                    new String[]{"boot_completed", "receiver resolver", "receivers:"}, 30))
                            : "(需要 root)");
        }
        if (cands.length > n) {
            section(writer, "自启候选(未dump, 超上限)", joinLines(cands, n));
        }
    }

    /** 从 pm list 输出（-f 与 -3 格式混排）按关键词取候选包名 */
    private static String[] pickCandidates(String content, String[] keys) {
        java.util.ArrayList<String> out = new java.util.ArrayList<String>();
        if (content == null || content.length() == 0) {
            return new String[0];
        }
        String[] lines = content.split("\n");
        for (int i = 0; i < lines.length; i++) {
            int eq = lines[i].lastIndexOf('=');
            String name = eq >= 0 ? lines[i].substring(eq + 1).trim() : "";
            int exit = name.indexOf("(exit=");
            if (exit >= 0) {
                name = name.substring(0, exit).trim();
            }
            if (name.length() == 0 || !name.contains(".")) {
                continue;
            }
            for (int k = 0; k < keys.length; k++) {
                if (name.contains(keys[k])) {
                    if (!out.contains(name)) {
                        out.add(name);
                    }
                    break;
                }
            }
        }
        return out.toArray(new String[out.size()]);
    }

    private static String joinLines(String[] arr, int from) {
        StringBuilder b = new StringBuilder();
        for (int i = from; i < arr.length; i++) {
            b.append(arr[i]).append('\n');
        }
        return b.length() == 0 ? "(none)" : b.toString();
    }

    /** 保留包含任一关键词的行（不区分大小写），最多 maxLines 行 */
    private static String filterLines(String body, String[] keys, int maxLines) {
        if (body == null || body.length() == 0) {
            return "(empty)";
        }
        String lower = body.toLowerCase();
        // 逐行处理（大文件 split 一次即可，避免双重扫描开销）
        String[] lines = body.split("\n");
        int[] lowerIdx = new int[lines.length + 1];
        lowerIdx[0] = 0;
        for (int i = 0; i < lines.length; i++) {
            lowerIdx[i + 1] = lowerIdx[i] + lines[i].length() + 1;
        }
        StringBuilder out = new StringBuilder();
        int kept = 0;
        for (int i = 0; i < lines.length && kept < maxLines; i++) {
            String lineLower = lower.substring(lowerIdx[i],
                    Math.min(lowerIdx[i] + lines[i].length(), lower.length()));
            boolean hit = false;
            for (int k = 0; k < keys.length && !hit; k++) {
                hit = lineLower.contains(keys[k].toLowerCase());
            }
            if (hit) {
                out.append(lines[i]).append('\n');
                kept++;
            }
        }
        if (kept == 0) {
            return "(no lines matched " + keys.length + " keywords; raw size " + body.length() + " bytes)";
        }
        if (lines.length > kept) {
            out.append("(").append(kept).append(" of ").append(lines.length).append(" lines kept)\n");
        }
        return out.toString();
    }

    /** 读小文件（免 root 也可读的 /proc 节点） */
    static String readSmall(String path, int maxBytes) {
        try {
            FileInputStream in = new FileInputStream(path);
            try {
                InputStreamReader reader = new InputStreamReader(in, "UTF-8");
                char[] buffer = new char[4096];
                StringBuilder out = new StringBuilder();
                int total = 0;
                while (total < maxBytes) {
                    int count = reader.read(buffer, 0, Math.min(buffer.length, maxBytes - total));
                    if (count <= 0) {
                        break;
                    }
                    out.append(buffer, 0, count);
                    total += count;
                }
                if (out.length() == 0) {
                    return "(empty)";
                }
                return out.toString();
            } finally {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable t) {
            return "(unreadable: " + t + ")";
        }
    }

    /** 取前 n 行 */
    private static String headLines(String body, int n) {
        if (body == null || body.length() == 0) {
            return body;
        }
        String[] lines = body.split("\n");
        StringBuilder out = new StringBuilder();
        for (int i = 0; i < lines.length && i < n; i++) {
            out.append(lines[i]).append('\n');
        }
        return out.toString();
    }

    // ---------------------------------------------------------------- v1.4 段（保持原样）

    /** 从 pm list 输出里挑出音源相关候选包，尝试 dump 它们的组件信息。
     *  root 可用时走 su+dumpsys（pm dump 无 DUMP 权限必被拒），否则原样 pm dump。 */
    private static void dumpCandidates(Writer writer, String packages, boolean root) {
        if (packages == null || packages.length() == 0) {
            return;
        }
        String[] keywords = {"radio", "fm", "media", "music", "mcu", "audio", "source", "bluetooth", "bt", "car"};
        String[] names = new String[6];
        int found = 0;
        String[] lines = packages.split("\n");
        for (int i = 0; i < lines.length && found < names.length; i++) {
            String line = lines[i].trim();
            int eq = line.lastIndexOf("package:");
            String name = eq >= 0 ? line.substring(eq + "package:".length()).trim() : "";
            // v1.6.1: AdvActions.run 会在输出尾部追加 "(exit=N)" 标记，剥掉
            int exit = name.lastIndexOf("(exit=");
            if (exit >= 0) {
                name = name.substring(0, exit).trim();
            }
            // v1.6.1: -f 格式是 package:/path/xxx.apk=com.foo.bar，真包名在最后一个 = 之后
            int at = name.lastIndexOf('=');
            if (at >= 0) {
                name = name.substring(at + 1).trim();
            }
            if (name.length() == 0 || name.startsWith("com.android.") || name.startsWith("com.google.")
                    || name.equals("com.boottask") || name.equals("com.baidu.carlifevehicle")) {
                continue;
            }
            String lower = name.toLowerCase();
            for (int k = 0; k < keywords.length; k++) {
                if (lower.contains(keywords[k])) {
                    names[found++] = name;
                    break;
                }
            }
        }
        if (found == 0) {
            section(writer, "candidate packages", "(no candidate packages matched keywords)");
            return;
        }
        for (int i = 0; i < found; i++) {
            String body;
            if (root) {
                body = AdvActions.run(new String[]{"su", "-c", "dumpsys package " + names[i]}, 15000L, 32768);
            } else {
                body = AdvActions.run(new String[]{"pm", "dump", names[i]}, 12000L, 24576);
            }
            section(writer, (root ? "su dumpsys " : "pm dump ") + names[i] + " (receivers/services)",
                    filterComponentLines(body, 60));
        }
    }

    /** 只保留组件/意图/权限相关的行，限制行数，防止 dumpsys 全量输出撑爆诊断文件 */
    private static String filterComponentLines(String body, int maxLines) {
        if (body == null || body.length() == 0) {
            return body;
        }
        String[] keep = {"receiver", "service", "activity", "filter", "action", "category",
                "permission", "exported", "priority", "denial"};
        StringBuilder out = new StringBuilder();
        String[] lines = body.split("\n");
        int kept = 0;
        for (int i = 0; i < lines.length && kept < maxLines; i++) {
            String lower = lines[i].toLowerCase();
            for (int k = 0; k < keep.length; k++) {
                if (lower.contains(keep[k])) {
                    out.append(lines[i]).append('\n');
                    kept++;
                    break;
                }
            }
        }
        if (lines.length > kept) {
            out.append("(").append(lines.length - kept).append(" of ").append(lines.length)
                    .append(" lines filtered)\n");
        }
        return out.length() == 0 ? "(no component lines matched filter)" : out.toString();
    }

    private static void section(Writer writer, String title, String body) {
        try {
            writer.write("\n=== " + title + " ===\n");
            writer.write(body == null || body.length() == 0 ? "(empty)\n" : body + "\n");
            writer.flush();
        } catch (Throwable t) {
            Log.e("BootTask", "write section failed: " + title);
        }
    }

    private static File logDir(Context context) {
        File dir = new File(context.getFilesDir(), "log");
        return dir.isDirectory() || dir.mkdirs() ? dir : null;
    }

    private static void dumpLogcat(Writer writer) {
        Process process = null;
        try {
            process = new ProcessBuilder(
                    "logcat", "-d", "-v", "time", "-s",
                    "BootTask:V",
                    "BootTaskLogXfer:V",
                    "CarLifeLogXfer:V",
                    "ActivityManager:I",
                    "PackageManager:I",
                    "AndroidRuntime:E")
                    .redirectErrorStream(true)
                    .start();
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream(), "UTF-8"));
            char[] buffer = new char[4096];
            int total = 0;
            try {
                while (total < 262144) {
                    int count = reader.read(buffer, 0, Math.min(buffer.length, 262144 - total));
                    if (count <= 0) {
                        break;
                    }
                    writer.write(buffer, 0, count);
                    total += count;
                }
                if (total >= 262144) {
                    writer.write("\n[logcat truncated at 256 KB]\n");
                }
                writer.flush();
            } finally {
                close(reader);
            }
        } catch (Throwable t) {
            try {
                writer.write("logcat unavailable: " + t + "\n");
                writer.flush();
            } catch (Throwable ignored) {
            }
        } finally {
            if (process != null) {
                process.destroy();
            }
        }
    }

    private static void close(Object closeable) {
        if (closeable == null) {
            return;
        }
        try {
            if (closeable instanceof Writer) {
                ((Writer) closeable).close();
            } else if (closeable instanceof BufferedReader) {
                ((BufferedReader) closeable).close();
            }
        } catch (Throwable ignored) {
        }
    }

    public static final class LogActivity extends com.baidu.carlifevehicle.logxfer.LogDownloadActivity {
        @Override
        protected void onCreate(Bundle state) {
            super.onCreate(state);
            // 侦查要跑 su/pm dump 等慢命令，必须在后台线程，否则主线程 ANR
            new Thread(new Runnable() {
                @Override
                public void run() {
                    capture(LogActivity.this);
                }
            }, "boottask-capture").start();
            try {
                ViewGroup content = (ViewGroup) findViewById(android.R.id.content);
                if (content != null && content.getChildCount() > 0) {
                    View root = content.getChildAt(0);
                    if (root instanceof ViewGroup && ((ViewGroup) root).getChildCount() > 0) {
                        View title = ((ViewGroup) root).getChildAt(0);
                        if (title instanceof TextView) {
                            ((TextView) title).setText("开机任务日志下载");
                        }
                    }
                }
            } catch (Throwable ignored) {
            }
        }
    }
}
