package com.google.android.exoplayer2.extractor.jpeg;

/* loaded from: classes.dex */
public final class StartOffsetExtractorOutput implements com.google.android.exoplayer2.extractor.ExtractorOutput {
    public final com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public final long startOffset;

    public StartOffsetExtractorOutput(long j, com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.startOffset = j;
        this.extractorOutput = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(final com.google.android.exoplayer2.extractor.SeekMap seekMap) {
        this.extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.SeekMap() { // from class: com.google.android.exoplayer2.extractor.jpeg.StartOffsetExtractorOutput.1
            @Override // com.google.android.exoplayer2.extractor.SeekMap
            public long getDurationUs() {
                return seekMap.getDurationUs();
            }

            @Override // com.google.android.exoplayer2.extractor.SeekMap
            public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
                com.google.android.exoplayer2.extractor.SeekMap.SeekPoints seekPoints = seekMap.getSeekPoints(j);
                com.google.android.exoplayer2.extractor.SeekPoint seekPoint = seekPoints.first;
                com.google.android.exoplayer2.extractor.SeekPoint seekPoint2 = new com.google.android.exoplayer2.extractor.SeekPoint(seekPoint.timeUs, com.google.android.exoplayer2.extractor.jpeg.StartOffsetExtractorOutput.this.startOffset + seekPoint.position);
                com.google.android.exoplayer2.extractor.SeekPoint seekPoint3 = seekPoints.second;
                return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint2, new com.google.android.exoplayer2.extractor.SeekPoint(seekPoint3.timeUs, com.google.android.exoplayer2.extractor.jpeg.StartOffsetExtractorOutput.this.startOffset + seekPoint3.position));
            }

            @Override // com.google.android.exoplayer2.extractor.SeekMap
            public boolean isSeekable() {
                return seekMap.isSeekable();
            }
        });
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public com.google.android.exoplayer2.extractor.TrackOutput track(int i, int i2) {
        return this.extractorOutput.track(i, i2);
    }
}
