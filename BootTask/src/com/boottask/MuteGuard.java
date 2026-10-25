package com.boottask;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
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
 * 需要 unmute(false) N 次才能解除，跨 AudioManager 实例（Activity vs Application
 * 上下文）计数对不上会**永久卡死**（2026-10-24 车机实锤）→ v1.6.38 起彻底不用它。
 *
 * v1.6.36 修复「开机永久静音」事故（10-17 车机日志实锤）：
 * 旧版看门狗到期只注销广播、不恢复音量 —— setStreamVolume(0) 会被系统持久化，
 * 清空拦截目标后没有任何路径把音量调回，车机每次开机都是静音（残留状态，非开机行为）。
 *   - 新增 muteTemp()：临时静音（拦截兜底用），看门狗到期**自动恢复音量**；
 *   - mute()（规则链，smali ExecService 调用）保持旧语义：长期静音由规则承担；
 *   - prefs 记「临时静音未到期」标志 + 静音前音量，开机 BootAudioReceiver 自愈；
 *   - 首次采样快照只在 sSavedVolumes==null 时执行（重复 mute 不得覆盖原始音量）。
 */
public final class MuteGuard {

    private static final long WATCHDOG_WINDOW_MS = 180000L;

    /** v1.6.36：临时静音跨重启自愈的持久化 */
    private static final String PREFS = "muteguard";
    private static final String KEY_TEMP = "tempActive";
    private static final String KEY_VOLS = "savedVols";
    private static final String KEY_HEALED = "heal_v1636";       // 旧版残留 0 音量的一次性升级自愈

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
    private static volatile boolean sTemp = false;
    private static volatile long sDeadline = 0L;
    private static volatile long sLastSelfChange = 0L;
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
        boolean fresh;
        synchronized (LOCK) {
            fresh = !sMuted;
            sMuted = true;
            sTemp = false;
            sDeadline = System.currentTimeMillis() + WATCHDOG_WINDOW_MS;
        }
        if (fresh) {
            captureSaved(app);
        }
        applyAll(app, true, "mute t=0");
        registerWatchdog(app);
        startGuard(app);
    }

    /**
     * v1.6.36：临时静音（拦截目标杀不掉时的兜底）。与 mute() 的区别：
     * 看门狗到期后自动恢复静音前音量 —— 拦截解除/目标消失后不再留下永久静音。
     * 目标存活期间调用方每轮重施（deadline 随之顺延），持续静音不中断。
     */
    public static void muteTemp(Context context) {
        final Context app = app(context);
        if (app == null) {
            return;
        }
        synchronized (LOCK) {
            sMuted = true;
            sTemp = true;
            sDeadline = System.currentTimeMillis() + WATCHDOG_WINDOW_MS;
        }
        applyAll(app, true, "mute-temp t=0");
        saveTempPrefs(app);
        registerWatchdog(app);
        startGuard(app);
    }

    /**
     * v1.6.36 开机自愈：上次「临时静音」没等到期就被重启打断 → 恢复音量。
     * 只认 tempActive 标志（长期静音走规则，开机不应被此覆盖）。
     */
    public static void restoreIfPending(Context context) {
        final Context app = app(context);
        if (app == null) {
            return;
        }
        try {
            if (!app.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .getBoolean(KEY_TEMP, false)) {
                return;
            }
            new Thread(new Runnable() {
                public void run() {
                    sleepQuietly(8000L);   // 等音频服务就绪
                    try {
                        synchronized (LOCK) {
                            sMuted = false;
                            sTemp = false;
                        }
                        restore(app);
                        BootDiagnostics.log(app, "MuteGuard boot-heal: 上次临时静音未到期即重启，已恢复 "
                                + describe(app));
                    } catch (Throwable t) {
                        BootDiagnostics.log(app, "MuteGuard boot-heal fail: " + t);
                    }
                }
            }, "MuteGuard-heal").start();
        } catch (Throwable ignored) {
        }
    }

    public static void unmute(Context context) {
        final Context app = app(context);
        if (app == null) {
            return;
        }
        synchronized (LOCK) {
            sMuted = false;
            sTemp = false;
            sDeadline = 0L;
        }
        releaseWatchdog(app);
        restore(app);
    }

    public static boolean cancelIfMuted(Context context) {
        final Context app = app(context);
        if (app == null) {
            return false;
        }
        boolean was;
        synchronized (LOCK) {
            was = sMuted;
        }
        if (was) {
            unmute(app);
            return true;
        }
        if (allZeroAndSilent(app)) {
            restore(app);
            return true;
        }
        return false;
    }

    public static void autoRestore(Context context) {
        try {
            final Context app = app(context);
            if (app == null) {
                return;
            }
            if (sMuted) {
                return;
            }
            SharedPreferences sp = app.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            if (!sp.getBoolean(KEY_HEALED, false)) {
                sp.edit().putBoolean(KEY_HEALED, true).commit();
                if (allZeroAndSilent(app) && !hasMuteAction(app)
                        && AudioMonitor.blockTargets(app).length == 0) {
                    restore(app);
                }
            }
        } catch (Throwable t) {
            BootDiagnostics.log(context, "MuteGuard autoRestore failed: " + t);
        }
    }

    private static boolean allZeroAndSilent(Context context) {
        AudioManager am = audio(context);
        if (am == null) {
            return false;
        }
        try {
            if (am.getRingerMode() != AudioManager.RINGER_MODE_SILENT) {
                return false;
            }
            for (int i = 0; i < STREAMS.length; i++) {
                if (am.getStreamVolume(STREAMS[i]) != 0) {
                    return false;
                }
            }
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private static boolean hasMuteAction(Context context) {
        try {
            String raw = context.getSharedPreferences("rules", 0).getString("list", "[]");
            return raw != null && raw.contains("\"action\":\"mute\"");
        } catch (Throwable t) {
            return false;
        }
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

    private static void applyAll(Context context, String label) {
        AudioManager am = audio(context);
        if (am == null) {
            BootDiagnostics.log(context, "MuteGuard: no AudioManager");
            return;
        }
        try {
            // v1.6.36：只在还没快照时采样 —— 拦截兜底每 5s 重施 mute，
            // 若每次都重新采样会把「已清零的音量」存成原始值，到期恢复就恢复了个 0。
            if (firstPass && sSavedVolumes == null) {
                int[] saved = new int[STREAMS.length];
                for (int i = 0; i < STREAMS.length; i++) {
                    saved[i] = am.getStreamVolume(STREAMS[i]);
                }
                sSavedVolumes = saved;
                if (sSavedRinger < 0) {
                    sSavedRinger = am.getRingerMode();
                }
            }
            am.setRingerMode(AudioManager.RINGER_MODE_SILENT);
            // v1.6.38：彻底不再用 setStreamMute——它是按调用方 AudioManager 实例的 Binder
            // 计数的，MediaMute（Activity 上下文）与 MuteGuard（Application 上下文）
            // 计数对不上就永久卡死（2026-10-24 车机日志实锤：mute=true 后
            // setStreamVolume 也写不进去，0 音量被持久化）。音量归 0 就是静音。
            for (int i = 0; i < STREAMS.length; i++) {
                am.setStreamVolume(STREAMS[i], 0, 0);
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
            int[] saved = sSavedVolumes;
            int ringer = sSavedRinger;
            if (saved == null) {
                saved = readSavedVols(context);
            }
            if (saved == null || ringer < 0) {
                SharedPreferences sp = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
                String csv = sp.getString(KEY_SAVED, null);
                if (csv != null) {
                    String[] parts = csv.split(",");
                    if (parts.length == STREAMS.length) {
                        int[] p = new int[STREAMS.length];
                        for (int i = 0; i < STREAMS.length; i++) {
                            try {
                                p[i] = Integer.parseInt(parts[i].trim());
                            } catch (NumberFormatException e) {
                                p[i] = 0;
                            }
                        }
                        saved = p;
                    }
                }
                if (ringer < 0) {
                    ringer = sp.getInt(KEY_RINGER, -1);
                }
            }
            am.setRingerMode((ringer >= 0 && ringer <= 3)
                    ? ringer : AudioManager.RINGER_MODE_NORMAL);
            sStreamMuteApplied = false;
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
            // v1.6.36：恢复后清快照与持久化标志，下次 mute 重新采样
            sSavedVolumes = null;
            sSavedRinger = -1;
            clearTempPrefs(context);
            clearPersisted(context);
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
                    applyAll(app, "t+" + (TICKS[i] / 1000L) + "s");
                }
                long tail = sDeadline - System.currentTimeMillis();
                if (tail > 0) {
                    sleepQuietly(tail + 1000L);
                }
                if (sMuted) {
                    releaseWatchdog(app);
                    // v1.6.36：临时静音到期自动恢复音量（旧版只注销看门狗，音量 0 被持久化，
                    // 表现为「每次开机都静音」—— 10-17 车机日志实锤的残留状态根因）
                    boolean wasTemp = sTemp;
                    synchronized (LOCK) {
                        sMuted = false;
                        sTemp = false;
                    }
                    if (wasTemp) {
                        restore(app);
                        BootDiagnostics.log(app, "MuteGuard watchdog expired, temp mute auto-restored "
                                + describe(app));
                    } else {
                        BootDiagnostics.log(app, "MuteGuard watchdog expired, final " + describe(app));
                    }
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
                                applyAll(target, "watchdog");
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

    // ------------------------------------------------ v1.6.36：临时静音的持久化（跨重启自愈）

    private static void saveTempPrefs(Context app) {
        try {
            int[] v = sSavedVolumes;
            StringBuilder b = new StringBuilder();
            if (v != null) {
                for (int i = 0; i < v.length; i++) {
                    if (i > 0) {
                        b.append(',');
                    }
                    b.append(v[i]);
                }
            }
            app.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                    .putBoolean(KEY_TEMP, true)
                    .putString(KEY_VOLS, b.toString())
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static void clearPersisted(Context context) {
        try {
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                    .remove(KEY_SAVED)
                    .remove(KEY_RINGER)
                    .putBoolean(KEY_LEFTOVER, false)
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static void clearTempPrefs(Context context) {
        try {
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                    .remove(KEY_TEMP).remove(KEY_VOLS).commit();
        } catch (Throwable ignored) {
        }
    }

    private static int[] readSavedVols(Context context) {
        try {
            String s = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .getString(KEY_VOLS, null);
            if (s == null || s.length() == 0) {
                return null;
            }
            String[] parts = s.split(",");
            if (parts.length != STREAMS.length) {
                return null;
            }
            int[] v = new int[STREAMS.length];
            for (int i = 0; i < parts.length; i++) {
                v[i] = Integer.parseInt(parts[i].trim());
            }
            return v;
        } catch (Throwable t) {
            return null;
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
