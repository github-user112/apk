package com.baidu.carlifevehicle.logxfer;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.widget.RelativeLayout;

/**
 * 1.45: 无蓝牙直连二维码「首页角标」。
 *
 * 1.44 的二维码是全屏 QrFallbackActivity（跳转新页面），用户反馈：
 * 不要跳新页面，就在首页找个位置显示个小二维码就行。本类把二维码以小尺寸
 * WebView 角标的形式叠在首页（frag_main 根布局）上：
 *
 *   位置：优先放在「直连/热点/有线」模式页签(conn_mode_bar)右侧、顶栏下方 ——
 *         页签右侧在 1024 宽的车机横屏上是一条空带，不遮页签也不遮日志区；
 *         宽度不够（如竖屏/窄屏）则退化为贴父布局右上角。
 *   大小：120dp 见方（用户明确说"不用那么大"）。
 *   关闭：① 点角标本体（JS Bridge → hide()）
 *         ② 任一传输建链成功 → QrFallback.onLinkUp() → hide()
 *
 * 根 View 来源：LogXferEntry.bind(root)（1.17 起挂在 ConnModeHelper.init 里，
 * 拿到的正好是 frag_main 根 View）。拿不到根 View 时 show() 返回 false，
 * 调用方（QrFallback）退回全屏 QrFallbackActivity —— 双保险。
 *
 * 线程：show() 可能在后台线程被调（NoBtFallback 守护线程），内部 post 到主线程。
 * 所有路径 try/catch 兜底，绝不影响主流程。
 */
public final class QrBadge {

    private static final String TAG = "CarLifeNoBt";
    private static final String CONNLOG = "com.baidu.carlifevehicle.ConnLog";

    /** res/values/public.xml: conn_mode_bar = 0x7f090140（无 R.java，只能硬编码） */
    private static final int ID_CONN_MODE_BAR = 0x7f090140;

    /** 角标边长（dp）。1.44 全屏页用户嫌大，1.45 缩成小角标。 */
    private static final int SIZE_DP = 120;

    private static WebView sBadge;

    private QrBadge() {
    }

    /**
     * 在首页显示二维码角标。root 不可用时返回 false（调用方退回全屏页）。
     * 实际的 attach 在主线程执行。
     */
    public static boolean show(final String ssid, final String pass) {
        try {
            if (ssid == null || ssid.length() == 0) {
                return false;
            }
            final View root = LogXferEntry.mainRoot();
            if (root == null) {
                return false;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                public void run() {
                    try {
                        attach(ssid, pass, root);
                    } catch (Throwable t) {
                        log("[无蓝牙直连] 角标显示失败(不影响手动入组): " + t);
                    }
                }
            });
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** 关闭角标（任意线程可调，内部 post 主线程）。 */
    public static void hide() {
        try {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                public void run() {
                    try {
                        remove();
                    } catch (Throwable t) {
                    }
                }
            });
        } catch (Throwable t) {
        }
    }

    @SuppressLint("SetJavaScriptEnabled")
    private static void attach(String ssid, String pass, View root) {
        if (!(root instanceof ViewGroup)) {
            return;
        }
        ViewGroup parent = (ViewGroup) root;
        remove();
        if (pass == null) {
            pass = "";
        }

        StringBuilder hash = new StringBuilder();
        hash.append("wifi=").append(Uri.encode(wifiPayload(ssid, pass)));
        hash.append("&ssid=").append(Uri.encode(ssid));
        hash.append("&psk=").append(Uri.encode(pass));

        WebView wv = new WebView(parent.getContext());
        wv.getSettings().setJavaScriptEnabled(true);
        wv.setBackgroundColor(0xFFFFFFFF);
        wv.addJavascriptInterface(new Bridge(), "App");

        int size = dp(parent.getContext(), SIZE_DP);
        int height = size + dp(parent.getContext(), 18); // 底部一行「点此关闭」提示

        RelativeLayout.LayoutParams rp = new RelativeLayout.LayoutParams(size, height);
        rp.addRule(RelativeLayout.ALIGN_PARENT_TOP);
        rp.topMargin = dp(parent.getContext(), 112); // 顶栏(104dp)+8dp：模式页签所在行
        int right = parent.getWidth();
        View bar = parent.findViewById(ID_CONN_MODE_BAR);
        boolean placed = false;
        if (bar != null && right > 0 && bar.getWidth() > 0) {
            int tabsRight = (int) (bar.getX() + bar.getWidth());
            // 页签右侧还有足够空档 → 绝对定位在页签右边，完全避开页签与日志区
            if (tabsRight + size + dp(parent.getContext(), 24) <= right) {
                rp.leftMargin = tabsRight + dp(parent.getContext(), 12);
                placed = true;
            }
        }
        if (!placed) {
            // 窄屏兜底：贴右上角（可能与页签重叠，但不会跑出屏幕）
            rp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            rp.rightMargin = dp(parent.getContext(), 12);
        }

        wv.setLayoutParams(rp);
        parent.addView(wv);
        sBadge = wv;
        wv.loadUrl("file:///android_asset/logxfer/qr_badge.html#" + hash.toString());
        log("[无蓝牙直连] 二维码已上屏(首页角标, 点二维码可关闭): 扫码加入 " + ssid);
    }

    private static void remove() {
        if (sBadge != null) {
            try {
                ViewGroup p = (ViewGroup) sBadge.getParent();
                if (p != null) {
                    p.removeView(sBadge);
                }
            } catch (Throwable t) {
            }
            sBadge = null;
        }
    }

    private static int dp(android.content.Context c, int v) {
        try {
            return (int) (v * c.getResources().getDisplayMetrics().density + 0.5f);
        } catch (Throwable t) {
            return v;
        }
    }

    /** WIFI QR 标准转义: \ ; , : " 前加反斜杠。 */
    private static String wifiPayload(String ssid, String pass) {
        StringBuilder sb = new StringBuilder("WIFI:T:WPA;S:");
        esc(sb, ssid);
        sb.append(";P:");
        esc(sb, pass);
        sb.append(";;");
        return sb.toString();
    }

    private static void esc(StringBuilder sb, String s) {
        if (s == null) {
            return;
        }
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '\\' || c == ';' || c == ',' || c == ':' || c == '"') {
                sb.append('\\');
            }
            sb.append(c);
        }
    }

    private static void log(String s) {
        try {
            Class<?> c = Class.forName(CONNLOG);
            java.lang.reflect.Method m = c.getMethod("logLine", String.class);
            m.invoke(null, s);
        } catch (Throwable t) {
            android.util.Log.d(TAG, s);
        }
    }

    static class Bridge {
        @JavascriptInterface
        public void close() {
            hide();
        }
    }
}
