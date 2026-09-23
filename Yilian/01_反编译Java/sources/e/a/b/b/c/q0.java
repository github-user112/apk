package e.a.b.b.c;

/* loaded from: classes.dex */
public final class q0 extends e.a.b.b.c.s0 {

    /* renamed from: f, reason: collision with root package name */
    public final java.util.TreeMap<e.a.b.d.d.c, e.a.b.b.c.p0> f2450f;

    public q0(e.a.b.b.c.m mVar) {
        super("type_ids", mVar, 4);
        this.f2450f = new java.util.TreeMap<>();
    }

    @Override // e.a.b.b.c.l0
    public java.util.Collection<? extends e.a.b.b.c.y> d() {
        return this.f2450f.values();
    }

    @Override // e.a.b.b.c.s0
    public void l() {
        java.util.Iterator<? extends e.a.b.b.c.y> it = d().iterator();
        int i = 0;
        while (it.hasNext()) {
            ((e.a.b.b.c.p0) it.next()).g(i);
            i++;
        }
    }

    public int m(e.a.b.d.c.w wVar) {
        if (wVar != null) {
            return n(wVar.a);
        }
        throw new java.lang.NullPointerException("type == null");
    }

    public int n(e.a.b.d.d.c cVar) {
        if (cVar == null) {
            throw new java.lang.NullPointerException("type == null");
        }
        g();
        e.a.b.b.c.p0 p0Var = this.f2450f.get(cVar);
        if (p0Var != null) {
            return p0Var.e();
        }
        throw new java.lang.IllegalArgumentException("not found: " + cVar);
    }

    public synchronized e.a.b.b.c.p0 o(e.a.b.d.c.w wVar) {
        e.a.b.b.c.p0 p0Var;
        if (wVar == null) {
            throw new java.lang.NullPointerException("type == null");
        }
        h();
        e.a.b.d.d.c cVar = wVar.a;
        p0Var = this.f2450f.get(cVar);
        if (p0Var == null) {
            p0Var = new e.a.b.b.c.p0(wVar);
            this.f2450f.put(cVar, p0Var);
        }
        return p0Var;
    }

    public synchronized e.a.b.b.c.p0 p(e.a.b.d.d.c cVar) {
        e.a.b.b.c.p0 p0Var;
        if (cVar == null) {
            throw new java.lang.NullPointerException("type == null");
        }
        h();
        p0Var = this.f2450f.get(cVar);
        if (p0Var == null) {
            p0Var = new e.a.b.b.c.p0(new e.a.b.d.c.w(cVar));
            this.f2450f.put(cVar, p0Var);
        }
        return p0Var;
    }
}
