package com.boottask;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

/**
 * v1.6.57 第三方开机自启软件 · 禁用/恢复（勾选式管理）。
 *
 * 与「添加规则」的应用选择器是同一个类：AppPickActivity(mode=multi, 
 * filter=third_party, selected=已禁用清单)。选完回来之后按 diff 执行：
 *   新选上的 → DISABLED_USER；之前禁用里被取消勾选的 → DEFAULT 恢复。
 * 禁用/启用的动作走 SystemTools.setPackageDisabled，偏好（disabled_pkgs）由它统一维护，
 * 开机（BootAudioReceiver）会自动重建。只列第三方应用——系统框架不列入，防手滑把车搞砖。
 */
public class PackageEnableActivity extends Activity {

    private static final int ACCENT = Color.rgb(47, 111, 237);

    private TextView status;
    private TextView list;
    private volatile boolean busy = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("禁用开机自启软件");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(12), dp(10), dp(12), dp(12));
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        TextView head = new TextView(this);
        head.setText("禁用开机自启的第三方软件");
        head.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
        head.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        head.setTextColor(Color.rgb(34, 34, 34));
        root.addView(head, matchWrap());

        TextView hint = new TextView(this);
        hint.setText("勾选的=开机不跑、桌面不显示；取消勾选=恢复。【需要系统 App 权限】"
                + "\n普通安装点了只会提示，不会影响车机。");
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        hint.setTextColor(Color.rgb(90, 98, 112));
        LinearLayout.LayoutParams hlp = matchWrap();
        hlp.topMargin = dp(6);
        root.addView(hint, hlp);

        status = new TextView(this);
        status.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        status.setTextColor(ACCENT);
        status.setPadding(0, dp(10), 0, 0);
        root.addView(status, matchWrap());

        list = new TextView(this);
        list.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        list.setTextColor(Color.rgb(80, 86, 100));
        LinearLayout.LayoutParams llp = matchWrap();
        llp.topMargin = dp(6);
        list.setBackgroundColor(Color.WHITE);
        list.setPadding(dp(8), dp(8), dp(8), dp(8));
        root.addView(list, llp);

        Button pick = new Button(this);
        pick.setText("📋 选择要禁用/停用的应用");
        pick.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openPicker();
            }
        });
        LinearLayout.LayoutParams pLp = matchWrap();
        pLp.topMargin = dp(14);
        root.addView(pick, pLp);

        Button restore = new Button(this);
        restore.setText("全部恢复启用");
        restore.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                confirmRestore();
            }
        });
        LinearLayout.LayoutParams rLp = matchWrap();
        rLp.topMargin = dp(6);
        root.addView(restore, rLp);

        setContentView(root);
        refreshUi();
    }

    @Override
    protected void onResume() {
        super.onResume();
        refreshUi();
    }

    private void refreshUi() {
        List<String> disabled = SystemTools.readDisabledList(this);
        boolean perm = SystemTools.hasChangeEnabledState(this);
        StringBuilder sb = new StringBuilder();
        if (!perm) {
            status.setText("⚠ 本 App 未装成系统 App：这个功能不可用。");
        } else {
            status.setText("已授权（系统 App）。已禁用 " + disabled.size() + " 个包");
        }
        if (disabled.isEmpty()) {
            list.setText("（当前没有被禁用的第三方 App）");
        } else {
            sb.setLength(0);
            for (int i = 0; i < disabled.size(); i++) {
                if (i > 0) {
                    sb.append('\n');
                }
                sb.append("• ").append(disabled.get(i));
            }
            list.setText("当前禁用清单：\n" + sb.toString());
        }
    }

    private void openPicker() {
        if (!SystemTools.hasChangeEnabledState(this)) {
            new AlertDialog.Builder(this)
                    .setTitle("缺少系统权限")
                    .setMessage("需要 CHANGE_COMPONENT_ENABLED_STATE_USER（签名/系统级权限），\n"
                            + "普通安装拿不到。\n\n请先用 U 盘 appsinstall 覆盖安装并重启车机。")
                    .setPositiveButton("知道了", null)
                    .show();
            return;
        }
        List<String> disabled = SystemTools.readDisabledList(this);
        Intent intent = new Intent(this, AppPickActivity.class);
        intent.putExtra(AppPickActivity.EXTRA_MODE, "multi");
        intent.putExtra(AppPickActivity.EXTRA_FILTER, "third_party");
        intent.putExtra(AppPickActivity.EXTRA_TITLE, "勾选要禁用的第三方应用");
        intent.putExtra(AppPickActivity.EXTRA_SELECTED,
                disabled.toArray(new String[disabled.size()]));
        startActivityForResult(intent, 100);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode != 100 || resultCode != RESULT_OK || data == null) {
            return;
        }
        final String[] selected = data.getStringArrayExtra(AppPickActivity.EXTRA_PKGS);
        final String[] currentd = SystemTools.readDisabledList(this)
                .toArray(new String[0]);
        runApply(currentd, selected == null ? new String[0] : selected);
    }

    /**
     * 按 diff 执行；切换走后台。
     * 新选上的→禁用，之前禁用被取消的→恢复。
     */
    private void runApply(final String[] oldDisabled, final String[] selected) {
        busy = true;
        status.setText("正在保存…");
        new Thread(new Runnable() {
            public void run() {
                List<String> selectedList = java.util.Arrays.asList(selected);
                List<String> oldList = java.util.Arrays.asList(oldDisabled);
                int changed = 0, failed = 0;
                for (int i = 0; i < selected.length; i++) {
                    String r = SystemTools.setPackageDisabled(PackageEnableActivity.this,
                            selected[i], true);
                    if (r != null && r.indexOf("失败") >= 0) {
                        failed++;
                    } else {
                        changed++;
                    }
                }
                for (int i = 0; i < oldDisabled.length; i++) {
                    if (!selectedList.contains(oldDisabled[i])) {
                        String r = SystemTools.setPackageDisabled(PackageEnableActivity.this,
                                oldDisabled[i], false);
                        if (r == null || r.indexOf("失败") < 0) {
                            changed++;
                        } else {
                            failed++;
                        }
                    }
                }
                final String msg = "已改变 " + changed + " 个包"
                        + (failed > 0 ? "，失败 " + failed + " 个" : "");
                runOnUiThread(new Runnable() {
                    public void run() {
                        Toast.makeText(PackageEnableActivity.this, msg, Toast.LENGTH_LONG).show();
                        busy = false;
                        refreshUi();
                    }
                });
            }
        }, "apply-disabled").start();
    }

    private void confirmRestore() {
        if (busy) {
            return;
        }
        new AlertDialog.Builder(this)
                .setTitle("全部恢复")
                .setMessage("把禁用清单里的包全部恢复为默认状态？")
                .setPositiveButton("恢复", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int which) {
                        busy = true;
                        status.setText("正在恢复…");
                        new Thread(new Runnable() {
                            public void run() {
                                List<String> cur = SystemTools.readDisabledList(PackageEnableActivity.this);
                                for (int i = 0; i < cur.size(); i++) {
                                    SystemTools.setPackageDisabled(PackageEnableActivity.this,
                                            cur.get(i), false);
                                }
                                runOnUiThread(new Runnable() {
                                    public void run() {
                                        Toast.makeText(PackageEnableActivity.this,
                                                "已恢复", Toast.LENGTH_SHORT).show();
                                        busy = false;
                                        refreshUi();
                                    }
                                });
                            }
                        }, "restore").start();
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private LinearLayout.LayoutParams matchWrap() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private int dp(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }
}
