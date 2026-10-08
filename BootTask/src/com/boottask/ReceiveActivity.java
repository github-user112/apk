package com.boottask;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * v1.6.14「接收文件 / 安装 APK」页。
 *
 * 用法：车机打开本页 → 手机连同一网络（直连/热点/WiFi）扫二维码 → 手机浏览器
 * 打开上传页 → 选 APK 上传 → 车机收到后自动安装（勾选项）。
 *
 * 与日志下载页（LogDownloadActivity）同一套路：WebView 渲染 assets 里的页面画二维码，
 * 服务随页面 onStart/onStop 启停（页面关掉即放端口，不在后台常驻）。
 * WebView 不可用时降级：地址文字还在，用户可以手动在手机浏览器里敲。
 */
public class ReceiveActivity extends Activity implements UploadServer.Listener {

    private static final int BG = 0xFF101014;
    private static final int FG = 0xFFE8E6F0;
    private static final int FG2 = 0xFF9B98A8;

    private WebView mWeb;
    private TextView mHint;
    private TextView mState;
    private CheckBox mAuto;
    private File[] mApks = new File[0];
    private final Handler mHandler = new Handler();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        UploadServer.init(this);
        setTitle("接收文件");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(BG);
        int pad = dp(16);
        root.setPadding(pad, pad, pad, pad);

        TextView title = new TextView(this);
        title.setText("手机传文件到车机");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
        title.setTextColor(FG);
        root.addView(title, mw());

        TextView sub = new TextView(this);
        sub.setText("手机连同一网络 → 扫码 → 选 APK 上传 → 自动安装");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        sub.setTextColor(FG2);
        LinearLayout.LayoutParams slp = mw();
        slp.topMargin = dp(4);
        root.addView(sub, slp);

        // 二维码区（车机端页面）；WebView 不可用时只是空白，下面有地址文字兜底
        mWeb = tryCreateWebView();
        if (mWeb != null) {
            LinearLayout.LayoutParams wlp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
            wlp.topMargin = dp(12);
            root.addView(mWeb, wlp);
        }

        mHint = new TextView(this);
        mHint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        mHint.setTextColor(FG2);
        mHint.setGravity(Gravity.CENTER);
        mHint.setPadding(0, dp(8), 0, dp(8));
        root.addView(mHint, mw());

        mState = new TextView(this);
        mState.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        mState.setTextColor(FG);
        mState.setBackgroundColor(0xFF1B1A21);
        mState.setPadding(dp(10), dp(10), dp(10), dp(10));
        mState.setText("等待接收…");
        root.addView(mState, mw());

        mAuto = new CheckBox(this);
        mAuto.setText("收到后自动安装（有 root 静默装；无 root 拉起系统安装界面）");
        mAuto.setTextColor(FG);
        mAuto.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        mAuto.setChecked(true);
        LinearLayout.LayoutParams alp = mw();
        alp.topMargin = dp(10);
        root.addView(mAuto, alp);

        Button installBtn = new Button(this);
        installBtn.setText("安装最新收到的 APK");
        installBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                doInstall(null);
            }
        });
        LinearLayout.LayoutParams ilp = mw();
        ilp.topMargin = dp(6);
        root.addView(installBtn, ilp);

        Button listBtn = new Button(this);
        listBtn.setText("收件箱文件列表");
        listBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                showList();
            }
        });
        LinearLayout.LayoutParams llp = mw();
        llp.topMargin = dp(4);
        root.addView(listBtn, llp);

        Button backBtn = new Button(this);
        backBtn.setText("返回");
        backBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                finish();
            }
        });
        LinearLayout.LayoutParams blp = mw();
        blp.topMargin = dp(4);
        root.addView(backBtn, blp);

        setContentView(root);
    }

    @Override
    protected void onStart() {
        super.onStart();
        UploadServer.get().start();
        UploadServer.setListener(this);
        String[] urls = UploadServer.uploadUrls();
        if (mWeb != null) {
            try {
                mWeb.loadUrl(buildAssetUrl(urls));
            } catch (Throwable t) {
                BootDiagnostics.log(this, "webview load fail: " + t);
            }
        }
        if (!UploadServer.get().isRunning()) {
            mHint.setText("端口 " + UploadServer.PORT + " 启动失败（可能被占用）");
            mHint.setTextColor(0xFFFF6B6B);
        } else if (urls.length == 0) {
            mHint.setText("未检测到可用网络地址\n请连接 WiFi / 直连 / 热点后重进本页");
        } else {
            StringBuilder sb = new StringBuilder("手机浏览器打开（或扫码）：");
            for (int i = 0; i < urls.length && i < 3; i++) {
                sb.append('\n').append(urls[i]);
            }
            mHint.setText(sb.toString());
            mHint.setTextColor(FG2);
        }
        refreshState();
    }

    @Override
    protected void onStop() {
        UploadServer.setListener(null);
        UploadServer.get().stop();
        super.onStop();
    }

    /** 上传完成（服务端线程回调）→ 回 UI 线程更新 + 按需自动安装 */
    public void onUploaded(final File f, final long bytes) {
        runOnUiThread(new Runnable() {
            public void run() {
                refreshState();
                if (mAuto.isChecked()) {
                    doInstall(f);
                } else {
                    Toast.makeText(ReceiveActivity.this,
                            "已收到 " + f.getName() + "（点「安装最新收到的 APK」）",
                            Toast.LENGTH_LONG).show();
                }
            }
        });
    }

    private void doInstall(final File picked) {
        final File target;
        if (picked != null) {
            target = picked;
        } else {
            mApks = ApkInstaller.listApks(this);
            target = mApks.length > 0 ? mApks[0] : null;
        }
        if (target == null) {
            Toast.makeText(this, "收件箱里还没有 APK，先在手机上上传", Toast.LENGTH_LONG).show();
            return;
        }
        Toast.makeText(this, "开始安装 " + target.getName() + " …", Toast.LENGTH_SHORT).show();
        final Context ctx = this;
        new Thread(new Runnable() {
            public void run() {
                final String r = ApkInstaller.install(ctx, target, true);
                runOnUiThread(new Runnable() {
                    public void run() {
                        Toast.makeText(ReceiveActivity.this,
                                r.length() > 200 ? r.substring(0, 200) : r,
                                Toast.LENGTH_LONG).show();
                        refreshState();
                    }
                });
            }
        }).start();
    }

    private void showList() {
        final File[] all = UploadServer.inboxDir().listFiles();
        if (all == null || all.length == 0) {
            Toast.makeText(this, "收件箱为空", Toast.LENGTH_SHORT).show();
            return;
        }
        String[] names = new String[all.length];
        for (int i = 0; i < all.length; i++) {
            names[i] = all[i].getName() + "  (" + (all[i].length() / 1024) + " KB)";
        }
        new AlertDialog.Builder(this)
                .setTitle("收件箱 " + UploadServer.inboxDir().getAbsolutePath())
                .setItems(names, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        doInstall(all[w]);
                    }
                })
                .setNegativeButton("关闭", null)
                .show();
    }

    private void refreshState() {
        StringBuilder b = new StringBuilder();
        String last = UploadServer.lastName();
        if (last != null) {
            b.append("最近收到：").append(last).append('\n')
                    .append(UploadServer.lastBytes() / 1024).append(" KB  ")
                    .append(timeStr(UploadServer.lastAt()));
        } else {
            b.append("等待接收…");
        }
        String err = UploadServer.lastError();
        if (err != null) {
            b.append("\n上次错误：").append(err);
        }
        mApks = ApkInstaller.listApks(this);
        if (mApks.length > 0) {
            b.append("\n收件箱 APK：").append(mApks.length).append(" 个（最新 ")
                    .append(mApks[0].getName()).append("）");
        }
        b.append("\n未知来源开关：").append(ApkInstaller.unknownSourcesOn(this) ? "已开" : "未开（无 root 需手动开）");
        mState.setText(b.toString());
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

    private static String buildAssetUrl(String[] urls) {
        StringBuilder sb = new StringBuilder("file:///android_asset/logxfer/recv.html#");
        for (int i = 0; i < urls.length && i < 3; i++) {
            if (i > 0) {
                sb.append(',');
            }
            try {
                sb.append(java.net.URLEncoder.encode(urls[i], "UTF-8"));
            } catch (Throwable t) {
                sb.append(urls[i]);
            }
        }
        return sb.toString();
    }

    private static String timeStr(long ms) {
        try {
            return new SimpleDateFormat("HH:mm:ss").format(new Date(ms));
        } catch (Throwable t) {
            return String.valueOf(ms);
        }
    }

    private LinearLayout.LayoutParams mw() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private int dp(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }
}
