package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class PsBinarySearchSeeker extends com.google.android.exoplayer2.extractor.BinarySearchSeeker {
    public static final int MINIMUM_SEARCH_RANGE_BYTES = 1000;
    public static final long SEEK_TOLERANCE_US = 100000;
    public static final int TIMESTAMP_SEARCH_BYTES = 20000;

    public static final class PsScrSeeker implements com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker {
        public final com.google.android.exoplayer2.util.ParsableByteArray packetBuffer;
        public final com.google.android.exoplayer2.util.TimestampAdjuster scrTimestampAdjuster;

        public PsScrSeeker(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster) {
            this.scrTimestampAdjuster = timestampAdjuster;
            this.packetBuffer = new com.google.android.exoplayer2.util.ParsableByteArray();
        }

        private com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult searchForScrValueInBuffer(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, long j, long j2) {
            int position = -1;
            long j3 = -9223372036854775807L;
            int position2 = -1;
            while (parsableByteArray.bytesLeft() >= 4) {
                if (com.google.android.exoplayer2.extractor.ts.PsBinarySearchSeeker.peekIntAtPosition(parsableByteArray.getData(), parsableByteArray.getPosition()) != 442) {
                    parsableByteArray.skipBytes(1);
                } else {
                    parsableByteArray.skipBytes(4);
                    long scrValueFromPack = com.google.android.exoplayer2.extractor.ts.PsDurationReader.readScrValueFromPack(parsableByteArray);
                    if (scrValueFromPack != com.google.android.exoplayer2.C.TIME_UNSET) {
                        long jAdjustTsTimestamp = this.scrTimestampAdjuster.adjustTsTimestamp(scrValueFromPack);
                        if (jAdjustTsTimestamp > j) {
                            return j3 == com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.overestimatedResult(jAdjustTsTimestamp, j2) : com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.targetFoundResult(j2 + position2);
                        }
                        if (100000 + jAdjustTsTimestamp > j) {
                            return com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.targetFoundResult(j2 + parsableByteArray.getPosition());
                        }
                        position2 = parsableByteArray.getPosition();
                        j3 = jAdjustTsTimestamp;
                    }
                    skipToEndOfCurrentPack(parsableByteArray);
                    position = parsableByteArray.getPosition();
                }
            }
            return j3 != com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.underestimatedResult(j3, j2 + position) : com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult.NO_TIMESTAMP_IN_RANGE_RESULT;
        }

        public static void skipToEndOfCurrentPack(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
            int iPeekIntAtPosition;
            int iLimit = parsableByteArray.limit();
            if (parsableByteArray.bytesLeft() < 10) {
                parsableByteArray.setPosition(iLimit);
                return;
            }
            parsableByteArray.skipBytes(9);
            int unsignedByte = parsableByteArray.readUnsignedByte() & 7;
            if (parsableByteArray.bytesLeft() < unsignedByte) {
                parsableByteArray.setPosition(iLimit);
                return;
            }
            parsableByteArray.skipBytes(unsignedByte);
            if (parsableByteArray.bytesLeft() < 4) {
                parsableByteArray.setPosition(iLimit);
                return;
            }
            if (com.google.android.exoplayer2.extractor.ts.PsBinarySearchSeeker.peekIntAtPosition(parsableByteArray.getData(), parsableByteArray.getPosition()) == 443) {
                parsableByteArray.skipBytes(4);
                int unsignedShort = parsableByteArray.readUnsignedShort();
                if (parsableByteArray.bytesLeft() < unsignedShort) {
                    parsableByteArray.setPosition(iLimit);
                    return;
                }
                parsableByteArray.skipBytes(unsignedShort);
            }
            while (parsableByteArray.bytesLeft() >= 4 && (iPeekIntAtPosition = com.google.android.exoplayer2.extractor.ts.PsBinarySearchSeeker.peekIntAtPosition(parsableByteArray.getData(), parsableByteArray.getPosition())) != 442 && iPeekIntAtPosition != 441 && (iPeekIntAtPosition >>> 8) == 1) {
                parsableByteArray.skipBytes(4);
                if (parsableByteArray.bytesLeft() < 2) {
                    parsableByteArray.setPosition(iLimit);
                    return;
                }
                parsableByteArray.setPosition(java.lang.Math.min(parsableByteArray.limit(), parsableByteArray.getPosition() + parsableByteArray.readUnsignedShort()));
            }
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public void onSeekFinished() {
            this.packetBuffer.reset(com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY);
        }

        @Override // com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSeeker
        public com.google.android.exoplayer2.extractor.BinarySearchSeeker.TimestampSearchResult searchForTimestamp(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, long j) {
            long position = extractorInput.getPosition();
            int iMin = (int) java.lang.Math.min(com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US, extractorInput.getLength() - position);
            this.packetBuffer.reset(iMin);
            extractorInput.peekFully(this.packetBuffer.getData(), 0, iMin);
            return searchForScrValueInBuffer(this.packetBuffer, j, position);
        }
    }

    public PsBinarySearchSeeker(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, long j, long j2) {
        super(new com.google.android.exoplayer2.extractor.BinarySearchSeeker.DefaultSeekTimestampConverter(), new com.google.android.exoplayer2.extractor.ts.PsBinarySearchSeeker.PsScrSeeker(timestampAdjuster), j, 0L, j + 1, 0L, j2, 188L, 1000);
    }

    public static int peekIntAtPosition(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
