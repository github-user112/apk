package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class EncodedValueCodec {
    public static int readSignedInt(com.tencent.tinker.android.dex.util.ByteInput byteInput, int i) {
        int i2 = 0;
        for (int i3 = i; i3 >= 0; i3--) {
            i2 = (i2 >>> 8) | ((byteInput.readByte() & 255) << 24);
        }
        return i2 >> ((3 - i) * 8);
    }

    public static long readSignedLong(com.tencent.tinker.android.dex.util.ByteInput byteInput, int i) {
        long j = 0;
        for (int i2 = i; i2 >= 0; i2--) {
            j = (j >>> 8) | ((byteInput.readByte() & 255) << 56);
        }
        return j >> ((7 - i) * 8);
    }

    public static int readUnsignedInt(com.tencent.tinker.android.dex.util.ByteInput byteInput, int i, boolean z) {
        int i2 = 0;
        if (z) {
            while (i >= 0) {
                i2 = ((byteInput.readByte() & 255) << 24) | (i2 >>> 8);
                i--;
            }
            return i2;
        }
        for (int i3 = i; i3 >= 0; i3--) {
            i2 = (i2 >>> 8) | ((byteInput.readByte() & 255) << 24);
        }
        return i2 >>> ((3 - i) * 8);
    }

    public static long readUnsignedLong(com.tencent.tinker.android.dex.util.ByteInput byteInput, int i, boolean z) {
        long j = 0;
        if (z) {
            while (i >= 0) {
                j = (j >>> 8) | ((byteInput.readByte() & 255) << 56);
                i--;
            }
            return j;
        }
        for (int i2 = i; i2 >= 0; i2--) {
            j = (j >>> 8) | ((byteInput.readByte() & 255) << 56);
        }
        return j >>> ((7 - i) * 8);
    }

    public static void writeRightZeroExtendedValue(com.tencent.tinker.android.dex.util.ByteOutput byteOutput, int i, long j) {
        int iNumberOfTrailingZeros = 64 - java.lang.Long.numberOfTrailingZeros(j);
        if (iNumberOfTrailingZeros == 0) {
            iNumberOfTrailingZeros = 1;
        }
        int i2 = (iNumberOfTrailingZeros + 7) >> 3;
        long j2 = j >> (64 - (i2 * 8));
        byteOutput.writeByte(i | ((i2 - 1) << 5));
        while (i2 > 0) {
            byteOutput.writeByte((byte) j2);
            j2 >>= 8;
            i2--;
        }
    }

    public static void writeSignedIntegralValue(com.tencent.tinker.android.dex.util.ByteOutput byteOutput, int i, long j) {
        int iNumberOfLeadingZeros = ((65 - java.lang.Long.numberOfLeadingZeros((j >> 63) ^ j)) + 7) >> 3;
        byteOutput.writeByte(i | ((iNumberOfLeadingZeros - 1) << 5));
        while (iNumberOfLeadingZeros > 0) {
            byteOutput.writeByte((byte) j);
            j >>= 8;
            iNumberOfLeadingZeros--;
        }
    }

    public static void writeUnsignedIntegralValue(com.tencent.tinker.android.dex.util.ByteOutput byteOutput, int i, long j) {
        int iNumberOfLeadingZeros = 64 - java.lang.Long.numberOfLeadingZeros(j);
        if (iNumberOfLeadingZeros == 0) {
            iNumberOfLeadingZeros = 1;
        }
        int i2 = (iNumberOfLeadingZeros + 7) >> 3;
        byteOutput.writeByte(i | ((i2 - 1) << 5));
        while (i2 > 0) {
            byteOutput.writeByte((byte) j);
            j >>= 8;
            i2--;
        }
    }
}
