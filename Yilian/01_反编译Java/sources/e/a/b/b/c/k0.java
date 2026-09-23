package e.a.b.b.c;

/* loaded from: classes.dex */
public final class k0 extends e.a.b.b.c.s0 {

    /* renamed from: f, reason: collision with root package name */
    public final java.util.TreeMap<e.a.b.d.d.a, e.a.b.b.c.j0> f2432f;

    public k0(e.a.b.b.c.m mVar) {
        super("proto_ids", mVar, 4);
        this.f2432f = new java.util.TreeMap<>();
    }

    @Override // e.a.b.b.c.l0
    public java.util.Collection<? extends e.a.b.b.c.y> d() {
        return this.f2432f.values();
    }

    @Override // e.a.b.b.c.s0
    public void l() {
        java.util.Iterator<? extends e.a.b.b.c.y> it = d().iterator();
        int i = 0;
        while (it.hasNext()) {
            ((e.a.b.b.c.j0) it.next()).g(i);
            i++;
        }
    }
}
