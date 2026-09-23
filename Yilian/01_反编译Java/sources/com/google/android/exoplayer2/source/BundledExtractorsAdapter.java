package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class BundledExtractorsAdapter implements com.google.android.exoplayer2.source.ProgressiveMediaExtractor {
    public com.google.android.exoplayer2.extractor.Extractor extractor;
    public com.google.android.exoplayer2.extractor.ExtractorInput extractorInput;
    public final com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory;

    public BundledExtractorsAdapter(com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory) {
        this.extractorsFactory = extractorsFactory;
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void disableSeekingOnMp3Streams() {
        com.google.android.exoplayer2.extractor.Extractor extractor = this.extractor;
        if (extractor instanceof com.google.android.exoplayer2.extractor.mp3.Mp3Extractor) {
            ((com.google.android.exoplayer2.extractor.mp3.Mp3Extractor) extractor).disableSeeking();
        }
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public long getCurrentInputPosition() {
        com.google.android.exoplayer2.extractor.ExtractorInput extractorInput = this.extractorInput;
        if (extractorInput != null) {
            return extractorInput.getPosition();
        }
        return -1L;
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void init(com.google.android.exoplayer2.upstream.DataReader dataReader, android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map, long j, long j2, com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) throws com.google.android.exoplayer2.source.UnrecognizedInputFormatException {
        com.google.android.exoplayer2.extractor.DefaultExtractorInput defaultExtractorInput = new com.google.android.exoplayer2.extractor.DefaultExtractorInput(dataReader, j, j2);
        this.extractorInput = defaultExtractorInput;
        if (this.extractor != null) {
            return;
        }
        com.google.android.exoplayer2.extractor.Extractor[] extractorArrCreateExtractors = this.extractorsFactory.createExtractors(uri, map);
        if (extractorArrCreateExtractors.length == 1) {
            this.extractor = extractorArrCreateExtractors[0];
        } else {
            int length = extractorArrCreateExtractors.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                com.google.android.exoplayer2.extractor.Extractor extractor = extractorArrCreateExtractors[i];
                try {
                } catch (java.io.EOFException unused) {
                    if (this.extractor != null || defaultExtractorInput.getPosition() == j) {
                    }
                } catch (java.lang.Throwable th) {
                    com.google.android.exoplayer2.util.Assertions.checkState(this.extractor != null || defaultExtractorInput.getPosition() == j);
                    defaultExtractorInput.resetPeekPosition();
                    throw th;
                }
                if (extractor.sniff(defaultExtractorInput)) {
                    this.extractor = extractor;
                    com.google.android.exoplayer2.util.Assertions.checkState(extractor != null || defaultExtractorInput.getPosition() == j);
                    defaultExtractorInput.resetPeekPosition();
                } else {
                    boolean z = this.extractor != null || defaultExtractorInput.getPosition() == j;
                    com.google.android.exoplayer2.util.Assertions.checkState(z);
                    defaultExtractorInput.resetPeekPosition();
                    i++;
                }
            }
            if (this.extractor == null) {
                java.lang.String commaDelimitedSimpleClassNames = com.google.android.exoplayer2.util.Util.getCommaDelimitedSimpleClassNames(extractorArrCreateExtractors);
                throw new com.google.android.exoplayer2.source.UnrecognizedInputFormatException(e.a.c.a.a.G(e.a.c.a.a.m(commaDelimitedSimpleClassNames, 58), "None of the available extractors (", commaDelimitedSimpleClassNames, ") could read the stream."), (android.net.Uri) com.google.android.exoplayer2.util.Assertions.checkNotNull(uri));
            }
        }
        this.extractor.init(extractorOutput);
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public int read(com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        return ((com.google.android.exoplayer2.extractor.Extractor) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.extractor)).read((com.google.android.exoplayer2.extractor.ExtractorInput) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.extractorInput), positionHolder);
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void release() {
        com.google.android.exoplayer2.extractor.Extractor extractor = this.extractor;
        if (extractor != null) {
            extractor.release();
            this.extractor = null;
        }
        this.extractorInput = null;
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void seek(long j, long j2) {
        ((com.google.android.exoplayer2.extractor.Extractor) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.extractor)).seek(j, j2);
    }
}
