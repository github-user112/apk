package d.g.m;

/* loaded from: classes.dex */
public class t implements android.view.View.OnApplyWindowInsetsListener {
    public d.g.m.z a = null;
    public final /* synthetic */ android.view.View b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d.g.m.l f2005c;

    public t(android.view.View view, d.g.m.l lVar) {
        this.b = view;
        this.f2005c = lVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public android.view.WindowInsets onApplyWindowInsets(android.view.View view, android.view.WindowInsets windowInsets) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        d.g.m.z zVarG = d.g.m.z.g(windowInsets, view);
        if (android.os.Build.VERSION.SDK_INT < 30) {
            android.view.View view2 = this.b;
            android.view.View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (android.view.View.OnApplyWindowInsetsListener) view2.getTag(d.g.c.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view2, windowInsets);
            }
            if (zVarG.equals(this.a)) {
                return this.f2005c.a(view, zVarG).e();
            }
        }
        this.a = zVarG;
        d.g.m.z zVarA = this.f2005c.a(view, zVarG);
        if (android.os.Build.VERSION.SDK_INT >= 30) {
            return zVarA.e();
        }
        d.g.m.s.K(view);
        return zVarA.e();
    }
}
