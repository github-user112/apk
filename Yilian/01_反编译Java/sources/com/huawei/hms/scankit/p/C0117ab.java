package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ab, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0117ab implements java.lang.Cloneable {
    public int[] a;
    public int[] b;

    /* renamed from: c, reason: collision with root package name */
    public int f669c;

    public C0117ab() {
        this.f669c = 0;
        this.a = new int[1];
    }

    public C0117ab(int i) {
        this.f669c = i;
        this.a = h(i);
    }

    public C0117ab(int[] iArr, int i) {
        this.a = iArr;
        this.f669c = i;
    }

    private void f(int i) {
        if (i > this.a.length * 32) {
            int[] iArrH = h(i);
            int[] iArr = this.a;
            java.lang.System.arraycopy(iArr, 0, iArrH, 0, iArr.length);
            this.a = iArrH;
        }
    }

    private int g(int i) {
        int i2 = 0;
        while (i > 0) {
            i &= i - 1;
            i2++;
        }
        return i2;
    }

    public static int[] h(int i) {
        return new int[(i + 31) / 32];
    }

    public void a() {
        int length = this.a.length;
        for (int i = 0; i < length; i++) {
            this.a[i] = 0;
        }
    }

    public void a(int i, int i2) throws java.lang.Exception {
        if (i2 < 0 || i2 > 32) {
            try {
                throw new java.lang.IllegalArgumentException("Num bits must be between 0 and 32");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        f(this.f669c + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            a(z);
            i2--;
        }
    }

    public void a(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (a(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    public void a(com.huawei.hms.scankit.p.C0117ab c0117ab) {
        int i = c0117ab.f669c;
        f(this.f669c + i);
        for (int i2 = 0; i2 < i; i2++) {
            a(c0117ab.a(i2));
        }
    }

    public void a(boolean z) {
        f(this.f669c + 1);
        if (z) {
            int[] iArr = this.a;
            int i = this.f669c;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.f669c++;
    }

    public boolean a(int i) {
        return ((1 << (i & 31)) & this.a[i / 32]) != 0;
    }

    public boolean a(int i, int i2, boolean z, boolean z2) throws java.lang.Exception {
        if (i2 < i || i < 0 || i2 > this.f669c) {
            try {
                throw new java.lang.IllegalArgumentException();
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        if (i2 == i) {
            return true;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        int iG = 0;
        while (i6 <= i5) {
            int i7 = (2 << (i6 < i5 ? 31 : i3 & 31)) - (1 << (i6 > i4 ? 0 : i & 31));
            if (!z2 && (iG = iG + g(this.a[i6] & i7)) > (i3 - i) / 10) {
                return false;
            }
            if (z2) {
                int i8 = this.a[i6] & i7;
                if (!z) {
                    i7 = 0;
                }
                if (i8 != i7) {
                    return false;
                }
            }
            i6++;
        }
        return true;
    }

    public int b(int i) {
        int i2 = this.f669c;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        if (!com.huawei.hms.scankit.util.b.a(this.a, i3)) {
            return -1;
        }
        int i4 = (-(1 << (i & 31))) & this.a[i3];
        while (i4 == 0) {
            i3++;
            int[] iArr = this.a;
            if (i3 == iArr.length) {
                return this.f669c;
            }
            if (com.huawei.hms.scankit.util.b.a(iArr, i3)) {
                i4 = this.a[i3];
            }
        }
        int iNumberOfTrailingZeros = java.lang.Integer.numberOfTrailingZeros(i4) + (i3 * 32);
        int i5 = this.f669c;
        return iNumberOfTrailingZeros > i5 ? i5 : iNumberOfTrailingZeros;
    }

    public void b() {
        this.b = this.a;
    }

    public void b(int i, int i2) {
        this.a[i / 32] = i2;
    }

    public void b(com.huawei.hms.scankit.p.C0117ab c0117ab) throws java.lang.Exception {
        if (this.f669c != c0117ab.f669c) {
            try {
                throw new java.lang.IllegalArgumentException("Sizes don't match");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        int i = 0;
        while (true) {
            int[] iArr = this.a;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = iArr[i] ^ c0117ab.a[i];
            i++;
        }
    }

    public int c(int i) {
        int i2 = this.f669c;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        if (!com.huawei.hms.scankit.util.b.a(this.a, i3)) {
            return -1;
        }
        int i4 = (-(1 << (i & 31))) & (this.a[i3] ^ (-1));
        while (i4 == 0) {
            i3++;
            int[] iArr = this.a;
            if (i3 == iArr.length) {
                return this.f669c;
            }
            if (com.huawei.hms.scankit.util.b.a(iArr, i3)) {
                i4 = this.a[i3] ^ (-1);
            }
        }
        int iNumberOfTrailingZeros = java.lang.Integer.numberOfTrailingZeros(i4) + (i3 * 32);
        int i5 = this.f669c;
        return iNumberOfTrailingZeros > i5 ? i5 : iNumberOfTrailingZeros;
    }

    public void c(int i, int i2) {
        if (i2 < i || i < 0 || i2 > this.f669c) {
            try {
                throw new java.lang.IllegalArgumentException();
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        if (i2 == i) {
            return;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = 31;
            int i8 = i6 > i4 ? 0 : i & 31;
            if (i6 >= i5) {
                i7 = 31 & i3;
            }
            int i9 = (2 << i7) - (1 << i8);
            int[] iArr = this.a;
            iArr[i6] = i9 | iArr[i6];
            i6++;
        }
    }

    public int[] c() {
        return this.a;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public com.huawei.hms.scankit.p.C0117ab m4clone() {
        return new com.huawei.hms.scankit.p.C0117ab((int[]) this.a.clone(), this.f669c);
    }

    public int d() {
        return this.f669c;
    }

    public void d(int i) {
        int[] iArr = this.a;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    public int e() {
        return (this.f669c + 7) / 8;
    }

    public void e(int i) {
        int[] iArr = this.a;
        int i2 = i / 32;
        iArr[i2] = iArr[i2] - (1 << (i & 31));
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.huawei.hms.scankit.p.C0117ab)) {
            return false;
        }
        com.huawei.hms.scankit.p.C0117ab c0117ab = (com.huawei.hms.scankit.p.C0117ab) obj;
        return this.f669c == c0117ab.f669c && java.util.Arrays.equals(this.a, c0117ab.a);
    }

    public void f() {
        this.a = this.b;
    }

    public void g() {
        int[] iArr = new int[this.a.length];
        int i = (this.f669c - 1) / 32;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = this.a[i3];
            long j2 = ((j & 1431655765) << 1) | ((j >> 1) & 1431655765);
            long j3 = ((j2 & 858993459) << 2) | ((j2 >> 2) & 858993459);
            long j4 = ((j3 & 252645135) << 4) | ((j3 >> 4) & 252645135);
            long j5 = ((j4 & 16711935) << 8) | ((j4 >> 8) & 16711935);
            iArr[i - i3] = (int) (((j5 & 65535) << 16) | ((j5 >> 16) & 65535));
        }
        int i4 = this.f669c;
        int i5 = i2 * 32;
        if (i4 != i5) {
            int i6 = i5 - i4;
            int i7 = iArr[0] >>> i6;
            for (int i8 = 1; i8 < i2; i8++) {
                int i9 = iArr[i8];
                iArr[i8 - 1] = i7 | (i9 << (32 - i6));
                i7 = i9 >>> i6;
            }
            iArr[i2 - 1] = i7;
        }
        this.a = iArr;
    }

    public void h() {
        for (int i = 0; i < this.f669c - 1; i++) {
            if (!a(i) && a(i + 1)) {
                d(i);
            }
        }
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(this.a) + (this.f669c * 31);
    }

    public void i() {
        for (int i = 0; i < this.f669c - 1; i++) {
            if (a(i) && !a(i + 1)) {
                e(i);
            }
        }
    }

    public java.lang.String toString() {
        int i = this.f669c;
        java.lang.StringBuilder sb = new java.lang.StringBuilder((i / 8) + i + 1);
        for (int i2 = 0; i2 < this.f669c; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            }
            sb.append(a(i2) ? 'X' : '.');
        }
        return sb.toString();
    }
}
