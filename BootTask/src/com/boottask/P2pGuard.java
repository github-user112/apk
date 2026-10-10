package com.boottask;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;

import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * v1.6.17 直连保护守护（免 root）。
 *
 * 背景（10-01 车机日志实锤）：TCC893x 单射频，P2P 直连组活跃时 wlan0 又连上
 * 安卓热点 → 异信道双连 → RTT 尖刺（亿连弹「WLAN 速率低」）→ 2.5 分钟后驱动拆组断联。
 *
 * 做法：每 8 秒轮询 `ip addr`——
 *   - P2P 组接口（p2p*，192.168.49.x）活跃 且 wlan0 拿到非 192.168.49.* 的 IP
 *     → WifiManager.disableNetwork(netId) + disconnect()：断开热点且禁止自动重连（配置保留）。
 *   - P2P 活跃且 supplicant 正在关联热点（ASSOCIATING/ASSOCIATED/握手）→ 提前 disconnect()。
 *   - P2P 组不存在 → 不动作（热点模式照常可用）。
 *
 * WifiManager 的 disableNetwork/disconnect 在 4.4 只需要 CHANGE_WIFI_STATE 权限，免 root。
 * 6.0+ 收紧的 ROM 上可能 SecurityException——捕获后写日志，提示手动处理。
 */
public class P2pGuard extends Service {

    private static final String TAG = "P2pGuard";
    private static final long INTERVAL_MS = 8000L;
    private static final String LOG_NAME = "log/p2pguard.txt";

    private static volatile boolean sRunning = false;
    private static volatile String sLastAction = "守护未运行";
    private static volatile Context sCtx;

    private final Handler mHandler = new Handler();
    private WifiManager mWifi;
    private boolean mBusy = false;

    private final Runnable mTask = new Runnable() {
        public void run() {
            if (!mBusy) {
                mBusy = true;
                try {
                    checkOnce(P2pGuard.this, true);
                } catch (Throwable t) {
                    Log.w(TAG, "check: " + t);
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
        mWifi = (WifiManager) getSystemService(Context.WIFI_SERVICE);
        sRunning = true;
        sLastAction = "守护运行中，每 8 秒巡检";
        logFile("守护启动");
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
        sLastAction = "守护已停止";
        logFile("守护停止");
        super.onDestroy();
    }

    /** 一次巡检；force=true 时无论守护是否在跑都执行（给「一键断热点」按钮用） */
    static void checkOnce(Context ctx, boolean fromGuard) {
        // ip -f inet addr：只看 IPv4，输出短，解析简单
        String out = AdvActions.run(new String[]{"ip", "-f", "inet", "addr"}, 6000L, 16384);
        boolean p2pActive = false;
        boolean wlanExternal = false;
        String wlanIp = null;
        if (out != null) {
            String cur = null;
            String[] lines = out.split("\n");
            for (int i = 0; i < lines.length; i++) {
                String line = lines[i].trim();
                if (line.indexOf(':') > 0 && line.matches("^\\d+:\\s+\\S+.*")) {
                    int sp = line.indexOf(' ', line.indexOf(':'));
                    String rest = line.substring(line.indexOf(':') + 1).trim();
                    cur = rest.split(":")[0].trim();
                } else if (line.startsWith("inet ") && cur != null) {
                    String ip = line.substring(5).trim().split("/")[0].trim();
                    if (cur.startsWith("p2p") && ip.startsWith("192.168.49.")) {
                        p2pActive = true;
                    }
                    if (cur.startsWith("wlan")) {
                        wlanIp = ip;
                        if (!ip.startsWith("192.168.49.")) {
                            wlanExternal = true;
                        }
                    }
                }
            }
        }
        sLastAction = describe(p2pActive, wlanExternal, wlanIp);

        if (!p2pActive) {
            return;   // 没有直连组：热点该连就连（热点模式正常用）
        }

        // v1.6.25：直连活跃时保持蓝牙关闭（蓝牙与 WLAN 共抢 2.4G 是速率低的并列嫌疑；
        // LowRateFix 修完若用户手动开回蓝牙，这里每 8s 会再压回去 —— 一键修复的一致性保障）
        try {
            boolean btGuard = ctx.getSharedPreferences("lowrate", Context.MODE_PRIVATE)
                    .getBoolean("btGuard", false);
            if (btGuard) {
                android.bluetooth.BluetoothAdapter ad =
                        android.bluetooth.BluetoothAdapter.getDefaultAdapter();
                if (ad != null && ad.isEnabled()) {
                    boolean ok = ad.disable();
                    logFile(ctx, "直连活跃但蓝牙开着 → 自动关闭(ok=" + ok + ")，还原按钮可开回");
                    sLastAction = "直连保护：已自动关闭蓝牙（防 2.4G 争抢）";
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "bt-guard: " + t);
        }

        if (wlanExternal) {
            cut(ctx, "检测到双连（wlan0=" + wlanIp + "）", fromGuard);
            return;
        }
        // 组活跃但还没拿到 IP —— 拦「正在连」的阶段
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            WifiInfo info = wm.getConnectionInfo();
            if (info != null) {
                String st = String.valueOf(info.getSupplicantState());
                if (st.indexOf("ASSOCIAT") >= 0 || st.indexOf("HANDSHAKE") >= 0
                        || st.indexOf("COMPLETED") >= 0) {
                    cut(ctx, "组活跃时 supplicant 处于 " + st, fromGuard);
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "precheck: " + t);
        }
    }

    private static String describe(boolean p2p, boolean ext, String wlanIp) {
        if (!p2p) {
            return "直连组不存在，保护待机";
        }
        if (ext) {
            return "⚠ 双连中！wlan0=" + wlanIp + "（已自动切断）";
        }
        return "直连组活跃，wlan0 干净，保护中";
    }

    /** 真正的切断动作：禁用当前网络（配置保留）+ 断开 */
    private static void cut(Context ctx, String why, boolean fromGuard) {
        String detail;
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            WifiInfo info = wm.getConnectionInfo();
            int netId = info == null ? -1 : info.getNetworkId();
            boolean ok1 = false;
            boolean ok2 = false;
            if (netId >= 0) {
                try {
                    ok1 = wm.disableNetwork(netId);
                } catch (Throwable t) {
                    detail = "disableNetwork 异常：" + t;
                    logFile(ctx, why + " → " + detail);
                    sLastAction = "⚠ 切断失败（无权限）：" + why;
                    return;
                }
            }
            try {
                ok2 = wm.disconnect();
            } catch (Throwable t) {
                Log.w(TAG, "disconnect: " + t);
            }
            detail = "netId=" + netId + " disable=" + ok1 + " disconnect=" + ok2;
            sLastAction = "✓ 已切断热点（" + why + "），配置保留";
        } catch (Throwable t) {
            detail = "异常 " + t;
            sLastAction = "⚠ 切断失败：" + why;
        }
        logFile(ctx, why + " → " + detail);
    }

    /** 恢复自动连接：把被禁用的已保存网络全部重新启用 */
    static String restoreAutoConnect(Context ctx) {
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            List<WifiConfiguration> all = wm.getConfiguredNetworks();
            int n = 0;
            if (all != null) {
                for (int i = 0; i < all.size(); i++) {
                    WifiConfiguration c = all.get(i);
                    if (c.status == WifiConfiguration.Status.DISABLED) {
                        try {
                            wm.enableNetwork(c.networkId, false);
                            n++;
                        } catch (Throwable ignored) {
                        }
                    }
                }
            }
            String msg = "已恢复 " + n + " 个被禁用网络的自动连接";
            logFile(ctx, msg);
            sLastAction = msg;
            return msg;
        } catch (Throwable t) {
            return "恢复失败：" + t;
        }
    }

    static void logFile(String line) {
        logFile(sCtx, line);
    }

    static void logFile(Context ctx, String line) {
        try {
            if (ctx == null) {
                return;
            }
            File dir = new File(ctx.getFilesDir(), "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File f = new File(dir, "p2pguard.txt");
            if (f.length() > 65536) {
                f.delete();
            }
            String ts = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US)
                    .format(new Date());
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
                return "（守护未启动过）";
            }
            File f = new File(new File(ctx.getFilesDir(), "log"), "p2pguard.txt");
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
