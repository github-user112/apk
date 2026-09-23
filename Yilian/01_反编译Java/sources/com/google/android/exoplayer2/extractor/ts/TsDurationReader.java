package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class TsDurationReader {
    public static final java.lang.String TAG = "TsDurationReader";
    public boolean isDurationRead;
    public boolean isFirstPcrValueRead;
    public boolean isLastPcrValueRead;
    public final int timestampSearchBytes;
    public final com.google.android.exoplayer2.util.TimestampAdjuster pcrTimestampAdjuster = new com.google.android.exoplayer2.util.TimestampAdjuster(0);
    public long firstPcrValue = com.google.android.exoplayer2.C.TIME_UNSET;
    public long lastPcrValue = com.google.android.exoplayer2.C.TIME_UNSET;
    public long durationUs = com.google.android.exoplayer2.C.TIME_UNSET;
    public final com.google.android.exoplayer2.util.ParsableByteArray packetBuffer = new com.google.android.exoplayer2.util.ParsableByteArray();

    public TsDurationReader(int i) {
        this.timestampSearchBytes = i;
    }

    private int finishReadDuration(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        this.packetBuffer.reset(com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY);
        this.isDurationRead = true;
        extractorInput.resetPeekPosition();
        return 0;
    }

    private int readFirstPcrValue(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder, int i) {
        int iMin = (int) java.lang.Math.min(this.timestampSearchBytes, extractorInput.getLength());
        long j = 0;
        if (extractorInput.getPosition() != j) {
            positionHolder.position = j;
            return 1;
        }
        this.packetBuffer.reset(iMin);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.getData(), 0, iMin);
        this.firstPcrValue = readFirstPcrValueFromBuffer(this.packetBuffer, i);
        this.isFirstPcrValueRead = true;
        return 0;
    }

    private long readFirstPcrValueFromBuffer(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        int iLimit = parsableByteArray.limit();
        for (int position = parsableByteArray.getPosition(); position < iLimit; position++) {
            if (parsableByteArray.getData()[position] == 71) {
                long pcrFromPacket = com.google.android.exoplayer2.extractor.ts.TsUtil.readPcrFromPacket(parsableByteArray, position, i);
                if (pcrFromPacket != com.google.android.exoplayer2.C.TIME_UNSET) {
                    return pcrFromPacket;
                }
            }
        }
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private int readLastPcrValue(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder, int i) {
        long length = extractorInput.getLength();
        int iMin = (int) java.lang.Math.min(this.timestampSearchBytes, length);
        long j = length - iMin;
        if (extractorInput.getPosition() != j) {
            positionHolder.position = j;
            return 1;
        }
        this.packetBuffer.reset(iMin);
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.packetBuffer.getData(), 0, iMin);
        this.lastPcrValue = readLastPcrValueFromBuffer(this.packetBuffer, i);
        this.isLastPcrValueRead = true;
        return 0;
    }

    private long readLastPcrValueFromBuffer(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        for (int i2 = iLimit - 188; i2 >= position; i2--) {
            if (com.google.android.exoplayer2.extractor.ts.TsUtil.isStartOfTsPacket(parsableByteArray.getData(), position, iLimit, i2)) {
                long pcrFromPacket = com.google.android.exoplayer2.extractor.ts.TsUtil.readPcrFromPacket(parsableByteArray, i2, i);
                if (pcrFromPacket != com.google.android.exoplayer2.C.TIME_UNSET) {
                    return pcrFromPacket;
                }
            }
        }
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    public com.google.android.exoplayer2.util.TimestampAdjuster getPcrTimestampAdjuster() {
        return this.pcrTimestampAdjuster;
    }

    public boolean isDurationReadFinished() {
        return this.isDurationRead;
    }

    public int readDuration(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder, int i) {
        if (i <= 0) {
            return finishReadDuration(extractorInput);
        }
        if (!this.isLastPcrValueRead) {
            return readLastPcrValue(extractorInput, positionHolder, i);
        }
        if (this.lastPcrValue == com.google.android.exoplayer2.C.TIME_UNSET) {
            return finishReadDuration(extractorInput);
        }
        if (!this.isFirstPcrValueRead) {
            return readFirstPcrValue(extractorInput, positionHolder, i);
        }
        long j = this.firstPcrValue;
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            return finishReadDuration(extractorInput);
        }
        long jAdjustTsTimestamp = this.pcrTimestampAdjuster.adjustTsTimestamp(this.lastPcrValue) - this.pcrTimestampAdjuster.adjustTsTimestamp(j);
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
