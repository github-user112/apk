package e.c.b.b;

/* loaded from: classes.dex */
public interface d0<K, V> {
    java.util.Collection<java.util.Map.Entry<K, V>> a();

    java.util.Map<K, java.util.Collection<V>> b();

    boolean c(@org.checkerframework.checker.nullness.compatqual.NullableDecl @com.google.errorprone.annotations.CompatibleWith("K") java.lang.Object obj, @org.checkerframework.checker.nullness.compatqual.NullableDecl @com.google.errorprone.annotations.CompatibleWith("V") java.lang.Object obj2);

    void clear();

    java.util.Collection<V> get(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k);

    boolean isEmpty();

    @com.google.errorprone.annotations.CanIgnoreReturnValue
    boolean put(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k, @org.checkerframework.checker.nullness.compatqual.NullableDecl V v);

    @com.google.errorprone.annotations.CanIgnoreReturnValue
    boolean remove(@org.checkerframework.checker.nullness.compatqual.NullableDecl @com.google.errorprone.annotations.CompatibleWith("K") java.lang.Object obj, @org.checkerframework.checker.nullness.compatqual.NullableDecl @com.google.errorprone.annotations.CompatibleWith("V") java.lang.Object obj2);

    int size();

    java.util.Collection<V> values();
}
