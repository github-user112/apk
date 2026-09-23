package e.a.b.b.c;

/* loaded from: classes.dex */
public final class r0 extends e.a.b.b.c.h0 {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.d.e f2451e;

    /* JADX WARN: Multi-variable type inference failed */
    public r0(e.a.b.d.d.e eVar) {
        super(4, (((e.a.b.f.d) eVar).b.length * 2) + 4);
        this.f2451e = eVar;
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        e.a.b.b.c.q0 q0Var = mVar.f2443g;
        int length = ((e.a.b.f.d) this.f2451e).b.length;
        for (int i = 0; i < length; i++) {
            q0Var.p(this.f2451e.b(i));
        }
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_TYPE_LIST;
    }

    @Override // e.a.b.b.c.h0
    public int f(e.a.b.b.c.h0 h0Var) {
        return e.a.b.d.d.b.i(this.f2451e, ((e.a.b.b.c.r0) h0Var).f2451e);
    }

    public int hashCode() {
        return e.a.b.d.d.b.l(this.f2451e);
    }

    @Override // e.a.b.b.c.h0
    public void m(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.b.c.q0 q0Var = mVar.f2443g;
        int length = ((e.a.b.f.d) this.f2451e).b.length;
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            cVar.b(0, i() + " type_list");
            cVar.b(4, "  size: " + d.s.y.g0(length));
            for (int i = 0; i < length; i++) {
                e.a.b.d.d.c cVarB = this.f2451e.b(i);
                int iN = q0Var.n(cVarB);
                java.lang.StringBuilder sbO = e.a.c.a.a.o("  ");
                sbO.append(d.s.y.e0(iN));
                sbO.append(" // ");
                sbO.append(cVarB.a());
                cVar.b(2, sbO.toString());
            }
        }
        cVar.k(length);
        for (int i2 = 0; i2 < length; i2++) {
            cVar.l(q0Var.n(this.f2451e.b(i2)));
        }
    }
}
