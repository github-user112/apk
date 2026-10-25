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
 * v1.6.34 已排除嫌疑收纳页：10-09/10-10 车机日志已把这两个方向排除，功能从首页挪到这里
 * 缩小保留（以后万一复现可以一键启用）：
 *
 * ① 直连保护（防单射频双连断联）：10-09 日志 wlan0 NO-CARRIER、收发全 0，从没连过 AP
 *    ——「单射频双连」是 1.6.16 诊断段 wlanCarrier 覆盖 bug 的误报（1.6.23 已修），
 *    首页告警撤下。功能保留：若以后手机热点与直连同时在，它仍是有效防线。
 * ② 热点探测/一键攻坚：10-09 实锤 hostapd 二进制在但无 init 服务、无 AP 接口
 *    （「有壳无魂」）—— 车机开热点此路不通，热点模式只能手机开 AP。
 *    探测蹲守保留备用（抓手机侧热点状态变化还是有用的）。
 */
public class ExcludedActivity extends Activity implements View.OnClickListener {

    private static final int ACCENT = Color.rgb(47, 111, 237);
    private Button guardToggleButton;
    private Button guardNowButton;
    private Button guardRestoreButton;
    private TextView guardStatusText;
    private Button hsToggleButton;
    private Button hsApButton;
    private TextView hsStatusText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("已排除的嫌疑");

        int pad = dip(16);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(pad, pad, pad, pad);
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        TextView title = new TextView(this);
        title.setText("已排除的嫌疑");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 22);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.rgb(34, 34, 34));
        root.addView(title, matchWrap());

        TextView sub = new TextView(this);
        sub.setText("车机日志已排除，功能缩小保留备用；日常排查不用管这页");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        sub.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams subLp = matchWrap();
        subLp.topMargin = dip(4);
        root.addView(sub, subLp);

        // ---- 卡一：直连保护（已排除：双连是误报）----
        LinearLayout cGuard = card(root, "直连保护（防热点双连断联）——已排除",
                "【已排除】10-09 日志 wlan0 NO-CARRIER、收发 0，从没连过 AP；"
                        + "「单射频双连实锤」是诊断段误报（1.6.23 已修）。\n"
                        + "保留原因：若以后手机热点与直连同时在，此功能仍能自动断开热点防线。");

        guardToggleButton = new Button(this);
        guardToggleButton.setOnClickListener(this);
        addIn(cGuard, guardToggleButton);

        guardNowButton = new Button(this);
        guardNowButton.setText("立即检查并断开热点（单次）");
        guardNowButton.setOnClickListener(this);
        addIn(cGuard, guardNowButton);

        guardRestoreButton = new Button(this);
        guardRestoreButton.setText("恢复热点自动连接");
        guardRestoreButton.setOnClickListener(this);
        addIn(cGuard, guardRestoreButton);

        guardStatusText = new TextView(this);
        guardStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        guardStatusText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cGuard, guardStatusText);

        // ---- 卡二：热点探测/一键攻坚（已排除：车机当 AP 走不通）----
        LinearLayout cHs = card(root, "热点探测与一键攻坚——已排除",
                "【已排除】10-09 实锤 /system/bin/hostapd 存在但 init 无服务、netcfg 无 AP 接口"
                        + "（有壳无魂）——车机开热点此路不通；热点模式只能手机开 AP → 车机连"
                        + "（9-24 实测 100% 通）。\n"
                        + "保留原因：探测蹲守仍可抓手机侧热点状态变化。");

        hsToggleButton = new Button(this);
        hsToggleButton.setOnClickListener(this);
        addIn(cHs, hsToggleButton);

        hsApButton = new Button(this);
        hsApButton.setText("一键攻坚（预期失败，仅验证复现）");
        hsApButton.setOnClickListener(this);
        addIn(cHs, hsApButton);

        hsStatusText = new TextView(this);
        hsStatusText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        hsStatusText.setTextColor(Color.rgb(90, 90, 90));
        addIn(cHs, hsStatusText);

        setContentView(root);   // v1.6.39：内容一屏放得下，去滚动

        BootDiagnostics.log(this, "ExcludedActivity opened");
        updateGuardUi();
        updateHsUi();
    }

    @Override
    protected void onResume() {
        super.onResume();
        updateGuardUi();
        updateHsUi();
    }

    private void updateGuardUi() {
        try {
            guardToggleButton.setText(P2pGuard.isRunning()
                    ? "停止直连保护" : "开启直连保护（后台巡检，防双连断联）");
            guardStatusText.setText("状态：" + P2pGuard.lastAction()
                    + "\n最近记录：\n" + MainActivity.tail(P2pGuard.readLog(this), 4));
        } catch (Throwable ignored) {
        }
    }

    private void updateHsUi() {
        try {
            hsToggleButton.setText(HotspotProbe.isRunning()
                    ? "停止热点探测蹲守" : "开启热点探测蹲守（自动记录热点状态变化）");
            hsStatusText.setText("状态：" + HotspotProbe.lastAction()
                    + "\n最近记录：\n" + MainActivity.tail(HotspotProbe.readLog(this), 4));
        } catch (Throwable ignored) {
        }
    }

    @Override
    public void onClick(View v) {
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
                    P2pGuard.checkOnce(ExcludedActivity.this, false);
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
            Toast.makeText(this, "一键攻坚进行中（约 15~30 秒）…", Toast.LENGTH_LONG).show();
            hsApButton.setEnabled(false);   // 防连点起两个线程抢 hostapd
            new Thread(new Runnable() {
                public void run() {
                    final String r = HotspotProbe.attackOnce(ExcludedActivity.this);
                    runOnUiThread(new Runnable() {
                        public void run() {
                            hsApButton.setEnabled(true);
                            Toast.makeText(ExcludedActivity.this, r, Toast.LENGTH_LONG).show();
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
