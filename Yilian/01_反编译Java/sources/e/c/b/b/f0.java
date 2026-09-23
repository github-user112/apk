package e.c.b.b;

/* loaded from: classes.dex */
public class f0<K, V> extends e.c.b.b.c<K, V> {

    /* renamed from: g, reason: collision with root package name */
    public transient e.c.b.a.k<? extends java.util.List<V>> f2700g;

    public f0(java.util.Map<K, java.util.Collection<V>> map, e.c.b.a.k<? extends java.util.List<V>> kVar) {
        super(map);
        if (kVar == null) {
            throw null;
        }
        this.f2700g = kVar;
    }

    @Override // e.c.b.b.f, e.c.b.b.h
    public java.util.Map<K, java.util.Collection<V>> d() {
        java.util.Map<K, java.util.Collection<V>> map = this.f2680e;
        return map instanceof java.util.NavigableMap ? new e.c.b.b.f.d((java.util.NavigableMap) this.f2680e) : map instanceof java.util.SortedMap ? new e.c.b.b.f.g((java.util.SortedMap) this.f2680e) : new e.c.b.b.f.a(this.f2680e);
    }

    @Override // e.c.b.b.f, e.c.b.b.h
    public java.util.Set<K> e() {
        java.util.Map<K, java.util.Collection<V>> map = this.f2680e;
        return map instanceof java.util.NavigableMap ? new e.c.b.b.f.e((java.util.NavigableMap) this.f2680e) : map instanceof java.util.SortedMap ? new e.c.b.b.f.h((java.util.SortedMap) this.f2680e) : new e.c.b.b.f.c(this.f2680e);
    }

    @Override // e.c.b.b.f
    public java.util.Collection h() {
        return this.f2700g.get();
    }
}
