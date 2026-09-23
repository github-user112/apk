package e.c.b.b;

/* loaded from: classes.dex */
public class k0<E> extends e.c.b.b.s<E> {

    /* renamed from: e, reason: collision with root package name */
    public static final e.c.b.b.s<java.lang.Object> f2705e = new e.c.b.b.k0(new java.lang.Object[0], 0);

    /* renamed from: c, reason: collision with root package name */
    public final transient java.lang.Object[] f2706c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f2707d;

    public k0(java.lang.Object[] objArr, int i) {
        this.f2706c = objArr;
        this.f2707d = i;
    }

    @Override // e.c.b.b.s, e.c.b.b.q
    public int b(java.lang.Object[] objArr, int i) {
        java.lang.System.arraycopy(this.f2706c, 0, objArr, i, this.f2707d);
        return i + this.f2707d;
    }

    @Override // e.c.b.b.q
    public java.lang.Object[] c() {
        return this.f2706c;
    }

    @Override // e.c.b.b.q
    public int d() {
        return this.f2707d;
    }

    @Override // e.c.b.b.q
    public int e() {
        return 0;
    }

    @Override // e.c.b.b.q
    public boolean f() {
        return false;
    }

    @Override // java.util.List
    public E get(int i) {
        e.c.b.a.f.c(i, this.f2707d);
        return (E) this.f2706c[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2707d;
    }
}
