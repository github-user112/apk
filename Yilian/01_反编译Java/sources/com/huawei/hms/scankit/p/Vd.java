package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public abstract class Vd implements com.huawei.hms.scankit.p.InterfaceC0199qd {
    public static int a(boolean[] zArr, int i, int[] iArr, boolean z) {
        int i2 = 0;
        for (int i3 : iArr) {
            int i4 = 0;
            while (i4 < i3) {
                zArr[i] = z;
                i4++;
                i++;
            }
            i2 += i3;
            z = !z;
        }
        return i2;
    }

    public static com.huawei.hms.scankit.p.C0122bb a(boolean[] zArr, int i, int i2, int i3) {
        int length = zArr.length;
        int i4 = i3 + length;
        int iMax = java.lang.Math.max(i, i4);
        int iMax2 = java.lang.Math.max(1, i2);
        int i5 = iMax / i4;
        int i6 = (iMax - (length * i5)) / 2;
        com.huawei.hms.scankit.p.C0122bb c0122bb = new com.huawei.hms.scankit.p.C0122bb(iMax, iMax2);
        int i7 = 0;
        while (i7 < length) {
            if (zArr[i7]) {
                c0122bb.a(i6, 0, i5, iMax2);
            }
            i7++;
            i6 += i5;
        }
        return c0122bb;
    }

    public int a() {
        return 10;
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) throws java.lang.NumberFormatException {
        if (str.isEmpty()) {
            throw new java.lang.IllegalArgumentException("Found empty contents");
        }
        if (i < 0 || i2 < 0) {
            throw new java.lang.IllegalArgumentException("Negative size is not allowed. Input: " + i + 'x' + i2);
        }
        int iA = a();
        if (map != null && map.containsKey(com.huawei.hms.scankit.p.ke.MARGIN)) {
            try {
                iA = java.lang.Integer.parseInt(map.get(com.huawei.hms.scankit.p.ke.MARGIN).toString());
            } catch (java.lang.NumberFormatException unused) {
                throw new java.lang.IllegalArgumentException("EncodeHintType MARGIN can not format integer");
            }
        }
        return a(a(str), i, i2, iA);
    }

    public abstract boolean[] a(java.lang.String str);
}
