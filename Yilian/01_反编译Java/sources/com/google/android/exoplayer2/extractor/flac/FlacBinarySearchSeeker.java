package com.google.android.exoplayer2.extractor.flac;

/* loaded from: classes.dex */
public final class FlacBinarySearchSeeker extends com.google.android.exoplayer2.extractor.BinarySearchSeeker {

    public static final class FlacTimestampSeeker implements com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker {
        public final com.google.android.exoplayer2.extractor.FlacStreamMetadata flacStreamMetadata;
        public final int frameStartMarker;
        public final com.google.android.exoplayer2.extractor.FlacFrameReader.SampleNumberHolder sampleNumberHolder;

        public FlacTimestampSeeker(com.google.android.exoplayer2.extractor.FlacStreamMetadata flacStreamMetadata, int i) {
            this.flacStreamMetadata = flacStreamMetadata;
            this.frameStartMarker = i;
            this.sampleNumberHolder = new com.google.android.exoplayer2.extractor.FlacFrameReader.SampleNumberHolder();
        }

        private long findNextFrame(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
            while (extractorInput.getPeekPosition() < extractorInput.getLength() - 6 && !com.google.android.exoplayer2.extractor.FlacFrameReader.checkFrameHeaderFromPeek(extractorInput, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder)) {
                extractorInput.advancePeekPosition(1);
            }
            if (extractorInput.getPeekPosition() < extractorInput.getLength() - 6) {
                return this.sampleNumberHolder.sampleNumber;
            }
            extractorInput.advancePeekPosition((int) (extractorInput.getLength() - extractorInput.getPeekPosition()));
            return this.flacStreamMetadata.totalSamples;
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public /* synthetic */ void onSeekFinished() {
            e.c.a.a.i2.b.$default$onSeekFinished(this);
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult searchForTimestamp(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, long j) {
            long position = extractorInput.getPosition();
            long jFindNextFrame = findNextFrame(extractorInput);
            long peekPosition = extractorInput.getPeekPosition();
            extractorInput.advancePeekPosition(java.lang.Math.max(6, this.flacStreamMetadata.minFrameSize));
            long jFindNextFrame2 = findNextFrame(extractorInput);
            return (jFindNextFrame > j || jFindNextFrame2 <= j) ? jFindNextFrame2 <= j ? com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.underestimatedResult(jFindNextFrame2, extractorInput.getPeekPosition()) : com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.overestimatedResult(jFindNextFrame, position) : com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.targetFoundResult(peekPosition);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlacBinarySearchSeeker(final com.google.android.exoplayer2.extractor.FlacStreamMetadata flacStreamMetadata, int i, long j, long j2) {
        super(new com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter() { // from class: e.c.a.a.i2.f.b
            @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter
            public final long timeUsToTargetTime(long j3) {
                return flacStreamMetadata.getSampleNumber(j3);
            }
        }, new com.google.android.exoplayer2.extractor.flac.FlacBinarySearchSeeker.FlacTimestampSeeker(flacStreamMetadata, i), flacStreamMetadata.getDurationUs(), 0L, flacStreamMetadata.totalSamples, j, j2, flacStreamMetadata.getApproxBytesPerFrame(), java.lang.Math.max(6, flacStreamMetadata.minFrameSize));
        flacStreamMetadata.getClass();
    }
}
