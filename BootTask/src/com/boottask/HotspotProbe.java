package com.boottask;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;

import java.io.File;
import java.io.FileWriter;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * v1.6.20 热点探测蹲守（免 root）。
 *
 * 背景：车机设置里有"网络共享与便携式热点"菜单，但打开后手机搜不到热点。
 * v1.6.19 诊断报告的 SoftAP 段是单次快照；本服务做持续蹲守——
 *
 *   - 每 5 秒轻量轮询：AP 状态(反射 getWifiApState)、接口列表(ip addr)、hostapd 进程数；
 *   - 任一状态变化 → 自动抓全量快照写入日志：getprop(wifi 相关)、netcfg、
 *     /proc/net/wireless、logcat 尾部 600 行（含 dhd 驱动/netd/hostapd 报错）；
 *   - 附带「尝试直接打开热点」：反射 WifiManager.setWifiApEnabled(null, true)，
 *     4.4 只需 CHANGE_WIFI_STATE 权限。能开 → 读出 AP 配置(SSID/加密)顺手给手机用；
 *     不能开（SecurityException / 状态不走到 ENABLED）→ 本身就是一层诊断结论。
 *
 * 日志落两处：/sdcard/boottask/hotspot_probe.log（fm.html 可直接取走）
 *          和内部 files/log/hotspot_probe.txt（跟随日志下载打包）。
 */
public class HotspotProbe extends Service {

    private static final String TAG = "HotspotProbe";
    private static final long INTERVAL_MS = 5000L;

    private static volatile boolean sRunning = false;
    private static volatile String sLastAction = "探测未运行";
    private static volatile Context sCtx;
    private static volatile String sLastSnapshot = "";   // 变化检测指纹

    private final Handler mHandler = new Handler();
    private boolean mBusy = false;

    private final Runnable mTask = new Runnable() {
        public void run() {
            if (!mBusy) {
                mBusy = true;
                try {
                    probeOnce(HotspotProbe.this, true);
                } catch (Throwable t) {
                    Log.w(TAG, "probe: " + t);
                }
                mBusy = false;
            }
            mHandler.postDelayed(this, INTERVAL_MS);
        }
    };

    public static boolean isRunning() {
        return sRunning;
    }

    public static String lastAction() {
        return sLastAction;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        sCtx = this;
        sRunning = true;
        sLastAction = "探测运行中，每 5 秒蹲守";
        sLastSnapshot = "";
        logFile(this, "==== 热点探测蹲守启动 ====");
        mHandler.post(mTask);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return START_STICKY;
    }

    @Override
    public void onDestroy() {
        mHandler.removeCallbacks(mTask);
        sRunning = false;
        sLastAction = "探测已停止";
        logFile(this, "==== 热点探测蹲守停止 ====");
        super.onDestroy();
    }

    // ---------------------------------------------------------------- 探测

    /** AP 状态名（WifiManager.WIFI_AP_STATE_* 是 hidden 常量，4.4 值固定） */
    private static String apStateName(int s) {
        switch (s) {
            case 10: return "DISABLING";
            case 11: return "DISABLED";
            case 12: return "ENABLING";
            case 13: return "ENABLED";
            case 14: return "FAILED";
            default: return "UNKNOWN(" + s + ")";
        }
    }

    /** 反射读 getWifiApState；失败返回 -1 */
    static int apState(Context ctx) {
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            Method m = WifiManager.class.getMethod("getWifiApState");
            Object r = m.invoke(wm);
            return r instanceof Integer ? ((Integer) r).intValue() : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    /** 一次探测。fromGuard=true 由蹲守循环调（变化才记），false = 手动（强制全量） */
    static void probeOnce(Context ctx, boolean fromGuard) {
        StringBuilder fp = new StringBuilder(128);
        int st = apState(ctx);
        fp.append(st).append('|');

        String ifout = AdvActions.run(new String[]{"ip", "-f", "inet", "addr"}, 6000L, 16384);
        StringBuilder ifaces = new StringBuilder();
        if (ifout != null) {
            String[] lines = ifout.split("\n");
            for (int i = 0; i < lines.length; i++) {
                String line = lines[i].trim();
                // 形如 "5: wlan0: ..." 或 "5: p2p0: ..."
                if (line.indexOf(':') > 0 && line.matches("^\\d+:\\s+\\S+.*")) {
                    String name = line.substring(line.indexOf(':') + 1).trim()
                            .split(":")[0].trim();
                    String inet = "";
                    for (int j = i + 1; j < lines.length && j <= i + 2; j++) {
                        String l2 = lines[j].trim();
                        if (l2.startsWith("inet ")) {
                            inet = l2.substring(5).trim().split("/")[0].trim();
                            break;
                        }
                    }
                    if (ifaces.length() > 0) {
                        ifaces.append(' ');
                    }
                    ifaces.append(name);
                    if (inet.length() > 0) {
                        ifaces.append('(').append(inet).append(')');
                    }
                }
            }
        }
        String ifs = ifaces.toString();
        fp.append(ifs).append('|');

        int hostapd = 0;
        String psout = AdvActions.run(new String[]{"ps"}, 6000L, 32768);
        if (psout != null) {
            String[] lines = psout.split("\n");
            for (int i = 0; i < lines.length; i++) {
                if (lines[i].indexOf("hostapd") >= 0) {
                    hostapd++;
                }
            }
        }
        fp.append(hostapd);

        String snapshot = fp.toString();
        boolean changed = !snapshot.equals(sLastSnapshot);
        if (fromGuard && !changed) {
            return;   // 没变化不记，防日志膨胀
        }
        sLastSnapshot = snapshot;

        String head = "AP状态=" + (st >= 0 ? apStateName(st) : "反射读不到(-1)")
                + "  接口=[" + (ifs.length() > 0 ? ifs : "无") + "]"
                + "  hostapd进程=" + hostapd;
        sLastAction = "蹲守中：" + head;
        logFile(ctx, (changed && fromGuard ? "★变化 " : "快照 ") + head);

        if (!fromGuard || changed) {
            fullSnapshot(ctx);
        }
    }

    /** 全量快照：getprop / netcfg / proc wireless / logcat 尾部 —— 状态变化时抓 */
    private static void fullSnapshot(Context ctx) {
        try {
            String props = AdvActions.run(new String[]{"getprop"}, 8000L, 65536);
            StringBuilder sb = new StringBuilder();
            if (props != null) {
                String[] lines = props.split("\n");
                for (int i = 0; i < lines.length; i++) {
                    String low = lines[i].toLowerCase(Locale.US);
                    if (low.indexOf("softap") >= 0 || low.indexOf("hostapd") >= 0
                            || low.indexOf("tether") >= 0 || low.indexOf("wifi.") >= 0
                            || low.indexOf("wifi_") >= 0) {
                        sb.append(lines[i]).append('\n');
                    }
                }
            }
            logFile(ctx, "--- getprop(wifi相关) ---\n" + sb.toString().trim());

            String netcfg = AdvActions.run(new String[]{"netcfg"}, 6000L, 16384);
            logFile(ctx, "--- netcfg ---\n" + (netcfg == null ? "(无输出)" : netcfg.trim()));

            String wireless = AdvActions.run(
                    new String[]{"cat", "/proc/net/wireless"}, 5000L, 8192);
            logFile(ctx, "--- /proc/net/wireless ---\n"
                    + (wireless == null ? "(无输出)" : wireless.trim()));

            String bin = AdvActions.run(new String[]{
                    "ls", "-l", "/system/bin/hostapd", "/system/bin/softap",
                    "/system/etc/hostapd.conf", "/data/misc/wifi/hostapd.conf"}, 5000L, 8192);
            logFile(ctx, "--- hostapd 组件 ---\n" + (bin == null ? "(无输出)" : bin.trim()));

            // logcat 尾部 600 行：热点使能瞬间的驱动/Netd/hostapd 报错都在这里
            String lc = AdvActions.run(new String[]{"logcat", "-d", "-t", "600"},
                    10000L, 262144);
            logFile(ctx, "--- logcat -t 600 ---\n" + (lc == null ? "(无输出)" : lc.trim()));
        } catch (Throwable t) {
            logFile(ctx, "全量快照异常 " + t);
        }
    }

    // ---------------------------------------------------------------- 开热点

    /**
     * 反射 setWifiApEnabled(null, true) 尝试直接开热点；成功再读 AP 配置（SSID/加密）。
     * 返回给 UI 的结论字符串，全部动作记日志。
     */
    static String ensureOn(Context ctx) {
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            Method m = WifiManager.class.getMethod("setWifiApEnabled",
                    WifiConfiguration.class, boolean.class);
            Boolean ok = (Boolean) m.invoke(wm, null, Boolean.TRUE);
            String msg = "setWifiApEnabled 调用返回 " + ok + "，等 5 秒看状态是否走到 ENABLED";
            logFile(ctx, "尝试开热点：" + msg);
            int st = apState(ctx);
            if (st == 13) {
                String cfg = apConfig(ctx);
                String full = "热点已开启！" + cfg + " 手机现在可以直接搜";
                logFile(ctx, full);
                return full;
            }
            sLastSnapshot = "";   // 强制下一轮蹲守做全量快照
            return msg + "（当前状态 " + (st >= 0 ? apStateName(st) : "读不到") + "）";
        } catch (Throwable t) {
            String msg = "开热点失败：" + t.getClass().getSimpleName() + " " + t.getMessage()
                    + "（若 SecurityException = ROM 限制，只能从车机设置菜单开）";
            logFile(ctx, "尝试开热点：" + msg);
            return msg;
        }
    }

    /** 读 AP 配置（hidden getWifiApConfiguration），拿到 SSID/加密方式给手机用 */
    private static String apConfig(Context ctx) {
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            Method m = WifiManager.class.getMethod("getWifiApConfiguration");
            WifiConfiguration c = (WifiConfiguration) m.invoke(wm);
            if (c == null) {
                return "（AP 配置为空）";
            }
            String sec;
            if (c.allowedKeyManagement == null || c.allowedKeyManagement.get(0)) {
                sec = "OPEN";
            } else {
                sec = "WPA/WPA2_PSK";
            }
            String psk = "WPA/WPA2_PSK".equals(sec) && c.preSharedKey != null
                    ? " 密码=" + c.preSharedKey : "";
            return "SSID=" + c.SSID + " 加密=" + sec + psk;
        } catch (Throwable t) {
            return "（AP 配置读取失败 " + t + "）";
        }
    }

    // ---------------------------------------------------------------- 日志

    static void logFile(Context ctx, String line) {
        try {
            if (ctx == null) {
                ctx = sCtx;
            }
            if (ctx == null) {
                return;
            }
            String ts = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US)
                    .format(new Date());
            write(ctx.getFilesDir(), "hotspot_probe.txt", ts, line);

            // 外部落盘：/sdcard/boottask/hotspot_probe.log，fm.html 可直接取
            File ext = new File("/sdcard/boottask");
            if (!ext.isDirectory() && !ext.mkdirs()) {
                return;
            }
            write(ext.getAbsoluteFile(), "hotspot_probe.log", ts, line);
        } catch (Throwable ignored) {
        }
    }

    private static void write(File dir, String name, String ts, String line) {
        try {
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File f = new File(dir, name);
            if (f.length() > 1048576L) {
                f.delete();   // 超 1MB 重来，防膨胀
            }
            FileWriter w = new FileWriter(f, true);
            w.write(ts + " " + line + "\n");
            w.close();
        } catch (Throwable ignored) {
        }
    }

    static String readLog(Context ctx) {
        try {
            if (ctx == null) {
                ctx = sCtx;
            }
            if (ctx == null) {
                return "（探测未启动过）";
            }
            File f = new File(ctx.getFilesDir(), "hotspot_probe.txt");
            if (!f.exists()) {
                return "（还没有记录）";
            }
            byte[] data = new byte[(int) Math.min(f.length(), 8192)];
            java.io.FileInputStream in = new java.io.FileInputStream(f);
            int off = 0;
            while (off < data.length) {
                int n = in.read(data, off, data.length - off);
                if (n < 0) {
                    break;
                }
                off += n;
            }
            in.close();
            return new String(data, 0, off, "UTF-8").trim();
        } catch (Throwable t) {
            return "（读取失败 " + t + "）";
        }
    }
}
