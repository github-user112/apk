package com.boottask;

import android.app.Activity;
import android.content.Context;
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
public class MainActivity extends Activity implements View.OnClickListener {

    /** 分区卡片标题左侧色条统一主色 */
    private static final int ACCENT = Color.rgb(47, 111, 237);
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

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("开机任务");

        int pad = dip(16);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(pad, pad, pad, pad);
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        // ---- 头部 ----
        TextView title = new TextView(this);
        title.setText("开机任务");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 22);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.rgb(34, 34, 34));
        root.addView(title, matchWrap());

        TextView sub = new TextView(this);
        sub.setText("当前排查：WLAN 速率低（断联主线）");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        sub.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams subLp = matchWrap();
        subLp.topMargin = dip(4);
        root.addView(sub, subLp);

        // ---- root 状态条（本车无 su；以后 root 了 Root 页的功能才有用）----
        rootText = new TextView(this);
        rootText.setText("root 状态：检测中…");
        rootText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        rootText.setTextColor(Color.rgb(90, 90, 90));
        rootText.setBackgroundColor(Color.rgb(232, 236, 240));
        rootText.setPadding(dip(8), dip(6), dip(8), dip(6));
        LinearLayout.LayoutParams rootLp = matchWrap();
        rootLp.topMargin = dip(8);
        root.addView(rootText, rootLp);

        // ---- 分区一：WLAN 速率低排查主线（问题1，当前唯一在追的链路问题）----
        LinearLayout cMain = card(root, "WLAN 速率低排查（问题主线）",
                "亿连判定=每 2s ping 对端，RTT>200ms 连 3 次弹「速率低」（测时延非带宽）。\n"
                        + "闭环用法：①测 RTT 定基线 → ②数扫描看背景扫描频率 → "
                        + "③扫描静默 → ④复测：尖峰大降=扫描定罪；没降=点『低速一键修复』再投屏 15 分钟。"
                        + "日志已随 boottask-logs.zip 打包（18081 扫码下载）。");

        wrProbeButton = new Button(this);
        wrProbeButton.setText("开始测 RTT（120 秒）");
        wrProbeButton.setOnClickListener(this);
        addIn(cMain, wrProbeButton);

        wrShortButton = new Button(this);
        wrShortButton.setText("短测 30 秒（快速验证）");
        wrShortButton.setOnClickListener(this);
        addIn(cMain, wrShortButton);

        scCountButton = new Button(this);
        scCountButton.setText("数扫描 60 秒（抓后台扫描现行）");
        scCountButton.setOnClickListener(this);
        addIn(cMain, scCountButton);

        scSilenceButton = new Button(this);
        scSilenceButton.setText("扫描静默（禁保存网络 + 尽力关扫描开关）");
        scSilenceButton.setOnClickListener(this);
        addIn(cMain, scSilenceButton);

        scUndoButton = new Button(this);
        scUndoButton.setText("还原扫描设置");
        scUndoButton.setOnClickListener(this);
        addIn(cMain, scUndoButton);

        lrfFixButton = new Button(this);
        lrfFixButton.setOnClickListener(this);
        addIn(cMain, lrfFixButton);

        lrfUndoButton = new Button(this);
        lrfUndoButton.setOnClickListener(this);
        addIn(cMain, lrfUndoButton);

        // v1.6.35 低速蹲守：断链/尖峰发生在一瞬间，事后点按钮抓不到现场 —— 改为常开自动记录
        rwToggleButton = new Button(this);
        rwToggleButton.setOnClickListener(this);
        addIn(cMain, rwToggleButton);

        wrStatusText = statusLine();
        addIn(cMain, wrStatusText, dip(8));
        rwStatusText = statusLine();
        addIn(cMain, rwStatusText);
        scStatusText = statusLine();
        addIn(cMain, scStatusText);
        lrfStatusText = statusLine();
        addIn(cMain, lrfStatusText);

        // ---- 分区二：诊断与日志 ----
        LinearLayout cDiag = card(root, "诊断与日志",
                "打开下载页自动抓取快照：硬件 / 网络 / WiFi / 省电状态 / 亿连运行时 / logcat。");

        logButton = new Button(this);
        logButton.setText("下载日志（扫码用手机取走）");
        logButton.setOnClickListener(this);
        addIn(cDiag, logButton);

        // ---- 分区三：更多功能（二级页入口）----
        LinearLayout cMore = card(root, "更多功能",
                "日常工具、需 root 的修复、已排除的排查方向都收在二级页，首页只留当前在查的。");

        toolsButton = new Button(this);
        toolsButton.setText("工具箱（规则 / 开机声音 / 免 root 工具 / 直连免打扰）");
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

        android.widget.ScrollView scroller = new android.widget.ScrollView(this);
        scroller.setFillViewport(true);
        scroller.addView(root);
        setContentView(scroller);

        BootDiagnostics.log(this, "MainActivity opened");
        // ExecService 是 smali 类，javac 不可见 → setClassName 字符串形式
        startService(new Intent().setClassName(getPackageName(), getPackageName() + ".ExecService"));
    }

    @Override
    protected void onResume() {
        super.onResume();
        updateWrUi();
        updateScUi();
        updateLrfUi();
        updateRwUi();   // v1.6.35
        // 每次回前台都重新探测 root —— 用户在 SuperSU 里授权后回来能自动变绿
        // （探测在后台线程，不卡 UI；节流在 probeRootAsync 里）
        probeRootAsync();
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
