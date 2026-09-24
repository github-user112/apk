package com.baidu.carlifevehicle.logxfer;

import android.content.Context;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.Looper;

import java.lang.reflect.Field;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/**
 * 1.40 引入：亿连式「无蓝牙直连」兜底。
 *
 * ===================== 为什么有这个类（2026-09-24 定案） =====================
 * 车机 4.4.2 的 Android 蓝牙起不来（1.29 实锤：45s 内 state 恒 10，enable() 全被吞），
 * 而原版直连协议里 SSID/PSK 只能走蓝牙 SPP 带外通道给手机 → 手机永远不来 join。
 *
 * 但车机侧 P2P 组其实是建成功的（DIRECT-cH-CarLife-HU / GO 192.168.49.1）——
 * 这就是一个普通的 WPA2-PSK 接入点。亿连(EasyConnect)类盒子的做法就是：
 * **根本不走蓝牙**，把网络名/密码给用户，手机在 WLAN 里手动连上，
 * 之后手机 CarLife 会在 UDP 7999 上广播（热点模式实测 100% 可用的那条发现链路），
 * 车机收到广播 → 填手机 IP → 起 7 条 TCP 通道 → 会话建立。
 *
 * 本类做的事（在 BtGuard 判死之后自动触发，全程无需用户开蓝牙）：
 *   1. armTransport():  反射拿到引擎(a.a.a.a.m.b.a) → 传输管理器(.E) → 传输列表(.c)，
 *      new 一个热点传输 a.a.a.a.m.m.e.a（就是热点模式用的 UDP 7999 监听体）挂进列表并
 *      调 a() 启动监听。之后 m/m/b.b(本传输) 的既有机制会：terminate 其它传输、
 *      e/b.d(手机IP) 建 7 条 TCP、q(5) 起会话 —— 全是热点模式的原路。
 *   2. showCredentials(): 自己起 WifiP2pManager channel，requestGroupInfo 轮询直连组，
 *      把组名(SSID)和密码(passphrase)打到 ConnLog 日志区，用户照着连即可。
 *      （车机是 GO 时 getPassphrase() 返回该组真实的 WPA2 口令）
 *
 * ===================== keepP2pGroup() 闸门（1.40 的 smali 侧配套） =====================
 * a/a/a/a/m/m/b.b(传输) 在「某传输连上」时会 f() 掉列表里的**其它**传输；
 * 直连传输 e/d.f() 的 patchE 段有 cancelConnect/removeGroup/stopPeerDiscovery ——
 * 若不加闸门，兜底传输一连上就会把手机刚加入的 P2P 组拆掉，会话当场死。
 * 所以 e/d.f() 的 P2P 清理段被 1.40 改成 keepP2pGroup()==true 时跳过
 * （组残留的 BUSY 由自举器慢扫 removeGroup / patchK 自愈兜底，1.14/1.28 已有）。
 *
 * 线程：onBtDead() 只起守护线程，不阻塞调用方（可能是主线程）。
 * 一切反射都 try/catch —— 兜底失败绝不能把 App 搞崩，最多退回「改用热点/USB」。
 */
public final class NoBtFallback {

    private static final String TAG = "CarLife_SDK";
    private static final String CONNLOG = "com.baidu.carlifevehicle.ConnLog";

    /** e/d.f() 的 P2P 清理闸门：兜底挂载后，组就是会话的承载网络。 */
    private static volatile boolean sKeepGroup = false;

    /** 只挂载一次（BtGuard 判死路径可能被 d$c 重试多次触发）。 */
    private static volatile boolean sArmed = false;

    private NoBtFallback() {
    }

    /** 由 e/d.smali(1.40 改) 在 f() 里调用：true=跳过 cancelConnect/removeGroup/stopPeerDiscovery。 */
    public static boolean keepP2pGroup() {
        return sKeepGroup;
    }

    /** 蓝牙判死时由 BtGuard 调用（幂等，只生效一次）。 */
    public static void onBtDead() {
        if (sArmed) {
            return;
        }
        sArmed = true;
        sKeepGroup = true;
        Thread t = new Thread(new Runnable() {
            public void run() {
                try {
                    armTransport();
                } catch (Throwable th) {
                    say("【无蓝牙直连】挂载 UDP 监听失败: " + th);
                }
                try {
                    showCredentials();
                } catch (Throwable th) {
                    say("【无蓝牙直连】读取直连组信息失败: " + th);
                }
            }
        }, "CarLifeNoBt");
        t.setDaemon(true);
        t.start();
    }

    /** 优先送进界面日志区（ConnLog），拿不到才退回 logcat。 */
    private static void say(String s) {
        try {
            Class<?> c = Class.forName(CONNLOG);
            java.lang.reflect.Method m = c.getMethod("logLine", String.class);
            m.invoke(null, s);
        } catch (Throwable t) {
            android.util.Log.d(TAG, s);
        }
    }

    /** 反射拿 Application Context（同 BtGuard 的做法）。 */
    private static Context ctx() {
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            java.lang.reflect.Method cur = at.getMethod("currentActivityThread");
            Object o = cur.invoke(null);
            java.lang.reflect.Method getApp = at.getMethod("getApplication");
            return (Context) getApp.invoke(o);
        } catch (Throwable t) {
            return null;
        }
    }

    /** getField 兜 getDeclaredField+setAccessible，不区分可见性。 */
    private static Object readField(Object obj, String cls, String name) throws Exception {
        Class<?> k;
        if (obj != null) {
            k = obj.getClass();
            while (k != null && !k.getName().equals(cls)) {
                k = k.getSuperclass();
            }
            if (k == null) {
                k = Class.forName(cls);
            }
        } else {
            k = Class.forName(cls);
        }
        Field f;
        try {
            f = k.getField(name);
        } catch (NoSuchFieldException e) {
            f = k.getDeclaredField(name);
            f.setAccessible(true);
        }
        return f.get(obj);
    }

    /**
     * 把热点传输（UDP 7999 监听体）挂进当前引擎的传输列表并启动。
     * 之后手机连上直连网络广播时，走的全是热点模式 100% 验证过的原路。
     */
    private static void armTransport() throws Exception {
        Object engine = null;
        for (int i = 0; i < 5 && engine == null; i++) {
            try {
                engine = readField(null, "a.a.a.a.m.b", "a");
            } catch (Throwable t) {
                engine = null;
            }
            if (engine == null) {
                Thread.sleep(2000L);
            }
        }
        if (engine == null) {
            say("【无蓝牙直连】引擎未就绪, 兜底未挂载");
            return;
        }
        Object mgr = readField(engine, "a.a.a.a.m.d", "E");
        if (mgr == null) {
            say("【无蓝牙直连】传输管理器未就绪, 兜底未挂载");
            return;
        }
        Object listObj = readField(mgr, "a.a.a.a.m.m.b", "c");
        if (!(listObj instanceof List)) {
            say("【无蓝牙直连】传输列表不可用, 兜底未挂载");
            return;
        }
        List<Object> list = (List<Object>) listObj;
        Class<?> eaCls = Class.forName("a.a.a.a.m.m.e.a");
        synchronized (list) {
            for (Object o : list) {
                if (eaCls.isInstance(o)) {
                    say("【无蓝牙直连】兜底监听已存在, 不重复挂载");
                    return;
                }
            }
            Object t = eaCls.getConstructor(
                    Class.forName("a.a.a.a.c"),
                    Class.forName("a.a.a.a.a.j.c$a")).newInstance(engine, mgr);
            list.add(t);
            eaCls.getMethod("a").invoke(t);
        }
        say("✔ [无蓝牙直连] UDP 7999 监听已挂载, 等待手机接入直连网络后广播");
    }

    /**
     * 轮询直连组信息，把 SSID/密码打到日志区让用户手动入组。
     * 本机是 GO → 显示组名+口令；本机不是 GO → 组由手机建立，直接开 App 即可。
     */
    private static void showCredentials() throws Exception {
        Context c = ctx();
        if (c == null) {
            say("【无蓝牙直连】拿不到 Context, 无法查询直连组信息");
            return;
        }
        WifiP2pManager mgr = (WifiP2pManager) c.getSystemService(Context.WIFI_P2P_SERVICE);
        if (mgr == null) {
            say("【无蓝牙直连】WifiP2pManager 不可用");
            return;
        }
        WifiP2pManager.Channel ch = mgr.initialize(c, Looper.getMainLooper(), null);
        if (ch == null) {
            say("【无蓝牙直连】P2P Channel 初始化失败");
            return;
        }
        say("… [无蓝牙直连] 正在读取直连网络信息(最长 90s)…");
        for (int i = 0; i < 45; i++) {
            final WifiP2pGroup[] box = new WifiP2pGroup[1];
            final CountDownLatch latch = new CountDownLatch(1);
            try {
                mgr.requestGroupInfo(ch, new WifiP2pManager.GroupInfoListener() {
                    public void onGroupInfoAvailable(WifiP2pGroup group) {
                        box[0] = group;
                        latch.countDown();
                    }
                });
            } catch (Throwable t) {
                say("【无蓝牙直连】requestGroupInfo 异常: " + t);
                return;
            }
            latch.await(2L, TimeUnit.SECONDS);
            // ⚠ 1.40 实测（realme 11:54 判死日志）：组还没建出来时 requestGroupInfo 会
            // **立即**回调 null，45 次循环 0.5s 就烧完，等于没等。回调已到且组为 null 时
            // 强制睡 2s，保证真·轮询 90s（回调没到时 await(2s) 已经是 2s 节奏）。
            if (box[0] == null && latch.getCount() == 0) {
                Thread.sleep(2000L);
            }
            WifiP2pGroup g = box[0];
            if (g != null) {
                String ssid = g.getNetworkName();
                if (g.isGroupOwner()) {
                    String psk = g.getPassphrase();
                    say("════════════════════════════════════════");
                    say("【无蓝牙直连】直连网络已就绪(全程无需蓝牙):");
                    say("  ① 手机【设置 → WLAN】连接网络: " + ssid);
                    say("     密码: " + (psk == null ? "(无)" : psk));
                    say("  ② 连接后打开手机百度 CarLife → 自动连上车机");
                    say("════════════════════════════════════════");
                } else {
                    say("【无蓝牙直连】直连组已建立(本机不是组主), 手机直接打开 CarLife 即可");
                }
                return;
            }
        }
        say("【无蓝牙直连】90s 内直连组未建立 → 请确认车机 Wi-Fi 已开启；或改用【热点】/【USB】");
    }
}
