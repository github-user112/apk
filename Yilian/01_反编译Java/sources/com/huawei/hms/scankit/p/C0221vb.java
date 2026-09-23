package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.vb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0221vb extends com.huawei.hms.scankit.p.Fb {
    public static final int[] h = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};
    public java.lang.String j = "";
    public final int[] i = new int[4];

    public static void a(java.lang.StringBuilder sb, int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == h[i2]) {
                sb.insert(0, (char) (i2 + 48));
                return;
            }
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static boolean a(java.lang.StringBuilder sb) {
        int iCharAt = sb.charAt(sb.length() - 1) - '0';
        int iCharAt2 = 0;
        for (int i = 0; i < sb.length() - 1; i++) {
            iCharAt2 = (i % 2 == 0 ? sb.charAt(i) - '0' : (sb.charAt(i) - '0') * 3) + iCharAt2;
        }
        return (iCharAt2 + iCharAt) % 10 == 0;
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public int a(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr2 = this.i;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iD = c0117ab.d();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 6 && i < iD; i3++) {
            int iA = com.huawei.hms.scankit.p.Fb.a(c0117ab, iArr2, i, com.huawei.hms.scankit.p.Fb.f524e);
            sb.append((char) ((iA % 10) + 48));
            for (int i4 : iArr2) {
                i += i4;
            }
            if (iA >= 10) {
                i2 |= 1 << (5 - i3);
            }
        }
        a(sb, i2);
        this.j = sb.substring(0, 1);
        int i5 = com.huawei.hms.scankit.p.Fb.a(c0117ab, i, true, com.huawei.hms.scankit.p.Fb.b)[1];
        for (int i6 = 0; i6 < 6 && i5 < iD; i6++) {
            sb.append((char) (com.huawei.hms.scankit.p.Fb.a(c0117ab, iArr2, i5, com.huawei.hms.scankit.p.Fb.f523d) + 48));
            for (int i7 : iArr2) {
                i5 += i7;
            }
        }
        if (a(sb)) {
            return i5;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public com.huawei.hms.scankit.aiscan.common.BarcodeFormat a() {
        return com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_13;
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public boolean a(int i, int i2, com.huawei.hms.scankit.p.C0117ab c0117ab) {
        return c0117ab.a(i2, (i2 - i) + i2, false, false);
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public boolean a(int[] iArr, int[] iArr2) {
        double d2 = (iArr[1] - iArr[0]) + (iArr2[1] - iArr2[0]);
        java.lang.Double.isNaN(d2);
        double d3 = iArr2[1] - iArr[0];
        java.lang.Double.isNaN(d3);
        int iRound = (int) java.lang.Math.round(d3 / (d2 / 6.0d));
        return this.j.equals("0") ? ((double) java.lang.Math.abs(iRound + (-95))) <= 18.05d || ((double) java.lang.Math.abs(iRound + (-113))) <= 21.47d : ((double) java.lang.Math.abs(iRound + (-95))) <= 18.05d;
    }
}
