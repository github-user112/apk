package e.c.b.b;

/* loaded from: classes.dex */
public abstract class h<K, V> implements e.c.b.b.d0<K, V> {

    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.util.Collection<java.util.Map.Entry<K, V>> a;

    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.util.Set<K> b;

    /* renamed from: c, reason: collision with root package name */
    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.util.Collection<V> f2701c;

    /* renamed from: d, reason: collision with root package name */
    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.util.Map<K, java.util.Collection<V>> f2702d;

    public class a extends e.c.b.b.g0<K, V> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
            e.c.b.b.f fVar = (e.c.b.b.f) e.c.b.b.h.this;
            if (fVar != null) {
                return new e.c.b.b.e(fVar);
            }
            throw null;
        }
    }

    public class b extends java.util.AbstractCollection<V> {
        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            e.c.b.b.h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
            java.util.Iterator<java.util.Collection<V>> it = e.c.b.b.h.this.b().values().iterator();
            while (it.hasNext()) {
                if (it.next().contains(obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public java.util.Iterator<V> iterator() {
            e.c.b.b.f fVar = (e.c.b.b.f) e.c.b.b.h.this;
            if (fVar != null) {
                return new e.c.b.b.d(fVar);
            }
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return e.c.b.b.h.this.size();
        }
    }

    @Override // e.c.b.b.d0
    public java.util.Map<K, java.util.Collection<V>> b() {
        java.util.Map<K, java.util.Collection<V>> map = this.f2702d;
        if (map != null) {
            return map;
        }
        java.util.Map<K, java.util.Collection<V>> mapD = d();
        this.f2702d = mapD;
        return mapD;
    }

    @Override // e.c.b.b.d0
    public boolean c(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj2) {
        java.util.Collection<V> collection = b().get(obj);
        return collection != null && collection.contains(obj2);
    }

    public abstract java.util.Map<K, java.util.Collection<V>> d();

    public abstract java.util.Set<K> e();

    public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e.c.b.b.d0) {
            return b().equals(((e.c.b.b.d0) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return b().hashCode();
    }

    @Override // e.c.b.b.d0
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // e.c.b.b.d0
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public boolean remove(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj2) {
        java.util.Collection<V> collection = b().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public java.lang.String toString() {
        return b().toString();
    }

    @Override // e.c.b.b.d0
    public java.util.Collection<V> values() {
        java.util.Collection<V> collection = this.f2701c;
        if (collection != null) {
            return collection;
        }
        e.c.b.b.h.b bVar = new e.c.b.b.h.b();
        this.f2701c = bVar;
        return bVar;
    }
}
