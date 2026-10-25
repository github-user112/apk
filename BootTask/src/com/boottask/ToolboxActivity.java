package com.boottask;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
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
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/**
 * v1.6.34 工具箱：日常使用类功能从首页挪到这里 ——
 * 我的规则（本 App 核心）/ 开机静音 + 启动声音监控（问题2，已定位嫌疑名单，
 * 等音频时间线闭环）/ 免 root 工具 / 直连免打扰（无障碍自动点配对弹窗）。
 *
 * 编译期约束：stub android.jar 无 org.json；smali 类（RuleStore/Util/EditActivity/
 * AppPickActivity）对 javac 不可见 —— 规则存取走反射（运行时同 dex 必然存在），
 * 组件拉起一律 setClassName 字符串形式。
 */
public class ToolboxActivity extends Activity implements View.OnClickListener {

    private static final int ACCENT = Color.rgb(47, 111, 237);

    private Button amToggleButton;
    private Button amPickButton;
    private Button amClearButton;
    private TextView amStatusText;
    private Button noRootWifiButton;
    private Button noRootYilianButton;
    private Button noRootSettingsButton;
    private Button p2pAaOnButton;
    private Button p2pAaOffButton;
    private Button p2pAaSettingsButton;
    private Button p2pAaTestButton;
    private Button keyfToggleButton;
    private TextView keyfText;
    private TextView p2pAaText;

    // ---- v1.6.39 页签容器（车机屏不滚动：预建面板，切页签只换可见性）----
    // 规则/声音已迁入首页「常用」页签；这里只留监控/按键/工具
    private static final String[] TAB_NAMES = {"监控", "按键", "工具"};
    private Button[] tabButtons;
    private LinearLayout[] panels;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("工具箱");

        // v1.6.39：页签化，整页不滚动（车机滚屏卡）。页签栏 + 五个预建面板。
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dip(12), dip(8), dip(12), dip(10));
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        LinearLayout headRow = new LinearLayout(this);
        headRow.setOrientation(LinearLayout.HORIZONTAL);
        headRow.setGravity(Gravity.CENTER_VERTICAL);
        TextView title = new TextView(this);
        title.setText("工具箱");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.rgb(34, 34, 34));
        headRow.addView(title, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView sub = new TextView(this);
        sub.setText("点页签切换，不用滚屏");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        sub.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams subLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        subLp.leftMargin = dip(10);
        headRow.addView(sub, subLp);
        root.addView(headRow, matchWrap());

        LinearLayout tabBar = new LinearLayout(this);
        tabBar.setOrientation(LinearLayout.HORIZONTAL);
        tabButtons = new Button[TAB_NAMES.length];
        for (int i = 0; i < TAB_NAMES.length; i++) {
            Button b = new Button(this);
            b.setText(TAB_NAMES[i]);
            b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
            b.setOnClickListener(this);
            tabButtons[i] = b;
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dip(52), 1f);
            if (i > 0) {
                lp.leftMargin = dip(6);
            }
            tabBar.addView(b, lp);
        }
        LinearLayout.LayoutParams tabLp = matchWrap();
        tabLp.topMargin = dip(8);
        root.addView(tabBar, tabLp);

        FrameLayout content = new FrameLayout(this);
        LinearLayout.LayoutParams contentLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        contentLp.topMargin = dip(4);
        root.addView(content, contentLp);

        panels = new LinearLayout[TAB_NAMES.length];
        for (int i = 0; i < panels.length; i++) {
            panels[i] = new LinearLayout(this);
            panels[i].setOrientation(LinearLayout.VERTICAL);
            content.addView(panels[i], new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            panels[i].setVisibility(View.GONE);
        }
        buildMonitorPanel(panels[0]);
        buildKeyPanel(panels[1]);
        buildToolsPanel(panels[2]);
        switchTab(0);
        setContentView(root);

        BootDiagnostics.log(this, "ToolboxActivity opened");
    }

    /** 切页签：只换可见性 + 页签配色，面板内容不动（状态由 onResume/各 update 刷新） */
    private void switchTab(int i) {
        for (int k = 0; k < panels.length; k++) {
            panels[k].setVisibility(k == i ? View.VISIBLE : View.GONE);
            boolean sel = k == i;
            tabButtons[k].setBackgroundColor(sel ? ACCENT : Color.WHITE);
            tabButtons[k].setTextColor(sel ? Color.WHITE : Color.rgb(34, 34, 34));
        }
    }

    /** 让卡片填满页签面板（高度吃完剩余空间） */
    private void fillPanel(LinearLayout card) {
        LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) card.getLayoutParams();
        lp.height = 0;
        lp.weight = 1f;
        card.setLayoutParams(lp);
    }

    /** 两按钮一行（车机横屏宽度够，省高度） */
    private void gridRow(LinearLayout card, View a, View b) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout.LayoutParams la = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        la.rightMargin = dip(6);
        row.addView(a, la);
        row.addView(b, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        addIn(card, row);
    }

    // ---- 页签一：启动与声音监控 ----
    private void buildMonitorPanel(LinearLayout p) {
        LinearLayout cAm = card(p, "启动与声音监控",
                "记录开机后谁被拉起、谁抢音频焦点；设拦截目标后目标一冒头就杀。"
                        + "落日志 /sdcard/boottask/audio_monitor.log，开机自动开始。");
        fillPanel(cAm);

        amToggleButton = new Button(this);
        amToggleButton.setOnClickListener(this);

        amPickButton = new Button(this);
        amPickButton.setText("选择拦截目标（选多媒体/收音机）");
        amPickButton.setOnClickListener(this);
        gridRow(cAm, amToggleButton, amPickButton);

        amClearButton = new Button(this);
        amClearButton.setText("清空拦截目标");
        amClearButton.setOnClickListener(this);
        addIn(cAm, amClearButton);

        amStatusText = new TextView(this);
        amStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        amStatusText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cAm, amStatusText);
    }

    // ---- 页签二：按键与弹窗（直连免打扰 + 亿连上一首/下一首）----
    private void buildKeyPanel(LinearLayout p) {
        LinearLayout cAa = card(p, "按键与弹窗",
                "P2P 配对弹窗自动点「允许」；亿连前台时 上一首/下一首 直接控制手机。"
                        + "⚠ 都要先在系统里启用无障碍服务（点下面①）。");
        fillPanel(cAa);

        p2pAaSettingsButton = new Button(this);
        p2pAaSettingsButton.setText("① 去系统设置启用无障碍服务（必需）");
        p2pAaSettingsButton.setOnClickListener(this);

        p2pAaTestButton = new Button(this);
        p2pAaTestButton.setText("② 测试自动点弹窗");
        p2pAaTestButton.setOnClickListener(this);
        gridRow(cAa, p2pAaSettingsButton, p2pAaTestButton);

        p2pAaOnButton = new Button(this);
        p2pAaOnButton.setText("开启：自动点掉 P2P 配对弹窗");
        p2pAaOnButton.setOnClickListener(this);

        p2pAaOffButton = new Button(this);
        p2pAaOffButton.setText("关闭（恢复手动点允许）");
        p2pAaOffButton.setOnClickListener(this);
        gridRow(cAa, p2pAaOnButton, p2pAaOffButton);

        // v1.6.38：亿连上一首/下一首（无障碍拦 87/88 → 发 net.easyconn.music.* 广播）
        keyfToggleButton = new Button(this);
        keyfToggleButton.setOnClickListener(this);
        addIn(cAa, keyfToggleButton);

        keyfText = new TextView(this);
        keyfText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        keyfText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cAa, keyfText);

        p2pAaText = new TextView(this);
        p2pAaText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        p2pAaText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cAa, p2pAaText);
    }

    // ---- 页签三：免 root 工具 ----
    private void buildToolsPanel(LinearLayout p) {
        LinearLayout cNr = card(p, "免 root 工具",
                "不提权、不改系统文件；写 /etc/ec.conf 那类必须 root 的活在「Root 工具」页。");
        fillPanel(cNr);

        noRootWifiButton = new Button(this);
        noRootWifiButton.setText("高性能 WiFi 锁（免 root 版关省电）");
        noRootWifiButton.setOnClickListener(this);

        noRootYilianButton = new Button(this);
        noRootYilianButton.setText("重启亿连 / 打开亿连设置");
        noRootYilianButton.setOnClickListener(this);
        gridRow(cNr, noRootWifiButton, noRootYilianButton);

        noRootSettingsButton = new Button(this);
        noRootSettingsButton.setText("打开系统设置（蓝牙/WiFi/显示/开发者选项）");
        noRootSettingsButton.setOnClickListener(this);
        addIn(cNr, noRootSettingsButton);
    }

    @Override
    protected void onResume() {
        super.onResume();
        updateAmUi();
        updateAaUi();
    }

    // ---------------------------------------------------------------- 监控/免打扰状态

    /** v1.6.21：启动与声音监控分区状态 */
    private void updateAmUi() {
        try {
            amToggleButton.setText(AudioMonitor.isRunning()
                    ? "停止启动与声音监控" : "开启启动与声音监控（也可等开机自动开始）");
            String tgt = AudioMonitor.blockTarget(this);
            amStatusText.setText("拦截目标：" + (tgt == null ? "未设置" : tgt)
                    + "\n状态：" + AudioMonitor.lastAction()
                    + "\n最近记录：\n" + MainActivity.tail(AudioMonitor.readLog(this), 4));
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.29 直连免打扰分区状态 + v1.6.38 按键转发状态 */
    private void updateAaUi() {
        try {
            p2pAaOnButton.setEnabled(!P2pAutoAccept.isEnabled(this));
            p2pAaOffButton.setEnabled(P2pAutoAccept.isEnabled(this));
            p2pAaText.setText(P2pAutoAccept.statusText(this));
            keyfToggleButton.setText(MediaKeyRelay.isEnabled(this)
                    ? "关闭：亿连前台时 上一首/下一首 转发给手机"
                    : "开启：亿连前台时 上一首/下一首 转发给手机");
            keyfText.setText(MediaKeyRelay.statusText(this));
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.21：接收 AppPickActivity 选中的拦截目标 */
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 77 && resultCode == RESULT_OK && data != null) {
            String pkg = data.getStringExtra("pkg");
            if (pkg != null && pkg.length() > 0) {
                AudioMonitor.setBlockTarget(this, pkg);
                Toast.makeText(this, "拦截目标已设为 " + pkg
                        + "（开机后也会自动拦截）", Toast.LENGTH_LONG).show();
                if (!AudioMonitor.isRunning()) {
                    startService(new Intent(this, AudioMonitor.class));
                }
                updateAmUi();
            }
        }
    }

    // ---------------------------------------------------------------- 点击事件

    @Override
    public void onClick(View v) {
        // v1.6.39：页签切换
        for (int k = 0; k < tabButtons.length; k++) {
            if (v == tabButtons[k]) {
                switchTab(k);
                return;
            }
        }
        if (v == noRootWifiButton) {
            new AlertDialog.Builder(this)
                    .setTitle("高性能 WiFi 锁（免 root）")
                    .setItems(new String[]{
                            "① 申请高性能锁 + 组播锁（免 root 版关省电）",
                            "② 释放锁（还原）"},
                            new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface d, int w) {
                                    runNoRoot(w == 0 ? 0 : 1);
                                }
                            })
                    .show();
            return;
        }
        if (v == noRootYilianButton) {
            new AlertDialog.Builder(this)
                    .setTitle("亿连（免 root）")
                    .setItems(new String[]{
                            "① 重启亿连（kill + 重新拉起）",
                            "② 打开亿连，人肉找画质/分辨率开关"},
                            new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface d, int w) {
                                    runNoRoot(w == 0 ? 2 : 3);
                                }
                            })
                    .show();
            return;
        }
        if (v == noRootSettingsButton) {
            new AlertDialog.Builder(this)
                    .setTitle("跳到系统设置（第三方 App 改不了，只能人肉点）")
                    .setItems(new String[]{
                            "① WLAN 设置（关蓝牙/WiFi 常扫、手动重连 P2P）",
                            "② 蓝牙设置（关蓝牙排查 2.4G 争抢）",
                            "③ 显示设置（休眠时间/亮度）",
                            "④ 开发者选项（保持唤醒等）"},
                            new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface d, int w) {
                                    String r = NoRootFixes.openSettings(ToolboxActivity.this, w + 1);
                                    Toast.makeText(ToolboxActivity.this, r, Toast.LENGTH_LONG).show();
                                }
                            })
                    .show();
            return;
        }
        if (v == p2pAaOnButton) {
            P2pAutoAccept.setEnabled(this, true);
            updateAaUi();
            if (!P2pAutoAccept.isAccessibilityServiceEnabled(this)) {
                Toast.makeText(this, "已开开关，但无障碍服务还没在系统里启用——"
                        + "请点「① 去系统设置里启用无障碍服务」", Toast.LENGTH_LONG).show();
            } else {
                Toast.makeText(this, "已开启：下次手机申请连入会自动点「允许」", Toast.LENGTH_LONG).show();
            }
            return;
        }
        if (v == p2pAaOffButton) {
            P2pAutoAccept.setEnabled(this, false);
            updateAaUi();
            Toast.makeText(this, "已关闭：恢复弹窗手动点允许", Toast.LENGTH_SHORT).show();
            return;
        }
        if (v == p2pAaSettingsButton) {
            try {
                startActivity(P2pAutoAccept.settingsIntent());
            } catch (Throwable t) {
                Toast.makeText(this, "打不开系统辅助功能设置页：" + t, Toast.LENGTH_LONG).show();
            }
            return;
        }
        if (v == p2pAaTestButton) {
            Toast.makeText(this, P2pDialogClicker.selfTest(), Toast.LENGTH_LONG).show();
            updateAaUi();
            return;
        }
        if (v == keyfToggleButton) {
            boolean on = !MediaKeyRelay.isEnabled(this);
            MediaKeyRelay.setEnabled(this, on);
            updateAaUi();
            Toast.makeText(this, on
                    ? "已开启：亿连前台时按 上一首/下一首 直接控制手机（不再切音源）"
                    : "已关闭：按键恢复原样（会切到多媒体）", Toast.LENGTH_LONG).show();
            return;
        }
        if (v == amToggleButton) {
            if (AudioMonitor.isRunning()) {
                stopService(new Intent(this, AudioMonitor.class));
                Toast.makeText(this, "声音监控已停止", Toast.LENGTH_SHORT).show();
            } else {
                startService(new Intent(this, AudioMonitor.class));
                Toast.makeText(this, "声音监控已开启（每 5 秒记录新进程与音频焦点）",
                        Toast.LENGTH_LONG).show();
            }
            updateAmUi();
            amStatusText.postDelayed(new Runnable() {
                public void run() {
                    updateAmUi();
                }
            }, 1200L);
            return;
        }
        if (v == amPickButton) {
            Intent it = new Intent();
            it.setClassName(getPackageName(), "com.boottask.AppPickActivity");
            startActivityForResult(it, 77);   // 结果 extra "pkg"
            return;
        }
        if (v == amClearButton) {
            AudioMonitor.clearBlockTarget(this);
            Toast.makeText(this, "已清空拦截目标", Toast.LENGTH_SHORT).show();
            updateAmUi();
            return;
        }
    }

    /** 免 root 动作（code: 0=高性能锁 1=释放锁 2=重启亿连 3=打开亿连） */
    private void runNoRoot(final int code) {
        final Context ctx = this;
        Toast.makeText(this, "执行中…", Toast.LENGTH_SHORT).show();
        new Thread(new Runnable() {
            public void run() {
                String result;
                switch (code) {
                    case 0:
                        result = NoRootFixes.wifiHighPerf(ctx);
                        break;
                    case 1:
                        result = NoRootFixes.wifiLockRelease(ctx);
                        break;
                    case 2:
                        result = NoRootFixes.restartYilian(ctx);
                        break;
                    default:
                        result = NoRootFixes.openYilian(ctx);
                        break;
                }
                final String r = result;
                runOnUiThread(new Runnable() {
                    public void run() {
                        Toast.makeText(ctx, r.length() > 200 ? r.substring(0, 200) : r,
                                Toast.LENGTH_LONG).show();
                    }
                });
            }
        }).start();
    }

    // ---------------------------------------------------------------- 尺寸帮手

    private int dip(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }

    private LinearLayout.LayoutParams matchWrap() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private LinearLayout card(LinearLayout root, String title, String desc) {
        return card(root, title, desc, null);
    }

    private LinearLayout card(LinearLayout root, String title, String desc, View right) {
        LinearLayout box = new LinearLayout(this);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(dip(12), dip(10), dip(12), dip(12));

        LinearLayout head = new LinearLayout(this);
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        View bar = new View(this);
        bar.setBackgroundColor(ACCENT);
        LinearLayout.LayoutParams barLp = new LinearLayout.LayoutParams(
                dip(4), dip(16));
        barLp.rightMargin = dip(8);
        head.addView(bar, barLp);
        TextView t = new TextView(this);
        t.setText(title);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        t.setTextColor(Color.rgb(34, 34, 34));
        head.addView(t, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        if (right != null) {
            head.addView(right, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        }
        box.addView(head, matchWrap());

        if (desc != null && desc.length() > 0) {
            TextView d = new TextView(this);
            d.setText(desc);
            d.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
            d.setTextColor(Color.rgb(122, 130, 144));
            LinearLayout.LayoutParams dLp = matchWrap();
            dLp.topMargin = dip(5);
            box.addView(d, dLp);
        }

        GradientDrawable bg = new GradientDrawable();
        bg.setColor(Color.WHITE);
        bg.setCornerRadius(dip(10));
        bg.setStroke(dip(1), Color.rgb(227, 231, 237));
        box.setBackgroundDrawable(bg);

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
}
