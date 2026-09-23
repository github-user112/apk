package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class _d {
    public final com.huawei.hms.scankit.p.ae[] a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f666c;

    /* renamed from: d, reason: collision with root package name */
    public final int f667d;

    public _d(int i, int i2) {
        com.huawei.hms.scankit.p.ae[] aeVarArr = new com.huawei.hms.scankit.p.ae[i];
        this.a = aeVarArr;
        int length = aeVarArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.a[i3] = new com.huawei.hms.scankit.p.ae(((i2 + 4) * 17) + 1);
        }
        this.f667d = i2 * 17;
        this.f666c = i;
        this.b = -1;
    }

    public com.huawei.hms.scankit.p.ae a() {
        try {
            if (this.b < 0 || this.b >= this.a.length) {
                throw new java.lang.ArrayIndexOutOfBoundsException();
            }
            return this.a[this.b];
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            throw e2;
        }
    }

    public byte[][] a(int i, int i2) {
        int i3 = this.f666c * i2;
        byte[][] bArr = (byte[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) byte.class, i3, this.f667d * i);
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[(i3 - i4) - 1] = this.a[i4 / i2].a(i);
        }
        return bArr;
    }

    public void b() {
        this.b++;
    }
}
