package f.a.k.l0;

/* loaded from: classes.dex */
public class y3 implements android.view.View.OnClickListener {
    public int a = 0;
    public final /* synthetic */ int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3086c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ java.lang.String f3087d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f.a.k.l0.z3 f3088e;

    public y3(f.a.k.l0.z3 z3Var, int i, int i2, java.lang.String str) {
        this.f3088e = z3Var;
        this.b = i;
        this.f3086c = i2;
        this.f3087d = str;
    }

    public /* synthetic */ void a(boolean z) {
        this.a = 0;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        int i = this.a + 1;
        this.a = i;
        if (i >= 5) {
            f.a.k.l0.z3 z3Var = this.f3088e;
            f.a.k.n0.j jVar = new f.a.k.n0.j(z3Var.s.get());
            jVar.a = 103;
            jVar.J = false;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed:");
            sbO.append(this.b);
            jVar.w = sbO.toString();
            jVar.x = java.lang.String.format("UUID:%s\nPhone's IMEI:%s\nChannel:%s\nErrorMsg:%s", d.s.y.m, d.s.y.u, java.lang.Integer.toString(this.f3086c), this.f3087d);
            f.a.k.n0.j.c cVar = new f.a.k.n0.j.c() { // from class: f.a.k.l0.u1
                @Override // f.a.k.n0.j.c
                public final void a(boolean z) {
                    this.a.a(z);
                }
            };
            jVar.b = 200;
            jVar.B = "OK";
            jVar.u = cVar;
            jVar.d();
            z3Var.F = jVar;
        }
    }
}
