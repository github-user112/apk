package com.carfiles;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * v1.0 应用管理（车机屏原生卸载列表）——「卸载软件」这个功能的车机屏入口。
 *
 * 与手机扫码文件页的应用页（fm.html + ShareServer /api/apps）是同一套后端（AppManager）：
 *   - root：pm uninstall 静默卸（还能「保留数据」-k）；
 *   - 免 root：ACTION_DELETE 拉系统确认框，需在车机屏上点确定；
 *   - 顺带给「启动」入口（AppManager.launch，root 用 am start，免 root 走 LAUNCHER intent）。
 *
 * 列表加载放后台线程（装了几百个 App 时 PM 查询会卡主界面——主界面不许卡的教训）；
 * onResume 重载，覆盖「免 root 卸载回来后列表要刷新」的场景。
 * 自己（com.carfiles）不在列表里——卸自己没有意义。
 */
public class AppListActivity extends Activity {

    private static final int BG = 0xFF101014;
    private static final int TEXT_MAIN = 0xFFF2F4F8;
    private static final int TEXT_SUB = 0xFF8892A6;

    private final List<Entry> mData = new ArrayList<Entry>();
    private Adapter mAdapter;
    private TextView mHeader;
    private TextView mEmpty;

    static final class Entry {
        String pkg;
        String label;
        boolean system;
    }

    // ------------------------------------------------------------------ 生命周期

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("应用管理");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        int pad = dip(10);
        root.setPadding(pad, dip(12), pad, pad);
        root.setBackgroundColor(BG);
        setContentView(root);

        TextView hint = new TextView(this);
        hint.setText("点应用行操作：卸载 / 卸载但保留数据 / 启动。"
                + "系统应用卸前会再确认一次。");
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        hint.setTextColor(TEXT_SUB);
        root.addView(hint, matchWrap());

        mHeader = new TextView(this);
        mHeader.setText("读取中…");
        mHeader.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        mHeader.setTextColor(TEXT_SUB);
        LinearLayout.LayoutParams hLp = matchWrap();
        hLp.topMargin = dip(6);
        root.addView(mHeader, hLp);

        mEmpty = new TextView(this);
        mEmpty.setText("读取已安装应用…");
        mEmpty.setGravity(Gravity.CENTER);
        mEmpty.setTextColor(TEXT_SUB);
        mEmpty.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        LinearLayout.LayoutParams eLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        eLp.topMargin = dip(8);
        root.addView(mEmpty, eLp);

        ListView lv = new ListView(this);
        lv.setCacheColorHint(Color.TRANSPARENT);
        lv.setBackgroundColor(BG);
        lv.setDivider(new android.graphics.drawable.ColorDrawable(0xFF2C2C36));
        lv.setDividerHeight(dip(1));
        lv.setEmptyView(mEmpty);
        mAdapter = new Adapter();
        lv.setAdapter(mAdapter);
        lv.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                showActions(mData.get(position));
            }
        });
        LinearLayout.LayoutParams lvLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 4f);
        lvLp.topMargin = dip(6);
        root.addView(lv, lvLp);
    }

    @Override
    protected void onResume() {
        super.onResume();
        load();
    }

    // ------------------------------------------------------------------ 列表加载

    private void load() {
        mHeader.setText("读取中…");
        new Thread(new Runnable() {
            public void run() {
                final List<Entry> apps = queryApps();
                runOnUiThread(new Runnable() {
                    public void run() {
                        if (isFinishing()) {
                            return;
                        }
                        mData.clear();
                        mData.addAll(apps);
                        int sys = 0;
                        for (int i = 0; i < apps.size(); i++) {
                            if (apps.get(i).system) {
                                sys++;
                            }
                        }
                        mHeader.setText("共 " + apps.size() + " 个应用（其中系统应用 "
                                + sys + " 个）——点一行操作");
                        mAdapter.notifyDataSetChanged();
                    }
                });
            }
        }, "applist-load").start();
    }

    private List<Entry> queryApps() {
        List<Entry> out = new ArrayList<Entry>();
        try {
            PackageManager pm = getPackageManager();
            String self = getPackageName();
            List<ApplicationInfo> apps = pm.getInstalledApplications(0);
            for (int i = 0; i < apps.size(); i++) {
                ApplicationInfo ai = apps.get(i);
                if (ai == null || self.equals(ai.packageName)) {
                    continue;
                }
                Entry e = new Entry();
                e.pkg = ai.packageName;
                CharSequence label = null;
                try {
                    label = ai.loadLabel(pm);
                } catch (Throwable ignored) {
                }
                e.label = label == null || label.length() == 0
                        ? ai.packageName : String.valueOf(label);
                e.system = (ai.flags & ApplicationInfo.FLAG_SYSTEM) != 0;
                out.add(e);
            }
            // 系统应用排后面（日常卸载的是自己装的）
            Collections.sort(out, new Comparator<Entry>() {
                public int compare(Entry a, Entry b) {
                    if (a.system != b.system) {
                        return a.system ? 1 : -1;
                    }
                    return a.label.compareToIgnoreCase(b.label);
                }
            });
        } catch (Throwable t) {
            FLog.log(this, "AppListActivity: query fail " + t);
        }
        return out;
    }

    // ------------------------------------------------------------------ 操作菜单

    private void showActions(final Entry e) {
        new AlertDialog.Builder(this)
                .setTitle(e.label)
                .setMessage(e.pkg + (e.system
                        ? "\n\n⚠ 系统应用：卸了可能导致设置 / Launcher 等功能异常。" : ""))
                .setItems(new String[]{"卸载", "卸载但保留数据", "启动", "取消"},
                        new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface d, int which) {
                                if (which == 0) {
                                    confirmUninstall(e, false);
                                } else if (which == 1) {
                                    confirmUninstall(e, true);
                                } else if (which == 2) {
                                    doLaunch(e);
                                }
                            }
                        })
                .setNegativeButton("取消", null)
                .show();
    }

    private void confirmUninstall(final Entry e, final boolean keepData) {
        String warn = "确定卸载「" + e.label + "」？\n" + e.pkg;
        if (e.system) {
            warn += "\n\n⚠ 这是系统自带应用，卸载可能导致车机功能异常，确定要卸？";
        }
        warn += "\n\nroot 静默卸；无 root 会拉起系统确认界面，请在车机屏上点确定。";
        new AlertDialog.Builder(this)
                .setTitle(keepData ? "卸载（保留数据）" : "卸载")
                .setMessage(warn)
                .setPositiveButton("卸载", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int which) {
                        doUninstall(e, keepData);
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    private void doUninstall(final Entry e, final boolean keepData) {
        toast("正在卸载 " + e.label + " …");
        new Thread(new Runnable() {
            public void run() {
                // pm uninstall 带 30s 超时，绝不能在主线程跑
                final String result = AppManager.uninstall(AppListActivity.this, e.pkg, keepData);
                runOnUiThread(new Runnable() {
                    public void run() {
                        if (isFinishing()) {
                            return;
                        }
                        toast(result);
                        load();
                    }
                });
            }
        }, "uninstall").start();
    }

    private void doLaunch(final Entry e) {
        new Thread(new Runnable() {
            public void run() {
                final String result = AppManager.launch(AppListActivity.this, e.pkg);
                runOnUiThread(new Runnable() {
                    public void run() {
                        if (isFinishing()) {
                            return;
                        }
                        toast(result);
                    }
                });
            }
        }, "launch").start();
    }

    private void toast(String s) {
        try {
            Toast.makeText(this, s, Toast.LENGTH_LONG).show();
        } catch (Throwable ignored) {
        }
    }

    // ------------------------------------------------------------------ 适配器

    private class Adapter extends BaseAdapter {

        public int getCount() {
            return mData.size();
        }

        public Object getItem(int position) {
            return mData.get(position);
        }

        public long getItemId(int position) {
            return position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            Entry e = mData.get(position);
            LinearLayout row = new LinearLayout(AppListActivity.this);
            row.setOrientation(LinearLayout.VERTICAL);
            int pad = dip(10);
            row.setPadding(pad, pad, pad, pad);

            TextView label = new TextView(AppListActivity.this);
            label.setText(e.label + (e.system ? "（系统）" : ""));
            label.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
            label.setTypeface(Typeface.DEFAULT_BOLD);
            label.setTextColor(TEXT_MAIN);
            row.addView(label, matchWrap());

            TextView pkg = new TextView(AppListActivity.this);
            pkg.setText(e.pkg);
            pkg.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11);
            pkg.setTextColor(TEXT_SUB);
            LinearLayout.LayoutParams pLp = matchWrap();
            pLp.topMargin = dip(2);
            row.addView(pkg, pLp);

            return row;
        }
    }

    // ------------------------------------------------------------------ 小工具

    private LinearLayout.LayoutParams matchWrap() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private int dip(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }
}
