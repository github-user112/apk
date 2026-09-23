package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Ud extends com.huawei.hms.scankit.p.Vd {
    public static final int[] a = {1, 1, 1, 1};
    public static final int[] b = {3, 1, 1};

    @Override // com.huawei.hms.scankit.p.Vd, com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) {
        if (barcodeFormat == com.huawei.hms.scankit.aiscan.common.BarcodeFormat.ITF) {
            return super.a(str, barcodeFormat, i, i2, map);
        }
        throw new java.lang.IllegalArgumentException("Can only encode ITF, but got " + barcodeFormat);
    }

    @Override // com.huawei.hms.scankit.p.Vd
    public boolean[] a(java.lang.String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new java.lang.IllegalArgumentException("The length of the input should be even");
        }
        if (length > 80) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Requested contents should be less than 80 digits long, but got ", length));
        }
        boolean[] zArr = new boolean[(length * 9) + 9];
        int iA = com.huawei.hms.scankit.p.Vd.a(zArr, 0, a, true);
        for (int i = 0; i < length; i += 2) {
            int iDigit = java.lang.Character.digit(str.charAt(i), 10);
            int iDigit2 = java.lang.Character.digit(str.charAt(i + 1), 10);
            int[] iArr = new int[10];
            for (int i2 = 0; i2 < 5; i2++) {
                int i3 = i2 * 2;
                int[][] iArr2 = com.huawei.hms.scankit.p.C0231xb.f862d;
                iArr[i3] = iArr2[iDigit][i2];
                iArr[i3 + 1] = iArr2[iDigit2][i2];
            }
            iA += com.huawei.hms.scankit.p.Vd.a(zArr, iA, iArr, true);
        }
        com.huawei.hms.scankit.p.Vd.a(zArr, iA, b, true);
        return zArr;
    }
}
