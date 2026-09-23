package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.nb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0182nb {
    public static final int[][] a = {new int[]{1, 10, 10, 8, 8, 5, 1, 3}, new int[]{2, 12, 12, 10, 10, 7, 1, 5}, new int[]{3, 14, 14, 12, 12, 10, 1, 8}, new int[]{4, 16, 16, 14, 14, 12, 1, 12}, new int[]{5, 18, 18, 16, 16, 14, 1, 18}, new int[]{6, 20, 20, 18, 18, 18, 1, 22}, new int[]{7, 22, 22, 20, 20, 20, 1, 30}, new int[]{8, 24, 24, 22, 22, 24, 1, 36}, new int[]{9, 26, 26, 24, 24, 28, 1, 44}, new int[]{10, 32, 32, 14, 14, 36, 1, 62}, new int[]{11, 36, 36, 16, 16, 42, 1, 86}, new int[]{12, 40, 40, 18, 18, 48, 1, 114}, new int[]{13, 44, 44, 20, 20, 56, 1, 144}, new int[]{14, 48, 48, 22, 22, 68, 1, 174}, new int[]{15, 52, 52, 24, 24, 42, 2, 102}, new int[]{16, 64, 64, 14, 14, 56, 2, 140}, new int[]{17, 72, 72, 16, 16, 36, 4, 92}, new int[]{18, 80, 80, 18, 18, 48, 4, 114}, new int[]{19, 88, 88, 20, 20, 56, 4, 144}, new int[]{20, 96, 96, 22, 22, 68, 4, 174}, new int[]{21, 104, 104, 24, 24, 56, 6, 136}, new int[]{22, 120, 120, 18, 18, 68, 6, com.tencent.tinker.android.dx.instruction.Opcodes.REM_DOUBLE}, new int[]{23, 132, 132, 20, 20, 62, 8, 163}, new int[]{24, 144, 144, 22, 22, 62, 8, 156, 2, 155}, new int[]{25, 8, 18, 6, 16, 7, 1, 5}, new int[]{26, 8, 32, 6, 14, 11, 1, 10}, new int[]{27, 12, 26, 10, 24, 14, 1, 16}, new int[]{28, 12, 36, 10, 16, 18, 1, 22}, new int[]{29, 16, 36, 14, 16, 24, 1, 32}, new int[]{30, 16, 48, 14, 22, 28, 1, 49}};
    public static final com.huawei.hms.scankit.p.C0182nb[] b = h();

    /* renamed from: c, reason: collision with root package name */
    public final int f765c;

    /* renamed from: d, reason: collision with root package name */
    public final int f766d;

    /* renamed from: e, reason: collision with root package name */
    public final int f767e;

    /* renamed from: f, reason: collision with root package name */
    public final int f768f;

    /* renamed from: g, reason: collision with root package name */
    public final int f769g;
    public final com.huawei.hms.scankit.p.C0182nb.b h;
    public final int i;

    /* renamed from: com.huawei.hms.scankit.p.nb$a */
    public static final class a {
        public final int a;
        public final int b;

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public int a() {
            return this.a;
        }

        public int b() {
            return this.b;
        }
    }

    /* renamed from: com.huawei.hms.scankit.p.nb$b */
    public static final class b {
        public final int a;
        public final com.huawei.hms.scankit.p.C0182nb.a[] b;

        public b(int i, com.huawei.hms.scankit.p.C0182nb.a aVar) {
            this.a = i;
            this.b = new com.huawei.hms.scankit.p.C0182nb.a[]{aVar};
        }

        public b(int i, com.huawei.hms.scankit.p.C0182nb.a aVar, com.huawei.hms.scankit.p.C0182nb.a aVar2) {
            this.a = i;
            this.b = new com.huawei.hms.scankit.p.C0182nb.a[]{aVar, aVar2};
        }

        public com.huawei.hms.scankit.p.C0182nb.a[] a() {
            return this.b;
        }

        public int b() {
            return this.a;
        }
    }

    public C0182nb(int i, int i2, int i3, int i4, int i5, com.huawei.hms.scankit.p.C0182nb.b bVar) {
        this.f765c = i;
        this.f766d = i2;
        this.f767e = i3;
        this.f768f = i4;
        this.f769g = i5;
        this.h = bVar;
        int iB = bVar.b();
        int iB2 = 0;
        for (com.huawei.hms.scankit.p.C0182nb.a aVar : bVar.a()) {
            iB2 += (aVar.b() + iB) * aVar.a();
        }
        this.i = iB2;
    }

    public static com.huawei.hms.scankit.p.C0182nb a(int i, int i2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if ((i & 1) != 0 || (i2 & 1) != 0) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        for (com.huawei.hms.scankit.p.C0182nb c0182nb : b) {
            if (c0182nb.f766d == i && c0182nb.f767e == i2) {
                return c0182nb;
            }
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static com.huawei.hms.scankit.p.C0182nb[] h() {
        com.huawei.hms.scankit.p.C0182nb[] c0182nbArr = new com.huawei.hms.scankit.p.C0182nb[a.length];
        int i = 0;
        while (true) {
            int[][] iArr = a;
            if (i >= iArr.length) {
                return c0182nbArr;
            }
            int[] iArr2 = iArr[i];
            if (i == 23) {
                c0182nbArr[i] = new com.huawei.hms.scankit.p.C0182nb(iArr2[0], iArr2[1], iArr2[2], iArr2[3], iArr2[4], new com.huawei.hms.scankit.p.C0182nb.b(iArr2[5], new com.huawei.hms.scankit.p.C0182nb.a(iArr2[6], iArr2[7]), new com.huawei.hms.scankit.p.C0182nb.a(iArr2[8], iArr2[9])));
            } else {
                c0182nbArr[i] = new com.huawei.hms.scankit.p.C0182nb(iArr2[0], iArr2[1], iArr2[2], iArr2[3], iArr2[4], new com.huawei.hms.scankit.p.C0182nb.b(iArr2[5], new com.huawei.hms.scankit.p.C0182nb.a(iArr2[6], iArr2[7])));
            }
            i++;
        }
    }

    public int a() {
        return this.f769g;
    }

    public int b() {
        return this.f768f;
    }

    public com.huawei.hms.scankit.p.C0182nb.b c() {
        return this.h;
    }

    public int d() {
        return this.f767e;
    }

    public int e() {
        return this.f766d;
    }

    public int f() {
        return this.i;
    }

    public int g() {
        return this.f765c;
    }

    public java.lang.String toString() {
        return java.lang.String.valueOf(this.f765c);
    }
}
