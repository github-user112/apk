package e.a.b.b.c;

/* loaded from: classes.dex */
public abstract class s0 extends e.a.b.b.c.l0 {
    public s0(java.lang.String str, e.a.b.b.c.m mVar, int i) {
        super(str, mVar, i);
    }

    @Override // e.a.b.b.c.l0
    public final int a(e.a.b.b.c.y yVar) {
        e.a.b.b.c.x xVar = (e.a.b.b.c.x) yVar;
        return b(xVar.c() * xVar.e());
    }

    @Override // e.a.b.b.c.l0
    public final void f() {
        e.a.b.b.c.m mVar = this.b;
        l();
        java.util.Iterator<? extends e.a.b.b.c.y> it = d().iterator();
        while (it.hasNext()) {
            it.next().a(mVar);
        }
    }

    @Override // e.a.b.b.c.l0
    public final int i() {
        java.util.Collection<? extends e.a.b.b.c.y> collectionD = d();
        int size = collectionD.size();
        if (size == 0) {
            return 0;
        }
        return collectionD.iterator().next().c() * size;
    }

    @Override // e.a.b.b.c.l0
    public final void k(e.a.b.f.a aVar) {
        e.a.b.b.c.m mVar = this.b;
        int i = this.f2436c;
        java.util.Iterator<? extends e.a.b.b.c.y> it = d().iterator();
        while (it.hasNext()) {
            it.next().d(mVar, aVar);
            ((e.a.b.f.c) aVar).a(i);
        }
    }

    public abstract void l();
}
