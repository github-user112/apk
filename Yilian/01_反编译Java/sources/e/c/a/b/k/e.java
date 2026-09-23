package e.c.a.b.k;

/* loaded from: classes.dex */
public class e {
    public final android.view.View a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f2624c;

    /* renamed from: d, reason: collision with root package name */
    public int f2625d;

    /* renamed from: e, reason: collision with root package name */
    public int f2626e;

    public e(android.view.View view) {
        this.a = view;
    }

    public final void a() {
        android.view.View view = this.a;
        d.g.m.s.F(view, this.f2625d - (view.getTop() - this.b));
        android.view.View view2 = this.a;
        d.g.m.s.E(view2, this.f2626e - (view2.getLeft() - this.f2624c));
    }
}
