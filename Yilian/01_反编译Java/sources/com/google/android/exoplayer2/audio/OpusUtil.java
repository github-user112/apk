package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public class OpusUtil {
    public static final int DEFAULT_SEEK_PRE_ROLL_SAMPLES = 3840;
    public static final int FULL_CODEC_INITIALIZATION_DATA_BUFFER_COUNT = 3;
    public static final int SAMPLE_RATE = 48000;

    public static java.util.List<byte[]> buildInitializationData(byte[] bArr) {
        long jSampleCountToNanoseconds = sampleCountToNanoseconds(getPreSkipSamples(bArr));
        long jSampleCountToNanoseconds2 = sampleCountToNanoseconds(3840L);
        java.util.ArrayList arrayList = new java.util.ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(buildNativeOrderByteArray(jSampleCountToNanoseconds));
        arrayList.add(buildNativeOrderByteArray(jSampleCountToNanoseconds2));
        return arrayList;
    }

    public static byte[] buildNativeOrderByteArray(long j) {
        return java.nio.ByteBuffer.allocate(8).order(java.nio.ByteOrder.nativeOrder()).putLong(j).array();
    }

    public static int getChannelCount(byte[] bArr) {
        return bArr[9] & 255;
    }

    public static int getPreSkipSamples(byte[] bArr) {
        return (bArr[10] & 255) | ((bArr[11] & 255) << 8);
    }

    public static long sampleCountToNanoseconds(long j) {
        return (j * com.google.android.exoplayer2.C.NANOS_PER_SECOND) / 48000;
    }
}
