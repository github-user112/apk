package e.c.b.b;

/* loaded from: classes.dex */
public final class o0<T> extends e.c.b.b.j0<T> implements java.io.Serializable {
    public final e.c.b.b.j0<? super T> a;

    public o0(e.c.b.b.j0<? super T> j0Var) {
        this.a = j0Var;
    }

    @Override // e.c.b.b.j0
    public <S extends T> e.c.b.b.j0<S> b() {
        return this.a;
    }

    @Override // e.c.b.b.j0, java.util.Comparator
    public int compare(T t, T t2) {
        return this.a.compare(t2, t);
    }

    @Override // java.util.Comparator
    public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e.c.b.b.o0) {
            return this.a.equals(((e.c.b.b.o0) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return -this.a.hashCode();
    }

    public java.lang.String toString() {
        return this.a + ".reverse()";
    }
}
