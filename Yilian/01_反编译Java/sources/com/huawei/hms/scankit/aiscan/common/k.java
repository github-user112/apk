package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public class k {
    public static int a(int i, int i2, int i3) {
        return i >= i2 ? i2 : i <= i3 ? i3 : i;
    }

    public static com.huawei.hms.scankit.p._a a(com.huawei.hms.scankit.p._a _aVar) {
        int iE = _aVar.e();
        int iC = _aVar.c();
        byte[] bArrD = _aVar.d();
        byte[] bArr = new byte[iE * iC];
        for (int i = 0; i < iC; i++) {
            for (int i2 = 0; i2 < iE; i2++) {
                bArr[(((i2 * iC) + iC) - i) - 1] = bArrD[(i * iE) + i2];
            }
        }
        return new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0137eb(new com.huawei.hms.scankit.aiscan.common.r(bArr, iC, iE, 0, 0, iC, iE, false)));
    }

    public static com.huawei.hms.scankit.p._a a(com.huawei.hms.scankit.p._a _aVar, float f2) {
        if (f2 == 1.0f) {
            return _aVar;
        }
        int iC = _aVar.c();
        int iE = _aVar.e();
        int i = (int) (iE / f2);
        int i2 = (int) (iC / f2);
        byte[] bArrD = _aVar.d();
        int i3 = i * i2;
        byte[] bArr = new byte[i3];
        int i4 = 0;
        int i5 = 0;
        while (i5 < i3) {
            double dA = a(i5 % i, i - 1, i4) * f2;
            double dA2 = a(i5 / i, i2 - 1, i4) * f2;
            double dFloor = java.lang.Math.floor(dA);
            int i6 = i5;
            double dFloor2 = java.lang.Math.floor(dA2);
            java.lang.Double.isNaN(dA);
            double d2 = dA - dFloor;
            java.lang.Double.isNaN(dA2);
            double d3 = dA2 - dFloor2;
            int i7 = iE - 1;
            int i8 = i3;
            int iA = a((int) dFloor, i7, 0);
            int i9 = iC - 1;
            int iA2 = a((int) dFloor2, i9, 0);
            int i10 = iA2 * iE;
            int i11 = iC;
            int i12 = i;
            double d4 = bArrD[i10 + iA] & 255;
            double d5 = 1.0d - d2;
            java.lang.Double.isNaN(d4);
            double d6 = 1.0d - d3;
            int i13 = iA + 1;
            byte[] bArr2 = bArr;
            double d7 = bArrD[a(i13, i7, 0) + i10] & 255;
            java.lang.Double.isNaN(d7);
            double d8 = (d7 * d2 * d6) + (d4 * d5 * d6);
            int i14 = iA2 + 1;
            double d9 = bArrD[(a(i14, i9, 0) * iE) + iA] & 255;
            java.lang.Double.isNaN(d9);
            double d10 = bArrD[a(i13, i7, 0) + (a(i14, i9, 0) * iE)] & 255;
            java.lang.Double.isNaN(d10);
            bArr2[i6] = (byte) (((int) ((d10 * d2 * d3) + (d9 * d5 * d3) + d8)) & 255);
            i5 = i6 + 1;
            i3 = i8;
            i = i12;
            iC = i11;
            i2 = i2;
            bArr = bArr2;
            i4 = 0;
        }
        return new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0137eb(new com.huawei.hms.scankit.aiscan.common.r(bArr, i, i2, 0, 0, i, i2, false)));
    }

    public static com.huawei.hms.scankit.p._a a(boolean z, com.huawei.hms.scankit.p._a _aVar, float f2) {
        if (f2 == 1.0f) {
            return _aVar;
        }
        int iC = _aVar.c();
        int iE = _aVar.e();
        int i = (int) (iE / f2);
        int i2 = (int) (iC / f2);
        return new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0137eb(new com.huawei.hms.scankit.aiscan.common.r(com.huawei.hms.scankit.util.LoadOpencvJNIUtil.imageResize(_aVar.d(), iC, iE, i2, i), i, i2, 0, 0, i, i2, false)));
    }
}
