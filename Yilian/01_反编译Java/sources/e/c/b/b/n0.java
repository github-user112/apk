package e.c.b.b;

/* loaded from: classes.dex */
public final class n0 extends e.c.b.b.j0<java.lang.Comparable> implements java.io.Serializable {
    public static final e.c.b.b.n0 a = new e.c.b.b.n0();

    @Override // e.c.b.b.j0
    public <S extends java.lang.Comparable> e.c.b.b.j0<S> b() {
        return e.c.b.b.i0.a;
    }

    @Override // e.c.b.b.j0, java.util.Comparator
    public int compare(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Comparable comparable = (java.lang.Comparable) obj;
        java.lang.Comparable comparable2 = (java.lang.Comparable) obj2;
        if (comparable == null) {
            throw null;
        }
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public java.lang.String toString() {
        return "Ordering.natural().reverse()";
    }
}
