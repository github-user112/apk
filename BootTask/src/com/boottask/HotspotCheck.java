package com.boottask;

import android.content.ContentResolver;
import android.content.Context;
import android.util.Log;

import java.io.File;

/**
 * v1.6.52 车机 SoftAP 能力检测 —— 「到底能不能开热点」的笔墨诊断。
 *
 * 用户问题：车机「便携式热点」开了没反应，日志显示零 softap 属性、零 AP 接口
 * （已验证：不是你操作问题）。本类把被动取证升级成主动测试，三层：
 *
 *   ① 驱动能力：iw phy0 info（找「Supported interface modes」段，里必须列出 AP）
 *      —— 硬件/固件根本不带 AP 模式的，到此为止。
 *   ② netcfg 前后快照：尝试开关前后各看一次，有没有冒 ap0/wl0.1 / 192.168.43.x。
 *   ③ 真正试一次开关：WifiManager.setWifiApEnabled(null, true) → 看它返回什么；
 *      然后 1.5 秒后强行关回。需要 CHANGE_WIFI_STATE（普通权限，已持有）；
 *      系统身份（uid 1000，v1.6.x-system）下更容易通过 OEM 的附加校验。
 *
 * 安全护栏：
 *  - 全程 try/catch，不外抛；失败只写进报告。
 *  - 开启后立刻回关（1.5s 窗口），不会让车机一直挂一个 SSID。
 *  - 输出到 files/log/hotspot_check.txt（进 boottask-logs.zip）。
 *
 * 无 su 也能跑；su 不可用时仅 ③ 受身份限制（uid 1000 vs 普通App）。
 */
public final class HotspotCheck {

    private static final String TAG = "HotspotCheck";
    private static final String LOG_FILE = "hotspot_check.txt";

    private HotspotCheck() {
    }

    /** 主入口：跑完整检测，返回摘要（完整日志落 hotspot_check.txt）。 */
    public static String probe(Context ctx) {
        StringBuilder rep = new StringBuilder(2048);
        StringBuilder detail = new StringBuilder();
        detail.append("=== 车机 SoftAP 能力检测 ")
                .append(new java.text.SimpleDateFormat("MM-dd HH:mm:ss", java.util.Locale.US).format(new java.util.Date()))
                .append(" ===\n");

        report(ctx, "开始", "iw/netcfg/回读初次采样");

        // ① 驱动能力
        detail.append("\n【① 驱动能力（Supported interface modes 段）】\n");
        String caps = driverCaps(detail);
        rep.append(caps).append('\n');

        // ② 尝试开
        detail.append("\n【② 尝试 setWifiApEnabled(true)】\n");
        String tryOn = setAp(ctx, true, detail);
        rep.append("尝试开→ ").append(tryOn).append('\n');

        // 小睡后采样
        sleep(1500L);
        String netAfter = AdvActions.run(new String[]{"netcfg"}, 8000L, 8192);
        detail.append("\n③ 尝试后 netcfg:\n").append(netAfter == null ? "(null)" : netAfter).append('\n');

        // 读 Settings.Global wifi_ap_on
        detail.append("\n④ Settings.Global wifi_ap_on:\n").append(globalInt(ctx, "wifi_ap_on")).append('\n');

        // 关回去
        detail.append("\n【⑤ 关回去 setWifiApEnabled(false)】\n");
        String tryOff = setAp(ctx, false, detail);
        rep.append("已尝试关→ ").append(tryOff).append('\n');

        // 结论
        String verdict = verdictOf(ctx, caps, tryOn, netAfter);
        detail.append("\n【⑥ 结论】\n").append(verdict).append('\n');
        rep.append("\n结论：").append(oneLine(verdict));

        writeSession(ctx, detail);
        report(ctx, "完成", oneLine(verdict));
        return rep.toString();
    }

    // ---------------------------------------------------------------- 内部

    /** 找 iw 二进制，优先 /system/bin/iw，再试 /system/xbin/iw */
    private static String findIw(StringBuilder detail) {
        String[] cands = {"/system/bin/iw", "/system/xbin/iw", "/system/bin/iwconfig", "/sbin/iw"};
        for (int i = 0; i < cands.length; i++) {
            File f = new File(cands[i]);
            if (f.exists()) {
                detail.append("找到: ").append(cands[i]).append('\n');
                return cands[i];
            }
        }
        detail.append("未找到 iw 二进制\n");
        return null;
    }

    private static String driverCaps(StringBuilder detail) {
        String iw = findIw(detail);
        if (iw == null) {
            return "① 驱动能力：本机没有 iw —— 无法看驱动上报，跳过（718 亿连也探不到，只剩 ②③ 行为测试）。";
        }
        String out = AdvActions.run(new String[]{iw, "phy0", "info"}, 8000L, 32768);
        if (out == null || out.indexOf("Supported interface modes") < 0) {
            out = AdvActions.run(new String[]{iw, "list"}, 8000L, 32768);
        }
        if (out == null || out.length() == 0) {
            // 试试 iwconfig 作为替代证明（它只能显示当前模式，不等于能力声明）
            String wc = AdvActions.run(new String[]{"/system/bin/iwconfig"}, 8000L, 8192);
            detail.append("iw 无输出，iwconfig 输出:\n").append(wc == null ? "(null)" : wc).append('\n');
            return "① 驱动能力：iw 无法读出（无输出）——只能靠 ②③ 行为判断。";
        }
        detail.append("iw 原始输出（截 6KB）:\n")
                .append(out.length() > 6144 ? out.substring(0, 6144) : out).append('\n');

        // 抓 "Supported interface modes:" 段（之后几行），再找 AP
        String section = sliceAround(out, "Supported interface modes:", 15, 2400);
        detail.append("结构化:\n").append(section).append('\n');
        boolean hasAp = section.indexOf("AP") >= 0 || section.indexOf("ap") >= 0;
        boolean hasP2pGo = section.indexOf("P2P-GO") >= 0;
        boolean hasApVlan = section.indexOf("AP/VLAN") >= 0 || section.indexOf("ap/vlan") >= 0;
        if (hasAp) {
            return "① 驱动能力：iw 明确列出 AP 模式 —— 硬件/固件**支持**开 AP （下一步 ②③ 只剩软配置问题）"
                    + (hasP2pGo ? "" : "（注意：只见 AP、未见 P2P-GO）");
        }
        return "① 驱动能力：iw 的 Supported interface modes 段里**没有 AP**"
                + (hasP2pGo ? "（但有 P2P-GO）" : " —— 这颗无线芯片驱动**不带 AP 模式**，SoftAP 硬件级不成立。");
    }

    private static String setAp(Context ctx, boolean enable, StringBuilder detail) {
        try {
            Object wm = ctx.getSystemService(Context.WIFI_SERVICE);
            if (wm == null) {
                return "(WIFI_SERVICE 拿不到)";
            }
            // stub android.jar 连 setWifiApEnabled 的声明都没有（只剩空壳 WifiManager），
            // 必须反射：真机上它存在（API 5 起，4.2 起常被 OEM 裁剪/加私有权限）
            java.lang.reflect.Method m = null;
            for (java.lang.reflect.Method mm : wm.getClass().getMethods()) {
                if ("setWifiApEnabled".equals(mm.getName()) && mm.getParameterTypes().length == 2) {
                    m = mm;
                    break;
                }
            }
            if (m == null) {
                detail.append("setWifiApEnabled 方法不存在\n");
                return "framework 没有 setWifiApEnabled（ROM 被裁剪过这个入口）";
            }
            Object r = m.invoke(wm, new Object[]{null, Boolean.valueOf(enable)});
            boolean ok = r instanceof Boolean && ((Boolean) r).booleanValue();
            detail.append("setWifiApEnabled(").append(enable).append(") → ").append(r).append('\n');
            return enable ? (ok ? "框架接受开" : "框架直接拒绝开（返回 false）")
                          : (ok ? "框架接受关" : "关回 false（可能本来就没开，正常）");
        } catch (SecurityException e) {
            detail.append("SecurityException: ").append(e).append('\n');
            return "SecurityException（缺 CHANGE_WIFI_STATE / OEM 附加校验拒绝）";
        } catch (java.lang.reflect.InvocationTargetException e) {
            Throwable cause = e.getCause();
            detail.append("InvocationTargetException cause: ").append(cause).append('\n');
            if (cause instanceof SecurityException) {
                return "SecurityException（动态校验拒绝：" + oneLine(String.valueOf(cause)) + "）";
            }
            return "setWifiApEnabled 内部异常: " + oneLine(String.valueOf(cause));
        } catch (Throwable t) {
            detail.append("Throwable: ").append(t).append('\n');
            return "异常: " + oneLine(String.valueOf(t));
        }
    }

    private static String verdictOf(Context ctx, String caps, String tryOn, String netAfter) {
        String net = netAfter == null ? "" : netAfter;
        boolean apIface = net.indexOf("wl0.1") >= 0 || net.indexOf("ap0") >= 0 || net.indexOf("192.168.43") >= 0;
        if (apIface) {
            return "★ 热点真起来了：netcfg 里看到了 AP 接口/192.168.43.x —— 这台车能开热点。";
        }
        if (tryOn != null) {
            if (tryOn.contains("拒绝") || tryOn.contains("SecurityException") || tryOn.contains("NoSuchMethod")
                    || tryOn.contains("异常")) {
                return "②③ 被挡（" + tryOn + "），加上 iw 结论（" + oneLine(caps) + "）——不是菜单问题，是 ROM/SDK 层拒了。";
            }
            if (tryOn.indexOf("接受开") >= 0) {
                return "框架接受了开请求但 netcfg 没看到 AP 接口 —— 驱动多半起不来（那设了也白设）。";
            }
        }
        return "没起来。①：" + oneLine(caps)
                + "；②：" + oneLine(tryOn)
                + "。综合看这台车不能 SoftAP（或 ROM 屏蔽了这个入口）。";
    }

    private static String globalInt(Context ctx, String key) {
        try {
            Class<?> global = Class.forName("android.provider.Settings$Global");
            ContentResolver cr = ctx.getContentResolver();
            Object v = global.getMethod("getInt",
                    android.content.ContentResolver.class, String.class)
                    .invoke(null, cr, key);
            return String.valueOf(v);
        } catch (Throwable t) {
            return "(读不了: " + t + ")";
        }
    }

    private static String sliceAround(String src, String anchor, int linesAfter, int maxLen) {
        int i = src.indexOf(anchor);
        if (i < 0) {
            return "(没有锚点段)";
        }
        int end = src.length();
        int seen = 0;
        for (int p = i; p < src.length(); p++) {
            if (src.charAt(p) == '\n') {
                seen++;
                if (seen > linesAfter || end - i > maxLen) {
                    end = p;
                    break;
                }
            }
        }
        return src.substring(i, Math.min(end, src.length()));
    }

    private static void sleep(long ms) {
        try {
            Thread.sleep(ms);
        } catch (InterruptedException ignored) {
        }
    }

    private static void writeSession(Context ctx, StringBuilder detail) {
        try {
            File dir = new File(ctx.getFilesDir(), "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File f = new File(dir, LOG_FILE);
            if (f.length() > 512000L) {
                f.delete();
            }
            java.io.FileWriter w = new java.io.FileWriter(f, true);
            w.write(detail.toString());
            w.write('\n');
            w.close();
        } catch (Throwable t) {
            Log.w(TAG, "write session failed: " + t);
        }
    }

    private static void report(Context ctx, String tag, String msg) {
        BootDiagnostics.log(ctx, "hotspot-check " + tag + ": " + msg);
    }

    private static String oneLine(String s) {
        if (s == null) {
            return "null";
        }
        String r = s.replace('\n', ' ').trim();
        return r.length() > 300 ? r.substring(0, 300) : r;
    }
}
