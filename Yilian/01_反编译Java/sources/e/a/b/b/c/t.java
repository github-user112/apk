package e.a.b.b.c;

/* loaded from: classes.dex */
public final class t extends e.a.b.b.c.c0 {

    /* renamed from: f, reason: collision with root package name */
    public final java.util.TreeMap<e.a.b.d.c.j, e.a.b.b.c.s> f2452f;

    public t(e.a.b.b.c.m mVar) {
        super("field_ids", mVar);
        this.f2452f = new java.util.TreeMap<>();
    }

    @Override // e.a.b.b.c.l0
    public java.util.Collection<? extends e.a.b.b.c.y> d() {
        return this.f2452f.values();
    }

    public int m(e.a.b.d.c.j jVar) {
        if (jVar == null) {
            throw new java.lang.NullPointerException("ref == null");
        }
        g();
        e.a.b.b.c.s sVar = this.f2452f.get(jVar);
        if (sVar != null) {
            return sVar.e();
        }
        throw new java.lang.IllegalArgumentException("not found");
    }

    public synchronized e.a.b.b.c.s n(e.a.b.d.c.j jVar) {
        e.a.b.b.c.s sVar;
        if (jVar == null) {
            throw new java.lang.NullPointerException("field == null");
        }
        h();
        sVar = this.f2452f.get(jVar);
        if (sVar == null) {
            sVar = new e.a.b.b.c.s(jVar);
            this.f2452f.put(jVar, sVar);
        }
        return sVar;
    }
}
