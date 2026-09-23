package com.google.android.exoplayer2.extractor.ogg;

/* loaded from: classes.dex */
public final class OpusReader extends com.google.android.exoplayer2.extractor.ogg.StreamReader {
    public static final int OPUS_CODE = 1332770163;
    public static final byte[] OPUS_SIGNATURE = {79, 112, 117, 115, 72, 101, 97, 100};
    public boolean headerRead;

    private long getPacketDurationUs(byte[] bArr) {
        int i = bArr[0] & 255;
        int i2 = i & 3;
        int i3 = 2;
        if (i2 == 0) {
            i3 = 1;
        } else if (i2 != 1 && i2 != 2) {
            i3 = bArr[1] & 63;
        }
        int i4 = i >> 3;
        return i3 * (i4 >= 16 ? com.google.android.exoplayer2.DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS << r1 : i4 >= 12 ? 10000 << (r1 & 1) : (i4 & 3) == 3 ? 60000 : 10000 << r1);
    }

    public static boolean verifyBitstreamType(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int iBytesLeft = parsableByteArray.bytesLeft();
        byte[] bArr = OPUS_SIGNATURE;
        if (iBytesLeft < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        parsableByteArray.readBytes(bArr2, 0, bArr.length);
        return java.util.Arrays.equals(bArr2, OPUS_SIGNATURE);
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.StreamReader
    public long preparePayload(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        return convertTimeToGranule(getPacketDurationUs(parsableByteArray.getData()));
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.StreamReader
    @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public boolean readHeaders(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, long j, com.google.android.exoplayer2.extractor.ogg.StreamReader.SetupData setupData) {
        if (this.headerRead) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(setupData.format);
            boolean z = parsableByteArray.readInt() == 1332770163;
            parsableByteArray.setPosition(0);
            return z;
        }
        byte[] bArrCopyOf = java.util.Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit());
        setupData.format = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.AUDIO_OPUS).setChannelCount(com.google.android.exoplayer2.audio.OpusUtil.getChannelCount(bArrCopyOf)).setSampleRate(48000).setInitializationData(com.google.android.exoplayer2.audio.OpusUtil.buildInitializationData(bArrCopyOf)).build();
        this.headerRead = true;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.StreamReader
    public void reset(boolean z) {
        super.reset(z);
        if (z) {
            this.headerRead = false;
        }
    }
}
