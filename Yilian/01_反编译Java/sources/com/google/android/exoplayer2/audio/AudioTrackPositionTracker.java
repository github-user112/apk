package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class AudioTrackPositionTracker {
    public static final long FORCE_RESET_WORKAROUND_TIMEOUT_MS = 200;
    public static final long MAX_AUDIO_TIMESTAMP_OFFSET_US = 5000000;
    public static final long MAX_LATENCY_US = 5000000;
    public static final int MAX_PLAYHEAD_OFFSET_COUNT = 10;
    public static final int MIN_LATENCY_SAMPLE_INTERVAL_US = 500000;
    public static final int MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US = 30000;
    public static final long MODE_SWITCH_SMOOTHING_DURATION_US = 1000000;
    public static final int PLAYSTATE_PAUSED = 2;
    public static final int PLAYSTATE_PLAYING = 3;
    public static final int PLAYSTATE_STOPPED = 1;
    public com.google.android.exoplayer2.audio.AudioTimestampPoller audioTimestampPoller;
    public android.media.AudioTrack audioTrack;
    public float audioTrackPlaybackSpeed;
    public int bufferSize;
    public long bufferSizeUs;
    public long endPlaybackHeadPosition;
    public long forceResetWorkaroundTimeMs;
    public java.lang.reflect.Method getLatencyMethod;
    public boolean hasData;
    public boolean isOutputPcm;
    public long lastLatencySampleTimeUs;
    public long lastPlayheadSampleTimeUs;
    public long lastPositionUs;
    public long lastRawPlaybackHeadPosition;
    public boolean lastSampleUsedGetTimestampMode;
    public long lastSystemTimeUs;
    public long latencyUs;
    public final com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener listener;
    public boolean needsPassthroughWorkarounds;
    public int nextPlayheadOffsetIndex;
    public boolean notifiedPositionIncreasing;
    public int outputPcmFrameSize;
    public int outputSampleRate;
    public long passthroughWorkaroundPauseOffset;
    public int playheadOffsetCount;
    public final long[] playheadOffsets;
    public long previousModePositionUs;
    public long previousModeSystemTimeUs;
    public long rawPlaybackHeadWrapCount;
    public long smoothedPlayheadOffsetUs;
    public long stopPlaybackHeadPosition;
    public long stopTimestampUs;

    public interface Listener {
        void onInvalidLatency(long j);

        void onPositionAdvancing(long j);

        void onPositionFramesMismatch(long j, long j2, long j3, long j4);

        void onSystemTimeUsMismatch(long j, long j2, long j3, long j4);

        void onUnderrun(int i, long j);
    }

    public AudioTrackPositionTracker(com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener listener) {
        this.listener = (com.google.android.exoplayer2.audio.AudioTrackPositionTracker.Listener) com.google.android.exoplayer2.util.Assertions.checkNotNull(listener);
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 18) {
            try {
                this.getLatencyMethod = android.media.AudioTrack.class.getMethod("getLatency", null);
            } catch (java.lang.NoSuchMethodException unused) {
            }
        }
        this.playheadOffsets = new long[10];
    }

    private boolean forceHasPendingData() {
        return this.needsPassthroughWorkarounds && ((android.media.AudioTrack) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioTrack)).getPlayState() == 2 && getPlaybackHeadPosition() == 0;
    }

    private long framesToDurationUs(long j) {
        return (j * 1000000) / this.outputSampleRate;
    }

    private long getPlaybackHeadPosition() {
        android.media.AudioTrack audioTrack = (android.media.AudioTrack) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioTrack);
        if (this.stopTimestampUs != com.google.android.exoplayer2.C.TIME_UNSET) {
            return java.lang.Math.min(this.endPlaybackHeadPosition, this.stopPlaybackHeadPosition + ((((android.os.SystemClock.elapsedRealtime() * 1000) - this.stopTimestampUs) * this.outputSampleRate) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = 4294967295L & audioTrack.getPlaybackHeadPosition();
        if (this.needsPassthroughWorkarounds) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.passthroughWorkaroundPauseOffset = this.lastRawPlaybackHeadPosition;
            }
            playbackHeadPosition += this.passthroughWorkaroundPauseOffset;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT <= 29) {
            if (playbackHeadPosition == 0 && this.lastRawPlaybackHeadPosition > 0 && playState == 3) {
                if (this.forceResetWorkaroundTimeMs == com.google.android.exoplayer2.C.TIME_UNSET) {
                    this.forceResetWorkaroundTimeMs = android.os.SystemClock.elapsedRealtime();
                }
                return this.lastRawPlaybackHeadPosition;
            }
            this.forceResetWorkaroundTimeMs = com.google.android.exoplayer2.C.TIME_UNSET;
        }
        if (this.lastRawPlaybackHeadPosition > playbackHeadPosition) {
            this.rawPlaybackHeadWrapCount++;
        }
        this.lastRawPlaybackHeadPosition = playbackHeadPosition;
        return playbackHeadPosition + (this.rawPlaybackHeadWrapCount << 32);
    }

    private long getPlaybackHeadPositionUs() {
        return framesToDurationUs(getPlaybackHeadPosition());
    }

    private void maybePollAndCheckTimestamp(long j, long j2) {
        com.google.android.exoplayer2.audio.AudioTimestampPoller audioTimestampPoller = (com.google.android.exoplayer2.audio.AudioTimestampPoller) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioTimestampPoller);
        if (audioTimestampPoller.maybePollTimestamp(j)) {
            long timestampSystemTimeUs = audioTimestampPoller.getTimestampSystemTimeUs();
            long timestampPositionFrames = audioTimestampPoller.getTimestampPositionFrames();
            if (java.lang.Math.abs(timestampSystemTimeUs - j) > 5000000) {
                this.listener.onSystemTimeUsMismatch(timestampPositionFrames, timestampSystemTimeUs, j, j2);
            } else {
                if (java.lang.Math.abs(framesToDurationUs(timestampPositionFrames) - j2) <= 5000000) {
                    audioTimestampPoller.acceptTimestamp();
                    return;
                }
                this.listener.onPositionFramesMismatch(timestampPositionFrames, timestampSystemTimeUs, j, j2);
            }
            audioTimestampPoller.rejectTimestamp();
        }
    }

    private void maybeSampleSyncParams() {
        long playbackHeadPositionUs = getPlaybackHeadPositionUs();
        if (playbackHeadPositionUs == 0) {
            return;
        }
        long jNanoTime = java.lang.System.nanoTime() / 1000;
        if (jNanoTime - this.lastPlayheadSampleTimeUs >= 30000) {
            long[] jArr = this.playheadOffsets;
            int i = this.nextPlayheadOffsetIndex;
            jArr[i] = playbackHeadPositionUs - jNanoTime;
            this.nextPlayheadOffsetIndex = (i + 1) % 10;
            int i2 = this.playheadOffsetCount;
            if (i2 < 10) {
                this.playheadOffsetCount = i2 + 1;
            }
            this.lastPlayheadSampleTimeUs = jNanoTime;
            this.smoothedPlayheadOffsetUs = 0L;
            int i3 = 0;
            while (true) {
                int i4 = this.playheadOffsetCount;
                if (i3 >= i4) {
                    break;
                }
                this.smoothedPlayheadOffsetUs = (this.playheadOffsets[i3] / i4) + this.smoothedPlayheadOffsetUs;
                i3++;
            }
        }
        if (this.needsPassthroughWorkarounds) {
            return;
        }
        maybePollAndCheckTimestamp(jNanoTime, playbackHeadPositionUs);
        maybeUpdateLatency(jNanoTime);
    }

    private void maybeUpdateLatency(long j) {
        java.lang.reflect.Method method;
        if (!this.isOutputPcm || (method = this.getLatencyMethod) == null || j - this.lastLatencySampleTimeUs < 500000) {
            return;
        }
        try {
            long jIntValue = (((java.lang.Integer) com.google.android.exoplayer2.util.Util.castNonNull((java.lang.Integer) method.invoke(com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioTrack), new java.lang.Object[0]))).intValue() * 1000) - this.bufferSizeUs;
            this.latencyUs = jIntValue;
            long jMax = java.lang.Math.max(jIntValue, 0L);
            this.latencyUs = jMax;
            if (jMax > 5000000) {
                this.listener.onInvalidLatency(jMax);
                this.latencyUs = 0L;
            }
        } catch (java.lang.Exception unused) {
            this.getLatencyMethod = null;
        }
        this.lastLatencySampleTimeUs = j;
    }

    public static boolean needsPassthroughWorkarounds(int i) {
        return com.google.android.exoplayer2.util.Util.SDK_INT < 23 && (i == 5 || i == 6);
    }

    private void resetSyncParams() {
        this.smoothedPlayheadOffsetUs = 0L;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0L;
        this.lastSystemTimeUs = 0L;
        this.previousModeSystemTimeUs = 0L;
        this.notifiedPositionIncreasing = false;
    }

    public int getAvailableBufferSize(long j) {
        return this.bufferSize - ((int) (j - (getPlaybackHeadPosition() * this.outputPcmFrameSize)));
    }

    public long getCurrentPositionUs(boolean z) {
        long playbackHeadPositionUs;
        if (((android.media.AudioTrack) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioTrack)).getPlayState() == 3) {
            maybeSampleSyncParams();
        }
        long jNanoTime = java.lang.System.nanoTime() / 1000;
        com.google.android.exoplayer2.audio.AudioTimestampPoller audioTimestampPoller = (com.google.android.exoplayer2.audio.AudioTimestampPoller) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioTimestampPoller);
        boolean zHasAdvancingTimestamp = audioTimestampPoller.hasAdvancingTimestamp();
        if (zHasAdvancingTimestamp) {
            playbackHeadPositionUs = com.google.android.exoplayer2.util.Util.getMediaDurationForPlayoutDuration(jNanoTime - audioTimestampPoller.getTimestampSystemTimeUs(), this.audioTrackPlaybackSpeed) + framesToDurationUs(audioTimestampPoller.getTimestampPositionFrames());
        } else {
            playbackHeadPositionUs = this.playheadOffsetCount == 0 ? getPlaybackHeadPositionUs() : this.smoothedPlayheadOffsetUs + jNanoTime;
            if (!z) {
                playbackHeadPositionUs = java.lang.Math.max(0L, playbackHeadPositionUs - this.latencyUs);
            }
        }
        if (this.lastSampleUsedGetTimestampMode != zHasAdvancingTimestamp) {
            this.previousModeSystemTimeUs = this.lastSystemTimeUs;
            this.previousModePositionUs = this.lastPositionUs;
        }
        long j = jNanoTime - this.previousModeSystemTimeUs;
        if (j < 1000000) {
            long mediaDurationForPlayoutDuration = com.google.android.exoplayer2.util.Util.getMediaDurationForPlayoutDuration(j, this.audioTrackPlaybackSpeed) + this.previousModePositionUs;
            long j2 = (j * 1000) / 1000000;
            playbackHeadPositionUs = (((1000 - j2) * mediaDurationForPlayoutDuration) + (playbackHeadPositionUs * j2)) / 1000;
        }
        if (!this.notifiedPositionIncreasing) {
            long j3 = this.lastPositionUs;
            if (playbackHeadPositionUs > j3) {
                this.notifiedPositionIncreasing = true;
                this.listener.onPositionAdvancing(java.lang.System.currentTimeMillis() - com.google.android.exoplayer2.util.Util.usToMs(com.google.android.exoplayer2.util.Util.getPlayoutDurationForMediaDuration(com.google.android.exoplayer2.util.Util.usToMs(playbackHeadPositionUs - j3), this.audioTrackPlaybackSpeed)));
            }
        }
        this.lastSystemTimeUs = jNanoTime;
        this.lastPositionUs = playbackHeadPositionUs;
        this.lastSampleUsedGetTimestampMode = zHasAdvancingTimestamp;
        return playbackHeadPositionUs;
    }

    public long getPendingBufferDurationMs(long j) {
        return com.google.android.exoplayer2.util.Util.usToMs(framesToDurationUs(j - getPlaybackHeadPosition()));
    }

    public void handleEndOfStream(long j) {
        this.stopPlaybackHeadPosition = getPlaybackHeadPosition();
        this.stopTimestampUs = android.os.SystemClock.elapsedRealtime() * 1000;
        this.endPlaybackHeadPosition = j;
    }

    public boolean hasPendingData(long j) {
        return j > getPlaybackHeadPosition() || forceHasPendingData();
    }

    public boolean isPlaying() {
        return ((android.media.AudioTrack) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioTrack)).getPlayState() == 3;
    }

    public boolean isStalled(long j) {
        return this.forceResetWorkaroundTimeMs != com.google.android.exoplayer2.C.TIME_UNSET && j > 0 && android.os.SystemClock.elapsedRealtime() - this.forceResetWorkaroundTimeMs >= 200;
    }

    public boolean mayHandleBuffer(long j) {
        int playState = ((android.media.AudioTrack) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioTrack)).getPlayState();
        if (this.needsPassthroughWorkarounds) {
            if (playState == 2) {
                this.hasData = false;
                return false;
            }
            if (playState == 1 && getPlaybackHeadPosition() == 0) {
                return false;
            }
        }
        boolean z = this.hasData;
        boolean zHasPendingData = hasPendingData(j);
        this.hasData = zHasPendingData;
        if (z && !zHasPendingData && playState != 1) {
            this.listener.onUnderrun(this.bufferSize, com.google.android.exoplayer2.util.Util.usToMs(this.bufferSizeUs));
        }
        return true;
    }

    public boolean pause() {
        resetSyncParams();
        if (this.stopTimestampUs != com.google.android.exoplayer2.C.TIME_UNSET) {
            return false;
        }
        ((com.google.android.exoplayer2.audio.AudioTimestampPoller) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioTimestampPoller)).reset();
        return true;
    }

    public void reset() {
        resetSyncParams();
        this.audioTrack = null;
        this.audioTimestampPoller = null;
    }

    public void setAudioTrack(android.media.AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.audioTrack = audioTrack;
        this.outputPcmFrameSize = i2;
        this.bufferSize = i3;
        this.audioTimestampPoller = new com.google.android.exoplayer2.audio.AudioTimestampPoller(audioTrack);
        this.outputSampleRate = audioTrack.getSampleRate();
        this.needsPassthroughWorkarounds = z && needsPassthroughWorkarounds(i);
        boolean zIsEncodingLinearPcm = com.google.android.exoplayer2.util.Util.isEncodingLinearPcm(i);
        this.isOutputPcm = zIsEncodingLinearPcm;
        this.bufferSizeUs = zIsEncodingLinearPcm ? framesToDurationUs(i3 / i2) : -9223372036854775807L;
        this.lastRawPlaybackHeadPosition = 0L;
        this.rawPlaybackHeadWrapCount = 0L;
        this.passthroughWorkaroundPauseOffset = 0L;
        this.hasData = false;
        this.stopTimestampUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.forceResetWorkaroundTimeMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.lastLatencySampleTimeUs = 0L;
        this.latencyUs = 0L;
        this.audioTrackPlaybackSpeed = 1.0f;
    }

    public void setAudioTrackPlaybackSpeed(float f2) {
        this.audioTrackPlaybackSpeed = f2;
        com.google.android.exoplayer2.audio.AudioTimestampPoller audioTimestampPoller = this.audioTimestampPoller;
        if (audioTimestampPoller != null) {
            audioTimestampPoller.reset();
        }
    }

    public void start() {
        ((com.google.android.exoplayer2.audio.AudioTimestampPoller) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.audioTimestampPoller)).reset();
    }
}
