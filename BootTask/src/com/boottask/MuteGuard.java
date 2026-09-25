package com.boottask;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;

import java.lang.reflect.Method;

/**
 * v1.5 开机静音守卫。
 *
 * 背景：v1.4 在 BOOT_COMPLETED 里一次性 setRingerMode/setStreamVolume/setStreamMute，
 * 车机实测「日志显示已静音但声音照放」。三种可能（日志无法区分）：
 *   1) 太早：BOOT_COMPLETED 时音频策略/MCU 音频尚未就绪，随后被系统恢复；
 *   2) 被抢回：随后启动的 CarLife / 媒体管理 App 把音量设回去；
 *   3) 压错流：开机音/电台不走 STREAM_MUSIC。
 * v1.5 三种一起治：全流静音 + 延时重施 + 音量变化看门狗 + 状态回读（判定到底是哪一种）。
 *
 * 坑：AudioService.setStreamMute 是「按调用方 Binder 计数」的，重复 mute(true) N 次
 * 需要 unmute(false) N 次才能解除。故 setStreamMute 一次会话只做一次，重施只清音量。
 */
public final class MuteGuard {

    private static final long WATCHDOG_WINDOW_MS = 180000L;

    /** 重施时间点（相对 mute() 的毫秒，绝对值） */
    private static final long[] TICKS = {
        800L, 1500L, 3000L, 6000L, 12000L, 25000L, 50000L, 100000L, 175000L
    };

    /** MUSIC / RING / NOTIFICATION / SYSTEM / ALARM / DTMF */
    private static final int[] STREAMS = {
        AudioManager.STREAM_MUSIC,
        AudioManager.STREAM_RING,
        AudioManager.STREAM_NOTIFICATION,
        AudioManager.STREAM_SYSTEM,
        AudioManager.STREAM_ALARM,
        AudioManager.STREAM_DTMF
    };

    private static final String[] STREAM_NAMES = {
        "music", "ring", "notif", "system", "alarm", "dtmf"
    };

    private static volatile boolean sMuted = false;
    private static volatile long sDeadline = 0L;
    private static volatile long sLastSelfChange = 0L;
    private static volatile boolean sStreamMuteApplied = false;
    private static volatile int[] sSavedVolumes = null;
    private static volatile BroadcastReceiver sReceiver = null;
    private static volatile Thread sGuard = null;

    private static final Object LOCK = new Object();

    private MuteGuard() {
    }

    public static void mute(Context context) {
        final Context app = app(context);
        if (app == null) {
            return;
        }
        synchronized (LOCK) {
            sMuted = true;
            sDeadline = System.currentTimeMillis() + WATCHDOG_WINDOW_MS;
        }
        applyAll(app, true, "mute t=0");
        registerWatchdog(app);
        startGuard(app);
    }

    public static void unmute(Context context) {
        final Context app = app(context);
        if (app == null) {
            return;
        }
        synchronized (LOCK) {
            sMuted = false;
            sDeadline = 0L;
        }
        releaseWatchdog(app);
        restore(app);
    }

    public static boolean isMuted() {
        return sMuted;
    }

    /** 给诊断快照用：一行描述当前音频状态。 */
    public static String describe(Context context) {
        AudioManager am = audio(context);
        if (am == null) {
            return "audio=unavailable";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < STREAMS.length; i++) {
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(STREAM_NAMES[i]).append('=')
                    .append(am.getStreamVolume(STREAMS[i])).append('/')
                    .append(am.getStreamMaxVolume(STREAMS[i]));
        }
        sb.append(" ringer=").append(am.getRingerMode());
        sb.append(" mute=").append(isStreamMute(am, AudioManager.STREAM_MUSIC));
        sb.append(" guarded=").append(sMuted);
        return sb.toString();
    }

    // ---------------------------------------------------------------- 内部实现

    private static void applyAll(Context context, boolean firstPass, String label) {
        AudioManager am = audio(context);
        if (am == null) {
            BootDiagnostics.log(context, "MuteGuard: no AudioManager");
            return;
        }
        try {
            if (firstPass) {
                int[] saved = new int[STREAMS.length];
                for (int i = 0; i < STREAMS.length; i++) {
                    saved[i] = am.getStreamVolume(STREAMS[i]);
                }
                sSavedVolumes = saved;
            }
            am.setRingerMode(AudioManager.RINGER_MODE_SILENT);
            for (int i = 0; i < STREAMS.length; i++) {
                am.setStreamVolume(STREAMS[i], 0, 0);
                if (firstPass && !sStreamMuteApplied) {
                    am.setStreamMute(STREAMS[i], true);
                }
            }
            if (firstPass && !sStreamMuteApplied) {
                sStreamMuteApplied = true;
            }
            sLastSelfChange = System.currentTimeMillis();
            BootDiagnostics.log(context, "MuteGuard applied [" + label + "] " + describe(context));
        } catch (Throwable t) {
            BootDiagnostics.log(context, "MuteGuard apply failed [" + label + "]: " + t);
        }
    }

    private static void restore(Context context) {
        AudioManager am = audio(context);
        if (am == null) {
            return;
        }
        try {
            am.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
            for (int i = 0; i < STREAMS.length; i++) {
                am.setStreamMute(STREAMS[i], false);
            }
            sStreamMuteApplied = false;
            int[] saved = sSavedVolumes;
            for (int i = 0; i < STREAMS.length; i++) {
                int target;
                if (saved != null && saved[i] > 0) {
                    target = saved[i];
                } else {
                    target = am.getStreamMaxVolume(STREAMS[i]) / 2;
                }
                am.setStreamVolume(STREAMS[i], target, 0);
            }
            sLastSelfChange = System.currentTimeMillis();
            BootDiagnostics.log(context, "MuteGuard restored " + describe(context));
        } catch (Throwable t) {
            BootDiagnostics.log(context, "MuteGuard restore failed: " + t);
        }
    }

    private static void startGuard(final Context app) {
        Thread previous = sGuard;
        if (previous != null && previous.isAlive()) {
            return;
        }
        Thread t = new Thread(new Runnable() {
            public void run() {
                long base = System.currentTimeMillis();
                for (int i = 0; i < TICKS.length; i++) {
                    long wait = TICKS[i] - (System.currentTimeMillis() - base);
                    if (wait > 0) {
                        sleepQuietly(wait);
                    }
                    if (!sMuted) {
                        return;
                    }
                    applyAll(app, false, "t+" + (TICKS[i] / 1000L) + "s");
                }
                long tail = sDeadline - System.currentTimeMillis();
                if (tail > 0) {
                    sleepQuietly(tail + 1000L);
                }
                if (sMuted) {
                    releaseWatchdog(app);
                    BootDiagnostics.log(app, "MuteGuard watchdog expired, final " + describe(app));
                }
            }
        }, "MuteGuard");
        t.setDaemon(true);
        sGuard = t;
        t.start();
    }

    private static void registerWatchdog(final Context app) {
        if (sReceiver != null) {
            return;
        }
        try {
            BroadcastReceiver receiver = new BroadcastReceiver() {
                @Override
                public void onReceive(Context context, Intent intent) {
                    if (!sMuted) {
                        return;
                    }
                    if (System.currentTimeMillis() > sDeadline) {
                        return;
                    }
                    if (System.currentTimeMillis() - sLastSelfChange < 1500L) {
                        return; // 自己刚设过，忽略回声
                    }
                    final Context target = app(context);
                    if (target == null) {
                        return;
                    }
                    int stream = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1);
                    int value = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", -1);
                    BootDiagnostics.log(target, "MuteGuard saw volume change stream=" + stream
                            + " value=" + value + " -> re-mute");
                    new Thread(new Runnable() {
                        public void run() {
                            sleepQuietly(250L);
                            if (sMuted) {
                                applyAll(target, false, "watchdog");
                            }
                        }
                    }, "MuteGuard-hit").start();
                }
            };
            IntentFilter filter = new IntentFilter();
            filter.addAction("android.media.VOLUME_CHANGED_ACTION");
            app.registerReceiver(receiver, filter);
            sReceiver = receiver;
            BootDiagnostics.log(app, "MuteGuard watchdog registered");
        } catch (Throwable t) {
            BootDiagnostics.log(app, "MuteGuard watchdog register failed: " + t);
        }
    }

    private static void releaseWatchdog(Context app) {
        BroadcastReceiver receiver = sReceiver;
        sReceiver = null;
        if (receiver != null && app != null) {
            try {
                app.unregisterReceiver(receiver);
                BootDiagnostics.log(app, "MuteGuard watchdog unregistered");
            } catch (Throwable t) {
                BootDiagnostics.log(app, "MuteGuard watchdog unregister failed: " + t);
            }
        }
    }

    private static boolean isStreamMute(AudioManager am, int stream) {
        try {
            Method m = AudioManager.class.getMethod("isStreamMute", int.class);
            Object result = m.invoke(am, Integer.valueOf(stream));
            return result instanceof Boolean ? ((Boolean) result).booleanValue() : false;
        } catch (Throwable t) {
            return false;
        }
    }

    private static Context app(Context context) {
        if (context == null) {
            return null;
        }
        Context app = context.getApplicationContext();
        return app == null ? context : app;
    }

    private static AudioManager audio(Context context) {
        if (context == null) {
            return null;
        }
        Object service = context.getSystemService(Context.AUDIO_SERVICE);
        return service instanceof AudioManager ? (AudioManager) service : null;
    }

    private static void sleepQuietly(long millis) {
        try {
            Thread.sleep(millis);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
