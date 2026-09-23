package d.b.p.i;

/* loaded from: classes.dex */
public class l {
    public final android.content.Context a;
    public final d.b.p.i.g b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1741c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1742d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1743e;

    /* renamed from: f, reason: collision with root package name */
    public android.view.View f1744f;
    public boolean h;
    public d.b.p.i.m.a i;
    public d.b.p.i.k j;
    public android.widget.PopupWindow.OnDismissListener k;

    /* renamed from: g, reason: collision with root package name */
    public int f1745g = 8388611;
    public final android.widget.PopupWindow.OnDismissListener l = new d.b.p.i.l.a();

    public class a implements android.widget.PopupWindow.OnDismissListener {
        public a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            d.b.p.i.l.this.c();
        }
    }

    public l(android.content.Context context, d.b.p.i.g gVar, android.view.View view, boolean z, int i, int i2) {
        this.a = context;
        this.b = gVar;
        this.f1744f = view;
        this.f1741c = z;
        this.f1742d = i;
        this.f1743e = i2;
    }

    public d.b.p.i.k a() {
        if (this.j == null) {
            android.view.Display defaultDisplay = ((android.view.WindowManager) this.a.getSystemService("window")).getDefaultDisplay();
            android.graphics.Point point = new android.graphics.Point();
            if (android.os.Build.VERSION.SDK_INT >= 17) {
                defaultDisplay.getRealSize(point);
            } else {
                defaultDisplay.getSize(point);
            }
            d.b.p.i.k dVar = java.lang.Math.min(point.x, point.y) >= this.a.getResources().getDimensionPixelSize(d.b.d.abc_cascading_menus_min_smallest_width) ? new d.b.p.i.d(this.a, this.f1744f, this.f1742d, this.f1743e, this.f1741c) : new d.b.p.i.q(this.a, this.b, this.f1744f, this.f1742d, this.f1743e, this.f1741c);
            dVar.l(this.b);
            dVar.s(this.l);
            dVar.o(this.f1744f);
            dVar.k(this.i);
            dVar.p(this.h);
            dVar.q(this.f1745g);
            this.j = dVar;
        }
        return this.j;
    }

    public boolean b() {
        d.b.p.i.k kVar = this.j;
        return kVar != null && kVar.b();
    }

    public void c() {
        this.j = null;
        android.widget.PopupWindow.OnDismissListener onDismissListener = this.k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void d(d.b.p.i.m.a aVar) {
        this.i = aVar;
        d.b.p.i.k kVar = this.j;
        if (kVar != null) {
            kVar.k(aVar);
        }
    }

    public final void e(int i, int i2, boolean z, boolean z2) {
        d.b.p.i.k kVarA = a();
        kVarA.t(z2);
        if (z) {
            if ((d.b.k.r.v(this.f1745g, d.g.m.s.o(this.f1744f)) & 7) == 5) {
                i -= this.f1744f.getWidth();
            }
            kVarA.r(i);
            kVarA.u(i2);
            int i3 = (int) ((this.a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            kVarA.a = new android.graphics.Rect(i - i3, i2 - i3, i + i3, i2 + i3);
        }
        kVarA.d();
    }

    public boolean f() {
        if (b()) {
            return true;
        }
        if (this.f1744f == null) {
            return false;
        }
        e(0, 0, false, false);
        return true;
    }
}
