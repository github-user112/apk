package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Gb extends com.huawei.hms.scankit.p.Fb {
    public static final int[] h = {1, 1, 1, 1, 1, 1};
    public static final int[][] i = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};
    public final int[] j = new int[4];

    public static void a(java.lang.StringBuilder sb, int i2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        for (int i3 = 0; i3 <= 1; i3++) {
            for (int i4 = 0; i4 < 10; i4++) {
                if (i2 == i[i3][i4]) {
                    sb.insert(0, (char) (i3 + 48));
                    sb.append((char) (i4 + 48));
                    return;
                }
            }
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    private int b(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, int i2, int[][] iArr2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Ab.a(c0117ab, i2, iArr);
        int length = iArr2.length;
        float f2 = 0.45f;
        int i3 = -1;
        for (int i4 = 0; i4 < length; i4++) {
            float fA = com.huawei.hms.scankit.p.Ab.a(iArr, iArr2[i4], 0.7f);
            if (fA < f2) {
                i3 = i4;
                f2 = fA;
            }
        }
        if (i3 >= 0) {
            return i3;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static java.lang.String b(java.lang.String str) {
        char[] cArr = new char[6];
        str.getChars(1, 7, cArr, 0);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(12);
        sb.append(str.charAt(0));
        char c2 = cArr[5];
        switch (c2) {
            case '0':
            case '1':
            case '2':
                sb.append(cArr, 0, 2);
                sb.append(c2);
                sb.append(net.easyconn.ecsdk.ebt.BleUuidUtils.UUID_LONG_STYLE_PREFIX);
                sb.append(cArr, 2, 3);
                break;
            case '3':
                sb.append(cArr, 0, 3);
                sb.append("00000");
                sb.append(cArr, 3, 2);
                break;
            case '4':
                sb.append(cArr, 0, 4);
                sb.append("00000");
                sb.append(cArr[4]);
                break;
            default:
                sb.append(cArr, 0, 5);
                sb.append(net.easyconn.ecsdk.ebt.BleUuidUtils.UUID_LONG_STYLE_PREFIX);
                sb.append(c2);
                break;
        }
        if (str.length() >= 8) {
            sb.append(str.charAt(7));
        }
        return sb.toString();
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public int a(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr2 = this.j;
        int i2 = 0;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iD = c0117ab.d();
        int i3 = iArr[1];
        float f2 = 10000.0f;
        int i4 = 0;
        int i5 = 0;
        float f3 = 0.0f;
        while (i4 < 6 && i3 < iD) {
            int iB = b(c0117ab, iArr2, i3, com.huawei.hms.scankit.p.Fb.f524e);
            sb.append((char) ((iB % 10) + 48));
            int i6 = 0;
            float f4 = 0.0f;
            while (true) {
                if (i6 >= com.huawei.hms.scankit.p.Fb.f524e[iB].length) {
                    break;
                }
                f4 += r17[iB][i6];
                i6++;
            }
            float f5 = (((iArr2[i2] + iArr2[1]) + iArr2[2]) + iArr2[3]) / f4;
            if (f5 > f3) {
                f3 = f5;
            }
            if (f5 < f2) {
                f2 = f5;
            }
            int length = iArr2.length;
            while (i2 < length) {
                i3 += iArr2[i2];
                i2++;
            }
            if (iB >= 10) {
                i5 |= 1 << (5 - i4);
            }
            i4++;
            i2 = 0;
        }
        if (f3 / f2 > 2.89d) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        a(sb, i5);
        return i3;
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public com.huawei.hms.scankit.aiscan.common.BarcodeFormat a() {
        return com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_E;
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public boolean a(int i2, int i3, com.huawei.hms.scankit.p.C0117ab c0117ab) {
        return c0117ab.a(i3, (i3 - i2) + i3, false, true);
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public boolean a(java.lang.String str) {
        return super.a(b(str));
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public boolean a(int[] iArr, int[] iArr2) {
        double d2 = iArr[1] - iArr[0];
        java.lang.Double.isNaN(d2);
        double d3 = d2 / 3.0d;
        double d4 = iArr2[1] - iArr2[0];
        java.lang.Double.isNaN(d4);
        double d5 = d4 / 6.0d;
        double d6 = (iArr[1] - iArr[0]) + (iArr2[1] - iArr2[0]);
        java.lang.Double.isNaN(d6);
        double d7 = iArr2[1] - iArr[0];
        java.lang.Double.isNaN(d7);
        return ((double) java.lang.Math.abs(((int) java.lang.Math.round(d7 / (d6 / 9.0d))) + (-51))) <= 10.200000000000001d && java.lang.Math.abs(1.0d - (d3 / d5)) < 0.2d;
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public int[] a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i2) {
        return com.huawei.hms.scankit.p.Fb.a(c0117ab, i2, true, h);
    }
}
