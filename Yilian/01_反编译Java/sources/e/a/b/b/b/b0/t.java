package e.a.b.b.b.b0;

/* loaded from: classes.dex */
public final class t extends e.a.b.b.b.n {
    public static final e.a.b.b.b.n a = new e.a.b.b.b.b0.t();

    @Override // e.a.b.b.b.n
    public boolean b(e.a.b.b.b.z zVar) {
        return true;
    }

    @Override // e.a.b.b.b.n
    public int d() {
        return 3;
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
        return hVar.f2354d.i(0).l() + ", " + e.a.b.b.b.n.c(hVar);
    }

    @Override // e.a.b.b.b.n
    public java.lang.String j(e.a.b.b.b.h hVar, boolean z) {
        return e.a.b.b.b.n.a(hVar);
    }

    @Override // e.a.b.b.b.n
    public boolean k(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        return (hVar instanceof e.a.b.b.b.z) && lVar.b.length == 1 && e.a.b.b.b.n.q(lVar.i(0).a);
    }

    @Override // e.a.b.b.b.n
    public void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        e.a.b.b.b.n.t(aVar, e.a.b.b.b.n.o(hVar, lVar.i(0).a), ((e.a.b.b.b.z) hVar).l());
    }
}
