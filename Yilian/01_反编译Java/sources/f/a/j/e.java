package f.a.j;

/* loaded from: classes.dex */
public final class e<D, V> {
    public final f.a.j.k<D> a;
    public final java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.c.t f3003c;

    /* renamed from: d, reason: collision with root package name */
    public final e.a.b.d.c.j f3004d;

    public e(f.a.j.k<D> kVar, f.a.j.k<V> kVar2, java.lang.String str) {
        if (kVar2 == null || str == null) {
            throw null;
        }
        this.a = kVar;
        this.b = str;
        e.a.b.d.c.t tVar = new e.a.b.d.c.t(new e.a.b.d.c.v(str), new e.a.b.d.c.v(kVar2.a));
        this.f3003c = tVar;
        this.f3004d = new e.a.b.d.c.j(kVar.f3027c, tVar);
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof f.a.j.e) {
            f.a.j.e eVar = (f.a.j.e) obj;
            if (eVar.a.equals(this.a) && eVar.b.equals(this.b)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.b.hashCode() * 37) + this.a.hashCode();
    }

    public java.lang.String toString() {
        return this.a + "." + this.b;
    }
}
