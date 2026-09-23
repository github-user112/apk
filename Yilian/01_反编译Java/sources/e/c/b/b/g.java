package e.c.b.b;

/* loaded from: classes.dex */
public abstract class g<K, V> implements java.util.Map.Entry<K, V> {
    @Override // java.util.Map.Entry
    public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (!(obj instanceof java.util.Map.Entry)) {
            return false;
        }
        java.util.Map.Entry entry = (java.util.Map.Entry) obj;
        return e.c.b.a.f.h(getKey(), entry.getKey()) && e.c.b.a.f.h(getValue(), entry.getValue());
    }

    @Override // java.util.Map.Entry
    public abstract K getKey();

    @Override // java.util.Map.Entry
    public abstract V getValue();

    @Override // java.util.Map.Entry
    public int hashCode() {
        K key = getKey();
        V value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    public java.lang.String toString() {
        return getKey() + "=" + getValue();
    }
}
