package e.c.b.b;

/* loaded from: classes.dex */
public abstract class s0<E> extends java.util.AbstractSet<E> {
    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(java.util.Collection<?> collection) {
        if (collection == null) {
            throw null;
        }
        if (collection instanceof e.c.b.b.h0) {
            collection = ((e.c.b.b.h0) collection).elementSet();
        }
        if (!(collection instanceof java.util.Set) || collection.size() <= size()) {
            return e.c.b.b.j.f(this, collection.iterator());
        }
        java.util.Iterator<E> it = iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(java.util.Collection<?> collection) {
        if (collection != null) {
            return super.retainAll(collection);
        }
        throw null;
    }
}
