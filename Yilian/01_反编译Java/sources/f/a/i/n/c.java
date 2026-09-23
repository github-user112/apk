package f.a.i.n;

/* loaded from: classes.dex */
public class c {
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[][] f2962c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[][] f2963d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f2964e = new int[4];

    public class b {
        public int a;
        public volatile int b;

        /* renamed from: c, reason: collision with root package name */
        public int f2965c;

        /* renamed from: d, reason: collision with root package name */
        public byte[] f2966d;

        public b(int i, f.a.i.n.c.a aVar) {
            this.b = i;
        }

        public byte[] a() {
            return this.b >= 0 ? this.b < 2 ? f.a.i.n.c.this.f2963d[this.b] : f.a.i.n.c.this.f2962c[this.b - 2] : this.f2966d;
        }

        public void b() {
            if (this.b >= 0) {
                synchronized (f.a.i.n.c.this.f2964e) {
                    f.a.i.n.c.this.f2964e[this.b] = 0;
                    this.b = -1;
                }
            }
        }
    }

    public c(int i) {
        int i2 = i / 2;
        this.a = i2;
        this.b = i / 32;
        this.f2962c = (byte[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) byte.class, 2, i2);
        this.f2963d = (byte[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) byte.class, 2, this.b);
    }

    public f.a.i.n.c.b a(byte[] bArr, int i, int i2, int i3) {
        if (i2 <= this.b) {
            for (int i4 = 0; i4 < 2; i4++) {
                int[] iArr = this.f2964e;
                if (iArr[i4] == 0) {
                    synchronized (iArr) {
                        if (this.f2964e[i4] != 1) {
                            this.f2964e[i4] = 1;
                            java.lang.System.arraycopy(bArr, i, this.f2963d[i4], 0, i2);
                            f.a.i.n.c.b bVar = new f.a.i.n.c.b(i4, null);
                            bVar.a = i3;
                            bVar.f2965c = i2;
                            return bVar;
                        }
                    }
                }
            }
        }
        if (i2 <= this.a) {
            for (int i5 = 0; i5 < 2; i5++) {
                int[] iArr2 = this.f2964e;
                int i6 = i5 + 2;
                if (iArr2[i6] == 0) {
                    synchronized (iArr2) {
                        if (this.f2964e[i6] != 1) {
                            this.f2964e[i6] = 1;
                            java.lang.System.arraycopy(bArr, i, this.f2962c[i5], 0, i2);
                            f.a.i.n.c.b bVar2 = new f.a.i.n.c.b(i6, null);
                            bVar2.a = i3;
                            bVar2.f2965c = i2;
                            return bVar2;
                        }
                    }
                }
            }
        }
        try {
            byte[] bArr2 = new byte[i2];
            java.lang.System.arraycopy(bArr, i, bArr2, 0, i2);
            f.a.i.n.c.b bVar3 = new f.a.i.n.c.b(-1, null);
            bVar3.a = i3;
            bVar3.f2965c = i2;
            bVar3.f2966d = bArr2;
            return bVar3;
        } catch (java.lang.Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
