package e.a.b.b.c;

/* loaded from: classes.dex */
public final class n extends e.a.b.b.c.h0 {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.c.c f2445e;

    /* renamed from: f, reason: collision with root package name */
    public byte[] f2446f;

    public n(e.a.b.d.c.c cVar) {
        super(1, -1);
        this.f2445e = cVar;
        this.f2446f = null;
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        e.a.b.b.c.u0.a(mVar, this.f2445e);
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_ENCODED_ARRAY_ITEM;
    }

    @Override // e.a.b.b.c.h0
    public int f(e.a.b.b.c.h0 h0Var) {
        return this.f2445e.compareTo(((e.a.b.b.c.n) h0Var).f2445e);
    }

    public int hashCode() {
        return this.f2445e.hashCode();
    }

    @Override // e.a.b.b.c.h0
    public void k(e.a.b.b.c.l0 l0Var, int i) {
        e.a.b.f.c cVar = new e.a.b.f.c();
        new e.a.b.b.c.u0(l0Var.b, cVar).e(this.f2445e, false);
        byte[] bArrH = cVar.h();
        this.f2446f = bArrH;
        l(bArrH.length);
    }

    @Override // e.a.b.b.c.h0
    public void m(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (!cVar.d()) {
            cVar.i(this.f2446f);
            return;
        }
        cVar.b(0, i() + " encoded array");
        new e.a.b.b.c.u0(mVar, cVar).e(this.f2445e, true);
    }
}
