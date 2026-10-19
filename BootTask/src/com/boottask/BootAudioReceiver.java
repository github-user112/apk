package com.boottask;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * v1.6.21 开机自动拉起声音监控：记录开机后谁被拉起、谁抢音频焦点，
 * 若用户设过拦截目标则顺带拦截（免 root killBackgroundProcesses）。
 * 独立 Java Receiver，不动 smali 版 BootReceiver。
 *
 * v1.6.35 顺带：开机恢复「低速蹲守」（持久化开关默认开；关了就不再拉起）。
 * v1.6.36 顺带：MuteGuard 开机自愈——上次静音没 restore 就断电/重启、或旧版
 * 到期不恢复留下的 0 音量，开机时救回来（有 mute 规则时不插手）。
 */
public class BootAudioReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        try {
            if (Intent.ACTION_BOOT_COMPLETED.equals(intent.getAction())) {
                MuteGuard.autoRestore(context);   // v1.6.36 开机残留静音自愈
                context.startService(new Intent(context, AudioMonitor.class));
                // v1.6.36：上次「临时静音」没到期就被重启打断 → 开机后自动恢复音量
                MuteGuard.restoreIfPending(context);
            }
        } catch (Throwable ignored) {
        }
        try {
            if (Intent.ACTION_BOOT_COMPLETED.equals(intent.getAction())
                    && RateWatcher.enabled(context)) {
                context.startService(new Intent(context, RateWatcher.class));
            }
        } catch (Throwable ignored) {
        }
    }
}
