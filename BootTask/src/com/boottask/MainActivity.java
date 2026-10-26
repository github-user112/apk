package com.boottask;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
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
 * v1.6.41 首页单页化（用户拍板的功能减法）：
 *  - 排查页（RTT/扫描/低速修复）删掉——亿连断连排查已闭环，现场数据由 RateWatcher
 *    常开蹲守自动落盘，要发日志用「下载日志」；
 *  - 声音模块只留「开机抢占音源」；
 *  - 更多页 / 工具模块 / Root 工具 / 已排除页 全删；
 *  - 保留：我的规则 + 开机抢占音源 + 重启亿连 + 下载日志 + 按键与弹窗入口。
 *    （重启车机需 root，本车无 su，v1.6.43 起按钮已删）
 *
 * 布局：整页不滚动。左列=规则列表（吃满高度）；右列=声音 / 按键入口 / 设备。
 *
 * 编译期约束（不变）：stub android.jar 无 org.json；smali 类（RuleStore/Util/
 * EditActivity）对 javac 不可见 —— 规则存取走反射，组件拉起用 setClassName 字符串。
 */
public class MainActivity extends Activity implements View.OnClickListener,
        AdapterView.OnItemClickListener, DialogInterface.OnClickListener {

    /** 分区卡片标题左侧色条统一主色 */
    private static final int ACCENT = Color.rgb(47, 111, 237);

    private Object arr;          // org.json.JSONArray，反射触达
    private int pending;
    private ListView lv;
    private TextView countText;
    private Button addRuleButton;
    private Button claimBootButton;
    private Button keysButton;
    private Button rebootYlButton;
    private Button logButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("开机任务");

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dip(12), dip(8), dip(12), dip(10));
        root.setBackgroundColor(Color.rgb(245, 246, 248));

        // 头部一行
        LinearLayout headRow = new LinearLayout(this);
        headRow.setOrientation(LinearLayout.HORIZONTAL);
        headRow.setGravity(Gravity.CENTER_VERTICAL);
        TextView title = new TextView(this);
        title.setText("开机任务");
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        title.setTextColor(Color.rgb(34, 34, 34));
        headRow.addView(title, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView sub = new TextView(this);
        sub.setText("规则 / 开机抢占音源 / 按键转发 / 设备重启");
        sub.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        sub.setTextColor(Color.rgb(120, 120, 120));
        LinearLayout.LayoutParams subLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        subLp.leftMargin = dip(10);
        headRow.addView(sub, subLp);
        root.addView(headRow, matchWrap());

        // 内容：横屏双列，整页不滚动
        LinearLayout cols = new LinearLayout(this);
        cols.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout.LayoutParams colsLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        colsLp.topMargin = dip(8);
        root.addView(cols, colsLp);

        // 左列：我的规则
        LinearLayout left = new LinearLayout(this);
        left.setOrientation(LinearLayout.VERTICAL);
        cols.addView(left, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 0.9f));

        countText = new TextView(this);
        countText.setText("");
        countText.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12);
        countText.setTextColor(Color.rgb(140, 140, 140));
        countText.setGravity(Gravity.RIGHT | Gravity.CENTER_VERTICAL);
        LinearLayout cRule = card(left, "我的规则", null, countText);
        fillPanel(cRule);

        addRuleButton = new Button(this);
        addRuleButton.setText("＋ 添加规则");
        addRuleButton.setOnClickListener(this);
        addIn(cRule, addRuleButton, dip(8));

        ListView lv2 = new ListView(this);
        lv2.setCacheColorHint(Color.TRANSPARENT);
        lv2.setDivider(new ColorDrawable(Color.rgb(224, 224, 224)));
        lv2.setDividerHeight(dip(1));
        LinearLayout.LayoutParams lvLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        lvLp.topMargin = dip(6);
        cRule.addView(lv2, lvLp);
        this.lv = lv2;

        // 右列：声音 + 按键入口 + 设备
        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1.1f);
        rlp.leftMargin = dip(4);
        cols.addView(right, rlp);

        LinearLayout cMute = card(right, "声音", null);
        claimBootButton = new Button(this);
        claimBootButton.setOnClickListener(this);
        addIn(cMute, claimBootButton);

        LinearLayout cKey = card(right, "按键与弹窗", null);
        keysButton = new Button(this);
        keysButton.setText("按键与弹窗设置");
        keysButton.setOnClickListener(this);
        addIn(cKey, keysButton);

        LinearLayout cDev = card(right, "设备", null);
        rebootYlButton = new Button(this);
        rebootYlButton.setText("重启亿连");
        rebootYlButton.setOnClickListener(this);
        addIn(cDev, rebootYlButton);

        logButton = new Button(this);
        logButton.setText("下载日志（亿连连接与系统运行信息，扫码取走）");
        logButton.setOnClickListener(this);
        addIn(cDev, logButton);

        setContentView(root);

        BootDiagnostics.log(this, "MainActivity opened");
        // ExecService 是 smali 类，javac 不可见 → setClassName 字符串形式
        startService(new Intent().setClassName(getPackageName(), getPackageName() + ".ExecService"));
    }

    @Override
    protected void onResume() {
        super.onResume();
        refresh();
        updateMuteUi();
    }

    /** v1.6.38：开机抢占音源按钮文案随设置刷新 */
    private void updateMuteUi() {
        try {
            claimBootButton.setText(MediaMute.isBootClaimEnabled(this)
                    ? "开机抢占音源：已开（播 " + MediaMute.bootClaimSecs(this)
                      + " 秒静音）——点我改/关"
                    : "开机抢占音源：开机后播静音抢回声音（默认关，点我开）");
        } catch (Throwable ignored) {
        }
    }

    // ---------------------------------------------------------------- 点击事件

    @Override
    public void onClick(View v) {
        if (v == addRuleButton) {
            // EditActivity 是 smali 类，javac 不可见 → setClassName 字符串形式
            startActivity(new Intent().setClassName(getPackageName(),
                    getPackageName() + ".EditActivity"));
            return;
        }
        if (v == claimBootButton) {
            final int[] choices = {0, 15, 30, 60, 120, 180};
            String[] labels = new String[choices.length];
            labels[0] = "关闭开机抢占";
            for (int i = 1; i < choices.length; i++) {
                labels[i] = "开机后播静音 " + choices[i] + " 秒";
            }
            new AlertDialog.Builder(this)
                    .setTitle("开机抢占音源（把开机巨响的收音机/多媒体静音，等亿连接管）")
                    .setItems(labels, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface d, int w) {
                            if (w == 0) {
                                MediaMute.setBootClaim(MainActivity.this, false,
                                        MediaMute.bootClaimSecs(MainActivity.this));
                                Toast.makeText(MainActivity.this, "已关闭开机抢占",
                                        Toast.LENGTH_SHORT).show();
                            } else {
                                MediaMute.setBootClaim(MainActivity.this, true, choices[w]);
                                Toast.makeText(MainActivity.this,
                                        "已开启：开机后播 " + choices[w] + " 秒静音抢音源",
                                        Toast.LENGTH_LONG).show();
                            }
                            updateMuteUi();
                        }
                    })
                    .show();
            return;
        }
        if (v == keysButton) {
            startActivity(new Intent(this, ToolboxActivity.class));
            return;
        }
        if (v == rebootYlButton) {
            Toast.makeText(this, "重启亿连中…", Toast.LENGTH_SHORT).show();
            new Thread(new Runnable() {
                public void run() {
                    final String r = NoRootFixes.restartYilian(MainActivity.this);
                    runOnUiThread(new Runnable() {
                        public void run() {
                            Toast.makeText(MainActivity.this,
                                    r.length() > 200 ? r.substring(0, 200) : r,
                                    Toast.LENGTH_LONG).show();
                        }
                    });
                }
            }).start();
            return;
        }
        if (v == logButton) {
            // 快照抓取（su 探测 + logcat 可达 30s）由 LogActivity.onCreate 的后台线程执行
            startActivity(new Intent(this, BootDiagnostics.LogActivity.class));
            return;
        }
    }

    // ---------------------------------------------------------------- 规则区

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
        // android.R.layout.simple_list_item_1 是白字布局，放在白卡片上等于隐形（v1.6.35 实锤）——
        // 覆写 getView 改深色。
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(
                this, android.R.layout.simple_list_item_1, items) {
            @Override
            public View getView(int position, View convertView, ViewGroup parent) {
                View v = super.getView(position, convertView, parent);
                if (v instanceof TextView) {
                    ((TextView) v).setTextColor(Color.rgb(34, 34, 34));
                    ((TextView) v).setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
                }
                return v;
            }
        };
        lv.setAdapter(adapter);
        lv.setOnItemClickListener(this);
    }

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

    // ---------------------------------------------------------------- 反射帮手（RuleStore/Util 是 smali 类）

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

    private static int intCall(Object obj, String method) {
        try {
            return ((Integer) obj.getClass().getMethod(method).invoke(obj)).intValue();
        } catch (Throwable t) {
            return 0;
        }
    }

    private String describeAt(int index) throws Exception {
        Object rule = arr.getClass()
                .getMethod("getJSONObject", int.class).invoke(arr, Integer.valueOf(index));
        return (String) Class.forName("com.boottask.Util")
                .getMethod("describe", Class.forName("org.json.JSONObject"))
                .invoke(null, rule);
    }

    /** 取日志文本最后 n 行（ToolboxActivity 状态区也在用） */
    static String tail(String log, int n) {
        String[] lines = log.split("\n");
        StringBuilder sb = new StringBuilder();
        int from = Math.max(0, lines.length - n);
        for (int i = from; i < lines.length; i++) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append(lines[i]);
        }
        return sb.toString();
    }

    // ---------------------------------------------------------------- 尺寸/布局帮手

    private int dip(int v) {
        return (int) (TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v,
                getResources().getDisplayMetrics()) + 0.5f);
    }

    private LinearLayout.LayoutParams matchWrap() {
        return new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
    }

    /** 让卡片填满所在列（高度吃完剩余空间） */
    private void fillPanel(LinearLayout card) {
        LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) card.getLayoutParams();
        lp.height = 0;
        lp.weight = 1f;
        card.setLayoutParams(lp);
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
        box.setBackgroundDrawable(bg);   // setBackgroundDrawable：API<16 也安全

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
