package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class je {
    public final byte[][] a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f744c;

    public je(int i, int i2) {
        this.a = (byte[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) byte.class, i2, i);
        this.b = i;
        this.f744c = i2;
    }

    public byte a(int i, int i2) {
        try {
            if (com.huawei.hms.scankit.util.b.a(this.a, i2) && com.huawei.hms.scankit.util.b.a(this.a[i2], i)) {
                return this.a[i2][i];
            }
            throw new java.lang.ArrayIndexOutOfBoundsException();
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            throw e2;
        }
    }

    public void a(byte b) {
        for (byte[] bArr : this.a) {
            java.util.Arrays.fill(bArr, b);
        }
    }

    public void a(int i, int i2, int i3) {
        try {
            if (!com.huawei.hms.scankit.util.b.a(this.a, i2) || !com.huawei.hms.scankit.util.b.a(this.a[i2], i)) {
                throw new java.lang.ArrayIndexOutOfBoundsException();
            }
            this.a[i2][i] = (byte) i3;
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            throw e2;
        }
    }

    public void a(int i, int i2, boolean z) {
        try {
            if (!com.huawei.hms.scankit.util.b.a(this.a, i2) || !com.huawei.hms.scankit.util.b.a(this.a[i2], i)) {
                throw new java.lang.ArrayIndexOutOfBoundsException();
            }
            this.a[i2][i] = z ? (byte) 1 : (byte) 0;
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            throw e2;
        }
    }

    public byte[][] a() {
        return this.a;
    }

    public int b() {
        return this.f744c;
    }

    public int c() {
        return this.b;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder((this.b * 2 * this.f744c) + 2);
        for (int i = 0; i < this.f744c; i++) {
            byte[] bArr = this.a[i];
            for (int i2 = 0; i2 < this.b; i2++) {
                byte b = bArr[i2];
                sb.append(b != 0 ? b != 1 ? "  " : " 1" : " 0");
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
