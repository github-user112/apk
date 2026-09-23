package d.j.d;

/* loaded from: classes.dex */
public class i implements java.lang.Runnable {
    public final /* synthetic */ d.j.d.p0 a;
    public final /* synthetic */ android.view.View b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ android.graphics.Rect f2092c;

    public i(d.j.d.c cVar, d.j.d.p0 p0Var, android.view.View view, android.graphics.Rect rect) {
        this.a = p0Var;
        this.b = view;
        this.f2092c = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.j(this.b, this.f2092c);
    }
}
