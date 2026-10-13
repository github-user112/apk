package com.boottask;

/**
 * v1.6.33 WiFi 省电状态采样（博通 bcmdhd「省电断流」线索）。
 *
 * 背景与判断：
 *   博通 bcmdhd 的驱动/固件动态省电是 RTT 尖峰的经典来源——射频按 DTIM beacon 唤醒，
 *   首包时延可到 100~500ms，正好撞亿连「速率低」的 200ms 阈值。BootTask 早就有
 *   「关 WiFi 省电」的杠杆（QuickRepair root 版 / adb 清单#1），诊断快照里也早有
 *   「GO 省电状态」段（v1.6.2）——但它跑的是 `su -c iw ...`，这台车机**没有 su**，
 *   修复按钮 hasRoot 直接短路 → 省电开关的真实状态在这台车上**从未被读到过一行**。
 *   本类补的就是「免 root 的观测层」（GET 操作不需要 root/权限）：
 *     ① iw dev <iface> get power_save   nl80211 视角（主力）
 *     ② iwconfig <iface>                WEXT 视角（老驱动常备；缺了如实报 no-iwconfig）
 *     ③ iwpriv <iface> get_power        用户给的线索命令；bcmdhd 上不一定支持，
 *       不支持就原样记 unsupported——这本身也是驱动栈情报
 *   三套视角互为备份：这台 telechips 4.4 到底带哪套工具，本身就是未知数，
 *   全部如实落日志，不猜。
 *
 *   ⚠ 诚实边界：iw/iwconfig 看到的是「驱动省电开关」；博通**固件内部**的自适应省电
 *   （固件自己按流量进出 PS，不受这个开关完全约束）不在此视图内。所以观测设计是
 *   「尖峰时刻采样 + 空闲 60 秒轨迹采样」——让时间相关性说话，而不是读一次就下结论。
 *
 * 输出格式（一行）：iw=on|off|?|no-dev|no-iw wext=on|off|no-iwconfig iwpriv=on|off|unsupported|no-iwpriv|原文
 */
public final class WifiPowerSave {

    private static String sIface;
    private static long sIfaceAt;
    private static String sCache;
    private static long sCacheAt;

    private WifiPowerSave() {
    }

    /** 带 1.5s TTL 的缓存采样（循环/尖峰里频繁调用不重复起进程） */
    public static synchronized String cached() {
        long now = System.currentTimeMillis();
        if (sCache != null && now - sCacheAt < 1500L) {
            return sCache;
        }
        sCache = sampleOnce();
        sCacheAt = now;
        return sCache;
    }

    /**
     * 解读一行采样：任一视角=on → TRUE（疑似省电开着）；全 off → FALSE；解析不出 → null（未知）。
     * iw= 优先（nl80211 是权威视角），iw= 未知时才看 wext=。
     */
    public static Boolean looksOn(String sample) {
        if (sample == null || sample.length() == 0) {
            return null;
        }
        int i = sample.indexOf("iw=");
        if (i >= 0) {
            String seg = sample.substring(i + 3, Math.min(sample.length(), i + 8));
            if (seg.startsWith("on")) {
                return Boolean.TRUE;
            }
            if (seg.startsWith("off")) {
                return Boolean.FALSE;
            }
        }
        int w = sample.indexOf("wext=");
        if (w >= 0) {
            String seg = sample.substring(w + 5, Math.min(sample.length(), w + 9));
            if (seg.startsWith("on")) {
                return Boolean.TRUE;
            }
            if (seg.startsWith("off")) {
                return Boolean.FALSE;
            }
        }
        return null;
    }

    /** 一次完整采样（起 3 个进程；探测循环里请用 cached()，快照/报告处用本方法取新鲜值） */
    public static String sampleOnce() {
        String iface = iface();
        // ① nl80211：GET 免权限；su 缺失不影响（这里本来就不走 su）
        String iwRaw = AdvActions.run(new String[]{"iw", "dev", iface, "get", "power_save"}, 5000L, 512);
        String iwS = classifyIw(iwRaw);
        // ② WEXT
        String cfgRaw = AdvActions.run(new String[]{"iwconfig", iface}, 5000L, 1024);
        String wextS = classifyWext(cfgRaw);
        // ③ 私有 ioctl（用户线索命令；bcmdhd 不一定支持 → 如实记）
        String privRaw = AdvActions.run(new String[]{"iwpriv", iface, "get_power"}, 5000L, 512);
        String privS = classifyPriv(privRaw);
        return "iw=" + iwS + " wext=" + wextS + " iwpriv=" + privS + " (iface=" + iface + ")";
    }

    /** 解析无线接口名（iw dev 免 root 可读；解析不出退回 wlan0，缓存 60s） */
    public static synchronized String iface() {
        long now = System.currentTimeMillis();
        if (sIface != null && now - sIfaceAt < 60000L) {
            return sIface;
        }
        String dev = AdvActions.run(new String[]{"iw", "dev"}, 6000L, 4096);
        String found = null;
        if (dev != null) {
            String[] lines = dev.split("\n");
            for (int i = 0; i < lines.length; i++) {
                String l = lines[i].trim();
                if (l.startsWith("Interface ")) {
                    found = l.substring("Interface ".length()).trim();
                    break;
                }
            }
        }
        sIface = found == null || found.length() == 0 ? "wlan0" : found;
        sIfaceAt = now;
        return sIface;
    }

    // ------------------------------------------------------------------ 分类器

    /**
     * iw 输出形如 "Power save: off (exit=0)"；失败形如 "No such device (exit=234)"
     * 或 null（二进制不存在/PATH 缺）。先判 off 再判 on（"off" 里不含 "on"，顺序安全）。
     */
    private static String classifyIw(String out) {
        if (out == null || out.trim().length() == 0) {
            return "no-iw";
        }
        String s = out.trim();
        if (s.indexOf("No such device") >= 0 || s.indexOf("not exist") >= 0) {
            return "no-dev";
        }
        if (s.indexOf("Permission denied") >= 0 || s.indexOf("Operation not") >= 0) {
            return "denied";
        }
        if (s.indexOf("off") >= 0) {
            return "off";
        }
        if (s.indexOf("on") >= 0) {
            return "on";
        }
        return "?";
    }

    /** iwconfig 输出里找 "Power Management:on|off"；无 wext/二进制缺失如实报 */
    private static String classifyWext(String out) {
        if (out == null || out.trim().length() == 0) {
            return "no-iwconfig";
        }
        String s = out.trim();
        int i = s.indexOf("Power Management");
        if (i < 0) {
            if (s.indexOf("no wireless extensions") >= 0 || s.indexOf("No such device") >= 0) {
                return "no-we";
            }
            return "?";
        }
        String tail = s.substring(i, Math.min(s.length(), i + 40));
        if (tail.indexOf("off") >= 0) {
            return "off";
        }
        if (tail.indexOf("on") >= 0) {
            return "on";
        }
        return "?";
    }

    /** iwpriv get_power：格式未知，只做保守分类，认不出就给原文片段（最诚实） */
    private static String classifyPriv(String out) {
        if (out == null || out.trim().length() == 0) {
            return "no-iwpriv";
        }
        String s = out.trim();
        if (s.indexOf("Unknown command") >= 0 || s.indexOf("unknown command") >= 0
                || s.indexOf("not support") >= 0 || s.indexOf("invalid") >= 0
                || s.indexOf("Usage:") >= 0 || s.indexOf("exit=2") >= 0 || s.indexOf("exit=255") >= 0) {
            return "unsupported";
        }
        if (s.indexOf("off") >= 0) {
            return "off";
        }
        if (s.indexOf("on") >= 0) {
            return "on";
        }
        String line = s.split("\n")[0].trim();
        return line.length() > 40 ? line.substring(0, 40) : line;
    }
}
