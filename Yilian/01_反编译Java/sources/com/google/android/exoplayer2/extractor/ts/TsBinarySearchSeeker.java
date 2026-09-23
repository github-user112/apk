package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class TsBinarySearchSeeker extends com.google.android.exoplayer2.extractor.BinarySearchSeeker {
    public static final int MINIMUM_SEARCH_RANGE_BYTES = 940;
    public static final long SEEK_TOLERANCE_US = 100000;

    public static final class TsPcrSeeker implements com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker {
        public final com.google.android.exoplayer2.util.ParsableByteArray packetBuffer = new com.google.android.exoplayer2.util.ParsableByteArray();
        public final int pcrPid;
        public final com.google.android.exoplayer2.util.TimestampAdjuster pcrTimestampAdjuster;
        public final int timestampSearchBytes;

        public TsPcrSeeker(int i, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, int i2) {
            this.pcrPid = i;
            this.pcrTimestampAdjuster = timestampAdjuster;
            this.timestampSearchBytes = i2;
        }

        private com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult searchForPcrValueInBuffer(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, long j, long j2) {
            int iFindSyncBytePosition;
            int iFindSyncBytePosition2;
            int iLimit = parsableByteArray.limit();
            long j3 = -1;
            long j4 = -1;
            long j5 = -9223372036854775807L;
            while (parsableByteArray.bytesLeft() >= 188 && (iFindSyncBytePosition2 = (iFindSyncBytePosition = com.google.android.exoplayer2.extractor.ts.TsUtil.findSyncBytePosition(parsableByteArray.getData(), parsableByteArray.getPosition(), iLimit)) + 188) <= iLimit) {
                long pcrFromPacket = com.google.android.exoplayer2.extractor.ts.TsUtil.readPcrFromPacket(parsableByteArray, iFindSyncBytePosition, this.pcrPid);
                if (pcrFromPacket != com.google.android.exoplayer2.C.TIME_UNSET) {
                    long jAdjustTsTimestamp = this.pcrTimestampAdjuster.adjustTsTimestamp(pcrFromPacket);
                    if (jAdjustTsTimestamp > j) {
                        return j5 == com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.overestimatedResult(jAdjustTsTimestamp, j2) : com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.targetFoundResult(j2 + j4);
                    }
                    if (100000 + jAdjustTsTimestamp > j) {
                        return com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.targetFoundResult(j2 + iFindSyncBytePosition);
                    }
                    j4 = iFindSyncBytePosition;
                    j5 = jAdjustTsTimestamp;
                }
                parsableByteArray.setPosition(iFindSyncBytePosition2);
                j3 = iFindSyncBytePosition2;
            }
            return j5 != com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.underestimatedResult(j5, j2 + j3) : com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.NO_TIMESTAMP_IN_RANGE_RESULT;
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public void onSeekFinished() {
            this.packetBuffer.reset(com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY);
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult searchForTimestamp(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, long j) {
            long position = extractorInput.getPosition();
            int iMin = (int) java.lang.Math.min(this.timestampSearchBytes, extractorInput.getLength() - position);
            this.packetBuffer.reset(iMin);
            extractorInput.peekFully(this.packetBuffer.getData(), 0, iMin);
            return searchForPcrValueInBuffer(this.packetBuffer, j, position);
        }
    }

    public TsBinarySearchSeeker(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, long j, long j2, int i, int i2) {
        super(new com.google.android.exoplayer2.extractor.BinarySearchSeeker.DefaultSeekTimestampConverter(), new com.google.android.exoplayer2.extractor.ts.TsBinarySearchSeeker.TsPcrSeeker(i, timestampAdjuster, i2), j, 0L, j + 1, 0L, j2, 188L, MINIMUM_SEARCH_RANGE_BYTES);
    }
}
