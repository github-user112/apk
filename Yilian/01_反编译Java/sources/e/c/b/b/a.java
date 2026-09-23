package e.c.b.b;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public abstract class a<E> extends e.c.b.b.w0 implements java.util.ListIterator {
    public final int a;
    public int b;

    public a(int i, int i2) {
        e.c.b.a.f.e(i2, i);
        this.a = i;
        this.b = i2;
    }

    @Override // java.util.ListIterator
    public final void add(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.b < this.a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            throw new java.util.NoSuchElementException();
        }
        int i = this.b;
        this.b = i + 1;
        return ((e.c.b.b.s.b) this).f2742c.get(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new java.util.NoSuchElementException();
        }
        int i = this.b - 1;
        this.b = i;
        return ((e.c.b.b.s.b) this).f2742c.get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.b - 1;
    }

    @Override // java.util.ListIterator
    public final void set(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException();
    }
}
