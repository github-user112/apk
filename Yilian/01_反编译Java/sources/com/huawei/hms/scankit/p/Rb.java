package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Rb {
    public final com.huawei.hms.scankit.p.Sb a = com.huawei.hms.scankit.p.Sb.a;

    private int[] a(com.huawei.hms.scankit.p.Tb tb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iA = tb.a();
        int[] iArr = new int[iA];
        int i = 0;
        for (int i2 = 1; i2 < this.a.b() && i < iA; i2++) {
            if (tb.a(i2) == 0) {
                iArr[i] = this.a.b(i2);
                i++;
            }
        }
        if (i == iA) {
            return iArr;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    private int[] a(com.huawei.hms.scankit.p.Tb tb, com.huawei.hms.scankit.p.Tb tb2, int[] iArr) {
        int iA = tb2.a();
        int[] iArr2 = new int[iA];
        for (int i = 1; i <= iA; i++) {
            iArr2[iA - i] = this.a.c(i, tb2.b(i));
        }
        com.huawei.hms.scankit.p.Tb tb3 = new com.huawei.hms.scankit.p.Tb(this.a, iArr2);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            int iB = this.a.b(iArr[i2]);
            iArr3[i2] = this.a.c(this.a.d(0, tb.a(iB)), this.a.b(tb3.a(iB)));
        }
        return iArr3;
    }

    private com.huawei.hms.scankit.p.Tb[] a(com.huawei.hms.scankit.p.Tb tb, com.huawei.hms.scankit.p.Tb tb2, int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (tb.a() >= tb2.a()) {
            tb2 = tb;
            tb = tb2;
        }
        com.huawei.hms.scankit.p.Tb tbC = this.a.c();
        com.huawei.hms.scankit.p.Tb tbA = this.a.a();
        while (tb.a() >= i / 2) {
            if (tb.b()) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            com.huawei.hms.scankit.p.Tb tbC2 = this.a.c();
            int iB = this.a.b(tb.b(tb.a()));
            while (tb2.a() >= tb.a() && !tb2.b()) {
                int iA = tb2.a() - tb.a();
                int iC = this.a.c(tb2.b(tb2.a()), iB);
                tbC2 = tbC2.a(this.a.b(iA, iC));
                tb2 = tb2.c(tb.a(iA, iC));
            }
            com.huawei.hms.scankit.p.Tb tbC3 = tbC2.b(tbA).c(tbC).c();
            com.huawei.hms.scankit.p.Tb tb3 = tb2;
            tb2 = tb;
            tb = tb3;
            tbC = tbA;
            tbA = tbC3;
        }
        int iB2 = tbA.b(0);
        if (iB2 == 0) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int iB3 = this.a.b(iB2);
        return new com.huawei.hms.scankit.p.Tb[]{tbA.c(iB3), tb.c(iB3)};
    }

    public int a(int[] iArr, int i, int[] iArr2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Tb tb = new com.huawei.hms.scankit.p.Tb(this.a, iArr);
        int[] iArr3 = new int[i];
        boolean z = false;
        for (int i2 = i; i2 > 0; i2--) {
            int iA = tb.a(this.a.a(i2));
            iArr3[i - i2] = iA;
            if (iA != 0) {
                z = true;
            }
        }
        if (!z) {
            return 0;
        }
        com.huawei.hms.scankit.p.Tb tbA = this.a.a();
        if (iArr2 != null) {
            for (int i3 : iArr2) {
                int iA2 = this.a.a((iArr.length - 1) - i3);
                com.huawei.hms.scankit.p.Sb sb = this.a;
                tbA = tbA.b(new com.huawei.hms.scankit.p.Tb(sb, new int[]{sb.d(0, iA2), 1}));
            }
        }
        com.huawei.hms.scankit.p.Tb[] tbArrA = a(this.a.b(i, 1), new com.huawei.hms.scankit.p.Tb(this.a, iArr3), i);
        com.huawei.hms.scankit.p.Tb tb2 = tbArrA[0];
        com.huawei.hms.scankit.p.Tb tb3 = tbArrA[1];
        int[] iArrA = a(tb2);
        int[] iArrA2 = a(tb3, tb2, iArrA);
        for (int i4 = 0; i4 < iArrA.length; i4++) {
            int length = (iArr.length - 1) - this.a.c(iArrA[i4]);
            if (length < 0) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            iArr[length] = this.a.d(iArr[length], iArrA2[i4]);
        }
        return iArrA.length;
    }
}
