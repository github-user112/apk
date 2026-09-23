package e.d.a.b.c;

/* loaded from: classes.dex */
public class c implements java.io.Serializable, java.util.Comparator<java.util.Map.Entry<java.lang.String, java.lang.Integer>> {
    public c(e.d.a.b.c.b bVar) {
    }

    @Override // java.util.Comparator
    public int compare(java.util.Map.Entry<java.lang.String, java.lang.Integer> entry, java.util.Map.Entry<java.lang.String, java.lang.Integer> entry2) {
        return entry.getValue().intValue() - entry2.getValue().intValue();
    }
}
