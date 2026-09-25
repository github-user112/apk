package com.baidu.carlifevehicle.logxfer;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;

/**
 * 1.44: 无蓝牙直连的「扫码入组」增强。
 *
 * 背景：1.29 实锤车机 Android 蓝牙起不来，手机拿不到 DIRECT- 的 SSID/PSK。
 * 1.40 兜底把组名+口令打到日志区让用户手动输入，体验差。
 * 本类在拿到凭据后弹一个全屏二维码页（WIFI:T:WPA;S:..;P:..;; 标准格式），
 * 手机相机/微信扫一下即自动加入直连组，广播走 UDP 7999 → 热点传输原路建链。
 *
 * 生命周期：
 *   show(ssid, psk)   —— NoBtFallback.showCredentials() 拿到凭据时调用；
 *   onLinkUp()        —— m/m/b.b() 传输建链回调里调用，自动关码页回视频。
 *
 * 自身零依赖工程内其它类（ctx() 复制自 NoBtFallback 的 ActivityThread 反射），
 * 所有路径 try/catch 兜底，绝不影响主流程。
 */
public final class QrFallback {

    private static final String TAG = "CarLifeNoBt";
    private static final String CONNLOG = "com.baidu.carlifevehicle.ConnLog";

    private static boolean sArmed = false;
    private static boolean sShown = false;

    private QrFallback() {
    }

    /** 拿到直连组凭据后弹出二维码页。ssid 为空时不弹。 */
    public static void show(String ssid, String pass) {
        try {
            if (ssid == null || ssid.length() == 0) {
                return;
            }
            if (pass == null) {
                pass = "";
            }
            Context ctx = ctx();
            if (ctx == null) {
                return;
            }
            sArmed = true;
            sShown = true;
            Intent it = new Intent(ctx, QrFallbackActivity.class);
            it.putExtra("ssid", ssid);
            it.putExtra("pass", pass);
            it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            ctx.startActivity(it);
            log("[无蓝牙直连] 二维码已上屏: 请用手机相机/微信扫码加入 " + ssid);
        } catch (Throwable t) {
            log("[无蓝牙直连] 二维码上屏失败(不影响手动入组): " + t);
        }
    }

    /** 任一传输建链成功后自动关闭二维码页（m/m/b.b() 回调）。 */
    public static void onLinkUp() {
        try {
            if (!sShown) {
                return;
            }
            sShown = false;
            sArmed = false;
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                public void run() {
                    try {
                        QrFallbackActivity.finishSelf();
                    } catch (Throwable t) {
                    }
                }
            });
        } catch (Throwable t) {
        }
    }

    private static Context ctx() {
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            Object cur = at.getMethod("currentActivityThread").invoke(null);
            if (cur == null) {
                return null;
            }
            return (Context) at.getMethod("getApplication").invoke(cur);
        } catch (Throwable t) {
            return null;
        }
    }

    /** 优先送进界面日志区（ConnLog），拿不到才退回 logcat。 */
    private static void log(String s) {
        try {
            Class<?> c = Class.forName(CONNLOG);
            java.lang.reflect.Method m = c.getMethod("logLine", String.class);
            m.invoke(null, s);
        } catch (Throwable t) {
            android.util.Log.d(TAG, s);
        }
    }
}
