package e.c.b.b;

import e.c.b.b.f.a.C0070a;

/* loaded from: classes.dex */
public abstract class c0<K, V> extends java.util.AbstractMap<K, V> {

    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.util.Set<java.util.Map.Entry<K, V>> a;

    @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
    public transient java.util.Collection<V> b;

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Set<java.util.Map.Entry<K, V>> entrySet() {
        java.util.Set<java.util.Map.Entry<K, V>> set = this.a;
        if (set != null) {
            return set;
        }
        e.c.b.b.f.a.C0070a c0070a = ((e.c.b.b.f.a) this).new C0070a();
        this.a = c0070a;
        return c0070a;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Collection<V> values() {
        java.util.Collection<V> collection = this.b;
        if (collection != null) {
            return collection;
        }
        e.c.b.b.b0 b0Var = new e.c.b.b.b0(this);
        this.b = b0Var;
        return b0Var;
    }
}
