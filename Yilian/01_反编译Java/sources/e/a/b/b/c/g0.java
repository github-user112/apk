package e.a.b.b.c;

/* loaded from: classes.dex */
public final class g0 extends e.a.b.b.c.l0 {
    public static final java.util.Comparator<e.a.b.b.c.h0> j = new e.a.b.b.c.g0.a();

    /* renamed from: f, reason: collision with root package name */
    public final java.util.ArrayList<e.a.b.b.c.h0> f2416f;

    /* renamed from: g, reason: collision with root package name */
    public final java.util.HashMap<e.a.b.b.c.h0, e.a.b.b.c.h0> f2417g;
    public final e.a.b.b.c.g0.b h;
    public int i;

    public static class a implements java.util.Comparator<e.a.b.b.c.h0> {
        @Override // java.util.Comparator
        public int compare(e.a.b.b.c.h0 h0Var, e.a.b.b.c.h0 h0Var2) {
            return h0Var.b().compareTo(h0Var2.b());
        }
    }

    public enum b {
        NONE,
        TYPE,
        INSTANCE
    }

    public g0(java.lang.String str, e.a.b.b.c.m mVar, int i, e.a.b.b.c.g0.b bVar) {
        super(str, mVar, i);
        this.f2416f = new java.util.ArrayList<>(100);
        this.f2417g = new java.util.HashMap<>(100);
        this.h = bVar;
        this.i = -1;
    }

    @Override // e.a.b.b.c.l0
    public int a(e.a.b.b.c.y yVar) {
        return ((e.a.b.b.c.h0) yVar).g();
    }

    @Override // e.a.b.b.c.l0
    public java.util.Collection<? extends e.a.b.b.c.y> d() {
        return this.f2416f;
    }

    @Override // e.a.b.b.c.l0
    public void f() {
        e.a.b.b.c.m mVar = this.b;
        int i = 0;
        while (true) {
            int size = this.f2416f.size();
            if (i >= size) {
                return;
            }
            while (i < size) {
                this.f2416f.get(i).a(mVar);
                i++;
            }
        }
    }

    @Override // e.a.b.b.c.l0
    public int i() {
        g();
        return this.i;
    }

    @Override // e.a.b.b.c.l0
    public void k(e.a.b.f.a aVar) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        boolean zD = cVar.d();
        e.a.b.b.c.m mVar = this.b;
        java.util.Iterator<e.a.b.b.c.h0> it = this.f2416f.iterator();
        int iC = 0;
        boolean z = true;
        while (it.hasNext()) {
            e.a.b.b.c.h0 next = it.next();
            if (zD) {
                if (z) {
                    z = false;
                } else {
                    cVar.b(0, "\n");
                }
            }
            int i = next.a - 1;
            int i2 = (i ^ (-1)) & (iC + i);
            if (iC != i2) {
                cVar.o(i2 - iC);
                iC = i2;
            }
            next.d(mVar, cVar);
            iC += next.c();
        }
        if (iC != this.i) {
            throw new java.lang.RuntimeException("output size mismatch");
        }
    }

    public void l(e.a.b.b.c.h0 h0Var) {
        h();
        try {
            if (h0Var.a > this.f2436c) {
                throw new java.lang.IllegalArgumentException("incompatible item alignment");
            }
            this.f2416f.add(h0Var);
        } catch (java.lang.NullPointerException unused) {
            throw new java.lang.NullPointerException("item == null");
        }
    }

    public synchronized <T extends e.a.b.b.c.h0> T m(T t) {
        h();
        T t2 = (T) this.f2417g.get(t);
        if (t2 != null) {
            return t2;
        }
        l(t);
        this.f2417g.put(t, t);
        return t;
    }

    public void n() {
        g();
        int iOrdinal = this.h.ordinal();
        if (iOrdinal == 1) {
            java.util.Collections.sort(this.f2416f, j);
        } else if (iOrdinal == 2) {
            java.util.Collections.sort(this.f2416f);
        }
        int size = this.f2416f.size();
        int iC = 0;
        for (int i = 0; i < size; i++) {
            e.a.b.b.c.h0 h0Var = this.f2416f.get(i);
            try {
                int iJ = h0Var.j(this, iC);
                if (iJ < iC) {
                    throw new java.lang.RuntimeException("bogus place() result for " + h0Var);
                }
                iC = h0Var.c() + iJ;
            } catch (java.lang.RuntimeException e2) {
                throw e.a.a.c.b.b(e2, "...while placing " + h0Var);
            }
        }
        this.i = iC;
    }
}
