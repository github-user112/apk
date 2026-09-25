package com.baidu.carlifevehicle.logxfer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;

/**
 * 1.44: 直连组凭据二维码展示页。
 *
 * - 全屏白底 WebView，加载 assets/logxfer/qr_wifi.html，复用现有 qrcode.js 画码；
 * - 凭据通过 URL # 片段传入（Uri.encode 转义，JS 侧 decodeURIComponent）；
 * - 屏上同时显示组名/密码明文（扫码失败可手动输入）；
 * - 页面按钮经 JS Bridge 请求关闭，连接成功也可由 QrFallback.onLinkUp() 自动关闭；
 * - 保持常亮，避免车机息屏。
 */
public class QrFallbackActivity extends Activity {

    private static QrFallbackActivity sInstance;

    @SuppressLint("SetJavaScriptEnabled")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sInstance = this;
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);

        String ssid = getIntent() != null ? getIntent().getStringExtra("ssid") : null;
        String pass = getIntent() != null ? getIntent().getStringExtra("pass") : null;
        if (pass == null) {
            pass = "";
        }

        StringBuilder hash = new StringBuilder();
        hash.append("wifi=").append(Uri.encode(wifiPayload(ssid, pass)));
        hash.append("&ssid=").append(Uri.encode(ssid == null ? "" : ssid));
        hash.append("&psk=").append(Uri.encode(pass));

        WebView wv = new WebView(this);
        wv.getSettings().setJavaScriptEnabled(true);
        wv.setBackgroundColor(0xFFFFFFFF);
        wv.addJavascriptInterface(new Bridge(), "App");
        setContentView(wv);
        wv.loadUrl("file:///android_asset/logxfer/qr_wifi.html#" + hash.toString());
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

    @Override
    protected void onDestroy() {
        if (sInstance == this) {
            sInstance = null;
        }
        super.onDestroy();
    }

    static void finishSelf() {
        try {
            if (sInstance != null) {
                sInstance.finish();
            }
        } catch (Throwable t) {
        }
    }

    class Bridge {
        @JavascriptInterface
        public void close() {
            finishSelf();
        }
    }
}
