package com.boottask;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * v1.6.44 开机自启：只拉起「亿连进程监视」（YilianWatcher，只读 /proc）。
 *
 * 历史：这里曾顺带 AudioMonitor（启动与声音监控）、MuteGuard（开机静音自愈）、
 * RateWatcher（低速蹲守）—— 用户明确「车机声音不要动、低速蹲守也不要」，三个
 * 连服务带源码全删了。剩下的 YilianWatcher 不改任何系统状态。
 * MediaMute（开机抢占音源）也不走这里：它有自己的开关，默认关，开才生效。
 *
 * 独立 Java Receiver，不动 smali 版 BootReceiver。
 */
public class BootAudioReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        if (!Intent.ACTION_BOOT_COMPLETED.equals(intent.getAction())) {
            return;
        }
        try {
            context.startService(new Intent(context, YilianWatcher.class));
        } catch (Throwable ignored) {
        }
    }
}
