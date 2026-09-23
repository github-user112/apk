package e.c.b.b;

/* loaded from: classes.dex */
public final class u0<E> extends e.c.b.b.u<E> {

    /* renamed from: c, reason: collision with root package name */
    public final transient E f2748c;

    /* renamed from: d, reason: collision with root package name */
    @com.google.errorprone.annotations.concurrent.LazyInit
    public transient int f2749d;

    public u0(E e2) {
        if (e2 == null) {
            throw null;
        }
        this.f2748c = e2;
    }

    public u0(E e2, int i) {
        this.f2748c = e2;
        this.f2749d = i;
    }

    @Override // e.c.b.b.q
    public int b(java.lang.Object[] objArr, int i) {
        objArr[i] = this.f2748c;
        return i + 1;
    }

    @Override // e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(java.lang.Object obj) {
        return this.f2748c.equals(obj);
    }

    @Override // e.c.b.b.q
    public boolean f() {
        return false;
    }

    @Override // e.c.b.b.u, e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: g */
    public e.c.b.b.w0<E> iterator() {
        return new e.c.b.b.v(this.f2748c);
    }

    @Override // e.c.b.b.u, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f2749d;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.f2748c.hashCode();
        this.f2749d = iHashCode;
        return iHashCode;
    }

    @Override // e.c.b.b.u
    public e.c.b.b.s<E> k() {
        return e.c.b.b.s.q(this.f2748c);
    }

    @Override // e.c.b.b.u
    public boolean l() {
        return this.f2749d != 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public java.lang.String toString() {
        return '[' + this.f2748c.toString() + ']';
    }
}
