package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public abstract class BinarySearchSeeker {
    public static final long MAX_SKIP_BYTES = 262144;
    public final int minimumSearchRange;
    public final com.google.android.exoplayer2.extractor.BinarySearchSeeker.BinarySearchSeekMap seekMap;
    public com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekOperationParams seekOperationParams;
    public final com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker timestampSeeker;

    public static class BinarySearchSeekMap implements com.google.android.exoplayer2.extractor.SeekMap {
        public final long approxBytesPerFrame;
        public final long ceilingBytePosition;
        public final long ceilingTimePosition;
        public final long durationUs;
        public final long floorBytePosition;
        public final long floorTimePosition;
        public final com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter seekTimestampConverter;

        public BinarySearchSeekMap(com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter seekTimestampConverter, long j, long j2, long j3, long j4, long j5, long j6) {
            this.seekTimestampConverter = seekTimestampConverter;
            this.durationUs = j;
            this.floorTimePosition = j2;
            this.ceilingTimePosition = j3;
            this.floorBytePosition = j4;
            this.ceilingBytePosition = j5;
            this.approxBytesPerFrame = j6;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(new com.google.android.exoplayer2.extractor.SeekPoint(j, com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekOperationParams.calculateNextSearchBytePosition(this.seekTimestampConverter.timeUsToTargetTime(j), this.floorTimePosition, this.ceilingTimePosition, this.floorBytePosition, this.ceilingBytePosition, this.approxBytesPerFrame)));
        }

        @Override // com.google.android.exoplayer2.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        public long timeUsToTargetTime(long j) {
            return this.seekTimestampConverter.timeUsToTargetTime(j);
        }
    }

    public static final class DefaultSeekTimestampConverter implements com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter {
        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter
        public long timeUsToTargetTime(long j) {
            return j;
        }
    }

    public static class SeekOperationParams {
        public final long approxBytesPerFrame;
        public long ceilingBytePosition;
        public long ceilingTimePosition;
        public long floorBytePosition;
        public long floorTimePosition;
        public long nextSearchBytePosition;
        public final long seekTimeUs;
        public final long targetTimePosition;

        public SeekOperationParams(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.seekTimeUs = j;
            this.targetTimePosition = j2;
            this.floorTimePosition = j3;
            this.ceilingTimePosition = j4;
            this.floorBytePosition = j5;
            this.ceilingBytePosition = j6;
            this.approxBytesPerFrame = j7;
            this.nextSearchBytePosition = calculateNextSearchBytePosition(j2, j3, j4, j5, j6, j7);
        }

        public static long calculateNextSearchBytePosition(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = (long) ((j - j2) * ((j5 - j4) / (j3 - j2)));
            return com.google.android.exoplayer2.util.Util.constrainValue(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getCeilingBytePosition() {
            return this.ceilingBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getFloorBytePosition() {
            return this.floorBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getNextSearchBytePosition() {
            return this.nextSearchBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getSeekTimeUs() {
            return this.seekTimeUs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getTargetTimePosition() {
            return this.targetTimePosition;
        }

        private void updateNextSearchBytePosition() {
            this.nextSearchBytePosition = calculateNextSearchBytePosition(this.targetTimePosition, this.floorTimePosition, this.ceilingTimePosition, this.floorBytePosition, this.ceilingBytePosition, this.approxBytesPerFrame);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateSeekCeiling(long j, long j2) {
            this.ceilingTimePosition = j;
            this.ceilingBytePosition = j2;
            updateNextSearchBytePosition();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateSeekFloor(long j, long j2) {
            this.floorTimePosition = j;
            this.floorBytePosition = j2;
            updateNextSearchBytePosition();
        }
    }

    public interface SeekTimestampConverter {
        long timeUsToTargetTime(long j);
    }

    public static final class TimestampSearchResult {
        public static final com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult NO_TIMESTAMP_IN_RANGE_RESULT = new com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult(-3, com.google.android.exoplayer2.C.TIME_UNSET, -1);
        public static final int TYPE_NO_TIMESTAMP = -3;
        public static final int TYPE_POSITION_OVERESTIMATED = -1;
        public static final int TYPE_POSITION_UNDERESTIMATED = -2;
        public static final int TYPE_TARGET_TIMESTAMP_FOUND = 0;
        public final long bytePositionToUpdate;
        public final long timestampToUpdate;
        public final int type;

        public TimestampSearchResult(int i, long j, long j2) {
            this.type = i;
            this.timestampToUpdate = j;
            this.bytePositionToUpdate = j2;
        }

        public static com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult overestimatedResult(long j, long j2) {
            return new com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult(-1, j, j2);
        }

        public static com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult targetFoundResult(long j) {
            return new com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult(0, com.google.android.exoplayer2.C.TIME_UNSET, j);
        }

        public static com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult underestimatedResult(long j, long j2) {
            return new com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult(-2, j, j2);
        }
    }

    public interface TimestampSeeker {
        void onSeekFinished();

        com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult searchForTimestamp(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, long j);
    }

    public BinarySearchSeeker(com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekTimestampConverter seekTimestampConverter, com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker timestampSeeker, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.timestampSeeker = timestampSeeker;
        this.minimumSearchRange = i;
        this.seekMap = new com.google.android.exoplayer2.extractor.BinarySearchSeeker.BinarySearchSeekMap(seekTimestampConverter, j, j2, j3, j4, j5, j6);
    }

    public com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekOperationParams createSeekParamsForTargetTimeUs(long j) {
        return new com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekOperationParams(j, this.seekMap.timeUsToTargetTime(j), this.seekMap.floorTimePosition, this.seekMap.ceilingTimePosition, this.seekMap.floorBytePosition, this.seekMap.ceilingBytePosition, this.seekMap.approxBytesPerFrame);
    }

    public final com.google.android.exoplayer2.extractor.SeekMap getSeekMap() {
        return this.seekMap;
    }

    public int handlePendingSeek(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        while (true) {
            com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekOperationParams seekOperationParams = (com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekOperationParams) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.seekOperationParams);
            long floorBytePosition = seekOperationParams.getFloorBytePosition();
            long ceilingBytePosition = seekOperationParams.getCeilingBytePosition();
            long nextSearchBytePosition = seekOperationParams.getNextSearchBytePosition();
            if (ceilingBytePosition - floorBytePosition <= this.minimumSearchRange) {
                markSeekOperationFinished(false, floorBytePosition);
                return seekToPosition(extractorInput, floorBytePosition, positionHolder);
            }
            if (!skipInputUntilPosition(extractorInput, nextSearchBytePosition)) {
                return seekToPosition(extractorInput, nextSearchBytePosition, positionHolder);
            }
            extractorInput.resetPeekPosition();
            com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult timestampSearchResultSearchForTimestamp = this.timestampSeeker.searchForTimestamp(extractorInput, seekOperationParams.getTargetTimePosition());
            int i = timestampSearchResultSearchForTimestamp.type;
            if (i == -3) {
                markSeekOperationFinished(false, nextSearchBytePosition);
                return seekToPosition(extractorInput, nextSearchBytePosition, positionHolder);
            }
            if (i == -2) {
                seekOperationParams.updateSeekFloor(timestampSearchResultSearchForTimestamp.timestampToUpdate, timestampSearchResultSearchForTimestamp.bytePositionToUpdate);
            } else {
                if (i != -1) {
                    if (i != 0) {
                        throw new java.lang.IllegalStateException("Invalid case");
                    }
                    skipInputUntilPosition(extractorInput, timestampSearchResultSearchForTimestamp.bytePositionToUpdate);
                    markSeekOperationFinished(true, timestampSearchResultSearchForTimestamp.bytePositionToUpdate);
                    return seekToPosition(extractorInput, timestampSearchResultSearchForTimestamp.bytePositionToUpdate, positionHolder);
                }
                seekOperationParams.updateSeekCeiling(timestampSearchResultSearchForTimestamp.timestampToUpdate, timestampSearchResultSearchForTimestamp.bytePositionToUpdate);
            }
        }
    }

    public final boolean isSeeking() {
        return this.seekOperationParams != null;
    }

    public final void markSeekOperationFinished(boolean z, long j) {
        this.seekOperationParams = null;
        this.timestampSeeker.onSeekFinished();
        onSeekOperationFinished(z, j);
    }

    public void onSeekOperationFinished(boolean z, long j) {
    }

    public final int seekToPosition(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, long j, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        if (j == extractorInput.getPosition()) {
            return 0;
        }
        positionHolder.position = j;
        return 1;
    }

    public final void setSeekTargetUs(long j) {
        com.google.android.exoplayer2.extractor.BinarySearchSeeker.SeekOperationParams seekOperationParams = this.seekOperationParams;
        if (seekOperationParams == null || seekOperationParams.getSeekTimeUs() != j) {
            this.seekOperationParams = createSeekParamsForTargetTimeUs(j);
        }
    }

    public final boolean skipInputUntilPosition(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, long j) {
        long position = j - extractorInput.getPosition();
        if (position < 0 || position > 262144) {
            return false;
        }
        extractorInput.skipFully((int) position);
        return true;
    }
}
