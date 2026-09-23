package e.c.b.b;

/* loaded from: classes.dex */
public abstract class z<K, V> extends e.c.b.b.s0<java.util.Map.Entry<K, V>> {
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        e.c.b.b.f.a.this.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(java.lang.Object obj);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return e.c.b.b.f.a.this.isEmpty();
    }

    @Override // e.c.b.b.s0, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(java.util.Collection<?> collection) {
        try {
            if (collection != null) {
                return super.removeAll(collection);
            }
            throw null;
        } catch (java.lang.UnsupportedOperationException unused) {
            return e.c.b.b.j.f(this, collection.iterator());
        }
    }

    @Override // e.c.b.b.s0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(java.util.Collection<?> collection) {
        int i;
        try {
            if (collection != null) {
                return super.retainAll(collection);
            }
            throw null;
        } catch (java.lang.UnsupportedOperationException unused) {
            int size = collection.size();
            if (size < 3) {
                d.s.y.l(size, "expectedSize");
                i = size + 1;
            } else {
                i = size < 1073741824 ? (int) ((size / 0.75f) + 1.0f) : Integer.MAX_VALUE;
            }
            java.util.HashSet hashSet = new java.util.HashSet(i);
            for (java.lang.Object obj : collection) {
                if (contains(obj)) {
                    hashSet.add(((java.util.Map.Entry) obj).getKey());
                }
            }
            return e.c.b.b.f.a.this.keySet().retainAll(hashSet);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return e.c.b.b.f.a.this.size();
    }
}
