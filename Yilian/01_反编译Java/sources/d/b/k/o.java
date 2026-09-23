package d.b.k;

/* loaded from: classes.dex */
public class o implements java.lang.Runnable {
    public final /* synthetic */ d.b.k.k a;

    public class a extends d.g.m.x {
        public a() {
        }

        @Override // d.g.m.w
        public void b(android.view.View view) {
            d.b.k.o.this.a.o.setAlpha(1.0f);
            d.b.k.o.this.a.r.d(null);
            d.b.k.o.this.a.r = null;
        }

        @Override // d.g.m.x, d.g.m.w
        public void c(android.view.View view) {
            d.b.k.o.this.a.o.setVisibility(0);
        }
    }

    public o(d.b.k.k kVar) {
        this.a = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        d.b.k.k kVar = this.a;
        kVar.p.showAtLocation(kVar.o, 55, 0, 0);
        this.a.y();
        if (!this.a.K()) {
            this.a.o.setAlpha(1.0f);
            this.a.o.setVisibility(0);
            return;
        }
        this.a.o.setAlpha(0.0f);
        d.b.k.k kVar2 = this.a;
        d.g.m.v vVarA = d.g.m.s.a(kVar2.o);
        vVarA.a(1.0f);
        kVar2.r = vVarA;
        d.g.m.v vVar = this.a.r;
        d.b.k.o.a aVar = new d.b.k.o.a();
        android.view.View view = vVar.a.get();
        if (view != null) {
            vVar.e(view, aVar);
        }
    }
}
