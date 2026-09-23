package e.a.b.b.c;

/* loaded from: classes.dex */
public final class o0 extends e.a.b.b.c.s0 {

    /* renamed from: f, reason: collision with root package name */
    public final java.util.TreeMap<e.a.b.d.c.v, e.a.b.b.c.n0> f2448f;

    public o0(e.a.b.b.c.m mVar) {
        super("string_ids", mVar, 4);
        this.f2448f = new java.util.TreeMap<>();
    }

    @Override // e.a.b.b.c.l0
    public java.util.Collection<? extends e.a.b.b.c.y> d() {
        return this.f2448f.values();
    }

    @Override // e.a.b.b.c.s0
    public void l() {
        java.util.Iterator<e.a.b.b.c.n0> it = this.f2448f.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next().g(i);
            i++;
        }
    }

    public int m(e.a.b.d.c.v vVar) {
        if (vVar == null) {
            throw new java.lang.NullPointerException("string == null");
        }
        g();
        e.a.b.b.c.n0 n0Var = this.f2448f.get(vVar);
        if (n0Var != null) {
            return n0Var.e();
        }
        throw new java.lang.IllegalArgumentException("not found");
    }

    public e.a.b.b.c.n0 n(e.a.b.d.c.v vVar) {
        e.a.b.b.c.n0 n0Var = new e.a.b.b.c.n0(vVar);
        synchronized (this) {
            h();
            e.a.b.d.c.v vVar2 = n0Var.b;
            e.a.b.b.c.n0 n0Var2 = this.f2448f.get(vVar2);
            if (n0Var2 != null) {
                return n0Var2;
            }
            this.f2448f.put(vVar2, n0Var);
            return n0Var;
        }
    }
}
