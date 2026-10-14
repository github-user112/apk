package com.boottask;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
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
 * v1.6.34 Root 工具页：需要 root 的修复功能从首页挪到这里。
 * 10-09 车机日志实锤本机无 su（which su 直接 IOException），这些功能当前全部不可用 ——
 * 但不排除以后 root（KVT49L 是 eng 版，电脑 adb root 也能拿 adbd root），
 * 所以功能保留、入口收进本页，避免首页出现一堆点了必失败的按钮。
 */
public class RootToolsActivity extends Activity implements View.OnClickListener {

    private static final int ACCENT = Color.rgb(47, 111, 237);
    private Button fixPsButton;
    private Button fixYilianButton;
    private Button fixSysButton;
    private Button adbSheetButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Root 工具");

        int pad = dip(16);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(pad, pad, pad, pad);
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        TextView title = new TextView(this);
        title.setText("Root 工具");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 22);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.rgb(34, 34, 34));
        root.addView(title, matchWrap());

        TextView sub = new TextView(this);
        sub.setText("以下功能全部需要 root；本车 10-09 日志实锤无 su，当前不可用");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        sub.setTextColor(Color.rgb(170, 90, 30));
        LinearLayout.LayoutParams subLp = matchWrap();
        subLp.topMargin = dip(4);
        root.addView(sub, subLp);

        // ---- 分区一：修复菜单（需 root 才能写系统）----
        LinearLayout cFix = card(root, "修复菜单",
                "写 /etc/ec.conf、调 sysfs、改 hostapd 都要 root。"
                        + "★本车无 su：以后 root 了（或用电脑 adb root 连上）再回来用。"
                        + "排查铁律不变：一次只改一组变量，测 15 分钟再下一项。");

        fixPsButton = new Button(this);
        fixPsButton.setText("一键修复：关 WiFi 省电（需 root）");
        fixPsButton.setOnClickListener(this);
        addIn(cFix, fixPsButton);

        fixYilianButton = new Button(this);
        fixYilianButton.setText("亿连修复菜单（降码率/对屏/软解/还原，需 root）");
        fixYilianButton.setOnClickListener(this);
        addIn(cFix, fixYilianButton);

        fixSysButton = new Button(this);
        fixSysButton.setText("系统修复菜单（CPU降频/蓝牙抢频/WiFi扫描，需 root）");
        fixSysButton.setOnClickListener(this);
        addIn(cFix, fixSysButton);

        // ---- 分区二：电脑端 adb 命令清单 ----
        LinearLayout cAdb = card(root, "电脑端 adb 命令清单",
                "eng 版车机 adbd 多为 root：电脑插 USB 连上 adb，照清单逐条执行，"
                        + "效果同上面的按钮，还不用在车机屏上点。");

        adbSheetButton = new Button(this);
        adbSheetButton.setText("查看 root 命令清单（可长按复制）");
        adbSheetButton.setOnClickListener(this);
        addIn(cAdb, adbSheetButton);

        android.widget.ScrollView scroller = new android.widget.ScrollView(this);
        scroller.setFillViewport(true);
        scroller.addView(root);
        setContentView(scroller);

        BootDiagnostics.log(this, "RootToolsActivity opened");
    }

    @Override
    public void onClick(View v) {
        if (v == adbSheetButton) {
            showAdbSheet();
            return;
        }
        if (v == fixSysButton) {
            new AlertDialog.Builder(this)
                    .setTitle("系统修复（非亿连原因，一次只做一项）")
                    .setItems(new String[]{
                            "① CPU 锁 performance（排查 ROM 压频/热降频；重启还原）",
                            "② CPU 恢复默认 governor",
                            "③ 关蓝牙（排除蓝牙与 WLAN 抢 2.4G）",
                            "④ 开蓝牙",
                            "⑤ 关 WiFi 后台常扫（always=0 + 周期扫描间隔 5 分钟）"},
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
    }

    /** 修复在后台线程跑（su+iw 可达数秒），结果回 UI 线程 Toast。
     *  code: 0=关省电 10=降码率 11=对齐物理屏 12=软解 13=色彩格式 14=还原 */
    private void runRepair(final int code) {
        final Context ctx = this;
        Toast.makeText(this, "修复执行中…（本机无 root 时会失败并提示）", Toast.LENGTH_SHORT).show();
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
        box.setBackgroundDrawable(bg);

        LinearLayout.LayoutParams boxLp = matchWrap();
        boxLp.topMargin = dip(10);
        root.addView(box, boxLp);
        return box;
    }

    private void addIn(LinearLayout card, View v) {
        LinearLayout.LayoutParams lp = matchWrap();
        lp.topMargin = dip(6);
        card.addView(v, lp);
    }
}
