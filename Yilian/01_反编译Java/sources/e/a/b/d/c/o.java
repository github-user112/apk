package e.a.b.d.c;

/* loaded from: classes.dex */
public abstract class o extends e.a.b.d.c.p {
    public final long a;

    public o(long j) {
        this.a = j;
    }

    @Override // e.a.b.d.c.a
    public int d(e.a.b.d.c.a aVar) {
        long j = ((e.a.b.d.c.o) aVar).a;
        long j2 = this.a;
        if (j2 < j) {
            return -1;
        }
        return j2 > j ? 1 : 0;
    }

    public final boolean equals(java.lang.Object obj) {
        return obj != null && getClass() == obj.getClass() && this.a == ((e.a.b.d.c.o) obj).a;
    }

    @Override // e.a.b.d.c.p
    public final boolean f() {
        long j = this.a;
        return ((long) ((int) j)) == j;
    }

    @Override // e.a.b.d.c.p
    public final int g() {
        return (int) this.a;
    }

    @Override // e.a.b.d.c.p
    public final long h() {
        return this.a;
    }

    public final int hashCode() {
        long j = this.a;
        return ((int) j) ^ ((int) (j >> 32));
    }
}
