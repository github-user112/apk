package e.a.b.b.c;

/* loaded from: classes.dex */
public final class k {
    public final e.a.b.b.b.t a;
    public final e.a.b.b.b.o b;

    /* renamed from: d, reason: collision with root package name */
    public final e.a.b.b.c.m f2428d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2429e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2430f;

    /* renamed from: g, reason: collision with root package name */
    public final e.a.b.d.d.a f2431g;
    public final boolean h;
    public e.a.b.f.a k;
    public java.io.PrintWriter l;
    public java.lang.String m;
    public boolean n;
    public final e.a.b.b.b.o.b[] o;
    public int i = 0;
    public int j = 1;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.f.c f2427c = new e.a.b.f.c();

    public k(e.a.b.b.b.t tVar, e.a.b.b.b.o oVar, e.a.b.b.c.m mVar, int i, int i2, boolean z, e.a.b.d.c.s sVar) {
        this.a = tVar;
        this.b = oVar;
        this.f2428d = mVar;
        this.f2431g = sVar.f2509c;
        this.h = z;
        this.f2429e = i;
        this.f2430f = i2;
        this.o = new e.a.b.b.b.o.b[i2];
    }

    public static int b(int i, int i2) {
        if (i < -4 || i > 10) {
            throw new java.lang.RuntimeException("Parameter out of range");
        }
        return (i2 * 15) + (i - (-4)) + 10;
    }

    public final void a(int i, java.lang.String str) {
        if (this.m != null) {
            str = e.a.c.a.a.j(new java.lang.StringBuilder(), this.m, str);
        }
        e.a.b.f.a aVar = this.k;
        if (aVar != null) {
            if (!this.n) {
                i = 0;
            }
            ((e.a.b.f.c) aVar).b(i, str);
        }
        java.io.PrintWriter printWriter = this.l;
        if (printWriter != null) {
            printWriter.println(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0233, code lost:
    
        r0 = r15.f2427c.f2530c;
        i(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x023a, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01ff, code lost:
    
        r0 = r15.f2427c.f2530c;
        i(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0206, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x020f, code lost:
    
        r4.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0212, code lost:
    
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] c() {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a.b.b.c.k.c():byte[]");
    }

    public final void d(int i) {
        e.a.b.f.c cVar = this.f2427c;
        int i2 = cVar.f2530c;
        cVar.j(2);
        this.f2427c.m(i);
        this.j += i;
        if (this.k == null && this.l == null) {
            return;
        }
        a(this.f2427c.f2530c - i2, java.lang.String.format("line = %d", java.lang.Integer.valueOf(this.j)));
    }

    public final void e(int i) {
        e.a.b.f.c cVar = this.f2427c;
        int i2 = cVar.f2530c;
        cVar.j(1);
        this.f2427c.n(i);
        this.i += i;
        if (this.k == null && this.l == null) {
            return;
        }
        a(this.f2427c.f2530c - i2, java.lang.String.format("%04x: advance pc", java.lang.Integer.valueOf(this.i)));
    }

    public final void f(e.a.b.b.b.t.a aVar) {
        int i = aVar.b.f2506c;
        int i2 = aVar.a;
        int i3 = i - this.j;
        int i4 = i2 - this.i;
        if (i4 < 0) {
            throw new java.lang.RuntimeException("Position entries must be in ascending address order");
        }
        if (i3 < -4 || i3 > 10) {
            d(i3);
            i3 = 0;
        }
        int iB = b(i3, i4);
        if ((iB & (-256)) > 0) {
            e(i4);
            iB = b(i3, 0);
            if ((iB & (-256)) > 0) {
                d(i3);
                iB = b(0, 0);
                i4 = 0;
                i3 = 0;
            } else {
                i4 = 0;
            }
        }
        this.f2427c.j(iB);
        this.j += i3;
        this.i += i4;
        if (this.k == null && this.l == null) {
            return;
        }
        a(1, java.lang.String.format("%04x: line %d", java.lang.Integer.valueOf(this.i), java.lang.Integer.valueOf(this.j)));
    }

    public final void g(e.a.b.d.c.v vVar) {
        this.f2427c.n(0);
    }

    public final void h(int i) {
        if (i < 0) {
            throw new java.lang.RuntimeException(e.a.c.a.a.K("Signed value where unsigned required: ", i));
        }
        this.f2427c.n(i);
    }

    public final java.lang.String i(e.a.b.b.b.o.b bVar) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("v");
        sbO.append(bVar.f2371c.a);
        sbO.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        bVar.b();
        throw null;
    }
}
