package e.a.b.d.b;

/* loaded from: classes.dex */
public final class r extends e.a.b.d.b.c {

    /* renamed from: f, reason: collision with root package name */
    public final e.a.b.d.d.e f2507f;

    public r(e.a.b.d.b.n nVar, e.a.b.d.b.q qVar, e.a.b.d.b.l lVar, e.a.b.d.d.e eVar, e.a.b.d.c.a aVar) {
        super(nVar, qVar, null, lVar, aVar);
        if (nVar.f2495e != 6) {
            throw new java.lang.IllegalArgumentException("bogus branchingness");
        }
        if (eVar == null) {
            throw new java.lang.NullPointerException("catches == null");
        }
        this.f2507f = eVar;
    }

    @Override // e.a.b.d.b.e
    public void b(e.a.b.d.b.e.b bVar) {
        bVar.d(this);
    }

    @Override // e.a.b.d.b.e
    public e.a.b.d.d.e d() {
        return this.f2507f;
    }

    @Override // e.a.b.d.b.c, e.a.b.d.b.e
    public java.lang.String e() {
        e.a.b.d.c.a aVar = this.f2479e;
        java.lang.String strA = aVar.a();
        if (aVar instanceof e.a.b.d.c.v) {
            strA = ((e.a.b.d.c.v) aVar).f();
        }
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(strA, " ");
        sbQ.append(e.a.b.d.b.s.f(this.f2507f));
        return sbQ.toString();
    }
}
