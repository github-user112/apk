package com.boottask;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

/**
 * v1.6.54「添加规则」重写（原 smali 版 Spinner → RadioGroup 单选）。
 *
 * 车机屏不方便弹下拉框（跟外面看车辆的那层多媒体套壳冲突、掉�的点很小），
 * 触发事件 / 执行动作各一份单选项，整页一个 ScrollView 包住，大字大触点。
 *
 * 编译约束（不变）：stub android.jar 无 org.json；smali 类（RuleStore/AppPickActivity）
 * 对 javac 不可见 —— JSON 一律反射 newInstance，组件拉起用 setClassName 字符串，
 * RuleStore.add 走反射（MainActivity 同一套路）。
 */
public class EditActivity extends Activity {
    private static final String[] EVENT_KEYS   = {"boot", "screen_on", "unlock", "usb_phone"};
    private static final String[] EVENT_LABELS = {"开机完成", "屏幕亮屏", "屏幕解锁", "USB 连接手机"};
    private static final String[] ACTION_KEYS   = {"open", "close", "mute", "unmute", "broadcast", "rootcmd"};
    private static final String[] ACTION_LABELS = {"打开应用", "关闭应用", "静音", "取消静音", "发送广播", "Root 命令"};

    private static final int ACCENT = Color.rgb(47, 111, 237);

    private EditText etArg;
    private EditText etDelay;
    private TextView tvPkg;
    private RadioGroup rgEvent;
    private RadioGroup rgAction;
    private LinearLayout rowApp;
    private LinearLayout rowArg;
    private String selectedPkg = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("添加规则");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(10), dp(8), dp(10), dp(10));
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        TextView head = new TextView(this);
        head.setText("添加规则");
        head.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
        head.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        head.setTextColor(Color.rgb(34, 34, 34));
        root.addView(head, wrap());

        TextView hint = new TextView(this);
        hint.setText("点击选项即选择；选“打开/关闭应用”时必须选择应用");
        hint.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        hint.setTextColor(Color.rgb(120, 120, 120));
        root.addView(hint, wrap());

        // ---- 触发事件 ----
        LinearLayout rEvent = new LinearLayout(this);
        rEvent.setOrientation(LinearLayout.VERTICAL);
        root.addView(rEvent, wrap());
        addLabel(rEvent, "触发事件");
        rgEvent = new RadioGroup(this);
        rgEvent.setOrientation(RadioGroup.VERTICAL);
        addRadioRows(rgEvent, EVENT_LABELS, 2);
        rEvent.addView(rgEvent, wrap());

        // ---- 执行动作 ----
        LinearLayout rAction = new LinearLayout(this);
        rAction.setOrientation(LinearLayout.VERTICAL);
        root.addView(rAction, wrap());
        addLabel(rAction, "执行动作");
        rgAction = new RadioGroup(this);
        rgAction.setOrientation(RadioGroup.VERTICAL);
        addRadioRows(rgAction, ACTION_LABELS, 3);
        rAction.addView(rgAction, wrap());

        // 参数（广播填 action；Root 填命令）——只在 broadcast/rootcmd 时可见
        rowArg = buildRow(root, "参数（广播填 action；Root 填命令）");
        etArg = new EditText(this);
        etArg.setSingleLine(true);
        etArg.setInputType(1 /* text */);
        etArg.setHint("如：com.xxx.SWITCH_SOURCE");
        etArg.setBackgroundColor(Color.WHITE);
        etArg.setTextColor(Color.rgb(34, 34, 34));
        etArg.setPadding(dp(8), dp(8), dp(8), dp(8));
        rowArg.addView(etArg, matchWrap());
        rowArg.setVisibility(View.GONE);

        // ---- 等待秒数 ----
        LinearLayout rDelay = new LinearLayout(this);
        rDelay.setOrientation(LinearLayout.VERTICAL);
        root.addView(rDelay, wrap());
        addLabel(rDelay, "执行前等待秒数");
        etDelay = new EditText(this);
        etDelay.setSingleLine(true);
        etDelay.setInputType(2 /* number */);
        etDelay.setText("0");
        etDelay.setBackgroundColor(Color.WHITE);
        etDelay.setTextColor(Color.rgb(34, 34, 34));
        etDelay.setPadding(dp(8), dp(8), dp(8), dp(8));
        rDelay.addView(etDelay, matchWrap());

        // ---- 选择应用 ----
        LinearLayout rApp = buildRow(root, "选择应用（打开/关闭应用时必选）");
        Button btnPick = new Button(this);
        btnPick.setText("选择应用…");
        btnPick.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivityForResult(new Intent().setClassName(getPackageName(),
                        getPackageName() + ".AppPickActivity"), 1);
            }
        });
        rApp.addView(btnPick, matchWrap());
        tvPkg = new TextView(this);
        tvPkg.setText("未选择应用");
        tvPkg.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        tvPkg.setTextColor(Color.rgb(80, 86, 100));
        tvPkg.setPadding(0, dp(4), 0, 0);
        rApp.addView(tvPkg, matchWrap());
        rowApp = rApp;
        rowApp.setVisibility(View.VISIBLE);

        // ---- 保存 ----
        Button save = new Button(this);
        save.setText("保存规则");
        save.setTextColor(Color.WHITE);
        save.setBackgroundColor(ACCENT);
        save.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                saveRule();
            }
        });
        LinearLayout.LayoutParams slp = matchWrap();
        slp.topMargin = dp(10);
        root.addView(save, slp);

        // 根据动作联动显示「参数/应用」行
        rgAction.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {
                applyActionVisibility();
            }
        });
        applyActionVisibility();

        android.widget.ScrollView sv = new android.widget.ScrollView(this);
        sv.addView(root, new android.widget.ScrollView.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        setContentView(sv);
    }

    // ---------------------------------------------------------------- 视图帮手

    /** 把 labels 每行 perRow 个摆进去（多行），第一个默认选中 */
    private void addRadioRows(RadioGroup group, String[] labels, int perRow) {
        int i = 0;
        while (i < labels.length) {
            LinearLayout row = new LinearLayout(this);
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setWeightSum(perRow);
            int end = Math.min(i + perRow, labels.length);
            for (int j = i; j < end; j++) {
                RadioButton rb = radio(labels[j], j == 0);
                rb.setTag(Integer.valueOf(j));
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                        0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                row.addView(rb, lp);
            }
            group.addView(row, wrap());
            i = end;
        }
    }

    private RadioButton radio(String label, boolean checked) {
        RadioButton rb = new RadioButton(this);
        rb.setText(label);
        rb.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        rb.setTextColor(Color.rgb(34, 34, 34));
        rb.setChecked(checked);
        rb.setPadding(dp(4), dp(6), dp(4), dp(6));
        rb.setMinHeight(dp(44));
        return rb;
    }

    private LinearLayout buildRow(LinearLayout parent, String label) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams lp = matchWrap();
        lp.topMargin = dp(6);
        parent.addView(row, lp);
        TextView lbl = new TextView(this);
        lbl.setText(label);
        lbl.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        lbl.setTextColor(Color.rgb(120, 120, 120));
        row.addView(lbl, wrap());
        return row;
    }

    private void addLabel(LinearLayout parent, String text) {
        TextView lbl = new TextView(this);
        lbl.setText(text);
        lbl.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        lbl.setTextColor(Color.rgb(120, 120, 120));
        lbl.setPadding(0, dp(8), 0, 0);
        parent.addView(lbl, wrap());
    }

    private void applyActionVisibility() {
        String action = currentAction();
        boolean needArg = "broadcast".equals(action) || "rootcmd".equals(action);
        boolean needApp = "open".equals(action) || "close".equals(action);
        rowArg.setVisibility(needArg ? View.VISIBLE : View.GONE);
        rowApp.setVisibility(needApp ? View.VISIBLE : View.GONE);
    }

    private String currentEvent() {
        int idx = checkedIndexInternal(rgEvent);
        return EVENT_KEYS[idx >= 0 ? idx : 0];
    }

    private String currentAction() {
        int idx = checkedIndexInternal(rgAction);
        return ACTION_KEYS[idx >= 0 ? idx : 0];
    }

    /** 递归找被 checked 的 RadioButton 的 tag（它们下标），radio group 子项可能被行容器包着 */
    private int checkedIndexInternal(View root) {
        if (root instanceof RadioButton) {
            RadioButton rb = (RadioButton) root;
            if (rb.isChecked() && rb.getTag() instanceof Integer) {
                return (Integer) rb.getTag();
            }
            return -1;
        }
        if (root instanceof ViewGroup) {
            ViewGroup vg = (ViewGroup) root;
            for (int i = 0; i < vg.getChildCount(); i++) {
                int r = checkedIndexInternal(vg.getChildAt(i));
                if (r >= 0) {
                    return r;
                }
            }
        }
        return -1;
    }

    // ---------------------------------------------------------------- 回调

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != RESULT_OK || data == null) {
            return;
        }
        String p = data.getStringExtra("pkg");
        if (p != null && p.length() > 0) {
            selectedPkg = p;
            tvPkg.setText(p);
        }
    }

    private void saveRule() {
        String event = currentEvent();
        String action = currentAction();

        // 等待秒数
        int delay;
        try {
            delay = Integer.parseInt(etDelay.getText().toString().trim());
        } catch (Throwable t) {
            delay = 0;
        }
        if (delay < 0) {
            delay = 0;
        }

        // 打开/关闭应用必须选应用
        if (("open".equals(action) || "close".equals(action)) && selectedPkg.length() == 0) {
            Toast.makeText(this, "请先选择应用", Toast.LENGTH_SHORT).show();
            return;
        }
        // 广播/Root 必须有参数
        String arg = etArg.getText().toString().trim();
        if (("broadcast".equals(action) || "rootcmd".equals(action)) && arg.length() == 0) {
            Toast.makeText(this, "请填写参数（广播 action 或 Root 命令）", Toast.LENGTH_SHORT).show();
            return;
        }

        try {
            // org.json 反射 newInstance（stub 无 org.json）
            Class<?> jsonClass = Class.forName("org.json.JSONObject");
            Object json = jsonClass.getDeclaredConstructor().newInstance();
            put(json, "event", event);
            put(json, "action", action);
            put(json, "delay", Integer.valueOf(delay));
            put(json, "enabled", Boolean.TRUE);
            if (selectedPkg.length() > 0) {
                put(json, "pkg", selectedPkg);
            }
            if (arg.length() > 0) {
                put(json, "arg", arg);
            }
            // RuleStore.add(Context, JSONObject) 反射
            Class<?> ruleStore = Class.forName("com.boottask.RuleStore");
            Object r = ruleStore.getMethod("add", Context.class, jsonClass)
                    .invoke(null, this, json);
            boolean ok = r instanceof Boolean && ((Boolean) r).booleanValue();
            if (!ok) {
                Toast.makeText(this, "保存失败，请查看日志", Toast.LENGTH_SHORT).show();
                BootDiagnostics.log(this, "EditActivity: RuleStore.add 返回 false");
                return;
            }
            startService(new Intent().setClassName(getPackageName(),
                    getPackageName() + ".ExecService"));
            Toast.makeText(this, "已保存", Toast.LENGTH_SHORT).show();
            finish();
        } catch (Throwable t) {
            BootDiagnostics.log(this, "EditActivity save failed: " + t);
            Toast.makeText(this, "保存失败，请查看日志", Toast.LENGTH_SHORT).show();
        }
    }

    private static void put(Object json, String key, Object value) throws Exception {
        json.getClass().getMethod("put", String.class, Object.class)
                .invoke(json, key, value);
    }

    // ---------------------------------------------------------------- 尺寸/布局帮手

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
