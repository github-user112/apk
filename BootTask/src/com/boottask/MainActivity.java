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
 * v1.6：主界面从手写 smali 改为 Java（走 build_win.sh 的 D8 合并通道，避开 Dalvik VerifyError 老坑）。
 * UI 分层：头部（标题+副标题）→「我的规则」分区（计数+添加按钮+列表）→「诊断与日志」分区（下载日志+说明）。
 *
 * 编译期约束（两条铁律）：
 * 1) 构建用 stub android.jar 无 org.json —— 不 import 任何 org.json 类；
 * 2) smali 类（RuleStore/Util/ExecService/EditActivity）对 javac 不可见 ——
 *    RuleStore/Util 走反射（运行时同 dex 必然存在），组件拉起一律 setClassName 字符串形式。
 * 规则存取/描述逻辑仍由 smali 版单一实现，本类不复制逻辑、不产生漂移。
 */
public class MainActivity extends Activity implements View.OnClickListener,
        AdapterView.OnItemClickListener, DialogInterface.OnClickListener {

    /** 运行时是 org.json.JSONArray；编译期不可见，只经反射触达 */
    private Object arr;
    private int pending;

    /** v1.6.26 UI 重构：所有分区卡片标题左侧色条统一用这个主色 */
    private static final int ACCENT = Color.rgb(47, 111, 237);
    private Button logButton;
    private Button fixPsButton;
    private Button fixYilianButton;
    private Button fixSysButton;
    private Button muteNowButton;
    private Button claimButton;
    private Button bootMuteButton;
    private Button bootMuteOffButton;
    private Button noRootWifiButton;
    private Button noRootYilianButton;
    private Button noRootSettingsButton;
    private Button adbSheetButton;
    private Button recvButton;
    private Button fileShareButton;
    private Button fileMgrButton;
    private Button guardToggleButton;
    private Button guardNowButton;
    private Button guardRestoreButton;
    private TextView guardStatusText;
    private Button hsToggleButton;
    private Button hsApButton;
    private TextView hsStatusText;
    private Button wrProbeButton;
    private Button wrShortButton;
    private TextView wrStatusText;
    private Button lrfFixButton;
    private Button lrfUndoButton;
    private TextView lrfStatusText;
    private Button amToggleButton;
    private Button amPickButton;
    private Button amClearButton;
    private TextView amStatusText;
    private TextView countText;
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

        // ---- 头部：应用名 + 一句话说明 ----
        TextView title = new TextView(this);
        title.setText("开机任务");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 22);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.rgb(34, 34, 34));
        root.addView(title, matchWrap());

        TextView sub = new TextView(this);
        sub.setText("开机 / 亮屏 / 解锁事件 → 自动执行动作");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        sub.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams subLp = matchWrap();
        subLp.topMargin = dip(4);
        root.addView(sub, subLp);

        // ---- v1.6.13：root 状态条（决定下面哪些按钮能用，避免盲按被拒）----
        rootText = new TextView(this);
        rootText.setText("root 状态：检测中…");
        rootText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        rootText.setTextColor(Color.rgb(90, 90, 90));
        rootText.setBackgroundColor(Color.rgb(232, 236, 240));
        rootText.setPadding(dip(8), dip(6), dip(8), dip(6));
        LinearLayout.LayoutParams rootLp = matchWrap();
        rootLp.topMargin = dip(8);
        root.addView(rootText, rootLp);

        // ---- 分区一：我的规则 ----
        countText = new TextView(this);
        countText.setText("");
        countText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        countText.setTextColor(Color.rgb(140, 140, 140));
        countText.setGravity(Gravity.RIGHT | Gravity.CENTER_VERTICAL);
        LinearLayout cRule = card(root, "我的规则",
                "开机 / 亮屏 / 解锁事件 → 自动执行动作；点规则可删除或停用", countText);

        Button addBtn = new Button(this);
        addBtn.setText("＋ 添加规则");
        addBtn.setOnClickListener(this);
        addIn(cRule, addBtn, dip(8));

        ListView lv = new ListView(this);
        lv.setCacheColorHint(Color.TRANSPARENT);
        lv.setDivider(new ColorDrawable(Color.rgb(224, 224, 224)));
        lv.setDividerHeight(dip(1));
        // 列表给固定高度（整页是 ScrollView，weight+ScrollView 会互相抢高度）
        LinearLayout.LayoutParams lvLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dip(150));
        lvLp.topMargin = dip(6);
        cRule.addView(lv, lvLp);
        this.lv = lv;

        // ---- 分区二：开机静音（v1.6.10 一键 → v1.6.27 直接关软件）----
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

        // ---- 分区三：免 root 也能做（v1.6.13）----
        LinearLayout cNr = card(root, "免 root 工具",
                "不提权、不改系统文件；写 /etc/ec.conf 那类必须 root 的活，"
                        + "看最后一个按钮里的 adb 命令清单。");

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

        adbSheetButton = new Button(this);
        adbSheetButton.setText("root 命令清单（电脑上 adb 执行，效果同上）");
        adbSheetButton.setOnClickListener(this);
        addIn(cNr, adbSheetButton);

        // ---- 分区四：文件管理（v1.6.15：手机遥控 + 车机本地）----
        LinearLayout cFile = card(root, "文件管理",
                "推荐第一条：车机只显示二维码，浏览/上传/下载/改名/删除/装 APK"
                        + "全在手机浏览器里做（车机输入法太难受）。root 模式下能改 /system、/etc。");

        fileShareButton = new Button(this);
        fileShareButton.setText("📱 手机遥控车机文件（推荐·扫码）");
        fileShareButton.setOnClickListener(this);
        addIn(cFile, fileShareButton);

        fileMgrButton = new Button(this);
        fileMgrButton.setText("车机本地文件管理器");
        fileMgrButton.setOnClickListener(this);
        addIn(cFile, fileMgrButton);

        recvButton = new Button(this);
        recvButton.setText("接收 APK 并安装（手机扫码上传）");
        recvButton.setOnClickListener(this);
        addIn(cFile, recvButton);

        // ---- 分区四点五：直连保护（v1.6.17）----
        LinearLayout cGuard = card(root, "直连保护（防热点双连断联）",
                "原理：直连组活跃时若 wlan0 连上热点（单射频双连 → 速率低 → 断联），"
                        + "自动断开并禁用该热点（配置保留）。用热点模式前先点恢复。免 root。");

        guardToggleButton = new Button(this);
        guardToggleButton.setOnClickListener(this);
        addIn(cGuard, guardToggleButton);

        guardNowButton = new Button(this);
        guardNowButton.setText("立即检查并断开热点（单次）");
        guardNowButton.setOnClickListener(this);
        addIn(cGuard, guardNowButton);

        guardRestoreButton = new Button(this);
        guardRestoreButton.setText("恢复热点自动连接（热点模式前用）");
        guardRestoreButton.setOnClickListener(this);
        addIn(cGuard, guardRestoreButton);

        guardStatusText = new TextView(this);
        guardStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        guardStatusText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cGuard, guardStatusText);

        // ---- 分区四点七：热点探测蹲守（v1.6.20）+ 一键攻坚（v1.6.26）----
        LinearLayout cHs = card(root, "热点探测与一键攻坚",
                "点「一键攻坚」自动走完 反射开热点→hostapd→DHCP 全套判定，"
                        + "结论直接弹窗+落日志；想抓变化过程就先开蹲守再去设置里手动开热点。"
                        + "日志已随 boottask-logs.zip 打包（18081 扫码下载），全程不需要 adb。");

        hsToggleButton = new Button(this);
        hsToggleButton.setOnClickListener(this);
        addIn(cHs, hsToggleButton);

        hsApButton = new Button(this);
        hsApButton.setText("一键攻坚：自动开热点（反射→root hostapd→结论落日志）");
        hsApButton.setOnClickListener(this);
        addIn(cHs, hsApButton);

        hsStatusText = new TextView(this);
        hsStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        hsStatusText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cHs, hsStatusText);

        // ---- 分区四点九：WLAN 速率低诊断（v1.6.24）----
        LinearLayout cWr = card(root, "WLAN 速率低诊断（复刻亿连判定）",
                "亿连弹「WiFi传输速率低」的真实条件：每 2 秒 ping 一次对端，"
                        + "单次往返 >200ms 记一次，连续 3 次（约 6 秒）就弹 —— 测的是延迟不是带宽。\n"
                        + "★用法：投屏正常时点开始，然后正常使用导航；测完直接告诉你"
                        + "「够不够触发弹窗」。");

        wrProbeButton = new Button(this);
        wrProbeButton.setText("开始测 RTT（120 秒）");
        wrProbeButton.setOnClickListener(this);
        addIn(cWr, wrProbeButton);

        wrShortButton = new Button(this);
        wrShortButton.setText("短测 30 秒（快速验证）");
        wrShortButton.setOnClickListener(this);
        addIn(cWr, wrShortButton);

        wrStatusText = new TextView(this);
        wrStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        wrStatusText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cWr, wrStatusText);

        // ---- 分区四点九五：低速断连一站式修复（v1.6.25）----
        LinearLayout cLrf = card(root, "低速断连一站式修复（免 root）",
                "一键做完全部免 root 缓解：①关蓝牙（防 2.4G 争抢）②禁用已保存 WiFi 网络"
                        + "（掐断后台扫描重连——头号嫌疑）③高性能 WiFi 锁 ④开直连保护（防热点双连）。"
                        + "做完直接投屏 15 分钟：不弹「速率低」= 根因已消；还弹 = GO 负担，转手机热点模式。"
                        + "「还原」恢复蓝牙与被禁用的网络。");

        lrfFixButton = new Button(this);
        lrfFixButton.setOnClickListener(this);
        addIn(cLrf, lrfFixButton);

        lrfUndoButton = new Button(this);
        lrfUndoButton.setOnClickListener(this);
        addIn(cLrf, lrfUndoButton);

        lrfStatusText = new TextView(this);
        lrfStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        lrfStatusText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cLrf, lrfStatusText);

        // ---- 分区四点八：启动与声音监控（v1.6.21）----
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

        // ---- 分区五：诊断与日志 ----
        LinearLayout cDiag = card(root, "诊断与日志（含一键修复）",
                "打开下载页自动抓取快照：硬件 / 网络 / WiFi / 亿连运行时 / logcat。"
                        + "修复菜单一次只改一组变量，测 15 分钟再下一项。");

        logButton = new Button(this);
        logButton.setText("下载日志（扫码用手机取走）");
        logButton.setOnClickListener(this);
        addIn(cDiag, logButton);

        // ---- v1.6.6 一键修复 ----
        fixPsButton = new Button(this);
        fixPsButton.setText("一键修复：关 WiFi 省电（需 root）");
        fixPsButton.setOnClickListener(this);
        addIn(cDiag, fixPsButton);

        fixYilianButton = new Button(this);
        fixYilianButton.setText("亿连修复菜单（降码率/对屏/软解/还原，需 root）");
        fixYilianButton.setOnClickListener(this);
        addIn(cDiag, fixYilianButton);

        fixSysButton = new Button(this);
        fixSysButton.setText("系统修复菜单（CPU降频/蓝牙抢频/WiFi扫描，需 root）");
        fixSysButton.setOnClickListener(this);
        addIn(cDiag, fixSysButton);

        android.widget.ScrollView scroller = new android.widget.ScrollView(this);
        scroller.setFillViewport(true);
        scroller.addView(root);
        setContentView(scroller);

        BootDiagnostics.log(this, "MainActivity opened");
        // ExecService 是 smali 类，javac 不可见 → setClassName 字符串形式
        startService(new Intent().setClassName(getPackageName(), getPackageName() + ".ExecService"));
    }

    private ListView lv;

    @Override
    protected void onResume() {
        super.onResume();
        refresh();
        updateGuardUi();
        updateHsUi();
        updateAmUi();
        updateWrUi();
        updateLrfUi();
        // v1.6.13：每次回到前台都重新探测 root —— 用户在 SuperSU 里授权后回来能自动变绿，
        // 不用杀 App 重开（探测在后台线程，不卡 UI）
        probeRootAsync();
    }

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
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(
                this, android.R.layout.simple_list_item_1, items);
        lv.setAdapter(adapter);
        lv.setOnItemClickListener(this);
    }

    /** v1.6.17：直连保护分区状态（守护开关文案 + 最近动作日志尾部） */
    private void updateGuardUi() {
        try {
            guardToggleButton.setText(P2pGuard.isRunning()
                    ? "停止直连保护" : "开启直连保护（后台巡检，防双连断联）");
            String log = P2pGuard.readLog(this);
            String[] lines = log.split("\n");
            StringBuilder tail = new StringBuilder();
            int from = Math.max(0, lines.length - 5);
            for (int i = from; i < lines.length; i++) {
                if (tail.length() > 0) {
                    tail.append('\n');
                }
                tail.append(lines[i]);
            }
            guardStatusText.setText("状态：" + P2pGuard.lastAction()
                    + "\n最近记录：\n" + tail);
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.20：热点探测分区状态 */
    private void updateHsUi() {
        try {
            hsToggleButton.setText(HotspotProbe.isRunning()
                    ? "停止热点探测蹲守" : "开启热点探测蹲守（自动记录热点状态变化）");
            String log = HotspotProbe.readLog(this);
            String[] lines = log.split("\n");
            StringBuilder tail = new StringBuilder();
            int from = Math.max(0, lines.length - 4);
            for (int i = from; i < lines.length; i++) {
                if (tail.length() > 0) {
                    tail.append('\n');
                }
                tail.append(lines[i]);
            }
            hsStatusText.setText("状态：" + HotspotProbe.lastAction()
                    + "\n最近记录：\n" + tail);
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.24：WLAN 速率低诊断分区状态 */
    private void updateWrUi() {
        try {
            boolean run = WifiRateProbe.isRunning();
            wrProbeButton.setEnabled(!run);
            wrShortButton.setEnabled(!run);
            if (run) {
                wrProbeButton.setText("正在测 RTT…（"
                        + WifiRateProbe.duration(this) + " 秒）");
                wrStatusText.setText("状态：正在采样，测完自动显示结果。");
                return;
            }
            wrProbeButton.setText("开始测 RTT（"
                    + WifiRateProbe.duration(this) + " 秒）");
            String verdict = WifiRateProbe.verdict();
            String log = WifiRateProbe.lastResult();
            if (log == null || log.length() == 0) {
                wrStatusText.setText("状态：" + (verdict.length() == 0 ? "未测过" : verdict)
                        + "\n（连上手机并投屏后点上面的按钮开始测）");
                return;
            }
            String[] lines = log.split("\n");
            StringBuilder tail = new StringBuilder();
            int from = Math.max(0, lines.length - 6);
            for (int i = from; i < lines.length; i++) {
                if (tail.length() > 0) {
                    tail.append('\n');
                }
                tail.append(lines[i]);
            }
            wrStatusText.setText("结论：" + verdict + "\n最近记录：\n" + tail);
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.25：低速断连一站式修复分区状态 */
    private void updateLrfUi() {
        try {
            lrfFixButton.setText("⚡ 一键修复（关蓝牙+清保存网络+高性能锁+开保护）");
            lrfUndoButton.setText("还原（恢复蓝牙+重新启用网络+释放锁）");
            String last = LowRateFix.lastResult(this);
            String[] lines = last.split("\n");
            StringBuilder tail = new StringBuilder();
            int from = Math.max(0, lines.length - 4);
            for (int i = from; i < lines.length; i++) {
                if (tail.length() > 0) {
                    tail.append('\n');
                }
                tail.append(lines[i]);
            }
            lrfStatusText.setText("上次结果：\n" + tail);
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.21：启动与声音监控分区状态 */
    private void updateAmUi() {
        try {
            amToggleButton.setText(AudioMonitor.isRunning()
                    ? "停止启动与声音监控" : "开启启动与声音监控（也可等开机自动开始）");
            String tgt = AudioMonitor.blockTarget(this);
            String log = AudioMonitor.readLog(this);
            String[] lines = log.split("\n");
            StringBuilder tail = new StringBuilder();
            int from = Math.max(0, lines.length - 4);
            for (int i = from; i < lines.length; i++) {
                if (tail.length() > 0) {
                    tail.append('\n');
                }
                tail.append(lines[i]);
            }
            amStatusText.setText("拦截目标：" + (tgt == null ? "未设置" : tgt)
                    + "\n状态：" + AudioMonitor.lastAction() + "\n最近记录：\n" + tail);
        } catch (Throwable ignored) {
        }
    }

    /**
     * v1.6.27「开机静音 = 直接关软件」选择器：
     * 数据源 AudioMonitor.bootCandidates() —— ① 开机日志里的「🟢 新进程」记录（带首现时间）
     * ② 当前 ps 里在跑的应用（补监控建档前就起来的漏网）。多选保存为拦截目标，
     * 同时保留 15 秒静音兜底规则，保存后当场试杀一轮（后台线程，killNow 可能要过 su 授权）。
     */
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
                        AudioMonitor.setBlockTargets(MainActivity.this, csv.toString());
                        removeMuteRules();
                        boolean ok = addRule("boot", 15, "mute");   // 15 秒静音兜底（杀不掉时保底）
                        if (!AudioMonitor.isRunning()) {
                            startService(new Intent(MainActivity.this, AudioMonitor.class));
                        }
                        refresh();
                        updateAmUi();
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
                                        Toast.makeText(MainActivity.this, r, Toast.LENGTH_LONG).show();
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

    // View.OnClickListener —— 添加按钮 / 下载日志按钮 / 一键修复按钮
    @Override
    public void onClick(View v) {
        if (v == logButton) {
            // 快照抓取（su 探测 + logcat 可达 30s）由 LogActivity.onCreate 的后台线程执行，
            // 这里绝不直接调 capture()，避免主线程 ANR
            startActivity(new Intent(this, BootDiagnostics.LogActivity.class));
            return;
        }
        if (v == muteNowButton) {
            // MediaMute 是 Java 类，编译期可见 —— 直接调。同步且极快，可放主线程
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
                                    String r = NoRootFixes.openSettings(MainActivity.this, w + 1);
                                    Toast.makeText(MainActivity.this, r, Toast.LENGTH_LONG).show();
                                }
                            })
                    .show();
            return;
        }
        if (v == adbSheetButton) {
            showAdbSheet();
            return;
        }
        if (v == guardToggleButton) {
            if (P2pGuard.isRunning()) {
                stopService(new Intent(this, P2pGuard.class));
                Toast.makeText(this, "直连保护已停止", Toast.LENGTH_SHORT).show();
            } else {
                startService(new Intent(this, P2pGuard.class));
                Toast.makeText(this, "直连保护已开启（每 8 秒巡检）", Toast.LENGTH_SHORT).show();
            }
            // startService 是异步的：立即刷会读到旧状态，延迟 1.2 秒再刷一次
            updateGuardUi();
            guardStatusText.postDelayed(new Runnable() {
                public void run() {
                    updateGuardUi();
                }
            }, 1200L);
            return;
        }
        if (v == guardNowButton) {
            Toast.makeText(this, "正在检查双连…", Toast.LENGTH_SHORT).show();
            new Thread(new Runnable() {
                public void run() {
                    P2pGuard.checkOnce(MainActivity.this, false);
                    runOnUiThread(new Runnable() {
                        public void run() {
                            updateGuardUi();
                        }
                    });
                }
            }).start();
            return;
        }
        if (v == guardRestoreButton) {
            final String r = P2pGuard.restoreAutoConnect(this);
            Toast.makeText(this, r, Toast.LENGTH_SHORT).show();
            updateGuardUi();
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
            // AppPickActivity 是 smali 类（javac 不可见），用 setClassName 拉起
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
        if (v == hsToggleButton) {
            if (HotspotProbe.isRunning()) {
                stopService(new Intent(this, HotspotProbe.class));
                Toast.makeText(this, "热点探测已停止", Toast.LENGTH_SHORT).show();
            } else {
                startService(new Intent(this, HotspotProbe.class));
                Toast.makeText(this, "热点探测已开启（每 5 秒蹲守，状态变化自动抓日志）",
                        Toast.LENGTH_LONG).show();
            }
            updateHsUi();
            hsStatusText.postDelayed(new Runnable() {
                public void run() {
                    updateHsUi();
                }
            }, 1200L);
            return;
        }
        if (v == hsApButton) {
            Toast.makeText(this, "一键攻坚进行中（约 15~30 秒，含 hostapd 启动等待）…",
                    Toast.LENGTH_LONG).show();
            hsApButton.setEnabled(false);   // v1.6.26：防止连点起两个线程抢 hostapd
            new Thread(new Runnable() {
                public void run() {
                    // 换成 attackOnce——反射失败且有 root 时自动改走 hostapd 方案，
                    // 全程落日志，结论行以【攻坚结论】开头，扫码取日志即可远程判定
                    final String r = HotspotProbe.attackOnce(MainActivity.this);
                    runOnUiThread(new Runnable() {
                        public void run() {
                            hsApButton.setEnabled(true);
                            Toast.makeText(MainActivity.this, r, Toast.LENGTH_LONG).show();
                            updateHsUi();
                            hsStatusText.postDelayed(new Runnable() {
                                public void run() {
                                    updateHsUi();
                                }
                            }, 6000L);
                        }
                    });
                }
            }).start();
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
                            updateGuardUi();
                        }
                    });
                }
            }).start();
            return;
        }
        if (v == recvButton) {            // ReceiveActivity 是 Java 类，编译期可见 —— 直接引用
            UploadServer.init(this);
            startActivity(new Intent(this, ReceiveActivity.class));
            return;
        }
        if (v == fileShareButton) {
            ShareServer.init(this);
            ShareServer.setHome(null);
            ShareServer.get().start();
            if (!ShareServer.get().isRunning()) {
                Toast.makeText(this, "端口 18083 起不来（可能被占用）", Toast.LENGTH_LONG).show();
                return;
            }
            try {
                startActivity(new Intent(this, FileShareActivity.class));
            } catch (Throwable t) {
                // Activity 拉不起来时别让服务带着 WakeLock 常驻
                ShareServer.get().stop();
                Toast.makeText(this, "打不开文件共享页：" + t, Toast.LENGTH_LONG).show();
            }
            return;
        }
        if (v == fileMgrButton) {
            ShareServer.init(this);
            startActivity(new Intent(this, FileManagerActivity.class));
            return;
        }
        if (v == fixSysButton) {
            // 非亿连原因（系统/环境层）：一次只做一项，做完跑 15 分钟对比
            new AlertDialog.Builder(this)
                    .setTitle("系统修复（非亿连原因，一次只做一项）")
                    .setItems(new String[]{
                            "① CPU 锁 performance（排查 ROM 压频/热降频；重启还原）",
                            "② CPU 恢复默认 governor",
                            "③ 关蓝牙（排除蓝牙与 WLAN 抢 2.4G）",
                            "④ 开蓝牙",
                            "⑤ 关 WiFi 后台常扫（注意方向：节流=1 才是更少扫描）"},
                            new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface d, int w) {
                                    runRepair(w + 20);
                                }
                            })
                    .show();
            return;
        }
        if (v == fixPsButton) {
            runRepair(0);
            return;
        }
        if (v == fixYilianButton) {
            // 修复矩阵菜单：一次只改一组变量（排查手册铁律），每个预设可独立还原
            new AlertDialog.Builder(this)
                    .setTitle("亿连修复（一次只改一组，测 15 分钟再下一项）")
                    .setItems(new String[]{
                            "① 降码率 mirror 1024x600（第 1 轮先做这个）",
                            "② 分辨率对齐物理屏（画面卡但解码平稳）",
                            "③ 降码率+强制软解（仅整机跟手、只有画面卡时；整机卡/发热勿用）",
                            "④ 追加色彩格式 0x14（4.4 色彩转换坑，保留现有配置）",
                            "⑤ 还原：删除 /etc/ec.conf 恢复默认"},
                        new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface d, int w) {
                                runRepair(w + 10);
                            }
                        })
                    .show();
            return;
        }
        // EditActivity 是 smali 类，javac 不可见 → setClassName 字符串形式
        startActivity(new Intent().setClassName(getPackageName(), getPackageName() + ".EditActivity"));
    }

    /** 修复在后台线程跑（su+iw 可达数秒），结果回 UI 线程 Toast。
     *  code: 0=关省电 10=降码率 11=对齐物理屏 12=软解 13=色彩格式 14=还原 */
    private void runRepair(final int code) {
        final Context ctx = this;
        Toast.makeText(this, "修复执行中…", Toast.LENGTH_SHORT).show();
        new Thread(new Runnable() {
            public void run() {
                String result;
                switch (code) {
                    case 20:
                        result = QuickRepair.repairCpuPerformance(ctx);
                        break;
                    case 21:
                        result = QuickRepair.repairCpuRestore(ctx);
                        break;
                    case 22:
                        result = QuickRepair.repairBluetoothOff(ctx);
                        break;
                    case 23:
                        result = QuickRepair.repairBluetoothOn(ctx);
                        break;
                    case 24:
                        result = QuickRepair.repairWifiScanOff(ctx);
                        break;
                    case 10:
                        result = QuickRepair.repairYilianBitrate(ctx);
                        break;
                    case 11:
                        result = QuickRepair.repairYilianAlignScreen(ctx);
                        break;
                    case 12:
                        result = QuickRepair.repairYilianSoftDecode(ctx);
                        break;
                    case 13:
                        result = QuickRepair.repairYilianColorFormat(ctx);
                        break;
                    case 14:
                        result = QuickRepair.repairYilianReset(ctx);
                        break;
                    default:
                        result = QuickRepair.repairPowerSave(ctx);
                        break;
                }
                final String r = result;
                runOnUiThread(new Runnable() {
                    public void run() {
                        Toast.makeText(ctx, r.length() > 160
                                ? r.substring(0, 160) : r, Toast.LENGTH_LONG).show();
                    }
                });
            }
        }).start();
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

    /** 长文本用可滚动可长按选中的 TextView 展示，便于照抄到电脑 */
    private void showAdbSheet() {
        TextView tv = new TextView(this);
        tv.setText(NoRootFixes.adbCommandSheet());
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
        tv.setTextColor(Color.rgb(30, 30, 30));
        tv.setTypeface(Typeface.MONOSPACE);
        tv.setPadding(dip(12), dip(12), dip(12), dip(12));
        tv.setTextIsSelectable(true);
        android.widget.ScrollView sv = new android.widget.ScrollView(this);
        sv.addView(tv);
        new AlertDialog.Builder(this)
                .setTitle("电脑端 adb 命令清单（eng 版 adbd 多为 root，可去掉 su -c）")
                .setView(sv)
                .setPositiveButton("关闭", null)
                .show();
        BootDiagnostics.log(this, "adb command sheet shown");
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

    // AdapterView.OnItemClickListener —— 点击规则弹出操作
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

    // ---------------------------------------------------------------- 反射帮手（编译期看不到 smali 类与 org.json）

    /** 调 RuleStore 的静态方法：list(Context) / remove(Context,int) / toggle(Context,int) */
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

    /** Util.describe(第 index 条规则) */
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

    // ---------------------------------------------------- v1.6.26 UI 重构：分区卡片

    /**
     * 建一个分区卡片：左侧 4dp 色条 + 加粗标题（可带右侧计数），说明文字紧跟标题，
     * 内容（按钮/状态）用 addIn() 往里放。视觉上把「一屏 40 个平铺按钮」变成
     * 「若干张白底圆角卡片」，扫一眼就知道哪些按钮属于同一组。
     */
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

    /** 往当前卡片里加一个控件（按钮/状态条），统一 6dp 上间距 */
    private void addIn(LinearLayout card, View v) {
        addIn(card, v, dip(6));
    }

    private void addIn(LinearLayout card, View v, int topMargin) {
        LinearLayout.LayoutParams lp = matchWrap();
        lp.topMargin = topMargin;
        card.addView(v, lp);
    }
}
