package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public interface AudioSink {
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;
    public static final int SINK_FORMAT_SUPPORTED_DIRECTLY = 2;
    public static final int SINK_FORMAT_SUPPORTED_WITH_TRANSCODING = 1;
    public static final int SINK_FORMAT_UNSUPPORTED = 0;

    public static final class ConfigurationException extends java.lang.Exception {
        public final com.google.android.exoplayer2.Format format;

        public ConfigurationException(java.lang.String str, com.google.android.exoplayer2.Format format) {
            super(str);
            this.format = format;
        }

        public ConfigurationException(java.lang.Throwable th, com.google.android.exoplayer2.Format format) {
            super(th);
            this.format = format;
        }
    }

    public static final class InitializationException extends java.lang.Exception {
        public final int audioTrackState;
        public final com.google.android.exoplayer2.Format format;
        public final boolean isRecoverable;

        public InitializationException(int i, int i2, int i3, int i4, com.google.android.exoplayer2.Format format, boolean z, java.lang.Exception exc) {
            java.lang.String str = z ? " (recoverable)" : "";
            java.lang.StringBuilder sb = new java.lang.StringBuilder(str.length() + 80);
            sb.append("AudioTrack init failed ");
            sb.append(i);
            sb.append(" ");
            sb.append("Config(");
            sb.append(i2);
            sb.append(", ");
            sb.append(i3);
            sb.append(", ");
            sb.append(i4);
            sb.append(")");
            sb.append(str);
            super(sb.toString(), exc);
            this.audioTrackState = i;
            this.isRecoverable = z;
            this.format = format;
        }
    }

    public interface Listener {
        void onAudioSinkError(java.lang.Exception exc);

        void onOffloadBufferEmptying();

        void onOffloadBufferFull(long j);

        void onPositionAdvancing(long j);

        void onPositionDiscontinuity();

        void onSkipSilenceEnabledChanged(boolean z);

        void onUnderrun(int i, long j, long j2);
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface SinkFormatSupport {
    }

    public static final class UnexpectedDiscontinuityException extends java.lang.Exception {
        public final long actualPresentationTimeUs;
        public final long expectedPresentationTimeUs;

        public UnexpectedDiscontinuityException(long j, long j2) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(103);
            sb.append("Unexpected audio track timestamp discontinuity: expected ");
            sb.append(j2);
            sb.append(", got ");
            sb.append(j);
            super(sb.toString());
            this.actualPresentationTimeUs = j;
            this.expectedPresentationTimeUs = j2;
        }
    }

    public static final class WriteException extends java.lang.Exception {
        public final int errorCode;
        public final com.google.android.exoplayer2.Format format;
        public final boolean isRecoverable;

        public WriteException(int i, com.google.android.exoplayer2.Format format, boolean z) {
            super(e.a.c.a.a.F(36, "AudioTrack write failed: ", i));
            this.isRecoverable = z;
            this.errorCode = i;
            this.format = format;
        }
    }

    void configure(com.google.android.exoplayer2.Format format, int i, int[] iArr);

    void disableTunneling();

    void enableTunnelingV21();

    void experimentalFlushWithoutAudioTrackRelease();

    void flush();

    long getCurrentPositionUs(boolean z);

    int getFormatSupport(com.google.android.exoplayer2.Format format);

    com.google.android.exoplayer2.PlaybackParameters getPlaybackParameters();

    boolean getSkipSilenceEnabled();

    boolean handleBuffer(java.nio.ByteBuffer byteBuffer, long j, int i);

    void handleDiscontinuity();

    boolean hasPendingData();

    boolean isEnded();

    void pause();

    void play();

    void playToEndOfStream();

    void reset();

    void setAudioAttributes(com.google.android.exoplayer2.audio.AudioAttributes audioAttributes);

    void setAudioSessionId(int i);

    void setAuxEffectInfo(com.google.android.exoplayer2.audio.AuxEffectInfo auxEffectInfo);

    void setListener(com.google.android.exoplayer2.audio.AudioSink.Listener listener);

    void setPlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters);

    void setSkipSilenceEnabled(boolean z);

    void setVolume(float f2);

    boolean supportsFormat(com.google.android.exoplayer2.Format format);
}
