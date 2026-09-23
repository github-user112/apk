package d.j.d;

/* loaded from: classes.dex */
public class l0 implements java.lang.Runnable {
    public final /* synthetic */ androidx.fragment.app.Fragment a;
    public final /* synthetic */ androidx.fragment.app.Fragment b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f2100c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.e.a f2101d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ android.view.View f2102e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ d.j.d.p0 f2103f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ android.graphics.Rect f2104g;

    public l0(androidx.fragment.app.Fragment fragment, androidx.fragment.app.Fragment fragment2, boolean z, d.e.a aVar, android.view.View view, d.j.d.p0 p0Var, android.graphics.Rect rect) {
        this.a = fragment;
        this.b = fragment2;
        this.f2100c = z;
        this.f2101d = aVar;
        this.f2102e = view;
        this.f2103f = p0Var;
        this.f2104g = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        d.j.d.n0.c(this.a, this.b, this.f2100c, this.f2101d, false);
        android.view.View view = this.f2102e;
        if (view != null) {
            this.f2103f.j(view, this.f2104g);
        }
    }
}
