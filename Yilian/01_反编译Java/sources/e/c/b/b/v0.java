package e.c.b.b;

/* loaded from: classes.dex */
public abstract class v0<F, T> implements java.util.Iterator<T> {
    public final java.util.Iterator<? extends F> a;

    public v0(java.util.Iterator<? extends F> it) {
        if (it == null) {
            throw null;
        }
        this.a = it;
    }

    public abstract T a(F f2);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.a.remove();
    }
}
