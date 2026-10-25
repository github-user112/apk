package com.boottask;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;

/**
 * v1.6.9：修复「开机静音」对多媒体/FM 无效的根因。
 * 旧 mute 动作只 setRingerMode(SILENT)——那是铃声模式，只管来电/通知流；
 * 车机多媒体自启播 FM 走 STREAM_MUSIC（媒体流），完全不受影响（用户车机实测无效）。
 *
 * muteAll  = 铃声 SILENT + 媒体流音量归零（v1.6.38 起不再 setStreamMute，见 MuteGuard 注释）
 * unmuteAll= 媒体流 unmute + 铃声 NORMAL（音量不自动恢复，用户手动调回或重开机）
 *
 * FM 若走独立 MCU/收音芯片直连功放，Android 侧仍管不住——这种情况下诊断快照的
 * boot 时间线 + dumpsys audio 会暴露真相，届时再走系统层。
 */
public final class MediaMute {

    private MediaMute() {
    }

    public static void muteAll(Context ctx) {
        try {
            AudioManager am = (AudioManager) ctx.getSystemService(Context.AUDIO_SERVICE);
            am.setRingerMode(AudioManager.RINGER_MODE_SILENT);
            // v1.6.38：删掉 setStreamMute——按调用方 Binder 计数，与 MuteGuard 的
            // Application 上下文计数对不上会把媒体流永久卡 mute（车机 2026-10-24 实锤）。
            am.setStreamVolume(AudioManager.STREAM_MUSIC, 0, 0);
            BootDiagnostics.log(ctx, "MediaMute: ringer SILENT + music vol=0");
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "MediaMute fail: " + t);
        }
    }

    /**
     * v1.6.11：FM 走「MCU / 收音芯片直连功放」时的对策 —— 抢占音源。
     *
     * 车机音频架构常见这样：MCU 负责音源仲裁（Android / FM / AUX / 蓝牙），
     * Android 侧 AudioManager 根本管不到 MCU 自己那条通路，所以怎么静音 FM 都照响。
     * 但 MCU 的仲裁规则通常是「后来者抢占」：只要 Android 侧出现一条活跃的音频流，
     * MCU 就把音源切到 Android，FM 自然停。
     *
     * 做法：播 0.6 秒静音（PCM 全 0，听不见）→ 触发 MCU 切源 → 随后调 muteAll() 收尾。
     * 这一步必须在后台线程跑（play + sleep）。
     */
    public static String claimAudioSource(Context ctx) {
        AudioTrack track = null;
        try {
            AudioManager am = (AudioManager) ctx.getSystemService(Context.AUDIO_SERVICE);
            int rate = 44100;
            int buf = AudioTrack.getMinBufferSize(rate,
                    AudioFormat.CHANNEL_OUT_MONO, AudioFormat.ENCODING_PCM_16BIT);
            if (buf <= 0) {
                buf = rate * 2;
            }
            byte[] silence = new byte[buf]; // 全 0 = 静音
            track = new AudioTrack(AudioManager.STREAM_MUSIC, rate,
                    AudioFormat.CHANNEL_OUT_MONO, AudioFormat.ENCODING_PCM_16BIT,
                    Math.max(buf, silence.length), AudioTrack.MODE_STATIC);
            track.write(silence, 0, silence.length);
            track.play();
            try {
                Thread.sleep(600L);
            } catch (Throwable ignored) {
            }
            track.stop();
            BootDiagnostics.log(ctx, "MediaMute: silent track played (audio source claimed)");
            // 抢到音源后立刻收尾静音，避免后续任何声音漏出来
            muteAll(ctx);
            return "已播放 0.6 秒静音抢占音源，并静音媒体流。\n"
                    + "如果 FM 停了 → 说明 MCU 音源已切到 Android，用「设置开机自动静音」固化即可。\n"
                    + "如果 FM 还在响 → 它不走音源仲裁，需看诊断快照的 MCU 段（串口/MCU 服务）走下一步。";
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "MediaMute claim fail: " + t);
            return "抢占音源失败：" + t;
        } finally {
            if (track != null) {
                try {
                    track.release();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    public static void unmuteAll(Context ctx) {
        try {
            AudioManager am = (AudioManager) ctx.getSystemService(Context.AUDIO_SERVICE);
            am.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
            // v1.6.38：音量别再留在 0（旧版「音量不自动恢复」+ 卡死 mute = 用户以为静音坏了）。
            // 是 0 就回到一半；不是 0 说明用户自己调过，不动。
            if (am.getStreamVolume(AudioManager.STREAM_MUSIC) == 0) {
                am.setStreamVolume(AudioManager.STREAM_MUSIC,
                        am.getStreamMaxVolume(AudioManager.STREAM_MUSIC) / 2, 0);
            }
            BootDiagnostics.log(ctx, "MediaMute: ringer NORMAL + music vol="
                    + am.getStreamVolume(AudioManager.STREAM_MUSIC));
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "MediaMute fail: " + t);
        }
    }

    // ---------------------------------------------------------------- 开机抢占音源（v1.6.38）

    private static final String PREF = "boot_claim";
    private static final String K_ON = "on";
    private static final String K_SECS = "secs";
    private static final int DEFAULT_SECS = 30;

    public static boolean isBootClaimEnabled(Context ctx) {
        try {
            return ctx.getSharedPreferences(PREF, Context.MODE_PRIVATE).getBoolean(K_ON, false);
        } catch (Throwable t) {
            return false;
        }
    }

    public static int bootClaimSecs(Context ctx) {
        try {
            return ctx.getSharedPreferences(PREF, Context.MODE_PRIVATE).getInt(K_SECS, DEFAULT_SECS);
        } catch (Throwable t) {
            return DEFAULT_SECS;
        }
    }

    public static void setBootClaim(Context ctx, boolean on, int secs) {
        try {
            ctx.getSharedPreferences(PREF, Context.MODE_PRIVATE).edit()
                    .putBoolean(K_ON, on).putInt(K_SECS, secs).commit();
        } catch (Throwable t) {
        }
        BootDiagnostics.log(ctx, "MediaMute: bootClaim -> "
                + (on ? ("on " + secs + "s") : "off"));
    }

    /**
     * 开机入口（BootAudioReceiver 调）：开关开着就后台线程播 N 秒静音抢占音源。
     * 已在放歌（如 QuickBoot 恢复时亿连正在播）就跳过——别把正在响的流顶掉。
     * ⚠ 结束后<b>不</b>调 muteAll：目的是抢音源交给亿连，静音会把媒体音量清零。
     */
    public static void maybeBootClaim(final Context ctx) {
        try {
            if (!isBootClaimEnabled(ctx)) {
                return;
            }
            final Context app = ctx.getApplicationContext() == null
                    ? ctx : ctx.getApplicationContext();
            final int secs = bootClaimSecs(app);
            Thread t = new Thread(new Runnable() {
                public void run() {
                    AudioManager am = (AudioManager) app.getSystemService(Context.AUDIO_SERVICE);
                    if (am != null && am.isMusicActive()) {
                        BootDiagnostics.log(app, "MediaMute: boot claim 跳过（已有音乐在播）");
                        return;
                    }
                    playSilence(app, secs);
                }
            }, "BootClaim");
            t.setDaemon(true);
            t.start();
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "MediaMute maybeBootClaim fail: " + t);
        }
    }

    /** 在调用线程播 seconds 秒静音（STREAM_MUSIC，write 阻塞自带节奏）。 */
    public static void playSilence(Context ctx, int seconds) {
        AudioTrack track = null;
        try {
            int rate = 44100;
            int ch = AudioFormat.CHANNEL_OUT_MONO;
            int enc = AudioFormat.ENCODING_PCM_16BIT;
            int minBuf = AudioTrack.getMinBufferSize(rate, ch, enc);
            if (minBuf <= 0) {
                minBuf = rate;
            }
            byte[] silence = new byte[Math.max(minBuf, 4096)];   // 全 0 = 静音
            track = new AudioTrack(AudioManager.STREAM_MUSIC, rate, ch, enc,
                    minBuf, AudioTrack.MODE_STREAM);
            track.play();
            long deadline = System.currentTimeMillis() + seconds * 1000L;
            while (System.currentTimeMillis() < deadline) {
                track.write(silence, 0, silence.length);
            }
            track.stop();
            BootDiagnostics.log(ctx, "MediaMute: silence played " + seconds + "s（音源已抢到 Android）");
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "MediaMute playSilence fail: " + t);
        } finally {
            if (track != null) {
                try {
                    track.release();
                } catch (Throwable ignored) {
                }
            }
        }
    }
}
