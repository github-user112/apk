package e.a.b.b.c;

/* loaded from: classes.dex */
public abstract class h0 extends e.a.b.b.c.y implements java.lang.Comparable<e.a.b.b.c.h0> {
    public final int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public e.a.b.b.c.l0 f2423c;

    /* renamed from: d, reason: collision with root package name */
    public int f2424d;

    public h0(int i, int i2) {
        if (i <= 0 || ((i - 1) & i) != 0) {
            throw new java.lang.IllegalArgumentException("invalid alignment");
        }
        if (i2 < -1) {
            throw new java.lang.IllegalArgumentException("writeSize < -1");
        }
        this.a = i;
        this.b = i2;
        this.f2423c = null;
        this.f2424d = -1;
    }

    public static int h(e.a.b.b.c.h0 h0Var) {
        if (h0Var == null) {
            return 0;
        }
        return h0Var.g();
    }

    @Override // e.a.b.b.c.y
    public final int c() {
        int i = this.b;
        if (i >= 0) {
            return i;
        }
        throw new java.lang.UnsupportedOperationException("writeSize is unknown");
    }

    @Override // e.a.b.b.c.y
    public final void d(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        cVar.a(this.a);
        try {
            if (this.b < 0) {
                throw new java.lang.UnsupportedOperationException("writeSize is unknown");
            }
            int iG = g();
            if (cVar.f2530c == iG) {
                m(mVar, cVar);
                return;
            }
            throw new e.a.a.c.b("expected cursor " + iG + "; actual value: " + cVar.f2530c, null);
        } catch (java.lang.RuntimeException e2) {
            throw e.a.a.c.b.b(e2, "...while writing " + this);
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final int compareTo(e.a.b.b.c.h0 h0Var) {
        if (this == h0Var) {
            return 0;
        }
        e.a.b.b.c.z zVarB = b();
        e.a.b.b.c.z zVarB2 = h0Var.b();
        return zVarB != zVarB2 ? zVarB.compareTo(zVarB2) : f(h0Var);
    }

    public final boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        e.a.b.b.c.h0 h0Var = (e.a.b.b.c.h0) obj;
        return b() == h0Var.b() && f(h0Var) == 0;
    }

    public int f(e.a.b.b.c.h0 h0Var) {
        throw new java.lang.UnsupportedOperationException("unsupported");
    }

    public final int g() {
        int i = this.f2424d;
        if (i >= 0) {
            return this.f2423c.b(i);
        }
        throw new java.lang.RuntimeException("offset not yet known");
    }

    public final java.lang.String i() {
        return '[' + java.lang.Integer.toHexString(g()) + ']';
    }

    public final int j(e.a.b.b.c.l0 l0Var, int i) {
        if (l0Var == null) {
            throw new java.lang.NullPointerException("addedTo == null");
        }
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("offset < 0");
        }
        if (this.f2423c != null) {
            throw new java.lang.RuntimeException("already written");
        }
        int i2 = this.a - 1;
        int i3 = (i + i2) & (i2 ^ (-1));
        this.f2423c = l0Var;
        this.f2424d = i3;
        k(l0Var, i3);
        return i3;
    }

    public void k(e.a.b.b.c.l0 l0Var, int i) {
    }

    public final void l(int i) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("writeSize < 0");
        }
        if (this.b >= 0) {
            throw new java.lang.UnsupportedOperationException("writeSize already set");
        }
        this.b = i;
    }

    public abstract void m(e.a.b.b.c.m mVar, e.a.b.f.a aVar);
}
