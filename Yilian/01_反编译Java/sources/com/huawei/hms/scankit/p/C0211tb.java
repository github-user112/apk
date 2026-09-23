package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.tb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0211tb extends com.huawei.hms.scankit.p.Ab {
    public static final int[] a = {52, 289, 97, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_PACKAGE_CHECK_LIB_META, 49, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISSING_LIB, 112, 37, 292, 100, net.easyconn.jni.PlatinumReflection.MEDIA_RENDER_CTL_MSG_NEXT, 73, 328, 25, 280, 88, 13, net.easyconn.jni.PlatinumReflection.MEDIA_RENDER_CTL_MSG_SETLOCKSCREEN, 76, 28, net.easyconn.jni.PlatinumReflection.MEDIA_RENDER_CTL_MSG_PAUSE, 67, 322, 19, 274, 82, 7, net.easyconn.jni.PlatinumReflection.MEDIA_RENDER_CTL_MSG_SETMUTE, 70, 22, 385, 193, 448, 145, 400, 208, 133, 388, com.tencent.tinker.android.dx.instruction.Opcodes.SHR_LONG_2ADDR, com.tencent.tinker.android.dx.instruction.Opcodes.MUL_FLOAT, 162, 138, 42};
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f822c;

    /* renamed from: d, reason: collision with root package name */
    public final java.lang.StringBuilder f823d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f824e;

    public C0211tb() {
        this(false);
    }

    public C0211tb(boolean z) {
        this(z, false);
    }

    public C0211tb(boolean z, boolean z2) {
        this.b = z;
        this.f822c = z2;
        this.f823d = new java.lang.StringBuilder(20);
        this.f824e = new int[9];
    }

    public static char a(char c2, char c3) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int i;
        if (c2 != '$') {
            if (c2 != '%') {
                if (c2 != '+') {
                    if (c2 == '/') {
                        if (c3 < 'A' || c3 > 'O') {
                            if (c3 == 'Z') {
                                return ':';
                            }
                            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                        }
                        i = c3 - ' ';
                    }
                    return (char) 0;
                }
                if (c3 < 'A' || c3 > 'Z') {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                i = c3 + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE;
            } else if (c3 >= 'A' && c3 <= 'E') {
                i = c3 - '&';
            } else if (c3 >= 'F' && c3 <= 'J') {
                i = c3 - 11;
            } else if (c3 >= 'K' && c3 <= 'O') {
                i = c3 + 16;
            } else {
                if (c3 < 'P' || c3 > 'T') {
                    if (c3 != 'U') {
                        if (c3 == 'V') {
                            return '@';
                        }
                        if (c3 == 'W') {
                            return '`';
                        }
                        if (c3 == 'X' || c3 == 'Y' || c3 == 'Z') {
                            return (char) 127;
                        }
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                    }
                    return (char) 0;
                }
                i = c3 + '+';
            }
        } else {
            if (c3 < 'A' || c3 > 'Z') {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            i = c3 - '@';
        }
        return (char) i;
    }

    public static char a(int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int i2 = 0;
        while (true) {
            int[] iArr = a;
            if (i2 >= iArr.length) {
                if (i == 148) {
                    return com.huawei.hms.ml.common.utils.SmartLog.STAR;
                }
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            if (iArr[i2] == i) {
                return "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(i2);
            }
            i2++;
        }
    }

    private com.huawei.hms.scankit.aiscan.common.x a(java.lang.StringBuilder sb, int[] iArr, int i, int i2, int i3) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (this.b) {
            int length = sb.length() - 1;
            int iIndexOf = 0;
            for (int i4 = 0; i4 < length; i4++) {
                iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(this.f823d.charAt(i4));
            }
            if (sb.charAt(length) != "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(iIndexOf % 43)) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            sb.setLength(length);
        }
        if (sb.length() == 0) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        float f2 = i3;
        return new com.huawei.hms.scankit.aiscan.common.x(this.f822c ? a(sb) : sb.toString(), null, new com.huawei.hms.scankit.aiscan.common.z[]{new com.huawei.hms.scankit.aiscan.common.z(iArr[0], f2), new com.huawei.hms.scankit.aiscan.common.z(i + i2, f2)}, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_39);
    }

    public static java.lang.String a(java.lang.CharSequence charSequence) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length = charSequence.length();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(length);
        int i = 0;
        while (i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt == '+' || cCharAt == '$' || cCharAt == '%' || cCharAt == '/') {
                i++;
                cCharAt = a(cCharAt, charSequence.charAt(i));
            }
            sb.append(cCharAt);
            i++;
        }
        return sb.toString();
    }

    public static int[] a(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iD = c0117ab.d();
        int iB = c0117ab.b(0);
        int length = iArr.length;
        int i = iB;
        boolean z = false;
        int i2 = 0;
        while (iB < iD) {
            if (c0117ab.a(iB) == z) {
                if (i2 != length - 1) {
                    i2++;
                } else {
                    if (c(iArr) == 148 && c0117ab.a(java.lang.Math.max(0, i - ((iB - i) / 5)), i, false, true)) {
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

    public static boolean b(int[] iArr) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (int i3 : iArr) {
            if (i3 < i) {
                i = i3;
            }
            if (i3 > i2) {
                i2 = i3;
            }
        }
        return i2 / i > 6;
    }

    public static int c(int[] iArr) {
        int length = iArr.length;
        if (b(iArr)) {
            return -1;
        }
        int i = 0;
        while (true) {
            int i2 = Integer.MAX_VALUE;
            for (int i3 : iArr) {
                if (i3 < i2 && i3 > i) {
                    i2 = i3;
                }
            }
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                int i8 = iArr[i7];
                if (i8 > i2) {
                    i6 |= 1 << ((length - 1) - i7);
                    i4++;
                    i5 += i8;
                }
            }
            if (i4 == 3) {
                for (int i9 = 0; i9 < length && i4 > 0; i9++) {
                    int i10 = iArr[i9];
                    if (i10 > i2) {
                        i4--;
                        if (i10 * 2 >= i5) {
                            return -1;
                        }
                    }
                }
                return i6;
            }
            if (i4 <= 3) {
                return -1;
            }
            i = i2;
        }
    }

    @Override // com.huawei.hms.scankit.p.Ab
    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr = this.f824e;
        java.util.Arrays.fill(iArr, 0);
        java.lang.StringBuilder sb = this.f823d;
        sb.setLength(0);
        int[] iArrA = a(c0117ab, iArr);
        int iB = c0117ab.b(iArrA[1]);
        int iD = c0117ab.d();
        while (true) {
            com.huawei.hms.scankit.p.Ab.a(c0117ab, iB, iArr);
            int iC = c(iArr);
            if (iC < 0) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            char cA = a(iC);
            sb.append(cA);
            int i2 = iB;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int iB2 = c0117ab.b(i2);
            if (cA == '*') {
                sb.setLength(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                int i6 = (iB2 - iB) - i4;
                if (iB2 == iD || i6 * 5 >= i4) {
                    return a(sb, iArrA, iB, i4, i);
                }
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            iB = iB2;
        }
    }
}
