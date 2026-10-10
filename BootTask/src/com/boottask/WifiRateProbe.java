package com.boottask;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;

/**
 * v1.6.24「WLAN 速率低」诊断 + 缓解。
 *
 * 背景（亿连 V7.0.1 反编译实锤，见 04_文档/亿连V7.0.1_直连低速断连_分析报告.md）：
 *   提示文案 `wifi_low_speed_tip = WiFi传输速率低`，弹出点在 f.a.k.l0.p3.w()；
 *   监控线程 `Mirror_Presenter_Ping_Service`（镜像 Presenter r0.o()）每 2 秒 ping 一次对端，
 *   **单次 RTT > 200ms 记 1 次，连续 3 次就弹 Toast**（最快 6 秒）。
 *   → 它测的是「往返时延」，不是带宽；「速率低」三个字有误导性。
 *   → 监控只在传输类型名含 WIFI 时启动（EC_TRANSPORT_ANDROID_WIFI=2，直连与热点都算），
 *     走 USB 永远不会弹。
 *   → 弹窗本身不断链（w()/z() 只操作 Toast 和一个隐藏 View），
 *     断链是同因二果：RTT 飙高与 socket 超时/镜像流中断同时发生。
 *
 * 本类做三件事：
 *   ① 复刻亿连的判定逻辑，自己 ping 对端 120 秒，把每次 RTT 落盘 + 统计
 *      （p50/p95/最大/超时次数），并明确告诉你「够不够触发亿连的弹窗」；
 *      v1.6.25 起落盘：内部 files/log/wifi_rate_probe.txt（日志下载 zip 会打包）
 *      + 外部副本 /sdcard/boottask/wifi_rate_probe.log。
 *   ② 抓直连的真实链路指标：P2P operating channel / RSSI / link speed / 重传，
 *      全部免 root（读 /proc/net/wireless + getprop + netcfg，wpa_supplicant 走 logcat 免 root 拿不到就说明）；
 *   ③ 给出并可一键落地「缓解措施」：把亿连投屏分辨率降下来（写 /data/data/net.easyconn/... 不可能，
 *      免 root 唯一可写的是亿连自己的 SharedPreferences —— 所以核心手段是**外置参数 + 提示**，
 *      真正生效靠 /etc/ec.conf，车机无 root 写不了时会明确告诉用户走哪条路）。
 *
 * 免 root 能做的最有价值的事：**把「到底是谁在拖」量化出来**——是空口（RTT 高 + RSSI 弱 + 重传多）
 * 还是车机自身（CPU 满 + 丢包 0 但 RTT 高）。
 */
public class WifiRateProbe extends Service {

    private static final String TAG = "WifiRateProbe";
    private static final String PREFS = "wifirate";
    private static final String KEY_ON = "on";
    private static final String PREFS_UI = "wifirateui";
    private static final String KEY_DURATION = "duration";

    private static volatile boolean sRunning = false;
    private static volatile String sLast = "（未运行）";
    private static volatile String sVerdict = "";
    private static volatile String sTarget = "";

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

    public static String target() {
        return sTarget;
    }

    public static void setDuration(Context ctx, int sec) {
        if (ctx == null) {
            return;
        }
        ctx.getSharedPreferences(PREFS_UI, Context.MODE_PRIVATE)
                .edit().putInt(KEY_DURATION, Math.max(30, Math.min(600, sec))).commit();
    }

    public static int duration(Context ctx) {
        if (ctx == null) {
            return 120;
        }
        return ctx.getSharedPreferences(PREFS_UI, Context.MODE_PRIVATE)
                .getInt(KEY_DURATION, 120);
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
        migrateOldLog();   // v1.6.25：把旧版写在 getFilesDir() 根的历史日志搬进 log/（打包器只收 log/）
        logFile("=== 速率低探测启动 ===");
        // v1.6.26 修 P0：原来 mHandler.post 会把 runProbe 跑在**主线程**上——
        // pingLoop 阻塞最长 120 秒，App 直接冻结/ANR（点完按钮整页无响应）。
        // 探测是纯后台任务（只写日志、不动 UI），改独立线程。
        new Thread(new Runnable() {
            public void run() {
                try {
                    runProbe();
                } catch (Throwable t) {
                    logFile("探测异常: " + t);
                    Log.w(TAG, "probe fail", t);
                } finally {
                    sRunning = false;
                    stopSelf();
                }
            }
        }, "WifiRateProbe").start();
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

    private void runProbe() {
        int dur = duration(this);
        String peer = findPeer();
        sTarget = peer == null ? "" : peer;
        logFile("探测时长 " + dur + "s，目标对端 " + (peer == null ? "未找到" : peer));
        logFile("");
        logFile("【判定标准】亿连：每 2s ping 一次，单次 RTT>200ms 记 1 次，连续 3 次弹「WiFi传输速率低」");
        logFile("            → 连续 6 秒以上持续劣化才弹；本探测复刻同一阈值。");
        logFile("");

        // ---- ① 空口侧：RTT 分布 ----
        RttStats st = peer == null ? null : pingLoop(peer, dur);
        logFile("");
        logFile("【① RTT 实测（复刻亿连判定）】");
        if (st == null) {
            logFile("  没找到对端 IP —— 链路可能已经断了（P2P 组已拆？）。");
            logFile("  对端 IP 来源：ip neigh 里 192.168.49.x / 网关 192.168.49.1 都是候选。");
            sVerdict = "找不到对端，无法测 RTT（链路大概率已断）";
        } else {
            logFile("  样本 " + st.total + " 次，超时(>=250ms) " + st.timeout + " 次，"
                    + "超 200ms 阈值 " + st.over200 + " 次");
            if (st.total > 0) {
                logFile("  RTT  p50=" + st.p50() + "ms  p95=" + st.p95() + "ms  max=" + st.max + "ms");
            }
            logFile("  亿连等效判定：连续>200ms 的最长streak = " + st.maxStreak
                    + "（>=3 就会弹提示）");
            if (st.maxStreak >= 3) {
                sVerdict = "已复现：连续 " + st.maxStreak + " 次 RTT>200ms —— 亿连必然弹「WiFi传输速率低」";
            } else if (st.over200 > 0) {
                sVerdict = "有 " + st.over200 + " 次 RTT>200ms 但未连续 3 次 —— 偶发抖动，亿连不会弹";
            } else {
                sVerdict = "RTT 全部正常（无一次>200ms）—— 此刻链路是好的";
            }
        }

        // ---- ② 链路指标：谁在拖 ----
        linkSide(st);

        // ---- ③ 缓解建议 ----
        advice(st);

        logFile("");
        logFile("=== 探测结束 ===");
        sLast = readLog();   // v1.6.26：放最后——原来在结束行之前取，UI 永远缺最后一行
        Log.i(TAG, "wifi rate probe done");
    }

    /**
     * 每 2 秒 ping 一次（和亿连同周期），返回统计
     * v1.6.26：失败样本按超时计——原来失败也拿墙钟当 RTT，会**假阴性**报「链路良好」。
     */
    private RttStats pingLoop(String ip, int durSec) {
        RttStats st = new RttStats();
        long end = System.currentTimeMillis() + durSec * 1000L;
        int seq = 0;
        boolean noPingLogged = false;
        logFile("  t(s)   RTT(ms)");
        while (System.currentTimeMillis() < end && !mStop) {
            long t0 = System.currentTimeMillis();
            int rtt = pingRtt(ip);
            if (rtt == -2 && !noPingLogged) {
                // ping 命令都执行不了（无此二进制）：继续按失败计，但把话说清楚
                noPingLogged = true;
                logFile("  ⚠ 本机 ping 命令不可用，后续样本全部按「失败」计——"
                        + "结论会偏悲观，需换手段验证");
            }
            seq++;
            st.total++;
            boolean over;
            if (rtt < 0) {
                // -1 = ping 执行了但失败/无应答（rc!=0 或没解析出 time=）→ 按超时算
                st.add(999);
                st.timeout++;
                over = true;
            } else {
                st.add(rtt);
                over = rtt > 200;
                if (rtt >= 250) {
                    st.timeout++;   // 成功应答但超过 250ms 也算「超时级」劣化
                }
            }
            if (over) {
                st.over200++;
                st.streak++;
                if (st.streak > st.maxStreak) {
                    st.maxStreak = st.streak;
                }
            } else {
                st.streak = 0;
            }
            // 前 30 次全打，之后每 5 次打一次（免日志爆炸）
            if (seq <= 30 || seq % 5 == 0) {
                logFile("  " + (seq * 2) + "     "
                        + (rtt < 0 ? "FAIL(超时)" : rtt + "ms")
                        + (over && rtt >= 0 ? "  ← 超200" : ""));
            }
            long sleep = 2000L - (System.currentTimeMillis() - t0);
            if (sleep > 0) {
                try {
                    Thread.sleep(sleep);
                } catch (InterruptedException e) {
                    break;
                }
            }
        }
        return st;
    }

    /**
     * 系统 ping 单次测 RTT（4.4 toolbox 有 ping）。
     * @return >=0 实测 RTT 毫秒（优先解析输出 time=，拿不到退回进程总耗时）；
     *         -1 = ping 执行了但失败（参数不支持 / 无应答）；
     *         -2 = ping 根本执行不了（二进制不存在）
     */
    private int pingRtt(String ip) {
        Process p;
        long t0 = System.currentTimeMillis();
        try {
            p = Runtime.getRuntime().exec(new String[]{"ping", "-c", "1", "-W", "1", ip});
        } catch (Throwable t) {
            return -2;
        }
        try {
            // 先读输出再 waitFor：避免管道缓冲区塞满导致死锁（虽然 ping -c1 输出很小）
            StringBuilder sb = new StringBuilder();
            BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line).append('\n');
            }
            br.close();
            int rc = p.waitFor();
            String out = sb.toString();
            // 优先解析 time=12.3 ms（真正的往返时延）
            int i = out.indexOf("time=");
            if (i >= 0) {
                String sub = out.substring(i + 5).trim();
                int sp = sub.indexOf(' ');
                if (sp > 0) {
                    sub = sub.substring(0, sp);
                }
                try {
                    // 只取整数部分（"12.3"→12）；带小数的直接截断
                    int dot = sub.indexOf('.');
                    if (dot > 0) {
                        sub = sub.substring(0, dot);
                    }
                    return Integer.parseInt(sub);
                } catch (NumberFormatException ignored) {
                    // 解析不了就落到下面按 rc 判
                }
            }
            if (rc == 0) {
                // rc=0 但没 time=（输出格式差异）：退回进程总耗时（含进程启动开销，够用）
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

    /** 找对端：ip neigh 里的 192.168.49.x（排除自己 .1） */
    private String findPeer() {
        String out = AdvActions.run(new String[]{"ip", "neigh"}, 8000L, 8192);
        if (out == null) {
            return null;
        }
        String[] lines = out.split("\n");
        for (int i = 0; i < lines.length; i++) {
            String t = lines[i].trim();
            if (!t.startsWith("192.168.49.")) {
                continue;
            }
            int sp = t.indexOf(' ');
            if (sp <= 0) {
                continue;   // v1.6.26：无空格的畸形行 substring(-1) 会越界，跳过
            }
            String ip = t.substring(0, sp);
            if (ip.endsWith(".1")) {
                continue;   // .1 是本机 GO
            }
            if (t.indexOf("FAILED") >= 0) {
                continue;
            }
            return ip;
        }
        // 兜底：.2~.254 里逐个 ping 太慢，让调用方用 RTT=全部超时兜底
        return null;
    }

    /** 链路侧：RSSI / 收发字节 / CPU —— 判断是空口烂还是车机烂 */
    private void linkSide(RttStats st) {
        logFile("");
        logFile("【② 链路侧对照】");

        String wireless = AdvActions.run(new String[]{"cat", "/proc/net/wireless"}, 6000L, 4096);
        StringBuilder w = new StringBuilder();
        if (wireless != null) {
            String[] ls = wireless.split("\n");
            for (int i = 0; i < ls.length; i++) {
                String t = ls[i].trim();
                if (t.startsWith("p2p") || t.startsWith("wlan")) {
                    w.append("  ").append(t).append('\n');
                }
            }
        }
        logFile("  /proc/net/wireless（link level / noise / retry / missed beacon）:");
        logFile(w.length() > 0 ? w.toString()
                : "  (读不到 —— bcmdhd 驱动常不填这一项，不代表信号差)\n");

        String dev = AdvActions.run(new String[]{"cat", "/proc/net/dev"}, 6000L, 8192);
        logFile("  /proc/net/dev 收发/丢包:");
        if (dev != null) {
            String[] ls = dev.split("\n");
            for (int i = 0; i < ls.length; i++) {
                String t = ls[i].trim();
                if (t.startsWith("p2p") || t.startsWith("wlan")) {
                    logFile("  " + t);
                }
            }
        }

        logFile("  CPU:");
        String cpu = AdvActions.run(new String[]{"cat", "/proc/cpuinfo"}, 6000L, 16384);
        if (cpu != null) {
            String[] ls = cpu.split("\n");
            int n = 0;
            for (int i = 0; i < ls.length && n < 4; i++) {
                String low = ls[i].toLowerCase(java.util.Locale.US);
                if (low.startsWith("cpu") && low.indexOf(":") > 0
                        && (low.indexOf("mhz") >= 0 || low.indexOf("bogomips") >= 0
                        || low.indexOf("model name") >= 0)) {
                    logFile("  " + ls[i].trim());
                    n++;
                }
            }
        }
        String load = AdvActions.run(new String[]{"cat", "/proc/loadavg"}, 5000L, 2048);
        if (load != null) {
            logFile("  loadavg: " + load.trim());
        }

        // 结论辅助
        if (st != null && st.maxStreak >= 3) {
            logFile("");
            logFile("  → RTT 超标但 p2p 口 errs/drop 为 0 且 CPU 不满 = 空口排队（干扰/信道/省电）");
            logFile("  → RTT 超标且 CPU 满 = 车机解码渲染拖慢（该降分辨率，见下方缓解）");
        }
    }

    private void advice(RttStats st) {
        logFile("");
        logFile("【③ 缓解措施（按性价比排序）】");

        // 1) 改通道形态：直连 → 手机热点
        logFile("  ①【最有效】别用直连，用「手机开 2.4G 热点 → 车机连」");
        logFile("     理由：直连时车机是 P2P GO，要在同一射频上既当 AP 又收投屏视频流；");
        logFile("     热点模式车机是纯 STA，空口压力小一半，且无双射频拆组问题（9-24 实测 100% 通）。");

        // 2) 保亮屏对照
        logFile("  ②【零成本，先验证】手机保持亮屏再跑 10 分钟");
        logFile("     手机息屏后 Wi-Fi 进省电 PS，收发要等 beacon，RTT 会直接翻倍 —— 这是最常见原因。");

        // 3) 降码率
        logFile("  ③【降空口压力】把亿连投屏分辨率降下来");
        logFile("     免 root 能确认的：/etc/ec.conf 里 mirror_width/mirror_height。");
        String ec = AdvActions.run(new String[]{"ls", "-l", "/etc/ec.conf"}, 5000L, 2048);
        if (ec != null && ec.indexOf("ec.conf") >= 0 && ec.indexOf("No such") < 0) {
            logFile("     ✓ 车机上 /etc/ec.conf 存在，可以尝试写入（可能仍需 root）：");
            logFile("       mirror_width=1024");
            logFile("       mirror_height=600");
            logFile("       （改完重启亿连车机端 App 生效，不需重打包）");
        } else {
            logFile("     ✗ 车机无 /etc/ec.conf（" + (ec == null ? "读失败" : "不存在") + "）");
            logFile("       这台车机无 root，/etc 写不了 → 免 root 无法降码率，只能走 ①/②。");
        }

        // 4) 频率/信道
        logFile("  ④【环境】2.4G 直连信道只有 1/6/11 三个，邻居 AP 一多就挤");
        logFile("     车机直连时务必把频段设成 2.4G（5G 档 P2P 监听跑在 5G，手机扫不到）。");

        // 5) 关于弹窗
        logFile("  ⑤ 弹窗本身不断链 —— 亿连的 w()/z() 只弹 Toast 和隐藏 View；");
        logFile("     断链是同因两果（RTT 劣化 + socket 超时同时发生），所以光消掉提示没用。");
    }

    // ------------------------------------------------------------------ 工具

    private static class RttStats {
        int total, timeout, over200, streak, maxStreak;
        int max;
        List<Integer> all = new ArrayList<Integer>();

        void add(int v) {
            all.add(v);
            if (v > max) {
                max = v;
            }
        }

        int p50() {
            return pct(50);
        }

        int p95() {
            return pct(95);
        }

        private int pct(int p) {
            if (all.isEmpty()) {
                return 0;
            }
            List<Integer> c = new ArrayList<Integer>(all);
            java.util.Collections.sort(c);
            int idx = (int) Math.round((c.size() - 1) * (p / 100.0));
            return c.get(idx);
        }
    }

    /**
     * v1.6.25 修复：之前落盘在 getFilesDir() 根（files/wifi_rate_probe.txt），
     * 而 LogHttpServer.refreshFiles() 打包下载只枚举 files/log/ —— 根目录文件永远进不了
     * 日志 zip，这就是「探测跑完了、日志抓不回来」的根因。现在统一落 files/log/。
     */
    private File logFile() {
        File dir = new File(getFilesDir(), "log");
        if (!dir.isDirectory() && !dir.mkdirs()) {
            dir = getFilesDir();   // 极端情况退化到根，至少不丢数据
        }
        return new File(dir, "wifi_rate_probe.txt");
    }

    /** 旧版日志迁移：files/ 根 → files/log/（rename 失败则内容搬运） */
    private void migrateOldLog() {
        try {
            File oldF = new File(getFilesDir(), "wifi_rate_probe.txt");
            if (!oldF.isFile() || oldF.length() == 0) {
                return;
            }
            File dir = new File(getFilesDir(), "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File newF = new File(dir, "wifi_rate_probe.txt");
            if (newF.exists()) {
                return;   // 新路径已有，旧的先留着不覆盖
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
        // v1.6.25：外部副本 /sdcard/boottask/wifi_rate_probe.log（注释里一直声称有、
        // 代码里其实没有 —— 补上，与 HotspotProbe/AudioMonitor 一致，文件管理页可直接取）
        try {
            File ext = new File("/sdcard/boottask");
            if (!ext.isDirectory() && !ext.mkdirs()) {
                return;
            }
            File ef = new File(ext, "wifi_rate_probe.log");
            if (ef.length() > 1048576L) {
                ef.delete();
            }
            java.io.FileWriter w2 = new java.io.FileWriter(ef, true);
            w2.write(line);
            w2.close();
        } catch (Throwable ignored) {
        }
    }

    private String readLog() {
        File f = logFile();
        if (!f.exists()) {
            return "";
        }
        // 只取最后 60 行给界面看
        List<String> lines = new ArrayList<String>();
        BufferedReader br = null;
        try {
            br = new BufferedReader(new InputStreamReader(new java.io.FileInputStream(f), "UTF-8"));
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

    private static String timeNow() {
        try {
            return new java.text.SimpleDateFormat("MM-dd HH:mm:ss")
                    .format(new java.util.Date());
        } catch (Throwable t) {
            return "";
        }
    }
}