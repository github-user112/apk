package e.c.b.b;

/* loaded from: classes.dex */
public abstract class j0<T> implements java.util.Comparator<T> {
    public static <T> e.c.b.b.j0<T> a(java.util.Comparator<T> comparator) {
        return comparator instanceof e.c.b.b.j0 ? (e.c.b.b.j0) comparator : new e.c.b.b.o(comparator);
    }

    public <S extends T> e.c.b.b.j0<S> b() {
        return new e.c.b.b.o0(this);
    }

    @Override // java.util.Comparator
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public abstract int compare(@org.checkerframework.checker.nullness.compatqual.NullableDecl T t, @org.checkerframework.checker.nullness.compatqual.NullableDecl T t2);
}
