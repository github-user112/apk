package com.boottask;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

/**
 * v1.6.34 首页瘦身：从 11 个卡片 30+ 按钮收敛为「当前排查主线 + 日志 + 三个二级页入口」。
 *
 * 依据车机日志（10-09/10-10 boottask-logs）：
 *  - 当前排查主线只剩问题1「WLAN 速率低」：测 RTT / 数扫描 / 扫描静默 / 低速一键修复；
 *  - 需要 root 的功能（关省电/亿连修复/系统修复）→ RootToolsActivity（本车实锤无 su，
 *    但不排除以后 root，功能保留）；
 *  - 已排除嫌疑（单射频双连=误报已撤销、车机当热点=hostapd 有壳无魂）
 *    → ExcludedActivity（缩小收纳，保留按钮备用）；
 *  - 日常使用类（我的规则/开机声音/免 root 工具/直连免打扰）→ ToolboxActivity。
 *
 * 编译期约束（不变）：stub android.jar 无 org.json；smali 类对 javac 不可见，
 * 规则存取在 ToolboxActivity 里走反射，本类不再触达 RuleStore。
 */
public class MainActivity extends Activity implements View.OnClickListener,
        AdapterView.OnItemClickListener, DialogInterface.OnClickListener {

    /** 分区卡片标题左侧色条统一主色 */
    private static final int ACCENT = Color.rgb(47, 111, 237);

    // ---- v1.6.39 常用页（规则/声音/设备，自 ToolboxActivity 迁入）----
    private Object arr;          // org.json.JSONArray，反射触达（RuleStore 是 smali 类）
    private int pending;
    private ListView lv;
    private TextView countText;
    private Button addRuleButton;
    private Button muteNowButton;
    private Button claimButton;
    private Button claimBootButton;
    private Button bootMuteButton;
    private Button bootMuteOffButton;
    private Button rebootYlButton;
    private Button rebootCarButton;

    private Button logButton;
    private Button toolsButton;
    private Button rootButton;
    private Button excludedButton;
    private Button wrProbeButton;
    private Button wrShortButton;
    private TextView wrStatusText;
    private Button scCountButton;
    private Button scSilenceButton;
    private Button scUndoButton;
    private TextView scStatusText;
    private Button lrfFixButton;
    private Button lrfUndoButton;
    private TextView lrfStatusText;
    /** v1.6.35 低速蹲守：常开自动记录尖峰/断链现场（修「出问题再点按钮已晚了」） */
    private Button rwToggleButton;
    private TextView rwStatusText;
    private TextView rootText;

    // ---- v1.6.39 页签容器（车机屏不滚动）----
    private static final String[] TAB_NAMES = {"常用", "排查", "更多"};
    private Button[] tabButtons;
    private LinearLayout[] panels;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("开机任务");

        // v1.6.39：页签化，整页不滚动（车机滚屏卡）。页签栏 + 两个预建面板。
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dip(12), dip(8), dip(12), dip(10));
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        LinearLayout headRow = new LinearLayout(this);
        headRow.setOrientation(LinearLayout.HORIZONTAL);
        headRow.setGravity(Gravity.CENTER_VERTICAL);
        TextView title = new TextView(this);
        title.setText("开机任务");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.rgb(34, 34, 34));
        headRow.addView(title, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView sub = new TextView(this);
        sub.setText("当前排查：WLAN 速率低（断联主线）");
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
        buildDailyPanel(panels[0]);
        buildProbePanel(panels[1]);
        buildMorePanel(panels[2]);
        switchTab(0);
        setContentView(root);

        BootDiagnostics.log(this, "MainActivity opened");
        // ExecService 是 smali 类，javac 不可见 → setClassName 字符串形式
        startService(new Intent().setClassName(getPackageName(), getPackageName() + ".ExecService"));
    }

    /** 切页签：只换可见性 + 页签配色 */
    private void switchTab(int i) {
        for (int k = 0; k < panels.length; k++) {
            panels[k].setVisibility(k == i ? View.VISIBLE : View.GONE);
            boolean sel = k == i;
            tabButtons[k].setBackgroundColor(sel ? ACCENT : Color.WHITE);
            tabButtons[k].setTextColor(sel ? Color.WHITE : Color.rgb(34, 34, 34));
        }
    }

    /** 让卡片填满页签面板 */
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

    // ---- 页签一：常用（规则 + 声音 + 设备重启，横屏双列不滚动）----
    private void buildDailyPanel(LinearLayout p) {
        LinearLayout cols = new LinearLayout(this);
        cols.setOrientation(LinearLayout.HORIZONTAL);
        p.addView(cols, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        // 左列：规则（列表吃满剩余高度）
        LinearLayout left = new LinearLayout(this);
        left.setOrientation(LinearLayout.VERTICAL);
        cols.addView(left, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 0.9f));

        countText = new TextView(this);
        countText.setText("");
        countText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        countText.setTextColor(Color.rgb(140, 140, 140));
        countText.setGravity(Gravity.RIGHT | Gravity.CENTER_VERTICAL);
        LinearLayout cRule = card(left, "我的规则", null, countText);
        fillPanel(cRule);

        addRuleButton = new Button(this);
        addRuleButton.setText("＋ 添加规则");
        addRuleButton.setOnClickListener(this);
        addIn(cRule, addRuleButton, dip(8));

        ListView lv2 = new ListView(this);
        lv2.setCacheColorHint(Color.TRANSPARENT);
        lv2.setDivider(new ColorDrawable(Color.rgb(224, 224, 224)));
        lv2.setDividerHeight(dip(1));
        LinearLayout.LayoutParams lvLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        lvLp.topMargin = dip(6);
        cRule.addView(lv2, lvLp);
        this.lv = lv2;

        // 右列：声音 + 设备重启
        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1.1f);
        rlp.leftMargin = dip(4);
        cols.addView(right, rlp);

        LinearLayout cMute = card(right, "声音", null);
        muteNowButton = new Button(this);
        muteNowButton.setText("立即静音");
        muteNowButton.setOnClickListener(this);
        claimButton = new Button(this);
        claimButton.setText("抢占音源：播 0.6 秒静音");
        claimButton.setOnClickListener(this);
        gridRow(cMute, muteNowButton, claimButton);

        // v1.6.38：开机自动播静音抢音源（时长可选），亿连连上后由亿连接管出声
        claimBootButton = new Button(this);
        claimBootButton.setOnClickListener(this);
        addIn(cMute, claimBootButton);

        bootMuteButton = new Button(this);
        bootMuteButton.setText("🔇 选开机自启的软件关掉");
        bootMuteButton.setOnClickListener(this);
        bootMuteOffButton = new Button(this);
        bootMuteOffButton.setText("取消开机静音");
        bootMuteOffButton.setOnClickListener(this);
        gridRow(cMute, bootMuteButton, bootMuteOffButton);

        LinearLayout cDev = card(right, "设备", null);
        rebootYlButton = new Button(this);
        rebootYlButton.setText("重启亿连");
        rebootYlButton.setOnClickListener(this);
        rebootCarButton = new Button(this);
        rebootCarButton.setText("重启车机（需 root）");
        rebootCarButton.setOnClickListener(this);
        gridRow(cDev, rebootYlButton, rebootCarButton);
    }

    // ---- 页签二：WLAN 速率低排查主线 ----
    private void buildProbePanel(LinearLayout p) {
        LinearLayout cMain = card(p, "WLAN 速率低排查（问题主线）",
                "闭环：测 RTT → 数扫描 → 扫描静默 → 复测；没降就点『低速一键修复』。"
                        + "蹲守常开，断链现场自动留档（日志页扫码取）。");
        fillPanel(cMain);

        wrProbeButton = new Button(this);
        wrProbeButton.setOnClickListener(this);

        wrShortButton = new Button(this);
        wrShortButton.setText("短测 30 秒（快速验证）");
        wrShortButton.setOnClickListener(this);
        gridRow(cMain, wrProbeButton, wrShortButton);

        scCountButton = new Button(this);
        scCountButton.setText("数扫描 60 秒（抓后台扫描）");
        scCountButton.setOnClickListener(this);

        scSilenceButton = new Button(this);
        scSilenceButton.setText("扫描静默（禁保存网络）");
        scSilenceButton.setOnClickListener(this);
        gridRow(cMain, scCountButton, scSilenceButton);

        scUndoButton = new Button(this);
        scUndoButton.setText("还原扫描设置");
        scUndoButton.setOnClickListener(this);

        lrfFixButton = new Button(this);
        lrfFixButton.setOnClickListener(this);
        gridRow(cMain, scUndoButton, lrfFixButton);

        lrfUndoButton = new Button(this);
        lrfUndoButton.setOnClickListener(this);

        // v1.6.35 低速蹲守：断链发生在一瞬间，事后点按钮抓不到 —— 常开自动记录
        rwToggleButton = new Button(this);
        rwToggleButton.setOnClickListener(this);
        gridRow(cMain, lrfUndoButton, rwToggleButton);

        wrStatusText = statusLine();
        addIn(cMain, wrStatusText, dip(8));
        rwStatusText = statusLine();
        addIn(cMain, rwStatusText);
        scStatusText = statusLine();
        addIn(cMain, scStatusText);
        lrfStatusText = statusLine();
        addIn(cMain, lrfStatusText);
    }

    // ---- 页签二：日志 / root 状态 / 二级页入口 ----
    private void buildMorePanel(LinearLayout p) {
        // root 状态条（本车无 su；以后 root 了 Root 页的功能才有用）
        rootText = new TextView(this);
        rootText.setText("root 状态：检测中…");
        rootText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        rootText.setTextColor(Color.rgb(90, 90, 90));
        rootText.setBackgroundColor(Color.rgb(232, 236, 240));
        rootText.setPadding(dip(8), dip(6), dip(8), dip(6));
        LinearLayout.LayoutParams rootLp = matchWrap();
        rootLp.topMargin = dip(10);
        p.addView(rootText, rootLp);

        LinearLayout cDiag = card(p, "诊断与日志",
                "打开下载页自动抓取快照：硬件 / 网络 / WiFi / 省电状态 / 亿连运行时 / logcat。");
        logButton = new Button(this);
        logButton.setText("下载日志（扫码用手机取走）");
        logButton.setOnClickListener(this);
        addIn(cDiag, logButton);

        LinearLayout cMore = card(p, "更多功能",
                "日常工具、需 root 的修复、已排除的排查方向都收在二级页。");
        toolsButton = new Button(this);
        toolsButton.setText("工具箱（监控 / 按键与弹窗 / 免 root 工具）");
        toolsButton.setOnClickListener(this);
        addIn(cMore, toolsButton);

        rootButton = new Button(this);
        rootButton.setText("Root 工具（关省电 / 亿连修复 / 系统修复，需 root）");
        rootButton.setOnClickListener(this);
        addIn(cMore, rootButton);

        excludedButton = new Button(this);
        excludedButton.setText("已排除的嫌疑（直连双连 / 车机热点，备用）");
        excludedButton.setOnClickListener(this);
        addIn(cMore, excludedButton);
    }

    @Override
    protected void onResume() {
        super.onResume();
        updateWrUi();
        updateScUi();
        updateLrfUi();
        updateRwUi();   // v1.6.35
        refresh();      // v1.6.39 常用页规则列表
        updateMuteUi(); // v1.6.38 开机抢占音源按钮文案
        // 每次回前台都重新探测 root —— 用户在 SuperSU 里授权后回来能自动变绿
        // （探测在后台线程，不卡 UI；节流在 probeRootAsync 里）
        probeRootAsync();
    }

    /** v1.6.38：开机抢占音源按钮文案随设置刷新 */
    private void updateMuteUi() {
        try {
            claimBootButton.setText(MediaMute.isBootClaimEnabled(this)
                    ? "开机抢占音源：已开（播 " + MediaMute.bootClaimSecs(this)
                      + " 秒静音）——点我改/关"
                    : "开机抢占音源：开机后播静音抢回声音（默认关，点我开）");
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.24：WLAN 速率低诊断状态 */
    private void updateWrUi() {
        try {
            boolean run = WifiRateProbe.isRunning();
            wrProbeButton.setEnabled(!run);
            wrShortButton.setEnabled(!run);
            if (run) {
                wrProbeButton.setText("正在测 RTT…（" + WifiRateProbe.duration(this) + " 秒）");
                wrStatusText.setText("状态：正在采样，测完自动显示结果。");
                return;
            }
            wrProbeButton.setText("开始测 RTT（" + WifiRateProbe.duration(this) + " 秒）");
            String verdict = WifiRateProbe.verdict();
            String log = WifiRateProbe.lastResult();
            if (log == null || log.length() == 0) {
                wrStatusText.setText("结论：" + (verdict.length() == 0 ? "未测过" : verdict)
                        + "\n（连上手机并投屏后点上面的按钮开始测）");
                return;
            }
            wrStatusText.setText("结论：" + verdict + "\n最近记录：\n" + tail(log, 6));
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.32：后台扫描抓现行 + 扫描静默状态 */
    private void updateScUi() {
        try {
            boolean run = ScanCatcher.isRunning();
            scCountButton.setEnabled(!run);
            scSilenceButton.setEnabled(!run);
            if (run) {
                scCountButton.setText("正在数扫描…（60 秒）");
                scStatusText.setText("状态：正在监听 SCAN_RESULTS 广播，60 秒后出结论…");
                return;
            }
            scCountButton.setText("数扫描 60 秒（抓后台扫描现行）");
            StringBuilder sb = new StringBuilder();
            String verdict = ScanCatcher.verdict();
            if (verdict.length() > 0) {
                sb.append("抓现行：").append(verdict);
            }
            String silence = ScanSilence.lastResult();
            if (silence.length() > 0 && !"（未执行）".equals(silence)) {
                if (sb.length() > 0) {
                    sb.append('\n');
                }
                sb.append(silence);
            }
            String log = ScanCatcher.lastResult();
            if (log != null && log.length() > 0) {
                if (sb.length() > 0) {
                    sb.append("\n--- 数扫描日志 ---\n");
                }
                sb.append(tail(log, 6));
            }
            if (sb.length() == 0) {
                sb.append("状态：还没数过。点『数扫描 60 秒』测背景扫描频率。");
            }
            scStatusText.setText(sb.toString());
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.35：低速蹲守状态（开关持久化 + 服务实时状态） */
    private void updateRwUi() {
        try {
            boolean on = RateWatcher.enabled(this);
            boolean run = RateWatcher.isRunning();
            rwToggleButton.setText(on
                    ? (run ? "低速蹲守：运行中（点此关闭）" : "低速蹲守：已开启（正在启动…）")
                    : "低速蹲守：已关闭（点此开启，推荐常开）");
            rwStatusText.setText("蹲守状态：" + RateWatcher.status()
                    + "\n（每 2s 自动 ping 对端；尖峰/弹窗/断链时刻自动留档，"
                    + "断链瞬间抓现场快照，事后扫码取日志即可回溯）");
            if (on && !run) {
                // 服务没跑（刚装上 / 被系统回收）就拉起；onStartCommand 幂等，重复 start 无害
                startService(new Intent(this, RateWatcher.class));
            }
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.25：低速断连一站式修复状态 */
    private void updateLrfUi() {
        try {
            lrfFixButton.setText("⚡ 低速一键修复（关蓝牙+清保存网络+高性能锁+开保护）");
            lrfUndoButton.setText("还原低速修复");
            lrfStatusText.setText("上次结果：\n" + tail(LowRateFix.lastResult(this), 4));
        } catch (Throwable ignored) {
        }
    }

    // ---------------------------------------------------------------- 事件

    @Override
    public void onClick(View v) {
        // v1.6.39：页签切换
        for (int k = 0; k < tabButtons.length; k++) {
            if (v == tabButtons[k]) {
                switchTab(k);
                return;
            }
        }
        // ---- 常用页：规则 / 声音 / 设备重启（v1.6.39 自 Toolbox 迁入）----
        if (v == addRuleButton) {
            // EditActivity 是 smali 类，javac 不可见 → setClassName 字符串形式
            startActivity(new Intent().setClassName(getPackageName(),
                    getPackageName() + ".EditActivity"));
            return;
        }
        if (v == muteNowButton) {
            MediaMute.muteAll(this);
            Toast.makeText(this, "已静音：铃声静 + 媒体流归零。去试 FM 还有没有声音",
                    Toast.LENGTH_LONG).show();
            return;
        }
        if (v == claimButton) {
            Toast.makeText(this, "抢占音源中…", Toast.LENGTH_SHORT).show();
            final Context c = this;
            new Thread(new Runnable() {
                public void run() {
                    final String r = MediaMute.claimAudioSource(c);
                    runOnUiThread(new Runnable() {
                        public void run() {
                            Toast.makeText(c, r, Toast.LENGTH_LONG).show();
                        }
                    });
                }
            }).start();
            return;
        }
        if (v == claimBootButton) {
            final int[] choices = {0, 15, 30, 60, 120, 180};
            String[] labels = new String[choices.length];
            labels[0] = "关闭开机抢占";
            for (int i = 1; i < choices.length; i++) {
                labels[i] = "开机后播静音 " + choices[i] + " 秒";
            }
            new AlertDialog.Builder(this)
                    .setTitle("开机抢占音源（把开机巨响的收音机/多媒体静音，等亿连接管）")
                    .setItems(labels, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface d, int w) {
                            if (w == 0) {
                                MediaMute.setBootClaim(MainActivity.this, false,
                                        MediaMute.bootClaimSecs(MainActivity.this));
                                Toast.makeText(MainActivity.this, "已关闭开机抢占",
                                        Toast.LENGTH_SHORT).show();
                            } else {
                                MediaMute.setBootClaim(MainActivity.this, true, choices[w]);
                                Toast.makeText(MainActivity.this,
                                        "已开启：开机后播 " + choices[w] + " 秒静音抢音源",
                                        Toast.LENGTH_LONG).show();
                            }
                            updateMuteUi();
                        }
                    })
                    .show();
            return;
        }
        if (v == bootMuteButton) {
            showBootKillPicker();
            return;
        }
        if (v == bootMuteOffButton) {
            boolean hadTgt = AudioMonitor.blockTarget(this) != null;
            int n = removeMuteRules();
            AudioMonitor.clearBlockTarget(this);
            boolean restored = MuteGuard.cancelIfMuted(this);   // v1.6.36：把已写下去的 0 音量一并恢复
            refresh();
            Toast.makeText(this,
                    (n > 0 || hadTgt)
                            ? ("已取消：开机静音规则 " + n + " 条"
                               + (hadTgt ? "，关软件拦截已清空" : ""))
                            : "当前没有静音规则，也没有关软件拦截",
                    Toast.LENGTH_LONG)
                    .show();
            if (restored) {
                Toast.makeText(this, "检测到静音残留，音量已恢复（看日志 MuteGuard restored）",
                        Toast.LENGTH_LONG).show();
            }
            return;
        }
        if (v == rebootYlButton) {
            Toast.makeText(this, "重启亿连中…", Toast.LENGTH_SHORT).show();
            new Thread(new Runnable() {
                public void run() {
                    final String r = NoRootFixes.restartYilian(MainActivity.this);
                    runOnUiThread(new Runnable() {
                        public void run() {
                            Toast.makeText(MainActivity.this,
                                    r.length() > 200 ? r.substring(0, 200) : r,
                                    Toast.LENGTH_LONG).show();
                        }
                    });
                }
            }).start();
            return;
        }
        if (v == rebootCarButton) {
            new AlertDialog.Builder(this)
                    .setTitle("重启车机")
                    .setMessage("需要 root（本车 10-09 日志实锤无 su，大概率失败，"
                            + "失败会如实提示）。确定重启？")
                    .setPositiveButton("重启", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface d, int w) {
                            new Thread(new Runnable() {
                                public void run() {
                                    NoRootFixes.rebootDevice(MainActivity.this);
                                    // 能走到这说明 su 不存在或 reboot 失败（成功时系统已重启）
                                    runOnUiThread(new Runnable() {
                                        public void run() {
                                            Toast.makeText(MainActivity.this,
                                                    "重启失败：本车无 root，请长按面板电源键",
                                                    Toast.LENGTH_LONG).show();
                                        }
                                    });
                                }
                            }).start();
                        }
                    })
                    .setNegativeButton("取消", null)
                    .show();
            return;
        }
        if (v == logButton) {
            // 快照抓取（su 探测 + logcat 可达 30s）由 LogActivity.onCreate 的后台线程执行，
            // 这里绝不直接调 capture()，避免主线程 ANR
            startActivity(new Intent(this, BootDiagnostics.LogActivity.class));
            return;
        }
        if (v == toolsButton) {
            startActivity(new Intent(this, ToolboxActivity.class));
            return;
        }
        if (v == rootButton) {
            startActivity(new Intent(this, RootToolsActivity.class));
            return;
        }
        if (v == excludedButton) {
            startActivity(new Intent(this, ExcludedActivity.class));
            return;
        }
        if (v == wrProbeButton || v == wrShortButton) {
            final int dur = (v == wrShortButton) ? 30 : 120;
            WifiRateProbe.setDuration(this, dur);
            Toast.makeText(this, "开始测 RTT，" + dur + " 秒后出结论", Toast.LENGTH_SHORT).show();
            try {
                startService(new Intent(this, WifiRateProbe.class));
            } catch (Throwable t) {
                Toast.makeText(this, "服务拉起失败：" + t, Toast.LENGTH_LONG).show();
                return;
            }
            updateWrUi();
            wrStatusText.postDelayed(new Runnable() {
                public void run() {
                    updateWrUi();
                }
            }, (dur + 20L) * 1000L);
            return;
        }
        if (v == rwToggleButton) {
            // v1.6.35：开关持久化；开=拉起服务，关=停服务。默认开（安装即守护）
            boolean on = !RateWatcher.enabled(this);
            RateWatcher.setEnabled(this, on);
            if (on) {
                startService(new Intent(this, RateWatcher.class));
                Toast.makeText(this, "低速蹲守已开启：行车中自动记录尖峰与断链现场",
                        Toast.LENGTH_LONG).show();
            } else {
                stopService(new Intent(this, RateWatcher.class));
                Toast.makeText(this, "低速蹲守已关闭（排查期建议保持开启）",
                        Toast.LENGTH_SHORT).show();
            }
            updateRwUi();
            rwStatusText.postDelayed(new Runnable() {
                public void run() {
                    updateRwUi();
                }
            }, 1200L);
            return;
        }
        if (v == scCountButton) {
            Toast.makeText(this, "开始数扫描，60 秒后出结论", Toast.LENGTH_SHORT).show();
            try {
                startService(new Intent(this, ScanCatcher.class));
            } catch (Throwable t) {
                Toast.makeText(this, "服务拉起失败：" + t, Toast.LENGTH_LONG).show();
                return;
            }
            updateScUi();
            scStatusText.postDelayed(new Runnable() {
                public void run() {
                    updateScUi();
                    if (ScanCatcher.isRunning()) {
                        scStatusText.postDelayed(this, 2000L);
                    }
                }
            }, 2000L);
            return;
        }
        if (v == scSilenceButton || v == scUndoButton) {
            final boolean isSilence = (v == scSilenceButton);
            Toast.makeText(this, isSilence ? "扫描静默执行中…" : "还原执行中…",
                    Toast.LENGTH_SHORT).show();
            new Thread(new Runnable() {
                public void run() {
                    final String r = isSilence
                            ? ScanSilence.silence(MainActivity.this)
                            : ScanSilence.undo(MainActivity.this);
                    runOnUiThread(new Runnable() {
                        public void run() {
                            Toast.makeText(MainActivity.this,
                                    r.length() > 200 ? r.substring(0, 200) + "…" : r,
                                    Toast.LENGTH_LONG).show();
                            updateScUi();
                        }
                    });
                }
            }).start();
            return;
        }
        if (v == lrfFixButton || v == lrfUndoButton) {
            final boolean isFix = (v == lrfFixButton);
            Toast.makeText(this, isFix ? "一键修复执行中…" : "还原执行中…",
                    Toast.LENGTH_SHORT).show();
            new Thread(new Runnable() {
                public void run() {
                    final String r = isFix ? LowRateFix.runFix(MainActivity.this)
                            : LowRateFix.undo(MainActivity.this);
                    runOnUiThread(new Runnable() {
                        public void run() {
                            Toast.makeText(MainActivity.this,
                                    r.length() > 200 ? r.substring(0, 200) : r,
                                    Toast.LENGTH_LONG).show();
                            updateLrfUi();
                        }
                    });
                }
            }).start();
            return;
        }
    }

    // ---------------------------------------------------------------- 规则区（v1.6.39 自 Toolbox 迁入）

    public void refresh() {
        arr = callStore("list", new Class[]{Context.class}, new Object[]{this});
        java.util.ArrayList<String> items = new java.util.ArrayList<String>();
        int count = arr == null ? 0 : intCall(arr, "length");
        for (int i = 0; i < count; i++) {
            try {
                items.add(describeAt(i));
            } catch (Throwable ignored) {
            }
        }
        if (count == 0) {
            items.add("尚无规则：请点击“添加规则”并保存");
        }
        countText.setText("共 " + count + " 条");
        // android.R.layout.simple_list_item_1 是白字布局，放在白卡片上等于隐形（v1.6.35 实锤）——
        // 覆写 getView 改深色。
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(
                this, android.R.layout.simple_list_item_1, items) {
            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                View v = super.getView(position, convertView, parent);
                if (v instanceof TextView) {
                    ((TextView) v).setTextColor(Color.rgb(34, 34, 34));
                    ((TextView) v).setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
                }
                return v;
            }
        };
        lv.setAdapter(adapter);
        lv.setOnItemClickListener(this);
    }

    @Override
    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
        if (arr == null || intCall(arr, "length") == 0) {
            return;
        }
        pending = position;
        String title;
        try {
            title = describeAt(position);
        } catch (Throwable ignored) {
            title = "规则";
        }
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setItems(new String[]{"删除", "启用/停用", "取消"}, this)
                .show();
    }

    // DialogInterface.OnClickListener —— 删除/启停/取消
    @Override
    public void onClick(DialogInterface dialog, int which) {
        boolean ok = true;
        if (which == 0) {
            ok = boolStore("remove", pending);
        } else if (which == 1) {
            ok = boolStore("toggle", pending);
        }
        if (!ok) {
            Toast.makeText(this, "操作失败，请查看日志", Toast.LENGTH_SHORT).show();
        }
        refresh();
    }

    /** v1.6.27 开机静音选择器：数据源 AudioMonitor.bootCandidates() */
    private void showBootKillPicker() {
        final java.util.LinkedHashMap<String, String> cands = AudioMonitor.bootCandidates(this);
        if (cands.isEmpty()) {
            Toast.makeText(this, "没拿到开机进程记录（日志为空且 ps 读取失败）——"
                    + "先跑一次开机并等 1 分钟，或去工具箱「监控」页看当前在跑的软件",
                    Toast.LENGTH_LONG).show();
            return;
        }
        final String[] pkgs = cands.keySet().toArray(new String[0]);
        final boolean[] checked = new boolean[pkgs.length];
        String[] cur = AudioMonitor.blockTargets(this);
        for (int i = 0; i < pkgs.length; i++) {
            for (int k = 0; k < cur.length; k++) {
                if (pkgs[i].equals(cur[k])) {
                    checked[i] = true;
                    break;
                }
            }
        }
        CharSequence[] labels = new CharSequence[pkgs.length];
        for (int i = 0; i < pkgs.length; i++) {
            labels[i] = cands.get(pkgs[i]);
        }
        new AlertDialog.Builder(this)
                .setTitle("开机会自动关掉勾选的软件（来源：开机日志 + 当前在跑）")
                .setMultiChoiceItems(labels, checked,
                        new DialogInterface.OnMultiChoiceClickListener() {
                            public void onClick(DialogInterface d, int which, boolean isChecked) {
                                checked[which] = isChecked;
                            }
                        })
                .setPositiveButton("保存并立即试杀", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int which) {
                        StringBuilder csv = new StringBuilder();
                        int n = 0;
                        for (int i = 0; i < pkgs.length; i++) {
                            if (checked[i]) {
                                if (csv.length() > 0) {
                                    csv.append(',');
                                }
                                csv.append(pkgs[i]);
                                n++;
                            }
                        }
                        AudioMonitor.setBlockTargets(MainActivity.this, csv.toString());
                        removeMuteRules();
                        boolean ok = addRule("boot", 15, "mute");   // 15 秒静音兜底
                        if (!AudioMonitor.isRunning()) {
                            startService(new Intent(MainActivity.this, AudioMonitor.class));
                        }
                        refresh();
                        if (n == 0) {
                            Toast.makeText(MainActivity.this,
                                    "未勾选软件，仅保留 15 秒开机静音兜底"
                                            + (ok ? "" : "（静音规则设置失败，请看日志）"),
                                    Toast.LENGTH_LONG).show();
                            return;
                        }
                        Toast.makeText(MainActivity.this,
                                "已保存 " + n + " 个拦截目标 + 15 秒静音兜底，立即试杀中…",
                                Toast.LENGTH_LONG).show();
                        new Thread(new Runnable() {
                            public void run() {
                                final String r = AudioMonitor.killNow(MainActivity.this);
                                runOnUiThread(new Runnable() {
                                    public void run() {
                                        Toast.makeText(MainActivity.this, r,
                                                Toast.LENGTH_LONG).show();
                                    }
                                });
                            }
                        }).start();
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    // ---------------------------------------------------------------- 反射帮手（RuleStore/Util 是 smali 类）

    private static Object callStore(String method, Class<?>[] sig, Object[] args) {
        try {
            return Class.forName("com.boottask.RuleStore")
                    .getMethod(method, sig).invoke(null, args);
        } catch (Throwable t) {
            return null;
        }
    }

    private boolean boolStore(String method, int index) {
        Object r = callStore(method, new Class[]{Context.class, int.class},
                new Object[]{this, Integer.valueOf(index)});
        return r instanceof Boolean && ((Boolean) r).booleanValue();
    }

    /** 程序化建规则（{enabled,event,delay,action}），省去手动填表 */
    private boolean addRule(String event, int delay, String action) {
        try {
            Class<?> jo = Class.forName("org.json.JSONObject");
            Object rule = jo.newInstance();
            java.lang.reflect.Method put = jo.getMethod("put", String.class, Object.class);
            put.invoke(rule, "enabled", Boolean.TRUE);
            put.invoke(rule, "event", event);
            put.invoke(rule, "delay", Integer.valueOf(delay));
            put.invoke(rule, "action", action);
            Object r = Class.forName("com.boottask.RuleStore")
                    .getMethod("add", Context.class, jo).invoke(null, this, rule);
            return r instanceof Boolean && ((Boolean) r).booleanValue();
        } catch (Throwable t) {
            BootDiagnostics.log(this, "addRule fail: " + t);
            return false;
        }
    }

    /** 移除所有 action=mute 的规则（倒序删，避免索引位移） */
    private int removeMuteRules() {
        Object a = callStore("list", new Class[]{Context.class}, new Object[]{this});
        if (a == null) {
            return 0;
        }
        int n = 0;
        try {
            java.lang.reflect.Method get = a.getClass().getMethod("getJSONObject", int.class);
            java.lang.reflect.Method opt = null;
            for (int i = intCall(a, "length") - 1; i >= 0; i--) {
                Object rule = get.invoke(a, Integer.valueOf(i));
                if (opt == null) {
                    opt = rule.getClass().getMethod("optString", String.class, String.class);
                }
                if ("mute".equals(opt.invoke(rule, "action", "")) && boolStore("remove", i)) {
                    n++;
                }
            }
        } catch (Throwable t) {
            BootDiagnostics.log(this, "removeMuteRules fail: " + t);
        }
        return n;
    }

    private static int intCall(Object obj, String method) {
        try {
            return ((Integer) obj.getClass().getMethod(method).invoke(obj)).intValue();
        } catch (Throwable t) {
            return 0;
        }
    }

    private String describeAt(int index) throws Exception {
        Object rule = arr.getClass()
                .getMethod("getJSONObject", int.class).invoke(arr, Integer.valueOf(index));
        return (String) Class.forName("com.boottask.Util")
                .getMethod("describe", Class.forName("org.json.JSONObject"))
                .invoke(null, rule);
    }

    /** 取日志文本最后 n 行（状态区显示用） */
    static String tail(String log, int n) {
        String[] lines = log.split("\n");
        StringBuilder sb = new StringBuilder();
        int from = Math.max(0, lines.length - n);
        for (int i = from; i < lines.length; i++) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append(lines[i]);
        }
        return sb.toString();
    }

    static TextView statusLine(Context c) {
        TextView tv = new TextView(c);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        tv.setTextColor(Color.rgb(90, 90, 90));
        tv.setMaxLines(5);   // v1.6.39：页签页不滚动，状态区限高防溢出
        return tv;
    }

    /** su 探测要几秒，放后台线程，结果只更新顶部状态条。
     *  节流：已确认 root 后不再探测；未确认时 60s 内只探测一次 ——
     *  避免每次回前台都触发 su 授权弹窗骚扰用户。 */
    private static boolean rootOk;
    private static long lastProbeAt;

    private void probeRootAsync() {
        long now = android.os.SystemClock.elapsedRealtime();
        if (rootOk || now - lastProbeAt < 60000L) {
            return;
        }
        lastProbeAt = now;
        new Thread(new Runnable() {
            public void run() {
                final String s = QuickRepair.rootStatus();
                if (s.indexOf("已 root") == 0) {
                    rootOk = true;
                }
                runOnUiThread(new Runnable() {
                    public void run() {
                        rootText.setText("root 状态：" + s);
                        rootText.setTextColor(s.indexOf("已 root") == 0
                                ? Color.rgb(20, 120, 60) : Color.rgb(150, 90, 20));
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

    private TextView statusLine() {
        return statusLine(this);
    }

    // ---------------------------------------------------- v1.6.26 分区卡片（各页共用样式）

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
}
