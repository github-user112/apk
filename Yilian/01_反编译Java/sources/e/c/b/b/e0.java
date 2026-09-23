package e.c.b.b;

/* loaded from: classes.dex */
public final class e0<V> implements e.c.b.a.k<java.util.List<V>>, java.io.Serializable {
    public final int a;

    public e0(int i) {
        d.s.y.l(i, "expectedValuesPerKey");
        this.a = i;
    }

    @Override // e.c.b.a.k
    public java.lang.Object get() {
        return new java.util.ArrayList(this.a);
    }
}
