package com.google.android.exoplayer2.extractor.ogg;

/* loaded from: classes.dex */
public final class DefaultOggSeeker implements com.google.android.exoplayer2.extractor.ogg.OggSeeker {
    public static final int DEFAULT_OFFSET = 30000;
    public static final int MATCH_BYTE_RANGE = 100000;
    public static final int MATCH_RANGE = 72000;
    public static final int STATE_IDLE = 4;
    public static final int STATE_READ_LAST_PAGE = 1;
    public static final int STATE_SEEK = 2;
    public static final int STATE_SEEK_TO_END = 0;
    public static final int STATE_SKIP = 3;
    public long end;
    public long endGranule;
    public final com.google.android.exoplayer2.extractor.ogg.OggPageHeader pageHeader;
    public final long payloadEndPosition;
    public final long payloadStartPosition;
    public long positionBeforeSeekToEnd;
    public long start;
    public long startGranule;
    public int state;
    public final com.google.android.exoplayer2.extractor.ogg.StreamReader streamReader;
    public long targetGranule;
    public long totalGranules;

    public final class OggSeekMap implements com.google.android.exoplayer2.extractor.SeekMap {
        public OggSeekMap() {
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.this.streamReader.convertGranuleToTime(com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.this.totalGranules);
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
            long jConvertTimeToGranule = com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.this.streamReader.convertTimeToGranule(j);
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(new com.google.android.exoplayer2.extractor.SeekPoint(j, com.google.android.exoplayer2.util.Util.constrainValue(((((com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.this.payloadEndPosition - com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.this.payloadStartPosition) * jConvertTimeToGranule) / com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.this.totalGranules) + com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.this.payloadStartPosition) - 30000, com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.this.payloadStartPosition, com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.this.payloadEndPosition - 1)));
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }
    }

    public DefaultOggSeeker(com.google.android.exoplayer2.extractor.ogg.StreamReader streamReader, long j, long j2, long j3, long j4, boolean z) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(j >= 0 && j2 > j);
        this.streamReader = streamReader;
        this.payloadStartPosition = j;
        this.payloadEndPosition = j2;
        if (j3 == j2 - j || z) {
            this.totalGranules = j4;
            this.state = 4;
        } else {
            this.state = 0;
        }
        this.pageHeader = new com.google.android.exoplayer2.extractor.ogg.OggPageHeader();
    }

    private long getNextSeekPosition(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws java.io.IOException {
        if (this.start == this.end) {
            return -1L;
        }
        long position = extractorInput.getPosition();
        if (!this.pageHeader.skipToNextPage(extractorInput, this.end)) {
            long j = this.start;
            if (j != position) {
                return j;
            }
            throw new java.io.IOException("No ogg page can be found.");
        }
        this.pageHeader.populate(extractorInput, false);
        extractorInput.resetPeekPosition();
        long j2 = this.targetGranule;
        com.google.android.exoplayer2.extractor.ogg.OggPageHeader oggPageHeader = this.pageHeader;
        long j3 = j2 - oggPageHeader.granulePosition;
        int i = oggPageHeader.headerSize + oggPageHeader.bodySize;
        if (0 <= j3 && j3 < 72000) {
            return -1L;
        }
        if (j3 < 0) {
            this.end = position;
            this.endGranule = this.pageHeader.granulePosition;
        } else {
            this.start = extractorInput.getPosition() + i;
            this.startGranule = this.pageHeader.granulePosition;
        }
        long j4 = this.end;
        long j5 = this.start;
        if (j4 - j5 < 100000) {
            this.end = j5;
            return j5;
        }
        long position2 = extractorInput.getPosition() - (i * (j3 <= 0 ? 2L : 1L));
        long j6 = this.end;
        long j7 = this.start;
        return com.google.android.exoplayer2.util.Util.constrainValue((((j6 - j7) * j3) / (this.endGranule - this.startGranule)) + position2, j7, j6 - 1);
    }

    private void skipToPageOfTargetGranule(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        while (true) {
            this.pageHeader.skipToNextPage(extractorInput);
            this.pageHeader.populate(extractorInput, false);
            com.google.android.exoplayer2.extractor.ogg.OggPageHeader oggPageHeader = this.pageHeader;
            if (oggPageHeader.granulePosition > this.targetGranule) {
                extractorInput.resetPeekPosition();
                return;
            } else {
                extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
                this.start = extractorInput.getPosition();
                this.startGranule = this.pageHeader.granulePosition;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.OggSeeker
    public com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.OggSeekMap createSeekMap() {
        if (this.totalGranules != 0) {
            return new com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker.OggSeekMap();
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.OggSeeker
    public long read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws java.io.IOException {
        int i = this.state;
        if (i == 0) {
            long position = extractorInput.getPosition();
            this.positionBeforeSeekToEnd = position;
            this.state = 1;
            long j = this.payloadEndPosition - 65307;
            if (j > position) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long nextSeekPosition = getNextSeekPosition(extractorInput);
                if (nextSeekPosition != -1) {
                    return nextSeekPosition;
                }
                this.state = 3;
            } else if (i != 3) {
                if (i == 4) {
                    return -1L;
                }
                throw new java.lang.IllegalStateException();
            }
            skipToPageOfTargetGranule(extractorInput);
            this.state = 4;
            return -(this.startGranule + 2);
        }
        this.totalGranules = readGranuleOfLastPage(extractorInput);
        this.state = 4;
        return this.positionBeforeSeekToEnd;
    }

    public long readGranuleOfLastPage(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException, java.io.EOFException {
        long j;
        com.google.android.exoplayer2.extractor.ogg.OggPageHeader oggPageHeader;
        this.pageHeader.reset();
        if (!this.pageHeader.skipToNextPage(extractorInput)) {
            throw new java.io.EOFException();
        }
        this.pageHeader.populate(extractorInput, false);
        com.google.android.exoplayer2.extractor.ogg.OggPageHeader oggPageHeader2 = this.pageHeader;
        extractorInput.skipFully(oggPageHeader2.headerSize + oggPageHeader2.bodySize);
        do {
            j = this.pageHeader.granulePosition;
            com.google.android.exoplayer2.extractor.ogg.OggPageHeader oggPageHeader3 = this.pageHeader;
            if ((oggPageHeader3.type & 4) == 4 || !oggPageHeader3.skipToNextPage(extractorInput) || extractorInput.getPosition() >= this.payloadEndPosition || !this.pageHeader.populate(extractorInput, true)) {
                break;
            }
            oggPageHeader = this.pageHeader;
        } while (com.google.android.exoplayer2.extractor.ExtractorUtil.skipFullyQuietly(extractorInput, oggPageHeader.headerSize + oggPageHeader.bodySize));
        return j;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.OggSeeker
    public void startSeek(long j) {
        this.targetGranule = com.google.android.exoplayer2.util.Util.constrainValue(j, 0L, this.totalGranules - 1);
        this.state = 2;
        this.start = this.payloadStartPosition;
        this.end = this.payloadEndPosition;
        this.startGranule = 0L;
        this.endGranule = this.totalGranules;
    }
}
