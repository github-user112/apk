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
import android.widget.CheckBox;
import android.widget.Button;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * v1.6.57 共享应用选择器 —— 「添加规则」和「禁用开机自启软件」统一入口。
 *
 * 两种模式（extras）：
 *   mode=pick_one   单选 → 立即返回 RESULT_OK + extra pkg；
 *   mode=multi      多选（带勾选框，整行可击）→「确定」按钮返回 RESULT_OK + extra pkgs(String[])。
 *
 * 两种过滤（extras）：
 *   filter=launcher     只列有入口的 App（添加规则「打开应用」用）；
 *   filter=third_party  只列第三方 App（禁用开机自启软件用；排除系统预装与本程序自己）。
 *
 * title：顶部提示文案；selected (String[])：多选模式下预勾选（pkg 名）。
 * 3 列一行，尽量不滚动。
 */
public class AppPickActivity extends Activity {

    public static final String EXTRA_MODE     = "mode";        // pick_one | multi
    public static final String EXTRA_FILTER   = "filter";      // launcher | third_party
    public static final String EXTRA_TITLE    = "title";       // 子标题
    public static final String EXTRA_SELECTED = "selected";    // String[] 预选
    public static final String EXTRA_PKG      = "pkg";         // pick_one 返回值
    public static final String EXTRA_PKGS     = "pkgs";        // multi 返回值

    private static final int ACCENT = Color.rgb(47, 111, 237);
    private static final int COLS = 3;

    private String mMode = "pick_one";
    private String mFilter = "launcher";
    private String mSubTitle = "勾选后点「确定」返回";
    private final List<AppEntry> mItems = new ArrayList<AppEntry>();
    private final Set<Integer> mChecked = new HashSet<Integer>();          // pick_one 记 -1 个；multi 记索引集合
    private final Set<String>  mSelectedPkgs = new HashSet<String>();     // pkg 集合（返回用）
    private TextView mCount;
    private AppAdapter mAdapter;
    private Button mDoneButton;

    static final class AppEntry {
        String pkg;
        String label;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        readExtras();
        setTitle(mSubTitle != null ? mSubTitle : "选择应用");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(10), dp(8), dp(10), dp(10));
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        LinearLayout head = new LinearLayout(this);
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        root.addView(head, wrap());

        TextView hint = new TextView(this);
        hint.setText(mSubTitle);
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        hint.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        head.addView(hint, hlp);

        if ("multi".equals(mMode)) {
            mCount = new TextView(this);
            mCount.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
            mCount.setTextColor(ACCENT);
            mCount.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
            head.addView(mCount, matchWrap());
        }

        GridView grid = new GridView(this);
        grid.setNumColumns(COLS);
        grid.setVerticalSpacing(dp(6));
        grid.setHorizontalSpacing(dp(6));
        grid.setStretchMode(GridView.STRETCH_COLUMN_WIDTH);
        grid.setSelector(android.R.color.transparent);
        grid.setBackgroundColor(Color.TRANSPARENT);
        grid.setPadding(0, dp(6), 0, 0);
        grid.setFocusable(false);
        grid.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(android.widget.AdapterView<?> parent, View view,
                                    int position, long id) {
                toggleAt(position);
            }
        });
        LinearLayout.LayoutParams glp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        root.addView(grid, glp);

        // v1.6.58：单选和多选都用「确定」返回（点格只选不退）——无条件渲染，不再进 if "multi"
        Button done = new Button(this);
        done.setText("确定");
        done.setTextColor(Color.WHITE);
        done.setBackgroundColor(ACCENT);
        done.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (mChecked.isEmpty()) {
                    Toast.makeText(AppPickActivity.this, "未选任何应用", Toast.LENGTH_SHORT).show();
                    return;
                }
                if ("multi".equals(mMode)) {
                    finishMulti();
                } else {
                    finishOne();
                }
            }
        });
        LinearLayout.LayoutParams dlp = matchWrap();
        dlp.topMargin = dp(8);
        root.addView(done, dlp);
        mDoneButton = done;

        setContentView(root);
        loadAppsAsync(grid);
    }

    private void readExtras() {
        try {
            Intent it = getIntent();
            if (it == null) {
                return;
            }
            if (it.hasExtra(EXTRA_MODE)) {
                mMode = it.getStringExtra(EXTRA_MODE);
            }
            if (it.hasExtra(EXTRA_FILTER)) {
                mFilter = it.getStringExtra(EXTRA_FILTER);
            }
            if (it.hasExtra(EXTRA_TITLE)) {
                mSubTitle = it.getStringExtra(EXTRA_TITLE);
            }
            if (it.hasExtra(EXTRA_SELECTED)) {
                String[] sel = it.getStringArrayExtra(EXTRA_SELECTED);
                if (sel != null) {
                    for (int i = 0; i < sel.length; i++) {
                        if (sel[i] != null && sel[i].length() > 0) {
                            mSelectedPkgs.add(sel[i]);
                        }
                    }
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private void toggleAt(int position) {
        Integer key = Integer.valueOf(position);
        String pkg = mItems.get(position).pkg;
        if ("multi".equals(mMode)) {
            if (mChecked.contains(key)) {
                mChecked.remove(key);
                mSelectedPkgs.remove(pkg);
            } else {
                mChecked.add(key);
                mSelectedPkgs.add(pkg);
            }
        } else {
            mChecked.clear();
            mSelectedPkgs.clear();
            mChecked.add(key);
            mSelectedPkgs.add(pkg);
        }
        updateCount();
        if (mDoneButton != null) {
            mDoneButton.setText(doneText());
            if (mMode.equals("pick_one")) {
                mDoneButton.setBackgroundColor(ACCENT);
            }
        }
        if (mAdapter != null) {
            mAdapter.notifyDataSetChanged();
        }
    }

    private String doneText() {
        if ("multi".equals(mMode)) {
            return mChecked.isEmpty() ? "确定（未选）" : ("确定（已选 " + mChecked.size() + "）");
        }
        return "确定";
    }

    private void finishOne() {
        String pkg = null;
        for (Integer idx : mChecked) {
            pkg = mItems.get(idx).pkg;
        }
        Intent data = new Intent();
        data.putExtra(EXTRA_PKG, pkg);
        setResult(RESULT_OK, data);
        finish();
    }

    private void updateCount() {
        if (mCount != null) {
            mCount.setText("已选 " + mChecked.size() + " 个");
        }
    }

    private void finishMulti() {
        String[] selected = new String[mSelectedPkgs.size()];
        int i = 0;
        for (String p : mSelectedPkgs) {
            selected[i++] = p;
        }
        Intent data = new Intent();
        data.putExtra(EXTRA_PKGS, selected);
        setResult(RESULT_OK, data);
        finish();
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
                        // 多选：回填包名勾选的应用
                        if ("multi".equals(mMode)) {
                            for (int i = 0; i < mItems.size(); i++) {
                                if (mSelectedPkgs.contains(mItems.get(i).pkg)) {
                                    mChecked.add(Integer.valueOf(i));
                                }
                            }
                        }
                        mAdapter = new AppAdapter();
                        grid.setAdapter(mAdapter);
                        updateCount();
                        Toast.makeText(AppPickActivity.this,
                                "共 " + items.size() + " 个应用", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        }, "app-pick-load").start();
    }

    private List<AppEntry> queryApps() {
        List<AppEntry> out = new ArrayList<AppEntry>();
        try {
            if ("third_party".equals(mFilter)) {
                collectThirdParty(out);
            } else {
                collectLauncher(out);
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

    private void collectLauncher(List<AppEntry> out) throws Exception {
        Intent main = new Intent(Intent.ACTION_MAIN);
        main.addCategory(Intent.CATEGORY_LAUNCHER);
        android.content.pm.PackageManager pm = getPackageManager();
        List<android.content.pm.ResolveInfo> infos = pm.queryIntentActivities(main, 0);
        Set<String> seen = new HashSet<String>();
        for (int i = 0; i < infos.size(); i++) {
            android.content.pm.ResolveInfo ri = infos.get(i);
            if (ri == null || ri.activityInfo == null) {
                continue;
            }
            String pkg = ri.activityInfo.packageName;
            if (pkg == null || !seen.add(pkg)) {
                continue;
            }
            addApp(out, pkg, ri.loadLabel(pm));
        }
    }

    private void collectThirdParty(List<AppEntry> out) throws Exception {
        android.content.pm.PackageManager pm = getPackageManager();
        List<android.content.pm.ApplicationInfo> apps = pm.getInstalledApplications(0);
        String self = getPackageName();
        for (int i = 0; i < apps.size(); i++) {
            android.content.pm.ApplicationInfo ai = apps.get(i);
            if (ai == null || self.equals(ai.packageName)) {
                continue;
            }
            if ((ai.flags & android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0) {
                continue;
            }
            addApp(out, ai.packageName, ai.loadLabel(pm));
        }
    }

    private void addApp(List<AppEntry> out, String pkg, CharSequence label) {
        AppEntry e = new AppEntry();
        e.pkg = pkg;
        e.label = (label == null || TextUtils.isEmpty(label)) ? pkg : String.valueOf(label);
        out.add(e);
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
            LinearLayout row;
            if (convertView instanceof LinearLayout) {
                row = (LinearLayout) convertView;
            } else {
                row = newRow();
            }
            TextView label = (TextView) row.getChildAt(0);
            TextView pkg = (TextView) row.getChildAt(1);
            CheckBox cb = (CheckBox) row.getChildAt(2);
            label.setText(e.label);
            pkg.setText(e.pkg);
            boolean checked = mChecked.contains(Integer.valueOf(position));
            if ("multi".equals(mMode)) {
                cb.setVisibility(View.VISIBLE);
                cb.setChecked(checked);
                row.setBackgroundColor(checked ? 0xFFE8EEFF : Color.WHITE);
            } else {
                cb.setVisibility(View.GONE);
                row.setBackgroundColor(Color.WHITE);
            }
            return row;
        }

        private LinearLayout newRow() {
            LinearLayout row = new LinearLayout(AppPickActivity.this);
            row.setOrientation(LinearLayout.VERTICAL);
            row.setGravity(Gravity.CENTER);
            row.setPadding(dp(8), dp(10), dp(8), dp(10));
            row.setMinimumHeight(dp(70));
            row.setBackgroundColor(Color.WHITE);

            TextView label = new TextView(AppPickActivity.this);
            label.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
            label.setTextColor(Color.rgb(34, 34, 34));
            label.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
            label.setGravity(Gravity.CENTER);
            label.setMaxLines(2);
            label.setEllipsize(TextUtils.TruncateAt.END);
            row.addView(label, wrap());

            TextView pkg = new TextView(AppPickActivity.this);
            pkg.setTextSize(TypedValue.COMPLEX_UNIT_SP, 9);
            pkg.setTextColor(Color.rgb(140, 140, 140));
            pkg.setGravity(Gravity.CENTER);
            pkg.setSingleLine(true);
            pkg.setEllipsize(TextUtils.TruncateAt.END);
            row.addView(pkg, wrap());

            CheckBox cb = new CheckBox(AppPickActivity.this);
            cb.setFocusable(false);
            cb.setClickable(false); // 整行可击
            row.addView(cb, matchWrap());
            return row;
        }
    }

    private LinearLayout.LayoutParams wrap() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    private LinearLayout.LayoutParams matchWrap() {
        return wrap();
    }

    private int dp(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }
}
