package com.google.android.exoplayer2.extractor.mp3;

/* loaded from: classes.dex */
public final class VbriSeeker implements com.google.android.exoplayer2.extractor.mp3.Seeker {
    public static final java.lang.String TAG = "VbriSeeker";
    public final long dataEndPosition;
    public final long durationUs;
    public final long[] positions;
    public final long[] timesUs;

    public VbriSeeker(long[] jArr, long[] jArr2, long j, long j2) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j;
        this.dataEndPosition = j2;
    }

    public static com.google.android.exoplayer2.extractor.mp3.VbriSeeker create(long j, long j2, com.google.android.exoplayer2.audio.MpegAudioUtil.Header header, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int unsignedByte;
        parsableByteArray.skipBytes(10);
        int i = parsableByteArray.readInt();
        if (i <= 0) {
            return null;
        }
        int i2 = header.sampleRate;
        long jScaleLargeTimestamp = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(i, 1000000 * (i2 >= 32000 ? 1152 : com.google.android.exoplayer2.audio.MpegAudioUtil.SAMPLES_PER_FRAME_L3_V2), i2);
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int unsignedShort2 = parsableByteArray.readUnsignedShort();
        int unsignedShort3 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(2);
        long j3 = j2 + header.frameSize;
        long[] jArr = new long[unsignedShort];
        long[] jArr2 = new long[unsignedShort];
        int i3 = 0;
        long j4 = j2;
        while (i3 < unsignedShort) {
            int i4 = unsignedShort2;
            long j5 = j3;
            jArr[i3] = (i3 * jScaleLargeTimestamp) / unsignedShort;
            jArr2[i3] = java.lang.Math.max(j4, j5);
            if (unsignedShort3 == 1) {
                unsignedByte = parsableByteArray.readUnsignedByte();
            } else if (unsignedShort3 == 2) {
                unsignedByte = parsableByteArray.readUnsignedShort();
            } else if (unsignedShort3 == 3) {
                unsignedByte = parsableByteArray.readUnsignedInt24();
            } else {
                if (unsignedShort3 != 4) {
                    return null;
                }
                unsignedByte = parsableByteArray.readUnsignedIntToInt();
            }
            j4 += unsignedByte * i4;
            i3++;
            j3 = j5;
            unsignedShort2 = i4;
        }
        if (j != -1 && j != j4) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(67);
            sb.append("VBRI data size mismatch: ");
            sb.append(j);
            sb.append(", ");
            sb.append(j4);
            com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
        }
        return new com.google.android.exoplayer2.extractor.mp3.VbriSeeker(jArr, jArr2, jScaleLargeTimestamp, j4);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
        int iBinarySearchFloor = com.google.android.exoplayer2.util.Util.binarySearchFloor(this.timesUs, j, true, true);
        com.google.android.exoplayer2.extractor.SeekPoint seekPoint = new com.google.android.exoplayer2.extractor.SeekPoint(this.timesUs[iBinarySearchFloor], this.positions[iBinarySearchFloor]);
        if (seekPoint.timeUs >= j || iBinarySearchFloor == this.timesUs.length - 1) {
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint);
        }
        int i = iBinarySearchFloor + 1;
        return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint, new com.google.android.exoplayer2.extractor.SeekPoint(this.timesUs[i], this.positions[i]));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return this.timesUs[com.google.android.exoplayer2.util.Util.binarySearchFloor(this.positions, j, true, true)];
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
