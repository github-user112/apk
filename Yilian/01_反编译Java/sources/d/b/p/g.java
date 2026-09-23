package d.b.p;

/* loaded from: classes.dex */
public class g {

    /* renamed from: c, reason: collision with root package name */
    public android.view.animation.Interpolator f1693c;

    /* renamed from: d, reason: collision with root package name */
    public d.g.m.w f1694d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1695e;
    public long b = -1;

    /* renamed from: f, reason: collision with root package name */
    public final d.g.m.x f1696f = new d.b.p.g.a();
    public final java.util.ArrayList<d.g.m.v> a = new java.util.ArrayList<>();

    public class a extends d.g.m.x {
        public boolean a = false;
        public int b = 0;

        public a() {
        }

        @Override // d.g.m.w
        public void b(android.view.View view) {
            int i = this.b + 1;
            this.b = i;
            if (i == d.b.p.g.this.a.size()) {
                d.g.m.w wVar = d.b.p.g.this.f1694d;
                if (wVar != null) {
                    wVar.b(null);
                }
                this.b = 0;
                this.a = false;
                d.b.p.g.this.f1695e = false;
            }
        }

        @Override // d.g.m.x, d.g.m.w
        public void c(android.view.View view) {
            if (this.a) {
                return;
            }
            this.a = true;
            d.g.m.w wVar = d.b.p.g.this.f1694d;
            if (wVar != null) {
                wVar.c(null);
            }
        }
    }

    public void a() {
        if (this.f1695e) {
            java.util.Iterator<d.g.m.v> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.f1695e = false;
        }
    }

    public void b() {
        android.view.View view;
        if (this.f1695e) {
            return;
        }
        java.util.Iterator<d.g.m.v> it = this.a.iterator();
        while (it.hasNext()) {
            d.g.m.v next = it.next();
            long j = this.b;
            if (j >= 0) {
                next.c(j);
            }
            android.view.animation.Interpolator interpolator = this.f1693c;
            if (interpolator != null && (view = next.a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f1694d != null) {
                next.d(this.f1696f);
            }
            android.view.View view2 = next.a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f1695e = true;
    }
}
