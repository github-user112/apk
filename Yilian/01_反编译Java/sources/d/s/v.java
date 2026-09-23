package d.s;

/* loaded from: classes.dex */
public class v implements d.s.w {
    public final android.view.ViewGroupOverlay a;

    public v(android.view.ViewGroup viewGroup) {
        this.a = viewGroup.getOverlay();
    }

    @Override // d.s.w
    public void a(android.view.View view) {
        this.a.add(view);
    }

    @Override // d.s.b0
    public void b(android.graphics.drawable.Drawable drawable) {
        this.a.add(drawable);
    }

    @Override // d.s.w
    public void c(android.view.View view) {
        this.a.remove(view);
    }

    @Override // d.s.b0
    public void d(android.graphics.drawable.Drawable drawable) {
        this.a.remove(drawable);
    }
}
