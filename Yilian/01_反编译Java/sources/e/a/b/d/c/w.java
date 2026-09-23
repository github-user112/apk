package e.a.b.d.c;

/* loaded from: classes.dex */
public final class w extends e.a.b.d.c.x {

    /* renamed from: c, reason: collision with root package name */
    public static final java.util.HashMap<e.a.b.d.d.c, e.a.b.d.c.w> f2514c = new java.util.HashMap<>(100);

    /* renamed from: d, reason: collision with root package name */
    public static final e.a.b.d.c.w f2515d = g(e.a.b.d.d.c.s);
    public final e.a.b.d.d.c a;
    public e.a.b.d.c.v b;

    static {
        g(e.a.b.d.d.c.v);
        g(e.a.b.d.d.c.w);
        g(e.a.b.d.d.c.x);
        g(e.a.b.d.d.c.y);
        g(e.a.b.d.d.c.z);
        g(e.a.b.d.d.c.B);
        g(e.a.b.d.d.c.A);
        g(e.a.b.d.d.c.C);
        g(e.a.b.d.d.c.D);
        g(e.a.b.d.d.c.F);
        g(e.a.b.d.d.c.G);
        g(e.a.b.d.d.c.H);
        g(e.a.b.d.d.c.I);
        g(e.a.b.d.d.c.J);
        g(e.a.b.d.d.c.L);
        g(e.a.b.d.d.c.K);
        g(e.a.b.d.d.c.N);
    }

    public w(e.a.b.d.d.c cVar) {
        if (cVar == null) {
            throw new java.lang.NullPointerException("type == null");
        }
        if (cVar == e.a.b.d.d.c.p) {
            throw new java.lang.UnsupportedOperationException("KNOWN_NULL is not representable");
        }
        this.a = cVar;
        this.b = null;
    }

    public static e.a.b.d.c.w g(e.a.b.d.d.c cVar) {
        e.a.b.d.c.w wVar;
        synchronized (f2514c) {
            wVar = f2514c.get(cVar);
            if (wVar == null) {
                wVar = new e.a.b.d.c.w(cVar);
                f2514c.put(cVar, wVar);
            }
        }
        return wVar;
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return this.a.a();
    }

    @Override // e.a.b.d.c.a
    public int d(e.a.b.d.c.a aVar) {
        return this.a.a.compareTo(((e.a.b.d.c.w) aVar).a.a);
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return com.umeng.analytics.pro.c.y;
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof e.a.b.d.c.w) && this.a == ((e.a.b.d.c.w) obj).a;
    }

    public e.a.b.d.c.v f() {
        if (this.b == null) {
            this.b = new e.a.b.d.c.v(this.a.a);
        }
        return this.b;
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return e.a.b.d.d.c.r;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("type{");
        sbO.append(a());
        sbO.append('}');
        return sbO.toString();
    }
}
