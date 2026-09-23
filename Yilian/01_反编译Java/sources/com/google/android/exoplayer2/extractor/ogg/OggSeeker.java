package com.google.android.exoplayer2.extractor.ogg;

/* loaded from: classes.dex */
public interface OggSeeker {
    com.google.android.exoplayer2.extractor.SeekMap createSeekMap();

    long read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput);

    void startSeek(long j);
}
