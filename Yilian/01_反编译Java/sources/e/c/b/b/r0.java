package e.c.b.b;

/* JADX INFO: Add missing generic type declarations: [E] */
/* loaded from: classes.dex */
public final class r0<E> extends e.c.b.b.t0<E> {
    public final /* synthetic */ java.util.Set a;
    public final /* synthetic */ java.util.Set b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r0(java.util.Set set, java.util.Set set2) {
        super(null);
        this.a = set;
        this.b = set2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(java.lang.Object obj) {
        return this.a.contains(obj) && this.b.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(java.util.Collection<?> collection) {
        return this.a.containsAll(collection) && this.b.containsAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return java.util.Collections.disjoint(this.b, this.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public java.util.Iterator iterator() {
        return new e.c.b.b.q0(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        java.util.Iterator<E> it = this.a.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.b.contains(it.next())) {
                i++;
            }
        }
        return i;
    }
}
