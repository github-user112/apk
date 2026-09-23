package e.c.b.b;

/* loaded from: classes.dex */
public final class m0<E> extends e.c.b.b.u<E> {
    public static final e.c.b.b.m0<java.lang.Object> h = new e.c.b.b.m0<>(new java.lang.Object[0], 0, null, 0, 0);

    /* renamed from: c, reason: collision with root package name */
    public final transient java.lang.Object[] f2724c;

    /* renamed from: d, reason: collision with root package name */
    public final transient java.lang.Object[] f2725d;

    /* renamed from: e, reason: collision with root package name */
    public final transient int f2726e;

    /* renamed from: f, reason: collision with root package name */
    public final transient int f2727f;

    /* renamed from: g, reason: collision with root package name */
    public final transient int f2728g;

    public m0(java.lang.Object[] objArr, int i, java.lang.Object[] objArr2, int i2, int i3) {
        this.f2724c = objArr;
        this.f2725d = objArr2;
        this.f2726e = i2;
        this.f2727f = i;
        this.f2728g = i3;
    }

    @Override // e.c.b.b.q
    public int b(java.lang.Object[] objArr, int i) {
        java.lang.System.arraycopy(this.f2724c, 0, objArr, i, this.f2728g);
        return i + this.f2728g;
    }

    @Override // e.c.b.b.q
    public java.lang.Object[] c() {
        return this.f2724c;
    }

    @Override // e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        java.lang.Object[] objArr = this.f2725d;
        if (obj == null || objArr == null) {
            return false;
        }
        int iQ = e.c.b.a.f.q(obj);
        while (true) {
            int i = iQ & this.f2726e;
            java.lang.Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iQ = i + 1;
        }
    }

    @Override // e.c.b.b.q
    public int d() {
        return this.f2728g;
    }

    @Override // e.c.b.b.q
    public int e() {
        return 0;
    }

    @Override // e.c.b.b.q
    public boolean f() {
        return false;
    }

    @Override // e.c.b.b.u, e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: g */
    public e.c.b.b.w0<E> iterator() {
        return a().listIterator();
    }

    @Override // e.c.b.b.u, java.util.Collection, java.util.Set
    public int hashCode() {
        return this.f2727f;
    }

    @Override // e.c.b.b.u
    public e.c.b.b.s<E> k() {
        return e.c.b.b.s.i(this.f2724c, this.f2728g);
    }

    @Override // e.c.b.b.u
    public boolean l() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f2728g;
    }
}
