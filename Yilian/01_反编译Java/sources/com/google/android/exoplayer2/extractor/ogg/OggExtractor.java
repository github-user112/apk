package com.google.android.exoplayer2.extractor.ogg;

/* loaded from: classes.dex */
public class OggExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final com.google.android.exoplayer2.extractor.ExtractorsFactory FACTORY = new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.i2.k.a
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
            return com.google.android.exoplayer2.extractor.ogg.OggExtractor.a();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
            return createExtractors();
        }
    };
    public static final int MAX_VERIFICATION_BYTES = 8;
    public com.google.android.exoplayer2.extractor.ExtractorOutput output;
    public com.google.android.exoplayer2.extractor.ogg.StreamReader streamReader;
    public boolean streamReaderInitialized;

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] a() {
        return new com.google.android.exoplayer2.extractor.Extractor[]{new com.google.android.exoplayer2.extractor.ogg.OggExtractor()};
    }

    public static com.google.android.exoplayer2.util.ParsableByteArray resetPosition(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(0);
        return parsableByteArray;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf(expression = {"streamReader"}, result = true)
    private boolean sniffInternal(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        com.google.android.exoplayer2.extractor.ogg.StreamReader opusReader;
        com.google.android.exoplayer2.extractor.ogg.OggPageHeader oggPageHeader = new com.google.android.exoplayer2.extractor.ogg.OggPageHeader();
        if (oggPageHeader.populate(extractorInput, true) && (oggPageHeader.type & 2) == 2) {
            int iMin = java.lang.Math.min(oggPageHeader.bodySize, 8);
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(iMin);
            extractorInput.peekFully(parsableByteArray.getData(), 0, iMin);
            if (com.google.android.exoplayer2.extractor.ogg.FlacReader.verifyBitstreamType(resetPosition(parsableByteArray))) {
                opusReader = new com.google.android.exoplayer2.extractor.ogg.FlacReader();
            } else if (com.google.android.exoplayer2.extractor.ogg.VorbisReader.verifyBitstreamType(resetPosition(parsableByteArray))) {
                opusReader = new com.google.android.exoplayer2.extractor.ogg.VorbisReader();
            } else if (com.google.android.exoplayer2.extractor.ogg.OpusReader.verifyBitstreamType(resetPosition(parsableByteArray))) {
                opusReader = new com.google.android.exoplayer2.extractor.ogg.OpusReader();
            }
            this.streamReader = opusReader;
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.output);
        if (this.streamReader == null) {
            if (!sniffInternal(extractorInput)) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Failed to determine bitstream type", null);
            }
            extractorInput.resetPeekPosition();
        }
        if (!this.streamReaderInitialized) {
            com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = this.output.track(0, 1);
            this.output.endTracks();
            this.streamReader.init(this.output, trackOutputTrack);
            this.streamReaderInitialized = true;
        }
        return this.streamReader.read(extractorInput, positionHolder);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        com.google.android.exoplayer2.extractor.ogg.StreamReader streamReader = this.streamReader;
        if (streamReader != null) {
            streamReader.seek(j, j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        try {
            return sniffInternal(extractorInput);
        } catch (com.google.android.exoplayer2.ParserException unused) {
            return false;
        }
    }
}
