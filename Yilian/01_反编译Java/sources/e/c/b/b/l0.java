package e.c.b.b;

/* loaded from: classes.dex */
public final class l0<K, V> extends e.c.b.b.t<K, V> {

    /* renamed from: g, reason: collision with root package name */
    public static final e.c.b.b.t<java.lang.Object, java.lang.Object> f2709g = new e.c.b.b.l0(null, new java.lang.Object[0], 0);

    /* renamed from: d, reason: collision with root package name */
    public final transient int[] f2710d;

    /* renamed from: e, reason: collision with root package name */
    public final transient java.lang.Object[] f2711e;

    /* renamed from: f, reason: collision with root package name */
    public final transient int f2712f;

    public static class a<K, V> extends e.c.b.b.u<java.util.Map.Entry<K, V>> {

        /* renamed from: c, reason: collision with root package name */
        public final transient e.c.b.b.t<K, V> f2713c;

        /* renamed from: d, reason: collision with root package name */
        public final transient java.lang.Object[] f2714d;

        /* renamed from: e, reason: collision with root package name */
        public final transient int f2715e;

        /* renamed from: f, reason: collision with root package name */
        public final transient int f2716f;

        /* renamed from: e.c.b.b.l0$a$a, reason: collision with other inner class name */
        public class C0072a extends e.c.b.b.s<java.util.Map.Entry<K, V>> {
            public C0072a() {
            }

            @Override // e.c.b.b.q
            public boolean f() {
                return true;
            }

            @Override // java.util.List
            public java.lang.Object get(int i) {
                e.c.b.a.f.c(i, e.c.b.b.l0.a.this.f2716f);
                e.c.b.b.l0.a aVar = e.c.b.b.l0.a.this;
                java.lang.Object[] objArr = aVar.f2714d;
                int i2 = i * 2;
                int i3 = aVar.f2715e;
                return new java.util.AbstractMap.SimpleImmutableEntry(objArr[i2 + i3], objArr[i2 + (i3 ^ 1)]);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return e.c.b.b.l0.a.this.f2716f;
            }
        }

        public a(e.c.b.b.t<K, V> tVar, java.lang.Object[] objArr, int i, int i2) {
            this.f2713c = tVar;
            this.f2714d = objArr;
            this.f2715e = i;
            this.f2716f = i2;
        }

        @Override // e.c.b.b.q
        public int b(java.lang.Object[] objArr, int i) {
            return a().b(objArr, i);
        }

        @Override // e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(java.lang.Object obj) {
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            java.lang.Object key = entry.getKey();
            java.lang.Object value = entry.getValue();
            return value != null && value.equals(this.f2713c.get(key));
        }

        @Override // e.c.b.b.q
        public boolean f() {
            return true;
        }

        @Override // e.c.b.b.u, e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: g */
        public e.c.b.b.w0<java.util.Map.Entry<K, V>> iterator() {
            return a().listIterator();
        }

        @Override // e.c.b.b.u
        public e.c.b.b.s<java.util.Map.Entry<K, V>> k() {
            return new e.c.b.b.l0.a.C0072a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f2716f;
        }
    }

    public static final class b<K> extends e.c.b.b.u<K> {

        /* renamed from: c, reason: collision with root package name */
        public final transient e.c.b.b.t<K, ?> f2718c;

        /* renamed from: d, reason: collision with root package name */
        public final transient e.c.b.b.s<K> f2719d;

        public b(e.c.b.b.t<K, ?> tVar, e.c.b.b.s<K> sVar) {
            this.f2718c = tVar;
            this.f2719d = sVar;
        }

        @Override // e.c.b.b.u, e.c.b.b.q
        public e.c.b.b.s<K> a() {
            return this.f2719d;
        }

        @Override // e.c.b.b.q
        public int b(java.lang.Object[] objArr, int i) {
            return this.f2719d.b(objArr, i);
        }

        @Override // e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
            return this.f2718c.get(obj) != null;
        }

        @Override // e.c.b.b.q
        public boolean f() {
            return true;
        }

        @Override // e.c.b.b.u, e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* renamed from: g */
        public e.c.b.b.w0<K> iterator() {
            return this.f2719d.listIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f2718c.size();
        }
    }

    public static final class c extends e.c.b.b.s<java.lang.Object> {

        /* renamed from: c, reason: collision with root package name */
        public final transient java.lang.Object[] f2720c;

        /* renamed from: d, reason: collision with root package name */
        public final transient int f2721d;

        /* renamed from: e, reason: collision with root package name */
        public final transient int f2722e;

        public c(java.lang.Object[] objArr, int i, int i2) {
            this.f2720c = objArr;
            this.f2721d = i;
            this.f2722e = i2;
        }

        @Override // e.c.b.b.q
        public boolean f() {
            return true;
        }

        @Override // java.util.List
        public java.lang.Object get(int i) {
            e.c.b.a.f.c(i, this.f2722e);
            return this.f2720c[(i * 2) + this.f2721d];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f2722e;
        }
    }

    public l0(int[] iArr, java.lang.Object[] objArr, int i) {
        this.f2710d = iArr;
        this.f2711e = objArr;
        this.f2712f = i;
    }

    @Override // e.c.b.b.t, java.util.Map
    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public V get(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        int[] iArr = this.f2710d;
        java.lang.Object[] objArr = this.f2711e;
        int i = this.f2712f;
        if (obj == null) {
            return null;
        }
        if (i == 1) {
            if (objArr[0].equals(obj)) {
                return (V) objArr[1];
            }
            return null;
        }
        if (iArr == null) {
            return null;
        }
        int length = iArr.length - 1;
        int iP = e.c.b.a.f.p(obj.hashCode());
        while (true) {
            int i2 = iP & length;
            int i3 = iArr[i2];
            if (i3 == -1) {
                return null;
            }
            if (objArr[i3].equals(obj)) {
                return (V) objArr[i3 ^ 1];
            }
            iP = i2 + 1;
        }
    }

    @Override // java.util.Map
    public int size() {
        return this.f2712f;
    }
}
