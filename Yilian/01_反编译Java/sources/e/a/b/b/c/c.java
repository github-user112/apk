package e.a.b.b.c;

/* loaded from: classes.dex */
public final class c extends e.a.b.b.c.h0 {

    /* renamed from: e, reason: collision with root package name */
    public e.a.b.b.c.b f2399e;

    /* renamed from: f, reason: collision with root package name */
    public java.util.ArrayList<e.a.b.b.c.r> f2400f;

    /* renamed from: g, reason: collision with root package name */
    public java.util.ArrayList<e.a.b.b.c.d0> f2401g;
    public java.util.ArrayList<e.a.b.b.c.i0> h;

    public c() {
        super(4, -1);
        this.f2399e = null;
        this.f2400f = null;
        this.f2401g = null;
        this.h = null;
    }

    public static int p(java.util.ArrayList<?> arrayList) {
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        e.a.b.b.c.g0 g0Var = mVar.b;
        e.a.b.b.c.b bVar = this.f2399e;
        if (bVar != null) {
            this.f2399e = (e.a.b.b.c.b) g0Var.m(bVar);
        }
        java.util.ArrayList<e.a.b.b.c.r> arrayList = this.f2400f;
        if (arrayList != null) {
            java.util.Iterator<e.a.b.b.c.r> it = arrayList.iterator();
            while (it.hasNext()) {
                e.a.b.b.c.r next = it.next();
                if (next == null) {
                    throw null;
                }
                e.a.b.b.c.t tVar = mVar.i;
                e.a.b.b.c.g0 g0Var2 = mVar.b;
                tVar.n(null);
                next.b = (e.a.b.b.c.b) g0Var2.m(next.b);
            }
        }
        java.util.ArrayList<e.a.b.b.c.d0> arrayList2 = this.f2401g;
        if (arrayList2 != null) {
            java.util.Iterator<e.a.b.b.c.d0> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                e.a.b.b.c.d0 next2 = it2.next();
                if (next2 == null) {
                    throw null;
                }
                e.a.b.b.c.f0 f0Var = mVar.j;
                e.a.b.b.c.g0 g0Var3 = mVar.b;
                f0Var.n(null);
                next2.b = (e.a.b.b.c.b) g0Var3.m(next2.b);
            }
        }
        java.util.ArrayList<e.a.b.b.c.i0> arrayList3 = this.h;
        if (arrayList3 != null) {
            java.util.Iterator<e.a.b.b.c.i0> it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                if (it3.next() == null) {
                    throw null;
                }
                e.a.b.b.c.f0 f0Var2 = mVar.j;
                e.a.b.b.c.g0 g0Var4 = mVar.b;
                f0Var2.n(null);
                g0Var4.l(null);
            }
        }
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_ANNOTATIONS_DIRECTORY_ITEM;
    }

    @Override // e.a.b.b.c.h0
    public int f(e.a.b.b.c.h0 h0Var) {
        if (o()) {
            return this.f2399e.compareTo(((e.a.b.b.c.c) h0Var).f2399e);
        }
        throw new java.lang.UnsupportedOperationException("uninternable instance");
    }

    public int hashCode() {
        if (this.f2399e == null) {
            return 0;
        }
        throw null;
    }

    @Override // e.a.b.b.c.h0
    public void k(e.a.b.b.c.l0 l0Var, int i) {
        l(((p(this.h) + p(this.f2401g) + p(this.f2400f)) * 8) + 16);
    }

    @Override // e.a.b.b.c.h0
    public void m(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        boolean zD = cVar.d();
        int iH = e.a.b.b.c.h0.h(this.f2399e);
        int iP = p(this.f2400f);
        int iP2 = p(this.f2401g);
        int iP3 = p(this.h);
        if (zD) {
            cVar.b(0, i() + " annotations directory");
            cVar.b(4, "  class_annotations_off: " + d.s.y.g0(iH));
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("  fields_size:           ");
            e.a.c.a.a.u(iP3, e.a.c.a.a.n(iP2, e.a.c.a.a.n(iP, sb, cVar, 4, "  methods_size:          "), cVar, 4, "  parameters_size:       "), cVar, 4);
        }
        cVar.k(iH);
        cVar.k(iP);
        cVar.k(iP2);
        cVar.k(iP3);
        if (iP != 0) {
            java.util.Collections.sort(this.f2400f);
            if (zD) {
                cVar.b(0, "  fields:");
            }
            java.util.Iterator<e.a.b.b.c.r> it = this.f2400f.iterator();
            while (it.hasNext()) {
                e.a.b.b.c.r next = it.next();
                if (next == null) {
                    throw null;
                }
                int iM = mVar.i.m(null);
                int iG = next.b.g();
                if (cVar.d()) {
                    new java.lang.StringBuilder().append("    ");
                    throw null;
                }
                cVar.k(iM);
                cVar.k(iG);
            }
        }
        if (iP2 != 0) {
            java.util.Collections.sort(this.f2401g);
            if (zD) {
                cVar.b(0, "  methods:");
            }
            java.util.Iterator<e.a.b.b.c.d0> it2 = this.f2401g.iterator();
            while (it2.hasNext()) {
                e.a.b.b.c.d0 next2 = it2.next();
                if (next2 == null) {
                    throw null;
                }
                int iM2 = mVar.j.m(null);
                int iG2 = next2.b.g();
                if (cVar.d()) {
                    new java.lang.StringBuilder().append("    ");
                    throw null;
                }
                cVar.k(iM2);
                cVar.k(iG2);
            }
        }
        if (iP3 != 0) {
            java.util.Collections.sort(this.h);
            if (zD) {
                cVar.b(0, "  parameters:");
            }
            java.util.Iterator<e.a.b.b.c.i0> it3 = this.h.iterator();
            if (it3.hasNext()) {
                if (it3.next() == null) {
                    throw null;
                }
                mVar.j.m(null);
                throw null;
            }
        }
    }

    public boolean n() {
        return this.f2399e == null && this.f2400f == null && this.f2401g == null && this.h == null;
    }

    public boolean o() {
        return this.f2399e != null && this.f2400f == null && this.f2401g == null && this.h == null;
    }
}
