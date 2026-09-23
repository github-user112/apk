package d.h.a;

/* loaded from: classes.dex */
public abstract class c extends d.h.a.a {
    public int i;
    public int j;
    public android.view.LayoutInflater k;

    @java.lang.Deprecated
    public c(android.content.Context context, int i, android.database.Cursor cursor, boolean z) {
        super(context, null, z);
        this.j = i;
        this.i = i;
        this.k = (android.view.LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // d.h.a.a
    public android.view.View d(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup viewGroup) {
        return this.k.inflate(this.i, viewGroup, false);
    }
}
