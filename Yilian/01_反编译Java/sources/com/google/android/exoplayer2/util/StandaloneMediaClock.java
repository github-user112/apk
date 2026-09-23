package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class StandaloneMediaClock implements com.google.android.exoplayer2.util.MediaClock {
    public long baseElapsedMs;
    public long baseUs;
    public final com.google.android.exoplayer2.util.Clock clock;
    public com.google.android.exoplayer2.PlaybackParameters playbackParameters = com.google.android.exoplayer2.PlaybackParameters.DEFAULT;
    public boolean started;

    public StandaloneMediaClock(com.google.android.exoplayer2.util.Clock clock) {
        this.clock = clock;
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public com.google.android.exoplayer2.PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public long getPositionUs() {
        long j = this.baseUs;
        if (!this.started) {
            return j;
        }
        long jElapsedRealtime = this.clock.elapsedRealtime() - this.baseElapsedMs;
        com.google.android.exoplayer2.PlaybackParameters playbackParameters = this.playbackParameters;
        return j + (playbackParameters.speed == 1.0f ? com.google.android.exoplayer2.util.Util.msToUs(jElapsedRealtime) : playbackParameters.getMediaTimeUsForPlayoutTimeMs(jElapsedRealtime));
    }

    public void resetPosition(long j) {
        this.baseUs = j;
        if (this.started) {
            this.baseElapsedMs = this.clock.elapsedRealtime();
        }
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public void setPlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        if (this.started) {
            resetPosition(getPositionUs());
        }
        this.playbackParameters = playbackParameters;
    }

    public void start() {
        if (this.started) {
            return;
        }
        this.baseElapsedMs = this.clock.elapsedRealtime();
        this.started = true;
    }

    public void stop() {
        if (this.started) {
            resetPosition(getPositionUs());
            this.started = false;
        }
    }
}
