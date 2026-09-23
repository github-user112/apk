package e.a.b.b.c;

/* loaded from: classes.dex */
public final class f0 extends e.a.b.b.c.c0 {

    /* renamed from: f, reason: collision with root package name */
    public final java.util.TreeMap<e.a.b.d.c.d, e.a.b.b.c.e0> f2413f;

    public f0(e.a.b.b.c.m mVar) {
        super("method_ids", mVar);
        this.f2413f = new java.util.TreeMap<>();
    }

    @Override // e.a.b.b.c.l0
    public java.util.Collection<? extends e.a.b.b.c.y> d() {
        return this.f2413f.values();
    }

    public int m(e.a.b.d.c.d dVar) {
        if (dVar == null) {
            throw new java.lang.NullPointerException("ref == null");
        }
        g();
        e.a.b.b.c.e0 e0Var = this.f2413f.get(dVar);
        if (e0Var != null) {
            return e0Var.e();
        }
        throw new java.lang.IllegalArgumentException("not found");
    }

    public synchronized e.a.b.b.c.e0 n(e.a.b.d.c.d dVar) {
        e.a.b.b.c.e0 e0Var;
        if (dVar == null) {
            throw new java.lang.NullPointerException("method == null");
        }
        h();
        e0Var = this.f2413f.get(dVar);
        if (e0Var == null) {
            e0Var = new e.a.b.b.c.e0(dVar);
            this.f2413f.put(dVar, e0Var);
        }
        return e0Var;
    }
}
