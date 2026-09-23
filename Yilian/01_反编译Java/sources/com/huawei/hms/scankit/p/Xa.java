package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Xa {
    public static final java.lang.String[] a = {"CTRL_PS", " ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "CTRL_LL", "CTRL_ML", "CTRL_DL", "CTRL_BS"};
    public static final java.lang.String[] b = {"CTRL_PS", " ", com.umeng.analytics.pro.ai.at, com.google.android.exoplayer2.text.webvtt.WebvttCueParser.TAG_BOLD, "c", com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_DURATION, "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT, com.umeng.analytics.pro.ai.az, "t", "u", "v", "w", "x", "y", com.umeng.analytics.pro.ai.aB, "CTRL_US", "CTRL_ML", "CTRL_DL", "CTRL_BS"};

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String[] f643c = {"CTRL_PS", " ", "\u0001", "\u0002", "\u0003", "\u0004", "\u0005", "\u0006", "\u0007", "\b", "\t", "\n", "\u000b", "\f", "\r", "\u001b", "\u001c", "\u001d", "\u001e", "\u001f", "@", "\\", "^", "_", "`", "|", "~", "\u007f", "CTRL_LL", "CTRL_UL", "CTRL_PL", "CTRL_BS"};

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String[] f644d = {"", "\r", "\r\n", ". ", ", ", ": ", "!", "\"", "#", "$", "%", com.huawei.hms.framework.common.ContainerUtils.FIELD_DELIMITER, "'", "(", ")", "*", "+", ",", "-", ".", com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, ":", ";", "<", "=", ">", "?", "[", "]", com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START, com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END, "CTRL_UL"};

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.String[] f645e = {"CTRL_PS", " ", "0", "1", "2", "3", "4", net.easyconn.ecsdk.ECTypes.ECSEPrameter.EC_SE_PARAM_VALUE_MAB_AND_MAE_MODE, net.easyconn.ecsdk.ECTypes.ECSEPrameter.EC_SE_PARAM_VALUE_FOURVOICE_MAB_MODE, net.easyconn.ecsdk.ECTypes.ECSEPrameter.EC_SE_PARAM_VALUE_FOURVOICE_MAE_MODE, net.easyconn.ecsdk.ECTypes.ECSEPrameter.EC_SE_PARAM_VALUE_FOURVOICE_MAB_AND_MAE_MODE, net.easyconn.ecsdk.ECTypes.ECSEPrameter.EC_SE_PARAM_VALUE_BLUETOOTH_MAE_MODE, ",", ".", "CTRL_UL", "CTRL_US"};

    /* renamed from: f, reason: collision with root package name */
    public com.huawei.hms.scankit.p.Ua f646f;

    public enum a {
        UPPER,
        LOWER,
        MIXED,
        DIGIT,
        PUNCT,
        BINARY
    }

    public static byte a(boolean[] zArr, int i) {
        int length = zArr.length - i;
        return (byte) (length >= 8 ? a(zArr, i, 8) : a(zArr, i, length) << (8 - length));
    }

    public static int a(int i, boolean z) {
        return ((i * 16) + (z ? 88 : 112)) * i;
    }

    public static int a(boolean[] zArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < i + i2; i4++) {
            i3 <<= 1;
            if (zArr[i4]) {
                i3 |= 1;
            }
        }
        return i3;
    }

    public static com.huawei.hms.scankit.p.Xa.a a(char c2) {
        return c2 != 'B' ? c2 != 'D' ? c2 != 'P' ? c2 != 'L' ? c2 != 'M' ? com.huawei.hms.scankit.p.Xa.a.UPPER : com.huawei.hms.scankit.p.Xa.a.MIXED : com.huawei.hms.scankit.p.Xa.a.LOWER : com.huawei.hms.scankit.p.Xa.a.PUNCT : com.huawei.hms.scankit.p.Xa.a.DIGIT : com.huawei.hms.scankit.p.Xa.a.BINARY;
    }

    public static java.lang.String a(com.huawei.hms.scankit.p.Xa.a aVar, int i) {
        int i2 = com.huawei.hms.scankit.p.Wa.a[aVar.ordinal()];
        if (i2 == 1) {
            return a[i];
        }
        if (i2 == 2) {
            return b[i];
        }
        if (i2 == 3) {
            return f643c[i];
        }
        if (i2 == 4) {
            return f644d[i];
        }
        if (i2 == 5) {
            return f645e[i];
        }
        throw new java.lang.IllegalStateException("Bad table");
    }

    public static java.lang.String a(boolean[] zArr, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Xa.a aVar = com.huawei.hms.scankit.p.Xa.a.UPPER;
        java.lang.StringBuilder sbA = a(zArr, aVar, aVar);
        int length = sbA.length();
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) sbA.charAt(i);
        }
        try {
            return new java.lang.String(bArr, com.huawei.hms.scankit.aiscan.common.B.a(bArr, map));
        } catch (java.io.UnsupportedEncodingException unused) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    public static java.lang.StringBuilder a(boolean[] zArr, com.huawei.hms.scankit.p.Xa.a aVar, com.huawei.hms.scankit.p.Xa.a aVar2) {
        int length = zArr.length;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(20);
        int i = 0;
        loop0: while (true) {
            com.huawei.hms.scankit.p.Xa.a aVar3 = aVar2;
            aVar2 = aVar;
            aVar = aVar3;
            while (i < length) {
                if (aVar != com.huawei.hms.scankit.p.Xa.a.BINARY) {
                    int i2 = aVar == com.huawei.hms.scankit.p.Xa.a.DIGIT ? 4 : 5;
                    if (length - i < i2) {
                        break loop0;
                    }
                    int iA = a(zArr, i, i2);
                    i += i2;
                    java.lang.String strA = a(aVar, iA);
                    if (strA.startsWith("CTRL_")) {
                        aVar2 = a(strA.charAt(5));
                        if (strA.charAt(6) == 'L') {
                        }
                    } else {
                        sb.append(strA);
                    }
                    aVar = aVar2;
                } else {
                    if (length - i < 5) {
                        break loop0;
                    }
                    int iA2 = a(zArr, i, 5);
                    i += 5;
                    if (iA2 == 0) {
                        if (length - i < 11) {
                            break loop0;
                        }
                        iA2 = a(zArr, i, 11) + 31;
                        i += 11;
                    }
                    int i3 = 0;
                    while (true) {
                        if (i3 >= iA2) {
                            break;
                        }
                        if (length - i < 8) {
                            i = length;
                            break;
                        }
                        sb.append((char) a(zArr, i, 8));
                        i += 8;
                        i3++;
                    }
                    aVar = aVar2;
                }
            }
        }
        return sb;
    }

    public static byte[] a(boolean[] zArr) {
        int length = (zArr.length + 7) / 8;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = a(zArr, i * 8);
        }
        return bArr;
    }

    private boolean[] a(int i, int i2, int[] iArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int i3 = (1 << i2) - 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int i6 = iArr[i5];
            if (i6 == 0 || i6 == i3) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            if (i6 == 1 || i6 == i3 - 1) {
                i4++;
            }
        }
        boolean[] zArr = new boolean[(i * i2) - i4];
        int i7 = 0;
        for (int i8 = 0; i8 < i; i8++) {
            int i9 = iArr[i8];
            if (i9 == 1 || i9 == i3 - 1) {
                java.util.Arrays.fill(zArr, i7, (i7 + i2) - 1, i9 > 1);
                i7 = (i2 - 1) + i7;
            } else {
                int i10 = i2 - 1;
                while (i10 >= 0) {
                    int i11 = i7 + 1;
                    zArr[i7] = ((1 << i10) & i9) != 0;
                    i10--;
                    i7 = i11;
                }
            }
        }
        return zArr;
    }

    private boolean[] a(com.huawei.hms.scankit.p.C0122bb c0122bb) {
        com.huawei.hms.scankit.p.Ua ua = this.f646f;
        boolean z = ua != null && ua.g();
        com.huawei.hms.scankit.p.Ua ua2 = this.f646f;
        int iF = ua2 != null ? ua2.f() : 0;
        int i = (iF * 4) + (z ? 11 : 14);
        int[] iArr = new int[i];
        boolean[] zArr = new boolean[a(iF, z)];
        int i2 = 2;
        if (z) {
            for (int i3 = 0; i3 < i; i3++) {
                iArr[i3] = i3;
            }
        } else {
            int i4 = i / 2;
            int i5 = ((((i4 - 1) / 15) * 2) + (i + 1)) / 2;
            for (int i6 = 0; i6 < i4; i6++) {
                int i7 = (i6 / 15) + i6;
                iArr[(i4 - i6) - 1] = (i5 - i7) - 1;
                iArr[i4 + i6] = i7 + i5 + 1;
            }
        }
        int i8 = 0;
        int i9 = 0;
        while (i8 < iF) {
            int i10 = ((iF - i8) * 4) + (z ? 9 : 12);
            int i11 = i8 * 2;
            int i12 = (i - 1) - i11;
            int i13 = 0;
            while (i13 < i10) {
                int i14 = i13 * 2;
                int i15 = 0;
                while (i15 < i2) {
                    int i16 = i11 + i15;
                    int i17 = i11 + i13;
                    zArr[i9 + i14 + i15] = c0122bb.b(iArr[i16], iArr[i17]);
                    int i18 = i12 - i15;
                    zArr[(i10 * 2) + i9 + i14 + i15] = c0122bb.b(iArr[i17], iArr[i18]);
                    int i19 = i12 - i13;
                    zArr[(i10 * 4) + i9 + i14 + i15] = c0122bb.b(iArr[i18], iArr[i19]);
                    zArr[(i10 * 6) + i9 + i14 + i15] = c0122bb.b(iArr[i19], iArr[i16]);
                    i15++;
                    z = z;
                    i2 = 2;
                }
                i13++;
                i2 = 2;
            }
            i9 += i10 * 8;
            i8++;
            i2 = 2;
        }
        return zArr;
    }

    private boolean[] b(boolean[] zArr) throws java.lang.Exception {
        com.huawei.hms.scankit.aiscan.common.h hVar;
        com.huawei.hms.scankit.p.Ua ua = this.f646f;
        if (ua == null) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int i = 8;
        if (ua.f() <= 2) {
            i = 6;
            hVar = com.huawei.hms.scankit.aiscan.common.h.f403c;
        } else if (this.f646f.f() <= 8) {
            hVar = com.huawei.hms.scankit.aiscan.common.h.f407g;
        } else if (this.f646f.f() <= 22) {
            i = 10;
            hVar = com.huawei.hms.scankit.aiscan.common.h.b;
        } else {
            i = 12;
            hVar = com.huawei.hms.scankit.aiscan.common.h.a;
        }
        int iE = this.f646f.e();
        int length = zArr.length / i;
        if (length < iE) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int length2 = zArr.length % i;
        int[] iArr = new int[length];
        int i2 = 0;
        while (i2 < length) {
            iArr[i2] = a(zArr, length2, i);
            i2++;
            length2 += i;
        }
        try {
            new com.huawei.hms.scankit.aiscan.common.u(hVar).a(iArr, length - iE);
            return a(iE, i, iArr);
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a e2) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a(e2.getMessage());
        }
    }

    public com.huawei.hms.scankit.aiscan.common.C0106e a(com.huawei.hms.scankit.p.Ua ua, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws java.lang.Exception {
        this.f646f = ua;
        boolean[] zArrB = b(a(ua.a()));
        com.huawei.hms.scankit.aiscan.common.C0106e c0106e = new com.huawei.hms.scankit.aiscan.common.C0106e(a(zArrB), a(zArrB, map), null, null);
        c0106e.a(zArrB.length);
        return c0106e;
    }
}
