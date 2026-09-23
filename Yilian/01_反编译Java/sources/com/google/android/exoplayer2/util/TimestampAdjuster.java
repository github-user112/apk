package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class TimestampAdjuster {
    public static final long MAX_PTS_PLUS_ONE = 8589934592L;
    public static final long MODE_NO_OFFSET = Long.MAX_VALUE;
    public static final long MODE_SHARED = 9223372036854775806L;
    public long firstSampleTimestampUs;
    public long lastUnadjustedTimestampUs;
    public final java.lang.ThreadLocal<java.lang.Long> nextSampleTimestampUs = new java.lang.ThreadLocal<>();
    public long timestampOffsetUs;

    public TimestampAdjuster(long j) {
        reset(j);
    }

    public static long ptsToUs(long j) {
        return (j * 1000000) / 90000;
    }

    public static long usToNonWrappedPts(long j) {
        return (j * 90000) / 1000000;
    }

    public static long usToWrappedPts(long j) {
        return usToNonWrappedPts(j) % MAX_PTS_PLUS_ONE;
    }

    public synchronized long adjustSampleTimestamp(long j) {
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        if (this.timestampOffsetUs == com.google.android.exoplayer2.C.TIME_UNSET) {
            this.timestampOffsetUs = (this.firstSampleTimestampUs == MODE_SHARED ? ((java.lang.Long) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.nextSampleTimestampUs.get())).longValue() : this.firstSampleTimestampUs) - j;
            notifyAll();
        }
        this.lastUnadjustedTimestampUs = j;
        return j + this.timestampOffsetUs;
    }

    public synchronized long adjustTsTimestamp(long j) {
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        if (this.lastUnadjustedTimestampUs != com.google.android.exoplayer2.C.TIME_UNSET) {
            long jUsToNonWrappedPts = usToNonWrappedPts(this.lastUnadjustedTimestampUs);
            long j2 = (4294967296L + jUsToNonWrappedPts) / MAX_PTS_PLUS_ONE;
            long j3 = ((j2 - 1) * MAX_PTS_PLUS_ONE) + j;
            long j4 = (j2 * MAX_PTS_PLUS_ONE) + j;
            j = java.lang.Math.abs(j3 - jUsToNonWrappedPts) < java.lang.Math.abs(j4 - jUsToNonWrappedPts) ? j3 : j4;
        }
        return adjustSampleTimestamp(ptsToUs(j));
    }

    public synchronized long getFirstSampleTimestampUs() {
        return (this.firstSampleTimestampUs == Long.MAX_VALUE || this.firstSampleTimestampUs == MODE_SHARED) ? com.google.android.exoplayer2.C.TIME_UNSET : this.firstSampleTimestampUs;
    }

    public synchronized long getLastAdjustedTimestampUs() {
        return this.lastUnadjustedTimestampUs != com.google.android.exoplayer2.C.TIME_UNSET ? this.lastUnadjustedTimestampUs + this.timestampOffsetUs : getFirstSampleTimestampUs();
    }

    public synchronized long getTimestampOffsetUs() {
        return this.timestampOffsetUs;
    }

    public synchronized void reset(long j) {
        this.firstSampleTimestampUs = j;
        this.timestampOffsetUs = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.lastUnadjustedTimestampUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public synchronized void sharedInitializeOrWait(boolean z, long j) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.firstSampleTimestampUs == MODE_SHARED);
        if (this.timestampOffsetUs != com.google.android.exoplayer2.C.TIME_UNSET) {
            return;
        }
        if (z) {
            this.nextSampleTimestampUs.set(java.lang.Long.valueOf(j));
        } else {
            while (this.timestampOffsetUs == com.google.android.exoplayer2.C.TIME_UNSET) {
                wait();
            }
        }
    }
}
