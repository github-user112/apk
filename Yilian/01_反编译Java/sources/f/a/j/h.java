package f.a.j;

/* loaded from: classes.dex */
public final class h<D, R> {
    public final f.a.j.k<D> a;
    public final f.a.j.k<R> b;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.String f3012c;

    /* renamed from: d, reason: collision with root package name */
    public final f.a.j.l f3013d;

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.c.t f3014e;

    /* renamed from: f, reason: collision with root package name */
    public final e.a.b.d.c.s f3015f;

    public h(f.a.j.k<D> kVar, f.a.j.k<R> kVar2, java.lang.String str, f.a.j.l lVar) {
        if (kVar2 == null || str == null) {
            throw null;
        }
        this.a = kVar;
        this.b = kVar2;
        this.f3012c = str;
        this.f3013d = lVar;
        e.a.b.d.c.t tVar = new e.a.b.d.c.t(new e.a.b.d.c.v(str), new e.a.b.d.c.v(a(false)));
        this.f3014e = tVar;
        this.f3015f = new e.a.b.d.c.s(kVar.f3027c, tVar);
    }

    public java.lang.String a(boolean z) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("(");
        if (z) {
            sbO.append(this.a.a);
        }
        for (f.a.j.k<?> kVar : this.f3013d.a) {
            sbO.append(kVar.a);
        }
        sbO.append(")");
        sbO.append(this.b.a);
        return sbO.toString();
    }

    public e.a.b.d.d.a b(boolean z) {
        return e.a.b.d.d.a.c(a(z));
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof f.a.j.h) {
            f.a.j.h hVar = (f.a.j.h) obj;
            if (hVar.a.equals(this.a) && hVar.f3012c.equals(this.f3012c) && hVar.f3013d.equals(this.f3013d) && hVar.b.equals(this.b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode() + ((this.f3013d.hashCode() + ((this.f3012c.hashCode() + ((this.a.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public java.lang.String toString() {
        return this.a + "." + this.f3012c + "(" + this.f3013d + ")";
    }
}
