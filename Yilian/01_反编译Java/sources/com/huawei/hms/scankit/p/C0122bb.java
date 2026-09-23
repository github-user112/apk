package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.bb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0122bb implements java.lang.Cloneable {
    public final int a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f677c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f678d;

    public C0122bb(int i) {
        this(i, i);
    }

    public C0122bb(int i, int i2) throws java.lang.Exception {
        if (i < 1 || i2 < 1) {
            try {
                throw new java.lang.IllegalArgumentException("Both dimensions must be greater than 0");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        this.a = i;
        this.b = i2;
        int i3 = (i + 31) / 32;
        this.f677c = i3;
        this.f678d = new int[i3 * i2];
    }

    public C0122bb(int i, int i2, int i3, int[] iArr) {
        this.a = i;
        this.b = i2;
        this.f677c = i3;
        this.f678d = iArr;
    }

    private java.lang.String a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder((this.a + 1) * this.b);
        for (int i = 0; i < this.b; i++) {
            for (int i2 = 0; i2 < this.a; i2++) {
                sb.append(b(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public com.huawei.hms.scankit.p.C0117ab a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab) {
        if (c0117ab == null || c0117ab.d() < this.a) {
            c0117ab = new com.huawei.hms.scankit.p.C0117ab(this.a);
        } else {
            c0117ab.a();
        }
        int i2 = i * this.f677c;
        for (int i3 = 0; i3 < this.f677c; i3++) {
            c0117ab.b(i3 * 32, this.f678d[i2 + i3]);
        }
        return c0117ab;
    }

    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        return a(str, str2, "\n");
    }

    public void a() {
        int length = this.f678d.length;
        for (int i = 0; i < length; i++) {
            this.f678d[i] = 0;
        }
    }

    public void a(int i, int i2) {
        int i3 = (i / 32) + (i2 * this.f677c);
        if (com.huawei.hms.scankit.util.b.a(this.f678d, i3)) {
            int[] iArr = this.f678d;
            iArr[i3] = (1 << (i & 31)) ^ iArr[i3];
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            try {
                throw new java.lang.IllegalArgumentException("Left and top must be nonnegative");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        if (i4 < 1 || i3 < 1) {
            try {
                throw new java.lang.IllegalArgumentException("Height and width must be at least 1");
            } catch (java.lang.Exception e3) {
                throw e3;
            }
        }
        int i5 = i3 + i;
        int i6 = i4 + i2;
        if (i6 > this.b || i5 > this.a) {
            try {
                throw new java.lang.IllegalArgumentException("The region must fit inside the matrix");
            } catch (java.lang.Exception e4) {
                throw e4;
            }
        }
        while (i2 < i6) {
            int i7 = this.f677c * i2;
            for (int i8 = i; i8 < i5; i8++) {
                int[] iArr = this.f678d;
                int i9 = (i8 / 32) + i7;
                iArr[i9] = iArr[i9] | (1 << (i8 & 31));
            }
            i2++;
        }
    }

    public int b() {
        return this.b;
    }

    public void b(int i, com.huawei.hms.scankit.p.C0117ab c0117ab) {
        int[] iArrC = c0117ab.c();
        int[] iArr = this.f678d;
        int i2 = this.f677c;
        java.lang.System.arraycopy(iArrC, 0, iArr, i * i2, i2);
    }

    public boolean b(int i, int i2) {
        int i3 = (i / 32) + (i2 * this.f677c);
        return com.huawei.hms.scankit.util.b.a(this.f678d, i3) && ((this.f678d[i3] >>> (i & 31)) & 1) != 0;
    }

    public com.huawei.hms.scankit.p.C0122bb c() {
        int[] iArr = new int[this.f678d.length];
        int i = 0;
        while (true) {
            int[] iArr2 = this.f678d;
            if (i >= iArr2.length) {
                return new com.huawei.hms.scankit.p.C0122bb(this.a, this.b, this.f677c, iArr);
            }
            iArr[i] = iArr2[i] ^ (-1);
            i++;
        }
    }

    public void c(int i, int i2) {
        int i3 = (i / 32) + (i2 * this.f677c);
        if (com.huawei.hms.scankit.util.b.a(this.f678d, i3)) {
            int[] iArr = this.f678d;
            iArr[i3] = (1 << (i & 31)) | iArr[i3];
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public com.huawei.hms.scankit.p.C0122bb m5clone() {
        return new com.huawei.hms.scankit.p.C0122bb(this.a, this.b, this.f677c, (int[]) this.f678d.clone());
    }

    public int d() {
        return this.a;
    }

    public void e() {
        int iD = d();
        int iB = b();
        com.huawei.hms.scankit.p.C0117ab c0117ab = new com.huawei.hms.scankit.p.C0117ab(iD);
        com.huawei.hms.scankit.p.C0117ab c0117ab2 = new com.huawei.hms.scankit.p.C0117ab(iD);
        for (int i = 0; i < (iB + 1) / 2; i++) {
            c0117ab = a(i, c0117ab);
            int i2 = (iB - 1) - i;
            c0117ab2 = a(i2, c0117ab2);
            c0117ab.g();
            c0117ab2.g();
            b(i, c0117ab2);
            b(i2, c0117ab);
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.huawei.hms.scankit.p.C0122bb)) {
            return false;
        }
        com.huawei.hms.scankit.p.C0122bb c0122bb = (com.huawei.hms.scankit.p.C0122bb) obj;
        return this.a == c0122bb.a && this.b == c0122bb.b && this.f677c == c0122bb.f677c && java.util.Arrays.equals(this.f678d, c0122bb.f678d);
    }

    public int hashCode() {
        int i = this.a;
        return java.util.Arrays.hashCode(this.f678d) + (((((((i * 31) + i) * 31) + this.b) * 31) + this.f677c) * 31);
    }

    public java.lang.String toString() {
        return a("X ", "  ");
    }
}
