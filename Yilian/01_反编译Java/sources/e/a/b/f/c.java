package e.a.b.f;

/* loaded from: classes.dex */
public final class c implements e.a.b.f.a, e.a.a.c.a {
    public final boolean a;
    public byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public int f2530c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2531d;

    /* renamed from: e, reason: collision with root package name */
    public java.util.ArrayList<e.a.b.f.c.a> f2532e;

    /* renamed from: f, reason: collision with root package name */
    public int f2533f;

    /* renamed from: g, reason: collision with root package name */
    public int f2534g;

    public static class a {
        public final int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public final java.lang.String f2535c;

        public a(int i, int i2, java.lang.String str) {
            this.a = i;
            this.b = i2;
            this.f2535c = str;
        }

        public a(int i, java.lang.String str) {
            this.a = i;
            this.b = Integer.MAX_VALUE;
            this.f2535c = str;
        }
    }

    public c() {
        this(new byte[1000], true);
    }

    public c(byte[] bArr, boolean z) {
        if (bArr == null) {
            throw new java.lang.NullPointerException("data == null");
        }
        this.a = z;
        this.b = bArr;
        this.f2530c = 0;
        this.f2531d = false;
        this.f2532e = null;
        this.f2533f = 0;
        this.f2534g = 0;
    }

    public static void g() {
        throw new java.lang.IndexOutOfBoundsException("attempt to write past the end");
    }

    public void a(int i) {
        int i2 = i - 1;
        if (i < 0 || (i & i2) != 0) {
            throw new java.lang.IllegalArgumentException("bogus alignment");
        }
        int i3 = (this.f2530c + i2) & (i2 ^ (-1));
        if (this.a) {
            f(i3);
        } else if (i3 > this.b.length) {
            g();
            throw null;
        }
        this.f2530c = i3;
    }

    public void b(int i, java.lang.String str) {
        if (this.f2532e == null) {
            return;
        }
        e();
        int size = this.f2532e.size();
        int i2 = size == 0 ? 0 : this.f2532e.get(size - 1).b;
        int i3 = this.f2530c;
        if (i2 <= i3) {
            i2 = i3;
        }
        this.f2532e.add(new e.a.b.f.c.a(i2, i + i2, str));
    }

    public void c(java.lang.String str) {
        if (this.f2532e == null) {
            return;
        }
        e();
        this.f2532e.add(new e.a.b.f.c.a(this.f2530c, str));
    }

    public boolean d() {
        return this.f2532e != null;
    }

    public void e() {
        int size;
        java.util.ArrayList<e.a.b.f.c.a> arrayList = this.f2532e;
        if (arrayList == null || (size = arrayList.size()) == 0) {
            return;
        }
        e.a.b.f.c.a aVar = this.f2532e.get(size - 1);
        int i = this.f2530c;
        if (aVar.b == Integer.MAX_VALUE) {
            aVar.b = i;
        }
    }

    public final void f(int i) {
        byte[] bArr = this.b;
        if (bArr.length < i) {
            byte[] bArr2 = new byte[(i * 2) + 1000];
            java.lang.System.arraycopy(bArr, 0, bArr2, 0, this.f2530c);
            this.b = bArr2;
        }
    }

    public byte[] h() {
        int i = this.f2530c;
        byte[] bArr = new byte[i];
        java.lang.System.arraycopy(this.b, 0, bArr, 0, i);
        return bArr;
    }

    public void i(byte[] bArr) {
        int length = bArr.length;
        int i = this.f2530c;
        int i2 = i + length;
        int i3 = length + 0;
        if ((length | 0 | i2) < 0 || i3 > bArr.length) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("bytes.length ");
            sbO.append(bArr.length);
            sbO.append("; ");
            sbO.append(0);
            sbO.append("..!");
            sbO.append(i2);
            throw new java.lang.IndexOutOfBoundsException(sbO.toString());
        }
        if (this.a) {
            f(i2);
        } else if (i2 > this.b.length) {
            g();
            throw null;
        }
        java.lang.System.arraycopy(bArr, 0, this.b, i, length);
        this.f2530c = i2;
    }

    public void j(int i) {
        int i2 = this.f2530c;
        int i3 = i2 + 1;
        if (this.a) {
            f(i3);
        } else if (i3 > this.b.length) {
            g();
            throw null;
        }
        this.b[i2] = (byte) i;
        this.f2530c = i3;
    }

    public void k(int i) {
        int i2 = this.f2530c;
        int i3 = i2 + 4;
        if (this.a) {
            f(i3);
        } else if (i3 > this.b.length) {
            g();
            throw null;
        }
        byte[] bArr = this.b;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
        this.f2530c = i3;
    }

    public void l(int i) {
        int i2 = this.f2530c;
        int i3 = i2 + 2;
        if (this.a) {
            f(i3);
        } else if (i3 > this.b.length) {
            g();
            throw null;
        }
        byte[] bArr = this.b;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        this.f2530c = i3;
    }

    public int m(int i) {
        if (this.a) {
            f(this.f2530c + 5);
        }
        int i2 = this.f2530c;
        int i3 = i >> 7;
        int i4 = (Integer.MIN_VALUE & i) == 0 ? 0 : -1;
        boolean z = true;
        while (true) {
            int i5 = i3;
            int i6 = i;
            i = i5;
            if (!z) {
                return this.f2530c - i2;
            }
            z = (i == i4 && (i & 1) == ((i6 >> 6) & 1)) ? false : true;
            j((byte) ((i6 & 127) | (z ? 128 : 0)));
            i3 = i >> 7;
        }
    }

    public int n(int i) {
        if (this.a) {
            f(this.f2530c + 5);
        }
        int i2 = this.f2530c;
        while (true) {
            int i3 = i >>> 7;
            int i4 = i & 127;
            if (i3 == 0) {
                j((byte) i4);
                return this.f2530c - i2;
            }
            j((byte) (i4 | 128));
            i = i3;
        }
    }

    public void o(int i) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("count < 0");
        }
        int i2 = this.f2530c + i;
        if (this.a) {
            f(i2);
        } else if (i2 > this.b.length) {
            g();
            throw null;
        }
        this.f2530c = i2;
    }
}
