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
        // v1.6.50：把 UI 里维护的「禁用自启清单」在开机时重应用一遍（幂等；
        // 无系统权限时只记日志）。放在最后：不影响前面的启动链路。
        try {
            SystemTools.applyDisabledAtBoot(context);
        } catch (Throwable ignored) {
        }
        // v1.6.56：无线 ADB 开机自动开（幂等：已是 1 只是一次读）
        try {
            SystemTools.ensureWirelessAdbOn(context);
        } catch (Throwable ignored) {
        }
        // v1.6.63：蓝牙闸门 —— 开机先关蓝牙，拉起 BtGateService，
        // 等 SCREEN_ON（点火亮屏）再延迟 3s 开。解锁(USER_PRESENT)不开。
        // v1.6.64：WiFi 闸门同理（开机先关 WiFi，亮屏 3s 后开）。
        try {
            if (BtGate.isEnabled(context) || WifiGate.isEnabled(context)) {
                context.startService(new Intent(context, BtGateService.class));
                if (BtGate.isEnabled(context)) {
                    BtGate.turnOffNow(context, "开机");
                }
                if (WifiGate.isEnabled(context)) {
                    WifiGate.turnOffNow(context, "开机");
                }
            }
        } catch (Throwable ignored) {
        }
    }
}
