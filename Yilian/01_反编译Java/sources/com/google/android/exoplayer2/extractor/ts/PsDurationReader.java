package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class PsDurationReader {
    public static final java.lang.String TAG = "PsDurationReader";
    public static final int TIMESTAMP_SEARCH_BYTES = 20000;
    public boolean isDurationRead;
    public boolean isFirstScrValueRead;
    public boolean isLastScrValueRead;
    public final com.google.android.exoplayer2.util.TimestampAdjuster scrTimestampAdjuster = new com.google.android.exoplayer2.util.TimestampAdjuster(0);
    public long firstScrValue = com.google.android.exoplayer2.C.TIME_UNSET;
    public long lastScrValue = com.google.android.exoplayer2.C.TIME_UNSET;
    public long durationUs = com.google.android.exoplayer2.C.TIME_UNSET;
    public final com.google.android.exoplayer2.util.ParsableByteArray packetBuffer = new com.google.android.exoplayer2.util.ParsableByteArray();

    public static boolean checkMarkerBits(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private int finishReadDuration(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        this.packetBuffer.reset(com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY);
        this.isDurationRead = true;
        extractorInput.resetPeekPosition();
        return 0;
    }

    private int peekIntAtPosition(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    private int readFirstScrValue(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        int iMin = (int) java.lang.Math.min(com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US, extractorInput.getLength());
        long j = 0;
        if (extractorInput.getPosition() != j) {
            positionHolder.position = j;
            return 1;
        }
        this.packetBuffer.reset(iMin);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.getData(), 0, iMin);
        this.firstScrValue = readFirstScrValueFromBuffer(this.packetBuffer);
        this.isFirstScrValueRead = true;
        return 0;
    }

    private long readFirstScrValueFromBuffer(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int iLimit = parsableByteArray.limit();
        for (int position = parsableByteArray.getPosition(); position < iLimit - 3; position++) {
            if (peekIntAtPosition(parsableByteArray.getData(), position) == 442) {
                parsableByteArray.setPosition(position + 4);
                long scrValueFromPack = readScrValueFromPack(parsableByteArray);
                if (scrValueFromPack != com.google.android.exoplayer2.C.TIME_UNSET) {
                    return scrValueFromPack;
                }
            }
        }
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private int readLastScrValue(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        long length = extractorInput.getLength();
        int iMin = (int) java.lang.Math.min(com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US, length);
        long j = length - iMin;
        if (extractorInput.getPosition() != j) {
            positionHolder.position = j;
            return 1;
        }
        this.packetBuffer.reset(iMin);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.getData(), 0, iMin);
        this.lastScrValue = readLastScrValueFromBuffer(this.packetBuffer);
        this.isLastScrValueRead = true;
        return 0;
    }

    private long readLastScrValueFromBuffer(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        for (int iLimit = parsableByteArray.limit() - 4; iLimit >= position; iLimit--) {
            if (peekIntAtPosition(parsableByteArray.getData(), iLimit) == 442) {
                parsableByteArray.setPosition(iLimit + 4);
                long scrValueFromPack = readScrValueFromPack(parsableByteArray);
                if (scrValueFromPack != com.google.android.exoplayer2.C.TIME_UNSET) {
                    return scrValueFromPack;
                }
            }
        }
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public static long readScrValueFromPack(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        if (parsableByteArray.bytesLeft() < 9) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        parsableByteArray.readBytes(bArr, 0, 9);
        parsableByteArray.setPosition(position);
        return !checkMarkerBits(bArr) ? com.google.android.exoplayer2.C.TIME_UNSET : readScrValueFromPackHeader(bArr);
    }

    public static long readScrValueFromPackHeader(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    public com.google.android.exoplayer2.util.TimestampAdjuster getScrTimestampAdjuster() {
        return this.scrTimestampAdjuster;
    }

    public boolean isDurationReadFinished() {
        return this.isDurationRead;
    }

    public int readDuration(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        if (!this.isLastScrValueRead) {
            return readLastScrValue(extractorInput, positionHolder);
        }
        if (this.lastScrValue == com.google.android.exoplayer2.C.TIME_UNSET) {
            return finishReadDuration(extractorInput);
        }
        if (!this.isFirstScrValueRead) {
            return readFirstScrValue(extractorInput, positionHolder);
        }
        long j = this.firstScrValue;
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            return finishReadDuration(extractorInput);
        }
        long jAdjustTsTimestamp = this.scrTimestampAdjuster.adjustTsTimestamp(this.lastScrValue) - this.scrTimestampAdjuster.adjustTsTimestamp(j);
        this.durationUs = jAdjustTsTimestamp;
        if (jAdjustTsTimestamp < 0) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(65);
            sb.append("Invalid duration: ");
            sb.append(jAdjustTsTimestamp);
            sb.append(". Using TIME_UNSET instead.");
            com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
            this.durationUs = com.google.android.exoplayer2.C.TIME_UNSET;
        }
        return finishReadDuration(extractorInput);
    }
}
