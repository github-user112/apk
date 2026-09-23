package e.a.b.d.c;

/* loaded from: classes.dex */
public abstract class n extends e.a.b.d.c.p {
    public final int a;

    public n(int i) {
        this.a = i;
    }

    @Override // e.a.b.d.c.a
    public int d(e.a.b.d.c.a aVar) {
        int i = ((e.a.b.d.c.n) aVar).a;
        int i2 = this.a;
        if (i2 < i) {
            return -1;
        }
        return i2 > i ? 1 : 0;
    }

    public final boolean equals(java.lang.Object obj) {
        return obj != null && getClass() == obj.getClass() && this.a == ((e.a.b.d.c.n) obj).a;
    }

    @Override // e.a.b.d.c.p
    public final boolean f() {
        return true;
    }

    @Override // e.a.b.d.c.p
    public final int g() {
        return this.a;
    }

    @Override // e.a.b.d.c.p
    public final long h() {
        return this.a;
    }

    public final int hashCode() {
        return this.a;
    }
}
