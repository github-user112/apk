package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class UnexpectedSampleTimestampException extends java.io.IOException {
    public final long lastAcceptedSampleTimeUs;
    public final com.google.android.exoplayer2.source.chunk.MediaChunk mediaChunk;
    public final long rejectedSampleTimeUs;

    public UnexpectedSampleTimestampException(com.google.android.exoplayer2.source.chunk.MediaChunk mediaChunk, long j, long j2) {
        long jUsToMs = com.google.android.exoplayer2.util.Util.usToMs(j2);
        long j3 = mediaChunk.startTimeUs;
        long j4 = mediaChunk.endTimeUs;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(103);
        sb.append("Unexpected sample timestamp: ");
        sb.append(jUsToMs);
        sb.append(" in chunk [");
        sb.append(j3);
        sb.append(", ");
        sb.append(j4);
        sb.append("]");
        super(sb.toString());
        this.mediaChunk = mediaChunk;
        this.lastAcceptedSampleTimeUs = j;
        this.rejectedSampleTimeUs = j2;
    }
}
