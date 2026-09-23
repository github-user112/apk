package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public interface ProgressiveMediaExtractor {

    public interface Factory {
        com.google.android.exoplayer2.source.ProgressiveMediaExtractor createProgressiveMediaExtractor();
    }

    void disableSeekingOnMp3Streams();

    long getCurrentInputPosition();

    void init(com.google.android.exoplayer2.upstream.DataReader dataReader, android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map, long j, long j2, com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput);

    int read(com.google.android.exoplayer2.extractor.PositionHolder positionHolder);

    void release();

    void seek(long j, long j2);
}
