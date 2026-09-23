package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public final class B {
    public static final java.lang.String a;
    public static final boolean b;

    static {
        java.lang.String strName = java.nio.charset.Charset.defaultCharset().name();
        a = strName;
        b = "SJIS".equalsIgnoreCase(strName) || "EUC_JP".equalsIgnoreCase(a);
    }

    public static java.lang.Boolean a(byte[] bArr) {
        int length = bArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            }
            byte b2 = bArr[i];
            if ((b2 & 128) != 0) {
                int i2 = b2 & 255;
                if ((i2 < 170 && i2 > 160) || (i2 < 248 && i2 > 175)) {
                    i++;
                    if (i >= length || (bArr[i] & 255) >= 255 || (bArr[i] & 255) <= 160 || (bArr[i] & 255) == 127) {
                        break;
                    }
                } else if (i2 < 161 && i2 > 128) {
                    i++;
                    if (i >= length || (bArr[i] & 255) >= 255 || (bArr[i] & 255) <= 63 || (bArr[i] & 255) == 127) {
                        break;
                    }
                } else if (((i2 >= 255 || i2 <= 169) && (i2 >= 170 || i2 <= 167)) || (i = i + 1) >= length || (bArr[i] & 255) >= 161 || (bArr[i] & 255) <= 63 || (bArr[i] & 255) == 127) {
                    break;
                }
            }
            i++;
        }
        return java.lang.Boolean.valueOf(z);
    }

    public static java.lang.String a(byte[] bArr, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) {
        if (map != null && map.containsKey(com.huawei.hms.scankit.aiscan.common.EnumC0105d.CHARACTER_SET)) {
            return map.get(com.huawei.hms.scankit.aiscan.common.EnumC0105d.CHARACTER_SET).toString();
        }
        int[] iArr = new int[15];
        iArr[0] = bArr.length;
        iArr[1] = 1;
        iArr[2] = 1;
        iArr[3] = 1;
        boolean z = bArr.length > 3 && bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65;
        for (int i = 0; i < iArr[0] && (iArr[1] == 1 || iArr[2] == 1 || iArr[3] == 1); i++) {
            int i2 = bArr[i] & 255;
            c(i2, iArr);
            b(i2, iArr);
            a(i2, iArr);
        }
        return a(bArr, iArr[3] == 1, iArr[2] == 1, iArr[1] == 1, iArr[4], iArr[8], z, iArr[5], iArr[6], iArr[7], iArr[12], iArr[13], iArr[9], iArr[14], iArr[0]);
    }

    public static java.lang.String a(byte[] bArr, boolean z, boolean z2, boolean z3, int i, int i2, boolean z4, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        if (z && i > 0) {
            z = false;
        }
        if (z2 && i2 > 0) {
            z2 = false;
        }
        return (!z || (!z4 && (i3 + i4) + i5 <= 0)) ? a(bArr).booleanValue() ? "GBK" : (!z2 || (!b && i6 < 3 && i7 < 3)) ? (z3 && z2) ? (!(i6 == 2 && i8 == 2) && i9 * 10 < i10) ? "ISO8859_1" : "SJIS" : (!z3 || i9 * 10 >= i10) ? z2 ? "SJIS" : z ? "UTF8" : (z || !com.google.android.exoplayer2.C.UTF8_NAME.equals(a)) ? a : "GB2312" : "ISO8859_1" : "SJIS" : "UTF8";
    }

    public static void a(int i, int[] iArr) {
        if (iArr[1] == 1) {
            if (i > 127 && i < 160) {
                iArr[1] = 0;
                return;
            }
            if (i > 159) {
                if (i < 192 || i == 215 || i == 247) {
                    iArr[14] = iArr[14] + 1;
                }
            }
        }
    }

    public static void b(int i, int[] iArr) {
        if (iArr[2] == 1) {
            if (iArr[8] > 0) {
                if (i < 64 || i == 127 || i > 252) {
                    iArr[2] = 0;
                    return;
                } else {
                    iArr[8] = iArr[8] - 1;
                    return;
                }
            }
            if (i == 128 || i == 160 || i > 239) {
                iArr[2] = 0;
                return;
            }
            if (i > 160 && i < 224) {
                iArr[9] = iArr[9] + 1;
                iArr[11] = 0;
                iArr[10] = iArr[10] + 1;
                if (iArr[10] > iArr[12]) {
                    iArr[12] = iArr[10];
                    return;
                }
                return;
            }
            if (i <= 127) {
                iArr[10] = 0;
                iArr[11] = 0;
                return;
            }
            iArr[8] = iArr[8] + 1;
            iArr[10] = 0;
            iArr[11] = iArr[11] + 1;
            if (iArr[11] > iArr[13]) {
                iArr[13] = iArr[11];
            }
        }
    }

    public static void c(int i, int[] iArr) {
        if (iArr[3] == 1) {
            if (iArr[4] > 0) {
                if ((i & 128) == 0) {
                    iArr[3] = 0;
                    return;
                } else {
                    iArr[4] = iArr[4] - 1;
                    return;
                }
            }
            if ((i & 128) != 0) {
                if ((i & 64) == 0) {
                    iArr[3] = 0;
                    return;
                }
                iArr[4] = iArr[4] + 1;
                if ((i & 32) == 0) {
                    iArr[5] = iArr[5] + 1;
                    return;
                }
                iArr[4] = iArr[4] + 1;
                if ((i & 16) == 0) {
                    iArr[6] = iArr[6] + 1;
                    return;
                }
                iArr[4] = iArr[4] + 1;
                if ((i & 8) == 0) {
                    iArr[7] = iArr[7] + 1;
                } else {
                    iArr[3] = 0;
                }
            }
        }
    }
}
