package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public interface HlsMediaChunkExtractor {
    void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput);

    boolean isPackedAudioExtractor();

    boolean isReusable();

    void onTruncatedSegmentParsed();

    boolean read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput);

    com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor recreate();
}
