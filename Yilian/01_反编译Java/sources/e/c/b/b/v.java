package e.c.b.b;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class v<T> extends e.c.b.b.w0<T> {
    public boolean a;
    public final /* synthetic */ java.lang.Object b;

    public v(java.lang.Object obj) {
        this.b = obj;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return !this.a;
    }

    @Override // java.util.Iterator
    public T next() {
        if (this.a) {
            throw new java.util.NoSuchElementException();
        }
        this.a = true;
        return (T) this.b;
    }
}
