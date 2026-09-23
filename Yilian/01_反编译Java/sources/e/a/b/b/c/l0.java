package e.a.b.b.c;

/* loaded from: classes.dex */
public abstract class l0 {
    public final java.lang.String a;
    public final e.a.b.b.c.m b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2436c;

    /* renamed from: d, reason: collision with root package name */
    public int f2437d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2438e;

    public l0(java.lang.String str, e.a.b.b.c.m mVar, int i) {
        if (mVar == null) {
            throw new java.lang.NullPointerException("file == null");
        }
        if (i <= 0 || ((i - 1) & i) != 0) {
            throw new java.lang.IllegalArgumentException("invalid alignment");
        }
        this.a = str;
        this.b = mVar;
        this.f2436c = i;
        this.f2437d = -1;
        this.f2438e = false;
    }

    public abstract int a(e.a.b.b.c.y yVar);

    public final int b(int i) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("relative < 0");
        }
        int i2 = this.f2437d;
        if (i2 >= 0) {
            return i2 + i;
        }
        throw new java.lang.RuntimeException("fileOffset not yet set");
    }

    public final int c() {
        int i = this.f2437d;
        if (i >= 0) {
            return i;
        }
        throw new java.lang.RuntimeException("fileOffset not set");
    }

    public abstract java.util.Collection<? extends e.a.b.b.c.y> d();

    public final void e() {
        h();
        f();
        this.f2438e = true;
    }

    public abstract void f();

    public final void g() {
        if (!this.f2438e) {
            throw new java.lang.RuntimeException("not prepared");
        }
    }

    public final void h() {
        if (this.f2438e) {
            throw new java.lang.RuntimeException("already prepared");
        }
    }

    public abstract int i();

    public final void j(e.a.b.f.a aVar) {
        g();
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        cVar.a(this.f2436c);
        int i = cVar.f2530c;
        int i2 = this.f2437d;
        if (i2 < 0) {
            this.f2437d = i;
        } else if (i2 != i) {
            throw new java.lang.RuntimeException("alignment mismatch: for " + this + ", at " + i + ", but expected " + this.f2437d);
        }
        if (cVar.d()) {
            if (this.a != null) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("\n");
                sbO.append(this.a);
                sbO.append(":");
                cVar.b(0, sbO.toString());
            } else if (i != 0) {
                cVar.b(0, "\n");
            }
        }
        k(aVar);
    }

    public abstract void k(e.a.b.f.a aVar);
}
