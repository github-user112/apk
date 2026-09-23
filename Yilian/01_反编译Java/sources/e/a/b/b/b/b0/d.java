package e.a.b.b.b.b0;

/* loaded from: classes.dex */
public final class d extends e.a.b.b.b.n {
    public static final e.a.b.b.b.n a = new e.a.b.b.b.b0.d();

    @Override // e.a.b.b.b.n
    public int d() {
        return 1;
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
        return hVar.f2354d.i(0).l();
    }

    @Override // e.a.b.b.b.n
    public java.lang.String j(e.a.b.b.b.h hVar, boolean z) {
        return "";
    }

    @Override // e.a.b.b.b.n
    public boolean k(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        return (hVar instanceof e.a.b.b.b.x) && lVar.b.length == 1 && e.a.b.b.b.n.q(lVar.i(0).a);
    }

    @Override // e.a.b.b.b.n
    public void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar) {
        ((e.a.b.f.c) aVar).l(e.a.b.b.b.n.o(hVar, hVar.f2354d.i(0).a));
    }
}
