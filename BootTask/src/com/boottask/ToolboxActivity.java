package com.boottask;

import android.app.Activity;
import android.app.AlertDialog;
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
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/**
 * v1.6.42：功能减法——监控页签也删了，本页只剩「按键与弹窗」（弹窗自动允许 +
 * 亿连上一首/下一首转发），页签栏一并去掉。v1.6.44 起 AudioMonitor 服务也删了。
 *
 * 编译期约束：stub android.jar 无 org.json；smali 类对 javac 不可见。
 */
public class ToolboxActivity extends Activity implements View.OnClickListener {

    private static final int ACCENT = Color.rgb(47, 111, 237);

    private Button p2pAaOnButton;
    private Button p2pAaOffButton;
    private Button p2pAaSettingsButton;
    private Button p2pAaTestButton;
    private Button keyfToggleButton;
    private Button keywButton;
    private TextView keyfText;
    private TextView p2pAaText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("按键与弹窗");

        // 整页不滚动（车机滚屏卡）。
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dip(12), dip(8), dip(12), dip(10));
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        LinearLayout headRow = new LinearLayout(this);
        headRow.setOrientation(LinearLayout.HORIZONTAL);
        headRow.setGravity(Gravity.CENTER_VERTICAL);
        TextView title = new TextView(this);
        title.setText("按键与弹窗");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.rgb(34, 34, 34));
        headRow.addView(title, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView sub = new TextView(this);
        sub.setText("弹窗自动允许 / 亿连上一首下一首转发");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        sub.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams subLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        subLp.leftMargin = dip(10);
        headRow.addView(sub, subLp);
        root.addView(headRow, matchWrap());

        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams contentLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        contentLp.topMargin = dip(8);
        root.addView(content, contentLp);
        buildKeyPanel(content);
        setContentView(root);

        BootDiagnostics.log(this, "ToolboxActivity opened");
    }

    /** 让卡片填满所在容器（高度吃完剩余空间） */
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

    // ---- 唯一内容：按键与弹窗（直连免打扰 + 亿连上一首/下一首）----
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
        p2pAaOnButton.setText("开启：自动点掉配对弹窗");
        p2pAaOnButton.setOnClickListener(this);

        p2pAaOffButton = new Button(this);
        p2pAaOffButton.setText("关闭（恢复手动点允许）");
        p2pAaOffButton.setOnClickListener(this);
        gridRow(cAa, p2pAaOnButton, p2pAaOffButton);

        // v1.6.40：触发关键字自定义——窗口里出现任一词 + 有同意类按钮 → 才自动点
        keywButton = new Button(this);
        keywButton.setOnClickListener(this);
        addIn(cAa, keywButton);

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

    // ---------------------------------------------------------------- 按键状态

    /** v1.6.29 直连免打扰分区状态 + v1.6.38 按键转发状态 + v1.6.40 关键字 */
    private void updateAaUi() {
        try {
            p2pAaOnButton.setEnabled(!P2pAutoAccept.isEnabled(this));
            p2pAaOffButton.setEnabled(P2pAutoAccept.isEnabled(this));
            p2pAaText.setText(P2pAutoAccept.statusText(this));
            keyfToggleButton.setText(MediaKeyRelay.isEnabled(this)
                    ? "关闭：亿连前台时 上一首/下一首 转发给手机"
                    : "开启：亿连前台时 上一首/下一首 转发给手机");
            keyfText.setText(MediaKeyRelay.statusText(this));
            String[] keys = P2pAutoAccept.sceneKeys(this);
            keywButton.setText(keys != null
                    ? "触发关键字：自定义（" + keys.length + " 个词）——点我改"
                    : "触发关键字：内置 P2P 词表（点我自定义）");
        } catch (Throwable ignored) {
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        updateAaUi();
    }

    // ---------------------------------------------------------------- 点击事件

    @Override
    public void onClick(View v) {
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
        if (v == keywButton) {
            // v1.6.40：自定义触发关键字（逗号/换行分隔；留空保存 = 恢复内置词表）
            final android.widget.EditText et = new android.widget.EditText(this);
            et.setSingleLine(false);
            et.setMinLines(3);
            et.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
            et.setText(P2pAutoAccept.sceneKeysRaw(this));
            et.setHint("逗号或换行分隔，如：配对,连接\n留空保存 = 恢复内置 P2P 词表");
            new AlertDialog.Builder(this)
                    .setTitle("触发关键字：窗口含任一词 + 有「确定/允许」类按钮 → 自动点")
                    .setView(et)
                    .setPositiveButton("保存", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface d, int w) {
                            P2pAutoAccept.setSceneKeys(ToolboxActivity.this,
                                    et.getText() == null ? "" : et.getText().toString());
                            String[] keys = P2pAutoAccept.sceneKeys(ToolboxActivity.this);
                            Toast.makeText(ToolboxActivity.this,
                                    keys != null ? "已保存 " + keys.length + " 个关键字"
                                            : "已恢复内置 P2P 词表",
                                    Toast.LENGTH_LONG).show();
                            updateAaUi();
                        }
                    })
                    .setNeutralButton("恢复默认词表", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface d, int w) {
                            P2pAutoAccept.setSceneKeys(ToolboxActivity.this, "");
                            Toast.makeText(ToolboxActivity.this, "已恢复内置 P2P 词表",
                                    Toast.LENGTH_SHORT).show();
                            updateAaUi();
                        }
                    })
                    .setNegativeButton("取消", null)
                    .show();
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
