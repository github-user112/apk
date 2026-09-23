package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Sb {
    public static final com.huawei.hms.scankit.p.Sb a = new com.huawei.hms.scankit.p.Sb(929, 3);
    public final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f626c;

    /* renamed from: d, reason: collision with root package name */
    public final com.huawei.hms.scankit.p.Tb f627d;

    /* renamed from: e, reason: collision with root package name */
    public final com.huawei.hms.scankit.p.Tb f628e;

    /* renamed from: f, reason: collision with root package name */
    public final int f629f;

    public Sb(int i, int i2) {
        this.f629f = i;
        this.b = new int[i];
        this.f626c = new int[i];
        int i3 = 1;
        for (int i4 = 0; i4 < i; i4++) {
            this.b[i4] = i3;
            i3 = (i3 * i2) % i;
        }
        for (int i5 = 0; i5 < i - 1; i5++) {
            this.f626c[this.b[i5]] = i5;
        }
        this.f627d = new com.huawei.hms.scankit.p.Tb(this, new int[]{0});
        this.f628e = new com.huawei.hms.scankit.p.Tb(this, new int[]{1});
    }

    public int a(int i) {
        return this.b[i];
    }

    public int a(int i, int i2) {
        return (i + i2) % this.f629f;
    }

    public com.huawei.hms.scankit.p.Tb a() {
        return this.f628e;
    }

    public int b() {
        return this.f629f;
    }

    public int b(int i) {
        if (i != 0) {
            return this.b[(this.f629f - this.f626c[i]) - 1];
        }
        throw new java.lang.ArithmeticException();
    }

    public com.huawei.hms.scankit.p.Tb b(int i, int i2) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.f627d;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new com.huawei.hms.scankit.p.Tb(this, iArr);
    }

    public int c(int i) {
        if (i != 0) {
            return this.f626c[i];
        }
        throw new java.lang.IllegalArgumentException();
    }

    public int c(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return 0;
        }
        int[] iArr = this.b;
        int[] iArr2 = this.f626c;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f629f - 1)];
    }

    public com.huawei.hms.scankit.p.Tb c() {
        return this.f627d;
    }

    public int d(int i, int i2) {
        int i3 = this.f629f;
        return ((i + i3) - i2) % i3;
    }
}
