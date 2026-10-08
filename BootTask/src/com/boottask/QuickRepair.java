package com.boottask;

import android.content.Context;

import java.io.File;
import java.io.FileWriter;

/**
 * v1.6.7 一键修复（全部可逆、幂等，需 root；动作来自《亿连V7.0.1 排查手册》修复矩阵）：
 *
 * WiFi 侧：
 * 1) repairPowerSave: 所有无线接口 iw set power_save off —— GO 侧省电让 ping RTT 周期性飙高。
 *    P2P 组重建后会回默认，需重按。
 *
 * 亿连侧（分支菜单，一次只改一组变量 —— 手册铁律：不要一次全上）：
 * 2) repairYilianBitrate    : /etc/ec.conf = mirror 1024x600          —— 第 1 轮，先降码率
 * 3) repairYilianAlignScreen: /etc/ec.conf = mirror = 物理屏实际分辨率 —— 画面卡但解码平稳（渲染缩放开销）
 * 4) repairYilianSoftDecode : mirror 1024x600 + video_codec_name 软解  —— 仅"整机跟手、只有画面卡"；
 *    ⚠ 整机卡/发热分支禁用（软解加 CPU 负载会更热更卡）
 * 5) repairYilianColorFormat: 在现有 conf 基础上追加 codec_color_format=0x14
 *    （4.4 planar/semiplanar 不匹配走软件色彩转换的经典坑；注意该键按 16 进制解析，必须写 0x14）
 * 6) repairYilianReset      : 删 /etc/ec.conf + 重启亿连 —— 一键回滚
 *
 * 每次修复追加到 files/log/repair_history.txt，BootDiagnostics 快照里会带上。
 *
 * 编译约束同 MainActivity：不 import org.json；不引用 smali 类。
 */
public final class QuickRepair {

    private QuickRepair() {
    }

    /** 修复 WiFi 省电。@return 给 Toast 的结果摘要 */
    public static String repairPowerSave(Context ctx) {
        StringBuilder rep = new StringBuilder();
        rep.append("[WiFi省电] ");
        if (!hasRoot(rep)) {
            return finish(ctx, rep);
        }
        String[] ifaces = wirelessIfaces();
        for (int i = 0; i < ifaces.length; i++) {
            AdvActions.run(new String[]{"su", "-c", "iw dev " + ifaces[i] + " set power_save off"},
                    6000L, 2048);
            String get = AdvActions.run(new String[]{"su", "-c", "iw dev " + ifaces[i] + " get power_save"},
                    6000L, 2048);
            rep.append(ifaces[i]).append("=>").append(psState(get)).append("; ");
        }
        rep.append("(P2P 组重建后会恢复默认，连上后如再弹速率低请重按本按钮)");
        return finish(ctx, rep);
    }

    /** 预设 1：降码率 1024x600（第 1 轮先做这个） */
    public static String repairYilianBitrate(Context ctx) {
        return writeYilianConf(ctx, "[亿连降码率]",
                "mirror_width=1024\nmirror_height=600\nkeep_screen_bright=true\n",
                "已写入 mirror 1024x600 并重启亿连；测 15 分钟，没好再试下一项");
    }

    /** 预设 2：分辨率对齐物理屏（画面卡但解码耗时平稳 → 消除 SurfaceView 缩放开销） */
    public static String repairYilianAlignScreen(Context ctx) {
        String[] size = physicalScreenSize(ctx);
        return writeYilianConf(ctx, "[亿连对齐物理屏]",
                "mirror_width=" + size[0] + "\nmirror_height=" + size[1]
                        + "\nkeep_screen_bright=true\n",
                "已按物理屏 " + size[0] + "x" + size[1] + " 写入并重启亿连");
    }

    /** 预设 3：降码率 + 强制软解（仅"整机跟手、只有画面卡"时用；整机卡/发热分支禁用） */
    public static String repairYilianSoftDecode(Context ctx) {
        return writeYilianConf(ctx, "[亿连软解]",
                "mirror_width=1024\nmirror_height=600\nkeep_screen_bright=true\n"
                        + "video_codec_name=OMX.google.h264.decoder\n",
                "已写入 1024x600+软解并重启亿连；⚠ 若整机更卡请立刻还原换预设1");
    }

    /** 预设 4：在现有 conf 上追加 codec_color_format=0x14（该键按 16 进制解析） */
    public static String repairYilianColorFormat(Context ctx) {
        StringBuilder rep = new StringBuilder();
        rep.append("[亿连色彩格式] ");
        if (!hasRoot(rep)) {
            return finish(ctx, rep);
        }
        String cur = AdvActions.run(new String[]{"cat", "/etc/ec.conf"}, 6000L, 4096);
        StringBuilder body = new StringBuilder();
        if (cur != null && cur.indexOf("mirror_width") >= 0) {
            // 保留现有有效行，剔除旧 color-format 行
            String[] lines = cur.split("\n");
            for (int i = 0; i < lines.length; i++) {
                String line = lines[i].trim();
                if (line.length() > 0 && line.indexOf("codec_color_format") < 0
                        && line.indexOf("(exit=") < 0) {
                    body.append(line).append('\n');
                }
            }
        } else {
            body.append("mirror_width=1024\nmirror_height=600\nkeep_screen_bright=true\n");
        }
        body.append("codec_color_format=0x14\n");
        return writeYilianConf(ctx, "[亿连色彩格式] ", body.toString(),
                "已追加 codec_color_format=0x14 并重启亿连（保留其余配置）");
    }

    /** 一键还原：删 /etc/ec.conf + 重启亿连 */
    public static String repairYilianReset(Context ctx) {
        StringBuilder rep = new StringBuilder();
        rep.append("[亿连还原] ");
        if (!hasRoot(rep)) {
            return finish(ctx, rep);
        }
        AdvActions.run(new String[]{"su", "-c", "rm -f /etc/ec.conf"}, 6000L, 2048);
        AdvActions.run(new String[]{"am", "force-stop", "net.easyconn"}, 6000L, 2048);
        restartYilian();
        String check = AdvActions.run(new String[]{"ls", "/etc/ec.conf"}, 6000L, 2048);
        rep.append(check != null && check.indexOf("No such") >= 0
                ? "已删除 /etc/ec.conf 并重启亿连（恢复默认画质）"
                : "删除结果不确定: " + oneLine(check));
        return finish(ctx, rep);
    }

    // ---------------------------------------------------------------- v1.6.12 系统侧（非亿连原因）

    /** CPU 锁 performance：排查「ROM 省电档 / 热降频 → 整机卡 → RTT 虚高」。重启即还原。 */
    public static String repairCpuPerformance(Context ctx) {
        StringBuilder rep = new StringBuilder();
        rep.append("[CPU锁performance] ");
        if (!hasRoot(rep)) {
            return finish(ctx, rep);
        }
        String[] paths = cpuFreqPaths();
        if (paths.length == 0) {
            rep.append("无 cpufreq 节点（虚拟机/内核未暴露），跳过");
            return finish(ctx, rep);
        }
        StringBuilder detail = new StringBuilder();
        for (int i = 0; i < paths.length; i++) {
            String before = AdvActions.run(new String[]{"cat", paths[i] + "/scaling_governor"},
                    4000L, 1024);
            detail.append(paths[i].replace("/sys/devices/system/cpu/", ""))
                    .append(":").append(oneLine(before)).append("→");
            AdvActions.run(new String[]{"su", "-c",
                    "echo performance > " + paths[i] + "/scaling_governor"}, 5000L, 1024);
            String after = AdvActions.run(new String[]{"cat", paths[i] + "/scaling_governor"},
                    4000L, 1024);
            detail.append(oneLine(after)).append("; ");
        }
        rep.append(detail).append("(重启车机即还原为 ROM 默认)");
        return finish(ctx, rep);
    }

    /** CPU 恢复默认 governor（优先 ondemand，其次 interactive，再退 available 首项） */
    public static String repairCpuRestore(Context ctx) {
        StringBuilder rep = new StringBuilder();
        rep.append("[CPU恢复默认] ");
        if (!hasRoot(rep)) {
            return finish(ctx, rep);
        }
        String avail = AdvActions.run(new String[]{"cat",
                "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"}, 5000L, 1024);
        String target = "ondemand";
        if (avail != null) {
            if (avail.indexOf("ondemand") < 0 && avail.indexOf("interactive") >= 0) {
                target = "interactive";
            } else if (avail.indexOf("ondemand") < 0 && avail.indexOf("interactive") < 0) {
                String[] g = avail.trim().split(" ");
                if (g.length > 0 && g[0].length() > 0) {
                    target = g[0];
                }
            }
        }
        String[] paths = cpuFreqPaths();
        StringBuilder detail = new StringBuilder();
        for (int i = 0; i < paths.length; i++) {
            AdvActions.run(new String[]{"su", "-c",
                    "echo " + target + " > " + paths[i] + "/scaling_governor"}, 5000L, 1024);
            detail.append(paths[i].replace("/sys/devices/system/cpu/", "")).append("→")
                    .append(target).append("; ");
        }
        rep.append(paths.length == 0 ? "无 cpufreq 节点" : detail);
        return finish(ctx, rep);
    }

    /** 关蓝牙：排除「蓝牙与 WLAN 同抢 2.4GHz」这个最便宜也最常被忽略的原因 */
    public static String repairBluetoothOff(Context ctx) {
        return bluetoothSwitch(ctx, "disable", "[关蓝牙]");
    }

    public static String repairBluetoothOn(Context ctx) {
        return bluetoothSwitch(ctx, "enable", "[开蓝牙]");
    }

    private static String bluetoothSwitch(Context ctx, String onOff, String tag) {
        StringBuilder rep = new StringBuilder();
        rep.append(tag).append(' ');
        if (!hasRoot(rep)) {
            return finish(ctx, rep);
        }
        String before = AdvActions.run(new String[]{"su", "-c",
                "settings get global bluetooth_on"}, 8000L, 1024);
        AdvActions.run(new String[]{"su", "-c", "svc bluetooth " + onOff}, 10000L, 4096);
        try {
            Thread.sleep(1500L);
        } catch (Throwable ignored) {
        }
        String after = AdvActions.run(new String[]{"su", "-c",
                "settings get global bluetooth_on"}, 8000L, 1024);
        rep.append("bluetooth_on ").append(oneLine(before)).append(" -> ").append(oneLine(after));
        if ("disable".equals(onOff)) {
            rep.append("; 投屏 15 分钟对比：不掉线即实锤 2.4G 争抢");
        }
        return finish(ctx, rep);
    }

    /** 关 WiFi 后台常扫。
     *  ⚠ 注意方向与网上流传的相反：wifi_scan_throttle_enabled=1 才是「开启节流=减少扫描」，
     *    设为 0 反而会让后台扫描更频繁、更容易打断 P2P。 */
    public static String repairWifiScanOff(Context ctx) {
        StringBuilder rep = new StringBuilder();
        rep.append("[关WiFi常扫] ");
        if (!hasRoot(rep)) {
            return finish(ctx, rep);
        }
        AdvActions.run(new String[]{"su", "-c",
                "settings put global wifi_scan_always_enabled 0"}, 8000L, 2048);
        AdvActions.run(new String[]{"su", "-c",
                "settings put global wifi_scan_throttle_enabled 1"}, 8000L, 2048);
        String a = AdvActions.run(new String[]{"su", "-c",
                "settings get global wifi_scan_always_enabled"}, 8000L, 1024);
        String b = AdvActions.run(new String[]{"su", "-c",
                "settings get global wifi_scan_throttle_enabled"}, 8000L, 1024);
        rep.append("wifi_scan_always_enabled=").append(oneLine(a))
                .append("; wifi_scan_throttle_enabled=").append(oneLine(b))
                .append(" (1=节流开启=扫描更少，方向别搞反)");
        return finish(ctx, rep);
    }

    /** 供诊断快照带出修复历史 */
    public static String readRepairHistory(Context ctx) {
        try {
            File f = new File(ctx.getFilesDir(), "log/repair_history.txt");
            if (f.exists() && f.length() > 0) {
                return BootDiagnostics.readSmall(f.getAbsolutePath(), 8192);
            }
            return "(还没做过一键修复)";
        } catch (Throwable t) {
            return "(读取失败: " + t + ")";
        }
    }

    // ---------------------------------------------------------------- 内部

    /** force-stop 后重新拉起亿连：monkey 发 LAUNCHER intent，免去硬编码入口 Activity 名
     *  （手册核实入口是 StandMainActivity，但各版本可能变，动态解析更稳）。
     *  等 1.5s 让系统完成回收，避免新进程带着旧配置残留起来。须在后台线程调用。 */
    private static void restartYilian() {
        try {
            Thread.sleep(1500L);
        } catch (InterruptedException ignored) {
        }
        AdvActions.run(new String[]{"monkey", "-p", "net.easyconn",
                "-c", "android.intent.category.LAUNCHER", "1"}, 8000L, 2048);
    }

    /** 写 /etc/ec.conf + 重启亿连 + 回读校验的公共尾部 */
    private static String writeYilianConf(Context ctx, String tag, String content, String okMsg) {
        StringBuilder rep = new StringBuilder();
        rep.append(tag).append(!tag.endsWith(" ") ? " " : "");
        if (!hasRoot(rep)) {
            return finish(ctx, rep);
        }
        AdvActions.run(new String[]{"su", "-c", "mount -o remount,rw /system"}, 8000L, 4096);
        AdvActions.run(new String[]{"su", "-c",
                "printf '" + content.replace("'", "") + "' > /etc/ec.conf"}, 8000L, 8192);
        AdvActions.run(new String[]{"su", "-c", "chmod 644 /etc/ec.conf"}, 6000L, 2048);
        String verify = AdvActions.run(new String[]{"cat", "/etc/ec.conf"}, 6000L, 4096);
        boolean ok = verify != null && verify.indexOf("mirror_width") >= 0;
        if (ok) {
            AdvActions.run(new String[]{"am", "force-stop", "net.easyconn"}, 6000L, 2048);
            restartYilian();
            rep.append(okMsg);
        } else {
            rep.append("写入失败: ").append(oneLine(verify));
        }
        return finish(ctx, rep);
    }

    /** 物理屏分辨率：优先 wm size 输出，取不到退回 DisplayMetrics */
    private static String[] physicalScreenSize(Context ctx) {
        String wm = AdvActions.run(new String[]{"wm", "size"}, 6000L, 2048);
        if (wm != null) {
            String[] lines = wm.split("\n");
            for (int i = 0; i < lines.length; i++) {
                String line = lines[i].trim();
                int x = line.indexOf('x');
                if (line.indexOf("size") >= 0 && x > 0) {
                    // "Physical size: 1024x600" → 取数字段
                    String w = line.substring(0, x).replaceAll("[^0-9]", "");
                    String h = line.substring(x + 1).replaceAll("[^0-9]", "");
                    if (w.length() > 0 && h.length() > 0) {
                        return new String[]{w, h};
                    }
                }
            }
        }
        android.util.DisplayMetrics dm = ctx.getResources().getDisplayMetrics();
        return new String[]{String.valueOf(dm.widthPixels), String.valueOf(dm.heightPixels)};
    }

    /** 存在的 cpufreq 目录（cpu0..cpu7 逐个探测） */
    private static String[] cpuFreqPaths() {
        java.util.ArrayList<String> list = new java.util.ArrayList<String>();
        for (int i = 0; i < 8; i++) {
            String p = "/sys/devices/system/cpu/cpu" + i + "/cpufreq";
            String g = AdvActions.run(new String[]{"cat", p + "/scaling_governor"}, 4000L, 512);
            if (g != null && g.trim().length() > 0 && g.indexOf("No such") < 0
                    && g.indexOf("unreadable") < 0) {
                list.add(p);
            }
        }
        return list.toArray(new String[list.size()]);
    }

    private static boolean hasRoot(StringBuilder rep) {
        String id = AdvActions.run(new String[]{"su", "-c", "id"}, 8000L, 4096);
        boolean root = id != null && id.indexOf("uid=0") >= 0;
        if (!root) {
            rep.append(rootStatus()).append(" → 本次修复未执行（未改动任何东西）。")
                    .append("可用「免 root 也能做」分区，或用电脑 adb 执行 root 命令清单");
        }
        return root;
    }

    /**
     * v1.6.13：把「为什么没 root」说清楚 —— 没有 su 二进制 vs su 存在但被拒，
     * 用户的下一步完全不同（前者只能走 adb/免root，后者去授权弹窗点允许）。
     */
    public static String rootStatus() {
        // 15s：无 su 时命令立即失败不受影响；有 su 但首次弹授权窗时，给用户留够点击时间
        String id = AdvActions.run(new String[]{"su", "-c", "id"}, 15000L, 4096);
        if (id != null && id.indexOf("uid=0") >= 0) {
            return "已 root（su 可用，所有修复按钮可用）";
        }
        // which su 比 ls 固定路径可靠：各 ROM 的 su 位置五花八门（xbin/bin/sbin/.ext）
        String which = AdvActions.run(new String[]{"which", "su"}, 6000L, 1024);
        boolean hasSuBinary = which != null && which.trim().length() > 0
                && which.indexOf("which:") < 0 && which.indexOf("not found") < 0;
        if (!hasSuBinary) {
            return "无 root：ROM 里没有 su（App 无法提权）。电脑 adb 仍可能是 root（eng 版 adbd 常为 root），走「root 命令清单」";
        }
        return "无 root：su 存在但被拒（授权弹窗未确认 / SELinux 拦截）。打开 SuperSU 之类管理 App 允许本应用";
    }

    /** iw dev 输出解析无线接口名；解析不出退回常见名单 */
    private static String[] wirelessIfaces() {
        String dev = AdvActions.run(new String[]{"su", "-c", "iw dev"}, 8000L, 8192);
        java.util.ArrayList<String> list = new java.util.ArrayList<String>();
        if (dev != null) {
            String[] lines = dev.split("\n");
            for (int i = 0; i < lines.length; i++) {
                String line = lines[i].trim();
                if (line.startsWith("Interface ")) {
                    list.add(line.substring("Interface ".length()).trim());
                }
            }
        }
        if (list.isEmpty()) {
            list.add("wlan0");
            list.add("p2p-wlan0-0");
        }
        return list.toArray(new String[list.size()]);
    }

    private static String psState(String get) {
        if (get == null || get.length() == 0) {
            return "无iw";
        }
        if (get.indexOf("off") >= 0) {
            return "已关";
        }
        if (get.indexOf("on") >= 0) {
            return "仍是on";
        }
        return "未知";
    }

    private static String oneLine(String s) {
        if (s == null) {
            return "null";
        }
        String r = s.replace('\n', ' ').trim();
        return r.length() > 120 ? r.substring(0, 120) : r;
    }

    /** 带时间戳追加到 repair_history.txt 并写 boottask.log，返回原文给 Toast */
    private static String finish(Context ctx, StringBuilder rep) {
        String line = new java.text.SimpleDateFormat("MM-dd HH:mm:ss").format(new java.util.Date())
                + " " + rep;
        try {
            File f = new File(ctx.getFilesDir(), "log/repair_history.txt");
            File parent = f.getParentFile();
            if (parent != null && !parent.exists()) {
                parent.mkdirs();
            }
            FileWriter fw = new FileWriter(f, true);
            fw.write(line + "\n");
            fw.close();
        } catch (Throwable ignored) {
        }
        BootDiagnostics.log(ctx, "QuickRepair " + rep);
        return rep.toString();
    }
}
