package com.boottask;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.IBinder;
import android.util.Log;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;

/**
 * v1.6.35 低速蹲守（常开自动记录）—— 修「出问题时再点按钮已经晚了」的死穴。
 *
 * 用户实锤的矛盾：测 RTT / 数扫描都是手动触发，可「WLAN 速率低」和断联发生在一瞬间，
 * 等发现了再点按钮，尖峰现场早没了。本服务把「探测」变成「蹲守」：
 *
 *  - 开启后（默认开）每 2 秒 ping 一次对端（复刻亿连同款节奏与阈值），
 *    平时只留 60 秒一条心跳日志（文件不膨胀）；
 *  - RTT>200ms / 超时当场记「尖峰」行（含 streak 计数、省电采样、扫描计数）；
 *  - 连续 3 次超阈值 → 记「★★ 亿连弹窗时刻」；
 *  - 对端消失/连续超时 → 记「★★★ 断链时刻」并抓现场快照（ip addr/无线计数/
 *    dev 计数/CPU/扫描事件）—— 断链那 1 秒的证据自动留档，不用人按按钮；
 *  - 后台扫描广播同步计数，尖峰行可与扫描事件做时间关联。
 *
 * 开关持久化（prefs ratewatch/on，安装后默认开），BootAudioReceiver 开机恢复。
 * 日志：files/log/rate_watcher.txt（进 boottask-logs.zip）+ /sdcard/boottask/rate_watcher.log。
 */
public class RateWatcher extends Service {

    private static final String TAG = "RateWatcher";
    private static final String PREFS = "ratewatch";
    private static final String KEY_ON = "on";

    private static volatile boolean sRunning = false;
    private static volatile String sStatus = "未运行";
    private static volatile long sScans = 0;

    private volatile boolean mStop = false;
    private long mLastSnapshotAt = 0;   // 断链快照冷却：同一链路故障不必每 10 秒刷屏

    public static boolean isRunning() {
        return sRunning;
    }

    public static String status() {
        return sStatus;
    }

    public static long scanCount() {
        return sScans;
    }

    public static boolean enabled(Context ctx) {
        if (ctx == null) {
            return true;   // 读不到就当开（默认开）
        }
        SharedPreferences p = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        return p.getBoolean(KEY_ON, true);   // 默认开：被动守护，装上就在
    }

    public static void setEnabled(Context ctx, boolean on) {
        if (ctx == null) {
            return;
        }
        ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .edit().putBoolean(KEY_ON, on).commit();
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        sRunning = true;
        mStop = false;
        logFile("=== 低速蹲守启动（每 2s ping 对端，尖峰/断链自动留档）===");
        new Thread(new Runnable() {
            public void run() {
                try {
                    watchLoop();
                } catch (Throwable t) {
                    logFile("蹲守异常终止: " + t);
                    Log.w(TAG, "watch fail", t);
                } finally {
                    sRunning = false;
                    sStatus = "已停止";
                    stopSelf();
                }
            }
        }, "RateWatcher").start();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return START_STICKY;   // 被杀后系统会重建（蹲守要常驻）
    }

    @Override
    public void onDestroy() {
        mStop = true;
        super.onDestroy();
    }

    // ------------------------------------------------------------------ 蹲守主循环

    private void watchLoop() {
        // 扫描广播接收器：与 WifiRateProbe/ScanCatcher 互不干扰（各自独立注册）
        android.content.BroadcastReceiver rx = new android.content.BroadcastReceiver() {
            public void onReceive(Context c, Intent i) {
                sScans++;
            }
        };
        try {
            registerReceiver(rx, new android.content.IntentFilter(
                    "android.net.wifi.SCAN_RESULTS_AVAILABLE_ACTION"));
        } catch (Throwable ignored) {
        }

        String peer = null;
        boolean hadPeer = false;   // 曾经找到过对端 —— 之后消失 = 组被拆
        long peerRetryAt = 0;
        int streak = 0;            // 连续 >200ms 或超时的次数（亿连判定的 streak）
        int timeouts = 0;          // 连续超时次数（断链判定）
        long lastHeartbeat = 0;
        long lastPsSample = 0;
        String lastPs = "";
        long lastScanMark = 0;

        try {
            while (!mStop) {
                long now = System.currentTimeMillis();
                // 对端没了或 30 秒重解析一次（断链重连后 IP 会变）
                if (peer == null || now - peerRetryAt > 30000L) {
                    peer = findPeer();
                    peerRetryAt = now;
                }
                if (peer == null) {
                    if (hadPeer) {
                        // 从「有对端」掉到「无对端」= 组已拆，抓现场
                        dumpDisconnect("对端从 ip neigh 消失（P2P 组已拆）");
                        hadPeer = false;
                        timeouts = 0;
                        streak = 0;
                    }
                    sStatus = "等待对端（P2P 组未建立或热点模式）";
                    sleep(2000L);
                    continue;
                }
                hadPeer = true;

                int rtt = pingRtt(peer);
                boolean bad = (rtt > 200) || (rtt < 0);
                if (bad) {
                    streak++;
                    if (rtt < 0) {
                        timeouts++;
                    } else {
                        timeouts = 0;
                    }
                    // 尖峰时刻省电采样（1.6.33：缓存 TTL 1.5s，连点不炸）
                    String ps = "";
                    if (now - lastPsSample > 10000L) {
                        lastPs = WifiPowerSave.sampleOnce();
                        lastPsSample = now;
                        ps = lastPs;
                    } else {
                        ps = lastPs;
                    }
                    long scans = sScans - lastScanMark;
                    lastScanMark = sScans;
                    String line = (rtt < 0 ? "超时" : ("rtt=" + rtt + "ms"))
                            + " streak=" + streak
                            + " 自上次尖峰扫描+" + scans
                            + (ps.length() > 0 ? " 省电[" + ps + "]" : "");
                    if (streak == 3) {
                        logFile("★★ 亿连弹窗时刻（连续 3 次超阈值）：" + line);
                    } else {
                        logFile("尖峰: " + line);
                    }
                    if (timeouts >= 5) {
                        dumpDisconnect("连续 " + timeouts + " 次 ping 超时");
                        timeouts = 0;
                        streak = 0;
                    }
                    sStatus = "尖峰 " + line;
                    sleep(2000L);
                    continue;
                }

                // 正常拍：清 streak/timeout 计数，60 秒一条心跳
                streak = 0;
                timeouts = 0;
                lastScanMark = sScans;
                sStatus = "正常 rtt=" + rtt + "ms（对端 " + peer + "，扫描累计 " + sScans + "）";
                if (now - lastHeartbeat > 60000L) {
                    logFile("正常 rtt=" + rtt + "ms 扫描累计=" + sScans);
                    lastHeartbeat = now;
                }
                sleep(2000L);
            }
        } finally {
            try {
                unregisterReceiver(rx);
            } catch (Throwable ignored) {
            }
            logFile("=== 低速蹲守停止 ===");
        }
    }

    private void sleep(long ms) {
        try {
            Thread.sleep(ms);
        } catch (InterruptedException ignored) {
        }
    }

    /** 断链现场快照：ip addr / 无线计数 / dev 计数 / 省电 / 扫描 —— 断链后不用人按按钮 */
    private void dumpDisconnect(String why) {
        long now = System.currentTimeMillis();
        if (now - mLastSnapshotAt < 60000L) {
            // 同一链路故障不必每 10 秒刷屏：已经抓过现场，60 秒内只记一行摘要
            logFile("★★★ 断链持续：" + why + "（快照 60s 内已抓，省略细节）");
            sStatus = "★ 断链：" + why;
            return;
        }
        mLastSnapshotAt = now;
        logFile("★★★ 断链时刻：" + why);
        sStatus = "★ 断链：" + why;
        String addr = AdvActions.run(new String[]{"ip", "-f", "inet", "addr"}, 6000L, 4096);
        logFile("  ip addr:\n" + indent(trimLines(addr, 40)));
        String wireless = AdvActions.run(new String[]{"cat", "/proc/net/wireless"}, 6000L, 4096);
        logFile("  /proc/net/wireless:\n" + indent(trimLines(wireless, 10)));
        String dev = AdvActions.run(new String[]{"cat", "/proc/net/dev"}, 6000L, 8192);
        logFile("  /proc/net/dev:\n" + indent(trimLines(dev, 30)));
        logFile("  省电：" + WifiPowerSave.sampleOnce());
        logFile("  扫描累计=" + sScans);
    }

    private static String trimLines(String out, int max) {
        if (out == null || out.length() == 0) {
            return "  (读不到)";
        }
        String[] ls = out.split("\n");
        StringBuilder sb = new StringBuilder();
        int from = Math.max(0, ls.length - max);
        for (int i = from; i < ls.length; i++) {
            sb.append(ls[i]).append('\n');
        }
        return sb.toString();
    }

    private static String indent(String s) {
        return "  " + s.replace("\n", "\n  ");
    }

    // ------------------------------------------------------------------ 网络探测（与 WifiRateProbe 同款实现）

    /** 系 ping 单次 RTT：>=0 RTT ms；-1 执行了但失败；-2 ping 二进制不存在 */
    private int pingRtt(String ip) {
        Process p;
        long t0 = System.currentTimeMillis();
        try {
            p = Runtime.getRuntime().exec(new String[]{"ping", "-c", "1", "-W", "1", ip});
        } catch (Throwable t) {
            return -2;
        }
        try {
            StringBuilder sb = new StringBuilder();
            BufferedReader br = new BufferedReader(new java.io.InputStreamReader(p.getInputStream()));
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line).append('\n');
            }
            br.close();
            int rc = p.waitFor();
            String out = sb.toString();
            int i = out.indexOf("time=");
            if (i >= 0) {
                String sub = out.substring(i + 5).trim();
                int sp = sub.indexOf(' ');
                if (sp > 0) {
                    sub = sub.substring(0, sp);
                }
                try {
                    int dot = sub.indexOf('.');
                    if (dot > 0) {
                        sub = sub.substring(0, dot);
                    }
                    return Integer.parseInt(sub);
                } catch (NumberFormatException ignored) {
                }
            }
            if (rc == 0) {
                return (int) (System.currentTimeMillis() - t0);
            }
            return -1;
        } catch (Throwable t) {
            return -1;
        } finally {
            try {
                p.destroy();
            } catch (Throwable ignored) {
            }
        }
    }

    /**
     * 找对端：先看默认网关（热点/直连通用），再回退到 ip neigh。
     * 车机做 P2P GO 时网关就是手机（192.168.49.x，x!=1）；
     * 手机做 AP 热点时网关是手机（192.168.43.1），必须允许 .1 作为对端。
     */
    private String findPeer() {
        // 1. 从默认路由取网关：wlan0/p2p0 活跃时最直接
        String[] lines;
        String route = AdvActions.run(new String[]{"ip", "route"}, 8000L, 4096);
        if (route != null) {
            lines = route.split("\n");
            for (int i = 0; i < lines.length; i++) {
                String t = lines[i].trim();
                if (!t.startsWith("default")) {
                    continue;
                }
                String[] parts = t.split(" +");
                for (int k = 0; k < parts.length - 1; k++) {
                    if ("via".equals(parts[k])) {
                        String gw = parts[k + 1];
                        if (isLikelyPeerIp(gw)) {
                            return gw;
                        }
                    }
                }
            }
        }

        // 2. 回退：ip neigh 里找 192.168.49.x/43.x 的可用对端
        String out = AdvActions.run(new String[]{"ip", "neigh"}, 8000L, 8192);
        if (out == null) {
            return null;
        }
        lines = out.split("\n");
        for (int i = 0; i < lines.length; i++) {
            String t = lines[i].trim();
            int sp = t.indexOf(' ');
            if (sp <= 0) {
                continue;
            }
            String ip = t.substring(0, sp);
            if (!isLikelyPeerIp(ip) || t.indexOf("FAILED") >= 0) {
                continue;
            }
            // P2P GO 自己通常是 .1，热点时 .1 是对端，所以这里不排除 .1，
            // 但同一台车机自己的 192.168.49.1/43.1 也会出现在 ip neigh 吗？
            // 自己不会出现在 ip neigh 里，因此安全。
            return ip;
        }
        return null;
    }

    private static boolean isLikelyPeerIp(String ip) {
        return ip != null && (ip.startsWith("192.168.49.") || ip.startsWith("192.168.43."));
    }

    // ------------------------------------------------------------------ 日志（与另三探针同契约：files/log/ + /sdcard/boottask/）

    private void logFile(String s) {
        File f = new File(new File(getFilesDir(), "log"), "rate_watcher.txt");
        try {
            File d = f.getParentFile();
            if (d != null && !d.isDirectory()) {
                d.mkdirs();
            }
        } catch (Throwable ignored) {
        }
        if (f.length() > 512000L) {
            f.delete();
        }
        String line = timeNow() + " " + s + "\n";
        try {
            FileWriter w = new FileWriter(f, true);
            w.write(line);
            w.close();
        } catch (Throwable ignored) {
        }
        try {
            File ext = new File("/sdcard/boottask");
            if (!ext.isDirectory() && !ext.mkdirs()) {
                return;
            }
            File ef = new File(ext, "rate_watcher.log");
            if (ef.length() > 1048576L) {
                ef.delete();
            }
            FileWriter w2 = new FileWriter(ef, true);
            w2.write(line);
            w2.close();
        } catch (Throwable ignored) {
        }
    }

    private static String timeNow() {
        java.text.SimpleDateFormat f = new java.text.SimpleDateFormat("MM-dd HH:mm:ss");
        return f.format(new java.util.Date());
    }
}
