package com.boottask;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

/**
 * v1.6.76：热点自启的大弹窗进度窗。
 *
 * 布局（竖向）：
 *   顶行：「热点自启进度」标题 + 关闭按钮（只关窗，后台流程继续）
 *   阶段行：大字显示当前阶段 + 已等待秒数，每秒刷新
 *         ① 等待 ADB 就绪… 12s（最长 100s）
 *         ② 等待 WiFi 就绪… 6s（最长 80s）
 *         ③ 正在开热点… 10s
 *   结果行：完成/失败的一句话结论
 *   日志区：ScrollView，**新日志在最上面**，可上滑回看历史；
 *         含 App 侧（ADB 重试）与脚本侧（gate|/boot| 前缀）全部日志。
 *
 * 所有行同时落 files/log/hotspot_progress.log（HotspotRun.emit），扫码下载日志可带回。
 *
 * 兼容 4.4（API 19）：纯代码布局、基础 widget，无 AppCompat/矢量属性。
 * 数据来源：HotspotRun.attach 回放 + 实时回调；onDestroy 只摘回调，不影响后台流程。
 */
public class HotspotProgressActivity extends Activity implements HotspotRun.Ui {

    private TextView phaseView;
    private TextView resultView;
    private LinearLayout logBox;
    private ScrollView scroller;

    private final Handler handler = new Handler();
    private int phase;
    private long phaseStart;
    private int limitSec;
    private boolean done;
    private boolean doneOk;
    private String doneMsg = "";

    private final Runnable ticker = new Runnable() {
        public void run() {
            refreshPhaseText();
            if (!done) {
                handler.postDelayed(this, 1000L);
            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        int pad = dp(16);
        root.setPadding(pad, pad, pad, pad);

        // ---- 顶行：标题 + 关闭 ----
        LinearLayout top = new LinearLayout(this);
        top.setOrientation(LinearLayout.HORIZONTAL);
        top.setGravity(Gravity.CENTER_VERTICAL);
        TextView title = new TextView(this);
        title.setText("热点自启进度");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        top.addView(title, new LinearLayout.LayoutParams(0,
                LinearLayout.LayoutParams.WRAP_CONTENT, 1f));
        Button close = new Button(this);
        close.setText("关闭");
        close.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                finish();   // 只关窗；HotspotRun 后台流程与落盘继续
            }
        });
        top.addView(close, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT));
        root.addView(top);

        // ---- 阶段行（大字 + 秒数） ----
        phaseView = new TextView(this);
        phaseView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 24);
        phaseView.setTypeface(Typeface.DEFAULT_BOLD);
        phaseView.setPadding(0, dp(12), 0, dp(4));
        phaseView.setText("准备中…");
        root.addView(phaseView);

        // ---- 结果行 ----
        resultView = new TextView(this);
        resultView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17);
        resultView.setPadding(0, 0, 0, dp(8));
        root.addView(resultView);

        // ---- 日志区：新行在最上面 ----
        scroller = new ScrollView(this);
        logBox = new LinearLayout(this);
        logBox.setOrientation(LinearLayout.VERTICAL);
        scroller.addView(logBox);
        root.addView(scroller, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f));

        setContentView(root);

        // 大弹窗：宽 94%、高 90%（Theme.Dialog 默认只有内容高，必须显式撑开）
        Window w = getWindow();
        if (w != null) {
            DisplayMetrics dm = getResources().getDisplayMetrics();
            w.setLayout((int) (dm.widthPixels * 0.94), (int) (dm.heightPixels * 0.90));
        }

        HotspotRun.attach(this);     // 回放已有状态与日志
        handler.post(ticker);
    }

    @Override
    protected void onDestroy() {
        HotspotRun.detach(this);
        handler.removeCallbacks(ticker);
        super.onDestroy();
    }

    // ------------------------------------------------------------ HotspotRun.Ui

    public void onPhase(final int p, final long startMs, final int limit) {
        runOnUiThread(new Runnable() {
            public void run() {
                phase = p;
                phaseStart = startMs;
                limitSec = limit;
                refreshPhaseText();
            }
        });
    }

    public void onLine(final String line) {
        runOnUiThread(new Runnable() {
            public void run() {
                TextView tv = new TextView(HotspotProgressActivity.this);
                tv.setText(line);
                tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
                tv.setTypeface(Typeface.MONOSPACE);
                tv.setPadding(0, dp(2), 0, dp(2));
                logBox.addView(tv, 0);          // 新日志插到最上面
                if (logBox.getChildCount() > HotspotRun.MAX_LINES) {
                    logBox.removeViewAt(logBox.getChildCount() - 1);
                }
                scroller.scrollTo(0, 0);
            }
        });
    }

    public void onDone(final boolean ok, final String msg) {
        runOnUiThread(new Runnable() {
            public void run() {
                done = true;
                doneOk = ok;
                doneMsg = msg;
                resultView.setText(msg);
                refreshPhaseText();
            }
        });
    }

    // ------------------------------------------------------------ 内部

    private void refreshPhaseText() {
        if (phaseView == null) {
            return;
        }
        if (done || phase == HotspotRun.PHASE_DONE) {
            phaseView.setText(doneOk ? "✅ 完成" : "⚠ 流程结束（详见日志）");
            return;
        }
        long sec = (System.currentTimeMillis() - phaseStart) / 1000;
        String name;
        switch (phase) {
            case HotspotRun.PHASE_ADB:
                name = "① 等待 ADB 就绪";
                break;
            case HotspotRun.PHASE_WIFI:
                name = "② 等待 WiFi 就绪";
                break;
            case HotspotRun.PHASE_AP:
                name = "③ 正在开热点";
                break;
            default:
                name = "准备中";
                break;
        }
        String limit = limitSec > 0 ? "（最长 " + limitSec + "s）" : "";
        phaseView.setText(name + "…  " + sec + "s " + limit);
    }

    private boolean isSuccessful() {
        return doneOk;
    }

    private int dp(int v) {
        return (int) (v * getResources().getDisplayMetrics().density + 0.5f);
    }
}
