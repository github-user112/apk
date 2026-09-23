package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Rd extends com.huawei.hms.scankit.p.Vd {
    public static int a(java.lang.String str, int i) {
        int iIndexOf = 0;
        int i2 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i2;
            i2++;
            if (i2 > i) {
                i2 = 1;
            }
        }
        return iIndexOf % 47;
    }

    public static int a(boolean[] zArr, int i, int[] iArr) {
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            zArr[i] = iArr[i2] != 0;
            i2++;
            i = i3;
        }
        return 9;
    }

    public static void a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) == 0) {
                i3 = 0;
            }
            iArr[i2] = i3;
        }
    }

    @Override // com.huawei.hms.scankit.p.Vd, com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) {
        if (barcodeFormat == com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_93) {
            return super.a(str, barcodeFormat, i, i2, map);
        }
        throw new java.lang.IllegalArgumentException("Can only encode CODE_93, but got " + barcodeFormat);
    }

    @Override // com.huawei.hms.scankit.p.Vd
    public boolean[] a(java.lang.String str) {
        int length = str.length();
        if (length > 80) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Requested contents should be less than 80 digits long, but got ", length));
        }
        int[] iArr = new int[9];
        int length2 = ((str.length() + 2 + 2) * 9) + 1;
        a(com.huawei.hms.scankit.p.C0216ub.b[47], iArr);
        boolean[] zArr = new boolean[length2];
        int iA = a(zArr, 0, iArr);
        for (int i = 0; i < length; i++) {
            int iIndexOf = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(i));
            if (iIndexOf < 0) {
                throw new java.lang.IllegalArgumentException("Bad contents: please check contents");
            }
            a(com.huawei.hms.scankit.p.C0216ub.b[iIndexOf], iArr);
            iA += a(zArr, iA, iArr);
        }
        int iA2 = a(str, 20);
        a(com.huawei.hms.scankit.p.C0216ub.b[iA2], iArr);
        int iA3 = a(zArr, iA, iArr) + iA;
        java.lang.StringBuilder sbO = e.a.c.a.a.o(str);
        sbO.append("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(iA2));
        a(com.huawei.hms.scankit.p.C0216ub.b[a(sbO.toString(), 15)], iArr);
        int iA4 = a(zArr, iA3, iArr) + iA3;
        a(com.huawei.hms.scankit.p.C0216ub.b[47], iArr);
        zArr[a(zArr, iA4, iArr) + iA4] = true;
        return zArr;
    }
}
