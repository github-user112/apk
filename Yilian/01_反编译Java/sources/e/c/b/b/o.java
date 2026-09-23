package e.c.b.b;

/* loaded from: classes.dex */
public final class o<T> extends e.c.b.b.j0<T> implements java.io.Serializable {
    public final java.util.Comparator<T> a;

    public o(java.util.Comparator<T> comparator) {
        if (comparator == null) {
            throw null;
        }
        this.a = comparator;
    }

    @Override // e.c.b.b.j0, java.util.Comparator
    public int compare(T t, T t2) {
        return this.a.compare(t, t2);
    }

    @Override // java.util.Comparator
    public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e.c.b.b.o) {
            return this.a.equals(((e.c.b.b.o) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public java.lang.String toString() {
        return this.a.toString();
    }
}
