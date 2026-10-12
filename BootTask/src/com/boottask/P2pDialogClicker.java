package com.boottask;

import android.accessibilityservice.AccessibilityService;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

import java.util.ArrayList;
import java.util.List;

/**
 * v1.6.30 直连免打扰：**无障碍自动点掉 P2P 配对弹窗**（取代 v1.6.29 那套假的隐藏 API 方案）。
 *
 * <p>为什么必须走无障碍：v1.6.29 假设 framework 有
 * {@code WIFI_P2P_CONNECTION_REQUESTED} 广播 + 隐藏方法
 * {@code WifiP2pManager.requestGroupInfo(WifiP2pDevice)}。从 android-all 4.4 全量 jar
 * （含 @hide）逐项复核，**三者全不存在**：P2P 只有 6 个标准 action；
 * {@code requestGroupInfo} 只有查组信息的 {@code (Channel, GroupInfoListener)} 签名；
 * EXTRA 键真值是 {@code wifiP2pDevice}。那套组合来自博客，未经验证，功能静默无效。
 * 4.4 上唯一能拿到「弹窗出现了」的合法途径就是无障碍——系统弹窗也在可访问性树里。
 *
 * <p>做法：收到 {@link AccessibilityEvent#TYPE_WINDOW_STATE_CHANGED} /
 * {@TYPE_WINDOW_CONTENT_CHANGED} → {@link #getRootInActiveWindow()} 取树 →
 * 遍历节点，命中「确定/允许/连接/OK…」这类**同意类按钮**且窗口里出现
 * **P2P 场景特征文本**时，{@code performAction(ACTION_CLICK)}。
 *
 * <p>安全纪律（无障碍能点任何界面，误点代价很大）：
 * ① 只在开关打开时动作；**不碰自己的窗口**（包名相同直接放行）；
 * ② 必须同时看到 P2P 场景特征文本才点，且看到拒绝类文案（取消/拒绝/不允许…）立刻放弃——
 *    宁可让用户自己点，也不替用户做可能错的选择；
 * ③ 同意按钮判定是「排除优先 + 短文本精确匹配」，"不允许连接" 不会因为含"允许"被点；
 * ④ 冷却 3 秒防连点；
 * ⑤ 全程落日志（含为什么没点），不抛异常——回调里抛异常会让系统禁用本服务。
 *
 * <p>4.4 适配：{@code AccessibilityEvent.getText()/getSource()/getClassName()}
 * 在 stub 里声明在父类 {@code AccessibilityRecord} 上，直接引用容易踩编译坑，
 * 所以本类一律不碰 event 上的这些方法，只用 {@code getRootInActiveWindow()} 重新取树。
 */
public class P2pDialogClicker extends AccessibilityService {

    /** 同意类按钮文案（中英都覆盖，车机 ROM 文案不统一）。 */
    private static final String[] ACCEPT_TEXT = {
            "确定", "允许", "同意", "接受", "连接", "配对", "继续", "好", "是",
            "OK", "Allow", "Accept", "Connect", "Pair", "Continue", "Yes", "Agree"
    };
    /** 拒绝类文案——命中即放弃点击。 */
    private static final String[] REJECT_TEXT = {
            "拒绝", "取消", "否认", "不同意", "稍后", "忽略",
            "Cancel", "Deny", "Reject", "Later", "Ignore", "No"
    };
    /** P2P 场景特征文本：窗口里出现任一，才认为是配对/直连相关弹窗。 */
    private static final String[] SCENE_TEXT = {
            "配对", "连接", "直连", "加入", "设备", "车机", "手机",
            "P2P", "p2p", "WiFi Direct", "wifi direct", "CarLife", "carlife",
            "允许连接", "请求连接", "pairing", "Pairing", "connect", "Connect", "device"
    };

    private static final long COOLDOWN_MS = 3000L;

    /** 冷却时间戳：同一服务实例内，避免同一个弹窗被连点。 */
    private long lastClickAt;
    /** 最近一次扫描结果，供主界面显示（跨进程用 static）。 */
    private static volatile P2pDialogClicker sInst;

    // ------------------------------------------------------------------ 生命周期

    @Override
    protected void onServiceConnected() {
        super.onServiceConnected();
        sInst = this;
        P2pAutoAccept.noteServiceState(this, true);
    }

    @Override
    public void onDestroy() {
        if (sInst == this) {
            sInst = null;
        }
        P2pAutoAccept.noteServiceState(this, false);
        super.onDestroy();
    }

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        try {
            if (!P2pAutoAccept.isEnabled(this)) {
                return;
            }
            int type = event == null ? 0 : event.getEventType();
            // 只扫「窗口出现」和「窗口内容变化」两类，其余不碰（省电 + 防误点）
            if (type != AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED
                    && type != AccessibilityEvent.TYPE_WINDOW_CONTENT_CHANGED) {
                return;
            }
            String pkg = event == null ? null : String.valueOf(event.getPackageName());
            scanOnce(pkg);
        } catch (Throwable t) {
            // 回调里抛异常 = 系统可能直接禁用无障碍服务，必须吞掉
            BootDiagnostics.log(this, "P2pDialogClicker: handler crashed " + t);
        }
    }

    @Override
    public void onInterrupt() {
        BootDiagnostics.log(this, "P2pDialogClicker: interrupted（系统要求中断反馈）");
    }

    // ------------------------------------------------------------------ 核心

    /** 扫一次当前活动窗口并按需点击；主界面「立刻测试一次」也走这里。 */
    private void scanOnce(String winPkg) {
        AccessibilityNodeInfo root = null;
        List<AccessibilityNodeInfo> nodes = new ArrayList<AccessibilityNodeInfo>();
        try {
            root = getRootInActiveWindow();
            if (root == null) {
                return;
            }
            collect(root, nodes);
            if (winPkg == null || winPkg.length() == 0) {
                winPkg = nodes.isEmpty() ? null : String.valueOf(nodes.get(0).getPackageName());
            }
            decide(nodes, winPkg);
        } catch (Throwable t) {
            BootDiagnostics.log(this, "P2pDialogClicker: scan failed " + t);
        } finally {
            recycleAll(nodes);
            if (root != null) {
                try {
                    root.recycle();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private void collect(AccessibilityNodeInfo node, List<AccessibilityNodeInfo> out) {
        try {
            if (node == null) {
                return;
            }
            out.add(node);
            int n = node.getChildCount();
            for (int i = 0; i < n; i++) {
                collect(node.getChild(i), out);
            }
        } catch (Throwable ignored) {
        }
    }

    private void recycleAll(List<AccessibilityNodeInfo> list) {
        for (int i = 0; i < list.size(); i++) {
            try {
                list.get(i).recycle();
            } catch (Throwable ignored) {
            }
        }
        list.clear();
    }

    /** 判定并在合适时点击；每条分支都落日志，方便事后看 boottask-logs.zip。 */
    private void decide(List<AccessibilityNodeInfo> nodes, String winPkg) {
        if (nodes.isEmpty()) {
            return;
        }
        // 纪律①：不碰自己的窗口
        if (winPkg != null && winPkg.equals(getPackageName())) {
            return;
        }
        boolean scene = false;
        AccessibilityNodeInfo accept = null;
        for (int i = 0; i < nodes.size(); i++) {
            AccessibilityNodeInfo n = nodes.get(i);
            String text = textOf(n);
            if (text.length() == 0) {
                continue;
            }
            // 纪律②：看到拒绝类文案 → 需要用户自己判断，不碰
            if (containsAny(text, REJECT_TEXT)) {
                BootDiagnostics.log(this, "P2pDialogClicker: 见拒绝文案「" + brief(text)
                        + "」，不点（pkg=" + winPkg + "）");
                return;
            }
            if (!scene && containsAny(text, SCENE_TEXT)) {
                scene = true;
            }
            if (accept == null && n.isClickable() && n.isEnabled() && isAcceptText(text)) {
                accept = n;
            }
        }
        if (!scene) {
            BootDiagnostics.log(this, "P2pDialogClicker: 窗口无 P2P 特征，跳过（pkg=" + winPkg + "）");
            return;
        }
        if (accept == null) {
            P2pAutoAccept.noteMiss(this);
            BootDiagnostics.log(this, "P2pDialogClicker: 有配对特征但没有可点的同意按钮"
                    + "（pkg=" + winPkg + "）");
            return;
        }
        // 纪律④：冷却
        long now = android.os.SystemClock.elapsedRealtime();
        if (lastClickAt != 0 && now - lastClickAt < COOLDOWN_MS) {
            BootDiagnostics.log(this, "P2pDialogClicker: 冷却中（距上次 "
                    + (now - lastClickAt) + "ms），本次不点");
            return;
        }
        String label = textOf(accept);
        boolean ok;
        try {
            ok = accept.performAction(AccessibilityNodeInfo.ACTION_CLICK);
        } catch (Throwable t) {
            ok = false;
            BootDiagnostics.log(this, "P2pDialogClicker: click 异常 " + t);
        }
        if (ok) {
            lastClickAt = now;
            P2pAutoAccept.noteClicked(this, label, winPkg);
            BootDiagnostics.log(this, "P2pDialogClicker: 已自动点「" + brief(label)
                    + "」（pkg=" + winPkg + "）");
        } else {
            P2pAutoAccept.noteMiss(this);
            BootDiagnostics.log(this, "P2pDialogClicker: click 返回 false（按钮不可点，pkg="
                    + winPkg + "）");
        }
    }

    // ------------------------------------------------------------------ 小工具

    /** 按钮文案：先 text，再 contentDescription（4.4 的 getContentDescription 可能为 null）。 */
    private static String textOf(AccessibilityNodeInfo n) {
        try {
            CharSequence t = n.getText();
            if (t != null && t.length() > 0) {
                return String.valueOf(t);
            }
        } catch (Throwable ignored) {
        }
        try {
            CharSequence d = n.getContentDescription();
            if (d != null && d.length() > 0) {
                return String.valueOf(d);
            }
        } catch (Throwable ignored) {
        }
        return "";
    }

    /**
     * 同意按钮文案判定：先排掉含拒绝词的（"不允许连接" 不能因为含"允许"被点），
     * 再要求**短文本精确等于**同意词——长句子里恰好有个"确定"不算按钮。
     */
    private static boolean isAcceptText(String text) {
        if (containsAny(text, REJECT_TEXT)) {
            return false;
        }
        String s = text.trim();
        if (s.length() == 0 || s.length() > 8) {
            return false;
        }
        for (int i = 0; i < ACCEPT_TEXT.length; i++) {
            if (s.equalsIgnoreCase(ACCEPT_TEXT[i])) {
                return true;
            }
        }
        return false;
    }

    private static boolean containsAny(String text, String[] keys) {
        if (text == null) {
            return false;
        }
        for (int i = 0; i < keys.length; i++) {
            if (text.indexOf(keys[i]) >= 0) {
                return true;
            }
        }
        return false;
    }

    private static String brief(String s) {
        return s.length() > 24 ? s.substring(0, 24) + "…" : s;
    }

    // ------------------------------------------------------------------ 自测入口

    /**
     * 主界面「立刻测试一次」：服务未启用时返回提示文案；
     * 已启用则立即扫一次当前窗口（用来验证文案规则是否匹配得上真实弹窗）。
     */
    public static String selfTest() {
        P2pDialogClicker s = sInst;
        if (s == null) {
            return "无障碍服务未启用，请先到「设置→辅助功能」里开启"
                    + "「开机任务·直连自动允许」";
        }
        s.scanOnce(null);
        return "已扫描当前窗口一次，结果见日志（P2pDialogClicker: ...）";
    }

    public static boolean isServiceRunning() {
        return sInst != null;
    }
}