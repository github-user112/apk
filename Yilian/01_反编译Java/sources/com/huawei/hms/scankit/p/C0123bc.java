package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.bc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0123bc {
    public final com.huawei.hms.scankit.p.C0122bb a;
    public com.huawei.hms.scankit.p.C0242zc b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p.C0222vc f679c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f680d;

    public C0123bc(com.huawei.hms.scankit.p.C0122bb c0122bb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iB = c0122bb.b();
        if (iB < 21 || (iB & 3) != 1) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        this.a = c0122bb;
    }

    private int a(int i, int i2, int i3) {
        return this.f680d ? this.a.b(i2, i) : this.a.b(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    public void a() {
        int i = 0;
        while (i < this.a.d()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.a.b(); i3++) {
                if (this.a.b(i, i3) != this.a.b(i3, i)) {
                    this.a.a(i3, i);
                    this.a.a(i, i3);
                }
            }
            i = i2;
        }
    }

    public void a(boolean z) {
        this.b = null;
        this.f679c = null;
        this.f680d = z;
    }

    public byte[] b() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.C0222vc c0222vcC = c();
        com.huawei.hms.scankit.p.C0242zc c0242zcD = d();
        com.huawei.hms.scankit.p.EnumC0173lc enumC0173lc = com.huawei.hms.scankit.p.EnumC0173lc.values()[c0222vcC.a()];
        int iB = this.a.b();
        enumC0173lc.a(this.a, iB);
        com.huawei.hms.scankit.p.C0122bb c0122bbA = c0242zcD.a();
        byte[] bArr = new byte[c0242zcD.d()];
        int i = iB - 1;
        boolean z = true;
        int i2 = i;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            if (i2 == 6) {
                i2--;
            }
            for (int i6 = 0; i6 < iB; i6++) {
                int i7 = z ? i - i6 : i6;
                for (int i8 = 0; i8 < 2; i8++) {
                    int i9 = i2 - i8;
                    if (!c0122bbA.b(i9, i7)) {
                        i5++;
                        i4 <<= 1;
                        if (this.a.b(i9, i7)) {
                            i4 |= 1;
                        }
                        if (i5 == 8) {
                            bArr[i3] = (byte) i4;
                            i3++;
                            i4 = 0;
                            i5 = 0;
                        }
                    }
                }
            }
            z = !z;
            i2 -= 2;
        }
        if (i3 == c0242zcD.d()) {
            return bArr;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public com.huawei.hms.scankit.p.C0222vc c() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.C0222vc c0222vc = this.f679c;
        if (c0222vc != null) {
            return c0222vc;
        }
        int iA = 0;
        int iA2 = 0;
        for (int i = 0; i < 6; i++) {
            iA2 = a(i, 8, iA2);
        }
        int iA3 = a(8, 7, a(8, 8, a(7, 8, iA2)));
        for (int i2 = 5; i2 >= 0; i2--) {
            iA3 = a(8, i2, iA3);
        }
        int iB = this.a.b();
        int i3 = iB - 7;
        for (int i4 = iB - 1; i4 >= i3; i4--) {
            iA = a(8, i4, iA);
        }
        for (int i5 = iB - 8; i5 < iB; i5++) {
            iA = a(i5, 8, iA);
        }
        com.huawei.hms.scankit.p.C0222vc c0222vcA = com.huawei.hms.scankit.p.C0222vc.a(iA3, iA);
        this.f679c = c0222vcA;
        if (c0222vcA != null) {
            return c0222vcA;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public com.huawei.hms.scankit.p.C0242zc d() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.C0242zc c0242zc = this.b;
        if (c0242zc != null) {
            return c0242zc;
        }
        int iB = this.a.b();
        int i = (iB - 17) / 4;
        if (i <= 6) {
            return com.huawei.hms.scankit.p.C0242zc.c(i);
        }
        int i2 = iB - 11;
        int iA = 0;
        int iA2 = 0;
        for (int i3 = 5; i3 >= 0; i3--) {
            for (int i4 = iB - 9; i4 >= i2; i4--) {
                iA2 = a(i4, i3, iA2);
            }
        }
        com.huawei.hms.scankit.p.C0242zc c0242zcA = com.huawei.hms.scankit.p.C0242zc.a(iA2);
        if (c0242zcA != null && c0242zcA.c() == iB) {
            this.b = c0242zcA;
            return c0242zcA;
        }
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = iB - 9; i6 >= i2; i6--) {
                iA = a(i5, i6, iA);
            }
        }
        com.huawei.hms.scankit.p.C0242zc c0242zcA2 = com.huawei.hms.scankit.p.C0242zc.a(iA);
        if (c0242zcA2 == null || c0242zcA2.c() != iB) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        this.b = c0242zcA2;
        return c0242zcA2;
    }

    public void e() {
        if (this.f679c == null) {
            return;
        }
        com.huawei.hms.scankit.p.EnumC0173lc.values()[this.f679c.a()].a(this.a, this.a.b());
    }
}
