package d.j.d;

/* loaded from: classes.dex */
public class k0 implements java.lang.Runnable {
    public final /* synthetic */ java.lang.Object a;
    public final /* synthetic */ d.j.d.p0 b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ android.view.View f2094c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.Fragment f2095d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ java.util.ArrayList f2096e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ java.util.ArrayList f2097f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ java.util.ArrayList f2098g;
    public final /* synthetic */ java.lang.Object h;

    public k0(java.lang.Object obj, d.j.d.p0 p0Var, android.view.View view, androidx.fragment.app.Fragment fragment, java.util.ArrayList arrayList, java.util.ArrayList arrayList2, java.util.ArrayList arrayList3, java.lang.Object obj2) {
        this.a = obj;
        this.b = p0Var;
        this.f2094c = view;
        this.f2095d = fragment;
        this.f2096e = arrayList;
        this.f2097f = arrayList2;
        this.f2098g = arrayList3;
        this.h = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        java.lang.Object obj = this.a;
        if (obj != null) {
            this.b.o(obj, this.f2094c);
            this.f2097f.addAll(d.j.d.n0.h(this.b, this.a, this.f2095d, this.f2096e, this.f2094c));
        }
        if (this.f2098g != null) {
            if (this.h != null) {
                java.util.ArrayList<android.view.View> arrayList = new java.util.ArrayList<>();
                arrayList.add(this.f2094c);
                this.b.p(this.h, this.f2098g, arrayList);
            }
            this.f2098g.clear();
            this.f2098g.add(this.f2094c);
        }
    }
}
