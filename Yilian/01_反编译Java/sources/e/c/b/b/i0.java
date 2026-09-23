package e.c.b.b;

/* loaded from: classes.dex */
public final class i0 extends e.c.b.b.j0<java.lang.Comparable> implements java.io.Serializable {
    public static final e.c.b.b.i0 a = new e.c.b.b.i0();

    @Override // e.c.b.b.j0
    public <S extends java.lang.Comparable> e.c.b.b.j0<S> b() {
        return e.c.b.b.n0.a;
    }

    @Override // e.c.b.b.j0, java.util.Comparator
    public int compare(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Comparable comparable = (java.lang.Comparable) obj;
        java.lang.Comparable comparable2 = (java.lang.Comparable) obj2;
        if (comparable == null || comparable2 == null) {
            throw null;
        }
        return comparable.compareTo(comparable2);
    }

    public java.lang.String toString() {
        return "Ordering.natural()";
    }
}
