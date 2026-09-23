package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ac, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0118ac {
    public final com.huawei.hms.scankit.p.C0122bb a;

    /* renamed from: c, reason: collision with root package name */
    public final int f670c;

    /* renamed from: d, reason: collision with root package name */
    public final int f671d;

    /* renamed from: e, reason: collision with root package name */
    public final int f672e;

    /* renamed from: f, reason: collision with root package name */
    public final int f673f;

    /* renamed from: g, reason: collision with root package name */
    public final float f674g;
    public final com.huawei.hms.scankit.aiscan.common.A i;
    public final java.util.List<com.huawei.hms.scankit.p._b> b = new java.util.ArrayList(5);
    public final int[] h = new int[3];

    public C0118ac(com.huawei.hms.scankit.p.C0122bb c0122bb, int i, int i2, int i3, int i4, float f2, com.huawei.hms.scankit.aiscan.common.A a) {
        this.a = c0122bb;
        this.f670c = i;
        this.f671d = i2;
        this.f672e = i3;
        this.f673f = i4;
        this.f674g = f2;
        this.i = a;
    }

    private float a(int i, int i2, int i3, int i4) {
        int i5;
        com.huawei.hms.scankit.p.C0122bb c0122bb = this.a;
        int iB = c0122bb.b();
        int[] iArr = this.h;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        int i6 = i;
        while (i6 >= 0 && c0122bb.b(i2, i6) && iArr[1] <= i3) {
            iArr[1] = iArr[1] + 1;
            i6--;
        }
        if (i6 < 0 || iArr[1] > i3) {
            return Float.NaN;
        }
        while (i6 >= 0 && !c0122bb.b(i2, i6) && iArr[0] <= i3) {
            iArr[0] = iArr[0] + 1;
            i6--;
        }
        if (iArr[0] > i3) {
            return Float.NaN;
        }
        int i7 = i + 1;
        while (i7 < iB && c0122bb.b(i2, i7) && iArr[1] <= i3) {
            iArr[1] = iArr[1] + 1;
            i7++;
        }
        if (i7 == iB || iArr[1] > i3) {
            return Float.NaN;
        }
        while (i7 < iB && !c0122bb.b(i2, i7) && iArr[2] <= i3) {
            iArr[2] = iArr[2] + 1;
            i7++;
        }
        if (iArr[2] <= i3 && (i5 = iArr[0] + iArr[1] + iArr[2]) < i4 * 3 && i5 * 3 > i4 && a(iArr)) {
            return a(iArr, i7);
        }
        return Float.NaN;
    }

    public static float a(int[] iArr, int i) {
        return (i - iArr[2]) - (iArr[1] / 2.0f);
    }

    private com.huawei.hms.scankit.p._b a(int i, int i2, int i3, int[] iArr) {
        com.huawei.hms.scankit.p._b _bVarA;
        int i4 = 0;
        while (i2 < i3) {
            if (!this.a.b(i2, i)) {
                if (i4 == 1) {
                    i4++;
                }
                iArr[i4] = iArr[i4] + 1;
            } else if (i4 == 1) {
                iArr[1] = iArr[1] + 1;
            } else if (i4 != 2) {
                i4++;
                iArr[i4] = iArr[i4] + 1;
            } else {
                if (a(iArr) && (_bVarA = a(iArr, i, i2)) != null) {
                    return _bVarA;
                }
                iArr[0] = iArr[2];
                iArr[1] = 1;
                iArr[2] = 0;
                i4 = 1;
            }
            i2++;
        }
        return null;
    }

    private com.huawei.hms.scankit.p._b a(int[] iArr, int i, int i2) {
        int i3 = iArr[0] + iArr[1] + iArr[2];
        float fA = a(iArr, i2);
        float fA2 = a(i, (int) fA, iArr[1] * 3, i3);
        if (java.lang.Float.isNaN(fA2)) {
            return null;
        }
        float f2 = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
        for (com.huawei.hms.scankit.p._b _bVar : this.b) {
            if (_bVar.a(f2, fA2, fA)) {
                return _bVar.b(fA2, fA, f2);
            }
        }
        com.huawei.hms.scankit.p._b _bVar2 = new com.huawei.hms.scankit.p._b(fA, fA2, f2);
        this.b.add(_bVar2);
        com.huawei.hms.scankit.aiscan.common.A a = this.i;
        if (a == null) {
            return null;
        }
        a.a(_bVar2);
        return null;
    }

    private boolean a(int[] iArr) {
        float f2 = this.f674g;
        float f3 = (3.0f * f2) / 4.0f;
        for (int i = 0; i < 3; i++) {
            if (java.lang.Math.abs(f2 - iArr[i]) >= f3) {
                return false;
            }
        }
        return true;
    }

    public com.huawei.hms.scankit.p._b a() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p._b _bVarA;
        int i = this.f670c;
        int i2 = this.f673f;
        int i3 = this.f672e + i;
        int i4 = (i2 / 2) + this.f671d;
        int[] iArr = new int[3];
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = ((i5 & 1) == 0 ? (i5 + 1) / 2 : -((i5 + 1) / 2)) + i4;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i7 = i;
            while (i7 < i3 && !this.a.b(i7, i6)) {
                i7++;
            }
            com.huawei.hms.scankit.p._b _bVarA2 = a(i6, i7, i3, iArr);
            if (_bVarA2 != null) {
                return _bVarA2;
            }
            if (a(iArr) && (_bVarA = a(iArr, i6, i3)) != null) {
                return _bVarA;
            }
        }
        if (this.b.isEmpty()) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        return this.b.get(0);
    }
}
