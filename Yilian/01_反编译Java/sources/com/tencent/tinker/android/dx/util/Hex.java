package com.tencent.tinker.android.dx.util;

/* loaded from: classes.dex */
public final class Hex {
    public static java.lang.String dump(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        int i6 = i + i2;
        if ((i | i2 | i6) < 0 || i6 > bArr.length) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("arr.length ");
            sbO.append(bArr.length);
            sbO.append("; ");
            sbO.append(i);
            sbO.append("..!");
            sbO.append(i6);
            throw new java.lang.IndexOutOfBoundsException(sbO.toString());
        }
        if (i3 < 0) {
            throw new java.lang.IllegalArgumentException("outOffset < 0");
        }
        if (i2 == 0) {
            return "";
        }
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer((i2 * 4) + 6);
        int i7 = 0;
        while (i2 > 0) {
            if (i7 == 0) {
                stringBuffer.append(i5 != 2 ? i5 != 4 ? i5 != 6 ? u4(i3) : u3(i3) : u2(i3) : u1(i3));
                stringBuffer.append(": ");
            } else if ((i7 & 1) == 0) {
                stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            }
            stringBuffer.append(u1(bArr[i]));
            i3++;
            i++;
            i7++;
            if (i7 == i4) {
                stringBuffer.append('\n');
                i7 = 0;
            }
            i2--;
        }
        if (i7 != 0) {
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }

    public static java.lang.String s1(int i) {
        char[] cArr = new char[3];
        if (i < 0) {
            cArr[0] = '-';
            i = -i;
        } else {
            cArr[0] = '+';
        }
        for (int i2 = 0; i2 < 2; i2++) {
            cArr[2 - i2] = java.lang.Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static java.lang.String s2(int i) {
        char[] cArr = new char[5];
        if (i < 0) {
            cArr[0] = '-';
            i = -i;
        } else {
            cArr[0] = '+';
        }
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[4 - i2] = java.lang.Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static java.lang.String s4(int i) {
        char[] cArr = new char[9];
        if (i < 0) {
            cArr[0] = '-';
            i = -i;
        } else {
            cArr[0] = '+';
        }
        for (int i2 = 0; i2 < 8; i2++) {
            cArr[8 - i2] = java.lang.Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static java.lang.String s8(long j) {
        char[] cArr = new char[17];
        if (j < 0) {
            cArr[0] = '-';
            j = -j;
        } else {
            cArr[0] = '+';
        }
        for (int i = 0; i < 16; i++) {
            cArr[16 - i] = java.lang.Character.forDigit(((int) j) & 15, 16);
            j >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static java.lang.String toHexString(byte[] bArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(bArr.length << 1);
        for (byte b : bArr) {
            sb.append(u1(b));
        }
        return sb.toString();
    }

    public static java.lang.String u1(int i) {
        char[] cArr = new char[2];
        for (int i2 = 0; i2 < 2; i2++) {
            cArr[1 - i2] = java.lang.Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static java.lang.String u2(int i) {
        char[] cArr = new char[4];
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[3 - i2] = java.lang.Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static java.lang.String u2or4(int i) {
        return i == ((char) i) ? u2(i) : u4(i);
    }

    public static java.lang.String u3(int i) {
        char[] cArr = new char[6];
        for (int i2 = 0; i2 < 6; i2++) {
            cArr[5 - i2] = java.lang.Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static java.lang.String u4(int i) {
        char[] cArr = new char[8];
        for (int i2 = 0; i2 < 8; i2++) {
            cArr[7 - i2] = java.lang.Character.forDigit(i & 15, 16);
            i >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static java.lang.String u8(long j) {
        char[] cArr = new char[16];
        for (int i = 0; i < 16; i++) {
            cArr[15 - i] = java.lang.Character.forDigit(((int) j) & 15, 16);
            j >>= 4;
        }
        return new java.lang.String(cArr);
    }

    public static java.lang.String uNibble(int i) {
        return new java.lang.String(new char[]{java.lang.Character.forDigit(i & 15, 16)});
    }
}
