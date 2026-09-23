package e.c.b.b;

/* loaded from: classes.dex */
public class r<K, V> extends e.c.b.b.g<K, V> implements java.io.Serializable {

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public final K a;

    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public final V b;

    public r(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k, @org.checkerframework.checker.nullness.compatqual.NullableDecl V v) {
        this.a = k;
        this.b = v;
    }

    @Override // e.c.b.b.g, java.util.Map.Entry
    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public final K getKey() {
        return this.a;
    }

    @Override // e.c.b.b.g, java.util.Map.Entry
    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    public final V getValue() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        throw new java.lang.UnsupportedOperationException();
    }
}
