package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class AudioTimestampPoller {
    public static final int ERROR_POLL_INTERVAL_US = 500000;
    public static final int FAST_POLL_INTERVAL_US = 10000;
    public static final int INITIALIZING_DURATION_US = 500000;
    public static final int SLOW_POLL_INTERVAL_US = 10000000;
    public static final int STATE_ERROR = 4;
    public static final int STATE_INITIALIZING = 0;
    public static final int STATE_NO_TIMESTAMP = 3;
    public static final int STATE_TIMESTAMP = 1;
    public static final int STATE_TIMESTAMP_ADVANCING = 2;
    public final com.google.android.exoplayer2.audio.AudioTimestampPoller.AudioTimestampV19 audioTimestamp;
    public long initialTimestampPositionFrames;
    public long initializeSystemTimeUs;
    public long lastTimestampSampleTimeUs;
    public long sampleIntervalUs;
    public int state;

    public static final class AudioTimestampV19 {
        public final android.media.AudioTimestamp audioTimestamp = new android.media.AudioTimestamp();
        public final android.media.AudioTrack audioTrack;
        public long lastTimestampPositionFrames;
        public long lastTimestampRawPositionFrames;
        public long rawTimestampFramePositionWrapCount;

        public AudioTimestampV19(android.media.AudioTrack audioTrack) {
            this.audioTrack = audioTrack;
        }

        public long getTimestampPositionFrames() {
            return this.lastTimestampPositionFrames;
        }

        public long getTimestampSystemTimeUs() {
            return this.audioTimestamp.nanoTime / 1000;
        }

        public boolean maybeUpdateTimestamp() {
            boolean timestamp = this.audioTrack.getTimestamp(this.audioTimestamp);
            if (timestamp) {
                long j = this.audioTimestamp.framePosition;
                if (this.lastTimestampRawPositionFrames > j) {
                    this.rawTimestampFramePositionWrapCount++;
                }
                this.lastTimestampRawPositionFrames = j;
                this.lastTimestampPositionFrames = j + (this.rawTimestampFramePositionWrapCount << 32);
            }
            return timestamp;
        }
    }

    public AudioTimestampPoller(android.media.AudioTrack audioTrack) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 19) {
            this.audioTimestamp = new com.google.android.exoplayer2.audio.AudioTimestampPoller.AudioTimestampV19(audioTrack);
            reset();
        } else {
            this.audioTimestamp = null;
            updateState(3);
        }
    }

    private void updateState(int i) {
        this.state = i;
        long j = 10000;
        if (i == 0) {
            this.lastTimestampSampleTimeUs = 0L;
            this.initialTimestampPositionFrames = -1L;
            this.initializeSystemTimeUs = java.lang.System.nanoTime() / 1000;
        } else if (i != 1) {
            if (i == 2 || i == 3) {
                j = 10000000;
            } else {
                if (i != 4) {
                    throw new java.lang.IllegalStateException();
                }
                j = 500000;
            }
        }
        this.sampleIntervalUs = j;
    }

    public void acceptTimestamp() {
        if (this.state == 4) {
            reset();
        }
    }

    @android.annotation.TargetApi(19)
    public long getTimestampPositionFrames() {
        com.google.android.exoplayer2.audio.AudioTimestampPoller.AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        if (audioTimestampV19 != null) {
            return audioTimestampV19.getTimestampPositionFrames();
        }
        return -1L;
    }

    @android.annotation.TargetApi(19)
    public long getTimestampSystemTimeUs() {
        com.google.android.exoplayer2.audio.AudioTimestampPoller.AudioTimestampV19 audioTimestampV19 = this.audioTimestamp;
        return audioTimestampV19 != null ? audioTimestampV19.getTimestampSystemTimeUs() : com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public boolean hasAdvancingTimestamp() {
        return this.state == 2;
    }

    public boolean hasTimestamp() {
        int i = this.state;
        return i == 1 || i == 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0045  */
    @android.annotation.TargetApi(19)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean maybePollTimestamp(long r8) {
        /*
            r7 = this;
            com.google.android.exoplayer2.audio.AudioTimestampPoller$AudioTimestampV19 r0 = r7.audioTimestamp
            r1 = 0
            if (r0 == 0) goto L71
            long r2 = r7.lastTimestampSampleTimeUs
            long r2 = r8 - r2
            long r4 = r7.sampleIntervalUs
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 >= 0) goto L10
            goto L71
        L10:
            r7.lastTimestampSampleTimeUs = r8
            boolean r0 = r0.maybeUpdateTimestamp()
            int r2 = r7.state
            r3 = 3
            r4 = 1
            if (r2 == 0) goto L49
            r8 = 2
            if (r2 == r4) goto L33
            if (r2 == r8) goto L30
            if (r2 == r3) goto L2d
            r8 = 4
            if (r2 != r8) goto L27
            goto L70
        L27:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            throw r8
        L2d:
            if (r0 == 0) goto L70
            goto L45
        L30:
            if (r0 != 0) goto L70
            goto L45
        L33:
            if (r0 == 0) goto L45
            com.google.android.exoplayer2.audio.AudioTimestampPoller$AudioTimestampV19 r9 = r7.audioTimestamp
            long r1 = r9.getTimestampPositionFrames()
            long r3 = r7.initialTimestampPositionFrames
            int r9 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r9 <= 0) goto L70
            r7.updateState(r8)
            goto L70
        L45:
            r7.reset()
            goto L70
        L49:
            if (r0 == 0) goto L63
            com.google.android.exoplayer2.audio.AudioTimestampPoller$AudioTimestampV19 r8 = r7.audioTimestamp
            long r8 = r8.getTimestampSystemTimeUs()
            long r2 = r7.initializeSystemTimeUs
            int r5 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r5 < 0) goto L71
            com.google.android.exoplayer2.audio.AudioTimestampPoller$AudioTimestampV19 r8 = r7.audioTimestamp
            long r8 = r8.getTimestampPositionFrames()
            r7.initialTimestampPositionFrames = r8
            r7.updateState(r4)
            goto L70
        L63:
            long r1 = r7.initializeSystemTimeUs
            long r8 = r8 - r1
            r1 = 500000(0x7a120, double:2.47033E-318)
            int r4 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r4 <= 0) goto L70
            r7.updateState(r3)
        L70:
            r1 = r0
        L71:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.AudioTimestampPoller.maybePollTimestamp(long):boolean");
    }

    public void rejectTimestamp() {
        updateState(4);
    }

    public void reset() {
        if (this.audioTimestamp != null) {
            updateState(0);
        }
    }
}
