package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ub, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0216ub extends com.huawei.hms.scankit.p.Ab {
    public static final char[] a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();
    public static final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public static final int f832c;

    /* renamed from: d, reason: collision with root package name */
    public final java.lang.StringBuilder f833d = new java.lang.StringBuilder(20);

    /* renamed from: e, reason: collision with root package name */
    public final int[] f834e = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, net.easyconn.jni.PlatinumReflection.MEDIA_RENDER_CTL_MSG_SETMETADATA, 424, 420, 418, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_SUCC_COST_OTHER, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_SUCC_COST_3000_LESS, 394, 360, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_PACKAGE_CHECK_PACKAGE_META_NOT_FOUND, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_PACKAGE_CHECK_PATCH_TINKER_ID_NOT_FOUND, 308, 282, 344, 332, 326, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISMATCH_DEX, 278, 436, com.google.android.exoplayer2.extractor.ts.UserDataReader.USER_DATA_START_CODE, 428, 422, 406, 410, 364, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_PACKAGE_CHECK_TINKERFLAG_NOT_SUPPORT, 310, 314, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISMATCH_RESOURCE, 468, 466, 458, 366, 374, 430, 294, 474, 470, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISSING_PATCH_INFO, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_PACKAGE_CHECK_SIGNATURE};
        b = iArr;
        f832c = iArr[47];
    }

    public static char a(char c2, char c3) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int i;
        switch (c2) {
            case 'a':
                if (c3 >= 'A' && c3 <= 'Z') {
                    i = c3 - '@';
                    break;
                } else {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
            case 'b':
                if (c3 >= 'A' && c3 <= 'E') {
                    i = c3 - '&';
                    break;
                } else if (c3 >= 'F' && c3 <= 'J') {
                    i = c3 - 11;
                    break;
                } else if (c3 >= 'K' && c3 <= 'O') {
                    i = c3 + 16;
                    break;
                } else if (c3 >= 'P' && c3 <= 'S') {
                    i = c3 + '+';
                    break;
                } else {
                    if (c3 < 'T' || c3 > 'Z') {
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                    }
                    return (char) 127;
                }
                break;
            case 'c':
                if (c3 >= 'A' && c3 <= 'O') {
                    i = c3 - ' ';
                    break;
                } else {
                    if (c3 == 'Z') {
                        return ':';
                    }
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
            case 'd':
                if (c3 >= 'A' && c3 <= 'Z') {
                    i = c3 + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE;
                    break;
                } else {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
            default:
                return (char) 0;
        }
        return (char) i;
    }

    public static char a(int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int i2 = 0;
        while (true) {
            int[] iArr = b;
            if (i2 >= iArr.length) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            if (iArr[i2] == i) {
                return a[i2];
            }
            i2++;
        }
    }

    public static void a(java.lang.CharSequence charSequence) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length = charSequence.length();
        a(charSequence, length - 2, 20);
        a(charSequence, length - 1, 15);
    }

    public static void a(java.lang.CharSequence charSequence, int i, int i2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iIndexOf = 0;
        int i3 = 1;
        for (int i4 = i - 1; i4 >= 0; i4--) {
            iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(charSequence.charAt(i4)) * i3;
            i3++;
            if (i3 > i2) {
                i3 = 1;
            }
        }
        if (charSequence.charAt(i) != a[iIndexOf % 47]) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    private int[] a(com.huawei.hms.scankit.p.C0117ab c0117ab) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iD = c0117ab.d();
        int iB = c0117ab.b(0);
        java.util.Arrays.fill(this.f834e, 0);
        int[] iArr = this.f834e;
        int length = iArr.length;
        int i = iB;
        boolean z = false;
        int i2 = 0;
        while (iB < iD) {
            if (c0117ab.a(iB) == z) {
                if (i2 != length - 1) {
                    i2++;
                } else {
                    if (b(iArr) == f832c) {
                        return new int[]{i, iB};
                    }
                    i += iArr[0] + iArr[1];
                    int i3 = i2 - 1;
                    java.lang.System.arraycopy(iArr, 2, iArr, 0, i3);
                    iArr[i3] = 0;
                    iArr[i2] = 0;
                    i2--;
                }
                iArr[i2] = 1;
                z = !z;
            } else {
                if (i2 < 0 || i2 >= iArr.length) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                iArr[i2] = iArr[i2] + 1;
            }
            iB++;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static int b(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int iRound = java.lang.Math.round((iArr[i4] * 9.0f) / i);
            if (iRound < 1 || iRound > 4) {
                return -1;
            }
            if ((i4 & 1) == 0) {
                for (int i5 = 0; i5 < iRound; i5++) {
                    i3 = (i3 << 1) | 1;
                }
            } else {
                i3 <<= iRound;
            }
        }
        return i3;
    }

    public static java.lang.String b(java.lang.CharSequence charSequence) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length = charSequence.length();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(length);
        int i = 0;
        while (i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt >= 'a' && cCharAt <= 'd') {
                if (i >= length - 1) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                i++;
                cCharAt = a(cCharAt, charSequence.charAt(i));
            }
            sb.append(cCharAt);
            i++;
        }
        return sb.toString();
    }

    @Override // com.huawei.hms.scankit.p.Ab
    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iB = c0117ab.b(a(c0117ab)[1]);
        int iD = c0117ab.d();
        int[] iArr = this.f834e;
        java.util.Arrays.fill(iArr, 0);
        java.lang.StringBuilder sb = this.f833d;
        sb.setLength(0);
        while (true) {
            com.huawei.hms.scankit.p.Ab.a(c0117ab, iB, iArr);
            int iB2 = b(iArr);
            if (iB2 < 0) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            char cA = a(iB2);
            sb.append(cA);
            int i2 = iB;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int iB3 = c0117ab.b(i2);
            if (cA == '*') {
                sb.deleteCharAt(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                if (iB3 == iD || !c0117ab.a(iB3)) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                if (sb.length() < 2) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                a(sb);
                sb.setLength(sb.length() - 2);
                float f2 = i;
                return new com.huawei.hms.scankit.aiscan.common.x(b(sb), null, new com.huawei.hms.scankit.aiscan.common.z[]{new com.huawei.hms.scankit.aiscan.common.z(r14[0], f2), new com.huawei.hms.scankit.aiscan.common.z(((i4 * 10) / 9) + iB, f2)}, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_93);
            }
            iB = iB3;
        }
    }
}
