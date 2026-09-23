package d.s;

/* loaded from: classes.dex */
public class a0 implements d.s.b0 {
    public final android.view.ViewOverlay a;

    public a0(android.view.View view) {
        this.a = view.getOverlay();
    }

    @Override // d.s.b0
    public void b(android.graphics.drawable.Drawable drawable) {
        this.a.add(drawable);
    }

    @Override // d.s.b0
    public void d(android.graphics.drawable.Drawable drawable) {
        this.a.remove(drawable);
    }
}
