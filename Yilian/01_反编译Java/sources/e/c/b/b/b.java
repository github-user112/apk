package e.c.b.b;

/* loaded from: classes.dex */
public abstract class b<T> extends e.c.b.b.w0<T> {
    public e.c.b.b.b.a a = e.c.b.b.b.a.NOT_READY;

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public T b;

    public enum a {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    @Override // java.util.Iterator
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public final boolean hasNext() {
        T t;
        e.c.b.b.b.a aVar = e.c.b.b.b.a.FAILED;
        if (!(this.a != aVar)) {
            throw new java.lang.IllegalStateException();
        }
        int iOrdinal = this.a.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal == 2) {
            return false;
        }
        e.c.b.b.b.a aVar2 = e.c.b.b.b.a.DONE;
        this.a = aVar;
        e.c.b.b.q0 q0Var = (e.c.b.b.q0) this;
        while (true) {
            if (!q0Var.f2740c.hasNext()) {
                q0Var.a = aVar2;
                t = null;
                break;
            }
            t = (T) q0Var.f2740c.next();
            if (q0Var.f2741d.b.contains(t)) {
                break;
            }
        }
        this.b = t;
        if (this.a == aVar2) {
            return false;
        }
        this.a = e.c.b.b.b.a.READY;
        return true;
    }

    @Override // java.util.Iterator
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public final T next() {
        if (!hasNext()) {
            throw new java.util.NoSuchElementException();
        }
        this.a = e.c.b.b.b.a.NOT_READY;
        T t = this.b;
        this.b = null;
        return t;
    }
}
