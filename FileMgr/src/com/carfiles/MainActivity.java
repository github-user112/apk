package com.carfiles;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.util.List;

/**
 * 车机文件管家 v1.0 主界面（从「开机任务」拆出的文件功能，独立成 App）。
 *
 * 三件事，对应三张卡：
 *   1. 扫码上传安装 APK —— ReceiveActivity（18082 上传服务 + recv.html 二维码）
 *   2. 卸载软件         —— AppListActivity（车机屏原生列表）；手机扫码文件页里也有
 *                           应用管理（ShareServer /api/apps，root 静默卸）
 *   3. 文件管理（含 U 盘）—— FileShareActivity（手机扫码，18083 ShareServer + fm.html）
 *                           + FileManagerActivity（车机屏本地浏览）
 *
 * 配色与三个子页面一致（BG 0xFF101014 / 卡片 0xFF1B1A21），整套 App 观感统一。
 * U 盘/外置 SD 挂载点由 FileOps.removableMounts() 从 /proc/mounts 探测，
 * 状态行回到前台（onResume）即刷新——插拔 U 盘后切回来就能看到。
 */
public class MainActivity extends Activity {

    private static final int ACCENT = Color.rgb(47, 111, 237);
    private static final int BG = 0xFF101014;
    private static final int CARD_BG = 0xFF1B1A21;
    private static final int CARD_STROKE = 0xFF2C2C36;
    private static final int TEXT_MAIN = 0xFFF2F4F8;
    private static final int TEXT_DESC = 0xFF9AA3B2;

    private TextView mStatus;

    // ------------------------------------------------------------------ 生命周期

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("车机文件管家");

        ScrollView sv = new ScrollView(this);
        sv.setBackgroundColor(BG);
        setContentView(sv);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        int pad = dip(12);
        root.setPadding(pad, dip(14), pad, pad);
        sv.addView(root, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        // ---- 头部 ----
        TextView title = new TextView(this);
        title.setText("车机文件管家");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(TEXT_MAIN);
        root.addView(title, matchWrap());

        TextView sub = new TextView(this);
        sub.setText("扫码上传安装 · 卸载软件 · 文件管理（含 U 盘）  " + versionLabel());
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        sub.setTextColor(TEXT_DESC);
        LinearLayout.LayoutParams subLp = matchWrap();
        subLp.topMargin = dip(3);
        root.addView(sub, subLp);

        // ---- 状态条：可移动存储 + root ----
        mStatus = new TextView(this);
        mStatus.setText("可移动存储：检测中…\nroot：检测中…");
        mStatus.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        mStatus.setTextColor(TEXT_DESC);
        mStatus.setBackgroundColor(CARD_BG);
        mStatus.setPadding(dip(10), dip(7), dip(10), dip(7));
        LinearLayout.LayoutParams stLp = matchWrap();
        stLp.topMargin = dip(8);
        root.addView(mStatus, stLp);

        // ---- 分区一：上传安装 ----
        LinearLayout cUp = card(root, "上传安装 APK",
                "手机连同一 WiFi → 扫码进上传页 → 手机里选 APK → 车机自动装"
                        + "（root 静默装；免 root 拉起系统安装界面，车机屏点确认）。");
        Button up = new Button(this);
        up.setText("📱 扫码上传安装 APK");
        up.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, ReceiveActivity.class));
            }
        });
        addIn(cUp, up, dip(8));

        // ---- 分区二：卸载软件 ----
        LinearLayout cApp = card(root, "卸载软件",
                "车机屏列表：点应用行 → 卸载 / 卸载但保留数据 / 启动。"
                        + "root 静默卸（pm uninstall）；免 root 弹系统确认框，需在车机屏点确定。"
                        + "手机扫码文件页里也有同款应用管理（应用页）。");
        Button appBtn = new Button(this);
        appBtn.setText("📦 卸载 / 管理软件");
        appBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, AppListActivity.class));
            }
        });
        addIn(cApp, appBtn, dip(8));

        // ---- 分区三：文件管理（含 U 盘）----
        LinearLayout cFile = card(root, "文件管理（含 U 盘）",
                "手机扫码页：浏览 / 上传 / 下载 / 新建 / 删除 / 重命名，"
                        + "U 盘和外置 SD 由 /proc/mounts 自动探测并列进根目录；"
                        + "车机屏也能本地浏览（快捷跳转 U 盘排最前）。");
        Button shareBtn = new Button(this);
        shareBtn.setText("📁 扫码用手机管理文件（推荐）");
        shareBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, FileShareActivity.class));
            }
        });
        addIn(cFile, shareBtn, dip(8));

        Button localBtn = new Button(this);
        localBtn.setText("📂 车机本地文件浏览");
        localBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, FileManagerActivity.class));
            }
        });
        addIn(cFile, localBtn);

        // ---- 分区四：端口与并存说明 ----
        card(root, "端口与并存",
                "上传服务 18082 · 文件服务 18083；「开机任务」的日志下载是 18081——"
                        + "三个端口互不冲突，两个 App 可以同时开着。"
                        + "U 盘插拔后回到本页即刷新状态。");
    }

    @Override
    protected void onResume() {
        super.onResume();
        refreshStatus();
    }

    // ------------------------------------------------------------------ 状态

    private void refreshStatus() {
        final List<String> mounts = FileOps.removableMounts();
        final StringBuilder sb = new StringBuilder();
        sb.append("可移动存储：");
        if (mounts.isEmpty()) {
            sb.append("未检测到（插好 U 盘后回本页刷新）");
        } else {
            for (int i = 0; i < mounts.size(); i++) {
                if (i > 0) {
                    sb.append("、");
                }
                sb.append(mounts.get(i));
            }
        }
        final String head = sb.toString();
        mStatus.setText(head + "\nroot：检测中…");
        // suOk 首次要 exec su -c id，放后台线程（主界面不许卡——WifiRateProbe 的教训）
        new Thread(new Runnable() {
            public void run() {
                final boolean ok = FileOps.suOk();
                runOnUiThread(new Runnable() {
                    public void run() {
                        if (isFinishing()) {
                            return;
                        }
                        mStatus.setText(head + "\nroot："
                                + (ok ? "可用（静默装卸载更快）" : "不可用（卸载需车机屏点确认）"));
                    }
                });
            }
        }, "root-check").start();
    }

    private String versionLabel() {
        try {
            String v = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            return "v" + (v == null ? "?" : v);
        } catch (Throwable t) {
            return "";
        }
    }

    // ------------------------------------------------------------------ 卡片（对齐 BootTask v1.6.26 样式）

    private LinearLayout card(LinearLayout root, String title, String desc) {
        LinearLayout box = new LinearLayout(this);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(dip(12), dip(10), dip(12), dip(12));

        LinearLayout head = new LinearLayout(this);
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        View bar = new View(this);
        bar.setBackgroundColor(ACCENT);
        LinearLayout.LayoutParams barLp = new LinearLayout.LayoutParams(dip(4), dip(16));
        barLp.rightMargin = dip(8);
        head.addView(bar, barLp);
        TextView t = new TextView(this);
        t.setText(title);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        t.setTextColor(TEXT_MAIN);
        head.addView(t, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        box.addView(head, matchWrap());

        if (desc != null && desc.length() > 0) {
            TextView d = new TextView(this);
            d.setText(desc);
            d.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
            d.setTextColor(TEXT_DESC);
            LinearLayout.LayoutParams dLp = matchWrap();
            dLp.topMargin = dip(5);
            box.addView(d, dLp);
        }

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(CARD_BG);
        bg.setCornerRadius(dip(10));
        bg.setStroke(dip(1), CARD_STROKE);
        box.setBackgroundDrawable(bg);   // setBackgroundDrawable：API<16 也安全

        LinearLayout.LayoutParams boxLp = matchWrap();
        boxLp.topMargin = dip(10);
        root.addView(box, boxLp);
        return box;
    }

    private void addIn(LinearLayout card, View v) {
        addIn(card, v, dip(6));
    }

    private void addIn(LinearLayout card, View v, int topMargin) {
        LinearLayout.LayoutParams lp = matchWrap();
        lp.topMargin = topMargin;
        card.addView(v, lp);
    }

    private LinearLayout.LayoutParams matchWrap() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private int dip(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }
}
