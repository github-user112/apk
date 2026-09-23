package e.c.b.b;

/* loaded from: classes.dex */
public abstract class c<K, V> extends e.c.b.b.f<K, V> implements e.c.b.b.x<K, V> {
    public c(java.util.Map<K, java.util.Collection<V>> map) {
        super(map);
    }

    @Override // e.c.b.b.h, e.c.b.b.d0
    public java.util.Map<K, java.util.Collection<V>> b() {
        return super.b();
    }

    @Override // e.c.b.b.h
    public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // e.c.b.b.f, e.c.b.b.d0
    public java.util.Collection get(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        return (java.util.List) super.get(obj);
    }

    @Override // e.c.b.b.f
    public java.util.Collection<V> i(K k, java.util.Collection<V> collection) {
        java.util.List list = (java.util.List) collection;
        return list instanceof java.util.RandomAccess ? new e.c.b.b.f.C0071f(this, k, list, null) : new e.c.b.b.f.j(k, list, null);
    }

    public java.util.List<V> j(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k) {
        return (java.util.List) super.get(k);
    }

    @Override // e.c.b.b.f, e.c.b.b.d0
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public boolean put(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k, @org.checkerframework.checker.nullness.compatqual.NullableDecl V v) {
        return super.put(k, v);
    }
}
