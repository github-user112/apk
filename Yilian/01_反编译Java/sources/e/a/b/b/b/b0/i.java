package e.a.b.b.b.b0;

/* loaded from: classes.dex */
public final class i extends e.a.b.b.b.n {
    public static final e.a.b.b.b.n a = new e.a.b.b.b.b0.i();

    @Override // e.a.b.b.b.n
    public int d() {
        return 2;
    }

    @Override // e.a.b.b.b.n
    public java.util.BitSet f(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        java.util.BitSet bitSet = new java.util.BitSet(1);
        bitSet.set(0, e.a.b.b.b.n.q(lVar.i(0).a));
        return bitSet;
    }

    @Override // e.a.b.b.b.n
    public java.lang.String i(e.a.b.b.b.h hVar) {
        return hVar.f2354d.i(0).l() + ", " + e.a.b.b.b.n.m((e.a.b.d.c.p) ((e.a.b.b.b.f) hVar).f2345e);
    }

    @Override // e.a.b.b.b.n
    public java.lang.String j(e.a.b.b.b.h hVar, boolean z) {
        return e.a.b.b.b.n.l((e.a.b.d.c.p) ((e.a.b.b.b.f) hVar).f2345e, 16);
    }

    @Override // e.a.b.b.b.n
    public boolean k(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        if (!(hVar instanceof e.a.b.b.b.f) || lVar.b.length != 1 || !e.a.b.b.b.n.q(lVar.i(0).a)) {
            return false;
        }
        e.a.b.d.c.a aVar = ((e.a.b.b.b.f) hVar).f2345e;
        if (!(aVar instanceof e.a.b.d.c.p)) {
            return false;
        }
        e.a.b.d.c.p pVar = (e.a.b.d.c.p) aVar;
        return pVar.f() && e.a.b.b.b.n.p(pVar.g());
    }

    @Override // e.a.b.b.b.n
    public void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar) {
        e.a.b.b.b.n.u(aVar, e.a.b.b.b.n.o(hVar, hVar.f2354d.i(0).a), (short) ((e.a.b.d.c.p) ((e.a.b.b.b.f) hVar).f2345e).g());
    }
}
