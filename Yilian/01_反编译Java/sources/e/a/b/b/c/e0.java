package e.a.b.b.c;

/* loaded from: classes.dex */
public final class e0 extends e.a.b.b.c.b0 {
    public e0(e.a.b.d.c.d dVar) {
        super(dVar);
    }

    @Override // e.a.b.b.c.b0, e.a.b.b.c.w, e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        super.a(mVar);
        e.a.b.b.c.k0 k0Var = mVar.h;
        e.a.b.d.d.a aVar = ((e.a.b.d.c.d) this.f2398c).f2509c;
        synchronized (k0Var) {
            if (aVar == null) {
                throw new java.lang.NullPointerException("prototype == null");
            }
            k0Var.h();
            if (k0Var.f2432f.get(aVar) == null) {
                k0Var.f2432f.put(aVar, new e.a.b.b.c.j0(aVar));
            }
        }
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_METHOD_ID_ITEM;
    }

    @Override // e.a.b.b.c.b0
    public int h(e.a.b.b.c.m mVar) {
        e.a.b.b.c.k0 k0Var = mVar.h;
        e.a.b.d.d.a aVar = ((e.a.b.d.c.d) this.f2398c).f2509c;
        if (k0Var == null) {
            throw null;
        }
        if (aVar == null) {
            throw new java.lang.NullPointerException("prototype == null");
        }
        k0Var.g();
        e.a.b.b.c.j0 j0Var = k0Var.f2432f.get(aVar);
        if (j0Var != null) {
            return j0Var.e();
        }
        throw new java.lang.IllegalArgumentException("not found");
    }

    @Override // e.a.b.b.c.b0
    public java.lang.String i() {
        return "proto_idx";
    }
}
