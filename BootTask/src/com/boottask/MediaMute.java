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
 * muteAll  = 铃声 SILENT + 媒体流音量归零 + 媒体流 mute（4.4 的 setStreamMute 仍有效）
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
            am.setStreamVolume(AudioManager.STREAM_MUSIC, 0, 0);
            am.setStreamMute(AudioManager.STREAM_MUSIC, true);
            BootDiagnostics.log(ctx, "MediaMute: ringer SILENT + music vol=0 + music muted");
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
            am.setStreamMute(AudioManager.STREAM_MUSIC, false);
            am.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
            BootDiagnostics.log(ctx, "MediaMute: music unmuted + ringer NORMAL");
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "MediaMute fail: " + t);
        }
    }
}
