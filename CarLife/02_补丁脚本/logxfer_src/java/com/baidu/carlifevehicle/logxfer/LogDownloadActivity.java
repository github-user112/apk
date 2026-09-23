package com.baidu.carlifevehicle.logxfer;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.net.URLEncoder;

/**
 * CarLife 车机端「日志下载」界面。
 *
 * 界面结构（全部代码构建，不依赖 res 布局 / 新增资源 id）：
 *   [ 标题 ]
 *   [ 二维码区（WebView 渲染 assets/logxfer/logxfer.html） ]  <- weight=1
 *   [ 兜底地址文字 TextView ]
 *
 * WebView 不可用时（部分车机 ROM 精简了 WebView）自动降级：只显示可手动输入的地址文字。
 */
public class LogDownloadActivity extends Activity {

    private static final String TAG = "CarLifeLogXfer";
    private static final int BG = 0xFF17161B;
    private static final int FG = 0xFFE8E6F0;
    private static final int FG2 = 0xFF9B98A8;

    private WebView mWeb;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LogHttpServer.init(this);
        try {
            getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        } catch (Throwable ignored) {
        }

        String[] urls = LogHttpServer.baseUrls();

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(BG);
        int pad = dp(14);
        root.setPadding(pad, pad, pad, dp(10));

        TextView title = new TextView(this);
        title.setText("CarLife 车机日志下载");
        title.setTextColor(FG);
        title.setTextSize(18);
        title.setGravity(Gravity.CENTER);
        root.addView(title, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        FrameLayout stage = new FrameLayout(this);
        root.addView(stage, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f));

        mWeb = tryCreateWebView();
        if (mWeb != null) {
            stage.addView(mWeb, new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            String u = buildAssetUrl(urls);
            Log.i(TAG, "webview load " + u);
            try {
                mWeb.loadUrl(u);
            } catch (Throwable t) {
                Log.e(TAG, "webview loadUrl failed: " + t);
            }
        } else {
            Log.e(TAG, "WebView unavailable, text fallback only");
        }

        TextView hint = new TextView(this);
        hint.setText(buildHint(urls));
        hint.setTextColor(FG2);
        hint.setTextSize(13);
        hint.setGravity(Gravity.CENTER);
        hint.setPadding(0, dp(8), 0, 0);
        root.addView(hint, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        // 顺带把「本次有多少日志可下」显示出来 —— 车机日志是有轮转的（单文件 5MB 压缩、
        // 目录内保留 20 个），用户问过这事，晾在界面上最直观。
        TextView stats = new TextView(this);
        stats.setText(LogHttpServer.summary());
        stats.setTextColor(FG2);
        stats.setTextSize(12);
        stats.setGravity(Gravity.CENTER);
        stats.setPadding(0, dp(6), 0, 0);
        root.addView(stats, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        // 返回按钮。本页现在是从车机主界面点进来的（不再是独立桌面图标），
        // 车机上不一定有实体返回键，必须给一个屏幕上的出口。
        TextView back = new TextView(this);
        back.setText("返回");
        back.setTextColor(FG);
        back.setTextSize(16);
        back.setGravity(Gravity.CENTER);
        back.setBackgroundColor(0xFF2A2833);
        back.setOnClickListener(new BackHandler());
        LinearLayout.LayoutParams blp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(46));
        blp.topMargin = dp(10);
        root.addView(back, blp);

        setContentView(root);
        Log.i(TAG, "activity created, urls=" + join(urls));
    }

    /** 独立的返回处理类（避免在 onCreate 里引入匿名内部类，风格与 LogHttpServer$1 保持一致）。 */
    public static class BackHandler implements android.view.View.OnClickListener {
        public void onClick(android.view.View v) {
            try {
                ((Activity) v.getContext()).finish();
                Log.i("CarLifeLogXfer", "back pressed, finish activity");
            } catch (Throwable t) {
                Log.w("CarLifeLogXfer", "finish failed: " + t);
            }
        }
    }

    private WebView tryCreateWebView() {
        try {
            WebView w = new WebView(this);
            WebSettings s = w.getSettings();
            s.setJavaScriptEnabled(true);
            s.setDomStorageEnabled(true);
            s.setUseWideViewPort(true);
            s.setLoadWithOverviewMode(true);
            s.setAllowFileAccess(true);
            s.setBuiltInZoomControls(false);
            w.setBackgroundColor(BG);
            return w;
        } catch (Throwable t) {
            Log.e(TAG, "create WebView failed: " + t);
            return null;
        }
    }

    private static String buildAssetUrl(String[] urls) {
        StringBuilder sb = new StringBuilder("file:///android_asset/logxfer/logxfer.html#");
        for (int i = 0; i < urls.length && i < 3; i++) {
            if (i > 0) {
                sb.append(',');
            }
            try {
                sb.append(URLEncoder.encode(urls[i], "UTF-8"));
            } catch (Throwable t) {
                sb.append(urls[i]);
            }
        }
        return sb.toString();
    }

    private static String buildHint(String[] urls) {
        if (urls.length == 0) {
            return "未检测到可用网络地址，请检查 WiFi 连接";
        }
        StringBuilder sb = new StringBuilder("手机与车机接入同一网络后，扫码或在浏览器打开：");
        for (int i = 0; i < urls.length && i < 3; i++) {
            sb.append('\n').append(urls[i]);
        }
        return sb.toString();
    }

    private static String join(String[] arr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arr.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(arr[i]);
        }
        return sb.toString();
    }

    private int dp(int v) {
        try {
            return (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                    getResources().getDisplayMetrics());
        } catch (Throwable t) {
            return v * 2;
        }
    }

    protected void onStart() {
        super.onStart();
        // 服务随页面可见性启停：实测 4.4 车机/模拟器上按返回键退出本页时 onDestroy 不一定会
        // 被调用（会退到 CarLife 主界面，本页只是 stopped），只用 onCreate/onDestroy 会留下
        // 一个一直占着 18080 的 accept 线程。放 onStart/onStop 才能保证"页面关掉即放端口"。
        LogHttpServer.get().start();
        Log.i(TAG, "activity started");
    }

    protected void onStop() {
        super.onStop();
        try {
            LogHttpServer.get().stop();
        } catch (Throwable t) {
            Log.w(TAG, "stop server: " + t);
        }
        Log.i(TAG, "activity stopped");
    }
}
