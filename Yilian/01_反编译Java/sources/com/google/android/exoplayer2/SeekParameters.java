package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class SeekParameters {
    public final long toleranceAfterUs;
    public final long toleranceBeforeUs;
    public static final com.google.android.exoplayer2.SeekParameters EXACT = new com.google.android.exoplayer2.SeekParameters(0, 0);
    public static final com.google.android.exoplayer2.SeekParameters CLOSEST_SYNC = new com.google.android.exoplayer2.SeekParameters(Long.MAX_VALUE, Long.MAX_VALUE);
    public static final com.google.android.exoplayer2.SeekParameters PREVIOUS_SYNC = new com.google.android.exoplayer2.SeekParameters(Long.MAX_VALUE, 0);
    public static final com.google.android.exoplayer2.SeekParameters NEXT_SYNC = new com.google.android.exoplayer2.SeekParameters(0, Long.MAX_VALUE);
    public static final com.google.android.exoplayer2.SeekParameters DEFAULT = EXACT;

    public SeekParameters(long j, long j2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(j >= 0);
        com.google.android.exoplayer2.util.Assertions.checkArgument(j2 >= 0);
        this.toleranceBeforeUs = j;
        this.toleranceAfterUs = j2;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.SeekParameters.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.SeekParameters seekParameters = (com.google.android.exoplayer2.SeekParameters) obj;
        return this.toleranceBeforeUs == seekParameters.toleranceBeforeUs && this.toleranceAfterUs == seekParameters.toleranceAfterUs;
    }

    public int hashCode() {
        return (((int) this.toleranceBeforeUs) * 31) + ((int) this.toleranceAfterUs);
    }

    public long resolveSeekPositionUs(long j, long j2, long j3) {
        if (this.toleranceBeforeUs == 0 && this.toleranceAfterUs == 0) {
            return j;
        }
        long jSubtractWithOverflowDefault = com.google.android.exoplayer2.util.Util.subtractWithOverflowDefault(j, this.toleranceBeforeUs, Long.MIN_VALUE);
        long jAddWithOverflowDefault = com.google.android.exoplayer2.util.Util.addWithOverflowDefault(j, this.toleranceAfterUs, Long.MAX_VALUE);
        boolean z = jSubtractWithOverflowDefault <= j2 && j2 <= jAddWithOverflowDefault;
        boolean z2 = jSubtractWithOverflowDefault <= j3 && j3 <= jAddWithOverflowDefault;
        return (z && z2) ? java.lang.Math.abs(j2 - j) <= java.lang.Math.abs(j3 - j) ? j2 : j3 : z ? j2 : z2 ? j3 : jSubtractWithOverflowDefault;
    }
}
