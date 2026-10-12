package com.boottask;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * v1.6.29：Manifest 静态接收「手机请求加入 P2P 组」的系统广播，转交 {@link P2pAutoAccept}。
 *
 * <p>为什么用静态（Manifest）而不是 runService 注册：车机上 BootTask 进程随时可能被杀，
 * 静态接收器由系统在广播到达时拉起进程，直连配对请求**任何时候**都能接住——
 * 这正是这个功能存在的意义（不让用户在弹窗前停下来）。
 *
 * <p>开关在 {@code P2pAutoAccept} 的 prefs 里判读，关闭时这里只记账不动作。
 */
public class P2pAutoAcceptReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            P2pAutoAccept.onConnectionRequested(context, intent);
        } catch (Throwable t) {
            // 绝不能让接收器抛异常（framework 广播里的异常会变成进程崩溃）
            try {
                BootDiagnostics.log(context, "P2pAutoAccept: receiver crashed " + t);
            } catch (Throwable ignored) {
            }
        }
    }
}