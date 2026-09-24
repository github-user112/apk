package com.baidu.carlifevehicle.logxfer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import android.util.Log;

/**
 * 网络变化监听（1.30 新增）。
 *
 * 需求（用户 2026-09-24 提出）：「没有网的时候不生成（二维码），生成正确的，
 * 有时候生成的不正确」—— 根因是 1.19/1.24 的地址只在 onCreate 里取一次，
 * 页面开着的时候网络通了/换了网卡，二维码还是旧地址，扫出来当然不正确。
 *
 * 方案：注册一个广播接收器，WiFi / P2P / 以太网状态一变就回调，让
 * LogDownloadActivity 重新取地址并重载 WebView（logxfer.html 里
 * urls 为空时显示"未生成二维码：当前没有可用网络"，不再画死码）。
 *
 * 注册/反注册由 LogDownloadActivity onStart/onStop 驱动，生命周期跟页面走。
 * 只在 API>=7 时启用（registerReceiver 是 API1，但 WIFI_P2P_* 常量是 API14；
 * 低版本运行时查不到字段只是少几个过滤 action，不影响 WiFi 状态变化监听）。
 */
public final class NetWatch extends BroadcastReceiver {

    private static final String TAG = "CarLifeLogXfer";

    /** 网络变化回调：由 LogDownloadActivity 实现，参数是新的地址列表（可能为空）。 */
    public interface Listener {
        void onNetChanged(String[] urls);
    }

    private static NetWatch sInst;
    private Listener mListener;
    private boolean mRegistered;

    private NetWatch() {
    }

    private static NetWatch get() {
        if (sInst == null) {
            sInst = new NetWatch();
        }
        return sInst;
    }

    public static synchronized void start(Context c, Listener l) {
        NetWatch w = get();
        w.mListener = l;
        if (w.mRegistered || c == null) {
            return;
        }
        try {
            IntentFilter f = new IntentFilter();
            f.addAction(WifiManager.WIFI_STATE_CHANGED_ACTION);
            f.addAction(WifiManager.NETWORK_STATE_CHANGED_ACTION);
            f.addAction(WifiManager.SCAN_RESULTS_AVAILABLE_ACTION);
            // P2P 常量是 API14+，直接引用常量名（编译期就内联成字符串，运行期无依赖）
            f.addAction("android.net.wifi.p2p.STATE_CHANGED");
            f.addAction("android.net.wifi.p2p.PEERS_CHANGED");
            f.addAction("android.net.wifi.p2p.CONNECTION_CHANGED");
            f.addAction("android.net.wifi.p2p.THIS_DEVICE_CHANGED");
            f.addAction("android.net.ethernet.ETHERNET_STATE_CHANGED");
            f.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            c.getApplicationContext().registerReceiver(w, f);
            w.mRegistered = true;
            Log.i(TAG, "NetWatch registered");
        } catch (Throwable t) {
            Log.w(TAG, "NetWatch register failed: " + t);
        }
    }

    public static synchronized void stop(Context c) {
        NetWatch w = get();
        if (!w.mRegistered || c == null) {
            return;
        }
        try {
            c.getApplicationContext().unregisterReceiver(w);
        } catch (Throwable ignored) {
        }
        w.mRegistered = false;
        w.mListener = null;
        Log.i(TAG, "NetWatch unregistered");
    }

    public void onReceive(Context ctx, Intent intent) {
        try {
            Listener l;
            synchronized (NetWatch.class) {
                l = mListener;
            }
            if (l == null) {
                return;
            }
            final String[] urls = LogHttpServer.baseUrls();
            Log.i(TAG, "net changed -> " + (urls.length == 0 ? "(none)" : urls[0]));
            l.onNetChanged(urls);
        } catch (Throwable t) {
            Log.w(TAG, "NetWatch onReceive: " + t);
        }
    }
}
