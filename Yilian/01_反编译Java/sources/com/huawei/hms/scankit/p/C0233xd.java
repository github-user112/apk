package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.xd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0233xd {
    public static final com.huawei.hms.scankit.p.C0233xd a = new com.huawei.hms.scankit.p.C0233xd(com.huawei.hms.scankit.p.AbstractC0238yd.a, 0, 0, 0);
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final com.huawei.hms.scankit.p.AbstractC0238yd f865c;

    /* renamed from: d, reason: collision with root package name */
    public final int f866d;

    /* renamed from: e, reason: collision with root package name */
    public final int f867e;

    public C0233xd(com.huawei.hms.scankit.p.AbstractC0238yd abstractC0238yd, int i, int i2, int i3) {
        this.f865c = abstractC0238yd;
        this.b = i;
        this.f866d = i2;
        this.f867e = i3;
    }

    public int a() {
        return this.f866d;
    }

    public com.huawei.hms.scankit.p.C0117ab a(byte[] bArr) {
        java.util.LinkedList linkedList = new java.util.LinkedList();
        for (com.huawei.hms.scankit.p.AbstractC0238yd abstractC0238ydA = b(bArr.length).f865c; abstractC0238ydA != null; abstractC0238ydA = abstractC0238ydA.a()) {
            linkedList.addFirst(abstractC0238ydA);
        }
        com.huawei.hms.scankit.p.C0117ab c0117ab = new com.huawei.hms.scankit.p.C0117ab();
        java.util.Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((com.huawei.hms.scankit.p.AbstractC0238yd) it.next()).a(c0117ab, bArr);
        }
        return c0117ab;
    }

    public com.huawei.hms.scankit.p.C0233xd a(int i) {
        com.huawei.hms.scankit.p.AbstractC0238yd abstractC0238ydA = this.f865c;
        int i2 = this.b;
        int i3 = this.f867e;
        if (i2 == 4 || i2 == 2) {
            int i4 = com.huawei.hms.scankit.p.C0223vd.b[i2][0];
            int i5 = 65535 & i4;
            int i6 = i4 >> 16;
            abstractC0238ydA = abstractC0238ydA.a(i5, i6);
            i3 += i6;
            i2 = 0;
        }
        int i7 = this.f866d;
        com.huawei.hms.scankit.p.C0233xd c0233xd = new com.huawei.hms.scankit.p.C0233xd(abstractC0238ydA, i2, this.f866d + 1, i3 + ((i7 == 0 || i7 == 31) ? 18 : i7 == 62 ? 9 : 8));
        return c0233xd.f866d == 2078 ? c0233xd.b(i + 1) : c0233xd;
    }

    public com.huawei.hms.scankit.p.C0233xd a(int i, int i2) {
        int i3 = this.f867e;
        com.huawei.hms.scankit.p.AbstractC0238yd abstractC0238ydA = this.f865c;
        int i4 = this.b;
        if (i != i4) {
            int i5 = com.huawei.hms.scankit.p.C0223vd.b[i4][i];
            int i6 = 65535 & i5;
            int i7 = i5 >> 16;
            abstractC0238ydA = abstractC0238ydA.a(i6, i7);
            i3 += i7;
        }
        int i8 = i == 2 ? 4 : 5;
        return new com.huawei.hms.scankit.p.C0233xd(abstractC0238ydA.a(i2, i8), i, 0, i3 + i8);
    }

    public boolean a(com.huawei.hms.scankit.p.C0233xd c0233xd) {
        int i;
        int i2 = this.f867e + (com.huawei.hms.scankit.p.C0223vd.b[this.b][c0233xd.b] >> 16);
        int i3 = c0233xd.f866d;
        if (i3 > 0 && ((i = this.f866d) == 0 || i > i3)) {
            i2 += 10;
        }
        return i2 <= c0233xd.f867e;
    }

    public int b() {
        return this.f867e;
    }

    public com.huawei.hms.scankit.p.C0233xd b(int i) {
        int i2 = this.f866d;
        return i2 == 0 ? this : new com.huawei.hms.scankit.p.C0233xd(this.f865c.b(i - i2, i2), this.b, 0, this.f867e);
    }

    public com.huawei.hms.scankit.p.C0233xd b(int i, int i2) {
        com.huawei.hms.scankit.p.AbstractC0238yd abstractC0238ydA = this.f865c;
        int i3 = this.b == 2 ? 4 : 5;
        int i4 = this.b;
        if (i4 >= 0) {
            int[][] iArr = com.huawei.hms.scankit.p.C0223vd.f842d;
            if (i4 < iArr.length && i > 0 && i < iArr[i4].length) {
                abstractC0238ydA = abstractC0238ydA.a(iArr[i4][i], i3);
            }
        }
        return new com.huawei.hms.scankit.p.C0233xd(abstractC0238ydA.a(i2, 5), this.b, 0, this.f867e + i3 + 5);
    }

    public int c() {
        return this.b;
    }

    public java.lang.String toString() {
        try {
            if (com.huawei.hms.scankit.util.b.a(com.huawei.hms.scankit.p.C0223vd.a, this.b)) {
                return java.lang.String.format(java.util.Locale.ENGLISH, "%s bits=%d bytes=%d", com.huawei.hms.scankit.p.C0223vd.a[this.b], java.lang.Integer.valueOf(this.f867e), java.lang.Integer.valueOf(this.f866d));
            }
            throw new java.lang.ArrayIndexOutOfBoundsException();
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            throw e2;
        }
    }
}
