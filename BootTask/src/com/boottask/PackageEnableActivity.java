package com.boottask;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

/**
 * v1.6.50 开机自启软件 · 禁用/恢复（勾选式管理）。
 *
 * 数据源：pm list packages -3（第三方包）。勾选 = 禁用（COMPONENT_ENABLED_STATE_DISABLED_USER），
 * 取消勾选 = 恢复（COMPONENT_ENABLED_STATE_DEFAULT）。每次应用同时维护 prefs 里的「已禁用清单」，
 * 开机（BootAudioReceiver）会幂等重应用一遍，防止 ROM 升级/清数据后失效。
 *
 * 前提：本 App 装为系统 App（U 盘 appsinstall 覆盖安装）并拿到
 * CHANGE_COMPONENT_ENABLED_STATE_USER；否则按钮按下只会提示、不动车机。
 *
 * 只列第三方包——系统包（framework）一个都不列，防手滑把车搞砖。
 */
public class PackageEnableActivity extends Activity {

    private static final int ACCENT = Color.rgb(47, 111, 237);

    private ArrayList<PkgItem> items = new ArrayList<PkgItem>();
    private ListView list;
    private TextView status;
    private android.widget.BaseAdapter adapter;
    private volatile boolean busy = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("禁用开机自启软件");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(10), dp(8), dp(10), dp(8));
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        TextView head = new TextView(this);
        head.setText("勾选 = 禁用（开机不跑、桌面不显示），取消勾选 = 恢复。\n应用后重启车机生效；随时回车机再打开可恢复。");
        head.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        head.setTextColor(Color.rgb(90, 98, 112));
        root.addView(head, matchWrap());

        status = new TextView(this);
        status.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        status.setTextColor(ACCENT);
        status.setPadding(0, dp(6), 0, 0);
        root.addView(status, matchWrap());

        list = new ListView(this);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        lp.topMargin = dp(6);
        root.addView(list, lp);

        LinearLayout bar = new LinearLayout(this);
        bar.setOrientation(LinearLayout.HORIZONTAL);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams barLp = matchWrap();
        barLp.topMargin = dp(6);
        root.addView(bar, barLp);

        android.widget.Button apply = new android.widget.Button(this);
        apply.setText("应用选择");
        apply.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                applyAll();
            }
        });
        bar.addView(apply, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        android.widget.Button restore = new android.widget.Button(this);
        restore.setText("全部恢复");
        restore.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                restoreAll();
            }
        });
        bar.addView(restore, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        setContentView(root);
        reload();
    }

    // ---------------------------------------------------------------- 数据

    private void reload() {
        if (busy) {
            return;
        }
        busy = true;
        status.setText("正在读取已安装包…");
        new Thread(new Runnable() {
            public void run() {
                List<String> pkgs = SystemTools.listThirdPartyPackages();
                final ArrayList<PkgItem> fresh = new ArrayList<PkgItem>();
                for (int i = 0; i < pkgs.size(); i++) {
                    String pkg = pkgs.get(i);
                    PkgItem item = new PkgItem();
                    item.pkg = pkg;
                    item.disabled = SystemTools.isPackageDisabled(PackageEnableActivity.this, pkg);
                    fresh.add(item);
                }
                final String summary = buildSummary();
                runOnUiThread(new Runnable() {
                    public void run() {
                        items = fresh;
                        list.setAdapter(buildAdapter());
                        status.setText(summary);
                        busy = false;
                    }
                });
            }
        }, "pkgs-load").start();
    }

    private String buildSummary() {
        if (!SystemTools.hasChangeEnabledState(this)) {
            return "⚠ 本 App 未装为系统 App：按下「应用」只会提示，不会真正禁用。";
        }
        int n = SystemTools.readDisabledList(this).size();
        return "已授权（系统 App）。当前已禁用 " + n + " 个包（勾选即禁用）。";
    }

    private android.widget.BaseAdapter buildAdapter() {
        if (adapter != null) {
            return adapter;
        }
        adapter = new android.widget.BaseAdapter() {
            @Override
            public int getCount() {
                return items.size();
            }

            @Override
            public Object getItem(int position) {
                return items.get(position);
            }

            @Override
            public long getItemId(int position) {
                return position;
            }

            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                PkgItem item = items.get(position);
                CheckBox cb = convertView instanceof CheckBox ? (CheckBox) convertView : null;
                if (cb == null) {
                    cb = new CheckBox(PackageEnableActivity.this);
                    cb.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
                    cb.setTextColor(Color.rgb(34, 34, 34));
                    cb.setPadding(dp(8), dp(4), dp(8), dp(4));
                }
                // v1.6.53 review P3：先摘 listener 再程序化 setChecked，
                // 避免触发旧持有项（复用视图上的上一条目的条目被误写）
                cb.setOnCheckedChangeListener(null);
                cb.setText(item.pkg);
                cb.setChecked(item.disabled);
                cb.setOnCheckedChangeListener(new PkgToggleListener(PackageEnableActivity.this, item));
                return cb;
            }
        };
        return adapter;
    }

    private void applyAll() {
        if (busy) {
            return;
        }
        if (!SystemTools.hasChangeEnabledState(this)) {
            new AlertDialog.Builder(this)
                    .setTitle("缺少系统权限")
                    .setMessage("需要 CHANGE_COMPONENT_ENABLED_STATE_USER（signature|system），"
                            + "普通安装拿不到。\n\n请先用 U 盘 appsinstall 覆盖安装并重启车机。")
                    .setPositiveButton("知道了", null)
                    .show();
            return;
        }
        // 防误操作：禁空全部？给个确认
        int wantDisable = 0;
        for (int i = 0; i < items.size(); i++) {
            if (items.get(i).disabled) {
                wantDisable++;
            }
        }
        final int fd = wantDisable;
        new AlertDialog.Builder(this)
                .setTitle("应用选择")
                .setMessage("将禁用 " + fd + " 个包（未勾选的保持不变）。\n禁用后该 App 不参与开机自启，可随时回来恢复。")
                .setPositiveButton("确认应用", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int which) {
                        runApply();
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private void runApply() {
        busy = true;
        status.setText("正在应用…");
        new Thread(new Runnable() {
            public void run() {
                int applied = 0, failed = 0;
                for (int i = 0; i < items.size(); i++) {
                    PkgItem item = items.get(i);
                    boolean currentlyDisabled = SystemTools.isPackageDisabled(PackageEnableActivity.this, item.pkg);
                    if (item.disabled == currentlyDisabled) {
                        continue;    // 状态一致，跳过
                    }
                    String r = SystemTools.setPackageDisabled(PackageEnableActivity.this, item.pkg, item.disabled);
                    if (r.indexOf("失败") >= 0 || r.indexOf("未改动") >= 0) {
                        failed++;
                    } else {
                        applied++;
                    }
                }
                final String msg = "应用完成：改动 " + applied + " 个，失败 " + failed + " 个。\n"
                        + "（已记入禁用清单，开机自动重应用）";
                runOnUiThread(new Runnable() {
                    public void run() {
                        status.setText(buildSummary());
                        Toast.makeText(PackageEnableActivity.this, msg, Toast.LENGTH_LONG).show();
                        busy = false;
                    }
                });
            }
        }, "pkgs-apply").start();
    }

    private void restoreAll() {
        if (busy) {
            return;
        }
        new AlertDialog.Builder(this)
                .setTitle("全部恢复")
                .setMessage("把禁用清单里的包全部恢复为默认状态？")
                .setPositiveButton("恢复", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int which) {
                        runRestore();
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private void runRestore() {
        busy = true;
        status.setText("正在恢复…");
        new Thread(new Runnable() {
            public void run() {
                List<String> list = SystemTools.readDisabledList(PackageEnableActivity.this);
                int restored = 0;
                for (int i = 0; i < list.size(); i++) {
                    String r = SystemTools.setPackageDisabled(PackageEnableActivity.this, list.get(i), false);
                    restored++;
                }
                // 清单外但状态是 disabled 的，也扫一遍（避免本程序丢数据后残留）
                for (int i = 0; i < items.size(); i++) {
                    PkgItem item = items.get(i);
                    if (SystemTools.isPackageDisabled(PackageEnableActivity.this, item.pkg)) {
                        SystemTools.setPackageDisabled(PackageEnableActivity.this, item.pkg, false);
                        item.disabled = false;
                    }
                }
                final int fd = restored;
                runOnUiThread(new Runnable() {
                    public void run() {
                        if (adapter != null) {
                            adapter.notifyDataSetChanged();
                        }
                        status.setText(buildSummary());
                        Toast.makeText(PackageEnableActivity.this,
                                "已恢复 " + fd + " 个包", Toast.LENGTH_SHORT).show();
                        busy = false;
                    }
                });
            }
        }, "pkgs-restore").start();
    }

    // ---------------------------------------------------------------- 小件

    static final class PkgItem {
        String pkg;
        boolean disabled;
    }

    /** CheckBox 切换即改内存态（不落盘，点「应用」才落盘） */
    static final class PkgToggleListener implements android.widget.CompoundButton.OnCheckedChangeListener {
        private final Context ctx;
        private final PkgItem item;

        PkgToggleListener(Context ctx, PkgItem item) {
            this.ctx = ctx;
            this.item = item;
        }

        @Override
        public void onCheckedChanged(android.widget.CompoundButton buttonView, boolean isChecked) {
            item.disabled = isChecked;
        }
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
