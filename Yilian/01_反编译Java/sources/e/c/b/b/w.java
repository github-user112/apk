package e.c.b.b;

/* loaded from: classes.dex */
public enum w implements java.util.Iterator<java.lang.Object> {
    INSTANCE;

    @Override // java.util.Iterator
    public boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public java.lang.Object next() {
        throw new java.util.NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        d.s.y.m(false);
    }
}
