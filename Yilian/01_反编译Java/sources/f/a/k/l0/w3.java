package f.a.k.l0;

/* loaded from: classes.dex */
public class w3 implements android.view.View.OnClickListener {
    public int a = 0;
    public final /* synthetic */ f.a.k.l0.z3 b;

    public w3(f.a.k.l0.z3 z3Var) {
        this.b = z3Var;
    }

    public /* synthetic */ void a(boolean z) {
        this.a = 0;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        if (!this.b.A.g0()) {
            e.e.a.g.c("imgQrCode clicked, but license not auth fail", new java.lang.Object[0]);
            return;
        }
        int i = this.a + 1;
        this.a = i;
        if (i >= 7) {
            int iK = f.a.i.m.g.k(this.b.getContext());
            f.a.k.l0.z3 z3Var = this.b;
            f.a.k.n0.j jVar = new f.a.k.n0.j(z3Var.s.get());
            jVar.a = 103;
            jVar.J = false;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed:");
            sbO.append(this.b.A.L());
            jVar.w = sbO.toString();
            jVar.x = java.lang.String.format("UUID:%s\nPhone's IMEI:%s\nChannel:%s\nErrorMsg:%s", d.s.y.m, d.s.y.u, java.lang.Integer.valueOf(iK), this.b.A.b0());
            f.a.k.n0.j.c cVar = new f.a.k.n0.j.c() { // from class: f.a.k.l0.t1
                @Override // f.a.k.n0.j.c
                public final void a(boolean z) {
                    this.a.a(z);
                }
            };
            jVar.b = 200;
            jVar.B = "OK";
            jVar.u = cVar;
            jVar.d();
            z3Var.C = jVar;
        }
    }
}
