package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class BundledHlsMediaChunkExtractor implements com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor {
    public static final com.google.android.exoplayer2.extractor.PositionHolder POSITION_HOLDER = new com.google.android.exoplayer2.extractor.PositionHolder();
    public final com.google.android.exoplayer2.extractor.Extractor extractor;
    public final com.google.android.exoplayer2.Format masterPlaylistFormat;
    public final com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster;

    public BundledHlsMediaChunkExtractor(com.google.android.exoplayer2.extractor.Extractor extractor, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster) {
        this.extractor = extractor;
        this.masterPlaylistFormat = format;
        this.timestampAdjuster = timestampAdjuster;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.extractor.init(extractorOutput);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean isPackedAudioExtractor() {
        com.google.android.exoplayer2.extractor.Extractor extractor = this.extractor;
        return (extractor instanceof com.google.android.exoplayer2.extractor.ts.AdtsExtractor) || (extractor instanceof com.google.android.exoplayer2.extractor.ts.Ac3Extractor) || (extractor instanceof com.google.android.exoplayer2.extractor.ts.Ac4Extractor) || (extractor instanceof com.google.android.exoplayer2.extractor.mp3.Mp3Extractor);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean isReusable() {
        com.google.android.exoplayer2.extractor.Extractor extractor = this.extractor;
        return (extractor instanceof com.google.android.exoplayer2.extractor.ts.TsExtractor) || (extractor instanceof com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public void onTruncatedSegmentParsed() {
        this.extractor.seek(0L, 0L);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        return this.extractor.read(extractorInput, POSITION_HOLDER) == 0;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor recreate() {
        com.google.android.exoplayer2.extractor.Extractor mp3Extractor;
        com.google.android.exoplayer2.util.Assertions.checkState(!isReusable());
        com.google.android.exoplayer2.extractor.Extractor extractor = this.extractor;
        if (extractor instanceof com.google.android.exoplayer2.source.hls.WebvttExtractor) {
            mp3Extractor = new com.google.android.exoplayer2.source.hls.WebvttExtractor(this.masterPlaylistFormat.language, this.timestampAdjuster);
        } else if (extractor instanceof com.google.android.exoplayer2.extractor.ts.AdtsExtractor) {
            mp3Extractor = new com.google.android.exoplayer2.extractor.ts.AdtsExtractor();
        } else if (extractor instanceof com.google.android.exoplayer2.extractor.ts.Ac3Extractor) {
            mp3Extractor = new com.google.android.exoplayer2.extractor.ts.Ac3Extractor();
        } else if (extractor instanceof com.google.android.exoplayer2.extractor.ts.Ac4Extractor) {
            mp3Extractor = new com.google.android.exoplayer2.extractor.ts.Ac4Extractor();
        } else {
            if (!(extractor instanceof com.google.android.exoplayer2.extractor.mp3.Mp3Extractor)) {
                java.lang.String simpleName = this.extractor.getClass().getSimpleName();
                throw new java.lang.IllegalStateException(simpleName.length() != 0 ? "Unexpected extractor type for recreation: ".concat(simpleName) : new java.lang.String("Unexpected extractor type for recreation: "));
            }
            mp3Extractor = new com.google.android.exoplayer2.extractor.mp3.Mp3Extractor();
        }
        return new com.google.android.exoplayer2.source.hls.BundledHlsMediaChunkExtractor(mp3Extractor, this.masterPlaylistFormat, this.timestampAdjuster);
    }
}
