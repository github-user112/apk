package com.boottask;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import android.os.IBinder;
import android.util.Log;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/**
 * v1.6.32「后台扫描抓现行」——数出系统 WiFi 扫描的真实频率，并给 WifiRateProbe
 * 提供扫描事件时间轴，回答「RTT 飙高是不是扫描干的」。
 *
 * ★ 为什么不用 logcat 抓扫描日志（本版最重要的取舍）：
 *   Android 4.1+ 起第三方 App 的 logcat **只能读到自己 uid 的日志**（READ_LOGS 变签名权限）。
 *   本项目 10-01 车机日志实锤：diagnostic.txt 的 logcat 段 233 行全是本 App 自己的 pid 2697，
 *   -s 过滤器里的 ActivityManager:I / AndroidRuntime:E 一条都没出来——wpa_supplicant /
 *   WifiService 的扫描日志在这个车上**拿不到**，除非 root（这台车没有 su）。
 *
 * ★ 换的口子：SCAN_RESULTS_AVAILABLE_ACTION（"android.net.wifi.SCAN_RESULTS"）广播——
 *   系统每完成一次 WiFi 扫描（不管哪个 App/框架发起）都会发这条**全局广播**，
 *   任何 App 注册即可收到，零权限、免 root。这就是「抓现行」的证据链来源。
 *   （javap 复核：WifiManager.SCAN_RESULTS_AVAILABLE_ACTION 在本工程编译 jar 里存在；
 *   ScanResult.timestamp / Settings$Global 不在编译 jar（≤API16 stub），本类不依赖它们。）
 *
 * 两条使用路径：
 *   ① 独立 Service：主界面「① 数扫描 60 秒」按钮 → 60 秒窗口计数 + 判定 + 落盘；
 *   ② WifiRateProbe 引用：beginSession/endSession/eventsBetween 把 RTT 尖峰与扫描事件
 *      做时间关联（窗口：尖峰前 1 秒 ~ 后 4 秒——扫描广播在扫描完成时才发出，
 *      受损的 ping 一定落在扫描完成前后的这个区间里）。
 *
 * 会话语义：beginSession 注册接收器（引用计数，两条路径可重叠）并返回本方基线时刻；
 * endSession 引用归零时注销。事件表在「0→1」时清空。
 *
 * 日志：files/log/scan_catcher.txt（日志下载 zip 会打包）+ 外部副本 /sdcard/boottask/。
 *
 * 局限（如实告知）：广播只能证明「扫描发生了几次」，**点不了名**（谁发起的）——
 * 发起点在 WifiService，本 App 读不到那行日志。定位手段是差分法：
 * 「扫描静默」前后各数 60 秒，频率大降 = 已保存网络重连扫描是主犯；
 * 没降 = 框架周期/位置扫描，走日志里给的 adb 命令。
 */
public class ScanCatcher extends Service {

    private static final String TAG = "ScanCatcher";
    private static final long SESSION_MS = 60000L;

    private static final Object LOCK = new Object();
    /** 扫描完成事件（墙钟毫秒），只在会话期间追加 */
    private static final List<Long> EVENTS = new ArrayList<Long>();
    private static BroadcastReceiver sRx;
    private static int sRefs = 0;
    private static int sIgnored = 0;   // 无会话时收到的广播（接收器注销不及时的兜底计数）

    private static volatile boolean sRunning = false;
    private static volatile String sLast = "（未测）";
    private static volatile String sVerdict = "";

    private volatile boolean mStop = false;

    public static boolean isRunning() {
        return sRunning;
    }

    public static String lastResult() {
        return sLast;
    }

    public static String verdict() {
        return sVerdict;
    }

    /**
     * 开一段扫描观测会话。返回本方基线时刻（墙钟 ms）——
     * 重叠会话（例如速率探测与数扫描同时跑）各自只认自己基线之后的事件。
     */
    public static long beginSession(Context ctx) {
        long now = System.currentTimeMillis();
        synchronized (LOCK) {
            if (sRefs == 0) {
                EVENTS.clear();
                try {
                    if (sRx == null) {
                        sRx = new BroadcastReceiver() {
                            @Override
                            public void onReceive(Context c, Intent i) {
                                onScanEvent();
                            }
                        };
                    }
                    ctx.getApplicationContext().registerReceiver(sRx,
                            new IntentFilter(WifiManager.SCAN_RESULTS_AVAILABLE_ACTION));
                } catch (Throwable t) {
                    sRx = null;   // 注册失败就如实退化：本会话收不到事件
                    Log.w(TAG, "register SCAN_RESULTS receiver failed: " + t);
                }
            }
            sRefs++;
        }
        return now;
    }

    /** 结束会话；引用归零时注销接收器（事件表保留，供结束后的分析回读） */
    public static void endSession(Context ctx) {
        synchronized (LOCK) {
            if (sRefs > 0) {
                sRefs--;
            }
            if (sRefs == 0 && sRx != null) {
                try {
                    ctx.getApplicationContext().unregisterReceiver(sRx);
                } catch (Throwable ignored) {
                }
                sRx = null;
            }
        }
    }

    /** 当前事件表里全部事件数（最近一次会话清表后累计） */
    public static int eventCount() {
        synchronized (LOCK) {
            return EVENTS.size();
        }
    }

    /** [from, to]（墙钟 ms）窗口内的扫描事件数 */
    public static int eventsBetween(long from, long to) {
        synchronized (LOCK) {
            int n = 0;
            for (int i = 0; i < EVENTS.size(); i++) {
                long t = EVENTS.get(i).longValue();
                if (t >= from && t <= to) {
                    n++;
                }
            }
            return n;
        }
    }

    private static void onScanEvent() {
        synchronized (LOCK) {
            if (sRefs <= 0) {
                sIgnored++;
                return;
            }
            EVENTS.add(Long.valueOf(System.currentTimeMillis()));
        }
    }

    // ------------------------------------------------------------------ Service

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        sRunning = true;
        mStop = false;
        new Thread(new Runnable() {
            public void run() {
                try {
                    runCount();
                } catch (Throwable t) {
                    logFile("异常: " + t);
                    Log.w(TAG, "count fail", t);
                } finally {
                    endSession(ScanCatcher.this);
                    sRunning = false;
                    sLast = readLog();
                    stopSelf();
                }
            }
        }, "ScanCatcher").start();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return START_NOT_STICKY;
    }

    @Override
    public void onDestroy() {
        mStop = true;
        super.onDestroy();
    }

    // ------------------------------------------------------------------ 主流程

    private void runCount() {
        long t0 = beginSession(this);
        logFile("=== 数扫描开始（60 秒窗口）===");
        logFile("抓取口：SCAN_RESULTS_AVAILABLE_ACTION 广播——系统每完成一次 WiFi 扫描发一次，"
                + "零权限免 root。App uid 的 logcat 读不到 WifiService/wpa 日志（4.1+ 平台限制），不用它。");
        int i = 0;
        while (!mStop && System.currentTimeMillis() - t0 < SESSION_MS) {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                break;
            }
            i++;
            if (i % 10 == 0) {
                int n = eventsBetween(t0, System.currentTimeMillis());
                // v1.6.33：顺带采省电轨迹（缓存 1.5s，10s 间隔 → 每次新鲜；博通动态 PS 会 flapping）
                logFile("  +" + i + "s：已收到 " + n + " 次扫描完成广播；WiFi 省电=" + WifiPowerSave.cached());
            }
        }
        long elapsed = System.currentTimeMillis() - t0;
        int total = eventsBetween(t0, t0 + elapsed);
        double perMin = elapsed > 0 ? total * 60000.0 / elapsed : 0;
        logFile("");
        logFile("【结果】" + (elapsed / 1000) + " 秒内扫描完成 " + total
                + " 次（≈" + fmt(perMin) + " 次/分）");

        String verdict;
        if (total == 0) {
            verdict = "60 秒 0 次扫描 —— 此刻没有后台扫描在跑；"
                    + "若 RTT 仍飙高，扫描嫌疑可排除（转查 GO 负担/省电/CPU）";
        } else if (perMin >= 4) {
            verdict = (elapsed / 1000) + " 秒 " + total + " 次（≈每 "
                    + fmt(elapsed / 1000.0 / total) + " 秒一次）—— ★后台在持续扫描！"
                    + "下一步点『② 扫描静默』再复测『① 数扫描』：频率大降=已保存网络重连扫描是主犯，"
                    + "没降=框架周期/位置扫描（走日志里的 adb 命令）";
        } else {
            verdict = (elapsed / 1000) + " 秒 " + total + " 次（≈"
                    + fmt(perMin) + " 次/分）—— 有扫描但不密集；建议静默前后各数一次做差分";
        }
        logFile("判定：" + verdict);
        if (sIgnored > 0) {
            logFile("（备注：" + sIgnored + " 次广播在无会话时到达被忽略——正常，仅说明接收器曾处于注销边缘）");
        }
        logFile("点不了名：谁发起的扫描在 WifiService 日志里，本 App 读不到；定位用『静默前后差分』。");
        logFile("=== 数扫描结束 ===");
        sVerdict = verdict;
    }

    // ------------------------------------------------------------------ 日志

    private void logFile(String s) {
        File f = logFile();
        if (f.length() > 512000L) {
            f.delete();
        }
        String line = timeNow() + " " + s + "\n";
        try {
            java.io.FileWriter w = new java.io.FileWriter(f, true);
            w.write(line);
            w.close();
        } catch (Throwable ignored) {
        }
        try {
            File ext = new File("/sdcard/boottask");
            if (!ext.isDirectory() && !ext.mkdirs()) {
                return;
            }
            File ef = new File(ext, "scan_catcher.log");
            if (ef.length() > 1048576L) {
                ef.delete();
            }
            java.io.FileWriter w2 = new java.io.FileWriter(ef, true);
            w2.write(line);
            w2.close();
        } catch (Throwable ignored) {
        }
    }

    private File logFile() {
        File dir = new File(getFilesDir(), "log");
        if (!dir.isDirectory() && !dir.mkdirs()) {
            dir = getFilesDir();   // 极端情况退化到根，至少不丢数据
        }
        return new File(dir, "scan_catcher.txt");
    }

    private String readLog() {
        File f = logFile();
        if (!f.exists()) {
            return "";
        }
        List<String> lines = new ArrayList<String>();
        BufferedReader br = null;
        try {
            br = new BufferedReader(new InputStreamReader(
                    new java.io.FileInputStream(f), "UTF-8"));
            String l;
            while ((l = br.readLine()) != null) {
                lines.add(l);
                if (lines.size() > 400) {
                    lines.remove(0);
                }
            }
        } catch (Throwable t) {
            return "";
        } finally {
            try {
                if (br != null) {
                    br.close();
                }
            } catch (Throwable ignored) {
            }
        }
        int from = Math.max(0, lines.size() - 60);
        StringBuilder b = new StringBuilder();
        for (int i = from; i < lines.size(); i++) {
            b.append(lines.get(i)).append('\n');
        }
        return b.toString();
    }

    private static String fmt(double v) {
        if (v >= 100) {
            return String.valueOf((long) v);
        }
        long x = (long) (v * 10 + 0.5);
        return (x / 10) + "." + (x % 10);
    }

    private static String timeNow() {
        try {
            return new java.text.SimpleDateFormat("MM-dd HH:mm:ss")
                    .format(new java.util.Date());
        } catch (Throwable t) {
            return "";
        }
    }
}
