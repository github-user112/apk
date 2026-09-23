package e.a.b.b.c;

/* loaded from: classes.dex */
public final class g extends e.a.b.b.c.s0 {

    /* renamed from: f, reason: collision with root package name */
    public final java.util.TreeMap<e.a.b.d.d.c, e.a.b.b.c.f> f2414f;

    /* renamed from: g, reason: collision with root package name */
    public java.util.ArrayList<e.a.b.b.c.f> f2415g;

    public g(e.a.b.b.c.m mVar) {
        super("class_defs", mVar, 4);
        this.f2414f = new java.util.TreeMap<>();
        this.f2415g = null;
    }

    @Override // e.a.b.b.c.l0
    public java.util.Collection<? extends e.a.b.b.c.y> d() {
        java.util.ArrayList<e.a.b.b.c.f> arrayList = this.f2415g;
        return arrayList != null ? arrayList : this.f2414f.values();
    }

    @Override // e.a.b.b.c.s0
    public void l() {
        int size = this.f2414f.size();
        this.f2415g = new java.util.ArrayList<>(size);
        java.util.Iterator<e.a.b.d.d.c> it = this.f2414f.keySet().iterator();
        int iM = 0;
        while (it.hasNext()) {
            iM = m(it.next(), iM, size - iM);
        }
    }

    public final int m(e.a.b.d.d.c cVar, int i, int i2) {
        e.a.b.b.c.f fVar = this.f2414f.get(cVar);
        if (fVar != null) {
            if (!(fVar.a >= 0)) {
                if (i2 < 0) {
                    throw new java.lang.RuntimeException("class circularity with " + cVar);
                }
                int i3 = i2 - 1;
                e.a.b.d.c.w wVar = fVar.f2409d;
                if (wVar != null) {
                    i = m(wVar.a, i, i3);
                }
                e.a.b.b.c.r0 r0Var = fVar.f2410e;
                e.a.b.d.d.e eVar = r0Var == null ? e.a.b.d.d.b.f2519c : r0Var.f2451e;
                int length = ((e.a.b.f.d) eVar).b.length;
                for (int i4 = 0; i4 < length; i4++) {
                    i = m(eVar.b(i4), i, i3);
                }
                fVar.g(i);
                this.f2415g.add(fVar);
                return i + 1;
            }
        }
        return i;
    }
}
