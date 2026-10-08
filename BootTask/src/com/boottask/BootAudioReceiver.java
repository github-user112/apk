package com.boottask;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * v1.6.21 开机自动拉起声音监控：记录开机后谁被拉起、谁抢音频焦点，
 * 若用户设过拦截目标则顺带拦截（免 root killBackgroundProcesses）。
 * 独立 Java Receiver，不动 smali 版 BootReceiver。
 */
public class BootAudioReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            if (Intent.ACTION_BOOT_COMPLETED.equals(intent.getAction())) {
                context.startService(new Intent(context, AudioMonitor.class));
            }
        } catch (Throwable ignored) {
        }
    }
}
