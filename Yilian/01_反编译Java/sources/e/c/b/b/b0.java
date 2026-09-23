package e.c.b.b;

/* loaded from: classes.dex */
public class b0<K, V> extends java.util.AbstractCollection<V> {

    @com.google.j2objc.annotations.Weak
    public final java.util.Map<K, V> a;

    public b0(java.util.Map<K, V> map) {
        this.a = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        return this.a.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public java.util.Iterator<V> iterator() {
        return new e.c.b.b.y(this.a.entrySet().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(java.lang.Object obj) {
        try {
            return super.remove(obj);
        } catch (java.lang.UnsupportedOperationException unused) {
            for (java.util.Map.Entry<K, V> entry : this.a.entrySet()) {
                if (e.c.b.a.f.h(obj, entry.getValue())) {
                    this.a.remove(entry.getKey());
                    return true;
                }
            }
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(java.util.Collection<?> collection) {
        try {
            if (collection != null) {
                return super.removeAll(collection);
            }
            throw null;
        } catch (java.lang.UnsupportedOperationException unused) {
            java.util.HashSet hashSet = new java.util.HashSet();
            for (java.util.Map.Entry<K, V> entry : this.a.entrySet()) {
                if (collection.contains(entry.getValue())) {
                    hashSet.add(entry.getKey());
                }
            }
            return this.a.keySet().removeAll(hashSet);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(java.util.Collection<?> collection) {
        try {
            if (collection != null) {
                return super.retainAll(collection);
            }
            throw null;
        } catch (java.lang.UnsupportedOperationException unused) {
            java.util.HashSet hashSet = new java.util.HashSet();
            for (java.util.Map.Entry<K, V> entry : this.a.entrySet()) {
                if (collection.contains(entry.getValue())) {
                    hashSet.add(entry.getKey());
                }
            }
            return this.a.keySet().retainAll(hashSet);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.a.size();
    }
}
