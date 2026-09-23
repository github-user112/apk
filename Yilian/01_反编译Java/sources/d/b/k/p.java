package d.b.k;

/* loaded from: classes.dex */
public class p extends d.g.m.x {
    public final /* synthetic */ d.b.k.k a;

    public p(d.b.k.k kVar) {
        this.a = kVar;
    }

    @Override // d.g.m.w
    public void b(android.view.View view) {
        this.a.o.setAlpha(1.0f);
        this.a.r.d(null);
        this.a.r = null;
    }

    @Override // d.g.m.x, d.g.m.w
    public void c(android.view.View view) {
        this.a.o.setVisibility(0);
        this.a.o.sendAccessibilityEvent(32);
        if (this.a.o.getParent() instanceof android.view.View) {
            d.g.m.s.K((android.view.View) this.a.o.getParent());
        }
    }
}
