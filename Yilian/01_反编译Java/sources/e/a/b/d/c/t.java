package e.a.b.d.c;

/* loaded from: classes.dex */
public final class t extends e.a.b.d.c.a {
    public final e.a.b.d.c.v a;
    public final e.a.b.d.c.v b;

    static {
        new e.a.b.d.c.v("TYPE");
        new e.a.b.d.c.v("Ljava/lang/Class;");
    }

    public t(e.a.b.d.c.v vVar, e.a.b.d.c.v vVar2) {
        this.a = vVar;
        this.b = vVar2;
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return this.a.a() + ':' + this.b.a();
    }

    @Override // e.a.b.d.c.a
    public int d(e.a.b.d.c.a aVar) {
        e.a.b.d.c.t tVar = (e.a.b.d.c.t) aVar;
        int iCompareTo = this.a.compareTo(tVar.a);
        return iCompareTo != 0 ? iCompareTo : this.b.compareTo(tVar.b);
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "nat";
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof e.a.b.d.c.t)) {
            return false;
        }
        e.a.b.d.c.t tVar = (e.a.b.d.c.t) obj;
        return this.a.equals(tVar.a) && this.b.equals(tVar.b);
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) ^ this.b.hashCode();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("nat{");
        sbO.append(a());
        sbO.append('}');
        return sbO.toString();
    }
}
