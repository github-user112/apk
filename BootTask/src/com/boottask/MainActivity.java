package com.boottask;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
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
        LinearLayout ruleHead = new LinearLayout(this);
        ruleHead.setOrientation(LinearLayout.HORIZONTAL);
        TextView ruleLabel = new TextView(this);
        ruleLabel.setText("我的规则");
        ruleLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        ruleLabel.setTypeface(Typeface.DEFAULT_BOLD);
        ruleLabel.setTextColor(Color.rgb(51, 51, 51));
        ruleHead.addView(ruleLabel, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        countText = new TextView(this);
        countText.setText("");
        countText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        countText.setTextColor(Color.rgb(140, 140, 140));
        countText.setGravity(Gravity.RIGHT | Gravity.CENTER_VERTICAL);
        ruleHead.addView(countText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, 0f));
        LinearLayout.LayoutParams ruleHeadLp = matchWrap();
        ruleHeadLp.topMargin = dip(20);
        root.addView(ruleHead, ruleHeadLp);

        Button addBtn = new Button(this);
        addBtn.setText("＋ 添加规则");
        addBtn.setOnClickListener(this);
        LinearLayout.LayoutParams addLp = matchWrap();
        addLp.topMargin = dip(8);
        root.addView(addBtn, addLp);

        ListView lv = new ListView(this);
        lv.setCacheColorHint(Color.TRANSPARENT);
        lv.setDivider(new ColorDrawable(Color.rgb(224, 224, 224)));
        lv.setDividerHeight(dip(1));
        // v1.6.11：按钮变多后车机屏（常见 1024x600 / 800x480）放不下 —— 
        // 整页改为 ScrollView 包裹，列表给固定高度（weight+ScrollView 会互相抢高度）
        LinearLayout.LayoutParams lvLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dip(150));
        lvLp.topMargin = dip(8);
        root.addView(lv, lvLp);
        this.lv = lv;

        // ---- 分区二：开机静音（v1.6.10 一键，无需手动配规则）----
        TextView muteLabel = new TextView(this);
        muteLabel.setText("开机静音");
        muteLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        muteLabel.setTypeface(Typeface.DEFAULT_BOLD);
        muteLabel.setTextColor(Color.rgb(51, 51, 51));
        LinearLayout.LayoutParams muteLp = matchWrap();
        muteLp.topMargin = dip(12);
        root.addView(muteLabel, muteLp);

        muteNowButton = new Button(this);
        muteNowButton.setText("立即静音（马上验证能不能管住 FM）");
        muteNowButton.setOnClickListener(this);
        LinearLayout.LayoutParams mnLp = matchWrap();
        mnLp.topMargin = dip(6);
        root.addView(muteNowButton, mnLp);

        claimButton = new Button(this);
        claimButton.setText("抢占音源：播 0.6 秒静音（FM 不受静音控制时用）");
        claimButton.setOnClickListener(this);
        LinearLayout.LayoutParams cbLp = matchWrap();
        cbLp.topMargin = dip(4);
        root.addView(claimButton, cbLp);

        bootMuteButton = new Button(this);
        bootMuteButton.setText("设置开机自动静音（开机 15 秒后执行）");
        bootMuteButton.setOnClickListener(this);
        LinearLayout.LayoutParams bmSetLp = matchWrap();
        bmSetLp.topMargin = dip(4);
        root.addView(bootMuteButton, bmSetLp);

        bootMuteOffButton = new Button(this);
        bootMuteOffButton.setText("取消开机自动静音");
        bootMuteOffButton.setOnClickListener(this);
        LinearLayout.LayoutParams bmOffLp = matchWrap();
        bmOffLp.topMargin = dip(4);
        root.addView(bootMuteOffButton, bmOffLp);

        // ---- 分区三：免 root 也能做（v1.6.13）----
        TextView nrLabel = new TextView(this);
        nrLabel.setText("免 root 也能做（不提权、不改系统文件）");
        nrLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        nrLabel.setTypeface(Typeface.DEFAULT_BOLD);
        nrLabel.setTextColor(Color.rgb(51, 51, 51));
        LinearLayout.LayoutParams nrLp = matchWrap();
        nrLp.topMargin = dip(16);
        root.addView(nrLabel, nrLp);

        TextView nrHint = new TextView(this);
        nrHint.setText("车机没 root 时，下面这些照样有效；写 /etc/ec.conf 那类必须 root 的活，"
                + "看最后一个按钮里的 adb 命令清单。");
        nrHint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        nrHint.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams nrHintLp = matchWrap();
        nrHintLp.topMargin = dip(4);
        root.addView(nrHint, nrHintLp);

        noRootWifiButton = new Button(this);
        noRootWifiButton.setText("高性能 WiFi 锁（免 root 版关省电）");
        noRootWifiButton.setOnClickListener(this);
        LinearLayout.LayoutParams nwLp = matchWrap();
        nwLp.topMargin = dip(6);
        root.addView(noRootWifiButton, nwLp);

        noRootYilianButton = new Button(this);
        noRootYilianButton.setText("重启亿连 / 打开亿连设置（免 root）");
        noRootYilianButton.setOnClickListener(this);
        LinearLayout.LayoutParams nyLp = matchWrap();
        nyLp.topMargin = dip(4);
        root.addView(noRootYilianButton, nyLp);

        noRootSettingsButton = new Button(this);
        noRootSettingsButton.setText("打开系统设置（蓝牙/WiFi/显示/开发者选项）");
        noRootSettingsButton.setOnClickListener(this);
        LinearLayout.LayoutParams nsLp = matchWrap();
        nsLp.topMargin = dip(4);
        root.addView(noRootSettingsButton, nsLp);

        adbSheetButton = new Button(this);
        adbSheetButton.setText("root 命令清单（电脑上 adb 执行，效果同上）");
        adbSheetButton.setOnClickListener(this);
        LinearLayout.LayoutParams asLp = matchWrap();
        asLp.topMargin = dip(4);
        root.addView(adbSheetButton, asLp);

        // ---- 分区四：文件管理（v1.6.15：手机遥控 + 车机本地）----
        TextView rcvLabel = new TextView(this);
        rcvLabel.setText("文件管理");
        rcvLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        rcvLabel.setTypeface(Typeface.DEFAULT_BOLD);
        rcvLabel.setTextColor(Color.rgb(51, 51, 51));
        LinearLayout.LayoutParams rcLp = matchWrap();
        rcLp.topMargin = dip(16);
        root.addView(rcvLabel, rcLp);

        fileShareButton = new Button(this);
        fileShareButton.setText("📱 手机遥控车机文件（推荐·扫码）");
        fileShareButton.setOnClickListener(this);
        LinearLayout.LayoutParams fsLp = matchWrap();
        fsLp.topMargin = dip(6);
        root.addView(fileShareButton, fsLp);

        fileMgrButton = new Button(this);
        fileMgrButton.setText("车机本地文件管理器");
        fileMgrButton.setOnClickListener(this);
        LinearLayout.LayoutParams fmgrLp = matchWrap();
        fmgrLp.topMargin = dip(4);
        root.addView(fileMgrButton, fmgrLp);

        recvButton = new Button(this);
        recvButton.setText("接收 APK 并安装（手机扫码上传）");
        recvButton.setOnClickListener(this);
        LinearLayout.LayoutParams rcvLp = matchWrap();
        rcvLp.topMargin = dip(4);
        root.addView(recvButton, rcvLp);

        TextView rcvHint = new TextView(this);
        rcvHint.setText("推荐第一条：车机只显示二维码，浏览/上传/下载/改名/删除/装 APK"
                + "全在手机浏览器里做（车机输入法太难受）。root 模式下能改 /system、/etc。");
        rcvHint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        rcvHint.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams rcHintLp = matchWrap();
        rcHintLp.topMargin = dip(4);
        root.addView(rcvHint, rcHintLp);

        // ---- 分区四点五：直连保护（v1.6.17）----
        TextView guardLabel = new TextView(this);
        guardLabel.setText("直连保护（防热点双连断联）");
        guardLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        guardLabel.setTypeface(Typeface.DEFAULT_BOLD);
        guardLabel.setTextColor(Color.rgb(51, 51, 51));
        LinearLayout.LayoutParams gLp = matchWrap();
        gLp.topMargin = dip(16);
        root.addView(guardLabel, gLp);

        guardToggleButton = new Button(this);
        guardToggleButton.setOnClickListener(this);
        root.addView(guardToggleButton, matchWrap());

        guardNowButton = new Button(this);
        guardNowButton.setText("立即检查并断开热点（单次）");
        guardNowButton.setOnClickListener(this);
        root.addView(guardNowButton, matchWrap());

        guardRestoreButton = new Button(this);
        guardRestoreButton.setText("恢复热点自动连接（热点模式前用）");
        guardRestoreButton.setOnClickListener(this);
        root.addView(guardRestoreButton, matchWrap());

        guardStatusText = new TextView(this);
        guardStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        guardStatusText.setTextColor(Color.rgb(90, 90, 90));
        LinearLayout.LayoutParams gsLp = matchWrap();
        gsLp.topMargin = dip(4);
        root.addView(guardStatusText, gsLp);

        TextView guardHint = new TextView(this);
        guardHint.setText("原理：直连组活跃时若 wlan0 连上热点（单射频双连 → 速率低 → 断联），"
                + "自动断开并禁用该热点（配置保留）。用热点模式前先点恢复。免 root。");
        guardHint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        guardHint.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams ghLp = matchWrap();
        ghLp.topMargin = dip(4);
        root.addView(guardHint, ghLp);

        // ---- 分区四点七：热点探测蹲守（v1.6.20）----
        TextView hsLabel = new TextView(this);
        hsLabel.setText("热点探测（SoftAP 诊断蹲守）");
        hsLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        hsLabel.setTypeface(Typeface.DEFAULT_BOLD);
        hsLabel.setTextColor(Color.rgb(51, 51, 51));
        LinearLayout.LayoutParams hsLp = matchWrap();
        hsLp.topMargin = dip(16);
        root.addView(hsLabel, hsLp);

        hsToggleButton = new Button(this);
        hsToggleButton.setOnClickListener(this);
        root.addView(hsToggleButton, matchWrap());

        hsApButton = new Button(this);
        hsApButton.setText("尝试直接打开车机热点（免 root）");
        hsApButton.setOnClickListener(this);
        root.addView(hsApButton, matchWrap());

        hsStatusText = new TextView(this);
        hsStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        hsStatusText.setTextColor(Color.rgb(90, 90, 90));
        LinearLayout.LayoutParams hssLp = matchWrap();
        hssLp.topMargin = dip(4);
        root.addView(hsStatusText, hssLp);

        TextView hsHint = new TextView(this);
        hsHint.setText("用法：先开蹲守，再去车机设置里打开热点（或点上面按钮）——状态每变一次，"
                + "自动抓 getprop/netcfg/logcat 落日志。日志在 /sdcard/boottask/hotspot_probe.log，"
                + "也可从手机文件管理页直接取走发我分析。");
        hsHint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        hsHint.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams hshLp = matchWrap();
        hshLp.topMargin = dip(4);
        root.addView(hsHint, hshLp);

        // ---- 分区四点九：WLAN 速率低诊断（v1.6.24）----
        TextView wrLabel = new TextView(this);
        wrLabel.setText("WLAN 速率低诊断（复刻亿连判定）");
        wrLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        wrLabel.setTypeface(Typeface.DEFAULT_BOLD);
        wrLabel.setTextColor(Color.rgb(51, 51, 51));
        LinearLayout.LayoutParams wrLp = matchWrap();
        wrLp.topMargin = dip(16);
        root.addView(wrLabel, wrLp);

        wrProbeButton = new Button(this);
        wrProbeButton.setText("开始测 RTT（120 秒）");
        wrProbeButton.setOnClickListener(this);
        root.addView(wrProbeButton, matchWrap());

        wrShortButton = new Button(this);
        wrShortButton.setText("短测 30 秒（快速验证）");
        wrShortButton.setOnClickListener(this);
        root.addView(wrShortButton, matchWrap());

        wrStatusText = new TextView(this);
        wrStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        wrStatusText.setTextColor(Color.rgb(90, 90, 90));
        LinearLayout.LayoutParams wrsLp = matchWrap();
        wrsLp.topMargin = dip(4);
        root.addView(wrStatusText, wrsLp);

        TextView wrHint = new TextView(this);
        wrHint.setText("亿连弹「WiFi传输速率低」的真实条件：每 2 秒 ping 一次对端，"
                + "单次往返 >200ms 记一次，连续 3 次（约 6 秒）就弹 —— 测的是延迟不是带宽。"
                + "本按钮在车机上复刻同一判定并记录全部样本，"
                + "直接告诉你「够不够触发弹窗」。\n"
                + "★用法：投屏正常时点开始，然后正常使用导航；再点一次短测对比。"
                + "日志在手机文件管理页 /sdcard/boottask/ 可取（或日志下载页）。");
        wrHint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        wrHint.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams wrhLp = matchWrap();
        wrhLp.topMargin = dip(4);
        root.addView(wrHint, wrhLp);

        // ---- 分区四点九五：低速断连一站式修复（v1.6.25）----
        TextView lrfLabel = new TextView(this);
        lrfLabel.setText("低速断连一站式修复（免 root）");
        lrfLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        lrfLabel.setTypeface(Typeface.DEFAULT_BOLD);
        lrfLabel.setTextColor(Color.rgb(51, 51, 51));
        LinearLayout.LayoutParams lrfLp = matchWrap();
        lrfLp.topMargin = dip(16);
        root.addView(lrfLabel, lrfLp);

        lrfFixButton = new Button(this);
        lrfFixButton.setOnClickListener(this);
        root.addView(lrfFixButton, matchWrap());

        lrfUndoButton = new Button(this);
        lrfUndoButton.setOnClickListener(this);
        root.addView(lrfUndoButton, matchWrap());

        lrfStatusText = new TextView(this);
        lrfStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        lrfStatusText.setTextColor(Color.rgb(90, 90, 90));
        LinearLayout.LayoutParams lrfsLp = matchWrap();
        lrfsLp.topMargin = dip(4);
        root.addView(lrfStatusText, lrfsLp);

        TextView lrfHint = new TextView(this);
        lrfHint.setText("一键做完全部免 root 缓解：①关蓝牙（防 2.4G 争抢）②清/禁用已保存 WiFi 网络"
                + "（掐断后台扫描重连——头号嫌疑）③高性能 WiFi 锁 ④开直连保护（防热点双连）。"
                + "做完直接投屏 15 分钟：不弹「速率低」= 根因已消；还弹 = GO 负担，转手机热点模式。"
                + "「还原」恢复蓝牙与全部网络。");
        lrfHint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        lrfHint.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams lrfhLp = matchWrap();
        lrfhLp.topMargin = dip(4);
        root.addView(lrfHint, lrfhLp);

        // ---- 分区四点八：启动与声音监控（v1.6.21）----
        TextView amLabel = new TextView(this);
        amLabel.setText("启动与声音监控（抓自启收音机）");
        amLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        amLabel.setTypeface(Typeface.DEFAULT_BOLD);
        amLabel.setTextColor(Color.rgb(51, 51, 51));
        LinearLayout.LayoutParams amLp = matchWrap();
        amLp.topMargin = dip(16);
        root.addView(amLabel, amLp);

        amToggleButton = new Button(this);
        amToggleButton.setOnClickListener(this);
        root.addView(amToggleButton, matchWrap());

        amPickButton = new Button(this);
        amPickButton.setText("选择拦截目标（选多媒体/收音机）");
        amPickButton.setOnClickListener(this);
        root.addView(amPickButton, matchWrap());

        amClearButton = new Button(this);
        amClearButton.setText("清空拦截目标");
        amClearButton.setOnClickListener(this);
        root.addView(amClearButton, matchWrap());

        amStatusText = new TextView(this);
        amStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        amStatusText.setTextColor(Color.rgb(90, 90, 90));
        LinearLayout.LayoutParams amsLp = matchWrap();
        amsLp.topMargin = dip(4);
        root.addView(amStatusText, amsLp);

        TextView amHint = new TextView(this);
        amHint.setText("监控开机后每个新启动的进程 + 音频焦点/音量变化（谁在抢声音），"
                + "落日志 /sdcard/boottask/audio_monitor.log。设拦截目标后目标进程一冒头就杀"
                + "（免 root 只能杀非前台进程；若杀不掉会用静音兜底）。开机自动开始监控。");
        amHint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        amHint.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams amhLp = matchWrap();
        amhLp.topMargin = dip(4);
        root.addView(amHint, amhLp);

        // ---- 分区五：诊断与日志 ----
        View divider = new View(this);
        divider.setBackgroundColor(Color.rgb(224, 224, 224));
        LinearLayout.LayoutParams divLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dip(1));
        divLp.topMargin = dip(12);
        divLp.bottomMargin = dip(12);
        root.addView(divider, divLp);

        TextView diagLabel = new TextView(this);
        diagLabel.setText("诊断与日志");
        diagLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        diagLabel.setTypeface(Typeface.DEFAULT_BOLD);
        diagLabel.setTextColor(Color.rgb(51, 51, 51));
        root.addView(diagLabel, matchWrap());

        logButton = new Button(this);
        logButton.setText("下载日志（扫码用手机取走）");
        logButton.setOnClickListener(this);
        LinearLayout.LayoutParams logLp = matchWrap();
        logLp.topMargin = dip(8);
        root.addView(logButton, logLp);

        // ---- v1.6.6 一键修复 ----
        fixPsButton = new Button(this);
        fixPsButton.setText("一键修复：关 WiFi 省电（需 root）");
        fixPsButton.setOnClickListener(this);
        LinearLayout.LayoutParams fixLp = matchWrap();
        fixLp.topMargin = dip(4);
        root.addView(fixPsButton, fixLp);

        fixYilianButton = new Button(this);
        fixYilianButton.setText("亿连修复菜单（降码率/对屏/软解/还原，需 root）");
        fixYilianButton.setOnClickListener(this);
        LinearLayout.LayoutParams fixYLp = matchWrap();
        fixYLp.topMargin = dip(4);
        root.addView(fixYilianButton, fixYLp);

        fixSysButton = new Button(this);
        fixSysButton.setText("系统修复菜单（CPU降频/蓝牙抢频/WiFi扫描，需 root）");
        fixSysButton.setOnClickListener(this);
        LinearLayout.LayoutParams fixSLp = matchWrap();
        fixSLp.topMargin = dip(4);
        root.addView(fixSysButton, fixSLp);

        TextView hint = new TextView(this);
        hint.setText("打开下载页自动抓取快照：硬件 / 网络 / WiFi / 亿连运行时 / logcat");
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        hint.setTextColor(Color.rgb(140, 140, 140));
        LinearLayout.LayoutParams hintLp = matchWrap();
        hintLp.topMargin = dip(4);
        root.addView(hint, hintLp);

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

    // View.OnClickListener —— 添加按钮 / 下载日志按钮 / 一键修复按钮    @Override
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
            int n = removeMuteRules();
            boolean ok = addRule("boot", 15, "mute");
            Toast.makeText(this, ok
                    ? ("已设置：开机 15 秒后静音" + (n > 0 ? "（替换了 " + n + " 条旧静音规则）" : ""))
                    : "设置失败，请查看日志", Toast.LENGTH_LONG).show();
            refresh();
            return;
        }
        if (v == bootMuteOffButton) {
            int n = removeMuteRules();
            Toast.makeText(this, n > 0 ? ("已取消，移除 " + n + " 条静音规则") : "当前没有静音规则",
                    Toast.LENGTH_LONG).show();
            refresh();
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
            Toast.makeText(this, "正在尝试开热点…", Toast.LENGTH_SHORT).show();
            new Thread(new Runnable() {
                public void run() {
                    final String r = HotspotProbe.ensureOn(MainActivity.this);
                    runOnUiThread(new Runnable() {
                        public void run() {
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
}
