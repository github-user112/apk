package com.boottask;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * v1.6.55「选择应用」重写（smali ListView → Java GridView，一行 3 个）。
 *
 * 车机机屏横屏时正好呈 3 列 × N 行，告别单列超长列表的滑动操作。
 * 规则页点「选择应用」进来，选一个返回包名给调用方。
 */
public class AppPickActivity extends Activity {

    private static final int ACCENT = Color.rgb(47, 111, 237);
    private static final int COLS = 3;

    private final List<AppEntry> mItems = new ArrayList<AppEntry>();

    static final class AppEntry {
        String pkg;
        String label;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("选择应用");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(10), dp(8), dp(10), dp(10));
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        TextView hint = new TextView(this);
        hint.setText("点击一个应用返回上一页");
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        hint.setTextColor(Color.rgb(120, 120, 120));
        root.addView(hint, wrap());

        GridView grid = new GridView(this);
        grid.setNumColumns(COLS);
        grid.setVerticalSpacing(dp(6));
        grid.setHorizontalSpacing(dp(6));
        grid.setStretchMode(GridView.STRETCH_COLUMN_WIDTH);
        grid.setSelector(android.R.color.transparent);
        grid.setBackgroundColor(Color.TRANSPARENT);
        grid.setPadding(0, dp(6), 0, 0);
        grid.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(android.widget.AdapterView<?> parent, View view,
                                    int position, long id) {
                AppEntry e = mItems.get(position);
                Intent data = new Intent();
                data.putExtra("pkg", e.pkg);
                setResult(RESULT_OK, data);
                finish();
            }
        });
        LinearLayout.LayoutParams glp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        root.addView(grid, glp);
        setContentView(root);

        loadAppsAsync(grid);
    }

    private void loadAppsAsync(final GridView grid) {
        new Thread(new Runnable() {
            public void run() {
                final List<AppEntry> items = queryApps();
                runOnUiThread(new Runnable() {
                    public void run() {
                        if (isFinishing()) {
                            return;
                        }
                        mItems.clear();
                        mItems.addAll(items);
                        grid.setAdapter(new AppAdapter());
                        Toast.makeText(AppPickActivity.this,
                                "共 " + items.size() + " 个应用", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        }, "app-pick-load").start();
    }

    /** 列出带 LAUNCHER 的应用（按 label 排序、按包去重） */
    private List<AppEntry> queryApps() {
        List<AppEntry> out = new ArrayList<AppEntry>();
        try {
            Intent main = new Intent(Intent.ACTION_MAIN);
            main.addCategory(Intent.CATEGORY_LAUNCHER);
            android.content.pm.PackageManager pm = getPackageManager();
            List<android.content.pm.ResolveInfo> infos = pm.queryIntentActivities(main, 0);
            java.util.Set<String> seen = new java.util.HashSet<String>();
            for (int i = 0; i < infos.size(); i++) {
                android.content.pm.ResolveInfo ri = infos.get(i);
                if (ri == null || ri.activityInfo == null) {
                    continue;
                }
                String pkg = ri.activityInfo.packageName;
                if (pkg == null || seen.contains(pkg)) {
                    continue;
                }
                seen.add(pkg);
                AppEntry e = new AppEntry();
                e.pkg = pkg;
                CharSequence label = ri.loadLabel(pm);
                e.label = (label == null || TextUtils.isEmpty(label)) ? pkg : String.valueOf(label);
                out.add(e);
            }
            Collections.sort(out, new Comparator<AppEntry>() {
                @Override
                public int compare(AppEntry a, AppEntry b) {
                    return a.label.compareToIgnoreCase(b.label);
                }
            });
        } catch (Throwable t) {
            Toast.makeText(this, "读取应用列表失败：" + t, Toast.LENGTH_LONG).show();
        }
        return out;
    }

    private class AppAdapter extends BaseAdapter {
        public int getCount() {
            return mItems.size();
        }

        public Object getItem(int position) {
            return mItems.get(position);
        }

        public long getItemId(int position) {
            return position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            AppEntry e = mItems.get(position);
            if (convertView instanceof LinearLayout) {
                // 复用：darkest 保持一致
                LinearLayout row = (LinearLayout) convertView;
                TextView label = (TextView) row.getChildAt(0);
                TextView pkg = (TextView) row.getChildAt(1);
                label.setText(e.label);
                pkg.setText(e.pkg);
                return row;
            }
            LinearLayout row = new LinearLayout(AppPickActivity.this);
            row.setOrientation(LinearLayout.VERTICAL);
            row.setGravity(Gravity.CENTER);
            row.setPadding(dp(8), dp(12), dp(8), dp(12));
            row.setMinimumHeight(dp(64));
            row.setBackgroundColor(Color.WHITE);

            TextView label = new TextView(AppPickActivity.this);
            label.setText(e.label);
            label.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
            label.setTextColor(Color.rgb(34, 34, 34));
            label.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
            label.setGravity(Gravity.CENTER);
            label.setMaxLines(2);
            label.setEllipsize(TextUtils.TruncateAt.END);
            row.addView(label, wrap());

            TextView pkg = new TextView(AppPickActivity.this);
            pkg.setText(e.pkg);
            pkg.setTextSize(TypedValue.COMPLEX_UNIT_SP, 10);
            pkg.setTextColor(Color.rgb(120, 120, 120));
            pkg.setGravity(Gravity.CENTER);
            pkg.setSingleLine(true);
            pkg.setEllipsize(TextUtils.TruncateAt.END);
            row.addView(pkg, wrap());
            return row;
        }
    }

    private LinearLayout.LayoutParams wrap() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private int dp(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }
}
