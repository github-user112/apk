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
import android.widget.LinearLayout;
import android.widget.ListView;
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
public class ToolboxActivity extends Activity implements View.OnClickListener,
        AdapterView.OnItemClickListener, DialogInterface.OnClickListener {

    private static final int ACCENT = Color.rgb(47, 111, 237);
    private Object arr;          // org.json.JSONArray，反射触达
    private int pending;
    private ListView lv;
    private TextView countText;

    private Button addRuleButton;
    private Button muteNowButton;
    private Button claimButton;
    private Button bootMuteButton;
    private Button bootMuteOffButton;
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
    private TextView p2pAaText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("工具箱");

        int pad = dip(16);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(pad, pad, pad, pad);
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        TextView title = new TextView(this);
        title.setText("工具箱");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 22);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.rgb(34, 34, 34));
        root.addView(title, matchWrap());

        TextView sub = new TextView(this);
        sub.setText("日常工具：规则 / 开机声音 / 免 root 手段 / 直连免打扰");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        sub.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams subLp = matchWrap();
        subLp.topMargin = dip(4);
        root.addView(sub, subLp);

        // ---- 分区一：我的规则 ----
        countText = new TextView(this);
        countText.setText("");
        countText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        countText.setTextColor(Color.rgb(140, 140, 140));
        countText.setGravity(Gravity.RIGHT | Gravity.CENTER_VERTICAL);
        LinearLayout cRule = card(root, "我的规则",
                "开机 / 亮屏 / 解锁事件 → 自动执行动作；点规则可删除或停用", countText);

        addRuleButton = new Button(this);
        addRuleButton.setText("＋ 添加规则");
        addRuleButton.setOnClickListener(this);
        addIn(cRule, addRuleButton, dip(8));

        ListView lv2 = new ListView(this);
        lv2.setCacheColorHint(Color.TRANSPARENT);
        lv2.setDivider(new ColorDrawable(Color.rgb(224, 224, 224)));
        lv2.setDividerHeight(dip(1));
        LinearLayout.LayoutParams lvLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dip(150));
        lvLp.topMargin = dip(6);
        cRule.addView(lv2, lvLp);
        this.lv = lv2;

        // ---- 分区二：开机静音（v1.6.27 直接关日志里开机自启的软件）----
        LinearLayout cMute = card(root, "开机静音",
                "FM 走 MCU 直连功放时静音管不到 → 直接把日志里开机自启的收音/多媒体软件关掉："
                        + "root 用 force-stop（前台也能杀，且下次开机不再自启），"
                        + "再叠 15 秒静音兜底，双保险。");

        muteNowButton = new Button(this);
        muteNowButton.setText("立即静音（马上验证能不能管住 FM）");
        muteNowButton.setOnClickListener(this);
        addIn(cMute, muteNowButton);

        claimButton = new Button(this);
        claimButton.setText("抢占音源：播 0.6 秒静音（FM 不受静音控制时用）");
        claimButton.setOnClickListener(this);
        addIn(cMute, claimButton);

        bootMuteButton = new Button(this);
        bootMuteButton.setText("🔇 开机静音：选日志里开机自启的软件直接关掉（可多选）");
        bootMuteButton.setOnClickListener(this);
        addIn(cMute, bootMuteButton);

        bootMuteOffButton = new Button(this);
        bootMuteOffButton.setText("取消开机静音（含关软件拦截）");
        bootMuteOffButton.setOnClickListener(this);
        addIn(cMute, bootMuteOffButton);

        // ---- 分区三：启动与声音监控（v1.6.21 抓自启收音机时间线）----
        LinearLayout cAm = card(root, "启动与声音监控（抓自启收音机）",
                "监控开机后每个新启动的进程 + 音频焦点/音量变化（谁在抢声音），"
                        + "落日志 /sdcard/boottask/audio_monitor.log。设拦截目标后目标进程一冒头就杀"
                        + "（免 root 只能杀非前台进程；若杀不掉会用静音兜底）。开机自动开始监控。");

        amToggleButton = new Button(this);
        amToggleButton.setOnClickListener(this);
        addIn(cAm, amToggleButton);

        amPickButton = new Button(this);
        amPickButton.setText("选择拦截目标（选多媒体/收音机）");
        amPickButton.setOnClickListener(this);
        addIn(cAm, amPickButton);

        amClearButton = new Button(this);
        amClearButton.setText("清空拦截目标");
        amClearButton.setOnClickListener(this);
        addIn(cAm, amClearButton);

        amStatusText = new TextView(this);
        amStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        amStatusText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cAm, amStatusText);

        // ---- 分区四：免 root 工具 ----
        LinearLayout cNr = card(root, "免 root 工具",
                "不提权、不改系统文件；写 /etc/ec.conf 那类必须 root 的活在「Root 工具」页。");

        noRootWifiButton = new Button(this);
        noRootWifiButton.setText("高性能 WiFi 锁（免 root 版关省电）");
        noRootWifiButton.setOnClickListener(this);
        addIn(cNr, noRootWifiButton);

        noRootYilianButton = new Button(this);
        noRootYilianButton.setText("重启亿连 / 打开亿连设置（免 root）");
        noRootYilianButton.setOnClickListener(this);
        addIn(cNr, noRootYilianButton);

        noRootSettingsButton = new Button(this);
        noRootSettingsButton.setText("打开系统设置（蓝牙/WiFi/显示/开发者选项）");
        noRootSettingsButton.setOnClickListener(this);
        addIn(cNr, noRootSettingsButton);

        // ---- 分区五：直连免打扰（v1.6.30 无障碍自动点配对弹窗）----
        LinearLayout cAa = card(root, "直连免打扰（自动点掉配对弹窗）",
                "每次直连，手机申请加入车机组时系统会弹「是否允许连接」——"
                        + "开启后本 App 用无障碍服务自动点掉它（等同手点「允许」），"
                        + "不点别处任何按钮。⚠ 必须先在系统里启用本服务，见下面两个按钮。");

        p2pAaOnButton = new Button(this);
        p2pAaOnButton.setText("开启：自动点掉 P2P 配对弹窗");
        p2pAaOnButton.setOnClickListener(this);
        addIn(cAa, p2pAaOnButton);

        p2pAaOffButton = new Button(this);
        p2pAaOffButton.setText("关闭（恢复手动点允许）");
        p2pAaOffButton.setOnClickListener(this);
        addIn(cAa, p2pAaOffButton);

        p2pAaSettingsButton = new Button(this);
        p2pAaSettingsButton.setText("① 去系统设置里启用无障碍服务（必需）");
        p2pAaSettingsButton.setOnClickListener(this);
        addIn(cAa, p2pAaSettingsButton, dip(10));

        p2pAaTestButton = new Button(this);
        p2pAaTestButton.setText("② 立刻测试一次（弹窗在时点此按钮验证）");
        p2pAaTestButton.setOnClickListener(this);
        addIn(cAa, p2pAaTestButton);

        p2pAaText = new TextView(this);
        p2pAaText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        p2pAaText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cAa, p2pAaText);

        android.widget.ScrollView scroller = new android.widget.ScrollView(this);
        scroller.setFillViewport(true);
        scroller.addView(root);
        setContentView(scroller);

        BootDiagnostics.log(this, "ToolboxActivity opened");
    }

    @Override
    protected void onResume() {
        super.onResume();
        refresh();
        updateAmUi();
        updateAaUi();
    }

    // ---------------------------------------------------------------- 规则区

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
        // v1.6.35：android.R.layout.simple_list_item_1 是**白字**布局（为深色列表设计），
        // 放在白卡片上等于隐形 —— 用户实锤「颜色太浅看不清楚」。改 ArrayAdapter 覆写
        // getView 把字改成深色（背景保持列表默认透明，露出卡片白底）。
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

    /** v1.6.29 直连免打扰分区状态 */
    private void updateAaUi() {
        try {
            p2pAaOnButton.setEnabled(!P2pAutoAccept.isEnabled(this));
            p2pAaOffButton.setEnabled(P2pAutoAccept.isEnabled(this));
            p2pAaText.setText(P2pAutoAccept.statusText(this));
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.27 开机静音选择器：数据源 AudioMonitor.bootCandidates() */
    private void showBootKillPicker() {
        final java.util.LinkedHashMap<String, String> cands = AudioMonitor.bootCandidates(this);
        if (cands.isEmpty()) {
            Toast.makeText(this, "没拿到开机进程记录（日志为空且 ps 读取失败）——"
                    + "先跑一次开机并等 1 分钟，或用「启动与声音监控」分区的单选按钮",
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
                        AudioMonitor.setBlockTargets(ToolboxActivity.this, csv.toString());
                        removeMuteRules();
                        boolean ok = addRule("boot", 15, "mute");   // 15 秒静音兜底
                        if (!AudioMonitor.isRunning()) {
                            startService(new Intent(ToolboxActivity.this, AudioMonitor.class));
                        }
                        refresh();
                        updateAmUi();
                        if (n == 0) {
                            Toast.makeText(ToolboxActivity.this,
                                    "未勾选软件，仅保留 15 秒开机静音兜底"
                                            + (ok ? "" : "（静音规则设置失败，请看日志）"),
                                    Toast.LENGTH_LONG).show();
                            return;
                        }
                        Toast.makeText(ToolboxActivity.this,
                                "已保存 " + n + " 个拦截目标 + 15 秒静音兜底，立即试杀中…",
                                Toast.LENGTH_LONG).show();
                        new Thread(new Runnable() {
                            public void run() {
                                final String r = AudioMonitor.killNow(ToolboxActivity.this);
                                runOnUiThread(new Runnable() {
                                    public void run() {
                                        Toast.makeText(ToolboxActivity.this, r,
                                                Toast.LENGTH_LONG).show();
                                        updateAmUi();
                                    }
                                });
                            }
                        }).start();
                    }
                })
                .setNegativeButton("取消", null)
                .show();
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
            // FM 走 MCU/收音芯片直连功放时，Android 侧静音管不到它；
            // MCU 音源仲裁多按「后来者抢占」——播一段听不见的静音把音源抢回 Android
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
        if (v == bootMuteButton) {
            showBootKillPicker();
            return;
        }
        if (v == bootMuteOffButton) {
            boolean hadTgt = AudioMonitor.blockTarget(this) != null;
            int n = removeMuteRules();
            AudioMonitor.clearBlockTarget(this);
            refresh();
            updateAmUi();
            Toast.makeText(this,
                    (n > 0 || hadTgt)
                            ? ("已取消：开机静音规则 " + n + " 条"
                               + (hadTgt ? "，关软件拦截已清空" : ""))
                            : "当前没有静音规则，也没有关软件拦截",
                    Toast.LENGTH_LONG).show();
            return;
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

    // ---------------------------------------------------------------- 反射帮手

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

    /** v1.6.10：程序化建规则（{enabled,event,delay,action}），省去手动填表 */
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

    /** v1.6.10：移除所有 action=mute 的规则（倒序删，避免索引位移） */
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
