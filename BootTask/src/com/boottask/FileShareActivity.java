package com.boottask;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;

/**
 * v1.6.15「手机遥控车机文件」车机端页面 —— 这里什么都不做，只负责把服务跑起来、
 * 显示二维码和操作日志。真正的操作界面在手机浏览器里（assets/logxfer/fm.html）。
 *
 * 为什么不在车机上做 UI：车机是电阻/红外屏 + 输入法难用，在车机上改文件名是酷刑；
 * 手机上有键盘、能多选、下载直接进相册/文件管理器，体验完全不同。
 *
 * 服务随页面 onStart/onStop 启停（不后台常驻，端口用完释放）。
 * 访问码每次启动随机生成，二维码 URL 里带着它 —— 别人就算扫到端口也动不了文件。
 */
public class FileShareActivity extends Activity implements ShareServer.Listener {

    private static final int BG = 0xFF101014;
    private static final int FG = 0xFFE8E6F0;
    private static final int FG2 = 0xFF9B98A8;

    private WebView mWeb;
    private TextView mAddr;
    private TextView mLog;
    private final Handler mHandler = new Handler();
    private Runnable mTicker;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ShareServer.init(this);
        setTitle("手机遥控文件");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(BG);
        int pad = dp(14);
        root.setPadding(pad, pad, pad, pad);

        TextView title = new TextView(this);
        title.setText("手机扫码遥控车机文件");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        title.setTextColor(FG);
        root.addView(title, mw());

        TextView sub = new TextView(this);
        sub.setText("左边扫码 → 手机浏览器里操作文件的浏览/上传/下载/改名/删除/装 APK");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10);
        sub.setTextColor(FG2);
        sub.setLines(1);
        LinearLayout.LayoutParams slp = mw();
        slp.topMargin = dp(2);
        root.addView(sub, slp);

        mWeb = tryCreateWebView();
        if (mWeb != null) {
            LinearLayout.LayoutParams wlp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
            wlp.topMargin = dp(6);
            root.addView(mWeb, wlp);
        }

        mAddr = new TextView(this);
        mAddr.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
        mAddr.setTextColor(0xFF8FB2FF);
        mAddr.setPadding(dp(8), dp(4), dp(8), dp(4));
        mAddr.setBackgroundColor(0xFF1B1A21);
        LinearLayout.LayoutParams alp = mw();
        alp.topMargin = dp(4);
        root.addView(mAddr, alp);

        TextView logTitle = new TextView(this);
        logTitle.setText("手机端操作记录");
        logTitle.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10);
        logTitle.setTextColor(FG2);
        LinearLayout.LayoutParams ltlp = mw();
        ltlp.topMargin = dp(4);
        root.addView(logTitle, ltlp);

        mLog = new TextView(this);
        mLog.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10);
        mLog.setTextColor(FG);
        mLog.setBackgroundColor(0xFF1B1A21);
        mLog.setPadding(dp(8), dp(4), dp(8), dp(4));
        LinearLayout.LayoutParams llp = mw();
        llp.height = dp(52);
        root.addView(mLog, llp);

        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        Button copy = new Button(this);
        copy.setText("显示访问路径");
        copy.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                String[] u = ShareServer.urls();
                if (u.length == 0) {
                    Toast.makeText(FileShareActivity.this, "没有可用网络地址",
                            Toast.LENGTH_SHORT).show();
                    return;
                }
                StringBuilder b = new StringBuilder();
                for (int i = 0; i < u.length; i++) {
                    b.append(u[i]).append('\n');
                }
                b.append("\n访问码 ").append(ShareServer.key()).append("（已在链接里）");
                mAddr.setText(b.toString().trim());
            }
        });
        row.addView(copy, flex());
        Button stop = new Button(this);
        stop.setText("停止服务");
        stop.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                ShareServer.get().stop();
                Toast.makeText(FileShareActivity.this, "已停止，端口释放",
                        Toast.LENGTH_SHORT).show();
                finish();
            }
        });
        row.addView(stop, flex());
        Button back = new Button(this);
        back.setText("返回");
        back.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                finish();
            }
        });
        row.addView(back, flex());
        LinearLayout.LayoutParams rlp = mw();
        rlp.topMargin = dp(6);
        root.addView(row, rlp);

        setContentView(root);
    }

    @Override
    protected void onStart() {
        super.onStart();
        ShareServer.setListener(this);
        ShareServer.get().start();
        if (!ShareServer.get().isRunning()) {
            Toast.makeText(this, "端口 " + ShareServer.PORT + " 起不来（可能被占用）",
                    Toast.LENGTH_LONG).show();
            mAddr.setText("服务未启动");
            return;
        }
        String[] urls = ShareServer.urls();
        if (urls.length == 0) {
            mAddr.setText("未检测到网络地址\n请连接 WiFi / 热点 / 直连后重进本页");
        } else {
            // 地址全文由页面二维码旁显示 + 「显示访问路径」按钮展开，这里只给一行摘要，
            // 不然车机矮屏上几行地址会把二维码挤没
            mAddr.setText("访问码 " + ShareServer.key() + "（已包含在链接里，重启本页会变）\n"
                    + urls[0]);
            if (mWeb != null) {
                try {
                    StringBuilder sb = new StringBuilder("file:///android_asset/logxfer/recv.html#");
                    sb.append(java.net.URLEncoder.encode(urls[0], "UTF-8"));
                    mWeb.loadUrl(sb.toString());
                } catch (Throwable t) {
                    BootDiagnostics.log(this, "webview load fail: " + t);
                }
            }
        }
        mTicker = new Runnable() {
            public void run() {
                String s = ShareServer.recentLog();
                mLog.setText(s.length() == 0 ? "（暂无）" : s.trim());
                mHandler.postDelayed(this, 2000L);
            }
        };
        mHandler.post(mTicker);
    }

    @Override
    protected void onStop() {
        mHandler.removeCallbacks(mTicker);
        ShareServer.setListener(null);
        ShareServer.get().stop();
        super.onStop();
    }

    public void onUploaded(final File f, final long bytes) {
        runOnUiThread(new Runnable() {
            public void run() {
                Toast.makeText(FileShareActivity.this,
                        "已从手机收到 " + f.getName(), Toast.LENGTH_SHORT).show();
            }
        });
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
            w.setBackgroundColor(BG);
            return w;
        } catch (Throwable t) {
            BootDiagnostics.log(this, "create WebView failed: " + t);
            return null;
        }
    }

    private LinearLayout.LayoutParams mw() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private LinearLayout.LayoutParams flex() {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        lp.rightMargin = dp(4);
        return lp;
    }

    private int dp(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }
}
