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
        migrateOldLog(this, "hotspot_probe.txt");   // v1.6.25：旧根目录日志搬进 log/（zip 只收 log/）
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

    /**
     * v1.6.26 一键攻坚（零 adb 闭环核心）：一个按钮自动走完全套判定，
     * 每步输出落 hotspot_probe 日志，最后写【攻坚结论】——扫码日志包回来
     * 就能看到全部过程，不需要 adb。
     *
     *   ① 反射 setWifiApEnabled → 等 8 秒 → 读 AP 状态；
     *   ② ENABLED → 读 AP 配置 + netcfg 找 192.168.43.x：
     *      有接口有 IP = 成功；有状态没 IP = 缺 DHCP 层，记明；
     *   ③ 反射被拒/状态不动且有 root → Plan B：写 hostapd.conf → 起 hostapd
     *      → 配 192.168.43.1 → 起 dnsmasq 发 DHCP；
     *   ④ 无 root 反射也死 → 结论直接写「去开发者选项开 Root 再点一次」。
     */
    static String attackOnce(Context ctx) {
        logFile(ctx, "⚔️ ===== 一键攻坚开始 =====");
        // ① 反射路径（4.4 只需 CHANGE_WIFI_STATE，多数 ROM 直接成）
        String r = ensureOn(ctx);
        try {
            Thread.sleep(8000L);   // 等 hostapd 走完 ENABLING
        } catch (InterruptedException ignored) {
        }
        int st = apState(ctx);
        logFile(ctx, "① 反射后 AP 状态=" + (st >= 0 ? apStateName(st) : "读不到"));
        if (st == 13) {
            String cfg = apConfig(ctx);
            String netcfg = AdvActions.run(new String[]{"netcfg"}, 6000L, 16384);
            boolean hasIp = netcfg != null && netcfg.indexOf("192.168.43.") >= 0;
            logFile(ctx, "② AP 已 ENABLED，配置：" + cfg
                    + "\nnetcfg：\n" + (netcfg == null ? "(无输出)" : netcfg.trim()));
            String verdict = hasIp
                    ? "【攻坚结论】✅ 反射路径成功且已有 192.168.43.x 地址——手机现在就能搜到并连上"
                    : "【攻坚结论】⚠️ AP 已 ENABLED 但 netcfg 里没有 192.168.43.x——"
                      + "热点信号应该已能搜到，但没有 DHCP，手机连上拿不到 IP。"
                      + "下一步试 root 起 dnsmasq（开发者选项开 Root 后再来一发）";
            logFile(ctx, verdict);
            return verdict + "\n" + cfg;
        }
        // ③ Plan B：root + hostapd 手动起
        if (FileOps.suOk()) {
            String b = hostapdPlanB(ctx);
            logFile(ctx, "【攻坚结论】" + b);
            return b;
        }
        String dead = "【攻坚结论】❌ 反射路径失败（" + r + "）且无 root——"
                + "请到车机 设置→开发者选项 把 Root 权限打开（eng 版有此项），"
                + "再回本页点一次（将自动改走 hostapd 方案）";
        logFile(ctx, dead);
        return dead;
    }

    /**
     * Plan B：root 下手动起完整热点栈。
     * hostapd（AP 层）→ ifconfig 配网关地址（DHCP 服务端地址）→ dnsmasq（发 IP）。
     * 每步 su 输出都落日志，失败也落——这份日志就是下次分析的全部依据。
     */
    private static String hostapdPlanB(Context ctx) {
        try {
            // 探测 AP 用网卡：bcmdhd 常见 wlan0 直接进 AP 模式，也可能是 ap0/wl0.1
            String ifs = AdvActions.run(new String[]{"ls", "/sys/class/net"}, 5000L, 4096);
            logFile(ctx, "③ Plan B：现有网卡 " + (ifs == null ? "(无)" : ifs.trim()));
            String iface = "wlan0";
            if (ifs != null) {
                if (ifs.indexOf("ap0") >= 0) {
                    iface = "ap0";
                } else if (ifs.indexOf("wl0.1") >= 0) {
                    iface = "wl0.1";
                }
            }
            File local = new File(ctx.getFilesDir(), "boottask_hostapd.conf");
            FileWriter w = new FileWriter(local, false);
            w.write("interface=" + iface + "\n"
                    + "driver=nl80211\n"
                    + "ssid=AndroidAP\n"
                    + "hw_mode=g\n"
                    + "channel=6\n"
                    + "wpa=2\n"
                    + "wpa_passphrase=carlife123\n"
                    + "wpa_key_mgmt=WPA-PSK\n"
                    + "rsn_pairwise=CCMP\n");
            w.close();
            String conf = "/data/local/tmp/boottask_hostapd.conf";
            String cp = FileOps.su("cp " + FileOps.q(local.getAbsolutePath()) + " " + conf);
            logFile(ctx, "③ 上传 conf: " + (cp == null ? "ok" : cp));
            String stop = FileOps.su("killall hostapd 2>/dev/null; sleep 1");
            logFile(ctx, "③ 清理旧 hostapd: " + (stop == null ? "ok" : stop));
            String hap = FileOps.su("hostapd -B " + conf + " 2>&1; sleep 2; ps | grep [h]ostapd");
            logFile(ctx, "③ hostapd 启动: " + (hap == null ? "(无输出/失败)" : hap.trim()));
            boolean up = hap != null && hap.indexOf("hostapd") >= 0;
            if (!up) {
                return "hostapd 没起来（日志里有 su 输出）——多半驱动不含 AP 功能或接口名不对，"
                        + "把日志包发我再看";
            }
            String ip = FileOps.su("ifconfig " + iface + " 192.168.43.1 netmask 255.255.255.0 up 2>&1");
            logFile(ctx, "④ 配 IP: " + (ip == null ? "ok" : ip.trim()));
            String dn = FileOps.su("dnsmasq --interface=" + iface
                    + " --dhcp-range=192.168.43.10,192.168.43.50,255.255.255.0,12h"
                    + " --except-interface=lo 2>&1; sleep 1; ps | grep [d]nsmasq");
            logFile(ctx, "④ dnsmasq 启动: " + (dn == null ? "(无输出/失败)" : dn.trim()));
            boolean dhcp = dn != null && dn.indexOf("dnsmasq") >= 0;
            String netcfg = AdvActions.run(new String[]{"netcfg"}, 6000L, 16384);
            logFile(ctx, "⑤ netcfg：\n" + (netcfg == null ? "(无输出)" : netcfg.trim()));
            return "✅ Plan B 起来了：SSID=AndroidAP 密码=carlife123（接口 "
                    + iface + "，网关 192.168.43.1，DHCP "
                    + (dhcp ? "已起，手机直接连" : "未起——手机连上需手动配 IP 192.168.43.2")
                    + "）。注意：这会占用射频，投屏 P2P 会让路";
        } catch (Throwable t) {
            logFile(ctx, "Plan B 异常 " + t);
            return "Plan B 异常：" + t + "（日志有详情，发我）";
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
            // v1.6.25：内部副本改落 files/log/（打包下载只枚举 files/log/，根目录文件进不了 zip）
            File inDir = new File(ctx.getFilesDir(), "log");
            if (!inDir.isDirectory() && !inDir.mkdirs()) {
                inDir = ctx.getFilesDir();   // 退化
            }
            write(inDir, "hotspot_probe.txt", ts, line);

            // 外部落盘：/sdcard/boottask/hotspot_probe.log，fm.html 可直接取
            File ext = new File("/sdcard/boottask");
            if (!ext.isDirectory() && !ext.mkdirs()) {
                return;
            }
            write(ext.getAbsoluteFile(), "hotspot_probe.log", ts, line);
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.25：把旧版写在 getFilesDir() 根的历史日志搬进 log/（rename 失败则内容搬运） */
    private static void migrateOldLog(Context ctx, String name) {
        try {
            File root = ctx.getFilesDir();
            File oldF = new File(root, name);
            if (!oldF.isFile() || oldF.length() == 0) {
                return;
            }
            File dir = new File(root, "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File newF = new File(dir, name);
            if (newF.exists()) {
                return;
            }
            if (!oldF.renameTo(newF)) {
                java.io.FileInputStream in = new java.io.FileInputStream(oldF);
                byte[] b = new byte[(int) oldF.length()];
                int off = 0;
                while (off < b.length) {
                    int n = in.read(b, off, b.length - off);
                    if (n < 0) {
                        break;
                    }
                    off += n;
                }
                in.close();
                java.io.FileOutputStream out = new java.io.FileOutputStream(newF, true);
                out.write(b);
                out.close();
                oldF.delete();
            }
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
            File f = new File(new File(ctx.getFilesDir(), "log"), "hotspot_probe.txt");
            if (!f.exists()) {
                // v1.6.25 兼容：迁移前旧版写在 getFilesDir() 根
                f = new File(ctx.getFilesDir(), "hotspot_probe.txt");
            }
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
