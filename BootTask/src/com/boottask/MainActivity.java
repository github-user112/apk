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
 * v1.6.41 首页单页化（用户拍板的功能减法）：
 *  - 排查页（RTT/扫描/低速修复）删掉；v1.6.44 起 AudioMonitor / MuteGuard /
 *    RateWatcher 三个也全删（用户：车机声音不要动、低速蹲守也不要），
 *    只留 YilianWatcher 常开记录亿连进程出现/消失 + CPU/内存，要发日志用「下载日志」；
 *  - 更多页 / 工具模块 / Root 工具 / 已排除页 全删；
 *  - 保留：我的规则 + 重启亿连 + 下载日志 + 按键与弹窗入口。
 *    （重启车机需 root，本车无 su，v1.6.43 起按钮已删）
 *
 * v1.6.72 再砍一刀（用户：这些按钮不要了）：
 *  - 删「检测车机能否开热点」「WiFi 息屏关」「蓝牙：只在点火」「开机抢占音源」四个按钮；
 *  - 前三个的行为由一次性迁移关停（见 migrateLegacySwitchesOff），
 *    否则会出现「界面没开关、开机行为还在」的死角；
 *  - 「热点自启」默认开；关→点开时立刻调脚本开一次热点，不等下次上电。
 *
 * 布局：整页不滚动。左列=规则列表（吃满高度）；右列=按键入口 / 设备 / 系统。
 *
 * 编译期约束（不变）：stub android.jar 无 org.json；smali 类（RuleStore/Util/
 * EditActivity）对 javac 不可见 —— 规则存取走反射，组件拉起用 setClassName 字符串。
 */
public class MainActivity extends Activity implements View.OnClickListener,
        AdapterView.OnItemClickListener, DialogInterface.OnClickListener {

    /** 分区卡片标题左侧色条统一主色 */
    private static final int ACCENT = Color.rgb(47, 111, 237);

    private Object arr;          // org.json.JSONArray，反射触达
    private int pending;
    private ListView lv;
    private TextView countText;
    private Button addRuleButton;
    private Button keysButton;
    private Button rebootYlButton;
    private Button logButton;
    private TextView adbBanner;
    private LinearLayout cSysCard;   // 系统卡片（没权限时整卡隐藏）
    private Button pkgManageButton;
    private Button hotspotAutoButton;        // v1.6.71 热点开机自启总开关
    private TextView hotspotAutoStatusText;
    /** v1.6.72：点「开」后正在跑开机脚本，期间按钮禁用，防止连点起多个实例 */
    private boolean hotspotStarting;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("开机任务");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dip(12), dip(8), dip(12), dip(10));
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        // 头部一行
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
        sub.setText("规则 / 热点自启 / 按键 / 无线ADB / 禁用自启");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        sub.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams subLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        subLp.leftMargin = dip(10);
        headRow.addView(sub, subLp);
        headRow.addView(new View(this), new LinearLayout.LayoutParams(0, 1, 1f));
        TextView ver = new TextView(this);
        ver.setText(versionLabel());
        ver.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        ver.setTypeface(Typeface.DEFAULT_BOLD);
        ver.setTextColor(ACCENT);
        headRow.addView(ver, matchWrap());
        root.addView(headRow, matchWrap());

        // v1.6.56：无线 ADB 状态条（装上就自动开，不提供关闭；状态常显在最上面）
        adbBanner = new TextView(this);
        adbBanner.setText("无线 ADB：检测中…");
        adbBanner.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        adbBanner.setTypeface(Typeface.DEFAULT_BOLD);
        adbBanner.setTextColor(ACCENT);
        adbBanner.setBackgroundColor(Color.WHITE);
        adbBanner.setPadding(dip(10), dip(5), dip(10), dip(5));
        LinearLayout.LayoutParams banLp = matchWrap();
        banLp.topMargin = dip(4);
        root.addView(adbBanner, banLp);

        // 内容：横屏双列，整页不滚动
        LinearLayout cols = new LinearLayout(this);
        cols.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout.LayoutParams colsLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        colsLp.topMargin = dip(8);
        root.addView(cols, colsLp);

        // 左列：我的规则
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

        // 右列：声音 + 按键入口 + 设备 + 系统。矮屏（1024x600 / 1024x768）装不下时可滚动，
        // 避免「系统」卡片被挤到屏幕外（P1 实锤：1440x810 下系统标题只剩 2px）
        android.widget.ScrollView rightScroll = new android.widget.ScrollView(this);
        rightScroll.setFillViewport(true);
        rightScroll.setHorizontalScrollBarEnabled(false);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1.1f);
        rlp.leftMargin = dip(4);
        cols.addView(rightScroll, rlp);

        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.VERTICAL);
        rightScroll.addView(right, new android.widget.ScrollView.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        LinearLayout cKey = card(right, "按键与弹窗", null);
        keysButton = new Button(this);
        keysButton.setText("按键与弹窗设置");
        keysButton.setOnClickListener(this);
        addIn(cKey, keysButton);

        LinearLayout cDev = card(right, "设备", null);
        rebootYlButton = new Button(this);
        rebootYlButton.setText("重启亿连");
        rebootYlButton.setOnClickListener(this);
        addIn(cDev, rebootYlButton);

        logButton = new Button(this);
        logButton.setText("下载日志（亿连连接与系统运行信息，扫码取走）");
        logButton.setOnClickListener(this);
        addIn(cDev, logButton);

        // v1.6.56 系统分区：无线 ADB 自动开（见顶部状态条），下面是可选动作
        LinearLayout cSys = card(right, "系统", null);
        cSysCard = cSys;
        pkgManageButton = new Button(this);
        pkgManageButton.setText("禁用开机自启软件（勾选禁用/恢复）");
        pkgManageButton.setOnClickListener(this);
        addIn(cSys, pkgManageButton);
        // v1.6.71：热点开机自启总开关。只改本项目自己的 rules.xml 里的 enabled，
        // 不碰 APK、不碰 /data/local（App 没那个权限），也不需要 root。
        hotspotAutoButton = new Button(this);
        hotspotAutoButton.setOnClickListener(this);
        addIn(cSys, hotspotAutoButton);
        hotspotAutoStatusText = new TextView(this);
        hotspotAutoStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
        hotspotAutoStatusText.setTextColor(Color.rgb(110, 116, 128));
        hotspotAutoStatusText.setPadding(0, dip(4), 0, dip(2));
        addIn(cSys, hotspotAutoStatusText);

        setContentView(root);

        BootDiagnostics.log(this, "MainActivity opened");
        // ExecService 是 smali 类，javac 不可见 → setClassName 字符串形式
        startService(new Intent().setClassName(getPackageName(), getPackageName() + ".ExecService"));
        // 开机广播被 OEM 自启动管理静默禁用（BootReceiver 落 disabledComponents）时，
        // 用户打开 App 也能把亿连进程监视拉起来
        try {
            startService(new Intent(this, YilianWatcher.class));
        } catch (Throwable ignored) {
        }
        // v1.6.72：蓝牙闸门 / WiFi 息屏关 的入口按钮已删除 → 一次性关停。
        // 不关的话老机器 prefs 里还是 true，开机照样关 WiFi/蓝牙，App 里又没地方关。
        migrateLegacySwitchesOff();
        // v1.6.72：热点自启默认开 —— 首次运行且一条热点规则都没有时自动建一条（enabled=true）
        try {
            HotspotAuto.ensureDefaultOn(this);
        } catch (Throwable ignored) {
        }
        updateHotspotAutoUi();
    }

    /**
     * v1.6.72：一次性关掉已下线的开关。
     *
     * 对应按钮已从界面删除：蓝牙闸门（v1.6.63）、WiFi 息屏关（v1.6.64）、
     * 开机抢占音源（v1.6.38）。留着 prefs 不动会导致「界面没开关、开机行为还在」，
     * 用户既看不见也关不掉 —— 所以升级后第一次打开 App 就统一置 false。
     *
     * 只跑一次（migrate.v172_trim_off）。之后用户若用 shell 手动改回去，
     * 本方法不会再覆盖，属于知情操作。
     */
    private void migrateLegacySwitchesOff() {
        try {
            android.content.SharedPreferences sp = getSharedPreferences("migrate", 0);
            if (sp.getBoolean("v172_trim_off", false)) {
                return;
            }
            BtGate.setEnabled(this, false);
            WifiGate.setEnabled(this, false);
            MediaMute.setBootClaim(this, false, MediaMute.bootClaimSecs(this));
            try {
                stopService(new Intent(this, BtGateService.class));
            } catch (Throwable ignored) {
            }
            sp.edit().putBoolean("v172_trim_off", true).commit();
            BootDiagnostics.log(this,
                    "v1.6.72: btGate/wifiGate/bootClaim -> off (buttons removed)");
        } catch (Throwable t) {
            BootDiagnostics.log(this, "v1.6.72 migrate failed: " + t);
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        refresh();
        updateHotspotAutoUi();
        refreshSystemUi();
    }

    /** v1.6.71：热点自启按钮文案 + 状态行刷新（v1.6.72 增加「开启中」态） */
    private void updateHotspotAutoUi() {
        try {
            if (hotspotStarting) {
                hotspotAutoButton.setText("热点自启：开启中…（正在跑开机脚本）");
                hotspotAutoButton.setEnabled(false);
                hotspotAutoStatusText.setText(
                        "正在调脚本开热点：约 30~60 秒，期间 WiFi 会短暂断开");
                return;
            }
            hotspotAutoButton.setEnabled(true);
            hotspotAutoButton.setText(HotspotAuto.buttonText(this));
            hotspotAutoStatusText.setText(HotspotAuto.statusText(this));
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.62：无线 ADB 状态条 + 自动开（装上即自动开，不提供关闭）——
     *  普通安装没有 WRITE_SECURE_SETTINGS → 横幅整行隐藏，不显示误导性状态 */
    private void refreshSystemUi() {
        boolean adbPerm = SystemTools.hasSecureSettings(this);
        adbBanner.setVisibility(adbPerm ? android.view.View.VISIBLE : android.view.View.GONE);
        if (!adbPerm) {
            applySystemCardVisibility();
            return;
        }
        adbBanner.setText("无线 ADB：检测中…");
        // 首装/每次回到前台都尝试自动开 —— 需要后台线程，避免 binder 慢调用卡 UI
        new Thread(new Runnable() {
            public void run() {
                final String s = SystemTools.ensureWirelessAdbOn(MainActivity.this);
                runOnUiThread(new Runnable() {
                    public void run() {
                        try {
                            if (!SystemTools.hasSecureSettings(MainActivity.this)) {
                                return;     // 权限没了就保持隐藏
                            }
                            adbBanner.setText(s);
                            adbBanner.setTextColor(s.indexOf("已开") >= 0
                                    ? ACCENT : Color.rgb(176, 69, 40));
                        } catch (Throwable ignored) {
                        }
                    }
                });
            }
        }, "adb-ensure").start();
        applySystemCardVisibility();
    }

    /** 普通安装：无 CHANGE_COMPONENT_ENABLED_STATE → 只隐藏「禁用开机自启」按钮；
     *  热点自启开关只写本项目自己的 prefs，任何权限下都保留，系统卡片跟着留下。 */
    private void applySystemCardVisibility() {
        boolean canDisable = SystemTools.hasChangeEnabledState(this);
        pkgManageButton.setVisibility(canDisable
                ? android.view.View.VISIBLE : android.view.View.GONE);
        // v1.6.71：热点自启开关只写本项目自己的 prefs，任何权限下都应可见
        hotspotAutoButton.setVisibility(android.view.View.VISIBLE);
        cSysCard.setVisibility(android.view.View.VISIBLE);
    }

    private String versionLabel() {
        try {
            return "v" + getPackageManager()
                    .getPackageInfo(getPackageName(), 0).versionName;
        } catch (Throwable t) {
            return "v?";
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
        if (v == keysButton) {
            startActivity(new Intent(this, ToolboxActivity.class));
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
        if (v == logButton) {
            // 快照抓取（su 探测 + logcat 可达 30s）由 LogActivity.onCreate 的后台线程执行
            startActivity(new Intent(this, BootDiagnostics.LogActivity.class));
            return;
        }
        if (v == pkgManageButton) {
            if (!SystemTools.hasChangeEnabledState(this)) {
                Toast.makeText(this, "需要系统 App 权限（CHANGE_COMPONENT_ENABLED_STATE）",
                        Toast.LENGTH_LONG).show();
                return;
            }
            startActivity(new Intent(this, PackageEnableActivity.class));
            return;
        }
        if (v == hotspotAutoButton) {
            if (hotspotStarting) {
                return;     // 正在开，别让连点起第二个实例
            }
            if (HotspotAuto.isEnabled(this)) {
                // 关：规则置 false（下次开机跳过），当前热点不动；把 wifi_on 改回 1
                boolean ok = HotspotAuto.setEnabled(this, false);
                if (!ok) {
                    Toast.makeText(this, "操作失败，请查看日志", Toast.LENGTH_SHORT).show();
                } else {
                    HotspotAuto.restoreWifiOnAsync(this);
                    Toast.makeText(this,
                            "已关闭：下次开机不再自动开热点（当前热点不受影响）",
                            Toast.LENGTH_LONG).show();
                }
                updateHotspotAutoUi();
                refresh();   // 左列规则列表里的「已停用」标签要跟着变
                return;
            }
            // 开：规则置 true，并且**立刻**跑一次脚本（用户点了就想现在有热点）
            boolean ok = HotspotAuto.setEnabled(this, true);
            if (!ok) {
                Toast.makeText(this, "操作失败，请查看日志", Toast.LENGTH_SHORT).show();
                updateHotspotAutoUi();
                return;
            }
            hotspotStarting = true;
            updateHotspotAutoUi();
            refresh();
            Toast.makeText(this, "正在开热点…（约 30~60 秒，WiFi 会短暂断开）",
                    Toast.LENGTH_LONG).show();
            startHotspotNow();
            return;
        }
    }

    /**
     * v1.6.72：点「开」时立刻调脚本开热点。
     *
     * 必须后台线程：AdbBridge 的连接等待上限是 150 秒，主线程会 ANR。
     * 脚本本身还要 30~60 秒（卸 bcmdhd → 载 APSTA 固件 → startap → 配 IP + dnsmasq）。
     */
    private void startHotspotNow() {
        new Thread(new Runnable() {
            public void run() {
                final String msg = HotspotAuto.startNow(MainActivity.this);
                runOnUiThread(new Runnable() {
                    public void run() {
                        hotspotStarting = false;
                        updateHotspotAutoUi();
                        refresh();
                        Toast.makeText(MainActivity.this,
                                msg.length() > 120 ? msg.substring(0, 120) : msg,
                                Toast.LENGTH_LONG).show();
                    }
                });
            }
        }, "hotspot-start-now").start();
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

    /** 取日志文本最后 n 行（ToolboxActivity 状态区也在用） */
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

    // ---------------------------------------------------------------- 尺寸/布局帮手

    private int dip(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }

    private LinearLayout.LayoutParams matchWrap() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    /** 让卡片填满所在列（高度吃完剩余空间） */
    private void fillPanel(LinearLayout card) {
        LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) card.getLayoutParams();
        lp.height = 0;
        lp.weight = 1f;
        card.setLayoutParams(lp);
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
