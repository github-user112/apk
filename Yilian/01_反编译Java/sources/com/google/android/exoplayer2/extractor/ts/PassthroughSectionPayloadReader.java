package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class PassthroughSectionPayloadReader implements com.google.android.exoplayer2.extractor.ts.SectionPayloadReader {
    public com.google.android.exoplayer2.Format format;
    public com.google.android.exoplayer2.extractor.TrackOutput output;
    public com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster;

    public PassthroughSectionPayloadReader(java.lang.String str) {
        this.format = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(str).build();
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"timestampAdjuster", "output"})
    private void assertInitialized() {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.timestampAdjuster);
        com.google.android.exoplayer2.util.Util.castNonNull(this.output);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        assertInitialized();
        long lastAdjustedTimestampUs = this.timestampAdjuster.getLastAdjustedTimestampUs();
        long timestampOffsetUs = this.timestampAdjuster.getTimestampOffsetUs();
        if (lastAdjustedTimestampUs == com.google.android.exoplayer2.C.TIME_UNSET || timestampOffsetUs == com.google.android.exoplayer2.C.TIME_UNSET) {
            return;
        }
        com.google.android.exoplayer2.Format format = this.format;
        if (timestampOffsetUs != format.subsampleOffsetUs) {
            com.google.android.exoplayer2.Format formatBuild = format.buildUpon().setSubsampleOffsetUs(timestampOffsetUs).build();
            this.format = formatBuild;
            this.output.format(formatBuild);
        }
        int iBytesLeft = parsableByteArray.bytesLeft();
        this.output.sampleData(parsableByteArray, iBytesLeft);
        this.output.sampleMetadata(lastAdjustedTimestampUs, 1, iBytesLeft, 0, null);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.SectionPayloadReader
    public void init(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.timestampAdjuster = timestampAdjuster;
        trackIdGenerator.generateNewId();
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 5);
        this.output = trackOutputTrack;
        trackOutputTrack.format(this.format);
    }
}
