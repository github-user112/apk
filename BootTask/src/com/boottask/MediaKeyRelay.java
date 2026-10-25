package com.boottask;

import android.accessibilityservice.AccessibilityService;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

import android.view.KeyEvent;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * v1.6.38 亿连上一首/下一首：把车机面板/方控的媒体键转发给亿连。
 *
 * <p>车机实锤（按键检测照片）：上一首/下一首 = 标准 KEYCODE_MEDIA_PREVIOUS(88)/
 * KEYCODE_MEDIA_NEXT(87)，以窗口键事件直发前台应用，<b>不发 MEDIA_BUTTON 广播</b>。
 * 亿连不消费这两个键 → 落到德赛多媒体应用手里 → 音源被切成「多媒体」。
 *
 * <p>转发出口（亿连 V7.0.1 反编译实锤，无需改亿连）：亿连 BroadcastManager 动态注册了
 * {@code net.easyconn.music.next / .previous / .play / .pause / .play.pause}，
 * 收到即 ECSDK.sendBtnEvent(EC_BTN_MUSIC_NEXT…) 发手机——这条路径不查音乐焦点。
 *
 * <p>拦截入口：无障碍服务 onKeyEvent（API 18+ 的 flagRequestFilterKeyEvents），
 * 在前台窗口之前拿到键。只在<b>前台是亿连</b>时拦（前台包名由窗口事件实时跟踪），
 * 返回 true 消费掉 → 德赛多媒体应用收不到 → 不切音源；同时发上面的广播 → 手机切歌。
 * 其它 App 前台时一律放行，不影响本地多媒体的按键。
 */
public final class MediaKeyRelay {

    private static final String PREF = "media_key_relay";
    private static final String K_ON = "on";
    private static final String K_SENT = "sent";
    private static final String K_LAST = "last";
    private static final String K_LAST_AT = "lastAt";

    private static final String YILIAN_PKG = "net.easyconn";
    private static final String ACT_NEXT = "net.easyconn.music.next";
    private static final String ACT_PREV = "net.easyconn.music.previous";

    /** 当前前台包名，由无障碍服务的窗口事件实时更新。 */
    private static volatile String sForeground = "";

    private MediaKeyRelay() {
    }

    // ------------------------------------------------------------------ 开关

    public static boolean isEnabled(Context c) {
        try {
            return prefs(c).getBoolean(K_ON, true);   // 默认开：装这版就是要这个功能
        } catch (Throwable t) {
            return true;
        }
    }

    public static void setEnabled(Context c, boolean on) {
        try {
            prefs(c).edit().putBoolean(K_ON, on).commit();
        } catch (Throwable t) {
        }
        BootDiagnostics.log(c, "MediaKeyRelay: switch -> " + (on ? "on" : "off"));
    }

    // ------------------------------------------------------------------ 核心

    /** 窗口切换时由无障碍服务喂进来。 */
    public static void noteForeground(String pkg) {
        sForeground = pkg == null ? "" : pkg;
    }

    /**
     * 无障碍服务 onKeyEvent 的全部逻辑。返回 true = 消费（前台窗口再也收不到）。
     * 只拦 87/88，且只在亿连前台时拦；按下（非长按重复）才发广播，抬起/重复只消费。
     */
    public static boolean handleKey(AccessibilityService svc, KeyEvent e) {
        if (svc == null || e == null) {
            return false;
        }
        final String action;
        int code = e.getKeyCode();
        if (code == KeyEvent.KEYCODE_MEDIA_NEXT) {
            action = ACT_NEXT;
        } else if (code == KeyEvent.KEYCODE_MEDIA_PREVIOUS) {
            action = ACT_PREV;
        } else {
            return false;
        }
        if (!isEnabled(svc) || !YILIAN_PKG.equals(sForeground)) {
            return false;
        }
        if (e.getAction() == KeyEvent.ACTION_DOWN && e.getRepeatCount() == 0) {
            try {
                svc.sendBroadcast(new Intent(action));
                noteSent(svc, code);
                BootDiagnostics.log(svc, "MediaKeyRelay: 键码 " + code + " -> " + action);
            } catch (Throwable t) {
                BootDiagnostics.log(svc, "MediaKeyRelay: 转发失败 " + t);
            }
        }
        return true;
    }

    // ------------------------------------------------------------------ 状态行

    public static String statusText(Context c) {
        StringBuilder sb = new StringBuilder();
        sb.append("按键转发：").append(isEnabled(c) ? "已开启" : "已关闭");
        sb.append("（前台是亿连才拦截 87/88）");
        sb.append("\n已转发 ").append(sent(c)).append(" 次");
        String l = last(c);
        if (l.length() > 0) {
            sb.append("；最近：").append(lastAt(c)).append(" ").append(l);
        }
        sb.append("\n当前前台：").append(sForeground.length() > 0 ? sForeground : "未知");
        return sb.toString();
    }

    // ------------------------------------------------------------------ 内部

    private static void noteSent(Context c, int code) {
        try {
            prefs(c).edit()
                    .putInt(K_SENT, sent(c) + 1)
                    .putString(K_LAST, code == KeyEvent.KEYCODE_MEDIA_NEXT ? "下一首" : "上一首")
                    .putString(K_LAST_AT, now())
                    .commit();
        } catch (Throwable t) {
        }
    }

    private static int sent(Context c) {
        try {
            return prefs(c).getInt(K_SENT, 0);
        } catch (Throwable t) {
            return 0;
        }
    }

    private static String last(Context c) {
        try {
            String s = prefs(c).getString(K_LAST, "");
            return s == null ? "" : s;
        } catch (Throwable t) {
            return "";
        }
    }

    private static String lastAt(Context c) {
        try {
            String s = prefs(c).getString(K_LAST_AT, "");
            return s == null ? "" : s;
        } catch (Throwable t) {
            return "";
        }
    }

    private static String now() {
        try {
            return new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US).format(new Date());
        } catch (Throwable t) {
            return "";
        }
    }

    private static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREF, Context.MODE_PRIVATE);
    }
}
