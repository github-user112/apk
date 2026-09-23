package e.a.b.d.b;

/* loaded from: classes.dex */
public final class j extends e.a.b.d.b.e {
    public j(e.a.b.d.b.n nVar, e.a.b.d.b.q qVar, e.a.b.d.b.k kVar, e.a.b.d.b.l lVar) {
        super(nVar, qVar, kVar, lVar);
        int i = nVar.f2495e;
        if (i == 5 || i == 6) {
            throw new java.lang.IllegalArgumentException("bogus branchingness");
        }
        if (kVar != null && i != 1) {
            throw new java.lang.IllegalArgumentException("can't mix branchingness with result");
        }
    }

    @Override // e.a.b.d.b.e
    public void b(e.a.b.d.b.e.b bVar) {
        bVar.a(this);
    }

    @Override // e.a.b.d.b.e
    public e.a.b.d.d.e d() {
        return e.a.b.d.d.b.f2519c;
    }
}
