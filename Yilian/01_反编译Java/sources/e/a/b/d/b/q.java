package e.a.b.d.b;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: d, reason: collision with root package name */
    public static final e.a.b.d.b.q f2505d = new e.a.b.d.b.q(null, -1, -1);
    public final e.a.b.d.c.v a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2506c;

    public q(e.a.b.d.c.v vVar, int i, int i2) {
        if (i < -1) {
            throw new java.lang.IllegalArgumentException("address < -1");
        }
        if (i2 < -1) {
            throw new java.lang.IllegalArgumentException("line < -1");
        }
        this.a = null;
        this.b = i;
        this.f2506c = i2;
    }

    public boolean equals(java.lang.Object obj) {
        e.a.b.d.c.v vVar;
        e.a.b.d.c.v vVar2;
        if (!(obj instanceof e.a.b.d.b.q)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        e.a.b.d.b.q qVar = (e.a.b.d.b.q) obj;
        if (this.b == qVar.b) {
            return this.f2506c == qVar.f2506c && ((vVar = this.a) == (vVar2 = qVar.a) || (vVar != null && vVar.equals(vVar2)));
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() + this.b + this.f2506c;
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(50);
        e.a.b.d.c.v vVar = this.a;
        if (vVar != null) {
            stringBuffer.append(vVar.a());
            stringBuffer.append(":");
        }
        int i = this.f2506c;
        if (i >= 0) {
            stringBuffer.append(i);
        }
        stringBuffer.append('@');
        int i2 = this.b;
        stringBuffer.append(i2 < 0 ? "????" : d.s.y.e0(i2));
        return stringBuffer.toString();
    }
}
