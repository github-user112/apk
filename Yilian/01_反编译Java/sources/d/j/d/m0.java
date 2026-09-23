package d.j.d;

/* loaded from: classes.dex */
public class m0 implements java.lang.Runnable {
    public final /* synthetic */ d.j.d.p0 a;
    public final /* synthetic */ d.e.a b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ java.lang.Object f2105c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.j.d.n0.b f2106d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ java.util.ArrayList f2107e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ android.view.View f2108f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.Fragment f2109g;
    public final /* synthetic */ androidx.fragment.app.Fragment h;
    public final /* synthetic */ boolean i;
    public final /* synthetic */ java.util.ArrayList j;
    public final /* synthetic */ java.lang.Object k;
    public final /* synthetic */ android.graphics.Rect l;

    public m0(d.j.d.p0 p0Var, d.e.a aVar, java.lang.Object obj, d.j.d.n0.b bVar, java.util.ArrayList arrayList, android.view.View view, androidx.fragment.app.Fragment fragment, androidx.fragment.app.Fragment fragment2, boolean z, java.util.ArrayList arrayList2, java.lang.Object obj2, android.graphics.Rect rect) {
        this.a = p0Var;
        this.b = aVar;
        this.f2105c = obj;
        this.f2106d = bVar;
        this.f2107e = arrayList;
        this.f2108f = view;
        this.f2109g = fragment;
        this.h = fragment2;
        this.i = z;
        this.j = arrayList2;
        this.k = obj2;
        this.l = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        d.e.a<java.lang.String, android.view.View> aVarE = d.j.d.n0.e(this.a, this.b, this.f2105c, this.f2106d);
        if (aVarE != null) {
            this.f2107e.addAll(aVarE.values());
            this.f2107e.add(this.f2108f);
        }
        d.j.d.n0.c(this.f2109g, this.h, this.i, aVarE, false);
        java.lang.Object obj = this.f2105c;
        if (obj != null) {
            this.a.x(obj, this.j, this.f2107e);
            android.view.View viewK = d.j.d.n0.k(aVarE, this.f2106d, this.k, this.i);
            if (viewK != null) {
                this.a.j(viewK, this.l);
            }
        }
    }
}
