package e.c.b.b;

/* loaded from: classes.dex */
public class n<K, V> extends java.util.AbstractMap<K, V> implements java.io.Serializable {

    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient int[] a;

    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient long[] b;

    /* renamed from: c, reason: collision with root package name */
    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.lang.Object[] f2729c;

    /* renamed from: d, reason: collision with root package name */
    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.lang.Object[] f2730d;

    /* renamed from: e, reason: collision with root package name */
    public transient float f2731e;

    /* renamed from: f, reason: collision with root package name */
    public transient int f2732f;

    /* renamed from: g, reason: collision with root package name */
    public transient int f2733g;
    public transient int h;

    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.util.Set<K> i;

    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.util.Set<java.util.Map.Entry<K, V>> j;

    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.util.Collection<V> k;

    public class a extends java.util.AbstractSet<java.util.Map.Entry<K, V>> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e.c.b.b.n.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            int iE = e.c.b.b.n.this.e(entry.getKey());
            return iE != -1 && e.c.b.a.f.h(e.c.b.b.n.this.f2730d[iE], entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
            e.c.b.b.n nVar = e.c.b.b.n.this;
            if (nVar != null) {
                return new e.c.b.b.l(nVar);
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            int iE = e.c.b.b.n.this.e(entry.getKey());
            if (iE == -1 || !e.c.b.a.f.h(e.c.b.b.n.this.f2730d[iE], entry.getValue())) {
                return false;
            }
            e.c.b.b.n.a(e.c.b.b.n.this, iE);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e.c.b.b.n.this.h;
        }
    }

    public abstract class b<T> implements java.util.Iterator<T> {
        public int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f2734c;

        public b(e.c.b.b.k kVar) {
            e.c.b.b.n nVar = e.c.b.b.n.this;
            this.a = nVar.f2732f;
            this.b = nVar.isEmpty() ? -1 : 0;
            this.f2734c = -1;
        }

        public abstract T a(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            if (e.c.b.b.n.this.f2732f != this.a) {
                throw new java.util.ConcurrentModificationException();
            }
            if (!hasNext()) {
                throw new java.util.NoSuchElementException();
            }
            int i = this.b;
            this.f2734c = i;
            T tA = a(i);
            e.c.b.b.n nVar = e.c.b.b.n.this;
            int i2 = this.b + 1;
            if (i2 >= nVar.h) {
                i2 = -1;
            }
            this.b = i2;
            return tA;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (e.c.b.b.n.this.f2732f != this.a) {
                throw new java.util.ConcurrentModificationException();
            }
            d.s.y.m(this.f2734c >= 0);
            this.a++;
            e.c.b.b.n.a(e.c.b.b.n.this, this.f2734c);
            e.c.b.b.n nVar = e.c.b.b.n.this;
            int i = this.b;
            if (nVar == null) {
                throw null;
            }
            this.b = i - 1;
            this.f2734c = -1;
        }
    }

    public class c extends java.util.AbstractSet<K> {
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e.c.b.b.n.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(java.lang.Object obj) {
            return e.c.b.b.n.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public java.util.Iterator<K> iterator() {
            e.c.b.b.n nVar = e.c.b.b.n.this;
            if (nVar != null) {
                return new e.c.b.b.k(nVar);
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
            int iE = e.c.b.b.n.this.e(obj);
            if (iE == -1) {
                return false;
            }
            e.c.b.b.n.a(e.c.b.b.n.this, iE);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e.c.b.b.n.this.h;
        }
    }

    public final class d extends e.c.b.b.g<K, V> {

        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        public final K a;
        public int b;

        public d(int i) {
            this.a = (K) e.c.b.b.n.this.f2729c[i];
            this.b = i;
        }

        public final void a() {
            int i = this.b;
            if (i != -1) {
                e.c.b.b.n nVar = e.c.b.b.n.this;
                if (i < nVar.h && e.c.b.a.f.h(this.a, nVar.f2729c[i])) {
                    return;
                }
            }
            this.b = e.c.b.b.n.this.e(this.a);
        }

        @Override // e.c.b.b.g, java.util.Map.Entry
        public K getKey() {
            return this.a;
        }

        @Override // e.c.b.b.g, java.util.Map.Entry
        public V getValue() {
            a();
            int i = this.b;
            if (i == -1) {
                return null;
            }
            return (V) e.c.b.b.n.this.f2730d[i];
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            a();
            int i = this.b;
            if (i == -1) {
                e.c.b.b.n.this.put(this.a, v);
                return null;
            }
            java.lang.Object[] objArr = e.c.b.b.n.this.f2730d;
            V v2 = (V) objArr[i];
            objArr[i] = v;
            return v2;
        }
    }

    public class e extends java.util.AbstractCollection<V> {
        public e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            e.c.b.b.n.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public java.util.Iterator<V> iterator() {
            e.c.b.b.n nVar = e.c.b.b.n.this;
            if (nVar != null) {
                return new e.c.b.b.m(nVar);
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return e.c.b.b.n.this.h;
        }
    }

    public n(int i) {
        e.c.b.a.f.b(i >= 0, "Initial capacity must be non-negative");
        e.c.b.a.f.b(true, "Illegal load factor");
        double d2 = 1.0f;
        int iMax = java.lang.Math.max(i, 2);
        int iHighestOneBit = java.lang.Integer.highestOneBit(iMax);
        double d3 = iHighestOneBit;
        java.lang.Double.isNaN(d3);
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(d3);
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(d3);
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(d3);
        if (iMax > ((int) (d2 * d3)) && (iHighestOneBit = iHighestOneBit << 1) <= 0) {
            iHighestOneBit = 1073741824;
        }
        int[] iArr = new int[iHighestOneBit];
        java.util.Arrays.fill(iArr, -1);
        this.a = iArr;
        this.f2731e = 1.0f;
        this.f2729c = new java.lang.Object[i];
        this.f2730d = new java.lang.Object[i];
        long[] jArr = new long[i];
        java.util.Arrays.fill(jArr, -1L);
        this.b = jArr;
        this.f2733g = java.lang.Math.max(1, (int) (iHighestOneBit * 1.0f));
    }

    public static java.lang.Object a(e.c.b.b.n nVar, int i) {
        return nVar.f(nVar.f2729c[i], c(nVar.b[i]));
    }

    public static int c(long j) {
        return (int) (j >>> 32);
    }

    public static long g(long j, int i) {
        return (j & (-4294967296L)) | (i & 4294967295L);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.f2732f++;
        java.util.Arrays.fill(this.f2729c, 0, this.h, (java.lang.Object) null);
        java.util.Arrays.fill(this.f2730d, 0, this.h, (java.lang.Object) null);
        java.util.Arrays.fill(this.a, -1);
        java.util.Arrays.fill(this.b, -1L);
        this.h = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        return e(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        for (int i = 0; i < this.h; i++) {
            if (e.c.b.a.f.h(obj, this.f2730d[i])) {
                return true;
            }
        }
        return false;
    }

    public final int d() {
        return this.a.length - 1;
    }

    public final int e(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        int iQ = e.c.b.a.f.q(obj);
        int i = this.a[d() & iQ];
        while (i != -1) {
            long j = this.b[i];
            if (c(j) == iQ && e.c.b.a.f.h(obj, this.f2729c[i])) {
                return i;
            }
            i = (int) j;
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Set<java.util.Map.Entry<K, V>> entrySet() {
        java.util.Set<java.util.Map.Entry<K, V>> set = this.j;
        if (set != null) {
            return set;
        }
        e.c.b.b.n.a aVar = new e.c.b.b.n.a();
        this.j = aVar;
        return aVar;
    }

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public final V f(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj, int i) {
        long[] jArr;
        long j;
        int iD = d() & i;
        int i2 = this.a[iD];
        if (i2 == -1) {
            return null;
        }
        int i3 = -1;
        while (true) {
            if (c(this.b[i2]) == i && e.c.b.a.f.h(obj, this.f2729c[i2])) {
                V v = (V) this.f2730d[i2];
                if (i3 == -1) {
                    this.a[iD] = (int) this.b[i2];
                } else {
                    long[] jArr2 = this.b;
                    jArr2[i3] = g(jArr2[i3], (int) jArr2[i2]);
                }
                int i4 = this.h - 1;
                if (i2 < i4) {
                    java.lang.Object[] objArr = this.f2729c;
                    objArr[i2] = objArr[i4];
                    java.lang.Object[] objArr2 = this.f2730d;
                    objArr2[i2] = objArr2[i4];
                    objArr[i4] = null;
                    objArr2[i4] = null;
                    long[] jArr3 = this.b;
                    long j2 = jArr3[i4];
                    jArr3[i2] = j2;
                    jArr3[i4] = -1;
                    int iC = c(j2) & d();
                    int[] iArr = this.a;
                    int i5 = iArr[iC];
                    if (i5 == i4) {
                        iArr[iC] = i2;
                    } else {
                        while (true) {
                            jArr = this.b;
                            j = jArr[i5];
                            int i6 = (int) j;
                            if (i6 == i4) {
                                break;
                            }
                            i5 = i6;
                        }
                        jArr[i5] = g(j, i2);
                    }
                } else {
                    this.f2729c[i2] = null;
                    this.f2730d[i2] = null;
                    this.b[i2] = -1;
                }
                this.h--;
                this.f2732f++;
                return v;
            }
            int i7 = (int) this.b[i2];
            if (i7 == -1) {
                return null;
            }
            i3 = i2;
            i2 = i7;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        int iE = e(obj);
        if (iE == -1) {
            return null;
        }
        return (V) this.f2730d[iE];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.h == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Set<K> keySet() {
        java.util.Set<K> set = this.i;
        if (set != null) {
            return set;
        }
        e.c.b.b.n.c cVar = new e.c.b.b.n.c();
        this.i = cVar;
        return cVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public V put(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k, @org.checkerframework.checker.nullness.compatqual.NullableDecl V v) {
        long[] jArr = this.b;
        java.lang.Object[] objArr = this.f2729c;
        java.lang.Object[] objArr2 = this.f2730d;
        int iQ = e.c.b.a.f.q(k);
        int iD = d() & iQ;
        int i = this.h;
        int[] iArr = this.a;
        int i2 = iArr[iD];
        if (i2 == -1) {
            iArr[iD] = i;
        } else {
            while (true) {
                long j = jArr[i2];
                if (c(j) == iQ && e.c.b.a.f.h(k, objArr[i2])) {
                    V v2 = (V) objArr2[i2];
                    objArr2[i2] = v;
                    return v2;
                }
                int i3 = (int) j;
                if (i3 == -1) {
                    jArr[i2] = g(j, i);
                    break;
                }
                i2 = i3;
            }
        }
        if (i == Integer.MAX_VALUE) {
            throw new java.lang.IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
        }
        int i4 = i + 1;
        int length = this.b.length;
        if (i4 > length) {
            int iMax = java.lang.Math.max(1, length >>> 1) + length;
            if (iMax < 0) {
                iMax = Integer.MAX_VALUE;
            }
            if (iMax != length) {
                this.f2729c = java.util.Arrays.copyOf(this.f2729c, iMax);
                this.f2730d = java.util.Arrays.copyOf(this.f2730d, iMax);
                long[] jArr2 = this.b;
                int length2 = jArr2.length;
                long[] jArrCopyOf = java.util.Arrays.copyOf(jArr2, iMax);
                if (iMax > length2) {
                    java.util.Arrays.fill(jArrCopyOf, length2, iMax, -1L);
                }
                this.b = jArrCopyOf;
            }
        }
        this.b[i] = (iQ << 32) | 4294967295L;
        this.f2729c[i] = k;
        this.f2730d[i] = v;
        this.h = i4;
        if (i >= this.f2733g) {
            int[] iArr2 = this.a;
            int length3 = iArr2.length * 2;
            if (iArr2.length >= 1073741824) {
                this.f2733g = Integer.MAX_VALUE;
            } else {
                int i5 = ((int) (length3 * this.f2731e)) + 1;
                int[] iArr3 = new int[length3];
                java.util.Arrays.fill(iArr3, -1);
                long[] jArr3 = this.b;
                int i6 = length3 - 1;
                for (int i7 = 0; i7 < this.h; i7++) {
                    int iC = c(jArr3[i7]);
                    int i8 = iC & i6;
                    int i9 = iArr3[i8];
                    iArr3[i8] = i7;
                    jArr3[i7] = (iC << 32) | (i9 & 4294967295L);
                }
                this.f2733g = i5;
                this.a = iArr3;
            }
        }
        this.f2732f++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public V remove(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        return f(obj, e.c.b.a.f.q(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.h;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Collection<V> values() {
        java.util.Collection<V> collection = this.k;
        if (collection != null) {
            return collection;
        }
        e.c.b.b.n.e eVar = new e.c.b.b.n.e();
        this.k = eVar;
        return eVar;
    }
}
