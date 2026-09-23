package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Qd extends com.huawei.hms.scankit.p.Vd {
    public static void a(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) != 0) {
                i3 = 2;
            }
            iArr[i2] = i3;
        }
    }

    @Override // com.huawei.hms.scankit.p.Vd, com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) {
        if (barcodeFormat == com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_39) {
            return super.a(str, barcodeFormat, i, i2, map);
        }
        throw new java.lang.IllegalArgumentException("Can only encode CODE_39, but got " + barcodeFormat);
    }

    @Override // com.huawei.hms.scankit.p.Vd
    public boolean[] a(java.lang.String str) {
        int length = str.length();
        if (length > 80) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Requested contents should be less than 80 digits long, but got ", length));
        }
        int[] iArr = new int[9];
        int i = length + 25;
        for (int i2 = 0; i2 < length; i2++) {
            int iIndexOf = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i2));
            if (iIndexOf < 0) {
                throw new java.lang.IllegalArgumentException("Bad contents: error contents");
            }
            a(com.huawei.hms.scankit.p.C0211tb.a[iIndexOf], iArr);
            for (int i3 = 0; i3 < 9; i3++) {
                i += iArr[i3];
            }
        }
        boolean[] zArr = new boolean[i];
        a(148, iArr);
        int iA = com.huawei.hms.scankit.p.Vd.a(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int iA2 = com.huawei.hms.scankit.p.Vd.a(zArr, iA, iArr2, false) + iA;
        for (int i4 = 0; i4 < length; i4++) {
            a(com.huawei.hms.scankit.p.C0211tb.a["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(str.charAt(i4))], iArr);
            int iA3 = com.huawei.hms.scankit.p.Vd.a(zArr, iA2, iArr, true) + iA2;
            iA2 = com.huawei.hms.scankit.p.Vd.a(zArr, iA3, iArr2, false) + iA3;
        }
        a(148, iArr);
        com.huawei.hms.scankit.p.Vd.a(zArr, iA2, iArr, true);
        return zArr;
    }
}
