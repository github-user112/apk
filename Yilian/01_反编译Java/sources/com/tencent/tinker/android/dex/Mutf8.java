package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class Mutf8 {
    public static long countBytes(java.lang.String str, boolean z) throws java.io.UTFDataFormatException {
        int length = str.length();
        long j = 0;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            j += (cCharAt == 0 || cCharAt > 127) ? cCharAt <= 2047 ? 2L : 3L : 1L;
            if (z && j > 65535) {
                throw new java.io.UTFDataFormatException("String more than 65535 UTF bytes long");
            }
        }
        return j;
    }

    public static java.lang.String decode(com.tencent.tinker.android.dex.util.ByteInput byteInput, char[] cArr) throws java.io.UTFDataFormatException {
        int i;
        int i2 = 0;
        while (true) {
            char c2 = (char) (byteInput.readByte() & 255);
            if (c2 == 0) {
                return new java.lang.String(cArr, 0, i2);
            }
            cArr[i2] = c2;
            if (c2 < 128) {
                i2++;
            } else {
                if ((c2 & 224) == 192) {
                    int i3 = byteInput.readByte() & 255;
                    if ((i3 & 192) != 128) {
                        throw new java.io.UTFDataFormatException("bad second byte");
                    }
                    i = i2 + 1;
                    cArr[i2] = (char) (((c2 & 31) << 6) | (i3 & 63));
                } else {
                    if ((c2 & 240) != 224) {
                        throw new java.io.UTFDataFormatException("bad byte");
                    }
                    int i4 = byteInput.readByte() & 255;
                    int i5 = byteInput.readByte() & 255;
                    if ((i4 & 192) != 128 || (i5 & 192) != 128) {
                        break;
                    }
                    i = i2 + 1;
                    cArr[i2] = (char) (((c2 & 15) << 12) | ((i4 & 63) << 6) | (i5 & 63));
                }
                i2 = i;
            }
        }
        throw new java.io.UTFDataFormatException("bad second or third byte");
    }

    public static void encode(byte[] bArr, int i, java.lang.String str) {
        int i2;
        int length = str.length();
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt != 0 && cCharAt <= 127) {
                i2 = i + 1;
                bArr[i] = (byte) cCharAt;
            } else if (cCharAt <= 2047) {
                int i4 = i + 1;
                bArr[i] = (byte) (((cCharAt >> 6) & 31) | 192);
                i = i4 + 1;
                bArr[i4] = (byte) ((cCharAt & '?') | 128);
            } else {
                int i5 = i + 1;
                bArr[i] = (byte) (((cCharAt >> '\f') & 15) | 224);
                int i6 = i5 + 1;
                bArr[i5] = (byte) (((cCharAt >> 6) & 63) | 128);
                i2 = i6 + 1;
                bArr[i6] = (byte) ((cCharAt & '?') | 128);
            }
            i = i2;
        }
    }

    public static byte[] encode(java.lang.String str) {
        byte[] bArr = new byte[(int) countBytes(str, false)];
        encode(bArr, 0, str);
        return bArr;
    }
}
