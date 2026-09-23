package d.b.q;

/* loaded from: classes.dex */
public class u0 extends d.b.q.m0 {
    public final java.lang.ref.WeakReference<android.content.Context> b;

    public u0(android.content.Context context, android.content.res.Resources resources) {
        super(resources);
        this.b = new java.lang.ref.WeakReference<>(context);
    }

    @Override // android.content.res.Resources
    public android.graphics.drawable.Drawable getDrawable(int i) throws android.content.res.Resources.NotFoundException {
        android.graphics.drawable.Drawable drawable = this.a.getDrawable(i);
        android.content.Context context = this.b.get();
        if (drawable != null && context != null) {
            d.b.q.l0.d().m(context, i, drawable);
        }
        return drawable;
    }
}
