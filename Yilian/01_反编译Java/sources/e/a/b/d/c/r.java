package e.a.b.d.c;

/* loaded from: classes.dex */
public abstract class r extends e.a.b.d.c.x {
    public final e.a.b.d.c.w a;
    public final e.a.b.d.c.t b;

    public r(e.a.b.d.c.w wVar, e.a.b.d.c.t tVar) {
        if (wVar == null) {
            throw new java.lang.NullPointerException("definingClass == null");
        }
        if (tVar == null) {
            throw new java.lang.NullPointerException("nat == null");
        }
        this.a = wVar;
        this.b = tVar;
    }

    @Override // e.a.b.f.k
    public final java.lang.String a() {
        return this.a.a() + '.' + this.b.a();
    }

    @Override // e.a.b.d.c.a
    public int d(e.a.b.d.c.a aVar) {
        e.a.b.d.c.r rVar = (e.a.b.d.c.r) aVar;
        int iCompareTo = this.a.compareTo(rVar.a);
        return iCompareTo != 0 ? iCompareTo : this.b.a.compareTo(rVar.b.a);
    }

    public final boolean equals(java.lang.Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e.a.b.d.c.r rVar = (e.a.b.d.c.r) obj;
        return this.a.equals(rVar.a) && this.b.equals(rVar.b);
    }

    public final int hashCode() {
        return (this.a.hashCode() * 31) ^ this.b.hashCode();
    }

    public final java.lang.String toString() {
        return e() + '{' + a() + '}';
    }
}
