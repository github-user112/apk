package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.cb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0127cb {
    public final byte[] a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f690c;

    public C0127cb(byte[] bArr) {
        this.a = bArr;
    }

    public int a() {
        return ((this.a.length - this.b) * 8) - this.f690c;
    }

    public int a(int i) throws java.lang.Exception {
        if (i < 1 || i > 32 || i > a()) {
            try {
                throw new java.lang.IllegalArgumentException(java.lang.String.valueOf(i));
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        int i2 = this.f690c;
        int i3 = 0;
        if (i2 > 0) {
            int i4 = 8 - i2;
            int i5 = i < i4 ? i : i4;
            int i6 = i4 - i5;
            int i7 = com.huawei.hms.scankit.util.b.a(this.a, this.b) ? (((255 >> (8 - i5)) << i6) & this.a[this.b]) >> i6 : 0;
            i -= i5;
            int i8 = this.f690c + i5;
            this.f690c = i8;
            if (i8 == 8) {
                this.f690c = 0;
                this.b++;
            }
            i3 = i7;
        }
        if (i > 0) {
            while (i >= 8) {
                if (com.huawei.hms.scankit.util.b.a(this.a, this.b)) {
                    i3 = (i3 << 8) | (this.a[this.b] & 255);
                }
                this.b++;
                i -= 8;
            }
            if (i > 0) {
                int i9 = 8 - i;
                int i10 = (255 >> i9) << i9;
                if (com.huawei.hms.scankit.util.b.a(this.a, this.b)) {
                    i3 = ((i10 & this.a[this.b]) >> i9) | (i3 << i);
                }
                this.f690c += i;
            }
        }
        return i3;
    }

    public int b() {
        return this.f690c;
    }

    public int c() {
        return this.b;
    }
}
