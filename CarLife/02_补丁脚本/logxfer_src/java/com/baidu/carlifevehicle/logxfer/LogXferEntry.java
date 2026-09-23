package com.baidu.carlifevehicle.logxfer;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;

/**
 * 把「下载日志」按钮挂到 CarLife 主界面上（而不是做成一个独立的桌面图标）。
 *
 * 为什么走这条路：
 *   CarLife 主界面（res/layout/frag_main.xml）右上角依次是 方控 / 设置 / 帮助 三个 TextView，
 *   点击分派在 a/a/b/n/s.smali 的 onClick() 里，那是一个对资源 id 的 packed-switch
 *   （.packed-switch 0x7f0900a2 起）。往那个 switch 里加一个 case 要重排跳转表，
 *   风险大且不容易静态核对；所以改成复用 MainFragment 里本来就有的调用点
 *
 *       a/a/b/n/s.smali:378   invoke-static {p2}, Lcom/baidu/carlifevehicle/ConnModeHelper;->init(Landroid/view/View;)V
 *
 *   ConnModeHelper.init(root) 拿到的正好就是 frag_main 的根 View（我们自己写的类，
 *   里面本来就有一串 root.findViewById(...) 在挂东西）。在它的入口插一行
 *   LogXferEntry.bind(root) 即可，既不动别人的 switch，也不动 MainFragment。
 *
 * 资源 id 说明：
 *   本工程是 apktool 工程，Java 源码是拿 javac 独立编译的（没有 R.java），所以 id 只能硬编码。
 *   0x7f090147 必须与 res/values/public.xml / res/values/ids.xml 里的 main_btn_logxfer 一致，
 *   改一处就要改三处。patch_v14_日志按钮.py 会做一致性校验，防呆。
 */
public final class LogXferEntry {

    private static final String TAG = "CarLifeLogXfer";

    /** 对应 res/values/public.xml: main_btn_logxfer = 0x7f090147 */
    public static final int ID_MAIN_BTN_LOGXFER = 0x7f090147;

    private static ClickHandler sClick;

    private LogXferEntry() {
    }

    /** 打开日志下载页。独立的类，避免在 init 里引入匿名内部类。 */
    public static class ClickHandler implements View.OnClickListener {
        public void onClick(View v) {
            try {
                Context c = v.getContext();
                Intent it = new Intent(c, LogDownloadActivity.class);
                it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                c.startActivity(it);
                Log.i(TAG, "open LogDownloadActivity from main screen button");
            } catch (Throwable t) {
                Log.e(TAG, "open log activity failed: " + t);
            }
        }
    }

    /**
     * 由 ConnModeHelper.init(root) 调用，root 必须是 frag_main 的根 View。
     *
     * 不加「只绑一次」的静态开关：MainFragment 被重建时 root 是新的 View 树，
     * 新按钮必须重新绑监听。重复 setOnClickListener 只是替换监听器，无副作用。
     */
    public static void bind(View root) {
        if (root == null) {
            return;
        }
        try {
            View v = root.findViewById(ID_MAIN_BTN_LOGXFER);
            if (v == null) {
                Log.w(TAG, "main_btn_logxfer not in layout (布局未打补丁?), skip");
                return;
            }
            if (sClick == null) {
                sClick = new ClickHandler();
            }
            v.setOnClickListener(sClick);
            v.setVisibility(View.VISIBLE);
            v.setEnabled(true);
            Log.i(TAG, "download-log button bound");
        } catch (Throwable t) {
            Log.e(TAG, "bind main_btn_logxfer failed: " + t);
        }
    }
}
